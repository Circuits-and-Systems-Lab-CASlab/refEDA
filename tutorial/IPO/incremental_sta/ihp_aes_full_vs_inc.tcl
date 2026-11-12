# Compare incremental and full STA on the same placement after one cell move.

cd [file dirname [file normalize [info script]]]
set design aes_cipher_top
set pdk IHP-Open-PDK
set out_dir [file normalize ../../results/sta_incremental_aes]

# Replace this example's previous results.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "PDK: $pdk"

# Load IHP Open PDK at the typical 1.20 V, 25 C corner.
load_lef {
    ../../PDK/IHP-Open-PDK/sg13g2_tech.lef
    ../../PDK/IHP-Open-PDK/sg13g2_stdcell.lef
}
set_lefsitename CoreSite
load_lib ../../PDK/IHP-Open-PDK/sg13g2_stdcell_typ_1p20V_25C.lib
load_verilog ../../Test-Designs/STA/AES-IHP/aes_cipher_top.v
set_timing_model nldm

# Clock and I/O delays use ns.
create_clock clk -period 2 -waveform {0 1}
set_input_delay 0 -clock clk [all_inputs]
set_output_delay 0 -clock clk [all_outputs]
set_false_path -from [get_ports rst]

# Use estimated pi wire RC so the cell move changes wire delays.
set_layer_as_lowest_metal Metal3
set_layer_rpersq Metal3 0.103
set_layer_cpersqdist Metal3 1.20E-05
set_layer_edgecapacitance Metal3 0
set_layer_nonLEFRC 1
set_timing_RC_mode pimodelRC

# Build a placement from the mapped Verilog.
initialise_floorplan -utilisation 50 -aspectratio 1
io_place
cd ../../..
set ::env(refEDA_INSTALL_DIR) [pwd]
global_place -gradient 2 -solver 2
cd tutorial/IPO/incremental_sta
legalise_components -order 0 -blockagesmethod 0
check_placement_is_legal

# Initialise the timing state before applying the ECO.
puts "\n=== Initial full STA ==="
report_timing -corner 0 -longest -backannotate
report_TNS -longest
report_global_timing -longest

# Deliberately perturb one cell. This move can create a placement overlap.
eco_move_cell -coordinate {1 1} aes_cipher_top/_10429_

# Recompute the affected timing cone.
puts "\n=== Incremental STA after the move ==="
set start [clock milliseconds]
report_timing -corner 0 -longest -incremental -backannotate
set incremental_ms [expr {[clock milliseconds] - $start}]
report_TNS -longest
report_global_timing -longest

# Recompute all timing on the same moved design, without another ECO.
puts "\n=== Full STA after the same move ==="
set start [clock milliseconds]
report_timing -corner 0 -longest -backannotate
set full_ms [expr {[clock milliseconds] - $start}]
report_TNS -longest
report_global_timing -longest

puts "Incremental STA: $incremental_ms ms"
puts "Full STA:        $full_ms ms"
puts "Compare the two post-move arrival, slack, WNS and TNS reports."

set f [open $out_dir/runtime.tsv w]
puts $f "analysis\telapsed_ms"
puts $f "incremental\t$incremental_ms"
puts $f "full\t$full_ms"
close $f
save_def -nets $out_dir/moved.def
set f [open $out_dir/complete.txt w]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
flush stdout
exit

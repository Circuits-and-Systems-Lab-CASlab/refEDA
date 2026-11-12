# Compare incremental and full STA on the same placement after one cell move.

cd [file dirname [file normalize [info script]]]
set design M65C02_ALU
set pdk ASAP7
set out_dir [file normalize ../../results/sta_incremental_m65c02]

# Replace this example's previous results.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "PDK: $pdk"

# Load native 1x ASAP7 geometry and RVT TT timing libraries.
load_lef {
    ../../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_R_1x_220121a.lef
}
load_lib [list [lsort [glob ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/*RVT_TT*.lib]]]
load_verilog ../../Test-Designs/STA/M65C02-ALU/M65C02_ALU.v
set_timing_model nldm

# Clock and I/O delays use ps.
create_clock Clk -period 300 -waveform {0 150}
set_input_delay 0 -clock Clk [all_inputs]
set_output_delay 0 -clock Clk [all_outputs]
set_false_path -from [get_ports Rst]

# Use estimated pi wire RC so the cell move changes wire delays.
set_layer_as_lowest_metal M3
set_layer_rpersq M3 36.3251
set_layer_cpersqdist M3 1.53955E-04
set_layer_edgecapacitance M3 0
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
eco_move_cell -coordinate {1 1} M65C02_ALU/U504

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

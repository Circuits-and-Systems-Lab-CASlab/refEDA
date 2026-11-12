# Sensitise paths through a selected branch of reconvergent logic.

cd [file dirname [file normalize [info script]]]
set design bumblebeee
set pdk IHP-Open-PDK
set out_dir [file normalize ../../results/sta_bumblebeee]

# Replace this example's previous results.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "PDK: $pdk"

set f [open $out_dir/info.txt w]
puts $f "Flow: sta"
puts $f "Design: $design"
puts $f "PDK: $pdk"
close $f

# Load the IHP Open PDK at its typical 1.20 V, 25 C corner.
load_lef {
    ../../PDK/IHP-Open-PDK/sg13g2_tech.lef
    ../../PDK/IHP-Open-PDK/sg13g2_stdcell.lef
}
set_lefsitename CoreSite
load_lib ../../PDK/IHP-Open-PDK/sg13g2_stdcell_typ_1p20V_25C.lib
load_verilog ../../Test-Designs/STA/bumblebeee_ihp.v

# Timing values use ns; loads use pF.
create_clock clk -period 2 -waveform {0 1}
set_input_delay 0 -clock clk [get_ports {in1 in2 in3}]
set_output_delay 0.5 -clock clk [all_outputs]
set_input_transition 0.02 -max [get_ports {in1 in2 in3}]
set_load 0.005 -max -pin_load [all_outputs]
set_timing_model nldm

# Create a placement for this timing example.
initialise_floorplan -utilisation 50 -aspectratio 1
io_place
cd ../../..
set ::env(refEDA_INSTALL_DIR) [pwd]
global_place -solver 4 -gradient 2 -iterations 10
cd tutorial/STA/Scripts
legalise_components -order 0 -blockagesmethod 0
check_placement_is_legal
save_def -nets $out_dir/design.def

report_timing -corner 0 -longest -backannotate
report_global_timing -longest
report_area

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/result.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
report_area
close_log_output_file

# INV1 is the inherited instance name of a buffer in this netlist.
# Find two sensitised paths from FF1 through that branch to FF4.
get_timing_paths -corner 0 -longest -mode blcall \
    -from bumblebeee/FF1/CLK -to bumblebeee/FF4/D \
    -through bumblebeee/INV1/A -true 2 -file $out_dir/sensitised_paths.txt

# Mark the completed analysis.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

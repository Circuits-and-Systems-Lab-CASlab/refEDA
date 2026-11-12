# Compare setup timing before and after declaring three clocks asynchronous.

cd [file dirname [file normalize [info script]]]
set design cdc6
set pdk IHP-Open-PDK
set out_dir [file normalize ../../results/sta_cdc6]

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
load_verilog ../../Test-Designs/STA/cdc6_ihp.v

# Clock, delay, and slew values use ns; loads use pF.
create_clock clk1 -period 2 -waveform {0 1}
create_clock clk2 -period 2 -waveform {0 1}
create_clock clk3 -period 2 -waveform {0 1}
set_input_delay 0 -clock clk1 [get_ports {in1 in2 in3}]
# Both outputs are referenced to clk1, as in the supplied demonstration.
set_output_delay 0.5 -clock clk1 [all_outputs]
set_input_transition 0.02 -max [get_ports {in1 in2 in3}]
set_load 0.005 -max -pin_load [all_outputs]
set_timing_model nldm

# Create a placement for this timing example.
initialise_floorplan -utilisation 50 -aspectratio 1
io_place
cd ../../..
set ::env(refEDA_INSTALL_DIR) [pwd]
global_place -solver 4 -gradient 2 -iterations 10
cd tutorial/STA/CDC
legalise_components -order 0 -blockagesmethod 0
check_placement_is_legal
save_def -nets $out_dir/design.def

report_timing -corner 0 -longest -backannotate
report_global_timing -longest

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/before.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
close_log_output_file

# Remove timing relationships between each pair of clock domains.
set_clock_groups -group {clk1} -group {clk2} -group {clk3} -asynchronous
report_clocks

report_timing -corner 0 -longest -backannotate
report_global_timing -longest

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/after.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
close_log_output_file

report_clocks
report_global_timing -longest
report_area

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/result.txt
report_clocks
report_global_timing -longest
report_area
close_log_output_file

# Mark the completed analysis.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

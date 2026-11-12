# Compare NLDM/lumped RC, CCS/lumped RC, and CCS/pi RC.

cd [file dirname [file normalize [info script]]]
set design bf_chain
set pdk ASAP7
set out_dir [file normalize ../../results/sta_bf_chain]

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

# Load matching 1x ASAP7 geometry and RVT TT timing data.
load_lef {
    ../../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_R_1x_220121a.lef
}
load_lib ../../PDK/ASAP7/asap7sc7p5t_28/LIB/CCS/asap7sc7p5t_INVBUF_RVT_TT_ccs_220122.lib
load_verilog ../../Test-Designs/STA-SPICE/bf_chain.v

# ASAP7 constraints use ps and fF: a 1 ns reference clock and 5 fF output load.
create_clock clk -period 1000 -waveform {0 500}
set_input_delay 0 -clock clk [get_ports in]
set_output_delay 100 -clock clk [get_ports out]
set_input_transition 20 -max [get_ports in]
set_load 5 -max -pin_load [get_ports out]
set_timing_path_report_format 1
set_layer_rpersq M3 36.3251
set_layer_cpersqdist M3 1.53955E-04
set_layer_as_lowest_metal M3

# Create a placement for this timing example.
initialise_floorplan -utilisation 50 -aspectratio 1
io_place
cd ../../..
set ::env(refEDA_INSTALL_DIR) [pwd]
global_place -solver 2 -gradient 2
cd tutorial/STA/Scripts
legalise_components -order 0 -blockagesmethod 0
check_placement_is_legal
save_def -nets $out_dir/design.def

# Measure NLDM with lumpedRC.
set_timing_model nldm
set_timing_RC_mode lumpedRC
report_timing -corner 0 -longest -backannotate
report_global_timing -longest

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/nldm_lumped.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
close_log_output_file

# Measure CCS with lumpedRC.
set_timing_model ccs
set_timing_RC_mode lumpedRC
set_ccs_effort high
report_timing -corner 0 -longest -backannotate
report_global_timing -longest

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/ccs_lumped.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
close_log_output_file

# Measure CCS with pimodelRC.
set_timing_model ccs
set_timing_RC_mode pimodelRC
set_ccs_effort high
report_timing -corner 0 -longest -backannotate
report_global_timing -longest

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/ccs_pi.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
close_log_output_file

report_global_timing -longest
report_area

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/result.txt
report_global_timing -longest
report_area
close_log_output_file

# Mark the completed analysis.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

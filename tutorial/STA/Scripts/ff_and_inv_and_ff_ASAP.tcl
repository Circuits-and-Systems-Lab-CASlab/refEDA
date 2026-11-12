# Inspect delay calculations, path reports, logic cones, and a false-path exception.

cd [file dirname [file normalize [info script]]]
set design ff_and_inv_and_ff
set pdk ASAP7
set out_dir [file normalize ../../results/sta_timing_utilities]

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
load_lib {{
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_INVBUF_RVT_TT_nldm_220122.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_SIMPLE_RVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib
}}
load_verilog ../../Test-Designs/STA/ff_and_inv_and_ff_asap7.v

# Timing values use ps; the output load uses fF.
create_clock clk -period 1000 -waveform {0 500}
set_input_delay 0 -clock clk [get_ports {in1 in2 in3}]
set_output_delay 100 -clock clk [all_outputs]
set_input_transition 20 -max [get_ports {in1 in2 in3}]
set_load 5 -max -pin_load [all_outputs]
set_timing_model nldm
set_timing_RC_mode lumpedRC
set_timing_path_report_format 1
set_layer_rpersq M3 36.3251
set_layer_cpersqdist M3 1.53955E-04
set_layer_as_lowest_metal M3

# Create a placement for this timing example.
initialise_floorplan -corewidth 5 -coreheight 5
io_place
cd ../../..
set ::env(refEDA_INSTALL_DIR) [pwd]
global_place -solver 2 -gradient 2
cd tutorial/STA/Scripts
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

# Prepare hold timing before the combined setup/hold slack report.
report_timing -corner 0 -shortest -backannotate

# Inspect the inverter and the register-to-register path.
report_global_slack
report_top_longest_delay_paths -paths 10
report_delay_calculation ff_and_inv_and_ff/INV/A
report_delay_calculation ff_and_inv_and_ff/INV/Y
report_from_gatepin_to_gatepin_path -from ff_and_inv_and_ff/FF1/Q -to ff_and_inv_and_ff/FF2/D -corner 0 -longest
save_sdf $out_dir/design.sdf -corner 0 -longest

# List cones in the terminal; the corresponding draw commands are for GUI use.
list_backward_logic_cone ff_and_inv_and_ff/FF2/D -longest
list_forward_logic_cone ff_and_inv_and_ff/in2 -longest
# draw_backward_logic_cone ff_and_inv_and_ff/FF2/D -longest
# draw_forward_logic_cone ff_and_inv_and_ff/in2 -longest

# Exclude paths launched by FF1, then inspect the remaining setup paths.
set_false_path -from ff_and_inv_and_ff/FF1/Q
report_timing -corner 0 -longest -backannotate
report_global_timing -longest

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/after.txt
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

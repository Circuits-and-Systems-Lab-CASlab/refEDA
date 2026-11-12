# STA first run: load one small design, constrain it, and read its timing.

# Step 0. Resolve every path from this file and prepare the results folder.
cd [file dirname [file normalize [info script]]]
set design ff_and_inv_and_ff
set pdk ASAP7
set out_dir [file normalize ../../results/sta_first_run]

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

# Step 1. Load the cell geometry, the cell timing, and the mapped netlist.
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

# Step 2. Describe the timing environment. ASAP7 values use ps and fF.
create_clock clk -period 1000 -waveform {0 500}
set_input_delay 0 -clock clk [get_ports {in1 in2 in3}]
set_output_delay 100 -clock clk [all_outputs]
set_input_transition 20 -max [get_ports {in1 in2 in3}]
set_load 5 -max -pin_load [all_outputs]

# Step 3. Choose the cell delay model. There is no placement, so no wire RC.
set_timing_model nldm
set_timing_path_report_format 1

# Step 4. Analyse setup (longest paths) and hold (shortest paths).
puts "\n=== Setup: the slowest path ==="
report_timing -corner 0 -longest -backannotate
puts "\n=== Hold: the fastest path ==="
report_timing -corner 0 -shortest -backannotate

# Step 5. Summarise the whole design: slack, then the worst paths.
puts "\n=== Design summary ==="
report_global_timing -longest
report_global_slack
report_top_longest_delay_paths -paths 3
report_area

# Step 6. Keep a copy of the main measurements.
log_output_to_file $out_dir/result.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
report_area
close_log_output_file

set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

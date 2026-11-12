# Asynchronous timing analysis of the two-stage Click ring.

set flow asta

# Resolve paths and select the output directory.
cd [file dirname [file normalize [info script]]]
set pdk ASAP7
set design click

set out_dir [file normalize ../../results/asta]

# Replace the previous outputs from this example.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "PDK: $pdk"
puts "Results: $out_dir"
puts "Flow: $flow"
puts "Design: $design"

# Record the design used for these results.
set f [open $out_dir/info.txt w]
puts $f "Flow: $flow"
puts $f "Design: $design"
puts $f "PDK: $pdk"
close $f

# PDK libraries
load_lef {
    ../../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_R_1x_220121a.lef
}
load_lib {{
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_INVBUF_RVT_TT_nldm_220122.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_SIMPLE_RVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib
}}
# End PDK libraries

load_verilog ../../Test-Designs/Asynchronous/click_2stage_ring_asap7.v

# Declare the controllers and constrain the bundled-data inputs (ps, fF).
set_timing_model nldm
set_async_modules {click1 click2}
set_input_delay 50 toplevel/a
set_input_delay 50 toplevel/b
set_input_transition 20 -rise toplevel/a
set_input_transition 20 -fall toplevel/a
set_input_transition 20 -rise toplevel/b
set_input_transition 20 -fall toplevel/b
set_load 5 -max -pin_load [all_outputs]

# Extract the in-memory event graph used by ASTA.
list_async_modules
extract_eventgraph

# Report asynchronous timing and the limiting cycle.
report_timing -async -longest -corner 0
report_critical_cycle
report_critical_cycle_period
report_clocks
report_global_slack -max

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/result.txt
report_critical_cycle
report_critical_cycle_period
close_log_output_file

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

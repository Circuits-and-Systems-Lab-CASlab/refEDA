# Analyse the Click ring and its bundled-data register bank.

cd [file dirname [file normalize [info script]]]
set pdk ASAP7
set out_dir [file normalize ../../results/click_datapath_fanout]
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "PDK: $pdk"

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

load_verilog ../../Test-Designs/Asynchronous/click_datapath_fanout_asap7.v
set_timing_model nldm

# Mark the controllers and set the datapath input timing (ps) and loads (fF).
set_async_modules {click1 click2}
set_input_delay 50 toplevel/a
set_input_delay 50 toplevel/b
set_input_transition 20 -rise toplevel/a
set_input_transition 20 -fall toplevel/a
set_input_transition 20 -rise toplevel/b
set_input_transition 20 -fall toplevel/b
set_load 5 -max -pin_load [all_outputs]

# Build the event graph and find the limiting cycle.
extract_eventgraph
report_timing -async -longest -corner 0
report_critical_cycle
report_critical_cycle_period
report_clocks
report_global_slack -max

# Compare the request-to-datapath clock path with the controller feedback path.
set_RT_path -from click1/Rin -to datapath/ff/CLK -corner 0 -longest -name datapath_clock
set_RT_path -from click2/ff/Q -to click1/ff/CLK -corner 0 -longest -name controller_feedback
set_RT_constraint -primary_path datapath_clock -reference_path controller_feedback -margin 0.030 -greater
set_RT_constraint -primary_path datapath_clock -reference_path controller_feedback -margin 0.080 -less
report_RT_violations

puts TUTORIAL_COMPLETE
exit

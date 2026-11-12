# Find the cycle of an enabled ring oscillator.

cd [file dirname [file normalize [info script]]]
set pdk ASAP7
set out_dir [file normalize ../../results/ring_enable]
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

load_verilog ../../Test-Designs/Asynchronous/ring_enable_asap7.v
set_timing_model nldm

# Analyse the ring with its feedback enabled.
set_case_analysis 1 EN

# Build the event graph and find the limiting cycle.
extract_eventgraph
report_timing -async -longest -corner 0
report_critical_cycle
report_critical_cycle_period

puts TUTORIAL_COMPLETE
exit

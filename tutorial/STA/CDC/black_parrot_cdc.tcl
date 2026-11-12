# Setup timing of the full Black Parrot processor with asynchronous clock groups.

cd [file dirname [file normalize [info script]]]
set out_dir [file normalize ../../results/black_parrot_cdc]
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"

set_timingannotateclocknetwork 0

# Load all four ASAP7 threshold-voltage families in one TT timing corner.
load_lef {
    ../../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_4x_201209.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_L_4x_220121a.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_R_4x_220121a.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_SL_4x_220121a.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_SRAM_4x_220121a.lef
}
load_lib {{
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_AO_LVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_AO_RVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_AO_SLVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_AO_SRAM_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_INVBUF_LVT_TT_nldm_220122.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_INVBUF_RVT_TT_nldm_220122.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_INVBUF_SLVT_TT_nldm_220122.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_INVBUF_SRAM_TT_nldm_220122.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_OA_LVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_OA_RVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_OA_SLVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_OA_SRAM_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_SEQ_LVT_TT_nldm_220123.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_SEQ_SLVT_TT_nldm_220123.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_SEQ_SRAM_TT_nldm_220123.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_SIMPLE_LVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_SIMPLE_RVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_SIMPLE_SLVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/asap7sc7p5t_SIMPLE_SRAM_TT_nldm_211120.lib
}}

load_verilog ../../Test-Designs/Black-Parrot/bp_processor_asap7.v
set_timing_model nldm

# Preserve the original periods and 500 ps falling edges.
create_clock [get_ports clk_i] -name clk_i -period 1000 -waveform {0 500}
create_clock [get_ports rt_clk_i] -name rt_clk_i -period 50000 -waveform {0 500}
set_clock_groups -asynchronous -group {clk_i} -group {rt_clk_i}
set_false_path -from [get_ports reset_i]

# Report the clocks and setup paths that remain timed.
report_clocks
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
report_area

# Retain the clock and setup summaries.
log_output_to_file $out_dir/result.txt
report_clocks
report_global_timing -longest
report_area
close_log_output_file

puts TUTORIAL_COMPLETE
exit

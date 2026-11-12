# Optimise the critical cycle of a placed ring oscillator.

cd [file dirname [file normalize [info script]]]
set pdk ASAP7
set out_dir [file normalize ../../results/aipo_ring_enable]
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

# Measure the enabled ring before adding placement-dependent wire delay.
set_case_analysis 1 EN
extract_eventgraph
puts "\n=== Before placement ==="
report_timing -async -longest -corner 0
report_critical_cycle_period

# Use the tutorial's M3 wire-RC estimate for the placed design.
set_layer_rpersq M3 36.3251
set_layer_cpersqdist M3 1.53955E-04
set_layer_as_lowest_metal M3
set_timing_RC_mode lumpedRC

# Place and legalise the oscillator before optimisation.
initialise_floorplan -utilisation 45 -aspectratio 1
io_place
cd ../../..
set ::env(refEDA_INSTALL_DIR) [pwd]
global_place -solver 4 -gradient 3
cd tutorial/Asynchronous/AIPO
legalise_components -order 0 -blockagesmethod 0

extract_eventgraph
puts "\n=== After placement, before optimisation ==="
report_timing -async -longest -corner 0
report_critical_cycle_period

eco_optimise_design -async -iterations 1
legalise_components -order 0 -blockagesmethod 0

puts "\n=== After optimisation ==="
report_timing -async -longest -corner 0
report_critical_cycle_period
check_placement_is_legal
save_verilog $out_dir/design.v
save_def -nets $out_dir/design.def

puts TUTORIAL_COMPLETE
exit

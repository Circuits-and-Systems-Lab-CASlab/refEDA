# Pausible-clock timing demonstration with an eight-bit datapath.

set flow aipo

# Resolve paths and select the output directory.
cd [file dirname [file normalize [info script]]]
set pdk ASAP7
set design pausible_clock

set out_dir [file normalize ../../results/aipo_pausible_clock]

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
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_AO_RVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_OA_RVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_INVBUF_RVT_TT_nldm_220122.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_SIMPLE_RVT_TT_nldm_211120.lib
    ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib
}}
# End PDK libraries

# The netlist repairs the original ack connection; see the README.
load_verilog ../../Test-Designs/Asynchronous/pausible_clock_asap7.v

# Set the cell timing model and output load (fF).
set_timing_model nldm
set_async_modules {SynchronizerToolkitPausibleClk}
set_load 5 -max -pin_load [all_outputs]

# Measure the feedback cycle before adding placement and estimated wire RC.
extract_eventgraph
puts "\n=== Before placement ==="
report_timing -async -longest -corner 0
report_critical_cycle
report_critical_cycle_period
report_area
puts "=== End before placement ===\n"

log_output_to_file $out_dir/unplaced.txt
report_critical_cycle
report_critical_cycle_period
report_area
close_log_output_file

# Use the tutorial's estimated M3 wire-RC settings.
set_layer_rpersq M3 36.3251
set_layer_cpersqdist M3 1.53955E-04
set_layer_as_lowest_metal M3
set_timing_RC_mode lumpedRC

# Build a legal starting placement at 45% utilisation.
initialise_floorplan -utilisation 45 -aspectratio 1
io_place
# The native GP helper runs from the tool directory.
cd ../../..
set ::env(refEDA_INSTALL_DIR) [pwd]
global_place -solver 3 -gradient 3
cd tutorial/Asynchronous/AIPO
legalise_components -order 0 -blockagesmethod 0

# Extract the event graph and report the baseline critical cycle.
extract_eventgraph
puts "\n=== Before ==="
report_timing -async -longest -corner 0
report_critical_cycle
report_critical_cycle_period
report_area
puts "=== End before ===\n"

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/before.txt
report_critical_cycle
report_critical_cycle_period
report_area
close_log_output_file

# Save the baseline cells and positions for the cycle comparison.
save_def -nets $out_dir/before.def

# Run one ECO iteration, then legalise the result.
eco_optimise_design -async -iterations 1
legalise_components -order 0 -blockagesmethod 0

# Report the resulting critical cycle and placement legality.
puts "\n=== After ==="
report_timing -async -longest -corner 0
report_critical_cycle
report_critical_cycle_period
report_area
check_placement_is_legal
puts "=== End after ===\n"

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/after.txt
report_critical_cycle
report_critical_cycle_period
report_area
check_placement_is_legal
close_log_output_file

# Export the optimised circuit and placement.
save_verilog $out_dir/design.v
save_def -nets $out_dir/design.def

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

# Global placement followed by row/site legalisation.

set flow global-placement

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]
set pdk ASAP7

set design counter
set clock_port clk
set period_ps 2000
set fall_ps 1000

set out_dir [file normalize ../results/global_placement]

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
    ../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_4x_201209.lef
    ../PDK/ASAP7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_R_4x_220121a.lef
}
load_lib {{
    ../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_AO_RVT_TT_nldm_211120.lib
    ../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_OA_RVT_TT_nldm_211120.lib
    ../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_INVBUF_RVT_TT_nldm_220122.lib
    ../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_SIMPLE_RVT_TT_nldm_211120.lib
    ../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib
}}
# End PDK libraries

load_verilog ../Test-Designs/Synchronous/${design}.v
load_def ../Test-Designs/Synchronous/${design}.def

# Clock and I/O values use ps and fF.
set_timing_model nldm
create_clock $clock_port -name CLK -period $period_ps -waveform [list 0 $fall_ps]
set_input_delay 0 -clock CLK [all_inputs]
set_output_delay 0 -clock CLK [all_outputs]
set_input_transition 20 -max [all_inputs]
set_load 5 -max -pin_load [all_outputs]

# Configure a fresh wirelength-driven placement.
set_global_place_densitymapinflation 0
set_global_place_overlapmetricinflation 0
set_global_place_overlapmetricexit 0.1

# Run global placement, then remove overlaps and snap cells to sites.
# The native GP helper runs from the tool directory.
cd ../..
set ::env(refEDA_INSTALL_DIR) [pwd]
global_place -solver 4 -gradient 3 -iterations 100 -terminator 1
cd tutorial/Placement
legalise_components -order 0 -blockagesmethod 0

# Report the final HPWL and placement legality.
puts "\n=== Placement results ==="
report_HPWL
report_area
check_placement_is_legal

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/result.txt
report_HPWL
report_area
check_placement_is_legal
close_log_output_file

# Export the legalised placement.
save_def -nets $out_dir/design.def

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

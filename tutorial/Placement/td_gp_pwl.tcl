# Timing-driven global placement: piecewise-linear slack-to-weight mapping.

set flow td-placement

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]
set pdk ASAP7

set design counter
set clock_port clk
set period_ps 2000
set fall_ps 1000

# Lowest routing metal for the wire estimate: M3 or M4.
# Override it for one run with: TD_METAL=M4 ../refEDA -no_gui -f <this script>
set metal M3
if {[info exists ::env(TD_METAL)]} { set metal $::env(TD_METAL) }

set mapping pwl
set out_dir [file normalize ../results/td_gp_${design}_${mapping}_${metal}]

# Replace the previous outputs from this example.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "PDK: $pdk"
puts "Results: $out_dir"
puts "Flow: $flow"
puts "Design: $design"
puts "Mapping: $mapping"
puts "Metal: $metal"

# Record the design used for these results.
set f [open $out_dir/info.txt w]
puts $f "Flow: $flow"
puts $f "Design: $design"
puts $f "PDK: $pdk"
puts $f "Mapping: $mapping"
puts $f "Metal: $metal"
close $f

# Load native 1x geometry and the RVT TT CCS timing libraries.
load_lef {
    ../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef
    ../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_R_1x_220121a.lef
}
load_lib [list [lsort [glob ../PDK/ASAP7/asap7sc7p5t_28/LIB/CCS/*RVT_TT_ccs*.lib]]]
load_verilog ../Test-Designs/Synchronous/${design}.v

# Clock and I/O values use ps and fF. The output delay equals one clock period,
# so the paths to outputs start with no margin and give the placer timing to fix.
create_clock $clock_port -name CLK -period $period_ps -waveform [list 0 $fall_ps]
set_input_delay 0 -clock CLK [all_inputs]
set_output_delay $period_ps -clock CLK [all_outputs]
set_input_transition 20 -max [all_inputs]
set_load 5 -max -pin_load [all_outputs]

# Use fast CCS timing with a pi-model wire estimate.
set_timing_model ccs
set_ccs_effort fast
set_timing_RC_mode pimodelRC

# M3 uses the tutorial's estimate. M4 scales it by the width-normalised R and C
# ratios of M4 to M3 in PDK/ASAP7/rcx_patterns.rules.
if {$metal eq "M3"} {
    set_layer_rpersq M3 36.3251
    set_layer_cpersqdist M3 1.53955E-04
} elseif {$metal eq "M4"} {
    set_layer_rpersq M4 27.9217
    set_layer_cpersqdist M4 1.31155E-04
} else {
    error "Choose metal M3 or M4, not $metal"
}
set_layer_as_lowest_metal $metal

# Create a square floorplan with 70% cell utilisation, then place the I/Os.
initialise_floorplan -utilisation 70 -aspectratio 1
io_place

# Weight each net by a piecewise-linear function of its slack, from 0.6 to 3.
# The wider 0.4 to 10 range was reported to hang with CCS and pi-model RC.
set_global_place_tdplaceslacktoweightmaptype 1
set_global_place_tdplacetimingweights {0.6 3.0}
set_global_place_tdplacestaiterationinterval 4
set_global_place_tdplacemaxstaiterations 4

# Run timing-driven global placement, then remove overlaps.
# The native GP helper runs from the tool directory.
cd ../..
set ::env(refEDA_INSTALL_DIR) [pwd]
global_place -solver 4 -gradient 3 -timing_driven
cd tutorial/Placement
legalise_components -order 0 -blockagesmethod 0

# Report the final timing, wirelength, area and legality.
puts "\n=== Timing-driven placement results ==="
report_timing -corner 0 -longest -backannotate
report_TNS -longest
report_global_timing -longest
report_HPWL
report_area
check_placement_is_legal

# Save a copy of the displayed measurements.
log_output_to_file $out_dir/result.txt
report_global_timing -longest
report_HPWL
report_area
check_placement_is_legal
close_log_output_file

# Export the placement.
save_def -nets $out_dir/design.def

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

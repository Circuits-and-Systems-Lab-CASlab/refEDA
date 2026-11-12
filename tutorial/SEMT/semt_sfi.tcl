# SEMT statistical fault injection (SFI): inject particle hits in
# iterations until the failure probability per hit is known within an
# error margin, then report the failure probability per grid.

set flow semt-sfi

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]

set design counter
set clock_port clk
set period_ps 2000
set fall_ps 1000

# Generation model: ML (fast), DEXP or BIAS.
set model ML

# Particle hits: grid count in x and y, seed, LET range (MeV cm2/mg)
# and affected area range (layout um2, 4x geometry), as in the SEMT
# injection exercise.
set grids 4
set seed 1
set let_range {0.5 60}
set area_range {4.178 8.613}

# Stop rule: E-P algorithm (Ruospo et al., IEEE TC 2025) with the
# measured variance; FP margins are absolute in percent: 1 = +-0.01.
set metric FP
set confidence 95
set initial_margin 5
set margin 1
set max_iterations 20
set max_hits_per_grid 20000

set out_dir [file normalize ../results/semt_sfi]

# Replace the previous outputs from this example.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "Flow: $flow"
puts "Design: $design"

# Record the design used for these results.
set f [open $out_dir/info.txt w]
puts $f "Flow: $flow"
puts $f "Design: $design"
puts $f "Model: $model"
puts $f "Grids: $grids x $grids"
puts $f "Metric: $metric, confidence $confidence%, margin +-[expr {$margin / 100.0}]"
puts $f "LET: $let_range"
close $f

# Load matching 4x layout geometry.
load_lef {
    ../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_4x_201209.lef
    ../PDK/ASAP7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_R_4x_220121a.lef
}

# Load one RVT TT NLDM corner.
load_lib {{
    ../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_AO_RVT_TT_nldm_211120.lib
    ../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_OA_RVT_TT_nldm_211120.lib
    ../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_INVBUF_RVT_TT_nldm_220122.lib
    ../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_SIMPLE_RVT_TT_nldm_211120.lib
    ../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib
}}

# The ML model takes the technology as an input: ASAP7 is a 7 nm FinFET.
set_technology_parameters -process_node 7 -device_type finfet -corner_name typ

load_verilog ../Test-Designs/Synchronous/${design}.v
load_def ../Test-Designs/Synchronous/${design}.def

# Clock and I/O values use ps and fF.
set_timing_model nldm
create_clock $clock_port -name CLK -period $period_ps -waveform [list 0 $fall_ps]
set_input_delay 0 -clock CLK [all_inputs]
set_output_delay 0 -clock CLK [all_outputs]
set_input_transition 20 -max [all_inputs]
set_load 5 -max -pin_load [all_outputs]

# The placement has no clock tree: use an ideal clock, so the latching
# windows of the registers are not widened by the unbuffered clock net.
set_timingannotateclocknetwork 0

# The SFI does not read the SET timing points after a scenario is
# propagated (only the IPO does): same results, less memory.
disable_SET_propagation_timing_points_storage

# Prepare a legal placement and backannotate setup/hold timing.
legalise_components -order 0 -blockagesmethod 0
report_timing -longest -corner 0 -backannotate
report_timing -shortest -corner 0 -backannotate
report_area
check_placement_is_legal

# Probabilistic analysis with timestamp based pulse propagation.
set_SET_analysis_mode 1
set_SET_glitch_propagation_mode 1
set_SET_generation_parameters -model $model
report_SET_generation_parameters

set_static_probability -value 0.5 -startpoints
annotate_static_probabilities -significant_digits 6

# A hit shares its charge among the struck gates by their collector
# lengths (charge diffusion factor), in the same 4x units as the LEF.
source asap7_R_4x_SET_collector_lengths.tcl

# Run the SFI. Every iteration adds hits to every grid (the grids are
# the strata), generates and propagates only the new scenarios, and
# computes the confidence interval of the mean FP per hit. It stops
# when the half-width is within the margin. One CSV row per iteration.
set dexp_option {}
if {$model eq "BIAS"} {
    set dexp_option [list -dexp_params {1p 0.5p 70p}]
}
set sfi [perform_SEMT_statistical_fault_injection \
    -xgrids $grids -ygrids $grids \
    -particle_energy $let_range -affected_area $area_range \
    -metric $metric -algorithm ep -variance measured \
    -confidence $confidence -initial_margin $initial_margin -margin $margin \
    -max_iterations $max_iterations -max_hits_per_grid $max_hits_per_grid \
    -seed $seed -output $out_dir/sfi_iterations.csv {*}$dexp_option]
lassign $sfi converged fp_mean fp_halfwidth hits
puts "SFI: converged $converged, $hits hits, FP per hit = $fp_mean +- $fp_halfwidth"

# Design and per grid results of all the injected hits; the CSV files
# are sfi_design.csv, sfi_hits.csv, sfi_endpoints.csv, sfi_grids.csv
# and sfi_LET.csv.
report_SET_analysis_sensitivity_measurements \
    -csv $out_dir/sfi -let_bins 6 -top_endpoints 10

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/result.txt
puts "SFI: converged $converged, $hits hits, FP per hit = $fp_mean +- $fp_halfwidth"
report_SET_analysis_sensitivity_measurements -let_bins 6 -top_endpoints 10
report_SEMT_SFI_statistics -confidence $confidence -metric $metric
report_area
check_placement_is_legal
close_log_output_file

# Save the grid heatmaps of the layout as vector PDFs with the tool's
# canvas export: the failure probability, the affected gates and the
# SEMT hits per grid. The export draws the GUI canvas, so run this
# exercise without -no_gui to get them; with -no_gui they are skipped.
foreach heatmap {FP affected_gates semts} {
    draw_particle_hits_heatmap $heatmap
    if {[catch {export_screenshot $out_dir/grids_${heatmap}.pdf}]} {
        puts "Grid PDFs skipped: the GUI is not shown (run without -no_gui)."
        break
    }
}
draw_particle_hits_heatmap off

# Save the placement for the grid map.
save_def -nets $out_dir/design.def

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

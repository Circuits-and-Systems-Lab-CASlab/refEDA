# SEMT before and after the SET IPO: inject the same particle hits into
# the original layout and into the layout optimised by the SET IPO, and
# compare the failure probability per hit, per grid and for the design.

set flow semt-ipo

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]

set design counter
set clock_port clk
set period_ps 2000
set fall_ps 1000
set charge_fc 34

# Generation model of the IPO and of the SEMT analysis: ML (fast), DEXP
# or BIAS.
set model ML
set max_iterations 6

# Particle hits, as in the SEMT injection exercise. The same seed gives
# the same hit positions and LETs before and after the IPO.
set hits_per_grid 100
set grids 4
set seed 1
set let_range {0.5 60}
set area_range {4.178 8.613}

set out_dir [file normalize ../results/semt_ipo]

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
puts $f "Charge: $charge_fc fC"
puts $f "Model: $model"
puts $f "Grids: $grids x $grids"
puts $f "Hits per grid: $hits_per_grid"
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

# The IPO must not size into the hold buffers (HB*) or the clock
# inverters (CKINVDC*): they are larger than the buffers / inverters of
# the same function, but much slower.
set_dont_use {HB1xp67_ASAP7_75t_R HB2xp67_ASAP7_75t_R HB3xp67_ASAP7_75t_R HB4xp67_ASAP7_75t_R
              CKINVDCx5p33_ASAP7_75t_R CKINVDCx6p67_ASAP7_75t_R CKINVDCx8_ASAP7_75t_R
              CKINVDCx9p33_ASAP7_75t_R CKINVDCx10_ASAP7_75t_R CKINVDCx11_ASAP7_75t_R
              CKINVDCx12_ASAP7_75t_R CKINVDCx14_ASAP7_75t_R CKINVDCx16_ASAP7_75t_R
              CKINVDCx20_ASAP7_75t_R}

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

# IPO settings, as in the SET IPO exercise.
set_SET_IPO_generation_phase_sorting_method 2
set_SET_IPO_generation_phase_early_exit_percentage_threshold 0.1
set_SET_IPO_local_evaluation_thresholds -upsize 0.1 -chargesharing 2

# SEMT analysis of the current layout, saved with the name of the phase:
# inject the hits, generate and propagate their scenarios, then save the
# design and per grid results, the CI of the FP per hit and the grid
# heatmap PDFs (with the GUI shown).
proc run_semt {phase} {
    global out_dir hits_per_grid grids seed let_range area_range model

    # Start from no scenarios and no particle profiles: the exhaustive
    # analysis of the IPO uses every profile, the injection adds one per
    # hit. The SEMT flow does not need the SET timing points.
    clear_SET_info
    clear_all_particle_profiles
    disable_SET_propagation_timing_points_storage

    puts "\n=== SEMT $phase ==="
    set dexp_option {}
    if {$model eq "BIAS"} {
        set dexp_option [list -dexp_params {1p 0.5p 70p}]
    }
    particle_hits_injection -num_of_hits $hits_per_grid \
        -xgrids $grids -ygrids $grids \
        -particle_energy $let_range -affected_area $area_range \
        -seed $seed -output $out_dir/particle_hits_${phase}.log {*}$dexp_option
    generate_SET_scenario_glitch -all
    propagate_SET_scenario_glitch -all
    # clear_SET_info keeps the ASET / LASET / APW totals of the previous
    # analysis (after the IPO: its exhaustive analysis). Propagating all
    # the scenarios again with -force starts the totals from zero. The
    # per hit metrics (FP, RP, ...) are the same either way.
    propagate_SET_scenario_glitch -all -force
    report_SET_analysis_sensitivity_measurements \
        -csv $out_dir/semt_${phase} -let_bins 6 -top_endpoints 10
    set fp_ci [report_SEMT_SFI_statistics -confidence 95 -metric FP]
    puts "FP per hit $phase (95% CI): $fp_ci"
    puts "=== End SEMT $phase ===\n"

    # Save a copy of the displayed measurements for plotting.
    log_output_to_file $out_dir/${phase}.txt
    report_SET_analysis_sensitivity_measurements -let_bins 6 -top_endpoints 10
    report_SEMT_SFI_statistics -confidence 95 -metric FP
    report_area
    report_timing -longest -corner 0
    check_placement_is_legal
    close_log_output_file

    # Grid heatmap PDFs of the tool's canvas, skipped with -no_gui.
    foreach heatmap {FP affected_gates semts} {
        draw_particle_hits_heatmap $heatmap
        if {[catch {export_screenshot $out_dir/grids_${heatmap}_${phase}.pdf}]} {
            puts "Grid PDFs skipped: the GUI is not shown (run without -no_gui)."
            break
        }
    }
    draw_particle_hits_heatmap off
}

# SEMT of the original layout.
run_semt before
save_def -nets $out_dir/before.def

# SET IPO, as in the SET IPO exercise: exhaustive analysis of a single
# profile, then the optimisation. The ML local evaluation of the IPO
# reads the SET timing points, so they are stored again.
clear_SET_info
clear_all_particle_profiles
enable_SET_propagation_timing_points_storage
puts "Charge: $charge_fc fC"
if {$model eq "BIAS"} {
    create_particle_profile -name p1 \
        -tdelay 1p -tau1 0.5p -tau2 70p -q ${charge_fc}f -biasduration 1.5p
} else {
    create_particle_profile -name p1 \
        -tdelay 1p -tau1 10p -tau2 100p -q ${charge_fc}f
}
perform_exhaustive_SET_analysis -req 2
perform_SET_IPO_flow \
    -changelist $out_dir/ipo_moves.log \
    -outputscript $out_dir/ipo_eco_moves.tcl \
    -outputresult $out_dir/ipo_results.log \
    -placementmethod 2 -maxiterations $max_iterations

# Refresh placement, setup/hold timing and probabilities after the moves.
legalise_components -order 0 -blockagesmethod 0
report_timing -longest -corner 0 -backannotate
report_timing -shortest -corner 0 -backannotate
reset_static_probabilities
set_static_probability -value 0.5 -startpoints
annotate_static_probabilities -significant_digits 6

# SEMT of the optimised layout, with the same hits.
run_semt after

# Save the optimised netlist and legal placement.
log_output_to_file $out_dir/result.txt
report_area
check_placement_is_legal
close_log_output_file
save_verilog $out_dir/design.v
save_def -nets $out_dir/design.def

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

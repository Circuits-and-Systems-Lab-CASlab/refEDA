# SET IPO: let the tool choose and apply the gate sizing and charge
# sharing moves that reduce the SET sensitivity, then measure the result.

set flow set-ipo

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]

set design counter
set clock_port clk
set period_ps 2000
set fall_ps 1000
set charge_fc 34

# Generation model of the analysis and of the IPO: ML (fast), DEXP or BIAS.
set model ML
set max_iterations 6

set out_dir [file normalize ../results/set_ipo]

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

# ML uses only the charge; BIAS uses its own source times (see the
# generation models exercise).
puts "Charge: $charge_fc fC"
if {$model eq "BIAS"} {
    create_particle_profile -name p1 \
        -tdelay 1p -tau1 0.5p -tau2 70p -q ${charge_fc}f -biasduration 1.5p
} else {
    create_particle_profile -name p1 \
        -tdelay 1p -tau1 10p -tau2 100p -q ${charge_fc}f
}

# IPO settings: the order of the components (2: by their SET
# contribution), the early exit of the generation phase, and the
# minimum local improvements that accept an upsize or a charge
# sharing buffer.
set_SET_IPO_generation_phase_sorting_method 2
set_SET_IPO_generation_phase_early_exit_percentage_threshold 0.1
set_SET_IPO_local_evaluation_thresholds -upsize 0.1 -chargesharing 2

# Record the register data pins used by the plotting scripts.
set f [open $out_dir/capture_pins.txt w]
foreach pin [all_registers -data_pins] {
    puts $f $pin
}
close $f

# Measure the baseline. The IPO starts from this exhaustive analysis.
puts "\n=== Before ==="
perform_exhaustive_SET_analysis -req 2
list_all_gatepins_SET_analysis_info -csv $out_dir/gatepins_before.csv
report_SET_analysis_sensitivity_measurements
report_area
puts "=== End before ===\n"

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/before.txt
report_SET_analysis_sensitivity_measurements
report_area
report_timing -longest -corner 0
close_log_output_file
save_def -nets $out_dir/before.def

# Run the SET IPO. It writes the applied moves, an ECO script that
# replays them on the original design, and the per-iteration results.
perform_SET_IPO_flow \
    -changelist $out_dir/ipo_moves.log \
    -outputscript $out_dir/ipo_eco_moves.tcl \
    -outputresult $out_dir/ipo_results.log \
    -placementmethod 2 -maxiterations $max_iterations

# Refresh placement and setup/hold timing after the moves.
legalise_components -order 0 -blockagesmethod 0
report_timing -longest -corner 0 -backannotate
report_timing -shortest -corner 0 -backannotate

# Recompute probabilities, then repeat the same exhaustive analysis.
reset_static_probabilities
set_static_probability -value 0.5 -startpoints
annotate_static_probabilities -significant_digits 6

puts "\n=== After ==="
perform_exhaustive_SET_analysis -req 2
list_all_gatepins_SET_analysis_info -csv $out_dir/gatepins_after.csv
report_SET_analysis_sensitivity_measurements
report_area
check_placement_is_legal
puts "=== End after ===\n"

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/after.txt
report_SET_analysis_sensitivity_measurements
report_area
report_timing -longest -corner 0
check_placement_is_legal
close_log_output_file

# Save the optimised netlist and legal placement.
save_verilog $out_dir/design.v
save_def -nets $out_dir/design.def

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

# SET generation with a circuit simulator: run the exhaustive SET analysis
# with the internal bias dependent model (BIAS) and with the same particle
# source injected in transistor level decks simulated by Spectre.

set flow set-spectre

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]

set design counter
set clock_port clk
set period_ps 2000
set fall_ps 1000
set charge_fc 34

# Generation models to compare, in this order: BIAS is simulated by the
# tool, SPECTRE_TRANSISTOR writes one SPICE deck per scenario with the
# library cells as transistor subcircuits and runs Spectre on it. Use
# SPECTRE_ANALOG for the analog equivalent model of the generation
# circuit instead (no transistor models needed).
set models {BIAS SPECTRE_TRANSISTOR}

# Circuit simulator inputs (Spectre; the open source Xyce will replace
# it): ASAP7 supply and nets, the 7 nm TT transistor models and the cell
# subcircuits extracted from the layout, which also map the library pins.
set sim_vdd 0.7
set sim_powernet VDD
set sim_groundnet VSS
set sim_models [file normalize ../PDK/ASAP7/models/7nm_TT.pm]
set sim_subcircuits [file normalize ../PDK/ASAP7/asap7sc7p5t_28/CDL/xAct3D_extracted/asap7sc7p5t_28_R.sp]

set out_dir [file normalize ../results/set_spectre_bias]

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
puts $f "Models: $models"
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

load_verilog ../Test-Designs/Synchronous/${design}.v
load_def ../Test-Designs/Synchronous/${design}.def

# Clock and I/O values use ps and fF.
set_timing_model nldm
create_clock $clock_port -name CLK -period $period_ps -waveform [list 0 $fall_ps]
set_input_delay 0 -clock CLK [all_inputs]
set_output_delay 0 -clock CLK [all_outputs]
set_input_transition 20 -max [all_inputs]
set_load 5 -max -pin_load [all_outputs]

# Prepare a legal placement and backannotate setup/hold timing.
legalise_components -order 0 -blockagesmethod 0
report_timing -longest -corner 0 -backannotate
report_timing -shortest -corner 0 -backannotate
report_area
check_placement_is_legal

# Annotate static probabilities.
set_SET_analysis_mode 1
set_SET_glitch_propagation_mode 0

set_static_probability -value 0.5 -startpoints
annotate_static_probabilities -significant_digits 6

# Tell the tool how to write and simulate the generation decks. The
# include files and the subcircuit mapping are needed by the transistor
# level decks only; the decks include the subcircuit file themselves, so
# it is not repeated in the include files (Spectre rejects a subcircuit
# defined twice). The decks and the simulator logs are kept in spectre/.
set_external_SET_generation_VDD $sim_vdd
set_external_SET_generation_powernet $sim_powernet
set_external_SET_generation_groundnet $sim_groundnet
set_external_SET_generation_includefiles [list $sim_models]
set_external_SET_generation_setsubcircuit [list $sim_subcircuits]
file mkdir $out_dir/spectre
set_external_SET_generation_folder $out_dir/spectre

# The bias dependent source takes its times from the profile: tdelay and
# q, tau1 (rise, also the charge collection rate), tau2 (fall) and the
# EXP source duration -biasduration. All models use the same profile.
puts "Charge: $charge_fc fC"
create_particle_profile -name p1 \
    -tdelay 1p -tau1 0.5p -tau2 70p -q ${charge_fc}f -biasduration 1.5p

# Record the register data pins used by the plotting scripts.
set f [open $out_dir/capture_pins.txt w]
foreach pin [all_registers -data_pins] {
    puts $f $pin
}
close $f

foreach model $models {
    puts "\n=== $model ==="

    # The simulator models inject the bias dependent source (-source BIAS)
    # in their decks; the default source is the double exponential one.
    if {$model eq "BIAS"} {
        set_SET_generation_parameters -model BIAS
    } else {
        set_SET_generation_parameters -model $model -source BIAS
    }
    report_SET_generation_parameters

    # Generate a pulse at every combinational output and propagate it.
    # With a simulator model, every scenario is one simulator run.
    set start [clock milliseconds]
    perform_exhaustive_SET_analysis
    set seconds [expr {([clock milliseconds] - $start) / 1000.0}]
    puts "$model analysis: $seconds s"

    # Export the generated pulses and the per-pin sensitivity.
    report_SET_generation_statistics -file $out_dir/generation_statistics_${model}.csv
    list_all_gatepins_SET_analysis_info -csv $out_dir/gatepins_${model}.csv
    report_SET_analysis_sensitivity_measurements

    # Save a copy of the displayed measurements for plotting.
    log_output_to_file $out_dir/${model}.txt
    puts "Model: $model"
    puts "Analysis seconds: $seconds"
    report_SET_analysis_sensitivity_measurements
    close_log_output_file
    puts "=== End $model ===\n"
}

# Save the analysed circuit.
log_output_to_file $out_dir/result.txt
report_area
check_placement_is_legal
close_log_output_file
save_def -nets $out_dir/design.def

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

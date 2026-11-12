# SET generation models: run the same exhaustive SET analysis with the
# bias dependent (BIAS) and the machine learning (ML) generation models.

set flow set-models

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]

set design counter
set clock_port clk
set period_ps 2000
set fall_ps 1000
set charge_fc 34

# Generation models to compare, in this order. Add DEXP to include the
# double exponential model of exercise 8.
set models {BIAS ML}

set out_dir [file normalize ../results/set_generation_models]

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

# Record the register data pins used by the plotting scripts.
set f [open $out_dir/capture_pins.txt w]
foreach pin [all_registers -data_pins] {
    puts $f $pin
}
close $f

puts "Charge: $charge_fc fC"

foreach model $models {
    puts "\n=== $model ==="

    # Select the generation model of every scenario driver.
    set_SET_generation_parameters -model $model
    report_SET_generation_parameters

    # The pulse times mean a different thing per model. BIAS: tau1 is
    # also the charge collection rate and the EXP source lasts
    # -biasduration. ML uses only the charge; its pulse starts about
    # 0.1 ns after the hit. DEXP: the double exponential current.
    clear_all_particle_profiles
    if {$model eq "BIAS"} {
        create_particle_profile -name p1 \
            -tdelay 1p -tau1 0.5p -tau2 70p -q ${charge_fc}f -biasduration 1.5p
    } else {
        create_particle_profile -name p1 \
            -tdelay 1p -tau1 10p -tau2 100p -q ${charge_fc}f
    }

    # Generate a pulse at every combinational output and propagate it.
    set start [clock milliseconds]
    perform_exhaustive_SET_analysis
    set seconds [expr {([clock milliseconds] - $start) / 1000.0}]
    puts "$model analysis: $seconds s"

    # Export the generated pulses (width, height per driver) and the
    # per-pin sensitivity.
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

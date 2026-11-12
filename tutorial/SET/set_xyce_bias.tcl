# SET generation with the open source circuit simulator Xyce: run the
# exhaustive SET analysis with the internal bias dependent model (BIAS),
# then with the same particle source simulated by Xyce on the analog
# equivalent model of the tool (XYCE_ANALOG) and on transistor level decks
# (XYCE_TRANSISTOR), so the internal engine can be compared with Xyce
# scenario by scenario, for accuracy and for runtime.

set flow set-xyce

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]

# Choose one of the small ASAP7 designs with an environment variable:
#   SET_DESIGN=uart ../refEDA -no_gui -f SET/set_xyce_bias.tcl
# Every combinational output is one Xyce run, so the larger designs are
# not offered. All four use the clock port clk and a 2000 ps period.
set small_designs {counter gcd uart mac}
set design counter
if {[info exists ::env(SET_DESIGN)]} { set design $::env(SET_DESIGN) }
if {[lsearch -exact $small_designs $design] < 0} {
    puts "ERROR: SET_DESIGN must be one of: $small_designs"
    exit 1
}
set clock_port clk
set period_ps 2000
set fall_ps 1000
set charge_fc 34

# Generation models to compare, in this order:
#   BIAS            - simulated by the tool's internal engine;
#   XYCE_ANALOG     - one SPICE deck per scenario with the tool's analog
#                     equivalent model of the struck driver and its RC net,
#                     simulated by Xyce; no transistor models needed;
#   XYCE_TRANSISTOR - one SPICE deck per scenario with the library cells as
#                     transistor subcircuits, simulated by Xyce.
set models {BIAS XYCE_ANALOG XYCE_TRANSISTOR}

# Xyce must be on PATH (the tool's Tcl has no auto_execok, so search PATH).
set xyce_found 0
foreach dir [split $::env(PATH) :] {
    if {$dir ne "" && [file executable [file join $dir Xyce]]} { set xyce_found 1; break }
}
if {!$xyce_found} {
    puts "ERROR: Xyce is not on PATH; see the STA-SPICE exercise for its setup"
    exit 1
}

# Circuit simulator inputs: ASAP7 supply and nets, and the Xyce versions of
# the 7 nm TT transistor models (BSIM-CMG level 107) and of the cell
# subcircuits extracted from the layout, which also map the library pins.
set sim_vdd 0.7
set sim_powernet VDD
set sim_groundnet VSS
set sim_models [file normalize ../PDK/ASAP7/models/7nm_TT_xyce.pm]
set sim_subcircuits [file normalize ../PDK/ASAP7/asap7sc7p5t_28/CDL/xAct3D_extracted/asap7sc7p5t_28_R_xyce.sp]

set out_dir [file normalize ../results/set_xyce_bias_${design}]

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

# Tell the tool how to write and simulate the generation decks. The include
# files and the subcircuit mapping are needed by the XYCE_TRANSISTOR decks
# only; the decks include the subcircuit file themselves, so it is not
# repeated in the include files. The decks and the Xyce logs are kept in
# xyce/.
set_external_SET_generation_VDD $sim_vdd
set_external_SET_generation_powernet $sim_powernet
set_external_SET_generation_groundnet $sim_groundnet
set_external_SET_generation_includefiles [list $sim_models]
set_external_SET_generation_setsubcircuit [list $sim_subcircuits]
file mkdir $out_dir/xyce
set_external_SET_generation_folder $out_dir/xyce

# The bias dependent source takes its times from the profile: tdelay and q,
# tau1 (rise, also the charge collection rate), tau2 (fall) and the EXP
# source duration -biasduration. All models use the same profile.
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

    # The simulator model injects the bias dependent source (-source BIAS)
    # in its decks; the default source is the double exponential one.
    if {$model eq "BIAS"} {
        set_SET_generation_parameters -model BIAS
    } else {
        set_SET_generation_parameters -model $model -source BIAS
    }
    report_SET_generation_parameters

    # Generate a pulse at every combinational output and propagate it.
    # With a simulator model, every scenario is one Xyce run.
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

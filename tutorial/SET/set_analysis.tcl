# SET analysis: generate and propagate particle strikes through the design.

set flow set

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]
set pdk ASAP7

set design counter
set clock_port clk
set period_ps 2000
set fall_ps 1000
set charge_fc 34

set out_dir [file normalize ../results/set_analysis]

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
puts $f "Charge: $charge_fc fC"
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

# Prepare a legal placement and backannotate setup/hold timing.
legalise_components -order 0 -blockagesmethod 0
report_timing -longest -corner 0 -backannotate
report_timing -shortest -corner 0 -backannotate
report_area
check_placement_is_legal

# Annotate static probabilities and define the particle profile.
set_SET_analysis_mode 1
set_SET_glitch_propagation_mode 0
set_SET_generation_parameters -model DEXP

set_static_probability -value 0.5 -startpoints
annotate_static_probabilities -significant_digits 6

puts "Charge: $charge_fc fC"
create_particle_profile -name p1 \
    -tdelay 1p -tau1 10p -tau2 100p -q ${charge_fc}f

# Record the register data pins used by the plotting scripts.
set f [open $out_dir/capture_pins.txt w]
foreach pin [all_registers -data_pins] {
    puts $f $pin
}
close $f

# Analyse every combinational output and retain the generated pulses.
file mkdir $out_dir/waveforms $out_dir/pwl
perform_exhaustive_SET_analysis \
    -save_waveform $out_dir/waveforms \
    -save_pwl $out_dir/pwl

# Export per-pin sensitivity and the analysed circuit.
list_SET_scenarios
list_all_gatepins_SET_analysis_info -csv $out_dir/gatepins.csv
report_SET_analysis_sensitivity_measurements
save_verilog $out_dir/design.v
save_def -nets $out_dir/design.def

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/result.txt
report_SET_analysis_sensitivity_measurements
report_area
check_placement_is_legal
close_log_output_file

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

# SET mitigation: compare the original circuit with resized gates.

set flow set-mitigation

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]
set pdk ASAP7

set design counter
set clock_port clk
set period_ps 2000
set fall_ps 1000
set charge_fc 34

set out_dir [file normalize ../results/set_mitigation]

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
legalise_components -order 0 -blockagesmethod 0
report_timing -longest -corner 0 -backannotate
report_timing -shortest -corner 0 -backannotate
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

# Measure baseline ASET, LASET and area.
puts "\n=== Before ==="
perform_exhaustive_SET_analysis
list_all_gatepins_SET_analysis_info -csv $out_dir/gatepins_before.csv
report_SET_analysis_sensitivity_measurements
report_area
puts "=== End before ===\n"

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/before.txt
report_SET_analysis_sensitivity_measurements
report_area
close_log_output_file

# Save the placement before resizing.
save_def -nets $out_dir/before.def

# Resize up to 32 small NAND2 instances in name order to NAND2x2.
set mitigation_components [lrange [lsort [get_cells -libcell {NAND2xp33_ASAP7_75t_R NAND2xp5_ASAP7_75t_R}]] 0 31]
puts "Resizing [llength $mitigation_components] NAND2 cells."
foreach component $mitigation_components {
    eco_set_component_libcell_type -component $component \
        -type NAND2x2_ASAP7_75t_R -overlapsmethod 2
}

# Refresh placement and setup/hold timing after resizing.
legalise_components -order 0 -blockagesmethod 0
report_timing -longest -corner 0 -backannotate
report_timing -shortest -corner 0 -backannotate

# Recompute probabilities after the ECO.
reset_static_probabilities
set_static_probability -value 0.5 -startpoints
annotate_static_probabilities -significant_digits 6

# Repeat the same exhaustive analysis after resizing.
puts "\n=== After ==="
perform_exhaustive_SET_analysis
list_all_gatepins_SET_analysis_info -csv $out_dir/gatepins_after.csv
report_SET_analysis_sensitivity_measurements
report_area
check_placement_is_legal
puts "=== End after ===\n"

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/after.txt
report_SET_analysis_sensitivity_measurements
report_area
check_placement_is_legal
close_log_output_file

# Save the resized netlist and legal placement.
save_verilog $out_dir/design.v
save_def -nets $out_dir/design.def

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

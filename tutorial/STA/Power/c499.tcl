# Estimate leakage, switching, and internal power from supplied SAIF activity.

cd [file dirname [file normalize [info script]]]
set design c499
set pdk IHP-Open-PDK
set out_dir [file normalize ../../results/power_c499]

# Replace this example's previous results.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "PDK: $pdk"

set f [open $out_dir/info.txt w]
puts $f "Flow: power"
puts $f "Design: $design"
puts $f "PDK: $pdk"
puts $f "Activity: SAIF"
close $f

# Load the IHP Open PDK at its typical 1.20 V, 25 C corner.
load_lef {
    ../../PDK/IHP-Open-PDK/sg13g2_tech.lef
    ../../PDK/IHP-Open-PDK/sg13g2_stdcell.lef
}
set_lefsitename CoreSite
load_lib ../../PDK/IHP-Open-PDK/sg13g2_stdcell_typ_1p20V_25C.lib
load_verilog ../../Test-Designs/Power/c499/c499.v

# Use a 10 ns reference clock, 20 ps input slew, and 5 fF output load.
create_clock clk -period 10 -waveform {0 5}
set_input_delay 0 -clock clk [all_inputs]
set_output_delay 0 -clock clk [all_outputs]
set_input_transition 0.02 -max [all_inputs]
set_load 0.005 -max -pin_load [all_outputs]
set_timing_model nldm

# Annotate the supplied activity for the matching mapped circuit.
read_saif ../../Test-Designs/Power/c499/c499.saif

report_timing -corner 0 -longest -backannotate

# Record the power reports once, then display the saved output.
log_output_to_file $out_dir/result.txt
report_total_leakage_power
report_total_switching_power
report_total_internal_power
list_components_power_info -significant_digits 7
list_verilog_modules_power_info -significant_digits 7
report_area
close_log_output_file
set f [open $out_dir/result.txt r]
puts -nonewline [read $f]
close $f

# Mark the completed analysis.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

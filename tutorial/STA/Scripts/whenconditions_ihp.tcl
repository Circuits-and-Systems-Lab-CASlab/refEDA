# Compare default and conditional timing arcs of an AND-OR gate.

cd [file dirname [file normalize [info script]]]
set design and_or_gate
set pdk IHP-Open-PDK
set out_dir [file normalize ../../results/sta_whenconditions]

# Replace this example's previous results.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "PDK: $pdk"

set f [open $out_dir/info.txt w]
puts $f "Flow: sta"
puts $f "Design: $design"
puts $f "PDK: $pdk"
close $f

# Load the IHP Open PDK at its typical 1.20 V, 25 C corner.
load_lef {
    ../../PDK/IHP-Open-PDK/sg13g2_tech.lef
    ../../PDK/IHP-Open-PDK/sg13g2_stdcell.lef
}
set_lefsitename CoreSite
load_lib ../../PDK/IHP-Open-PDK/sg13g2_stdcell_typ_1p20V_25C.lib
load_verilog ../../Test-Designs/STA/whenconditions_ihp.v

# A 10 ns reference clock constrains this combinational circuit.
create_clock clk -period 10 -waveform {0 5}
set_input_delay 0 -clock clk [get_ports {a1 a2 b1}]
set_output_delay 0 -clock clk [all_outputs]
set_input_transition 0.02 -max [get_ports {a1 a2 b1}]
set_load 0.005 -max -pin_load [all_outputs]
set_timing_model nldm

# First report the gate with unconstrained side inputs.
report_timing -corner 0 -longest -backannotate
report_global_timing -longest

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/unconstrained.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
close_log_output_file

# Fix the AND inputs so the B1-to-X conditional arc is sensitised.
set_case_analysis 0 a1
set_case_analysis 1 a2
set_timingdisableconddefaultarcs 0

report_timing -corner 0 -longest -backannotate
report_global_timing -longest

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/default_arcs.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
close_log_output_file

# Suppress default arcs when an applicable conditional arc exists.
set_timingdisableconddefaultarcs 1

report_timing -corner 0 -longest -backannotate
report_global_timing -longest

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/conditional_arcs.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
close_log_output_file

report_global_timing -longest
report_area

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/result.txt
report_global_timing -longest
report_area
close_log_output_file

# Mark the completed analysis.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

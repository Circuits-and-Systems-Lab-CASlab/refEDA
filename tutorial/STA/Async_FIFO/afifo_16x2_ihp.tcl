# Constrain the read/write domains of the supplied 16-entry, two-bit FIFO.

cd [file dirname [file normalize [info script]]]
set design afifo
set pdk IHP-Open-PDK
set out_dir [file normalize ../../results/sta_afifo]

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
load_verilog ../../Test-Designs/STA/afifo_16x2_ihp.v

# Assign each functional interface to its clock; delays use ns.
create_clock i_rclk -period 2 -waveform {0 1}
create_clock i_wclk -period 3 -waveform {0 1.5}
set_input_delay 0 -clock i_rclk [get_ports i_rd]
set_input_delay 0 -clock i_wclk [get_ports {i_wr i_wdata*}]
set_output_delay 1 -clock i_rclk [get_ports {o_rdata* o_rempty rptr*}]
set_output_delay 1 -clock i_wclk [get_ports {o_wfull wptr*}]
set_false_path -from [get_ports {i_wrst_n i_rrst_n}]
set_input_transition 0.02 -max [all_inputs]
set_load 0.005 -max -pin_load [all_outputs]
set_timing_model nldm

# Analyse cell delays without placement or extracted wire RC.
report_design
report_timing -corner 0 -longest -backannotate
report_global_timing -longest

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/before.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
close_log_output_file

# Exclude paths crossing between the independent read and write clocks.
set_clock_groups -group {i_rclk} -group {i_wclk} -asynchronous

report_timing -corner 0 -longest -backannotate
report_global_timing -longest

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/after.txt
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
close_log_output_file

report_clocks
report_global_timing -longest
report_area

# Retain a copy of the displayed measurements.
log_output_to_file $out_dir/result.txt
report_clocks
report_global_timing -longest
report_area
close_log_output_file

# Mark the completed analysis.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

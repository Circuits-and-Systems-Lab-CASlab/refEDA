# Multi-clock STA of the SKY130 dual-clock FIFO.

set flow sta
set design olo_base_fifo_async
set pdk SKY130

# Resolve inputs relative to this script.
cd [file dirname [file normalize [info script]]]
set out_dir [file normalize ../../results/ol_fifo_async]

# Replace the previous results from this example.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "Flow: $flow"
puts "Design: $design"
puts "PDK: $pdk"

# Load the SKY130 geometry and TT timing corner (1.8 V, 25 C).
load_lef {
    ../../PDK/SKY130/sky130_fd_sc_hd.tlef
    ../../PDK/SKY130/sky130_fd_sc_hd_merged.lef
}
load_lib ../../PDK/SKY130/sky130_fd_sc_hd__tt_025C_1v80.lib
load_verilog ../../Test-Designs/SKY130/ol_fifo_async.v
set_timing_model nldm

# Clock and I/O delays use ns and loads use pF.
create_clock [get_ports In_Clk] -name In_Clk -period 2.0
create_clock [get_ports Out_Clk] -name Out_Clk -period 10.0

# Query each domain's ports, including every bit of the data and level buses.
set write_inputs [get_ports In_Rst In_Data* In_Valid]
set read_inputs [get_ports Out_Rst Out_Ready]
set write_outputs [get_ports In_RstOut In_Ready In_Full In_Empty In_AlmFull In_AlmEmpty In_Level*]
set read_outputs [get_ports Out_RstOut Out_Data* Out_Valid Out_Full Out_Empty Out_AlmFull Out_AlmEmpty Out_Level*]

puts "Write-domain inputs/outputs: [llength $write_inputs] / [llength $write_outputs]"
puts "Read-domain inputs/outputs: [llength $read_inputs] / [llength $read_outputs]"

set_input_delay -clock In_Clk 1.0 $write_inputs
set_input_delay -clock Out_Clk 1.0 $read_inputs
set_output_delay -clock In_Clk 1.0 $write_outputs
set_output_delay -clock Out_Clk 1.0 $read_outputs
set_input_transition 0.1 -max [all_inputs]
set_load 0.01 -max -pin_load [all_outputs]

# Report the two declared clock waveforms.
report_clocks

# Backannotate maximum timing and report setup paths and violations.
puts "\n=== Setup timing ==="
report_timing -corner 0 -longest -backannotate
report_global_timing -longest

report_area

# Save the displayed clock and timing summaries for later inspection.
log_output_to_file $out_dir/result.txt
report_clocks
report_global_timing -longest
report_area
close_log_output_file

puts TUTORIAL_COMPLETE
exit

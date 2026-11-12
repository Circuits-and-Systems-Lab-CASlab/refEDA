# SEU analysis of a large design: the ISPD 2012 pci_bridge32 (OpenCores PCI bridge,
# PCI target / initiator to Wishbone master / slave, 25,310 cells and 3,359
# flip-flops), placed with Innovus in ASAP7.
# An SEU (Single Event Upset) is a bit flip in a flip-flop. For every flip-flop the
# analysis computes, with BDDs, the probability P that its SEU reaches each endpoint
# (primary output or flip-flop data pin) in the same clock cycle, and ranks the
# flip-flops by criticality = p * AcPP (AcPP: the sum of P over the endpoints).

set flow seu-analysis

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]
set pdk ASAP7

set design pci_bridge32
set clock_port ispd_clk
set period_ps 660
set fall_ps 330
# Worker processes of the SEU analysis (1: none). Each worker analyses a share of the
# endpoints with its own BDDs, so the memory grows with the number of workers.
set seu_workers 4

set out_dir [file normalize ../results/seu_analysis]

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

# The DEF holds the netlist and the Innovus placement.
load_def ../Test-Designs/Synchronous/${design}.def

# Clock and I/O values use ps and fF.
set_timing_model nldm
create_clock $clock_port -name CLK -period $period_ps -waveform [list 0 $fall_ps]
set_input_delay 0 -clock CLK [all_inputs]
set_output_delay 0 -clock CLK [all_outputs]
set_input_transition 20 -max [all_inputs]
set_load 5 -max -pin_load [all_outputs]
report_timing -longest -corner 0 -backannotate

# SEU scenarios: one per flip-flop output, SEU probability p = 1. The primary inputs
# and the flip-flop outputs (the startpoints of the logic cones) are random with
# static probability 0.5.
inject_SEU -all -corner 0
set_static_probability -corner 0 -value 0.5 -startpoints

# The BDD work of one endpoint is limited to 60 s of CPU
# and 20,000,000 new BDD nodes (the defaults); an endpoint over a limit is skipped and
# its probabilities count as 0 (the analysis lists the skipped endpoints).
set_SEU_BDD_limits -time 60000 -nodes 20000000
set_SEU_analysis_workers $seu_workers

perform_SEU_analysis -exhaustive -corner 0

# Save a copy of the displayed measurements.
log_output_to_file $out_dir/result.txt

# The SEU report: how the probabilities were obtained, the design metrics (design
# AcPP, average P, impact ratio), the distribution over the flip-flops, the hardening
# curve (design AcPP left after hardening the top 1%, 5%, 10% of the flip-flops) and
# the top flip-flops and endpoints.
report_SEU_analysis_measurements -top 20

# The most critical flip-flops: the request flags of the PCI initiator of the Wishbone
# slave unit (*_pci_initiator_if_posted_write_req_reg, *_del_write_req_reg), the write
# enable and the write pointers of the PCI target FIFOs (*_pciw_fifo_wenable_out_reg,
# *_pciw_fifo_ctrl_waddr_reg_*) and configuration_init_complete_reg reach many
# flip-flops.
report_SEU_top_flip_flops -all -csv $out_dir/seu_top_flip_flops.csv

# The endpoints corrupted the most (sum of p * P over the flip-flops that reach them).
report_SEU_top_endpoints -all -csv $out_dir/seu_top_endpoints.csv
close_log_output_file

# All the metrics: one row per flip-flop and per endpoint.
dump_SEU_analysis_metrics -sources $out_dir/seu_flip_flops.csv \
    -endpoints $out_dir/seu_endpoints.csv

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
# exit

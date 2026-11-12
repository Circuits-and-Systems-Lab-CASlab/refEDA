# SEU hardening of a large design with TMR: the ISPD 2012 pci_bridge32 (OpenCores PCI
# bridge, PCI target / initiator to Wishbone master / slave, 25,310 cells and 3,359
# flip-flops), placed with Innovus in ASAP7.
#   Step 1: SEU analysis of every flip-flop (as in seu_analysis.tcl): the
#           probability P that an SEU (bit flip) in a flip-flop reaches each endpoint,
#           and the ranking by criticality = p * AcPP (AcPP: the sum of P).
#   Step 2: iterative TMR hardening from the most critical flip-flop down, until half
#           of the design SEU exposure (design AcPP) is removed, then legalisation
#           and STA.

set flow seu-tmr

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

set out_dir [file normalize ../results/seu_tmr]

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

# Placement and timing before the hardening.
check_placement_is_legal
report_timing -longest -corner 0 -backannotate
report_area

# Step 1: SEU analysis.
# One SEU scenario per flip-flop output, SEU probability p = 1. The primary inputs and
# the flip-flop outputs are random with static probability 0.5.
inject_SEU -all -corner 0
set_static_probability -corner 0 -value 0.5 -startpoints

# BDD limits per endpoint (the defaults); an endpoint over a limit is skipped and its
# probabilities count as 0.
set_SEU_BDD_limits -time 60000 -nodes 20000000
set_SEU_analysis_workers $seu_workers

perform_SEU_analysis -exhaustive -corner 0

# The ranking used by the hardening flow.
report_SEU_top_flip_flops -top 10 -csv $out_dir/seu_ranking_before_tmr.csv

# Step 2: iterative TMR hardening.
eco_perform_SEU_TMR_hardening -target_reduction 0.5 -min_gain 0.0001 \
    -output_dir $out_dir -prefix $design -save_def none

# Save a copy of the displayed measurements.
log_output_to_file $out_dir/result.txt
report_SEU_hardening_flow -flip_flops
# The TMR protected flip-flops are listed after the unprotected ones.
report_SEU_top_flip_flops -top 10
report_timing -longest -corner 0 -backannotate
report_area
check_placement_is_legal
close_log_output_file

# All the metrics after the hardening.
dump_SEU_analysis_metrics -sources $out_dir/seu_flip_flops.csv \
    -endpoints $out_dir/seu_endpoints.csv

# Save the hardened netlist and placement.
save_verilog $out_dir/design.v
save_def -nets $out_dir/design.def

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
# exit

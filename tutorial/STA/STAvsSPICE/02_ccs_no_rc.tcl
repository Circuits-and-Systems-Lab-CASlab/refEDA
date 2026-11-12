# STA versus SPICE: CCS with no wire RC.

set flow sta-spice
set design bf_chain
set clock_port clk
set period_ps 1000
set fall_ps 500
set netlist {../../Test-Designs/STA-SPICE/bf_chain.v}
set placement {../../Test-Designs/STA-SPICE/bf_chain.def}
set routed_def {../../Test-Designs/STA-SPICE/bf_chain_route.def}
set spef {../../Test-Designs/STA-SPICE/bf_chain.spef}

# Resolve inputs relative to this script and select the output directory.
cd [file dirname [file normalize [info script]]]
set out_dir [file normalize ../../results/02_ccs_no_rc]

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
puts $f "PDK: ASAP7"
puts $f "Netlist: $netlist"
puts $f "Clock: $clock_port"
puts $f "Period: $period_ps ps"
close $f

# Load the matching 1x ASAP7 geometry and TT timing library.
load_lef {
    ../../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_R_1x_220121a.lef
}
load_lib [list [lsort [glob ../../PDK/ASAP7/asap7sc7p5t_28/LIB/CCS/*RVT_TT_ccs*.lib]]]

# Load the selected mapped netlist and its matching native 1x placement.
load_verilog $netlist
load_def $placement

# Timing inputs are in ps and loads in fF.
create_clock $clock_port -period $period_ps -waveform [list 0 $fall_ps]
set_input_delay 50 -clock $clock_port [all_inputs]
set_input_transition 20 -max [all_inputs]
set_output_delay 100 -clock $clock_port [all_outputs]
set_load 5 -max -pin_load [all_outputs]
set_timing_path_report_format 1
# A fresh native session starts without wire RC.
set_timing_model ccs
# Fast effort, as in case 05, so the two CCS cases differ only in their wire model.
set_ccs_effort fast

file mkdir $out_dir
# Record the STA report before running the path-based comparison.
report_timing -corner 0 -longest

# SPICE simulator
# Xyce must be on PATH. Switch with: python3 scripts/select_simulator.py spectre
set spice_simulator xyce
set spice_cells [file normalize ../../PDK/ASAP7/asap7sc7p5t_28/CDL/xAct3D_extracted/asap7sc7p5t_28_R_xyce.sp]
set spice_models [list \
    [file normalize ../../PDK/ASAP7/models/7nm_TT_xyce.pm] \
    [file normalize ../../PDK/ASAP7/asap7sc7p5t_28/CDL/xAct3D_extracted/asap7sc7p5t_28_R_xyce.sp]]
set spice_option {}
# End SPICE simulator

# Record the simulator used for these results.
set f [open $out_dir/info.txt a]
puts $f "Simulator: $spice_simulator"
close $f

# Sensitise two paths, simulate them in the selected simulator and export per-pin comparisons.
get_timing_paths -significant_digits 6 -corner 0 -longest \
    -mode exhaustive -true 2 -spice -VDD 0.7 -temp 25 \
    -setupsubcircuit $spice_cells \
    -powernet VDD -groundnet VSS \
    -include $spice_models {*}$spice_option \
    -output $out_dir/${design}.sp \
    -csv $out_dir/comparison.csv

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

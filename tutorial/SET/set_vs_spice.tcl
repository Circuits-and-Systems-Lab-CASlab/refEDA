# Glitch analysis versus SPICE: one particle strike, propagated by refEDA and simulated in Spectre.
# A single-event transient (SET) is a glitch caused by a particle strike. This script strikes one
# cell output, lets refEDA generate the glitch and propagate it through the downstream logic, then
# simulates the same circuit with the same glitch in Spectre and compares, pin by pin, the arrival
# of both glitch edges, their slews and the glitch width.
#
# The circuit is the 21-buffer chain from the STA-versus-SPICE exercise, so the glitch can be
# followed through every stage to the output. Set SET_PIN to strike another buffer output.
# Requires Spectre on PATH.

set flow sta-spice
set design bf_chain
set clock_port clk
set period_ps 1000
set fall_ps 500
set netlist {../Test-Designs/STA-SPICE/bf_chain.v}
set placement {../Test-Designs/STA-SPICE/bf_chain.def}
set routed_def {../Test-Designs/STA-SPICE/bf_chain_route.def}
set spef {../Test-Designs/STA-SPICE/bf_chain.spef}

# Resolve inputs relative to this script and select the output directory.
cd [file dirname [file normalize [info script]]]
set out_dir [file normalize ../results/set_vs_spice]

# Replace the previous outputs from this example.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "Design: $design"

# The struck cell output: a default for each supplied design, or SET_PIN.
set default_pins {bf_chain bf_chain/U1/Y}
if {[info exists ::env(SET_PIN)] && $::env(SET_PIN) ne ""} {
    set strike_pin $::env(SET_PIN)
} elseif {[dict exists $default_pins $design]} {
    set strike_pin [dict get $default_pins $design]
} else {
    error "No default strike pin for $design: set SET_PIN to a cell output, for example $design/U1/Y"
}
puts "Struck pin: $strike_pin"

# Record the design and the struck pin.
set f [open $out_dir/info.txt w]
puts $f "Flow: set-vs-spice"
puts $f "Design: $design"
puts $f "PDK: ASAP7"
puts $f "Netlist: $netlist"
puts $f "Struck pin: $strike_pin"
close $f

# Load the matching 1x ASAP7 geometry, the TT timing library, the netlist and its placement.
load_lef {
    ../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef
    ../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_R_1x_220121a.lef
}
load_lib [list [lsort [glob ../PDK/ASAP7/asap7sc7p5t_28/LIB/CCS/*RVT_TT_ccs*.lib]]]
load_verilog $netlist
load_def $placement

# CCS timing with estimated pi-model wire RC on M3. Timing inputs are in ps and loads in fF.
set_layer_rpersq M3 36.3251
set_layer_cpersqdist M3 1.53955E-04
set_layer_as_lowest_metal M3
set_timing_model ccs
set_timing_RC_mode pimodelRC
create_clock $clock_port -period $period_ps -waveform [list 0 $fall_ps]
set_input_delay 0 -clock $clock_port [all_inputs]
set_output_delay $period_ps -clock $clock_port [all_outputs]
set_load 5 -max -pin_load [all_outputs]

# Build the timing graph first: the static probabilities below need it.
report_timing -corner 0 -longest

# Probabilistic glitch analysis with timestamp-based propagation.
set_SET_analysis_mode 1
set_SET_glitch_propagation_mode 1
set_static_probability -corner 0 -value 0.5 -startpoints
annotate_static_probabilities -significant_digits 5

# A double-exponential current pulse: 80 fC, rise and fall time constants 47 ps and 50 ps, at 1 ns.
create_particle_profile -name strike -tdelay 1n -tau1 47p -tau2 50p -q 80f
create_SET_scenario $strike_pin -profile strike

# Generate the glitch at the struck pin, save its waveform, and propagate it.
file mkdir $out_dir/pwl
generate_SET_scenario_glitch -all -save_pwl $out_dir/pwl
propagate_SET_scenario_glitch -all
list_SET_scenarios

# Simulate the same glitch in Spectre and compare it pin by pin with refEDA.
set fp [open $out_dir/pwl/SET_0.pwl]
set pwl [read -nonewline $fp]
close $fp
compare_SET_scenario_propagation_against_spectre 0 \
    -setupsubcircuit [file normalize ../PDK/ASAP7/asap7sc7p5t_28/CDL/xAct3D_extracted/asap7sc7p5t_28_R.sp] \
    -include [list [file normalize ../PDK/ASAP7/models/7nm_TT.pm] \
                   [file normalize ../PDK/ASAP7/asap7sc7p5t_28/CDL/xAct3D_extracted/asap7sc7p5t_28_R.sp]] \
    -powernet VDD -groundnet VSS -corner 0 -pwl $pwl -includewires \
    -output $out_dir/SET_0.sp \
    -csv $out_dir/set_vs_spice.csv

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

# STA versus SPICE: one driver cell and its routed RC net, against Xyce or Spectre.
# Cases 01 to 05 compare whole paths and case 06 compares wires alone. This case takes one
# driver pin, its routed net from the SPEF and the receivers on that net, and compares the
# cell delay plus wire delay that STA calculates with a SPICE simulation of the same circuit.
#
# The driver is chosen automatically: the output pin that drives the SPEF net with the largest
# total capacitance. To pick another one, set DRIVER_PIN, for example
#     DRIVER_PIN=c1908/U286/Y ../refEDA -no_gui -f STA/STAvsSPICE/07_driver_wire_rc_vs_xyce.tcl

set flow sta-spice
set design bf_chain
set clock_port clk
set period_ps 1000
set fall_ps 500
set netlist {../../Test-Designs/STA-SPICE/bf_chain.v}
set placement {../../Test-Designs/STA-SPICE/bf_chain.def}
set routed_def {../../Test-Designs/STA-SPICE/bf_chain_route.def}
set spef {../../Test-Designs/STA-SPICE/bf_chain.spef}

# SPEF input availability
# End SPEF input availability

# Resolve inputs relative to this script and select the output directory.
cd [file dirname [file normalize [info script]]]
set out_dir [file normalize ../../results/07_driver_wire_rc]

# Replace the previous outputs from this example.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "Flow: $flow"
puts "Design: $design"

# Return the output pin driving the SPEF net with the largest total capacitance,
# as a gate pin name (design/instance/pin), and that capacitance in pF.
proc largest_spef_driver {spef design} {
    set f [open $spef]
    set names [dict create]
    set best ""
    set best_cap -1
    set in_net 0
    while {[gets $f line] >= 0} {
        if {[regexp {^\*D_NET\s+(\S+)\s+(\S+)} $line -> net cap]} {
            set in_net 1
            set net_cap $cap
            set driver ""
        } elseif {$in_net && [regexp {^\*I\s+(\S+)\s+O\M} $line -> pin]} {
            set driver $pin
        } elseif {$in_net && [string match {\*END*} $line]} {
            if {$driver ne "" && $net_cap > $best_cap} {
                set best $driver
                set best_cap $net_cap
            }
            set in_net 0
        } elseif {!$in_net && [regexp {^\*(\d+)\s+(\S+)$} $line -> id name]} {
            dict set names $id $name
        }
    }
    close $f
    if {$best eq ""} { error "No driven net found in $spef" }
    # Translate a name-map index such as *286:Y back to the instance name.
    regexp {^(.*):([^:]+)$} $best -> instance pin
    if {[regexp {^\*(\d+)$} $instance -> id] && [dict exists $names $id]} {
        set instance [dict get $names $id]
    }
    return [list $design/$instance/$pin $best_cap]
}

# Load the matching 1x ASAP7 geometry and TT timing library.
load_lef {
    ../../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_R_1x_220121a.lef
}
load_lib [list [lsort [glob ../../PDK/ASAP7/asap7sc7p5t_28/LIB/CCS/*RVT_TT_ccs*.lib]]]

# Load the selected mapped netlist and its routed layout.
load_verilog $netlist
load_def $routed_def

# Timing inputs are in ps. No output load is set: once SPEF is loaded, STA does not
# apply set_load, while the SPICE deck would include it.
create_clock $clock_port -period $period_ps -waveform [list 0 $fall_ps]
set_input_delay 50 -clock $clock_port [all_inputs]
set_input_transition 20 -max [all_inputs]
set_output_delay 100 -clock $clock_port [all_outputs]
set_timing_path_report_format 1
set_timing_model ccs
set_ccs_effort fast

# Load the routed interconnect parasitics from the supplied SPEF.
set_timing_RC_mode detailedRC
load_spef $spef
report_timing -corner 0 -longest

# Choose the driver pin.
if {[info exists ::env(DRIVER_PIN)] && $::env(DRIVER_PIN) ne ""} {
    set driver_pin $::env(DRIVER_PIN)
    set net_cap "not measured"
} else {
    lassign [largest_spef_driver $spef $design] driver_pin net_cap
}
puts "Driver pin: $driver_pin (net capacitance $net_cap pF)"

# Record the design and the chosen driver.
set f [open $out_dir/info.txt w]
puts $f "Flow: driver-wire-rc"
puts $f "Design: $design"
puts $f "PDK: ASAP7"
puts $f "Netlist: $netlist"
puts $f "Driver pin: $driver_pin"
puts $f "Net capacitance: $net_cap pF"
close $f

# SPICE simulator
# Xyce must be on PATH. Switch with: python3 scripts/select_simulator.py spectre
set spice_simulator xyce
set spice_cells [file normalize ../../PDK/ASAP7/asap7sc7p5t_28/CDL/xAct3D_extracted/asap7sc7p5t_28_R_xyce.sp]
set spice_models [list \
    [file normalize ../../PDK/ASAP7/models/7nm_TT_xyce.pm]]
set spice_option {}
# End SPICE simulator

# Record the simulator used for these results.
set f [open $out_dir/info.txt a]
puts $f "Simulator: $spice_simulator"
close $f

# Simulate the driver, its RC net and its receivers, and export the comparison. The command
# runs from the results folder: Spectre writes its measurement file to the current folder.
set here [pwd]
cd $out_dir
compare_delay_calculation_against_spice $driver_pin \
    -setupsubcircuit $spice_cells \
    -include $spice_models \
    -powernet VDD -groundnet VSS -corner 0 -VDD 0.7 \
    {*}$spice_option -includewires \
    -output $out_dir/${design}_driver.sp \
    -csv $out_dir/driver_wire_comparison.csv
cd $here
if {![file exists $out_dir/driver_wire_comparison.csv]} {
    error "No comparison was written: check that $spice_simulator ran (see $out_dir)"
}

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

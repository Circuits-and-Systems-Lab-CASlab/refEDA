# Wire RC delay and slew: compare the tool's AWE estimate with Xyce, net by net.

set flow wire-rc
cd [file dirname [file normalize [info script]]]

# Choose the design and the number of nets for one run:
#   WIRE_DESIGN=fpu WIRE_NETS=50 ../refEDA -no_gui -f <this script>
# Bundled designs: des, des3, fpu, mc_top, fanout_5, fanout_10, fanout_20, fanout_50.
set design des
set net_count 20
if {[info exists ::env(WIRE_DESIGN)]} { set design $::env(WIRE_DESIGN) }
if {[info exists ::env(WIRE_NETS)]} { set net_count $::env(WIRE_NETS) }

# Signoff-extracted ASAP7 parasitics and their matching netlist.
set spef ../../Test-Designs/Wire-RC/${design}.spef
set netlist ../../Test-Designs/Wire-RC/${design}.v
foreach input [list $spef $netlist] {
    if {![file readable $input]} { error "Cannot read $input; check WIRE_DESIGN" }
}

set out_dir [file normalize ../../results/wire_rc_${design}]
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "Flow: $flow"
puts "Design: $design"

set f [open $out_dir/info.txt w]
puts $f "Flow: $flow"
puts $f "Design: $design"
puts $f "PDK: ASAP7"
close $f

# These designs mix all four ASAP7 threshold-voltage families.
load_lef {
    ../../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_R_1x_220121a.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_L_1x_220121a.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_SL_1x_220121a.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_SRAM_1x_220121a.lef
}
load_lib [list [lsort [glob ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/*TT*.lib]]]
load_verilog $netlist
set_timing_model nldm
set_timing_RC_mode detailedRC
read_spef $spef

# Return the driver pins of the nets with the largest total wire capacitance.
proc largest_nets {spef count} {
    set handle [open $spef r]
    set top ""
    array set names {}
    set nets {}
    set inside_map 0
    set cap ""
    set driver ""
    set loads 0
    while {[gets $handle line] >= 0} {
        if {[regexp {^\*DESIGN \x22([^\x22]+)\x22} $line -> value]} { set top $value; continue }
        if {[string match {\*NAME_MAP*} $line]} { set inside_map 1; continue }
        if {$inside_map && [regexp {^\*([0-9]+) (\S+)} $line -> id name]} { set names($id) $name; continue }
        if {[regexp {^\*D_NET \S+ (\S+)} $line -> value]} {
            set inside_map 0
            if {$driver ne "" && $loads > 0} { lappend nets [list $cap $driver] }
            set cap $value; set driver ""; set loads 0
            continue
        }
        if {[regexp {^\*I \*([0-9]+):(\S+) (I|O)} $line -> id pin dir]} {
            if {$dir eq "O"} { set driver "$top/$names($id)/$pin" } else { incr loads }
        } elseif {[regexp {^\*P \S+ O} $line]} { incr loads }
    }
    if {$driver ne "" && $loads > 0} { lappend nets [list $cap $driver] }
    close $handle
    set drivers {}
    foreach net [lrange [lsort -real -decreasing -index 0 $nets] 0 [expr {$count - 1}]] {
        lappend drivers [lindex $net 1]
    }
    return $drivers
}
set gatepins [largest_nets $spef $net_count]
puts "Selected [llength $gatepins] nets with the largest wire capacitance."

# Drive each net with a step and a 50 ps ramp at the 0.7 V ASAP7 supply.
set waveforms {
    step     {0n 0 0.0001n 0.7 5n 0.7}
    ramp50ps {0n 0 0.05n   0.7 5n 0.7}
}

# Run AWE and Xyce on every net. Receiver pin capacitances stay out of both sides:
# -addpincapacitance adds them to AWE only, so the two would model different circuits.
foreach {name wave} $waveforms {
    log_output_to_file $out_dir/$name.log
    foreach pin $gatepins {
        puts "INFO: Waveform $name, Gatepin $pin"
        if {[catch { estimate_detailed_RC_model_delay_and_slew $pin $wave -longest -corner 0 -xyce } message]} {
            puts "WARNING: $pin ($name) failed: $message"
        }
    }
    close_log_output_file
}

# Collect every receiver measurement in one table. Delays and slews are in ns.
set csv [open $out_dir/summary.csv w]
puts $csv "waveform,driver,receiver,xyce_delay,awe_delay,delay_error_pct,xyce_slew,awe_slew,slew_error_pct"
set rows 0
foreach {name wave} $waveforms {
    set handle [open $out_dir/$name.log r]
    set driver ""
    while {[gets $handle line] >= 0} {
        set line [regsub -all {\x1b\x5b[0-9;]*m} $line ""]
        if {[regexp {SPEF Driver Gatepin: (\S+)} $line -> value]} { set driver $value }
        if {[regexp {Receiver: (\S+), Delay: (\S+), AWE Delay: (\S+)} $line -> rx xd ad]} { set row($rx) [list $xd $ad] }
        if {[regexp {Receiver: (\S+), Delay Error: ([^%]+)%} $line -> rx de]} { lappend row($rx) $de }
        if {[regexp {Receiver: (\S+), Slew: (\S+), AWE Slew: (\S+)} $line -> rx xs as]} { lappend row($rx) $xs $as }
        if {[regexp {Receiver: (\S+), Slew Error: ([^%]+)%} $line -> rx se]} {
            lappend row($rx) $se
            puts $csv [join [concat [list $name $driver $rx] $row($rx)] ,]
            unset row($rx)
            incr rows
        }
    }
    close $handle
}
close $csv
puts "Measured $rows receiver results in $out_dir/summary.csv"
if {$rows == 0} { error "No net was measured; check that Xyce is on PATH" }

set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

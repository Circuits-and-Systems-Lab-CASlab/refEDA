# RADHARD legalisation: separate the replicas of selected registers.

set flow radhard

# Resolve paths relative to this script.
cd [file dirname [file normalize [info script]]]
set pdk ASAP7

set design uart
set clock_port clk
set period_ps 2000
set fall_ps 1000

set out_dir [file normalize ../results/radhard_legalisation]

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

load_verilog ../Test-Designs/Synchronous/${design}.v
load_def ../Test-Designs/Synchronous/${design}.def

# Clock and I/O values use ps and fF.
set_timing_model nldm
create_clock $clock_port -name CLK -period $period_ps -waveform [list 0 $fall_ps]
set_input_delay 0 -clock CLK [all_inputs]
set_output_delay 0 -clock CLK [all_outputs]
set_input_transition 20 -max [all_inputs]
set_load 5 -max -pin_load [all_outputs]
report_timing -longest -corner 0 -backannotate
report_timing -shortest -corner 0 -backannotate

# Triplicate the first 32 registers in name order and record their RH groups.
set radhard_components [lrange [lsort [all_registers -cells]] 0 31]
set known_replicas [get_cells *tmr_replica_*]
set f [open $out_dir/groups.tsv w]
puts $f "group\tmember0\tmember1\tmember2\tmin_layout_um"
set group_index 0
foreach component $radhard_components {

    # Add two replicas and a majority voter for this register.
    eco_tmr_component $component

    # Find the replicas inserted by this call; do not assume their names.
    set replicas {}
    foreach cell [get_cells *tmr_replica_*] {
        if {[lsearch -exact $known_replicas $cell] < 0} {
            lappend replicas $cell
        }
    }
    if {[llength $replicas] != 2} {
        error "Expected two TMR replicas for $component"
    }

    # A 20 um spacing in the 4x layout represents 5 um at native scale.
    set known_replicas [concat $known_replicas $replicas]
    set group rh_$group_index
    create_rh_group -name $group \
        -members [concat [list $component] $replicas]
    set_rh_group_spacing -name $group -min 20

    # Record the exact group members for result inspection.
    puts $f [join [concat [list $group $component] $replicas [list 20]] "\t"]
    incr group_index
}
close $f

# Record spacing after insertion, before any generic legalisation.
save_def -nets $out_dir/before.def
puts "\n=== Before ==="
report_rh_group_spacing -all
report_RH_spacing_violators -min
report_area
puts "=== End before ===\n"

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/before.txt
report_rh_group_spacing -all
report_RH_spacing_violators -min
report_area
close_log_output_file

# Place the replica groups while enforcing their minimum spacing.
legalise_RH_components -order 0 -blockagesmethod 0

# Check spacing violations and ordinary placement legality.
puts "\n=== After ==="
report_rh_group_spacing -all
report_RH_spacing_violators -min
report_area
check_placement_is_legal
puts "=== End after ===\n"

# Save a copy of the displayed measurements for plotting.
log_output_to_file $out_dir/after.txt
report_rh_group_spacing -all
report_RH_spacing_violators -min
report_area
check_placement_is_legal
close_log_output_file

# Refresh setup/hold timing on the legalised circuit.
report_timing -longest -corner 0 -backannotate
report_timing -shortest -corner 0 -backannotate

# Export the modified circuit and its legal placement.
save_verilog $out_dir/design.v
save_def -nets $out_dir/design.def

# Mark the results as complete.
set f [open $out_dir/info.txt a]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
exit

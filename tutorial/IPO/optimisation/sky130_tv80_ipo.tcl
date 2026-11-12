# Optimise the setup timing of the placed TV80 using cell ECOs.

cd [file dirname [file normalize [info script]]]
set design tv80
set pdk SKY130
set out_dir [file normalize ../../results/sta_sky130_tv80_ipo]

# Replace this example's previous results.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "PDK: $pdk"

# Load SKY130 HD at the typical 1.80 V, 25 C corner.
load_lef {
    ../../PDK/SKY130/sky130_fd_sc_hd.tlef
    ../../PDK/SKY130/sky130_fd_sc_hd_merged.lef
}
load_lib ../../PDK/SKY130/sky130_fd_sc_hd__tt_025C_1v80.lib
load_def ../../Test-Designs/STA/TV80-SKY130/tv80.def -fillrows -forcecoordinates
set_timing_model nldm

# A 3 ns clock, expressed in ns for this library.
create_clock clk -name clk -period 3 -waveform {0 1.5}
set_input_delay 0 -clock clk [all_inputs]
set_output_delay 0 -clock clk [all_outputs]
set_static_probability -corner 0 -value 0.5 -all

# Retain the supplied layer RC estimates in native 1x geometry.
set_layer_as_lowest_metal met2
set_layer_rpersq met2 8.929e-01
set_layer_cpersqdist met2 1.36233E-04
set_layer_edgecapacitance met2 0
set_layer_nonLEFRC 1
set_timing_RC_mode pimodelRC

# Display the starting timing and area.
puts "\n=== Before timing optimisation ==="
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
report_area

# Resizing and buffering optimise timing with zero power/wirelength weights.
ipo_optimise -outputdir $out_dir \
    -timing_weight 1.0 -power_weight 0.0 -wirelength_weight 0.0 \
    -writechangelist 1

puts "\n=== After timing optimisation ==="
report_timing -corner 0 -longest -backannotate
report_global_timing -longest
report_area
check_placement_is_legal
save_verilog $out_dir/design.v
save_def -nets $out_dir/design.def
set f [open $out_dir/complete.txt w]
puts $f TUTORIAL_COMPLETE
close $f
puts TUTORIAL_COMPLETE
flush stdout
exit

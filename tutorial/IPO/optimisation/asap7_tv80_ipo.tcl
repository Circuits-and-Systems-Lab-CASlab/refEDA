# Optimise the setup timing of the placed TV80 using cell ECOs.

cd [file dirname [file normalize [info script]]]
set design tv80
set pdk ASAP7
set out_dir [file normalize ../../results/sta_asap7_tv80_ipo]

# Replace this example's previous results.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"
puts "PDK: $pdk"

# Load all four ASAP7 Vt families used by the supplied 1x TV80 DEF.
load_lef {
    ../../PDK/ASAP7/asap7sc7p5t_28/techlef_misc/asap7_tech_1x_201209.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_R_1x_220121a.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_L_1x_220121a.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_SL_1x_220121a.lef
    ../../PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_SRAM_1x_220121a.lef
}
load_lib [list [lsort [glob ../../PDK/ASAP7/asap7sc7p5t_28/LIB/NLDM/TT/*TT*.lib]]]
load_def ../../Test-Designs/STA/TV80-ASAP7/tv80.def -fillrows -forcecoordinates
set_timing_model nldm

# A 1.5 ns clock (1500 ps) creates setup violations for the optimisation.
create_clock clk -name clk -period 1500 -waveform {0 750}
set_input_delay 0 -clock clk [all_inputs]
set_output_delay 0 -clock clk [all_outputs]
set_static_probability -corner 0 -value 0.5 -all

# Retain the supplied layer RC estimates in native 1x geometry.
set_layer_as_lowest_metal M3
set_layer_rpersq M3 2.4222e+01
set_layer_cpersqdist M3 1.2918e-04
set_layer_edgecapacitance M3 0
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

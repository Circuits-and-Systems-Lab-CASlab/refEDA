# Place DMA directly in 3D, then legalise and refine the two tiers.

set script_dir [file dirname [file normalize [info script]]]
cd $script_dir
set out_dir [file normalize results/direct_3d_placement]

# Replace the previous results from this example.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"

set_maxthreads 12

# Load the DMA netlist and its matching placement geometry.
load_lef {inputs/tech.lef inputs/cells.lef}
load_verilog inputs/DMA_fast.v
set_specialpinnames {RN CK SI SE}

# Use the supplied 3D mode with two tiers separated by 1 um.
set_vertical_integration_mode 2
report_vertical_integration_mode
set_tiers_number 2
set_tiers_distance 1

# Total cell area is 140% of one tier's footprint.
initialise_floorplan -utilisation 140 -aspectratio 1
io_place

# Configure the filler-based global placer.
set_global_place_overlapmetricexit 0.65
set_global_place_fillers_initial_placement_strategy 0
set_global_place_filleremptyspaceratio 0.7
set_global_place_densitymapinflation 2
set_global_place_avgcellareaweights 1
set_global_place_replacefillersafterboost 1
set_global_place_targetmovecoremultiplier {0.01 0.01}
set_global_place_uppermoveboundcoremultiplier {0.15 0.15}
set_global_place_binnum {256 256}

# Run placement from the repository root, where the native helpers are located.
cd ../..

puts "\n=== 3D global placement ==="
global_place -solver 4 -gradient 3
report_HPWL
report_placement_HPWL_3D
report_cutsize_3D

# Legalise using a 10x10 density grid with a target of 0.7.
puts "\n=== Tier legalisation ==="
set_legalisation_displacementcostfunction 1
set_legalisation_density_bins_constraints -horizontal 10 -vertical 10 -target 0.7
legalise_components_3D -order 0 -blockagesmethod 1
report_HPWL
report_placement_HPWL_3D
report_cutsize_3D

# Refine I/O locations after legalisation.
puts "\n=== I/O refinement ==="
io_place_refinement
report_HPWL
report_placement_HPWL_3D
report_cutsize_3D

# Use the supplied detailed-placement grid and location extraction step.
puts "\n=== Detailed placement ==="
set_detail_place_dpmaxiterations 5
set_detail_place_dpcostimprovementterminalcondition 0.1
set_detail_place_dpoverlappingcomponentshandlingmethod 0
set_detail_place_dpcellpoolcomponentssortingmethod 1
set_detail_place_dpcriticalcomponentssortingmethod 0
set_detail_place_density_bins 1
set_detail_place_density_bins_constraints -horizontal 6 -vertical 6 -target 0.8
set_detail_place_dplocationsextractionstep 2

detail_place_3D -optmode 0 -approach 1 -effort medium
check_placement_is_legal
report_HPWL
report_placement_HPWL_3D
report_cutsize_3D

# Export each tier with its cell positions and net connections.
save_tiered_def -nets $out_dir/tier0.def $out_dir/tier1.def

cd $script_dir
puts TUTORIAL_COMPLETE
exit

# Place DMA, partition spatial bins, then refine placement per tier.

set script_dir [file dirname [file normalize [info script]]]
cd $script_dir
set out_dir [file normalize results/bin_partition_per_tier]

# Replace the previous results from this example.
file delete -force $out_dir
file mkdir $out_dir
set_tempoutputdirectory $out_dir
puts "Results: $out_dir"

set_maxthreads 12
set_global_place_useallcliqueedges 1

# Load the DMA netlist and its matching placement geometry.
load_lef {inputs/tech.lef inputs/cells.lef}
load_verilog inputs/DMA_fast.v
set_specialpinnames {RN CK SI SE}

# Preserve the supplied two-tier configuration (mode 1 is called 2.5D).
set_vertical_integration_mode 1
set_tiers_number 2
set_tiers_distance 1

# Total cell area is 140% of one tier's footprint: about 70% per balanced tier.
initialise_floorplan -utilisation 140 -aspectratio 1
io_place

# Configure the filler-based global placer.
set_global_place_fillers_initial_placement_strategy 0
set_global_place_filleremptyspaceratio 0.7
set_global_place_densitymapinflation 2
set_global_place_avgcellareaweights 1
set_global_place_replacefillersafterboost 1
set_global_place_targetmovecoremultiplier {0.01 0.01}
set_global_place_uppermoveboundcoremultiplier {0.15 0.15}

# Run placement from the repository root, where the native helpers are located.
cd ../..

# Form an initial placement before assigning cells to tiers.
puts "\n=== Initial global placement ==="
set_global_place_binnum {128 128}
global_place -solver 4 -gradient 3 -iterations 50

# Split the spatial bins into two area-balanced tiers.
puts "\n=== Bin-based partitioning ==="
set_partition_areabalance 0.5
set_partition_randombalancetype 0
bin_based_partition -binsx 20 -binsy 20

# Alternate placement work between tiers using the supplied iteration settings.
puts "\n=== Per-tier global placement ==="
set_global_place_3D_flow 1
set_global_place_binnum {64 64}
set_global_place_3D_flow_iterations -stepiteration 2 -iterations 50
set_global_place_overlapmetricexit 0.4
global_place -solver 4 -gradient 3 -iterations 10

# Finish global placement with the alternating flow disabled.
set_global_place_3D_flow 0
global_place -solver 4 -gradient 3
report_HPWL
report_placement_HPWL_3D
report_cutsize_3D

# Remove overlaps and align cells to placement rows within their tiers.
puts "\n=== Tier legalisation ==="
set_legalisation_displacementcostfunction 1
legalise_components_3D -order 0 -blockagesmethod 1
report_HPWL
report_placement_HPWL_3D
report_cutsize_3D

# Refine placement within the tiers using at most five detailed-placement iterations.
puts "\n=== Detailed placement ==="
set_detail_place_dpmaxiterations 5
set_detail_place_dpcostimprovementterminalcondition 0.1
set_detail_place_dpoverlappingcomponentshandlingmethod 0
set_detail_place_dpcellpoolcomponentssortingmethod 1
set_detail_place_dpcriticalcomponentssortingmethod 0
set_detail_place_dpacceptbadmoves 1
set_detail_place_density_bins 1
set_detail_place_density_bins_constraints -auto -target 0.8

detail_place_3D -optmode 0 -approach 1 -effort medium
report_HPWL
report_placement_HPWL_3D
report_cutsize_3D
check_placement_is_legal

# Export each tier with its cell positions and net connections.
save_tiered_def -nets $out_dir/tier0.def $out_dir/tier1.def

cd $script_dir
puts TUTORIAL_COMPLETE
exit

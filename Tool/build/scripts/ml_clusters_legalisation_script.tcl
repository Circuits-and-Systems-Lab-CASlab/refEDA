load_lef /home/sketopou/Documents/Qualcomm_Benchmarks/testcase-data/TC10/A926/ql20soc_r0hd_nn24_0.810v_tt_125c_cw_ccw_wfeol_wbeol-SITES.lef
load_verilog /home/sketopou/Documents/Qualcomm_Benchmarks/testcase-data/TC10/A926/a9ejsExecute.v

initialise_floorplan -utilisation 70 -aspectratio 1
io_place

### set multilevel parameters ###
set_mlareaboundtype 0
set_mlflatten 0

report_mlplace_parameters
extract_mlclusters
report_mlclusters_hierarchy_stats

global_mlplace -solver 2 -gradient 0 -iterations 50 -toplevelonly

### set legalisation parameters ###
set_legalisation_displacementweight 0.5

### set multi-level clusters legalisation parameters ###
set_legalisation_mlclustersorttype 0
set_legalisation_mlclustersallowedoverlap 1
set_legalisation_mlclustersallowedoverlapvalues {10 10}

legalise_mlclusters -order 0

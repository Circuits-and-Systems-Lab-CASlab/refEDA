# Two-tier placement in refEDA

These examples place the ISPD 2012 `DMA_fast` netlist across two tiers.
Partitioning assigns cells to tiers. Global placement determines approximate
X and Y locations, legalisation fits cells onto rows and sites, and detailed
placement refines their locations.

The three scripts adapt the supplied project examples using local inputs,
visible terminal reports, and one output folder per run.

| Tutorial script | Supplied example | Placement strategy |
|---|---|---|
| [`partition_first.tcl`](partition_first.tcl) | `3D_flow_Part_DMA_fast.tcl` | Partition the netlist, then place it in mode 1 (2.5D). |
| [`bin_partition_per_tier.tcl`](bin_partition_per_tier.tcl) | `3D_flow_BinPart_GP_per_tier_DMA_fast.tcl` | Place first, partition spatial bins, and refine placement per tier in mode 1 (2.5D). |
| [`direct_3d_placement.tcl`](direct_3d_placement.tcl) | `3D_flow_3DLG2_DMA_fast.tcl` | Run global placement in mode 2 (3D), then legalise and detail-place the tiers. |

## Run the examples

From `tutorial/`, use the 3D build of refEDA, `../Tool/build_3D/refEDA`.
Each command starts a fresh process and prints the reports to the terminal.

```sh
../Tool/build_3D/refEDA -no_gui -f 3D/partition_first.tcl
../Tool/build_3D/refEDA -no_gui -f 3D/bin_partition_per_tier.tcl
../Tool/build_3D/refEDA -no_gui -f 3D/direct_3d_placement.tcl
```

All three scripts set two tiers and a 1 µm distance between adjacent tiers
before creating the floorplan. The floorplan has aspect ratio 1 and 140%
aggregate utilisation. This is total cell area divided by one tier's
footprint. An even area split gives approximately 70% cell utilisation on
each tier.

## Partition before placement

`partition_first.tcl` assigns tiers from netlist connectivity.

1. Run `mlpartition -partitions 2 -effort high` to split the netlist into two groups.
2. Run global placement with a 512 × 512 placement grid and overlap exit threshold 0.4.
3. Run `legalise_components_3D` to align cells to sites and resolve overlaps within each tier.
4. Run `io_place_refinement` to adjust the I/O locations after legalisation.
5. Run detailed placement with an automatic density grid, target 0.8, and at most five iterations. Check legality and export both tiers.

The script retains the supplied 3D-flow iteration settings. The alternating
per-tier flow is enabled explicitly in the next example.

## Place first, then partition by location

`bin_partition_per_tier.tcl` uses an initial placement to inform the tier assignment.

1. Run global placement with a 128 × 128 grid and an iteration limit of 50.
2. Run `bin_based_partition -binsx 20 -binsy 20`, targeting an equal split of cell area.
3. Enable `set_global_place_3D_flow 1` and use a 64 × 64 placement grid. Set two placement iterations per step, a flow limit of 50, and overlap exit threshold 0.4. Call `global_place` with `-iterations 10`, as supplied.
4. Disable the alternating flow and run a final global placement pass.
5. Legalise and detail-place the cells using an automatic density grid with target 0.8 and at most five detailed-placement iterations. Check legality and export both tiers.

The 20 × 20 grid is used for partitioning. The global and detailed placers
have their own grids.

## Place directly in 3D

`direct_3d_placement.tcl` uses the supplied mode-2 flow.

1. Run global placement with a 256 × 256 placement grid and overlap exit threshold 0.65.
2. Set legalisation density constraints to a 10 × 10 grid with target 0.7, then run `legalise_components_3D`.
3. Refine the I/O locations.
4. Set detailed-placement density constraints to a 6 × 6 grid with target 0.8, location extraction step 2, and at most five iterations. Run `detail_place_3D`, check legality, and export both tiers.

The supplied script proceeds directly from global placement to 3D
legalisation. Its settings differ from those of the two mode-1 examples.

## Read the results

Each example prints planar HPWL, 3D HPWL, and cutsize after global placement,
legalisation, and detailed placement. The partition-first and direct-3D
examples also report them after I/O refinement.

| Command | What to read |
|---|---|
| `report_HPWL` | Planar half-perimeter wirelength, estimated from the X and Y span of connections. |
| `report_placement_HPWL_3D` | The wirelength estimate with vertical tier separation included. |
| `report_cutsize_3D` | Number of nets that span tiers. |

Read the final `check_placement_is_legal` report alongside the metrics.
`TUTORIAL_COMPLETE` marks the end of the script. If HPWL becomes `inf` or
`nan`, the wirelength measurement has failed. Identify the first affected
stage before interpreting later reports.

Each run replaces its own folder under `tutorial/3D/results/`, named after
the script. `tier0.def` and `tier1.def` contain the placement and net
connections for each tier. The results directory is ignored by Git.

## Inputs

| File | Contents |
|---|---|
| `inputs/DMA_fast.v` | Mapped DMA netlist with 25,301 cells. |
| `inputs/tech.lef` | Technology geometry and placement site. |
| `inputs/cells.lef` | Cell sizes, pin geometry, and obstructions. |
| `inputs/ISPD2012_README` | Original benchmark notes and attribution. |

The input files were copied unchanged from the supplied design library.
The [ISPD 2012 benchmark notes](inputs/ISPD2012_README) describe the circuit.
Original file notices are retained.

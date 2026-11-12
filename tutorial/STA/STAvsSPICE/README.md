# STA–SPICE

From `tutorial/`, select a design and run the Tcl directly:

```bash
python3 scripts/select_design.py --sta-spice counter
../refEDA -no_gui -f STA/STAvsSPICE/01_nldm_no_rc.tcl
python3 scripts/plot_results.py
```

Xyce must be on `PATH`; see the tutorial README for the setup. Cases 01–04 support the selectable
ASAP7 designs. Cases 05 and 07 additionally require that design's matching native 1× routed
DEF/SPEF; these are supplied for `bf_chain`, `c499` and `c1908`. Use
`python3 scripts/select_design.py bf_chain` (or `c499`, `c1908`) to configure these cases
without changing the placement and reliability exercises. On `c1908`, case 05 takes longer
than 15 minutes in the path search; use `c499` or `bf_chain` for it.

| Script | Compares with Xyce |
|---|---|
| `01` to `05` | Two sensitised paths under five timing and wire models |
| `06_wire_rc_awe_vs_xyce.tcl` | Wire delay and slew alone, net by net (`WIRE_DESIGN`, `WIRE_NETS`) |
| `07_driver_wire_rc_vs_xyce.tcl` | One driver, its routed net and its receivers (`DRIVER_PIN`) |

The glitch-propagation comparison against Spectre is `SET/set_vs_spice.tcl`.

To run cases 01–05 and 07 with Spectre instead of Xyce: `python3 scripts/select_simulator.py spectre`
(back with `--default`). Case 06 supports Xyce only.

The normal `select_design.py <synchronous design>` command updates both groups.
`--sta-spice` limits the change to these six scripts. The selector prepares a 1×
placement for the ordinary 4× synchronous inputs. Each Tcl contains its own libraries,
constraints and model settings.

Outputs retain the fixed folders under `results/`, such as `results/01_nldm_no_rc/`.
The plotter labels the saved design and numbered paths, including general logic and
register outputs. Selecting another design does not replace old results until a case
runs again. Rerun all desired cases for a consistent design comparison.

See [the tutorial README](../../README.md#sta-versus-spice) for the complete procedure,
model settings, inputs, result interpretation and limitations.

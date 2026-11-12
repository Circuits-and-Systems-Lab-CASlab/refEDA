#!/usr/bin/env python3
"""Select the SPICE simulator (Xyce or Spectre) of the STA-versus-SPICE scripts, or restore the default.

Each switchable script has one block between "# SPICE simulator" and "# End SPICE simulator"
that sets the simulator, the cell subcircuits, the transistor models and the command option.
This script rewrites only those blocks. Scripts that support a single simulator are listed
with --list and left unchanged.
"""

import argparse
import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
XYCE = "xyce"
SPECTRE = "spectre"
DEFAULT = XYCE

CDL = "../../PDK/ASAP7/asap7sc7p5t_28/CDL/xAct3D_extracted"
MODELS = "../../PDK/ASAP7/models"
CELLS_SPICE = f"{CDL}/asap7sc7p5t_28_R.sp"
CELLS_XYCE = f"{CDL}/asap7sc7p5t_28_R_xyce.sp"

# The Xyce settings of each script are the ones it was validated with; Spectre reads the
# HSPICE-format models and the cell CDL, both through -include.
SCRIPTS = {
    "STA/STAvsSPICE/01_nldm_no_rc.tcl": {"cells": CELLS_SPICE, "models": [f"{MODELS}/7nm_TT_xyce.pm", CELLS_XYCE]},
    "STA/STAvsSPICE/02_ccs_no_rc.tcl": {"cells": CELLS_XYCE, "models": [f"{MODELS}/7nm_TT_xyce.pm", CELLS_XYCE]},
    "STA/STAvsSPICE/03_nldm_lumped_rc.tcl": {"cells": CELLS_SPICE, "models": [f"{MODELS}/7nm_TT_xyce.pm", CELLS_XYCE]},
    "STA/STAvsSPICE/04_nldm_pi_rc.tcl": {"cells": CELLS_SPICE, "models": [f"{MODELS}/7nm_TT_xyce.pm", CELLS_XYCE]},
    "STA/STAvsSPICE/05_ccs_spef_rc.tcl": {"cells": CELLS_SPICE, "models": [f"{MODELS}/7nm_TT_xyce.pm", CELLS_XYCE]},
    "STA/STAvsSPICE/07_driver_wire_rc_vs_xyce.tcl": {"cells": CELLS_XYCE, "models": [f"{MODELS}/7nm_TT_xyce.pm"]},
}
SPECTRE_SETTINGS = {"cells": CELLS_SPICE, "models": [f"{MODELS}/7nm_TT.pm", CELLS_SPICE]}
# compare_delay_calculation_against_spice already includes the -setupsubcircuit file in its
# deck, so script 07 passes only the transistor models (a second copy of the cells stops Spectre).
SPECTRE_OVERRIDES = {
    "STA/STAvsSPICE/07_driver_wire_rc_vs_xyce.tcl": {"cells": CELLS_SPICE, "models": [f"{MODELS}/7nm_TT.pm"]},
}

# Scripts that support one simulator only, for --list.
FIXED = {
    "STA/STAvsSPICE/06_wire_rc_awe_vs_xyce.tcl": "Xyce only: estimate_detailed_RC_model_delay_and_slew has no Spectre option",
    "SET/set_vs_spice.tcl": "Spectre only: compare_SET_scenario_propagation_against_spectre",
    "SET/set_spectre_bias.tcl": "Spectre only: SPECTRE_TRANSISTOR glitch generation",
}

BLOCK = re.compile(r"^# SPICE simulator\n.*?^# End SPICE simulator$", re.M | re.S)
CURRENT = re.compile(r"^set spice_simulator (\w+)$", re.M)


def block(simulator, settings):
    """The simulator block of one script."""
    other = SPECTRE if simulator == XYCE else XYCE
    models = " \\\n".join(f"    [file normalize {m}]" for m in settings["models"])
    option = "-spectre" if simulator == SPECTRE else "{}"
    return (f"# SPICE simulator\n"
            f"# {'Xyce' if simulator == XYCE else 'Spectre'} must be on PATH. "
            f"Switch with: python3 scripts/select_simulator.py {other}\n"
            f"set spice_simulator {simulator}\n"
            f"set spice_cells [file normalize {settings['cells']}]\n"
            f"set spice_models [list \\\n{models}]\n"
            f"set spice_option {option}\n"
            f"# End SPICE simulator")


def install(text, name):
    """One-time conversion of a script from fixed Xyce settings to the simulator block."""
    if BLOCK.search(text):
        return text
    settings = SCRIPTS[name]
    record = ('\n# Record the simulator used for these results.\n'
              'set f [open $out_dir/info.txt a]\nputs $f "Simulator: $spice_simulator"\nclose $f\n')
    if name.endswith("07_driver_wire_rc_vs_xyce.tcl"):
        old_call = ("# Simulate the driver, its RC net and its receivers in Xyce, and export the comparison.\n"
                    "compare_delay_calculation_against_spice $driver_pin \\\n"
                    f"    -setupsubcircuit [file normalize {CELLS_XYCE}] \\\n"
                    f"    -include [list [file normalize {MODELS}/7nm_TT_xyce.pm]] \\\n"
                    "    -powernet VDD -groundnet VSS -corner 0 -VDD 0.7 \\\n"
                    "    -xyce -includewires \\\n")
        new_call = (block(XYCE, settings) + "\n" + record + "\n"
                    "# Simulate the driver, its RC net and its receivers, and export the comparison.\n"
                    "compare_delay_calculation_against_spice $driver_pin \\\n"
                    "    -setupsubcircuit $spice_cells \\\n"
                    "    -include $spice_models \\\n"
                    "    -powernet VDD -groundnet VSS -corner 0 -VDD 0.7 \\\n"
                    "    {*}$spice_option -includewires \\\n")
        replacements = [
            (old_call, new_call),
            ("# STA versus SPICE: one driver cell and its routed RC net, against Xyce.",
             "# STA versus SPICE: one driver cell and its routed RC net, against Xyce or Spectre."),
            ("cell delay plus wire delay that STA calculates with an Xyce simulation of the same circuit.",
             "cell delay plus wire delay that STA calculates with a SPICE simulation of the same circuit."),
        ]
    else:
        old_models = ("# Xyce-format transistor models and cell subcircuits for the SPICE decks.\n"
                      "set includefiles [list \\\n"
                      f"    [file normalize {MODELS}/7nm_TT_xyce.pm] \\\n"
                      f"    [file normalize {CELLS_XYCE}]]\n")
        replacements = [
            (old_models, block(XYCE, settings) + "\n" + record),
            ("# Sensitise two paths, simulate them in Xyce and export per-pin comparisons.",
             "# Sensitise two paths, simulate them in the selected simulator and export per-pin comparisons."),
            (f"    -setupsubcircuit {settings['cells']} \\\n", "    -setupsubcircuit $spice_cells \\\n"),
            ("    -include $includefiles \\\n", "    -include $spice_models {*}$spice_option \\\n"),
        ]
    for old, new in replacements:
        if text.count(old) != 1:
            raise ValueError(f"{name}: expected one '{old.splitlines()[0][:60]}'")
        text = text.replace(old, new, 1)
    return text


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("simulator", nargs="?", choices=(XYCE, SPECTRE))
    parser.add_argument("--default", action="store_true", help=f"Return to the default simulator, {DEFAULT}")
    parser.add_argument("--list", action="store_true", help="Show the simulator of every SPICE script")
    parser.add_argument("--install", action="store_true", help=argparse.SUPPRESS)
    args = parser.parse_args()
    if args.install:
        for name in SCRIPTS:
            path = ROOT / name
            path.write_text(install(path.read_text(), name))
        print(f"Installed the simulator block in {len(SCRIPTS)} scripts.")
        return
    if args.list:
        for name in SCRIPTS:
            found = CURRENT.search((ROOT / name).read_text())
            print(f"{name:<48} {found[1] if found else 'no simulator block'}")
        for name, note in FIXED.items():
            print(f"{name:<48} {note}")
        return
    if args.default and args.simulator:
        parser.error("--default takes no simulator")
    simulator = DEFAULT if args.default else args.simulator
    if not simulator:
        parser.error(f"Specify xyce, spectre or --default (the default is {DEFAULT})")
    updates = {}
    for name, settings in SCRIPTS.items():
        path = ROOT / name
        text = path.read_text()
        if len(BLOCK.findall(text)) != 1:
            raise SystemExit(f"{name}: missing its '# SPICE simulator' block")
        chosen = settings if simulator == XYCE else SPECTRE_OVERRIDES.get(name, SPECTRE_SETTINGS)
        updates[path] = BLOCK.sub(lambda _: block(simulator, chosen), text)
    for path, text in updates.items():
        path.write_text(text)
    print(f"Set {len(updates)} STA-versus-SPICE scripts to {simulator}. "
          "Case 06 stays on Xyce; set_vs_spice.tcl and set_spectre_bias.tcl use Spectre.")
    executable = {XYCE: "Xyce", SPECTRE: "spectre"}[simulator]
    if shutil.which(executable) is None:
        print(f"Warning: {executable} is not on PATH; add it before running these scripts.")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Select the PDK used by the placement, reliability, ASTA and AIPO exercises, or restore the default."""

import argparse
from decimal import Decimal, InvalidOperation
import re
from pathlib import Path

from select_design import SCRIPTS as SYNC_SCRIPTS

ROOT = Path(__file__).resolve().parent.parent
ASAP7 = "ASAP7"
IHP = "IHP-Open-PDK"
ASYNC_SCRIPTS = (
    "Asynchronous/ASTA/ring_enable.tcl",
    "Asynchronous/ASTA/click_scan.tcl",
    "Asynchronous/ASTA/click_control_ring.tcl",
    "Asynchronous/ASTA/click_bundled_data.tcl",
    "Asynchronous/ASTA/click_datapath_fanout.tcl",
    "Asynchronous/AIPO/optimise_placed_click_ring.tcl",
    "Asynchronous/AIPO/aipo_ring_enable.tcl",
    "Asynchronous/AIPO/optimise_placed_mr0.tcl",
    "Asynchronous/AIPO/optimise_placed_click_three_stage.tcl",
    "Asynchronous/AIPO/optimise_placed_pausible_clock.tcl",
    "Asynchronous/AIPO/optimise_placed_cla_adder.tcl",
    "Asynchronous/AIPO/optimise_placed_alu_pipeline.tcl",
    "Asynchronous/AIPO/optimise_placed_bundled_data_token.tcl",
    "Asynchronous/AIPO/optimise_placed_send_controller.tcl",
)
SETTINGS = ("design", "clock_port", "period_ps", "fall_ps")
IHP_SETTINGS = ("ihp_open_pdk_counter4", "clk", "2000", "1000")
PDK_LINE = re.compile(r"^set pdk (ASAP7|IHP-Open-PDK)$", re.M)
LIBRARIES = re.compile(r"^# PDK libraries\n.*?^# End PDK libraries$", re.M | re.S)
ASAP7_SETTINGS = re.compile(r"^# ASAP7 settings: (.+)\n", re.M)

TIMING = (
    ("-period $period_ps -waveform [list 0 $fall_ps]",
     "-period [expr {$period_ps / 1000.0}] -waveform [list 0 [expr {$fall_ps / 1000.0}]]"),
    ("(ps, fF)", "(ns, pF)"),
    ("(fF)", "(pF)"),
    ("# Clock and I/O values use ps and fF.", "# Clock and I/O values use ns and pF."),
)
AIPO_RC = (
    ("set_layer_rpersq M3 36.3251", "set_layer_rpersq Metal3 0.103"),
    ("set_layer_cpersqdist M3 1.53955E-04", "set_layer_cpersqdist Metal3 1.20E-05"),
    ("set_layer_as_lowest_metal M3", "set_layer_as_lowest_metal Metal3"),
    ("# Use the tutorial's estimated M3 wire-RC settings.", "# Use Metal3 resistance and capacitance from the SG13G2 technology LEF."),
    ("# Use the tutorial's M3 wire-RC estimate for the placed design.", "# Use the SG13G2 Metal3 wire-RC estimate for the placed design."),
)
MITIGATION = (
    ("# Resize up to 32 small NAND2 instances in name order to NAND2x2.",
     "# Resize up to 32 small AOI21 instances from drive strength 1 to 2."),
    ("NAND2xp33_ASAP7_75t_R NAND2xp5_ASAP7_75t_R", "sg13g2_a21oi_1"),
    ("NAND2x2_ASAP7_75t_R", "sg13g2_a21oi_2"),
    (" NAND2 cells.", " AOI21 cells."),
)
RADHARD = (
    ("# A 20 um spacing in the 4x layout represents 5 um at native scale.",
     "# Enforce 5 um spacing in the 1x layout."),
    ("set_rh_group_spacing -name $group -min 20", "set_rh_group_spacing -name $group -min 5"),
    ("[list 20]", "[list 5]"),
    ("# Refresh setup/hold timing on the legalised circuit.\n"
     "report_timing -longest -corner 0 -backannotate\n"
     "report_timing -shortest -corner 0 -backannotate\n\n",
     "# The spacing and legality reports are the checks for this example.\n\n"),
)


def libraries(name, pdk):
    up = "../../" if name.startswith("Asynchronous/") else "../"
    if pdk == IHP:
        return f"""# PDK libraries
load_lef {{
    {up}PDK/IHP-Open-PDK/sg13g2_tech.lef
    {up}PDK/IHP-Open-PDK/sg13g2_stdcell.lef
}}
set_lefsitename CoreSite
load_lib {up}PDK/IHP-Open-PDK/sg13g2_stdcell_typ_1p20V_25C.lib
# End PDK libraries"""

    base = f"{up}PDK/ASAP7/asap7sc7p5t_28"
    synchronous = name in SYNC_SCRIPTS
    tech = "asap7_tech_4x_201209.lef" if synchronous else "asap7_tech_1x_201209.lef"
    cells = ("scaled/asap7sc7p5t_28_R_4x_220121a.lef" if synchronous
             else "asap7sc7p5t_28_R_1x_220121a.lef")
    corners = [
        "INVBUF_RVT_TT_nldm_220122",
        "SIMPLE_RVT_TT_nldm_211120",
        "SEQ_RVT_TT_nldm_220123",
    ]
    if name == "Asynchronous/AIPO/optimise_placed_mr0.tcl":
        corners.remove("SEQ_RVT_TT_nldm_220123")
    if synchronous or (name.startswith("Asynchronous/AIPO/optimise_placed_") and name != "Asynchronous/AIPO/optimise_placed_click_ring.tcl"):
        corners[:0] = ["AO_RVT_TT_nldm_211120", "OA_RVT_TT_nldm_211120"]
    liberty = "\n".join(f"    {base}/LIB/NLDM/asap7sc7p5t_{corner}.lib" for corner in corners)
    return f"""# PDK libraries
load_lef {{
    {base}/techlef_misc/{tech}
    {base}/LEF/{cells}
}}
load_lib {{{{
{liberty}
}}}}
# End PDK libraries"""


def swap(text, pairs, to_ihp):
    for asap, ihp in pairs:
        old, new = (asap, ihp) if to_ihp else (ihp, asap)
        text = text.replace(old, new)
    return text



def convert_units(text, to_ihp):
    factor = Decimal("0.001") if to_ihp else Decimal("1000")
    commands = re.compile(
        r"(?m)^([ \t]*(?:set_input_delay|set_output_delay|set_input_transition|"
        r"set_output_transition|set_load|set_clock_transition|"
        r"set_clock_uncertainty|set_clock_latency))([ \t]+)([^\n]+)$"
    )
    number = re.compile(r"[-+]?(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][-+]?\d+)?")

    def convert(match):
        command, spacing, arguments = match.groups()
        option_value = False
        for token in re.finditer(r"\S+", arguments):
            if option_value:
                option_value = False
                paired = {"[": "]", "{": "}", '"': '"'}
                if token[0][0] in paired and not token[0].endswith(paired[token[0][0]]):
                    raise ValueError(f"Use a single-word option value in {command.strip()} before selecting a PDK")
                continue
            if token[0] in {"-clock", "-reference_pin", "-comment", "-library"}:
                option_value = True
                continue
            value = token[0]
            wrapper = ("", "")
            if (value.startswith("{") and value.endswith("}")) or (
                value.startswith('"') and value.endswith('"')
            ):
                wrapper = (value[0], value[-1])
                value = value[1:-1]
            if number.fullmatch(value):
                try:
                    scaled = Decimal(value) * factor
                except InvalidOperation as exc:
                    raise ValueError(f"Invalid constraint in {command}: {value}") from exc
                if not scaled.is_finite():
                    raise ValueError(f"Nonfinite constraint in {command}")
                result = format(scaled, "f")
                if "." in result:
                    result = result.rstrip("0").rstrip(".")
                replacement = wrapper[0] + result + wrapper[1]
                return command + spacing + arguments[:token.start()] + replacement + arguments[token.end():]
            if token[0].startswith(("[", "{", '"')) and not wrapper[0]:
                break
        raise ValueError(f"Use a literal numeric value in {command.strip()} before selecting a PDK")

    return commands.sub(convert, text)


def switch_design(text, name, to_ihp):
    if to_ihp:
        settings = []
        for key in SETTINGS:
            match = re.search(rf"^set {key} (\S+)$", text, re.M)
            if not match:
                raise ValueError(f"Missing {key} in {name}")
            settings.append(match[1])
        text = PDK_LINE.sub(lambda m: m[0] + "\n# ASAP7 settings: " + " ".join(settings), text)
        settings = IHP_SETTINGS
    else:
        saved = ASAP7_SETTINGS.search(text)
        if not saved or len(saved[1].split()) != len(SETTINGS):
            raise ValueError(f"Missing saved ASAP7 settings in {name}")
        settings = saved[1].split()
        text = ASAP7_SETTINGS.sub("", text)

    for key, value in zip(SETTINGS, settings):
        text = re.sub(rf"^set {key} \S+$", lambda _: f"set {key} {value}", text, flags=re.M)
    return swap(text, (("../Test-Designs/Synchronous/${design}",
                        "../Test-Designs/IHP-Open-PDK/counter4"),), to_ihp)


def rewrite(name, text, pdk):
    matches = PDK_LINE.findall(text)
    if len(matches) != 1 or len(LIBRARIES.findall(text)) != 1:
        raise ValueError(f"Expected one PDK and library block in {name}")
    if matches[0] == pdk:
        return text

    to_ihp = pdk == IHP
    text = LIBRARIES.sub(lambda _: libraries(name, pdk), text)
    text = convert_units(text, to_ihp)
    text = swap(text, TIMING, to_ihp)
    if name in SYNC_SCRIPTS:
        text = switch_design(text, name, to_ihp)
    elif to_ihp:
        text, count = re.subn(r"^load_verilog ../../Test-Designs/Asynchronous/(\w+)_asap7\.v$",
                              r"load_verilog ../../Test-Designs/IHP-Open-PDK/\1.v", text, flags=re.M)
        if count != 1:
            raise ValueError(f"Missing ASAP7 netlist in {name}")
    else:
        text, count = re.subn(r"^load_verilog ../../Test-Designs/IHP-Open-PDK/(\w+)\.v$",
                              r"load_verilog ../../Test-Designs/Asynchronous/\1_asap7.v", text, flags=re.M)
        if count != 1:
            raise ValueError(f"Missing IHP-Open-PDK netlist in {name}")

    if name == "SET/set_mitigation.tcl":
        text = swap(text, MITIGATION, to_ihp)
    if name.startswith("Radhard/"):
        text = swap(text, RADHARD, to_ihp)
    if name.startswith("Asynchronous/AIPO/"):
        text = swap(text, AIPO_RC, to_ihp)

    return PDK_LINE.sub(f"set pdk {pdk}", text)


def check_inputs(path, text):
    design = re.search(r"^set design (\S+)$", text, re.M)
    inputs = re.findall(r"(?:\.\./)+(?:PDK|Test-Designs)/[^\s}]+(?:\.(?:lef|lib|v|def))", text)
    for name in inputs:
        if "${design}" in name:
            name = name.replace("${design}", design[1])
        if not (path.parent / name).is_file():
            raise ValueError(f"Missing input for {path.name}: {name}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("pdk", nargs="?", choices=(ASAP7, IHP))
    parser.add_argument("--default", action="store_true", help=f"Return to the default PDK, {ASAP7}")
    args = parser.parse_args()
    if args.default == bool(args.pdk):
        parser.error(f"Specify a PDK or --default (the default is {ASAP7})")
    if args.default:
        args.pdk = ASAP7
    updates = {}
    try:
        for name in (*SYNC_SCRIPTS, *ASYNC_SCRIPTS):
            path = ROOT / name
            original = path.read_text()
            updated = rewrite(name, original, args.pdk)
            check_inputs(path, updated)
            if updated != original:
                updates[path] = updated
        for path, updated in updates.items():
            path.write_text(updated)
    except (OSError, ValueError) as exc:
        parser.error(str(exc))
    print(f"Selected {args.pdk}. Updated {len(updates)} Tcl scripts.")


if __name__ == "__main__":
    main()

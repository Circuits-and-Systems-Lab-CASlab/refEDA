"""Extract the SET charge collector lengths of the library cells from SPICE / CDL cell netlist.

The collector length l of a library cell is the in-plane length of the drain diffusions connected to its
output pins, used by the 2D diffusion-collection model (Autran et al., Appl. Sci. 2026, 16, 5551, eqs. 44-45)
of the charge diffusion factor of the SEMT scenario drivers. It is computed separately for the NMOS
(collects the negative SET pulses) and the PMOS (collects the positive SET pulses) transistors:
  --mode width          l = sum of the widths w * m of the transistors with a diffusion on an output (default)
  --mode halfperimeter  l = sum of half the perimeters (pd or ps) * m of these diffusions
A cell with several outputs gets the maximum over its outputs. Lengths are written in um, multiplied by
--scale: they must be in the layout units of the LEF loaded in the tool, e.g. --scale 4 for the 4x scaled
ASAP7 LEF. A CDL without drain perimeters (ASAP7) supports --mode width only.

The output is a TCL script for the tool, one set_libcell_SET_collector_lengths command per library cell:
  python3 extract_SET_collector_lengths.py <cells.sp|cells.cdl> <out.tcl> [--lef <cells.lef>] [--mode width|halfperimeter] [--scale <factor>]
The output pins are read from the LEF (DIRECTION OUTPUT); without --lef, an output is a non supply port that
is connected to a transistor diffusion and to no transistor gate, which misses pass gate designs.
"""

import argparse
import re
import sys
from pathlib import Path

# SPICE unit suffixes #
UNIT_SCALES = {"f": 1e-15, "p": 1e-12, "n": 1e-9, "u": 1e-6, "m": 1e-3, "k": 1e3, "meg": 1e6, "g": 1e9}

# node name prefix of the extracted parasitic sub-nodes, e.g. \1\:Q is a sub-node of net Q #
SUBNODE_PREFIX = re.compile(r"^\\\d+\\:")


# convert a SPICE value with an optional unit suffix (880.00n, 4.42u, 8.8e-07) to a float #
def parse_spice_value(text):
    match = re.fullmatch(r"([-+]?\d*\.?\d+(?:[eE][-+]?\d+)?)(meg|[fpnumkg])?", text.strip().lower())
    if match is None:
        raise ValueError(f"invalid SPICE value {text}")
    scale = 1.0
    if match.group(2) is not None:
        scale = UNIT_SCALES[match.group(2)]
    return float(match.group(1)) * scale


# net of a netlist node: the extracted sub-nodes \k\:NET belong to net NET #
def node_net(node):
    return SUBNODE_PREFIX.sub("", node)


# read the netlist as logical lines: Spectre (// comments, continuation lines ending with \) and SPICE / CDL #
def read_logical_lines(path):
    lines = []
    current = ""
    with open(path) as netlist:
        for rawline in netlist:
            line = rawline.rstrip("\n")
            stripped = line.strip()
            if stripped.startswith("//") or stripped.startswith("*"):
                continue
            if stripped.startswith("+") and not current and lines:
                lines[-1] += " " + stripped[1:].strip()
                continue
            if line.rstrip().endswith("\\") and not line.rstrip().endswith("\\:"):
                current += line.rstrip()[:-1] + " "
                continue
            current += line
            lines.append(current.strip())
            current = ""
    if current:
        lines.append(current.strip())
    return lines


# parse the subcircuits: {cell: {"ports": [...], "devices": [(type, d, g, s, b, params)]}}         #
# Calibre xACT extracted SPICE (ASAP7): the transistor terminals are parasitic nodes (N_M0_d), put #
# on their net by the parasitic network instances x_PM_<cell>%<NET> vss <nodes> PM_<cell>%<NET>    #
def parse_subcircuits(path, nmospattern, pmospattern):
    subcircuits = {}
    nodenets = {}
    cell = None
    spectrepattern = re.compile(r"^(\S+)\s*\(([^)]*)\)\s*(\S+)\s*(.*)$")
    for line in read_logical_lines(path):
        keyword = line.split(" ", 1)[0].lower()
        if keyword in ("subckt", ".subckt"):
            tokens = line.replace("(", " ").replace(")", " ").split()
            cell = tokens[1]
            subcircuits[cell] = {"ports": tokens[2:], "devices": []}
            nodenets[cell] = {}
            continue
        if keyword in ("ends", ".ends"):
            cell = None
            continue
        if cell is None:
            continue
        # parasitic network instance: its nodes, after the vss reference, belong to the net after % #
        if keyword.startswith("x") and ("%" in line.split()[-1]):
            tokens = line.split()
            net = tokens[-1].split("%")[-1]
            for node in tokens[2:-1]:
                nodenets[cell][node] = net
            continue
        match = spectrepattern.match(line)
        if match is not None:
            name = match.group(1)
            nodes = match.group(2).split()
            model = match.group(3)
            paramtext = match.group(4)
        elif keyword.startswith("m") and len(line.split()) >= 6:
            tokens = line.split()
            name = tokens[0]
            nodes = tokens[1:5]
            model = tokens[5]
            paramtext = " ".join(tokens[6:])
        else:
            continue
        if re.search(nmospattern, model):
            devicetype = "n"
        elif re.search(pmospattern, model):
            devicetype = "p"
        else:
            continue
        if len(nodes) != 4:
            print(f"[WARNING Python] {cell}: transistor {name} has {len(nodes)} terminals, skipped")
            continue
        params = {}
        for assignment in re.findall(r"(\w+)\s*=\s*(\S+)", paramtext):
            params[assignment[0].lower()] = assignment[1]
        subcircuits[cell]["devices"].append([devicetype, nodes[0], nodes[1], nodes[2], nodes[3], params])
    # resolve the terminals to nets: parasitic network nodes first, then the \k\:NET sub-node names #
    for cell, subcircuit in subcircuits.items():
        for device in subcircuit["devices"]:
            for terminal in range(1, 5):
                device[terminal] = node_net(nodenets[cell].get(device[terminal], device[terminal]))
    return subcircuits


# read the output pins of each LEF macro: {macro: set(output pins)} #
def read_lef_output_pins(path):
    outputs = {}
    macro = None
    pin = None
    with open(path) as lef:
        for rawline in lef:
            tokens = rawline.split()
            if not tokens:
                continue
            if tokens[0] == "MACRO":
                macro = tokens[1]
                outputs.setdefault(macro, set())
            elif tokens[0] == "PIN" and macro is not None:
                pin = tokens[1]
            elif tokens[0] == "DIRECTION" and macro is not None and pin is not None:
                if tokens[1].upper().startswith("OUTPUT"):
                    outputs[macro].add(pin)
            elif tokens[0] == "END" and len(tokens) > 1 and tokens[1] == pin:
                pin = None
    return outputs


# output pins without a LEF: ports connected to a diffusion and to no gate #
def guess_output_pins(subcircuit, supplies):
    diffusionnets = set()
    gatenets = set()
    for device in subcircuit["devices"]:
        diffusionnets.add(device[1])
        diffusionnets.add(device[3])
        gatenets.add(device[2])
    return {port for port in subcircuit["ports"] if (port not in supplies) and (port in diffusionnets) and (port not in gatenets)}


# collector length (um) of the transistors of type devicetype with a diffusion on net pin #
def collector_length(subcircuit, pin, devicetype, mode):
    length = 0.0
    for device in subcircuit["devices"]:
        if device[0] != devicetype:
            continue
        params = device[5]
        multiplier = parse_spice_value(params.get("m", "1"))
        # the drain is terminal 1 and the source terminal 3, count a device once if both are on the pin #
        if device[1] == pin:
            perimeter = params.get("pd", "0")
        elif device[3] == pin:
            perimeter = params.get("ps", "0")
        else:
            continue
        if mode == "width":
            length += parse_spice_value(params.get("w", "0")) * multiplier
        else:
            length += 0.5 * parse_spice_value(perimeter) * multiplier
    return length * 1e6


def main():
    parser = argparse.ArgumentParser(description="Extract the NMOS / PMOS SET collector lengths of the library cells and write the TCL script that loads them in the tool")
    parser.add_argument("netlist", help="extracted Spectre cell netlist (.scs), e.g. ixc013ng_stdcell_rc.scs")
    parser.add_argument("output", help="output TCL script")
    parser.add_argument("--lef", help="cell LEF, gives the output pins (recommended)")
    parser.add_argument("--mode", choices=["width", "halfperimeter"], default="width", help="collector length definition (default: width)")
    parser.add_argument("--supplies", default="VDD,VSS", help="supply net names (default: VDD,VSS)")
    parser.add_argument("--nmos-pattern", default="nmos", help="regular expression of the NMOS model names (default: nmos)")
    parser.add_argument("--pmos-pattern", default="pmos", help="regular expression of the PMOS model names (default: pmos)")
    parser.add_argument("--scale", type=float, default=1.0, help="factor from um to the layout units of the LEF loaded in the tool, e.g. 4 for the 4x scaled ASAP7 LEF (default: 1)")
    args = parser.parse_args()

    supplies = set(args.supplies.split(","))
    subcircuits = parse_subcircuits(args.netlist, args.nmos_pattern, args.pmos_pattern)
    print(f"[INFO Python] {len(subcircuits)} subcircuits read from {args.netlist}")

    # the half perimeter mode needs the drain / source perimeters, which a CDL (e.g. ASAP7) does not have #
    if args.mode == "halfperimeter":
        hasperimeters = any(("pd" in device[5]) or ("ps" in device[5]) for subcircuit in subcircuits.values() for device in subcircuit["devices"])
        if not hasperimeters:
            print(f"[ERROR] {args.netlist} has no drain / source perimeters (pd / ps), use --mode width")
            return 1

    lefoutputs = None
    if args.lef is not None:
        lefoutputs = read_lef_output_pins(args.lef)
        print(f"[INFO Python] {len(lefoutputs)} macros read from {args.lef}")

    rows = []
    skipped = []
    for cell in sorted(subcircuits):
        subcircuit = subcircuits[cell]
        if not subcircuit["devices"]:
            # the parasitic network subcircuits PM_<cell>%<NET> of an extracted netlist are not cells #
            if "%" not in cell:
                skipped.append(f"{cell} (no transistors)")
            continue
        if lefoutputs is not None:
            if cell not in lefoutputs:
                skipped.append(f"{cell} (not in the LEF)")
                continue
            outputs = lefoutputs[cell]
        else:
            outputs = guess_output_pins(subcircuit, supplies)
        if not outputs:
            skipped.append(f"{cell} (no output pins)")
            continue
        # per output pin lengths, the cell gets the maximum over its outputs #
        pinlengths = {pin: (collector_length(subcircuit, pin, "n", args.mode) * args.scale, collector_length(subcircuit, pin, "p", args.mode) * args.scale) for pin in sorted(outputs)}
        nmoslength = max(lengths[0] for lengths in pinlengths.values())
        pmoslength = max(lengths[1] for lengths in pinlengths.values())
        if (nmoslength == 0.0) and (pmoslength == 0.0):
            skipped.append(f"{cell} (no diffusion on the outputs {' '.join(sorted(outputs))})")
            continue
        rows.append((cell, nmoslength, pmoslength, pinlengths))

    with open(args.output, "w") as tcl:
        tcl.write(f"# SET charge collector lengths (um x {args.scale:g}, layout units of the loaded LEF) of the library cells, mode {args.mode} #\n")
        tcl.write(f"# generated by {Path(__file__).name} from {args.netlist} #\n")
        tcl.write("# NMOS length: negative SET pulses, PMOS length: positive SET pulses; cells with several outputs: maximum over the outputs #\n")
        for cell, nmoslength, pmoslength, pinlengths in rows:
            if len(pinlengths) > 1:
                details = ", ".join(f"{pin}: {lengths[0]:.4f} / {lengths[1]:.4f}" for pin, lengths in pinlengths.items())
                tcl.write(f"# {cell} outputs (NMOS / PMOS): {details} #\n")
            tcl.write(f"set_libcell_SET_collector_lengths -libcell {cell} -nmos {nmoslength:.4f} -pmos {pmoslength:.4f}\n")
        tcl.write(f"puts \"INFO: SET collector lengths ({args.mode}) of {len(rows)} library cells loaded from {Path(args.output).name}\"\n")

    print(f"[INFO Python] collector lengths of {len(rows)} library cells written to {args.output}")
    for reason in skipped:
        print(f"[WARNING Python] skipped {reason}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

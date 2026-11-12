#!/usr/bin/env python3
"""Select an ASAP7 design for placement/reliability and STA–SPICE examples, or restore the defaults."""

import argparse
import csv
from decimal import Decimal
import gzip
import hashlib
import io
import os
import re
import shutil
import tarfile
from pathlib import Path


# select_pdk.py imports this list. These six scripts remain PDK-switchable.
SCRIPTS = (
    "Placement/gate-level-placement.tcl",
    "Placement/global_placement.tcl",
    "Placement/detail_placement.tcl",
    "SET/set_analysis.tcl",
    "SET/set_mitigation.tcl",
    "Radhard/radhard_legalisation.tcl",
)
# ASAP7-only timing-driven placement; select_pdk.py does not switch these.
TD_GP_SCRIPTS = (
    "Placement/td_gp_linear.tcl",
    "Placement/td_gp_exp.tcl",
    "Placement/td_gp_pwl.tcl",
)
SPICE_SCRIPTS = (
    "STA/STAvsSPICE/01_nldm_no_rc.tcl",
    "STA/STAvsSPICE/02_ccs_no_rc.tcl",
    "STA/STAvsSPICE/03_nldm_lumped_rc.tcl",
    "STA/STAvsSPICE/04_nldm_pi_rc.tcl",
    "STA/STAvsSPICE/05_ccs_spef_rc.tcl",
    "STA/STAvsSPICE/07_driver_wire_rc_vs_xyce.tcl",
)
# The designs the scripts ship with, restored by --default.
DEFAULT_DESIGN = "counter"
DEFAULT_DESIGNS = {
    "Placement/gate-level-placement.tcl": "mac",
    "Radhard/radhard_legalisation.tcl": "uart",
}
DEFAULT_SPICE_DESIGN = "bf_chain"


def rewrite(text, settings, name):
    for key, value in settings.items():
        text, count = re.subn(rf"^set {key} [^\n]*$",
                              lambda match: f"set {key} {value}", text, flags=re.M)
        if count != 1:
            raise ValueError(f"Expected one 'set {key}' line in {name}")
    return text


def native_def(text, scale):
    """Keep integer coordinates and express their physical 1x size via DEF units."""
    def units(match):
        return f"UNITS DISTANCE MICRONS {int(match[1]) * scale} ;"
    text, count = re.subn(r"UNITS DISTANCE MICRONS\s+(\d+)\s*;", units, text)
    if count != 1:
        raise ValueError("Expected one DEF distance-unit declaration")
    # These DEF properties are real micrometres, unlike integer DBU coordinates.
    return re.sub(r"(DESIGN FE_CORE_BOX_\w+ REAL\s+)([-+0-9.eE]+)",
                  lambda m: m[1] + str(Decimal(m[2]) / scale), text)


def load_designs(root):
    with (root / "designs.tsv").open(newline="") as handle:
        return [row for row in csv.DictReader(handle, delimiter="\t")
                if row.get("category", "synchronous") in {"synchronous", "sta-spice"}]


def find_design(designs, name):
    matches = [row for row in designs if row["design"] == name]
    if len(matches) != 1:
        raise ValueError(f"Expected one selectable design named {name!r}; use --list")
    return matches[0]


def check_inputs(root, row):
    for field in ("netlist", "def"):
        if not row[field] or not (root / row[field]).is_file():
            raise ValueError(f"Missing {field} input for {row['design']}")
    for field in ("routed_def", "spef"):
        if row.get(field) and not (root / row[field]).is_file():
            raise ValueError(f"Missing input: {row[field]}")


def check_spice_cells(root, row):
    """SPICE and native 1x geometry must cover every mapped cell in the design."""
    lef = (root / "PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_R_1x_220121a.lef").read_text()
    subcircuits = (root / "PDK/ASAP7/asap7sc7p5t_28/CDL/xAct3D_extracted/asap7sc7p5t_28_R.sp").read_text()
    cells = set(re.findall(r"^\s*(\w+_ASAP7_\w+)\s+", (root / row["netlist"]).read_text(), re.M))
    supported = set(re.findall(r"^MACRO\s+(\S+)", lef, re.M))
    supported &= set(re.findall(r"^\.subckt\s+(\S+)", subcircuits, re.M | re.I))
    if not cells or cells - supported:
        raise ValueError("STA-SPICE requires bundled ASAP7 RVT cells; missing models: " + ", ".join(sorted(cells - supported)))


def settings_for(row):
    return {"design": row["design"], "clock_port": row["clock"],
            "period_ps": row["period_ps"], "fall_ps": row["fall_ps"]}


def current_text(path, updates):
    return updates[path] if path in updates else path.read_text()


def select_common(root, row, names, updates):
    """Point the placement, reliability and timing-driven scripts at one design."""
    for name in names:
        path = root / name
        text = current_text(path, updates)
        if "set pdk IHP-Open-PDK" in text.splitlines():
            raise ValueError("Select ASAP7 first, or use --sta-spice to leave the other exercises unchanged")
        updates[path] = rewrite(text, settings_for(row), name)


def select_spice(root, row, updates):
    """Point the STA–SPICE scripts at one design; returns whether cases 05 and 07 have SPEF inputs."""
    placement = row["def"]
    scale = int(row["geometry_scale"])
    if scale != 1:
        placement = "Test-Designs/STA-SPICE/selected_1x.def"
        updates[root / placement] = native_def((root / row["def"]).read_text(), scale)
    has_spef = bool(row.get("routed_def") and row.get("spef"))
    folder = root / "STA/STAvsSPICE"
    paths = {"netlist": row["netlist"], "placement": placement,
             "routed_def": row.get("routed_def", "") if has_spef else "",
             "spef": row.get("spef", "") if has_spef else ""}
    spice_settings = {**settings_for(row), **{key: "{" + os.path.relpath(root / value, folder) + "}" if value else "{}"
                                              for key, value in paths.items()}}
    for name in SPICE_SCRIPTS:
        path = root / name
        text = rewrite(current_text(path, updates), spice_settings, name)
        if name.endswith(("05_ccs_spef_rc.tcl", "07_driver_wire_rc_vs_xyce.tcl")):
            guard = "" if has_spef else (f'error {{The SPEF case is unavailable for {row["design"]}: '
                'no matching native 1x routed DEF/SPEF. Run cases 01-04 or select bf_chain, c499 or c1908.}\n')
            text, count = re.subn(r"(?ms)^# SPEF input availability\n.*?^# End SPEF input availability$",
                lambda m: "# SPEF input availability\n" + guard + "# End SPEF input availability", text)
            if count != 1:
                raise ValueError(f"Missing SPEF availability block in {name}")
        updates[path] = text
    return has_spef


def unpack_ccs(root):
    # Native Liberty parsing needs plain files. The bundled gzip copies keep
    # the repository smaller; no download or extra Python package is needed.
    for archive in (root / "PDK/ASAP7/asap7sc7p5t_28/LIB/CCS").glob("*.lib.gz"):
        target = archive.with_suffix("")
        if not target.exists() or archive.stat().st_mtime > target.stat().st_mtime:
            temporary = target.with_suffix(".tmp")
            with gzip.open(archive, "rb") as source, temporary.open("wb") as output:
                shutil.copyfileobj(source, output)
            temporary.replace(target)


class _JoinedParts(io.RawIOBase):
    """Read the parts of a split archive (archive.00, archive.01, ...) as one stream."""

    def __init__(self, parts):
        self._parts = list(parts)
        self._current = None
        self.sha256 = hashlib.sha256()

    def readable(self):
        return True

    def readinto(self, buffer):
        while True:
            if self._current is None:
                if not self._parts:
                    return 0
                self._current = self._parts.pop(0).open("rb")
            count = self._current.readinto(buffer)
            if count:
                self.sha256.update(memoryview(buffer)[:count])
                return count
            self._current.close()
            self._current = None


def unpack_large_designs(root):
    # The designs over 100 MB are kept as Test-Designs/large_designs.tar.gz.NN parts (see
    # scripts/pack_large_designs.sh). Unpack them when a listed file is missing or older than the parts.
    prefix = root / "Test-Designs/large_designs.tar.gz"
    parts = sorted(prefix.parent.glob(prefix.name + ".[0-9][0-9]"))
    listing = prefix.with_name(prefix.name + ".list")
    if not parts or not listing.exists():
        return
    names = [line.strip() for line in listing.read_text().splitlines() if line.strip()]
    newest = max(part.stat().st_mtime for part in parts)
    if all((root / name).exists() and (root / name).stat().st_mtime >= newest for name in names):
        return
    print(f"Unpacking {len(names)} large design files from {len(parts)} parts of {prefix.name} ...")
    stream = _JoinedParts(parts)
    with tarfile.open(fileobj=io.BufferedReader(stream, 1 << 20), mode="r|gz") as archive:
        for member in archive:
            target = (root / member.name).resolve()
            # regular files inside the tutorial only (no absolute paths, .., links or devices)
            if not member.isfile() or member.name not in names or root.resolve() not in target.parents:
                raise ValueError(f"unexpected entry {member.name} in {prefix.name}")
            target.parent.mkdir(parents=True, exist_ok=True) # a fresh clone may not have the folder
            temporary = target.with_name(target.name + ".tmp")
            with archive.extractfile(member) as source, temporary.open("wb") as output:
                shutil.copyfileobj(source, output, 1 << 20)
            temporary.replace(target)
    # tar stops at its end-of-archive blocks; read the rest of the parts so the checksum covers all of them
    remainder = bytearray(1 << 20)
    while stream.readinto(remainder):
        pass
    checksum = prefix.with_name(prefix.name + ".sha256")
    if checksum.exists() and stream.sha256.hexdigest() != checksum.read_text().split()[0]:
        raise ValueError(f"checksum of the {prefix.name} parts does not match {checksum.name}; download them again")


def restore_defaults(root, designs, updates):
    """Return every selectable script to ASAP7 and the design it ships with."""
    # Imported here because select_pdk.py imports SCRIPTS from this file.
    import select_pdk
    for name in (*select_pdk.SYNC_SCRIPTS, *select_pdk.ASYNC_SCRIPTS):
        path = root / name
        text = select_pdk.rewrite(name, current_text(path, updates), select_pdk.ASAP7)
        select_pdk.check_inputs(path, text)
        updates[path] = text
    for name in (*SCRIPTS, *TD_GP_SCRIPTS):
        row = find_design(designs, DEFAULT_DESIGNS.get(name, DEFAULT_DESIGN))
        check_inputs(root, row)
        select_common(root, row, (name,), updates)
    row = find_design(designs, DEFAULT_SPICE_DESIGN)
    check_inputs(root, row)
    check_spice_cells(root, row)
    select_spice(root, row, updates)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("design", nargs="?", help="Design name from designs.tsv")
    parser.add_argument("--list", action="store_true", help="List selectable designs")
    parser.add_argument("--sta-spice", action="store_true",
                        help="Change only the five STA–SPICE scripts")
    parser.add_argument("--default", action="store_true",
                        help="Return every selectable script to ASAP7 and its shipped design")
    args = parser.parse_args()
    root = Path(__file__).resolve().parent.parent
    if args.default and (args.design or args.sta_spice or args.list):
        parser.error("--default takes no design and cannot be combined with --list or --sta-spice")

    try:
        designs = load_designs(root)
        if args.list:
            print(f"{'Design':<16} {'Cells':>9} {'Clock':<12} {'Period (ps)':>12} {'Fall (ps)':>12} {'SPEF case':>10}")
            for row in designs:
                spef = "yes" if row.get("routed_def") and row.get("spef") else "no"
                print(f"{row['design']:<16} {row['cells']:>9} {row['clock']:<12} {row['period_ps']:>12} {row['fall_ps']:>12} {spef:>10}")
            print("bf_chain, c499 and c1908 change STA–SPICE only. Other designs change 15 Tcl scripts unless --sta-spice is used.")
            print("Use --default to return every selectable script to ASAP7 and its shipped design.")
            return
        # before the input checks: netcard and leon3mp may still be in the packed parts
        unpack_large_designs(root)
        updates = {}
        if args.default:
            restore_defaults(root, designs, updates)
        else:
            if not args.design:
                parser.error("Specify a design, use --list, or use --default")
            row = find_design(designs, args.design)
            check_inputs(root, row)
            check_spice_cells(root, row)
            common = () if args.sta_spice or row["category"] == "sta-spice" else (*SCRIPTS, *TD_GP_SCRIPTS)
            select_common(root, row, common, updates)
            has_spef = select_spice(root, row, updates)
        unpack_ccs(root)
        # Input checks and all script rewrites finish before any file is written.
        for path, text in updates.items():
            path.write_text(text)
    except (OSError, KeyError, ValueError) as exc:
        parser.error(str(exc))

    if args.default:
        others = ", ".join(f"{name} ({design})" for name, design in DEFAULT_DESIGNS.items())
        print(f"Restored the defaults: ASAP7, {DEFAULT_DESIGN} for the placement and reliability scripts "
              f"except {others}, and {DEFAULT_SPICE_DESIGN} for STA–SPICE.")
        return
    print(f"Selected {row['design']}: clock {row['clock']}, period {row['period_ps']} ps, falling edge {row['fall_ps']} ps")
    print(f"Updated {len(common)} placement/reliability scripts and 5 STA–SPICE scripts.")
    if not has_spef:
        print("STA–SPICE cases 01–04 are configured. Case 05 requires a matching native 1x routed DEF/SPEF.")


if __name__ == "__main__":
    main()

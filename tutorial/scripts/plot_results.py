#!/usr/bin/env python3
"""Create figures from the fixed reports and exports in results/."""
import argparse
import csv
import math
from html import escape
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
BLUE, ORANGE = "#0072B2", "#D55E00"

NUMBER = r"[-+]?(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][-+]?\d+)?"
MEASUREMENT = rf"(?:{NUMBER}|[-+]?(?:inf(?:inity)?|nan))"


def read_text(path):
    return re.sub(r"\x1b\[[0-9;]*m", "", path.read_text(errors="replace")) if path.exists() else ""


def last_value(text, pattern):
    matches = re.findall(pattern, text, re.I)
    if not matches:
        return None
    value = float(matches[-1])
    return value if math.isfinite(value) else None


def report_metrics(text, scale):
    area = last_value(text, rf"Top-Level Module Area\s*=\s*({MEASUREMENT})")
    hpwl = last_value(text, rf"Current Placement (?:CCs )?THPWL\s*=\s*({MEASUREMENT})")
    return {
        "area_um2": area / scale**2 if area is not None else None,
        "hpwl_um": hpwl / scale if hpwl is not None else None,
        "aset": last_value(text, rf"Total ASET:\s*({MEASUREMENT})"),
        "laset": last_value(text, rf"Total Latched ASET:\s*({MEASUREMENT})"),
        "rh_violators": last_value(text, r"Number of RADHARD Violators:\s*(\d+)"),
        "event_period_native": last_value(text, rf"Computed Event Graph Period: p =\s*({MEASUREMENT})"),
    }


def power_metrics(text, activity):
    factors = {"W": 1e6, "mW": 1e3, "uW": 1, "nW": 1e-3, "pW": 1e-6, "fW": 1e-9}
    result = {}
    for kind in ("Leakage", "Switching", "Internal"):
        key = kind.lower() + "_uw"
        if activity == "static-probability" and kind != "Leakage":
            result[key] = None
            continue
        unit = re.search(rf"{kind} Power Unit:\s*({NUMBER})([a-zA-Z]+)", text)
        value = last_value(text, rf"Total {kind} Power:\s*({MEASUREMENT})")
        if not unit or unit[2] not in factors or value is None or value < 0:
            raise ValueError(f"Missing or invalid {kind.lower()} power")
        result[key] = value * float(unit[1]) * factors[unit[2]]
    return result


def gatepin_rows(path):
    with path.open(newline="") as handle:
        reader = csv.reader(handle, skipinitialspace=True)
        headers = next(reader, None)
        if headers is None:
            raise ValueError(f"Empty CSV: {path.name}")
        headers = [value.strip() for value in headers]
        # Newer tool builds renamed the SET sensitivity columns; keep one name internally.
        if "ASET" in headers:
            renamed = {"Gatepin": "GATEPIN NAME", "LASET": "Latched ASET"}
            headers = [renamed.get(value, value) for value in headers]
        for values in reader:
            if not values or not any(value.strip() for value in values):
                break
            if len(values) != len(headers):
                raise ValueError(f"Incomplete CSV row in {path.name}")
            yield dict(zip(headers, (value.strip() for value in values)))


def capture_metrics(path, pins):
    result = {"capture_aset": 0.0, "capture_laset": 0.0, "capture_pins": 0, "affected_capture_pins": 0}
    seen = set()
    for row in gatepin_rows(path):
        pin = row.get("GATEPIN NAME")
        if pin not in pins:
            continue
        if pin in seen:
            raise ValueError(f"Duplicate capture pin: {pin}")
        seen.add(pin)
        aset, laset = float(row["ASET"]), float(row["Latched ASET"])
        if not all(math.isfinite(value) and value >= 0 for value in (aset, laset)):
            raise ValueError(f"Invalid capture metric: {pin}")
        result["capture_aset"] += aset
        result["capture_laset"] += laset
        result["capture_pins"] += 1
        result["affected_capture_pins"] += laset > 0
    if not pins or seen != pins:
        raise ValueError(f"Missing capture pins: {len(pins - seen)} of {len(pins)}")
    return result



def read_run(folder):
    info = read_text(folder / "info.txt")
    phases = {phase: read_text(folder / f"{phase}.txt") for phase in ("before", "after")}
    text = info + "\n" + read_text(folder / "result.txt") + "\n" + "\n".join(phases.values())
    flow = re.search(r"^Flow: (.+)$", text, re.M)
    design = re.search(r"^Design: (.+)$", text, re.M)
    if not flow or not design:
        raise ValueError("Missing flow/design in info.txt")
    flow, design = flow[1], design[1]
    charge = re.search(r"^Charge: ([0-9.eE+-]+) fC$", text, re.M)
    pdk_line = re.search(r"^PDK: (.+)$", info, re.M)
    pdk = pdk_line[1] if pdk_line else "ASAP7"
    scale = 1 if pdk == "IHP-Open-PDK" or flow in {"asta", "aipo", "sta-spice", "sta", "power", "td-placement", "wire-rc", "driver-wire-rc", "set-vs-spice"} else 4
    metrics = {"result": report_metrics(text, scale)}
    errors = []
    if re.search(
        r"(?:Top-Level Module Area|THPWL|Total ASET|Total Latched ASET|Event Graph Period: p)"
        r"\s*[:=]\s*[-+]?(?:inf(?:inity)?|nan)\b", text, re.I
    ):
        errors.append("Nonfinite reported measurement")
    if "TUTORIAL_COMPLETE" not in text:
        errors.append("Run did not complete successfully")
    if re.search(r"\bERROR:|Segmentation Violation|invalid command name|wrong # args", text):
        errors.append("Tool reported an error")
    required = {
        "placement-from-verilog": ["design.v", "design.def"],
        "global-placement": ["design.def"], "detail-placement": ["design.def"],
        "set": ["gatepins.csv", "capture_pins.txt", "design.v", "design.def"],
        "set-mitigation": ["gatepins_before.csv", "gatepins_after.csv", "capture_pins.txt", "before.def", "design.v", "design.def"],
        "seu": ["gatepins.csv", "capture_pins.txt", "design.def"],
        # SEU analysis and TMR on pci_bridge32: reports and CSV files only, no figures
        "seu-analysis": ["result.txt", "seu_flip_flops.csv", "seu_endpoints.csv"],
        "seu-tmr": ["result.txt", "pci_bridge32_SEU_TMR_report.txt", "pci_bridge32_SEU_TMR_steps.csv", "design.def"],
        "td-placement": ["design.def"],
        "wire-rc": ["summary.csv"],
        "set-models": ["design.def"], "set-ipo": ["design.def"], "set-spectre": ["design.def"], "set-xyce": ["design.def"],
        "radhard": ["groups.tsv", "before.def", "design.def", "design.v"],
        "asta": [], "aipo": ["design.v", "design.def"],
        "sta-spice": [],
        "driver-wire-rc": ["driver_wire_comparison.csv"], "set-vs-spice": ["set_vs_spice.csv"],
        "semt": ["semt_design.csv", "semt_grids.csv", "design.def"],
        "semt-sfi": ["sfi_iterations.csv", "sfi_design.csv", "design.def"],
        "semt-ipo": ["semt_before_design.csv", "semt_after_design.csv", "design.v", "design.def"],
        "sta": ["result.txt"], "power": ["result.txt"],
    }[flow]
    for name in required:
        if not (folder / name).is_file() or not (folder / name).stat().st_size:
            errors.append(f"Missing export: {name}")
    if flow in {"set-mitigation", "radhard", "aipo"}:
        for phase, content in phases.items():
            if not content:
                errors.append(f"Missing {phase} report")
            metrics[phase] = report_metrics(content, scale)
    if flow in {"placement-from-verilog", "global-placement", "detail-placement", "set", "set-mitigation", "seu", "radhard", "aipo"}:
        if "Current Placement is legal." not in (phases["after"] or text):
            errors.append("Missing final legal-placement confirmation")
    if flow in {"placement-from-verilog", "global-placement", "detail-placement"} and metrics["result"]["hpwl_um"] is None:
        errors.append("Missing final HPWL")
    if flow == "radhard" and metrics["after"]["rh_violators"] != 0:
        errors.append("Final RH spacing violations are not zero")
    if flow in {"set", "set-mitigation", "seu"}:
        pins = set(read_text(folder / "capture_pins.txt").splitlines())
        files = {"before": "gatepins_before.csv", "after": "gatepins_after.csv"} if flow == "set-mitigation" else {"result": "gatepins.csv"}
        for phase, name in files.items():
            try:
                metrics[phase].update(capture_metrics(folder / name, pins))
            except (OSError, KeyError, ValueError) as exc:
                errors.append(f"{name}: {exc}")
        if not charge or not math.isfinite(float(charge[1])) or float(charge[1]) <= 0:
            errors.append("Missing positive particle charge")
    if flow == "sta-spice":
        paths = sorted(folder.glob("comparison_path_*.csv"))
        if not paths or len(paths) > 2:
            errors.append("Expected one or two exported sensitised paths")
        for path in paths:
            try:
                rows = list(gatepin_rows(path))
                if len(rows) < 2:
                    raise ValueError("No complete path")
                index = int(path.stem.rsplit("_", 1)[1])
                if index not in (0, 1):
                    raise ValueError("Unexpected path index")
                for row in rows:
                    for column in ("Tool Arrival", "SPICE Arrival", "Tool Slew", "SPICE Slew"):
                        if not math.isfinite(float(row[column])):
                            raise ValueError(f"Nonfinite {column}")
                logs = list(folder.glob(f"*path_{index}.log"))
                log = read_text(logs[0]) if len(logs) == 1 else ""
                # Spectre reports its error count; Xyce only reaches this line on a completed run.
                if "completes with 0 errors" not in log and "End of Xyce(TM) Simulation" not in log:
                    raise ValueError("Matching SPICE simulation did not complete successfully")
            except (OSError, KeyError, ValueError) as exc:
                errors.append(f"{path.name}: {exc}")
    activity = re.search(r"^Activity: (.+)$", info, re.M)
    activity = activity[1] if activity else None
    if flow == "power":
        if activity not in {"SAIF", "static-probability"}:
            errors.append("Missing power activity mode")
        try:
            metrics["result"].update(power_metrics(read_text(folder / "result.txt"), activity))
        except ValueError as exc:
            errors.append(str(exc))
    return {"flow": flow, "design": design, "case": folder.name,
            "charge_fc": float(charge[1]) if charge else None,
            "status": "failed" if errors else "complete", "errors": errors,
            "pdk": pdk, "geometry_scale": scale, "metrics": metrics, "_folder": str(folder),
            "activity": activity}


def save(fig, output, name, bottom=0):
    fig.tight_layout(rect=(0, bottom, 1, .94) if bottom else None)
    fig.savefig(output / f"{name}.png", dpi=200, bbox_inches="tight")
    fig.savefig(output / f"{name}.pdf", bbox_inches="tight")
    plt.close(fig)


def spacing_minima(text, scale):
    group = None
    values = {}
    for line in text.splitlines():
        if "REPORT: RADHARD Group Spacing:" in line:
            group = line.split(":", 2)[-1].strip()
        if group and "Spacing between " in line:
            value = float(line.rsplit(":", 1)[-1]) / scale
            values[group] = min(values.get(group, math.inf), value)
    return values


def spice(records, output):
    # Read the cell output pins from the same RVT LEF used by the Tcl scripts.
    output_pins = set()
    macro = pin = None
    lef = ROOT / 'PDK/ASAP7/asap7sc7p5t_28/LEF/asap7sc7p5t_28_R_1x_220121a.lef'
    for line in lef.read_text().splitlines():
        words = line.split()
        if words[:1] == ['MACRO']:
            macro = words[1]
        elif words[:1] == ['PIN']:
            pin = words[1]
        elif words[:2] == ['DIRECTION', 'OUTPUT']:
            output_pins.add((macro, pin))

    cases = []
    for record in sorted(records, key=lambda item: item['case']):
        if record['flow'] != 'sta-spice':
            continue
        paths = {}
        for path in sorted(Path(record['_folder']).glob('comparison_path_*.csv')):
            rows = list(gatepin_rows(path))
            indices = []
            for i, row in enumerate(rows):
                pin = re.search(r'/([^/\s]+)\s+\(([^)]+)\)$', row['Gatepin'])
                if pin and (pin[2], pin[1]) in output_pins:
                    indices.append(i)
            if not indices:
                raise ValueError(f'No recognised cell outputs in {path}')
            profile = [rows[i] for i in dict.fromkeys([0, *indices, len(rows) - 1])]
            arrival, slew = {}, {}
            for model in ('Tool', 'SPICE'):
                arrival[model] = 1000 * (np.array([float(row[f'{model} Arrival']) for row in profile])
                                         - float(rows[0][f'{model} Arrival']))
                slew[model] = 1000 * np.array([float(rows[i][f'{model} Slew']) for i in indices])
            delay_error = 100 * (arrival['Tool'][-1] / arrival['SPICE'][-1] - 1) if arrival['SPICE'][-1] > 0 else np.nan
            valid = slew['SPICE'] > 0
            errors = 100 * (slew['Tool'][valid] / slew['SPICE'][valid] - 1)
            median = float(np.median(errors)) if valid.any() else np.nan
            worst = float(errors[np.argmax(np.abs(errors))]) if valid.any() else np.nan
            index = int(path.stem.rsplit('_', 1)[1])
            paths[index] = {'arrival': arrival, 'slew': slew, 'direction': rows[-1]['Direction'].lower(),
                            'errors': (delay_error, median, worst)}
        label = record['case'].split('_', 1)[-1].replace('_', ' ').replace('nldm', 'NLDM').replace('ccs', 'CCS').replace('spef', 'SPEF').replace('rc', 'RC')
        cases.append((label, record['design'], paths))
    if not cases:
        return

    fig, axes = plt.subplots(len(cases), 2, figsize=(12, 3 * len(cases) + 1), squeeze=False)
    for (label, design, paths), (delay_ax, slew_ax) in zip(cases, axes):
        for index, data in paths.items():
            colour = [BLUE, ORANGE][index]
            name = f"Path {index} ({data['direction']})"
            for model, style in (('Tool', '-'), ('SPICE', '--')):
                delay_ax.plot(range(len(data['arrival'][model])), data['arrival'][model], style,
                              color=colour, linewidth=1.5, label=name + (' STA' if model == 'Tool' else ' SPICE'))
                slew_ax.plot(range(1, len(data['slew'][model]) + 1), data['slew'][model], style,
                             color=colour, linewidth=1.5)
        delay_ax.set_title(f'{label} / {design}', loc='left', fontsize=11, fontweight='bold')
        delay_ax.set_ylabel('Cumulative delay (ps)')
        slew_ax.set_ylabel('Cell-output slew (ps)')
        delay_ax.legend(fontsize=8, frameon=False, ncol=2)
        for ax in (delay_ax, slew_ax):
            ax.set_ylim(bottom=0)
            ax.margins(x=.02)
    axes[-1, 0].set_xlabel('Path sample: launch, cell outputs, endpoint')
    axes[-1, 1].set_xlabel('Cell output along each path')
    fig.suptitle('STA–SPICE / timing along the sensitised paths', fontsize=17, y=.995)
    fig.text(.5, .015, 'Each solid/dashed pair follows its own path. Delay excludes its launch arrival. Endpoints and path lengths can differ.',
             ha='center', fontsize=9)
    save(fig, output, 'sta_spice_path_profiles', bottom=.055)

    fig, axes = plt.subplots(1, 3, figsize=(14, .7 * len(cases) + 2.4), layout='constrained')
    titles = ('End-to-end delay error', 'Median cell-output slew error', 'Worst cell-output slew error')
    for metric, (ax, title) in enumerate(zip(axes, titles)):
        values = np.array([[paths[index]['errors'][metric] if index in paths else np.nan for index in (0, 1)]
                           for label, design, paths in cases])
        finite = np.abs(values[np.isfinite(values)])
        limit = max(float(finite.max()) if finite.size else 0, 1)
        cmap = plt.get_cmap('RdBu_r').copy()
        cmap.set_bad('#dddddd')
        image = ax.imshow(np.ma.masked_invalid(values), cmap=cmap, vmin=-limit, vmax=limit, aspect='auto')
        ax.set_xticks([0, 1], ['Path 0', 'Path 1'])
        ax.set_yticks(range(len(cases)), [f'{case[0]} / {case[1]}' for case in cases] if metric == 0 else [''] * len(cases))
        ax.set_title(title, fontsize=12, pad=12)
        ax.grid(False)
        ax.tick_params(length=0, pad=8)
        for (row, col), value in np.ndenumerate(values):
            ax.text(col, row, f'{value:+.1f}%' if np.isfinite(value) else 'N/A', ha='center', va='center',
                    color='white' if np.isfinite(value) and abs(value) > .6 * limit else '#202830', fontsize=12)
        fig.colorbar(image, ax=ax, shrink=.8, label='Signed error (%)')
    fig.suptitle('STA–SPICE / error against simulation', fontsize=17)
    fig.supxlabel('100 × (STA − SPICE) / SPICE. Each path uses its own matched simulation.\n'
                  'Slew samples are cell outputs. Missing paths and unavailable positive references remain N/A.', fontsize=9)
    fig.savefig(output / 'sta_spice_error_summary.png', dpi=200, bbox_inches='tight')
    fig.savefig(output / 'sta_spice_error_summary.pdf', bbox_inches='tight')
    plt.close(fig)


# Cell geometry is read from the LEFs used by the saved run.
LEF_SIZES = {}


def cell_sizes(pdk, scale):
    key = (pdk, scale)
    if key not in LEF_SIZES:
        if pdk == "IHP-Open-PDK":
            path = ROOT / "PDK/IHP-Open-PDK/sg13g2_stdcell.lef"
        else:
            base = ROOT / "PDK/ASAP7/asap7sc7p5t_28/LEF"
            filename = ('scaled/asap7sc7p5t_28_R_4x_220121a.lef' if scale == 4
                        else 'asap7sc7p5t_28_R_1x_220121a.lef')
            path = base / filename
        sizes = {}
        for macro in re.finditer(r'^\s*MACRO\s+(\S+)\s*\n(.*?)^\s*END\s+\1\s*$', path.read_text(), re.M | re.S):
            size = re.search(r'SIZE\s+('+NUMBER+r')\s+BY\s+('+NUMBER+r')', macro[2])
            if size:
                sizes[macro[1]] = (float(size[1]) / scale, float(size[2]) / scale)
        if not sizes:
            raise ValueError(f'No macro sizes in {path}')
        LEF_SIZES[key] = sizes
    return LEF_SIZES[key]


def placement(record, filename='design.def'):
    text = (Path(record['_folder']) / filename).read_text()
    scale = record['geometry_scale']
    units = float(re.search(r'UNITS DISTANCE MICRONS\s+('+NUMBER+r')', text)[1]) * scale
    core = [re.search(r'FE_CORE_BOX_'+key+r' REAL\s+('+NUMBER+r')', text) for key in ('LL_X','LL_Y','UR_X','UR_Y')]
    if all(core):
        bounds = tuple(float(value[1]) / scale for value in core)
    else:
        die = re.search(r'DIEAREA\s*\(\s*('+NUMBER+r')\s+('+NUMBER+r')\s*\)\s*\(\s*('+NUMBER+r')\s+('+NUMBER+r')\s*\)', text)
        bounds = tuple(float(value) / units for value in die.groups())
    section = re.search(r'\bCOMPONENTS\s+\d+\s*;(.*?)\bEND COMPONENTS', text, re.S)[1]
    cells, sizes = {}, cell_sizes(record['pdk'], scale)
    for item in re.finditer(r'-\s+(\S+)\s+(\S+)(.*?);', section, re.S):
        point = re.search(r'\+\s+(?:PLACED|FIXED|COVER)\s*\(\s*('+NUMBER+r')\s+('+NUMBER+r')\s*\)\s*(\S+)', item[3])
        if not point:
            raise ValueError(f'Unplaced component {item[1]} in {filename}')
        width, height = sizes[item[2]]
        if point[3] in {'E', 'W', 'FE', 'FW'}:
            width, height = height, width
        cells[item[1].replace('\\', '')] = {'macro':item[2], 'x':float(point[1])/units, 'y':float(point[2])/units, 'w':width, 'h':height}
    return cells, bounds


def cell_name(name, cells):
    name = name.replace('\\', '')
    while True:
        if name in cells:
            return name
        if '/' not in name:
            return None
        name = name.split('/', 1)[1]


def centre(cell):
    return cell['x'] + cell['w']/2, cell['y'] + cell['h']/2


def layout(ax, cells, bounds, values=None, norm=None, cmap=None, highlights=()):
    from matplotlib.collections import PatchCollection
    from matplotlib.patches import Rectangle
    colours = {'Registers':'#5c4d9d', 'Inverters/buffers':'#55a5bc', 'NAND/AND':'#65a77d', 'NOR/OR':'#dda557', 'AOI/OAI':'#b87794', 'XOR/XNOR':'#728ab5', 'Other':'#aab1b5'}
    used, patches, faces = set(), [], []
    for name, c in cells.items():
        macro=c['macro']
        family = ('Registers' if macro.startswith(('DFF','SDF','ICG')) else
                  'Inverters/buffers' if macro.startswith(('INV','BUF','CK')) else
                  'NAND/AND' if macro.startswith(('NAND','AND')) else
                  'NOR/OR' if macro.startswith(('NOR','OR')) else
                  'AOI/OAI' if macro.startswith(('AO','OA')) else
                  'XOR/XNOR' if macro.startswith(('XOR','XNOR')) else 'Other')
        used.add(family)
        patches.append(Rectangle((c['x'],c['y']),c['w'],c['h']))
        if values is None:
            faces.append(colours[family])
        elif name not in values:
            faces.append('#e4e7e9')
        elif values[name] == 0:
            faces.append('#f7f5ee')
        else:
            faces.append(cmap(norm(values[name])))
    ax.add_collection(PatchCollection(patches, facecolors=faces, edgecolors='white', linewidths=.3))
    for name in highlights:
        c=cells[name]
        ax.add_patch(Rectangle((c['x'],c['y']),c['w'],c['h'],fill=False,edgecolor=ORANGE,linewidth=2.2,zorder=4))
    x0,y0,x1,y1=bounds
    margin=max(x1-x0,y1-y0)*.035
    ax.set_xlim(x0-margin,x1+margin);ax.set_ylim(y0-margin,y1+margin)
    ax.set_aspect('equal');ax.set_xlabel('x (µm)');ax.set_ylabel('y (µm)');ax.grid(False)
    return {family:colours[family] for family in used}


def placement_maps(record, output):
    from matplotlib.patches import Patch
    cells, bounds = placement(record)
    fig, axes=plt.subplots(1,2,figsize=(14,6.6))
    colours=layout(axes[0],cells,bounds)
    axes[0].set_title('Final cell placement')
    axes[0].legend(handles=[Patch(color=value,label=key) for key,value in sorted(colours.items())],loc='upper center',bbox_to_anchor=(.5,-.14),ncol=3,fontsize=8,frameon=False)
    x0,y0,x1,y1=bounds
    bins=10
    density=np.zeros((bins,bins));dx=(x1-x0)/bins;dy=(y1-y0)/bins
    for c in cells.values():
        for iy in range(bins):
            overlap_y=max(0,min(c['y']+c['h'],y0+(iy+1)*dy)-max(c['y'],y0+iy*dy))
            if overlap_y:
                for ix in range(bins):
                    overlap_x=max(0,min(c['x']+c['w'],x0+(ix+1)*dx)-max(c['x'],x0+ix*dx))
                    density[iy,ix]+=100*overlap_x*overlap_y/(dx*dy)
    image=axes[1].imshow(density,origin='lower',extent=(x0,x1,y0,y1),vmin=0,vmax=max(100,density.max()),cmap='YlOrRd',interpolation='nearest')
    axes[1].set_title('Cell area / bin area');axes[1].set_xlabel('x (µm)');axes[1].set_ylabel('y (µm)');axes[1].grid(False)
    fig.colorbar(image,ax=axes[1],shrink=.8,label='Occupied area (%)')
    metric=record['metrics']['result']
    fig.suptitle(f"{record['design']} · {record['flow']} · {len(cells)} cells · final HPWL {metric['hpwl_um']:.3g} µm",fontsize=15)
    save(fig,output,f"{record['flow']}_layout_density",bottom=.08)


def pin_values(record, filename, column, capture_only=False):
    folder=Path(record['_folder'])
    pins=set(read_text(folder/'capture_pins.txt').splitlines()) if capture_only else None
    values = {row['GATEPIN NAME']:float(row[column]) for row in gatepin_rows(folder/filename) if pins is None or row['GATEPIN NAME'] in pins}
    if any(not math.isfinite(value) or value < 0 for value in values.values()):
        raise ValueError(f'Invalid sensitivity in {filename}')
    return values


def risk_map(record, output):
    from matplotlib.colors import PowerNorm
    from matplotlib.cm import ScalarMappable
    cells,bounds=placement(record)
    capture=record['flow']=='seu'
    pins=pin_values(record,'gatepins.csv','Latched ASET' if capture else 'ASET',capture)
    values={}
    for pin,value in pins.items():
        name=cell_name(pin.rsplit('/',1)[0],cells)
        if name is not None:
            values[name]=max(values.get(name,0),value)
    if capture and len(values)!=len(pins):
        raise ValueError('Register pins could not all be matched to the saved DEF')
    if not values:
        raise ValueError('No sensitivity values matched to placed cells')
    cmap=plt.get_cmap('magma_r');norm=PowerNorm(gamma=.5,vmin=0,vmax=max(values.values()) or 1)
    fig,ax=plt.subplots(figsize=(9.5,8))
    layout(ax,cells,bounds,values,norm,cmap)
    if capture:
        for name,value in values.items():
            x,y=centre(cells[name]);ax.scatter(x,y,s=32,c=[cmap(norm(value))] if value else ['#f7f5ee'],edgecolors='#333',linewidths=.5,zorder=4)
    for name,value in sorted(values.items(),key=lambda item:item[1],reverse=True)[:3]:
        x,y=centre(cells[name]);ax.annotate(name,(x,y),xytext=(5,6),textcoords='offset points',fontsize=8,bbox={'facecolor':'white','alpha':.85,'edgecolor':'none'},zorder=5)
    label='Register-input LASET' if capture else 'Maximum pin ASET per cell'
    fig.colorbar(ScalarMappable(norm=norm,cmap=cmap),ax=ax,shrink=.75,label=label+' (square-root colour scale)')
    ax.set_title(f"{record['design']} · {record['charge_fc']:g} fC\n"+('SET-induced capture risk at register positions' if capture else 'SET arrival sensitivity across the placement'))
    fig.text(.5,.015,'Gray: cells without selected measurements. Cream: measured zero. Sensitivities are accumulated values.',ha='center',fontsize=8)
    save(fig,output,f"{record['flow']}_{record['design']}_risk_map",bottom=.08)


def mitigation_changes(record, output):
    folder=Path(record['_folder'])
    before=pin_values(record,'gatepins_before.csv','Latched ASET',True)
    after=pin_values(record,'gatepins_after.csv','Latched ASET',True)
    if set(before)!=set(after):raise ValueError('Before/after capture pins differ')
    old,_=placement(record,'before.def');cells,bounds=placement(record)
    resized=[name for name,c in cells.items() if name in old and c['macro']!=old[name]['macro']]
    changes=sorted(((pin,after[pin]-value) for pin,value in before.items()),key=lambda item:item[1])
    fig,axes=plt.subplots(1,2,figsize=(15,max(7,len(changes)*.23)),gridspec_kw={'width_ratios':[1,1.15]})
    y=np.arange(len(changes));delta=[value for _,value in changes]
    axes[0].barh(y,delta,color=[ORANGE if v>0 else BLUE for v in delta],height=.65)
    axes[0].scatter(np.zeros(len(y)),y,s=5,color='#66717b',zorder=3)
    axes[0].set_yticks(y,[pin.split('/',1)[-1] for pin,_ in changes],fontsize=8)
    axes[0].axvline(0,color='#333',linewidth=.8);axes[0].set_xlabel('LASET after − before');axes[0].set_title('Change at every register data input')
    layout(axes[1],cells,bounds,{},highlights=resized)
    for name in resized:
        axes[1].annotate(name,centre(cells[name]),xytext=(8,8),textcoords='offset points',fontsize=9,color=ORANGE,arrowprops={'arrowstyle':'-','color':ORANGE})
    axes[1].set_title(f'{len(resized)} resized cells in the final placement')
    bm,am=record['metrics']['before'],record['metrics']['after']
    area=am['area_um2']-bm['area_um2'];change=am['capture_laset']-bm['capture_laset']
    fig.suptitle(f"{record['design']} · SET mitigation\nCell area {area:+.4g} µm² · register-input LASET {change:+.5g} · orange = increased capture sensitivity",fontsize=13)
    save(fig,output,'set_mitigation_register_changes',bottom=.02)


def radhard_triplets(record, output):
    folder=Path(record['_folder']);before,bounds=placement(record,'before.def');after,_=placement(record)
    with (folder/'groups.tsv').open() as handle:groups=list(csv.DictReader(handle,delimiter='\t'))
    minima={phase:spacing_minima(read_text(folder/f'{phase}.txt'),record['geometry_scale']) for phase in ('before','after')}
    selected=sorted(groups,key=lambda row:(minima['before'].get(row['group'],math.inf),int(row['group'].split('_')[-1])))[:3]
    colours=['#0072B2','#D55E00','#009E73']
    fig,axes=plt.subplots(1,2,figsize=(14,7))
    for ax,cells,phase in zip(axes,[before,after],['before','after']):
        layout(ax,cells,bounds,{})
        for group,colour in zip(selected,colours):
            names=[cell_name(group[f'member{i}'],cells) for i in range(3)]
            if None in names:raise ValueError('RH member missing from DEF')
            points=[centre(cells[name]) for name in names]
            ax.plot([p[0] for p in points+[points[0]]],[p[1] for p in points+[points[0]]],color=colour,linewidth=1.5,alpha=.8)
            ax.scatter([p[0] for p in points],[p[1] for p in points],s=65,facecolors='white',edgecolors=colour,linewidths=2,zorder=5)
            value=minima[phase][group['group']]
            ax.plot([],[],color=colour,marker='o',markerfacecolor='white',label=f"{group['group']}: min spacing {value:.3g} µm")
        ax.set_title('After TMR insertion' if phase=='before' else 'After RH legalisation')
        ax.legend(loc='upper center',bbox_to_anchor=(.5,-.12),frameon=False,fontsize=9)
    minimum=float(selected[0]['min_layout_um'])/record['geometry_scale']
    fig.suptitle(f"{record['design']} · three representative triplets from {len(groups)} RH groups\nRequired pair spacing ≥ {minimum:g} µm · final violators: {record['metrics']['after']['rh_violators']:.0f}",fontsize=14)
    fig.text(.5,.015,'Lines connect cell centres for orientation. Spacing values come from the native geometric-spacing report.',ha='center',fontsize=9)
    save(fig,output,'radhard_triplet_placement',bottom=.15)


def critical_cycle(text):
    start=re.search(r'^Startpoint:\s*(\S+)',text,re.M)
    targets=[]
    pattern=r'^\d+(?:\s+\(Endpoint\))?: Node (\S+), (\S+) \(([^)]+)\) \(Delay = ('+NUMBER+r') [rf]\)'
    for line in text.splitlines():
        match=re.search(pattern,line.strip())
        if match and match[2].rsplit('/',1)[-1] in {'Y','Q','QN','Z','ZN'}:
            targets.append({'id':match[1],'pin':match[2],'macro':match[3],'delay':float(match[4])})
    if not start or not targets or targets[-1]['id']!=start[1]:
        raise ValueError('Missing closed critical-cycle report; rerun the Tcl example')
    nodes=[targets[-1]]+targets[:-1]
    edges=[];previous=0
    for i,target in enumerate(targets):
        edges.append({'source':nodes[i]['id'],'target':target['id'],'delay':target['delay']-previous})
        previous=target['delay']
    return nodes,edges


def cycle_diagram(record, output):
    from matplotlib.patches import FancyBboxPatch,FancyArrowPatch
    from matplotlib.lines import Line2D
    folder=Path(record['_folder']);aipo=record['flow']=='aipo'
    if aipo and (folder/'unplaced.txt').is_file():
        phases=['before','after'];labels=['Placed','After ECO']
        metrics=[record['metrics'][phase] for phase in phases]
        if (folder/'unplaced.txt').is_file():
            labels.insert(0,'Unplaced')
            metrics.insert(0,report_metrics(read_text(folder/'unplaced.txt'),record['geometry_scale']))
        fig,axes=plt.subplots(1,2,figsize=(10,4.5))
        for ax,key,title in zip(axes,['event_period_native','area_um2'],
                               ['Critical-cycle period (native report units)','Cell area (µm²)']):
            values=[m[key] for m in metrics]
            if any(value is None or not math.isfinite(value) for value in values):
                raise ValueError(f'Missing or nonfinite {key} for AIPO summary')
            bars=ax.bar(labels,values,color=['#9aa6ae',ORANGE,BLUE][-len(values):])
            ax.bar_label(bars,labels=[f'{value:.4g}' for value in values],padding=4)
            ax.set_title(title);ax.set_ylim(0,max(values)*1.2);ax.grid(axis='x',visible=False)
        fig.suptitle(f"AIPO · {record['design']} · {record['pdk']}",fontsize=15)
        fig.text(.5,.02,'Compare Placed with After ECO to assess the optimisation.',ha='center',fontsize=10)
        save(fig,output,f"{record['case']}_timing_area",bottom=.13)
        return
    nodes,edges=critical_cycle(read_text(folder/('after.txt' if aipo else 'result.txt')))
    old_edges,old_types={},{}
    if aipo:
        old_nodes,old=critical_cycle(read_text(folder/'before.txt'))
        old_edges={(e['source'],e['target']):e['delay'] for e in old};old_types={n['id']:n['macro'] for n in old_nodes}
    count=len(nodes);angles=np.pi/2-np.arange(count)*2*np.pi/count
    positions=np.column_stack((4.5*np.cos(angles),2.9*np.sin(angles)))
    fig,ax=plt.subplots(figsize=(13,9));ax.set_xlim(-6.1,6.1);ax.set_ylim(-4.2,4.2);ax.set_aspect('equal');ax.axis('off')
    maximum=max(e['delay'] for e in edges)
    for i,edge in enumerate(edges):
        previous=old_edges.get((edge['source'],edge['target']))
        delta=edge['delay']-previous if previous is not None else None
        colour=(BLUE if delta is not None and delta < -5e-6 else ORANGE if delta is not None and delta > 5e-6 else '#8b969e') if aipo else (ORANGE if edge['delay'] >= maximum*.95 else '#758896')
        p,q=positions[i],positions[(i+1)%count]
        ax.add_patch(FancyArrowPatch(p,q,arrowstyle='-|>',mutation_scale=15,shrinkA=36,shrinkB=36,color=colour,linewidth=2 if colour in {BLUE,ORANGE} else 1.3,zorder=1))
        middle=(p+q)/2*1.17
        label=f"{edge['delay']:.5f}"+(f"\nΔ {delta:+.5f}" if delta is not None and abs(delta)>=5e-6 else '\nnew arc' if aipo and delta is None else '')
        ax.text(*middle,label,ha='center',va='center',fontsize=9,color=colour,bbox={'facecolor':'white','edgecolor':'none','pad':1},zorder=4)
    for node,point in zip(nodes,positions):
        changed=aipo and old_types.get(node['id']) not in {None,node['macro']}
        ax.add_patch(FancyBboxPatch((point[0]-.78,point[1]-.32),1.56,.64,boxstyle='round,pad=.03',facecolor='#f3f5f6',edgecolor='#7a4596' if changed else '#556774',linewidth=2 if changed else 1,zorder=3))
        parts=node['id'].split('#');controller=parts[0].replace('click','C');pin=parts[-2];transition='↑' if parts[-1]=='+' else '↓'
        macro=node['macro'].split('_ASAP7')[0]
        ax.text(*point,f"{controller} / {parts[1]}\n{pin} {transition} · {macro}",ha='center',va='center',fontsize=9,zorder=5)
    if aipo:
        before=record['metrics']['before']['event_period_native'];after=record['metrics']['after']['event_period_native']
        centre_text=f'Control-cycle period\n{before:.5f} → {after:.5f}\n{100*(after/before-1):+.2f}%'
        legend=[Line2D([],[],color=BLUE,label='Lower stage delay'),Line2D([],[],color=ORANGE,label='Higher stage delay'),Line2D([],[],color='#7a4596',linewidth=2,label='Resized gate')]
    else:
        centre_text=f"Critical-cycle period\n{record['metrics']['result']['event_period_native']:.5f}"
        legend=[Line2D([],[],color=ORANGE,linewidth=2,label='Largest delay contribution')]
    ax.text(0,0,centre_text,ha='center',va='center',fontsize=15,linespacing=1.7)
    ax.legend(handles=legend,loc='lower center',bbox_to_anchor=(.5,-.03),ncol=len(legend),frameon=False)
    ax.set_title(('AIPO · changes along the critical cycle' if aipo else 'ASTA · the limiting event cycle')+f"\n{record['design']}",fontsize=16,pad=20)
    fig.text(.5,.025,'Cell-output events shown; preceding wire delays are folded into each stage. All delay labels use native report units.',ha='center',fontsize=9)
    save(fig,output,f"{record['case']}_critical_cycle",bottom=.1)


def sta_comparison(record, output):
    stages = {
        'sta_bf_chain': [('NLDM / lumped', 'nldm_lumped'), ('CCS / lumped', 'ccs_lumped'), ('CCS / pi', 'ccs_pi')],
        'sta_whenconditions': [('Unconstrained', 'unconstrained'), ('Default arcs', 'default_arcs'), ('Conditional arcs', 'conditional_arcs')],
        'sta_cdc6': [('Before groups', 'before'), ('Asynchronous groups', 'after')],
        'sta_afifo': [('Before groups', 'before'), ('Asynchronous groups', 'after')],
        'sta_timing_utilities': [('Before exception', 'before'), ('After exception', 'after')],
    }.get(record['case'])
    if not stages:
        return
    folder = Path(record['_folder'])
    text = [read_text(folder / f'{name}.txt') for _, name in stages]
    fig, axes = plt.subplots(1, 2, figsize=(11, 4.5))
    for ax, pattern, title in zip(axes, [rf'Data arrival time:\s*({MEASUREMENT})', rf'Slack:\s*\([^)]+\)\s*({MEASUREMENT})'], ['Reported path arrival (ns)', 'Reported path slack (ns)']):
        values = [last_value(content, pattern) for content in text]
        if any(value is None for value in values):
            raise ValueError(f'Missing {title}')
        bars = ax.bar([label for label, _ in stages], values, color=[ORANGE, BLUE, '#738d58'][:len(stages)])
        ax.bar_label(bars, labels=[f'{value:.4g}' for value in values], padding=4)
        ax.margins(y=.2);ax.axhline(0, color='#777', linewidth=.8)
        ax.set_title(title);ax.grid(axis='x', visible=False)
    fig.suptitle(f"STA · {record['design']} · {record['pdk']}", fontsize=15)
    fig.text(.5, .02, 'Each setting can select a different path. Compare the reports alongside the bars.', ha='center', fontsize=10)
    save(fig, output, f"{record['case']}_comparison", bottom=.13)


def power_summary(records, output):
    selected = [r for r in records if r['flow'] == 'power']
    if not selected:
        return
    labels = [r['design'] + (' / probabilities' if r['activity'] == 'static-probability' else ' / SAIF') for r in selected]
    fig, axes = plt.subplots(1, 3, figsize=(13, 4.5), sharey=True)
    for ax, kind, title in zip(axes, ['leakage', 'switching', 'internal'], ['Leakage', 'Switching', 'Internal']):
        for i, record in enumerate(selected):
            value = record['metrics']['result'][kind + '_uw']
            if value is None:
                ax.text(.03, i, 'Activity not supplied', transform=ax.get_yaxis_transform(), va='center', fontsize=9, color='#666')
            else:
                ax.barh(i, value, color=BLUE)
                ax.text(value, i, f' {value:.4g}', va='center', fontsize=9)
        ax.set_yticks(range(len(labels)), labels);ax.set_title(title)
        ax.set_xlabel('Power (µW)');ax.margins(x=.28);ax.grid(axis='y', visible=False)
    axes[0].invert_yaxis()
    fig.suptitle('IHP Open PDK · power estimates', fontsize=15)
    fig.text(.5, .02, 'Static probabilities support leakage estimation; dynamic power uses the supplied SAIF activity.', ha='center', fontsize=10)
    save(fig, output, 'power_summary', bottom=.13)


def additional_sta_figures(output):
    # These examples keep native reports in the terminal and export compact data.
    for name in ("sta_incremental_m65c02", "sta_incremental_aes"):
        folder = output.parent / name
        if not (folder / "complete.txt").exists():
            continue
        with (folder / "runtime.tsv").open() as handle:
            rows = list(csv.DictReader(handle, delimiter="\t"))
        values = [float(row["elapsed_ms"]) for row in rows]
        if len(values) != 2 or any(not math.isfinite(v) or v < 0 for v in values):
            raise ValueError(f"Invalid incremental timing measurements: {name}")
        fig, ax = plt.subplots(figsize=(7, 4))
        bars = ax.bar(["Incremental", "Full"], values, color=[BLUE, ORANGE])
        ax.bar_label(bars, labels=[f"{v:g}" for v in values], padding=4)
        ax.set(ylabel="report_timing wall time (ms)",
               title=("M65C02 ALU / ASAP7" if name.endswith("m65c02") else "AES / IHP Open PDK"))
        ax.margins(y=.25)
        ax.grid(axis="x", visible=False)
        fig.text(.5, .02, "One cell move, one run. Check post-move timing agreement in the terminal.",
                 ha="center", fontsize=9)
        save(fig, output, name + "_runtime", bottom=.15)
        print(f"Figure: {name}_runtime")
    for name in ("sta_asap7_tv80_ipo", "sta_sky130_tv80_ipo"):
        folder = output.parent / name
        if not (folder / "complete.txt").exists():
            continue
        for ext in ("png", "pdf"):
            # The optimiser writes into a timestamped run folder; use the newest.
            sources = sorted(folder.glob("tv80_*/optimisation_progress." + ext))
            if sources:
                (output / (name + "_progress." + ext)).write_bytes(sources[-1].read_bytes())


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.parse_args()
    global plt, np
    try:
        import matplotlib
        matplotlib.use("Agg")
        import matplotlib.pyplot as plt
        import numpy as np
    except ImportError:
        parser.error("Install matplotlib: python3 -m pip install matplotlib")
    output = ROOT / "results" / "figures"
    output.mkdir(parents=True, exist_ok=True)
    # Remove old figures so a failed rerun cannot leave a stale success plot.
    for pattern in ("*.png", "*.pdf"):
        for path in output.glob(pattern):
            path.unlink()
    records = []
    for folder in sorted(output.parent.iterdir()):
        if not (folder / "info.txt").exists():
            continue
        try:
            records.append(read_run(folder))
        except (OSError, KeyError, ValueError) as exc:
            records.append({
                "flow": "unknown", "design": "unknown", "pdk": "unknown",
                "case": folder.name, "charge_fc": None, "status": "failed",
                "errors": [str(exc)], "metrics": {}, "_folder": str(folder),
            })
    rows = []
    for record in records:
        row = {key: record[key] for key in ("case", "flow", "design", "pdk", "charge_fc", "status")}
        row["errors"] = "; ".join(record["errors"])
        for phase, values in record["metrics"].items():
            row.update({f"{phase}_{key}": value for key, value in values.items()})
        rows.append(row)
        print(f"{record['status']}: {record['case']} ({record['design']})" + (f" - {row['errors']}" if row["errors"] else ""))
    with (output / "summary.csv").open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=list(dict.fromkeys(key for row in rows for key in row)) or ["case", "flow", "design", "pdk", "status", "errors"])
        writer.writeheader()
        writer.writerows(rows)
    plt.rcParams.update({"font.size": 10, "axes.spines.top": False, "axes.spines.right": False,
                         "axes.grid": True, "grid.alpha": .2, "axes.axisbelow": True, "pdf.fonttype": 42})
    complete = [r for r in records if r["status"] == "complete"]
    spice(complete, output)
    power_summary(complete, output)
    additional_sta_figures(output)
    figure_errors = []
    for record in complete:
        try:
            if record['flow'] in {'placement-from-verilog','global-placement','detail-placement'}:
                placement_maps(record,output)
            elif record['flow'] in {'set','seu'}:
                risk_map(record,output)
            elif record['flow']=='set-mitigation':
                mitigation_changes(record,output)
            elif record['flow']=='radhard':
                radhard_triplets(record,output)
            elif record['flow'] in {'asta','aipo'}:
                cycle_diagram(record,output)
            elif record['flow']=='sta':
                sta_comparison(record,output)
        except (OSError,KeyError,ValueError) as exc:
            figure_errors.append(f"{record['case']}: {exc}")
            print(f"Figure unavailable for {record['case']}: {exc}")
    if not records:
        print("No saved results found. Run a Tcl example first.")
    cards = "".join(
        f'<figure><a href="{p.name}"><img src="{p.name}" alt="{escape(p.stem)}"></a>'
        f'<figcaption>{escape(p.stem)} · <a href="{p.stem}.pdf">PDF</a></figcaption></figure>'
        for p in sorted(output.glob("*.png")))
    (output / "index.html").write_text(
        '<!doctype html><html><meta charset="utf-8"><title>refEDA figures</title>'
        '<style>body{font:16px sans-serif;margin:32px}main{display:grid;grid-template-columns:repeat(auto-fit,minmax(440px,1fr));gap:24px}figure{margin:0}img{width:100%}figcaption{margin:8px 0 20px}</style>'
        '<h1>refEDA figures</h1><p><a href="summary.csv">Results summary</a>. Click a figure for full size.</p><main>'
        + cards + '</main></html>')
    print(f"Figures and summary: {output}")
    return int(bool(figure_errors) or any(r["status"] == "failed" for r in records))


if __name__ == "__main__":
    raise SystemExit(main())

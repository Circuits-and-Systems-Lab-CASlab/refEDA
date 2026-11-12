#!/usr/bin/env python3
"""Print mean Euclidean cell displacement in micrometres between two DEFs."""

from pathlib import Path
import math
import re
import sys


def positions(path):
    text = Path(path).read_text()
    units = float(re.search(r'UNITS DISTANCE MICRONS\s+(\d+)', text)[1])
    section = re.search(r'\bCOMPONENTS\s+\d+\s*;(.*?)END COMPONENTS', text, re.S)[1]
    cells = {}
    for entry in section.split(';'):
        name = re.search(r'^\s*-\s+(\S+)', entry)
        xy = re.search(r'\+\s+(?:PLACED|FIXED|COVER)\s*\(\s*(-?\d+)\s+(-?\d+)\s*\)', entry)
        if name and xy:
            cells[name[1]] = (float(xy[1]) / units, float(xy[2]) / units)
    return cells


if __name__ == '__main__':
    before, after = map(positions, sys.argv[1:3])
    common = before.keys() & after.keys()
    if not common:
        raise SystemExit('No matching placed cells in the two DEFs')
    print(sum(math.dist(before[name], after[name]) for name in common) / len(common))

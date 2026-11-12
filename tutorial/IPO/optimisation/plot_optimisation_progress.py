#!/usr/bin/env python3
"""Plot the progress CSV written by ipo_optimise."""

import csv
from pathlib import Path
import sys

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt


def plot(csv_path):
    csv_path = Path(csv_path)
    with csv_path.open() as f:
        rows = list(csv.DictReader(f))
    if not rows:
        return
    iterations = [int(row['Iteration']) for row in rows]
    fig, axes = plt.subplots(1, 3, figsize=(11, 3.5))
    for ax, column, label in zip(axes, ['WNS', 'TNS', 'AreaPct'],
                                ['WNS (ns)', 'TNS (ns)', 'Area change (%)']):
        ax.plot(iterations, [float(row[column]) for row in rows], marker='o')
        ax.set(xlabel='Iteration', ylabel=label)
        ax.grid(axis='y', alpha=0.25)
    fig.tight_layout()
    for ext in ['png', 'pdf']:
        fig.savefig(csv_path.with_name('optimisation_progress.' + ext), dpi=180)
    plt.close(fig)


if __name__ == '__main__':
    plot(sys.argv[1])

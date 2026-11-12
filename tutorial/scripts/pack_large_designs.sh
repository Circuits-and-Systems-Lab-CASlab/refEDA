#!/bin/bash
# Pack the design files that are too large for a Git host (GitHub refuses files over 100 MB) into
# Test-Designs/large_designs.tar.gz.00, .01, ... of at most PART_SIZE each, with the list of packed
# files and the SHA-256 checksum of the archive. scripts/select_design.py unpacks them again.
#
# Run from anywhere: scripts/pack_large_designs.sh [PART_SIZE]   (default 90M, a split(1) size)
# Users join the parts themselves with:  cat Test-Designs/large_designs.tar.gz.* | tar -xzf -
set -euo pipefail

PART_SIZE=${1:-90M}
cd "$(dirname "$0")/.."    # the tutorial folder

# the files over 100 MB; paths relative to the tutorial folder
FILES=(
  Test-Designs/Black-Parrot/bp_processor_asap7.v
  Test-Designs/Synchronous/netcard.def
  Test-Designs/Synchronous/netcard.v
  Test-Designs/Synchronous/leon3mp.def
)
PREFIX=Test-Designs/large_designs.tar.gz

for f in "${FILES[@]}"; do
  [ -f "$f" ] || { echo "ERROR: $f not found; nothing packed." >&2; exit 1; }
done

# remove the parts of an earlier run first: a smaller archive would otherwise leave a stale last part
rm -f "$PREFIX".[0-9][0-9] "$PREFIX".sha256 "$PREFIX".list

# -n: no file times in the gzip header, so the same inputs give the same archive
tar -cf - "${FILES[@]}" | gzip -n -9 | split -b "$PART_SIZE" -d -a 2 - "$PREFIX".
printf '%s\n' "${FILES[@]}" > "$PREFIX".list
cat "$PREFIX".[0-9][0-9] | sha256sum | cut -d' ' -f1 > "$PREFIX".sha256

echo "Packed ${#FILES[@]} files into:"
ls -l "$PREFIX".[0-9][0-9] | awk '{printf "  %s  %.1f MB\n", $NF, $5/1e6}'
echo "List: $PREFIX.list, checksum: $PREFIX.sha256"
echo "Keep the original files out of Git (.gitignore); select_design.py unpacks the parts."

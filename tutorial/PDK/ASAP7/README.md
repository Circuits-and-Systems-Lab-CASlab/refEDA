# ASAP7 files used by the tutorial

This directory contains the ASAP7 1× and 4× LEFs, RVT TT timing libraries,
and the transistor subcircuits and model used by the STA–SPICE exercises.
The synchronous TV80 IPO example also uses the native 1× LVT, SLVT and SRAM-Vt
LEFs and the existing TT Liberty files for all four Vt families. These geometries
come from the same public ASAP7 standard-cell release as the RVT LEF.

The files were copied from the existing tutorial's ASAP7 installation with
their notices intact. See the [BSD 3-Clause licence](asap7sc7p5t_28/LICENSE)
and the [ASAP7 standard-cell library](https://github.com/The-OpenROAD-Project/asap7sc7p5t_28).

## Additional RVT TT CCS groups

STA–SPICE uses all five RVT TT groups for selectable logic and sequential designs.
The AO, OA, SIMPLE and SEQ CCS files come from the public
[ASAP7 standard-cell release](https://github.com/The-OpenROAD-Project/asap7sc7p5t_28/tree/e5bd25da72cd297b8c0ec6f77600e0cbaa1124d0/LIB/CCS),
commit `e5bd25da72cd297b8c0ec6f77600e0cbaa1124d0`. Their original `.7z` archives were extracted
without editing the Liberty contents. The bundled `.lib.gz` copies contain those
same bytes. `scripts/select_design.py` unpacks them locally before rewriting the Tcl.
No network connection or extra Python package is needed. The unpacked files use about
328 MiB and remain outside Git. The existing INVBUF CCS file remains unchanged.

The SHA-256 values below identify the uncompressed Liberty files:

| File | SHA-256 |
|---|---|
| `asap7sc7p5t_AO_RVT_TT_ccs_211120.lib` | `b92ada7b334efeadb228b755a2d92b80e295c4071560c9e31549e019720a58df` |
| `asap7sc7p5t_OA_RVT_TT_ccs_211120.lib` | `3a6a2c2c73e4a5de13af27f36b0e21e97b5c7ebfce760a66fada0fb68d3f7f27` |
| `asap7sc7p5t_SIMPLE_RVT_TT_ccs_211120.lib` | `54b02517f11a890cb18a3082d4ba8d9dcb4bffddc259418fc829edb43841bd4c` |
| `asap7sc7p5t_SEQ_RVT_TT_ccs_220123.lib` | `159d1249cd16e33521c5e53c6edd71d5c5b47465b552eab1ab175bac49e5af59` |

# STA inputs

The small `.v` files in this directory support the timing-command examples. The four
subdirectories below support the incremental STA and synchronous TV80 IPO examples.
All runtime technology dependencies are under `tutorial/PDK/`.

## M65C02-ALU

`M65C02_ALU.v` comes from the mapped ALU used by the supplied China 2026 incremental
STA script. The original circuit has 1,060 cells. The tutorial mapping has 1,061 cells,
including 64 flip-flops, and preserves the moved instance `U504`.

Five instances originally used `ASYNC_DFFHx1_ASAP7_75t_R`, which is absent from the
bundled ASAP7 library. They now use `DFFASRHQNx1_ASAP7_75t_R`. The old Liberty defines
`next_state = !D`, `clear = RESET`, `preset = SET`, and output `IQN`. The replacement
defines the same next state and output, with `clear = !SETN` and `preset = !RESETN`.
All five original `RESET` inputs are constant zero. The replacement `SETN` is therefore
constant one. Four flops share the inverted original `SET` signal at `RESETN`, and
the fifth has `RESETN` tied high because its original `SET` was also zero.
One `INVx1_ASAP7_75t_R` supplies that shared inversion. No legacy cell model is bundled.

The [M65C02 project](https://github.com/freecores/m65c02) identifies Michael A. Morris
as the author and describes its LGPL release. The supplied file is a mapped derivative;
this integration does not regenerate the complete ALU from upstream RTL.

## AES-IHP

This is the open AES-128 encryption core by Rudolf Usselmann, copied from the
OpenROAD-flow-scripts AES RTL directory with its file notices and `LICENSE` intact.
The source project is [OpenCores AES](https://opencores.org/projects/aes_core).
The copied RTL is also available in
[OpenROAD-flow-scripts](https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts/tree/master/flow/designs/src/aes).

`aes_cipher_top.v` is the flattened SG13G2 mapping used at runtime. It contains
10,677 cells, including 562 flip-flops. It replaces the IHP 0.25 µm AES saved design
referenced by the supplied incremental script. It is a different AES implementation;
instance names, placement and timing cannot be compared with that original example.

The mapped file already exists, so the tutorial does not require Yosys. To rebuild it,
run from `tutorial/` with Yosys and ABC available:

```bash
cd Test-Designs/STA/AES-IHP
yosys -s synth.ys
cd ../../..
```

The recorded mapping used Yosys `0.69+156`, commit `9d0c91b23`. `synth.ys` performs
flattening, sequential and combinational mapping against the bundled SG13G2 Liberty,
tie-cell insertion, and a structural `check -assert`. It removes internal aliases and
splits internal buses for the refEDA Verilog reader. The source notices apply to the
mapped derivative as well. Structural checks do not prove AES functionality.

The incremental Tcl moves `aes_cipher_top/_10532_`, an inverter in this mapped file.
If synthesis changes instance names, update that literal to an existing combinational
instance in the regenerated netlist before running the Tcl.

## TV80-ASAP7 and TV80-SKY130

The two netlist/DEF pairs are the inputs referenced by the supplied China 2026 TV80
optimisation scripts. Their contents are copied unchanged. The ASAP7 mapping has
3,211 cells and the SKY130 HD mapping has 3,140 cells. Both contain 359 flip-flops.
Each DEF supplies mapped connectivity and a native 1× placement. The Tcl reads the DEF;
the accompanying Verilog preserves the separately supplied mapped input.

[TV80](https://opencores.org/projects/tv80) is a BSD-licensed Z80-compatible processor
core. These supplied mapped derivatives have not been resynthesised or formally
compared with upstream RTL during this integration.

ASAP7 TV80 uses RVT, LVT, SLVT and SRAM-Vt standard cells. Its three additional native
1× LEFs are copies of the public ASAP7 standard-cell geometry already represented by
the bundled 4× versions. Liberty TT files for all four families were already included.
SKY130 uses the existing bundled HD LEF and TT Liberty.

The current synchronous optimiser crashes before completion for both supplied mappings.
See the main README's TV80 section before using either example in a live session.

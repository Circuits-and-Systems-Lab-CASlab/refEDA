// MR0 master-read controller adapted from the supplied AIPO example.
module master_read0_net (
    ari,
    pri,
    bprn,
    xack,
    di,
    aro,
    pro,
    breq,
    busyo,
    mrdc,
    do,
    csc0,
    csc1,
    csc2
);

    input ari;
    input pri;
    input bprn;
    input xack;
    input di;

    output aro;
    output pro;
    output breq;
    output busyo;
    output mrdc;
    output do;
    output csc0;
    output csc1;
    output csc2;

    wire _0_, _1_, _2_, _3_, _4_, _6_, _7_, _8_;
    wire _9_, _10_, _12_, map1, _14_, _15_, _16_, _17_;
    wire _19_, _20_, _21_, _22_, _23_, _24_, _25_, _26_;
    wire _27_, _28_, _30_, _31_, _32_, _34_, _35_, _36_;
    wire _37_, _38_, _39_, _40_, _42_, _43_, _45_, _46_;
    wire _47_, _49_, _50_, _51_, _52_, _53_, _54_;

    INVx1_ASAP7_75t_R _U0 (.A(busyo), .Y(_0_));
    OAI21x1_ASAP7_75t_R _U1 (.B(csc1), .A1(_0_), .A2(breq), .Y(_1_));
    INVx1_ASAP7_75t_R _U2 (.A(_1_), .Y(_2_));
    OAI21x1_ASAP7_75t_R _U3 (.B(csc2), .A1(aro), .A2(_2_), .Y(_3_));
    INVx1_ASAP7_75t_R _U4 (.A(aro), .Y(_4_));
    OAI21x1_ASAP7_75t_R _U5 (.B(_3_), .A1(_4_), .A2(ari), .Y(aro));
    INVx1_ASAP7_75t_R _U6 (.A(ari), .Y(_6_));
    OAI21x1_ASAP7_75t_R _U7 (.B(csc0), .A1(pri), .A2(pro), .Y(_7_));
    NAND2x1_ASAP7_75t_R _U8 (.A(_2_), .B(_7_), .Y(_8_));
    AOI21x1_ASAP7_75t_R _U9 (.B(_8_), .A1(csc2), .A2(_6_), .Y(_9_));
    INVx1_ASAP7_75t_R _U10 (.A(aro), .Y(_10_));
    OAI21x1_ASAP7_75t_R _U11 (.B(_9_), .A1(_10_), .A2(ari), .Y(pro));
    INVx1_ASAP7_75t_R _U12 (.A(mrdc), .Y(_12_));
    NOR2x1_ASAP7_75t_R _U13 (.A(map1), .B(_12_), .Y(breq));
    INVx1_ASAP7_75t_R _U14 (.A(csc1), .Y(_14_));
    INVx1_ASAP7_75t_R _U15 (.A(breq), .Y(_15_));
    INVx1_ASAP7_75t_R _U16 (.A(busyo), .Y(_16_));
    INVx1_ASAP7_75t_R _U17 (.A(bprn), .Y(_17_));
    OAI211xp5_ASAP7_75t_R _U18 (.B(_15_), .C(_17_), .A1(_14_), .A2(_16_), .Y(busyo));
    INVx1_ASAP7_75t_R _U19 (.A(busyo), .Y(_19_));
    INVx1_ASAP7_75t_R _U20 (.A(mrdc), .Y(_20_));
    INVx1_ASAP7_75t_R _U21 (.A(di), .Y(_21_));
    INVx1_ASAP7_75t_R _U22 (.A(csc0), .Y(_22_));
    INVx1_ASAP7_75t_R _U23 (.A(di), .Y(_23_));
    OAI21x1_ASAP7_75t_R _U24 (.B(do), .A1(_23_), .A2(csc0), .Y(_24_));
    INVx1_ASAP7_75t_R _U25 (.A(_24_), .Y(_25_));
    AOI21x1_ASAP7_75t_R _U26 (.B(_22_), .A1(_25_), .A2(di), .Y(_26_));
    AOI21x1_ASAP7_75t_R _U27 (.B(_26_), .A1(_21_), .A2(_25_), .Y(_27_));
    NOR2x1_ASAP7_75t_R _U28 (.A(_27_), .B(csc1), .Y(_28_));
    OAI211xp5_ASAP7_75t_R _U29 (.B(_19_), .C(_28_), .A1(_20_), .A2(xack), .Y(mrdc));
    INVx1_ASAP7_75t_R _U30 (.A(mrdc), .Y(_30_));
    INVx1_ASAP7_75t_R _U31 (.A(xack), .Y(_31_));
    NAND4xp75_ASAP7_75t_R _U32 (.A(_30_), .B(_31_), .C(_1_), .D(csc0), .Y(_32_));
    NAND2x1_ASAP7_75t_R _U33 (.A(_24_), .B(_32_), .Y(do));
    INVx1_ASAP7_75t_R _U34 (.A(csc1), .Y(_34_));
    INVx1_ASAP7_75t_R _U35 (.A(ari), .Y(_35_));
    INVx1_ASAP7_75t_R _U36 (.A(aro), .Y(_36_));
    OAI211xp5_ASAP7_75t_R _U37 (.B(_35_), .C(_36_), .A1(csc2), .A2(_34_), .Y(_37_));
    INVx1_ASAP7_75t_R _U38 (.A(_37_), .Y(_38_));
    NOR2x1_ASAP7_75t_R _U39 (.A(_38_), .B(pro), .Y(_39_));
    AOI21x1_ASAP7_75t_R _U40 (.B(_39_), .A1(csc0), .A2(_24_), .Y(_40_));
    INVx1_ASAP7_75t_R _U41 (.A(_40_), .Y(csc0));
    INVx1_ASAP7_75t_R _U42 (.A(ari), .Y(_42_));
    AOI31xp67_ASAP7_75t_R _U43 (.B(_2_), .A1(_42_), .A2(_27_), .A3(csc2), .Y(_43_));
    INVx1_ASAP7_75t_R _U44 (.A(_43_), .Y(csc1));
    INVx1_ASAP7_75t_R _U45 (.A(csc0), .Y(_45_));
    INVx1_ASAP7_75t_R _U46 (.A(di), .Y(_46_));
    NAND4xp75_ASAP7_75t_R _U47 (.A(_24_), .B(_45_), .C(_46_), .D(_38_), .Y(_47_));
    INVx1_ASAP7_75t_R _U48 (.A(_47_), .Y(csc2));
    INVx1_ASAP7_75t_R _U49 (.A(pri), .Y(_49_));
    OAI21x1_ASAP7_75t_R _U50 (.B(_26_), .A1(_1_), .A2(busyo), .Y(_50_));
    INVx1_ASAP7_75t_R _U51 (.A(_50_), .Y(_51_));
    NAND4xp75_ASAP7_75t_R _U52 (.A(_49_), .B(_51_), .C(_8_), .D(bprn), .Y(_52_));
    INVx1_ASAP7_75t_R _U53 (.A(_52_), .Y(_53_));
    AOI21x1_ASAP7_75t_R _U54 (.B(_53_), .A1(map1), .A2(_51_), .Y(_54_));
    INVx1_ASAP7_75t_R _U55 (.A(_54_), .Y(map1));
endmodule

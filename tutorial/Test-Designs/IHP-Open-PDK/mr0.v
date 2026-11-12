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
    wire _47_, _49_, _50_, _51_, _52_, _53_, _54_, _U18_term;
    wire _U29_term, _U37_term, _U43_term;

    sg13g2_inv_1 _U0 (.A(busyo), .Y(_0_));
    sg13g2_o21ai_1 _U1 (.B1(csc1), .A1(_0_), .A2(breq), .Y(_1_));
    sg13g2_inv_1 _U2 (.A(_1_), .Y(_2_));
    sg13g2_o21ai_1 _U3 (.B1(csc2), .A1(aro), .A2(_2_), .Y(_3_));
    sg13g2_inv_1 _U4 (.A(aro), .Y(_4_));
    sg13g2_o21ai_1 _U5 (.B1(_3_), .A1(_4_), .A2(ari), .Y(aro));
    sg13g2_inv_1 _U6 (.A(ari), .Y(_6_));
    sg13g2_o21ai_1 _U7 (.B1(csc0), .A1(pri), .A2(pro), .Y(_7_));
    sg13g2_nand2_1 _U8 (.A(_2_), .B(_7_), .Y(_8_));
    sg13g2_a21oi_1 _U9 (.B1(_8_), .A1(csc2), .A2(_6_), .Y(_9_));
    sg13g2_inv_1 _U10 (.A(aro), .Y(_10_));
    sg13g2_o21ai_1 _U11 (.B1(_9_), .A1(_10_), .A2(ari), .Y(pro));
    sg13g2_inv_1 _U12 (.A(mrdc), .Y(_12_));
    sg13g2_nor2_1 _U13 (.A(map1), .B(_12_), .Y(breq));
    sg13g2_inv_1 _U14 (.A(csc1), .Y(_14_));
    sg13g2_inv_1 _U15 (.A(breq), .Y(_15_));
    sg13g2_inv_1 _U16 (.A(busyo), .Y(_16_));
    sg13g2_inv_1 _U17 (.A(bprn), .Y(_17_));
    sg13g2_or2_1 _U18_or (.A(_14_), .B(_16_), .X(_U18_term));
    sg13g2_nand3_1 _U18 (.A(_U18_term), .B(_15_), .C(_17_), .Y(busyo));
    sg13g2_inv_1 _U19 (.A(busyo), .Y(_19_));
    sg13g2_inv_1 _U20 (.A(mrdc), .Y(_20_));
    sg13g2_inv_1 _U21 (.A(di), .Y(_21_));
    sg13g2_inv_1 _U22 (.A(csc0), .Y(_22_));
    sg13g2_inv_1 _U23 (.A(di), .Y(_23_));
    sg13g2_o21ai_1 _U24 (.B1(do), .A1(_23_), .A2(csc0), .Y(_24_));
    sg13g2_inv_1 _U25 (.A(_24_), .Y(_25_));
    sg13g2_a21oi_1 _U26 (.B1(_22_), .A1(_25_), .A2(di), .Y(_26_));
    sg13g2_a21oi_1 _U27 (.B1(_26_), .A1(_21_), .A2(_25_), .Y(_27_));
    sg13g2_nor2_1 _U28 (.A(_27_), .B(csc1), .Y(_28_));
    sg13g2_or2_1 _U29_or (.A(_20_), .B(xack), .X(_U29_term));
    sg13g2_nand3_1 _U29 (.A(_U29_term), .B(_19_), .C(_28_), .Y(mrdc));
    sg13g2_inv_1 _U30 (.A(mrdc), .Y(_30_));
    sg13g2_inv_1 _U31 (.A(xack), .Y(_31_));
    sg13g2_nand4_1 _U32 (.A(_30_), .B(_31_), .C(_1_), .D(csc0), .Y(_32_));
    sg13g2_nand2_1 _U33 (.A(_24_), .B(_32_), .Y(do));
    sg13g2_inv_1 _U34 (.A(csc1), .Y(_34_));
    sg13g2_inv_1 _U35 (.A(ari), .Y(_35_));
    sg13g2_inv_1 _U36 (.A(aro), .Y(_36_));
    sg13g2_or2_1 _U37_or (.A(csc2), .B(_34_), .X(_U37_term));
    sg13g2_nand3_1 _U37 (.A(_U37_term), .B(_35_), .C(_36_), .Y(_37_));
    sg13g2_inv_1 _U38 (.A(_37_), .Y(_38_));
    sg13g2_nor2_1 _U39 (.A(_38_), .B(pro), .Y(_39_));
    sg13g2_a21oi_1 _U40 (.B1(_39_), .A1(csc0), .A2(_24_), .Y(_40_));
    sg13g2_inv_1 _U41 (.A(_40_), .Y(csc0));
    sg13g2_inv_1 _U42 (.A(ari), .Y(_42_));
    sg13g2_and3_1 _U43_and (.A(_42_), .B(_27_), .C(csc2), .X(_U43_term));
    sg13g2_nor2_1 _U43 (.A(_U43_term), .B(_2_), .Y(_43_));
    sg13g2_inv_1 _U44 (.A(_43_), .Y(csc1));
    sg13g2_inv_1 _U45 (.A(csc0), .Y(_45_));
    sg13g2_inv_1 _U46 (.A(di), .Y(_46_));
    sg13g2_nand4_1 _U47 (.A(_24_), .B(_45_), .C(_46_), .D(_38_), .Y(_47_));
    sg13g2_inv_1 _U48 (.A(_47_), .Y(csc2));
    sg13g2_inv_1 _U49 (.A(pri), .Y(_49_));
    sg13g2_o21ai_1 _U50 (.B1(_26_), .A1(_1_), .A2(busyo), .Y(_50_));
    sg13g2_inv_1 _U51 (.A(_50_), .Y(_51_));
    sg13g2_nand4_1 _U52 (.A(_49_), .B(_51_), .C(_8_), .D(bprn), .Y(_52_));
    sg13g2_inv_1 _U53 (.A(_52_), .Y(_53_));
    sg13g2_a21oi_1 _U54 (.B1(_53_), .A1(map1), .A2(_51_), .Y(_54_));
    sg13g2_inv_1 _U55 (.A(_54_), .Y(map1));
endmodule

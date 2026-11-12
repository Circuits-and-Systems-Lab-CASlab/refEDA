// Asynchronous carry-lookahead adder.
// ASAP7 mapping; explicit delay cells use buffer chains.

module delay_lines_0 ( in, out );
    wire U4__delay_1, U5__delay_1, U5__delay_3, U5__delay_5;

  input in;
  output out;
  wire   in_0_, n7, w0_0_, n1, n2, n3, n4, n5, out_0_;
  assign in_0_ = in;
  assign out = out_0_;

    INVx1_ASAP7_75t_R I_1__gate_1 (.A(w0_0_), .Y(n7));

    INVx1_ASAP7_75t_R I_0__gate_1 (.A(n5), .Y(w0_0_));

    HB1xp67_ASAP7_75t_R U1__gate_1 (.A(in_0_), .Y(n1));

    HB1xp67_ASAP7_75t_R U2__gate_1 (.A(n1), .Y(n2));

    HB1xp67_ASAP7_75t_R U3__gate_1 (.A(n2), .Y(n3));

    HB1xp67_ASAP7_75t_R U4__gate_2 (.A(n3), .Y(U4__delay_1));
    HB1xp67_ASAP7_75t_R U4__gate_3 (.A(U4__delay_1), .Y(n4));

    HB1xp67_ASAP7_75t_R U5__gate_2 (.A(n4), .Y(U5__delay_1));
    HB1xp67_ASAP7_75t_R U5__gate_4 (.A(U5__delay_1), .Y(U5__delay_3));
    HB1xp67_ASAP7_75t_R U5__gate_6 (.A(U5__delay_3), .Y(U5__delay_5));
    HB1xp67_ASAP7_75t_R U5__gate_7 (.A(U5__delay_5), .Y(n5));

    HB1xp67_ASAP7_75t_R U6__gate_1 (.A(n7), .Y(out_0_));

endmodule

module delay_line_clk_0 ( in, out );

  input in;
  output out;
  wire   out;
  assign out = in;

endmodule

module flop_0 ( rst, clk, D, Q );
    wire Q_reg__qn_1, pdk_tie_high;

  input rst, clk, D;
  output Q;

    DFFASRHQNx1_ASAP7_75t_R Q_reg__ff_2 (.D(D), .CLK(clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(Q_reg__qn_1));
    INVx1_ASAP7_75t_R Q_reg__gate_3 (.A(Q_reg__qn_1), .Y(Q));

    TIEHIx1_ASAP7_75t_R tie_high (.H(pdk_tie_high));
endmodule

module ctrl_block_0 ( rst, Lreq, Lack, Rreq, Rack, delay_i, delay_o, clk );
    wire U1__term_1, U1__term_2;

  input rst, Lreq, Rack, delay_i;
  output Lack, Rreq, delay_o, clk;
  wire   delay_i, _dff, n1, n2, n3;
  assign Rreq = delay_i;
  assign Lack = delay_i;

    INVx1_ASAP7_75t_R U1__gate_3 (.A(rst), .Y(U1__term_2));
    OR2x2_ASAP7_75t_R U1__gate_4 (.A(U1__term_2), .B(n1), .Y(U1__term_1));
    INVx1_ASAP7_75t_R U1__gate_5 (.A(U1__term_1), .Y(clk));

    AOI33xp33_ASAP7_75t_R U2__gate_1 (.A1(delay_o), .A2(n2), .A3(Rack), .B1(n3), .B2(_dff), .B3(Lreq), .Y(n1));

    INVx1_ASAP7_75t_R U3__gate_1 (.A(Rack), .Y(n3));

    INVx1_ASAP7_75t_R U4__gate_1 (.A(Lreq), .Y(n2));

    INVx1_ASAP7_75t_R U5__gate_1 (.A(delay_o), .Y(_dff));
  flop_0 flop_inst ( .rst(rst), .clk(clk), .D(_dff), .Q(delay_o) );

endmodule

module click_ctrl_0 ( rst, Lreq, Lack, Rreq, Rack, clk );

  input rst, Lreq, Rack;
  output Lack, Rreq, clk;
  wire   dli, dlo;

  delay_line_clk_0 clk_delay_inst ( .in(dlo), .out(dli) );
  ctrl_block_0 ctrl_block_inst ( .rst(rst), .Lreq(Lreq), .Lack(Lack), .Rreq(
        Rreq), .Rack(Rack), .delay_i(dli), .delay_o(dlo), .clk(clk) );

endmodule

module delay_line_clk_1 ( in, out );

  input in;
  output out;
  wire   out;
  assign out = in;

endmodule

module flop_1 ( rst, clk, D, Q );
    wire Q_reg__qn_1, pdk_tie_high;

  input rst, clk, D;
  output Q;

    DFFASRHQNx1_ASAP7_75t_R Q_reg__ff_2 (.D(D), .CLK(clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(Q_reg__qn_1));
    INVx1_ASAP7_75t_R Q_reg__gate_3 (.A(Q_reg__qn_1), .Y(Q));

    TIEHIx1_ASAP7_75t_R tie_high (.H(pdk_tie_high));
endmodule

module ctrl_block_1 ( rst, Lreq, Lack, Rreq, Rack, delay_i, delay_o, clk );
    wire U1__term_1, U1__term_2;

  input rst, Lreq, Rack, delay_i;
  output Lack, Rreq, delay_o, clk;
  wire   delay_i, _dff, n1, n2, n3;
  assign Rreq = delay_i;
  assign Lack = delay_i;

    INVx1_ASAP7_75t_R U1__gate_3 (.A(rst), .Y(U1__term_2));
    OR2x2_ASAP7_75t_R U1__gate_4 (.A(U1__term_2), .B(n1), .Y(U1__term_1));
    INVx1_ASAP7_75t_R U1__gate_5 (.A(U1__term_1), .Y(clk));

    AOI33xp33_ASAP7_75t_R U2__gate_1 (.A1(delay_o), .A2(n2), .A3(Rack), .B1(n3), .B2(_dff), .B3(Lreq), .Y(n1));

    INVx1_ASAP7_75t_R U3__gate_1 (.A(Rack), .Y(n3));

    INVx1_ASAP7_75t_R U4__gate_1 (.A(Lreq), .Y(n2));

    INVx1_ASAP7_75t_R U5__gate_1 (.A(delay_o), .Y(_dff));
  flop_1 flop_inst ( .rst(rst), .clk(clk), .D(_dff), .Q(delay_o) );

endmodule

module click_ctrl_1 ( rst, Lreq, Lack, Rreq, Rack, clk );

  input rst, Lreq, Rack;
  output Lack, Rreq, clk;
  wire   dli, dlo;

  delay_line_clk_1 clk_delay_inst ( .in(dlo), .out(dli) );
  ctrl_block_1 ctrl_block_inst ( .rst(rst), .Lreq(Lreq), .Lack(Lack), .Rreq(
        Rreq), .Rack(Rack), .delay_i(dli), .delay_o(dlo), .clk(clk) );

endmodule

module cla_adder_async ( rst, a_i, b_i, sum_o, Lreq, Lack, Rreq, Rack );
    wire stage_register_0_Q_reg63__qn_1, stage_register_0_Q_reg62__qn_1, stage_register_0_Q_reg61__qn_1, stage_register_0_Q_reg60__qn_1, stage_register_0_Q_reg59__qn_1, stage_register_0_Q_reg58__qn_1;
    wire stage_register_0_Q_reg57__qn_1, stage_register_0_Q_reg56__qn_1, stage_register_0_Q_reg55__qn_1, stage_register_0_Q_reg54__qn_1, stage_register_0_Q_reg53__qn_1, stage_register_0_Q_reg52__qn_1;
    wire stage_register_0_Q_reg51__qn_1, stage_register_0_Q_reg50__qn_1, stage_register_0_Q_reg49__qn_1, stage_register_0_Q_reg48__qn_1, stage_register_0_Q_reg47__qn_1, stage_register_0_Q_reg46__qn_1;
    wire stage_register_0_Q_reg45__qn_1, stage_register_0_Q_reg44__qn_1, stage_register_0_Q_reg43__qn_1, stage_register_0_Q_reg42__qn_1, stage_register_0_Q_reg41__qn_1, stage_register_0_Q_reg40__qn_1;
    wire stage_register_0_Q_reg39__qn_1, stage_register_0_Q_reg38__qn_1, stage_register_0_Q_reg37__qn_1, stage_register_0_Q_reg36__qn_1, stage_register_0_Q_reg35__qn_1, stage_register_0_Q_reg34__qn_1;
    wire stage_register_0_Q_reg33__qn_1, stage_register_0_Q_reg32__qn_1, stage_register_0_Q_reg31__qn_1, stage_register_0_Q_reg30__qn_1, stage_register_0_Q_reg29__qn_1, stage_register_0_Q_reg28__qn_1;
    wire stage_register_0_Q_reg27__qn_1, stage_register_0_Q_reg26__qn_1, stage_register_0_Q_reg25__qn_1, stage_register_0_Q_reg24__qn_1, stage_register_0_Q_reg23__qn_1, stage_register_0_Q_reg22__qn_1;
    wire stage_register_0_Q_reg21__qn_1, stage_register_0_Q_reg20__qn_1, stage_register_0_Q_reg19__qn_1, stage_register_0_Q_reg18__qn_1, stage_register_0_Q_reg17__qn_1, stage_register_0_Q_reg16__qn_1;
    wire stage_register_0_Q_reg15__qn_1, stage_register_0_Q_reg14__qn_1, stage_register_0_Q_reg13__qn_1, stage_register_0_Q_reg12__qn_1, stage_register_0_Q_reg11__qn_1, stage_register_0_Q_reg10__qn_1;
    wire stage_register_0_Q_reg9__qn_1, stage_register_0_Q_reg8__qn_1, stage_register_0_Q_reg7__qn_1, stage_register_0_Q_reg6__qn_1, stage_register_0_Q_reg5__qn_1, stage_register_0_Q_reg4__qn_1;
    wire stage_register_0_Q_reg3__qn_1, stage_register_0_Q_reg2__qn_1, stage_register_0_Q_reg1__qn_1, stage_register_0_Q_reg__qn_1, stage_register_1_Q_reg31__qn_1, stage_register_1_Q_reg30__qn_1;
    wire stage_register_1_Q_reg29__qn_1, stage_register_1_Q_reg28__qn_1, stage_register_1_Q_reg27__qn_1, stage_register_1_Q_reg26__qn_1, stage_register_1_Q_reg25__qn_1, stage_register_1_Q_reg24__qn_1;
    wire stage_register_1_Q_reg23__qn_1, stage_register_1_Q_reg22__qn_1, stage_register_1_Q_reg21__qn_1, stage_register_1_Q_reg20__qn_1, stage_register_1_Q_reg19__qn_1, stage_register_1_Q_reg18__qn_1;
    wire stage_register_1_Q_reg17__qn_1, stage_register_1_Q_reg16__qn_1, stage_register_1_Q_reg15__qn_1, stage_register_1_Q_reg14__qn_1, stage_register_1_Q_reg13__qn_1, stage_register_1_Q_reg12__qn_1;
    wire stage_register_1_Q_reg11__qn_1, stage_register_1_Q_reg10__qn_1, stage_register_1_Q_reg9__qn_1, stage_register_1_Q_reg8__qn_1, stage_register_1_Q_reg7__qn_1, stage_register_1_Q_reg6__qn_1;
    wire stage_register_1_Q_reg5__qn_1, stage_register_1_Q_reg4__qn_1, stage_register_1_Q_reg3__qn_1, stage_register_1_Q_reg2__qn_1, stage_register_1_Q_reg1__qn_1, stage_register_1_Q_reg__qn_1;
    wire stage_comb_logic_0_U1100__term_1, stage_comb_logic_0_U1100__term_2, stage_comb_logic_0_U187__term_1, stage_comb_logic_0_U187__term_2, stage_comb_logic_0_U176__term_1, stage_comb_logic_0_U176__term_2;
    wire stage_comb_logic_0_U173__term_1, stage_comb_logic_0_U173__term_2, stage_comb_logic_0_U173__term_3, stage_comb_logic_0_U158__term_1, stage_comb_logic_0_U158__term_2, stage_comb_logic_0_U130__term_1;
    wire stage_comb_logic_0_U130__term_2, stage_comb_logic_0_U126__term_1, stage_comb_logic_0_U126__term_2, stage_comb_logic_0_U123__term_1, stage_comb_logic_0_U123__term_2, stage_comb_logic_0_U121__term_1;
    wire stage_comb_logic_0_U121__term_2, stage_comb_logic_0_U121__term_3, stage_comb_logic_0_U121__term_4, stage_comb_logic_0_U115__term_1, stage_comb_logic_0_U115__term_2, stage_comb_logic_0_U114__term_1;
    wire stage_comb_logic_0_U114__term_2, stage_comb_logic_0_U114__term_3, stage_comb_logic_0_U108__term_1, stage_comb_logic_0_U108__term_2, stage_comb_logic_0_U107__term_1, stage_comb_logic_0_U107__term_2;
    wire stage_comb_logic_0_U96__term_1, stage_comb_logic_0_U96__term_2, stage_comb_logic_0_U94__term_1, stage_comb_logic_0_U94__term_2, stage_comb_logic_0_U94__term_3, stage_comb_logic_0_U61__term_1;
    wire stage_comb_logic_0_U61__term_2, stage_comb_logic_0_U53__term_1, stage_comb_logic_0_U53__term_2, stage_comb_logic_0_U52__term_1, stage_comb_logic_0_U52__term_2, stage_comb_logic_0_U47__term_1;
    wire stage_comb_logic_0_U47__term_2, stage_comb_logic_0_U23__term_1, stage_comb_logic_0_U23__term_2, stage_comb_logic_0_U17__term_1, stage_comb_logic_0_U17__term_2, stage_comb_logic_0_U17__term_3;
    wire stage_comb_logic_0_U13__term_1, stage_comb_logic_0_U13__term_2, stage_comb_logic_0_U12__term_1, stage_comb_logic_0_U12__term_2, stage_comb_logic_0_U10__term_1, stage_comb_logic_0_U10__term_2;
    wire stage_comb_logic_0_U9__term_1, stage_comb_logic_0_U9__term_2, pdk_tie_high;

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] sum_o;
  input rst, Lreq, Rack;
  output Lack, Rreq;
  wire   stage_comb_logic_0_n110, stage_comb_logic_0_n98,
         stage_comb_logic_0_n97, stage_comb_logic_0_n92,
         stage_comb_logic_0_n88, stage_comb_logic_0_n95,
         stage_comb_logic_0_n87, stage_comb_logic_0_n96,
         stage_comb_logic_0_n89, stage_comb_logic_0_net993,
         stage_comb_logic_0_n85, stage_comb_logic_0_n81,
         stage_comb_logic_0_n79, stage_comb_logic_0_net1025,
         stage_comb_logic_0_n80, stage_comb_logic_0_n82,
         stage_comb_logic_0_n77, stage_comb_logic_0_n78,
         stage_comb_logic_0_net1036, stage_comb_logic_0_net1041,
         stage_comb_logic_0_n74, stage_comb_logic_0_n99,
         stage_comb_logic_0_net1088, stage_comb_logic_0_net1094,
         stage_comb_logic_0_net870, stage_comb_logic_0_n70,
         stage_comb_logic_0_n69, stage_comb_logic_0_net1152,
         stage_comb_logic_0_net1151, stage_comb_logic_0_net1160,
         stage_comb_logic_0_net1024, stage_comb_logic_0_net1166,
         stage_comb_logic_0_net1180, stage_comb_logic_0_net1179,
         stage_comb_logic_0_net1184, stage_comb_logic_0_net1183,
         stage_comb_logic_0_net1191, stage_comb_logic_0_net1196,
         stage_comb_logic_0_net891, stage_comb_logic_0_net1357,
         stage_comb_logic_0_n66, stage_comb_logic_0_net1389,
         stage_comb_logic_0_net1388, stage_comb_logic_0_n63,
         stage_comb_logic_0_n61, stage_comb_logic_0_n60,
         stage_comb_logic_0_net1280, stage_comb_logic_0_net1275,
         stage_comb_logic_0_n67, stage_comb_logic_0_net969,
         stage_comb_logic_0_n58, stage_comb_logic_0_n91,
         stage_comb_logic_0_n57, stage_comb_logic_0_n59,
         stage_comb_logic_0_net1078, stage_comb_logic_0_n65,
         stage_comb_logic_0_n54, stage_comb_logic_0_n90,
         stage_comb_logic_0_n73, stage_comb_logic_0_n71,
         stage_comb_logic_0_n72, stage_comb_logic_0_n94,
         stage_comb_logic_0_n51, stage_comb_logic_0_n55,
         stage_comb_logic_0_n76, stage_comb_logic_0_n75,
         stage_comb_logic_0_n84, stage_comb_logic_0_n53,
         stage_comb_logic_0_n50, stage_comb_logic_0_n52,
         stage_comb_logic_0_net1134, stage_comb_logic_0_n56,
         stage_comb_logic_0_net1276, stage_comb_logic_0_n62,
         stage_comb_logic_0_net880, stage_comb_logic_0_net879,
         stage_comb_logic_0_n49, stage_comb_logic_0_n48,
         stage_comb_logic_0_net1383, stage_comb_logic_0_net1231,
         stage_comb_logic_0_net1261, stage_comb_logic_0_net1260,
         stage_comb_logic_0_n46, stage_comb_logic_0_net925,
         stage_comb_logic_0_n45, stage_comb_logic_0_net1705,
         stage_comb_logic_0_net1771, stage_comb_logic_0_net1402,
         stage_comb_logic_0_net1543, stage_comb_logic_0_net1740,
         stage_comb_logic_0_net1738, stage_comb_logic_0_net1171,
         stage_comb_logic_0_net1170, stage_comb_logic_0_n64,
         stage_comb_logic_0_net911, stage_comb_logic_0_net1496,
         stage_comb_logic_0_net1495, stage_comb_logic_0_n47,
         stage_comb_logic_0_net1324, stage_comb_logic_0_net1403,
         stage_comb_logic_0_net1701, stage_comb_logic_0_net1933,
         stage_comb_logic_0_net1174, stage_comb_logic_0_net1176,
         stage_comb_logic_0_net1942, stage_comb_logic_0_net888,
         stage_comb_logic_0_net914, stage_comb_logic_0_net1362,
         stage_comb_logic_0_net955, stage_comb_logic_0_net1187,
         stage_comb_logic_0_net884, stage_comb_logic_0_net883,
         stage_comb_logic_0_net1167, stage_comb_logic_0_net1635,
         stage_comb_logic_0_net1613, stage_comb_logic_0_net2072,
         stage_comb_logic_0_net1627, stage_comb_logic_0_net1630,
         stage_comb_logic_0_net2061, stage_comb_logic_0_net1541,
         stage_comb_logic_0_n40, stage_comb_logic_0_net1742,
         stage_comb_logic_0_n44, stage_comb_logic_0_net1501,
         stage_comb_logic_0_n43, stage_comb_logic_0_net1745,
         stage_comb_logic_0_net1133, stage_comb_logic_0_net1509,
         stage_comb_logic_0_n41, stage_comb_logic_0_C_20_1,
         stage_comb_logic_0_n39, stage_comb_logic_0_net1108,
         stage_comb_logic_0_n42, stage_comb_logic_0_net874,
         stage_comb_logic_0_net1333, stage_comb_logic_0_C_25_1,
         stage_comb_logic_0_n38, stage_comb_logic_0_n37,
         stage_comb_logic_0_n36, stage_comb_logic_0_net1762,
         stage_comb_logic_0_net1911, stage_comb_logic_0_n34,
         stage_comb_logic_0_net1935, stage_comb_logic_0_net1741,
         stage_comb_logic_0_net1737, stage_comb_logic_0_net1744,
         stage_comb_logic_0_net1743, stage_comb_logic_0_net1756,
         stage_comb_logic_0_net1758, stage_comb_logic_0_net1175,
         stage_comb_logic_0_net1912, stage_comb_logic_0_n35,
         stage_comb_logic_0_net1937, stage_comb_logic_0_net1750,
         stage_comb_logic_0_net1769, stage_comb_logic_0_net1751,
         stage_comb_logic_0_n33, stage_comb_logic_0_n32,
         stage_comb_logic_0_net1052, stage_comb_logic_0_net1192,
         stage_comb_logic_0_n29, stage_comb_logic_0_net1583,
         stage_comb_logic_0_net1092, stage_comb_logic_0_n23,
         stage_comb_logic_0_net893, stage_comb_logic_0_net1095,
         stage_comb_logic_0_n24, stage_comb_logic_0_n21,
         stage_comb_logic_0_n28, stage_comb_logic_0_n25,
         stage_comb_logic_0_n27, stage_comb_logic_0_net1328,
         stage_comb_logic_0_net1631, stage_comb_logic_0_net992,
         stage_comb_logic_0_net994, stage_comb_logic_0_n31,
         stage_comb_logic_0_net986, stage_comb_logic_0_C_4_1,
         stage_comb_logic_0_n22, stage_comb_logic_0_net1086,
         stage_comb_logic_0_n30, stage_comb_logic_0_net1101,
         stage_comb_logic_0_n26, stage_comb_logic_0_net1042,
         stage_comb_logic_0_net1035, stage_comb_logic_0_net1638,
         stage_comb_logic_0_n18, stage_comb_logic_0_net1159,
         stage_comb_logic_0_net1037, stage_comb_logic_0_net1030,
         stage_comb_logic_0_net1394, stage_comb_logic_0_net1395,
         stage_comb_logic_0_n20, stage_comb_logic_0_n19,
         stage_comb_logic_0_net1098, stage_comb_logic_0_net1594,
         stage_comb_logic_0_net2103, stage_comb_logic_0_net2026,
         stage_comb_logic_0_n17, stage_comb_logic_0_n10,
         stage_comb_logic_0_n16, stage_comb_logic_0_n14,
         stage_comb_logic_0_n15, stage_comb_logic_0_net1614,
         stage_comb_logic_0_n13, stage_comb_logic_0_net1001,
         stage_comb_logic_0_n12, stage_comb_logic_0_n11, stage_comb_logic_0_n8,
         stage_comb_logic_0_net1590, stage_comb_logic_0_n9,
         stage_comb_logic_0_n2, stage_comb_logic_0_n7,
         stage_comb_logic_0_net2060, stage_comb_logic_0_n6,
         stage_comb_logic_0_net1634, stage_comb_logic_0_net2087,
         stage_comb_logic_0_n5, stage_comb_logic_0_n3, stage_comb_logic_0_n4,
         stage_comb_logic_0_net2073, stage_comb_logic_0_net892,
         stage_comb_logic_0_net2068, stage_comb_logic_0_net1375,
         stage_comb_logic_0_net1103, stage_comb_logic_0_net1105,
         stage_comb_logic_0_net1099, stage_comb_logic_0_net1615,
         stage_comb_logic_0_net1591, stage_comb_logic_0_net1582,
         stage_comb_logic_0_net877, stage_comb_logic_0_n83,
         stage_comb_logic_0_net1109, stage_comb_logic_0_n86,
         stage_comb_logic_0_C_1, stage_comb_logic_0_C_2,
         stage_comb_logic_0_C_3, stage_comb_logic_0_C_6,
         stage_comb_logic_0_C_8, stage_comb_logic_0_C_10,
         stage_comb_logic_0_C_15, stage_comb_logic_0_n68,
         stage_comb_logic_0_n93,
         stage_comb_logic_0_FA_0__gen_adder_adder_inst_n3,
         stage_comb_logic_0_FA_0__gen_adder_adder_inst_n2,
         stage_comb_logic_0_FA_0__gen_adder_adder_inst_n1,
         stage_comb_logic_0_FA_1__gen_adder_adder_inst_net1156,
         stage_comb_logic_0_FA_1__gen_adder_adder_inst_net1155,
         stage_comb_logic_0_FA_1__gen_adder_adder_inst_net997,
         stage_comb_logic_0_FA_25__gen_adder_adder_inst_n1,
         stage_comb_logic_0_FA_28__gen_adder_adder_inst_n1,
         stage_comb_logic_0_FA_29__gen_adder_adder_inst_n1,
         stage_comb_logic_0_FA_30__gen_adder_adder_inst_n1, stage_0_clk,
         stage_0_Rreq, stage_0_Rack, stage_1_clk, stage_0_Lreq_delay;
  wire   [64:1] stage_datapath_out;
  wire   [31:0] comb_datapath_out;
  wire   [31:26] stage_comb_logic_0_C;
  wire   [30:1] stage_comb_logic_0_P;
  wire   [30:0] stage_comb_logic_0_G;

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg63__ff_2 (.D(b_i[0]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg63__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg63__gate_3 (.A(stage_register_0_Q_reg63__qn_1), .Y(stage_datapath_out[1]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg62__ff_2 (.D(b_i[1]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg62__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg62__gate_3 (.A(stage_register_0_Q_reg62__qn_1), .Y(stage_datapath_out[2]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg61__ff_2 (.D(b_i[2]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg61__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg61__gate_3 (.A(stage_register_0_Q_reg61__qn_1), .Y(stage_datapath_out[3]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg60__ff_2 (.D(b_i[3]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg60__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg60__gate_3 (.A(stage_register_0_Q_reg60__qn_1), .Y(stage_datapath_out[4]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg59__ff_2 (.D(b_i[4]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg59__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg59__gate_3 (.A(stage_register_0_Q_reg59__qn_1), .Y(stage_datapath_out[5]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg58__ff_2 (.D(b_i[5]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg58__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg58__gate_3 (.A(stage_register_0_Q_reg58__qn_1), .Y(stage_datapath_out[6]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg57__ff_2 (.D(b_i[6]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg57__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg57__gate_3 (.A(stage_register_0_Q_reg57__qn_1), .Y(stage_datapath_out[7]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg56__ff_2 (.D(b_i[7]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg56__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg56__gate_3 (.A(stage_register_0_Q_reg56__qn_1), .Y(stage_datapath_out[8]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg55__ff_2 (.D(b_i[8]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg55__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg55__gate_3 (.A(stage_register_0_Q_reg55__qn_1), .Y(stage_datapath_out[9]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg54__ff_2 (.D(b_i[9]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg54__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg54__gate_3 (.A(stage_register_0_Q_reg54__qn_1), .Y(stage_datapath_out[10]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg53__ff_2 (.D(b_i[10]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg53__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg53__gate_3 (.A(stage_register_0_Q_reg53__qn_1), .Y(stage_datapath_out[11]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg52__ff_2 (.D(b_i[11]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg52__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg52__gate_3 (.A(stage_register_0_Q_reg52__qn_1), .Y(stage_datapath_out[12]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg51__ff_2 (.D(b_i[12]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg51__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg51__gate_3 (.A(stage_register_0_Q_reg51__qn_1), .Y(stage_datapath_out[13]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg50__ff_2 (.D(b_i[13]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg50__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg50__gate_3 (.A(stage_register_0_Q_reg50__qn_1), .Y(stage_datapath_out[14]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg49__ff_2 (.D(b_i[14]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg49__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg49__gate_3 (.A(stage_register_0_Q_reg49__qn_1), .Y(stage_datapath_out[15]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg48__ff_2 (.D(b_i[15]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg48__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg48__gate_3 (.A(stage_register_0_Q_reg48__qn_1), .Y(stage_datapath_out[16]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg47__ff_2 (.D(b_i[16]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg47__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg47__gate_3 (.A(stage_register_0_Q_reg47__qn_1), .Y(stage_datapath_out[17]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg46__ff_2 (.D(b_i[17]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg46__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg46__gate_3 (.A(stage_register_0_Q_reg46__qn_1), .Y(stage_datapath_out[18]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg45__ff_2 (.D(b_i[18]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg45__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg45__gate_3 (.A(stage_register_0_Q_reg45__qn_1), .Y(stage_datapath_out[19]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg44__ff_2 (.D(b_i[19]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg44__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg44__gate_3 (.A(stage_register_0_Q_reg44__qn_1), .Y(stage_datapath_out[20]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg43__ff_2 (.D(b_i[20]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg43__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg43__gate_3 (.A(stage_register_0_Q_reg43__qn_1), .Y(stage_datapath_out[21]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg42__ff_2 (.D(b_i[21]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg42__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg42__gate_3 (.A(stage_register_0_Q_reg42__qn_1), .Y(stage_datapath_out[22]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg41__ff_2 (.D(b_i[22]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg41__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg41__gate_3 (.A(stage_register_0_Q_reg41__qn_1), .Y(stage_datapath_out[23]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg40__ff_2 (.D(b_i[23]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg40__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg40__gate_3 (.A(stage_register_0_Q_reg40__qn_1), .Y(stage_datapath_out[24]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg39__ff_2 (.D(b_i[24]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg39__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg39__gate_3 (.A(stage_register_0_Q_reg39__qn_1), .Y(stage_datapath_out[25]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg38__ff_2 (.D(b_i[25]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg38__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg38__gate_3 (.A(stage_register_0_Q_reg38__qn_1), .Y(stage_datapath_out[26]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg37__ff_2 (.D(b_i[26]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg37__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg37__gate_3 (.A(stage_register_0_Q_reg37__qn_1), .Y(stage_datapath_out[27]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg36__ff_2 (.D(b_i[27]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg36__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg36__gate_3 (.A(stage_register_0_Q_reg36__qn_1), .Y(stage_datapath_out[28]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg35__ff_2 (.D(b_i[28]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg35__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg35__gate_3 (.A(stage_register_0_Q_reg35__qn_1), .Y(stage_datapath_out[29]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg34__ff_2 (.D(b_i[29]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg34__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg34__gate_3 (.A(stage_register_0_Q_reg34__qn_1), .Y(stage_datapath_out[30]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg33__ff_2 (.D(b_i[30]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg33__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg33__gate_3 (.A(stage_register_0_Q_reg33__qn_1), .Y(stage_datapath_out[31]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg32__ff_2 (.D(b_i[31]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg32__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg32__gate_3 (.A(stage_register_0_Q_reg32__qn_1), .Y(stage_datapath_out[32]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg31__ff_2 (.D(a_i[0]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg31__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg31__gate_3 (.A(stage_register_0_Q_reg31__qn_1), .Y(stage_datapath_out[33]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg30__ff_2 (.D(a_i[1]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg30__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg30__gate_3 (.A(stage_register_0_Q_reg30__qn_1), .Y(stage_datapath_out[34]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg29__ff_2 (.D(a_i[2]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg29__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg29__gate_3 (.A(stage_register_0_Q_reg29__qn_1), .Y(stage_datapath_out[35]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg28__ff_2 (.D(a_i[3]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg28__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg28__gate_3 (.A(stage_register_0_Q_reg28__qn_1), .Y(stage_datapath_out[36]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg27__ff_2 (.D(a_i[4]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg27__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg27__gate_3 (.A(stage_register_0_Q_reg27__qn_1), .Y(stage_datapath_out[37]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg26__ff_2 (.D(a_i[5]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg26__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg26__gate_3 (.A(stage_register_0_Q_reg26__qn_1), .Y(stage_datapath_out[38]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg25__ff_2 (.D(a_i[6]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg25__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg25__gate_3 (.A(stage_register_0_Q_reg25__qn_1), .Y(stage_datapath_out[39]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg24__ff_2 (.D(a_i[7]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg24__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg24__gate_3 (.A(stage_register_0_Q_reg24__qn_1), .Y(stage_datapath_out[40]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg23__ff_2 (.D(a_i[8]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg23__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg23__gate_3 (.A(stage_register_0_Q_reg23__qn_1), .Y(stage_datapath_out[41]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg22__ff_2 (.D(a_i[9]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg22__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg22__gate_3 (.A(stage_register_0_Q_reg22__qn_1), .Y(stage_datapath_out[42]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg21__ff_2 (.D(a_i[10]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg21__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg21__gate_3 (.A(stage_register_0_Q_reg21__qn_1), .Y(stage_datapath_out[43]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg20__ff_2 (.D(a_i[11]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg20__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg20__gate_3 (.A(stage_register_0_Q_reg20__qn_1), .Y(stage_datapath_out[44]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg19__ff_2 (.D(a_i[12]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg19__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg19__gate_3 (.A(stage_register_0_Q_reg19__qn_1), .Y(stage_datapath_out[45]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg18__ff_2 (.D(a_i[13]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg18__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg18__gate_3 (.A(stage_register_0_Q_reg18__qn_1), .Y(stage_datapath_out[46]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg17__ff_2 (.D(a_i[14]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg17__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg17__gate_3 (.A(stage_register_0_Q_reg17__qn_1), .Y(stage_datapath_out[47]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg16__ff_2 (.D(a_i[15]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg16__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg16__gate_3 (.A(stage_register_0_Q_reg16__qn_1), .Y(stage_datapath_out[48]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg15__ff_2 (.D(a_i[16]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg15__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg15__gate_3 (.A(stage_register_0_Q_reg15__qn_1), .Y(stage_datapath_out[49]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg14__ff_2 (.D(a_i[17]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg14__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg14__gate_3 (.A(stage_register_0_Q_reg14__qn_1), .Y(stage_datapath_out[50]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg13__ff_2 (.D(a_i[18]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg13__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg13__gate_3 (.A(stage_register_0_Q_reg13__qn_1), .Y(stage_datapath_out[51]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg12__ff_2 (.D(a_i[19]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg12__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg12__gate_3 (.A(stage_register_0_Q_reg12__qn_1), .Y(stage_datapath_out[52]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg11__ff_2 (.D(a_i[20]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg11__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg11__gate_3 (.A(stage_register_0_Q_reg11__qn_1), .Y(stage_datapath_out[53]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg10__ff_2 (.D(a_i[21]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg10__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg10__gate_3 (.A(stage_register_0_Q_reg10__qn_1), .Y(stage_datapath_out[54]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg9__ff_2 (.D(a_i[22]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg9__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg9__gate_3 (.A(stage_register_0_Q_reg9__qn_1), .Y(stage_datapath_out[55]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg8__ff_2 (.D(a_i[23]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg8__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg8__gate_3 (.A(stage_register_0_Q_reg8__qn_1), .Y(stage_datapath_out[56]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg7__ff_2 (.D(a_i[24]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg7__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg7__gate_3 (.A(stage_register_0_Q_reg7__qn_1), .Y(stage_datapath_out[57]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg6__ff_2 (.D(a_i[25]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg6__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg6__gate_3 (.A(stage_register_0_Q_reg6__qn_1), .Y(stage_datapath_out[58]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg5__ff_2 (.D(a_i[26]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg5__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg5__gate_3 (.A(stage_register_0_Q_reg5__qn_1), .Y(stage_datapath_out[59]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg4__ff_2 (.D(a_i[27]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg4__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg4__gate_3 (.A(stage_register_0_Q_reg4__qn_1), .Y(stage_datapath_out[60]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg3__ff_2 (.D(a_i[28]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg3__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg3__gate_3 (.A(stage_register_0_Q_reg3__qn_1), .Y(stage_datapath_out[61]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg2__ff_2 (.D(a_i[29]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg2__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg2__gate_3 (.A(stage_register_0_Q_reg2__qn_1), .Y(stage_datapath_out[62]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg1__ff_2 (.D(a_i[30]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg1__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg1__gate_3 (.A(stage_register_0_Q_reg1__qn_1), .Y(stage_datapath_out[63]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg__ff_2 (.D(a_i[31]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg__gate_3 (.A(stage_register_0_Q_reg__qn_1), .Y(stage_datapath_out[64]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg31__ff_2 (.D(comb_datapath_out[0]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg31__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg31__gate_3 (.A(stage_register_1_Q_reg31__qn_1), .Y(sum_o[0]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg30__ff_2 (.D(comb_datapath_out[1]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg30__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg30__gate_3 (.A(stage_register_1_Q_reg30__qn_1), .Y(sum_o[1]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg29__ff_2 (.D(comb_datapath_out[2]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg29__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg29__gate_3 (.A(stage_register_1_Q_reg29__qn_1), .Y(sum_o[2]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg28__ff_2 (.D(comb_datapath_out[3]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg28__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg28__gate_3 (.A(stage_register_1_Q_reg28__qn_1), .Y(sum_o[3]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg27__ff_2 (.D(comb_datapath_out[4]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg27__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg27__gate_3 (.A(stage_register_1_Q_reg27__qn_1), .Y(sum_o[4]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg26__ff_2 (.D(comb_datapath_out[5]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg26__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg26__gate_3 (.A(stage_register_1_Q_reg26__qn_1), .Y(sum_o[5]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg25__ff_2 (.D(comb_datapath_out[6]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg25__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg25__gate_3 (.A(stage_register_1_Q_reg25__qn_1), .Y(sum_o[6]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg24__ff_2 (.D(comb_datapath_out[7]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg24__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg24__gate_3 (.A(stage_register_1_Q_reg24__qn_1), .Y(sum_o[7]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg23__ff_2 (.D(comb_datapath_out[8]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg23__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg23__gate_3 (.A(stage_register_1_Q_reg23__qn_1), .Y(sum_o[8]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg22__ff_2 (.D(comb_datapath_out[9]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg22__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg22__gate_3 (.A(stage_register_1_Q_reg22__qn_1), .Y(sum_o[9]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg21__ff_2 (.D(comb_datapath_out[10]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg21__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg21__gate_3 (.A(stage_register_1_Q_reg21__qn_1), .Y(sum_o[10]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg20__ff_2 (.D(comb_datapath_out[11]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg20__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg20__gate_3 (.A(stage_register_1_Q_reg20__qn_1), .Y(sum_o[11]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg19__ff_2 (.D(comb_datapath_out[12]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg19__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg19__gate_3 (.A(stage_register_1_Q_reg19__qn_1), .Y(sum_o[12]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg18__ff_2 (.D(comb_datapath_out[13]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg18__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg18__gate_3 (.A(stage_register_1_Q_reg18__qn_1), .Y(sum_o[13]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg17__ff_2 (.D(comb_datapath_out[14]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg17__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg17__gate_3 (.A(stage_register_1_Q_reg17__qn_1), .Y(sum_o[14]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg16__ff_2 (.D(comb_datapath_out[15]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg16__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg16__gate_3 (.A(stage_register_1_Q_reg16__qn_1), .Y(sum_o[15]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg15__ff_2 (.D(comb_datapath_out[16]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg15__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg15__gate_3 (.A(stage_register_1_Q_reg15__qn_1), .Y(sum_o[16]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg14__ff_2 (.D(comb_datapath_out[17]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg14__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg14__gate_3 (.A(stage_register_1_Q_reg14__qn_1), .Y(sum_o[17]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg13__ff_2 (.D(comb_datapath_out[18]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg13__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg13__gate_3 (.A(stage_register_1_Q_reg13__qn_1), .Y(sum_o[18]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg12__ff_2 (.D(comb_datapath_out[19]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg12__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg12__gate_3 (.A(stage_register_1_Q_reg12__qn_1), .Y(sum_o[19]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg11__ff_2 (.D(comb_datapath_out[20]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg11__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg11__gate_3 (.A(stage_register_1_Q_reg11__qn_1), .Y(sum_o[20]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg10__ff_2 (.D(comb_datapath_out[21]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg10__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg10__gate_3 (.A(stage_register_1_Q_reg10__qn_1), .Y(sum_o[21]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg9__ff_2 (.D(comb_datapath_out[22]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg9__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg9__gate_3 (.A(stage_register_1_Q_reg9__qn_1), .Y(sum_o[22]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg8__ff_2 (.D(comb_datapath_out[23]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg8__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg8__gate_3 (.A(stage_register_1_Q_reg8__qn_1), .Y(sum_o[23]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg7__ff_2 (.D(comb_datapath_out[24]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg7__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg7__gate_3 (.A(stage_register_1_Q_reg7__qn_1), .Y(sum_o[24]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg6__ff_2 (.D(comb_datapath_out[25]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg6__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg6__gate_3 (.A(stage_register_1_Q_reg6__qn_1), .Y(sum_o[25]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg5__ff_2 (.D(comb_datapath_out[26]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg5__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg5__gate_3 (.A(stage_register_1_Q_reg5__qn_1), .Y(sum_o[26]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg4__ff_2 (.D(comb_datapath_out[27]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg4__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg4__gate_3 (.A(stage_register_1_Q_reg4__qn_1), .Y(sum_o[27]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg3__ff_2 (.D(comb_datapath_out[28]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg3__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg3__gate_3 (.A(stage_register_1_Q_reg3__qn_1), .Y(sum_o[28]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg2__ff_2 (.D(comb_datapath_out[29]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg2__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg2__gate_3 (.A(stage_register_1_Q_reg2__qn_1), .Y(sum_o[29]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg1__ff_2 (.D(comb_datapath_out[30]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg1__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg1__gate_3 (.A(stage_register_1_Q_reg1__qn_1), .Y(sum_o[30]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg__ff_2 (.D(comb_datapath_out[31]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg__gate_3 (.A(stage_register_1_Q_reg__qn_1), .Y(sum_o[31]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1125__gate_1 (.A(stage_comb_logic_0_n98), .B(stage_comb_logic_0_P[2]), .Y(comb_datapath_out[2]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U334__gate_1 (.A(stage_datapath_out[3]), .B(stage_datapath_out[35]), .Y(stage_comb_logic_0_G[2]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U275__gate_1 (.A(stage_datapath_out[35]), .B(stage_datapath_out[3]), .Y(stage_comb_logic_0_P[2]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1124__gate_1 (.A(stage_comb_logic_0_n87), .B(stage_comb_logic_0_P[3]), .Y(comb_datapath_out[3]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U333__gate_1 (.A(stage_datapath_out[4]), .B(stage_datapath_out[36]), .Y(stage_comb_logic_0_G[3]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U274__gate_1 (.A(stage_datapath_out[36]), .B(stage_datapath_out[4]), .Y(stage_comb_logic_0_P[3]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1123__gate_1 (.A(stage_comb_logic_0_net992), .B(stage_comb_logic_0_P[4]), .Y(comb_datapath_out[4]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U332__gate_1 (.A(stage_datapath_out[5]), .B(stage_datapath_out[37]), .Y(stage_comb_logic_0_G[4]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U273__gate_1 (.A(stage_datapath_out[37]), .B(stage_datapath_out[5]), .Y(stage_comb_logic_0_P[4]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1122__gate_1 (.A(stage_comb_logic_0_n79), .B(stage_comb_logic_0_P[5]), .Y(comb_datapath_out[5]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U272__gate_1 (.A(stage_datapath_out[38]), .B(stage_datapath_out[6]), .Y(stage_comb_logic_0_P[5]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U331__gate_1 (.A(stage_datapath_out[6]), .B(stage_datapath_out[38]), .Y(stage_comb_logic_0_G[5]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1121__gate_1 (.A(stage_comb_logic_0_C_6), .B(stage_comb_logic_0_P[6]), .Y(comb_datapath_out[6]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U330__gate_1 (.A(stage_datapath_out[7]), .B(stage_datapath_out[39]), .Y(stage_comb_logic_0_G[6]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U271__gate_1 (.A(stage_datapath_out[39]), .B(stage_datapath_out[7]), .Y(stage_comb_logic_0_P[6]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1120__gate_1 (.A(stage_comb_logic_0_net893), .B(stage_comb_logic_0_P[7]), .Y(comb_datapath_out[7]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U329__gate_1 (.A(stage_datapath_out[8]), .B(stage_datapath_out[40]), .Y(stage_comb_logic_0_G[7]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U270__gate_1 (.A(stage_datapath_out[40]), .B(stage_datapath_out[8]), .Y(stage_comb_logic_0_P[7]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1119__gate_1 (.A(stage_comb_logic_0_net1088), .B(stage_comb_logic_0_P[8]), .Y(comb_datapath_out[8]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U328__gate_1 (.A(stage_datapath_out[9]), .B(stage_datapath_out[41]), .Y(stage_comb_logic_0_G[8]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U269__gate_1 (.A(stage_datapath_out[41]), .B(stage_datapath_out[9]), .Y(stage_comb_logic_0_P[8]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1118__gate_1 (.A(stage_comb_logic_0_net1052), .B(stage_comb_logic_0_P[9]), .Y(comb_datapath_out[9]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U268__gate_1 (.A(stage_datapath_out[42]), .B(stage_datapath_out[10]), .Y(stage_comb_logic_0_P[9]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U327__gate_1 (.A(stage_datapath_out[10]), .B(stage_datapath_out[42]), .Y(stage_comb_logic_0_G[9]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1117__gate_1 (.A(stage_comb_logic_0_net1167), .B(stage_comb_logic_0_P[10]), .Y(comb_datapath_out[10]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U326__gate_1 (.A(stage_datapath_out[11]), .B(stage_datapath_out[43]), .Y(stage_comb_logic_0_G[10]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U267__gate_1 (.A(stage_datapath_out[43]), .B(stage_datapath_out[11]), .Y(stage_comb_logic_0_P[10]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1116__gate_1 (.A(stage_comb_logic_0_net892), .B(stage_comb_logic_0_P[11]), .Y(comb_datapath_out[11]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U266__gate_1 (.A(stage_datapath_out[44]), .B(stage_datapath_out[12]), .Y(stage_comb_logic_0_P[11]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U325__gate_1 (.A(stage_datapath_out[12]), .B(stage_datapath_out[44]), .Y(stage_comb_logic_0_G[11]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1115__gate_1 (.A(stage_comb_logic_0_net1152), .B(stage_comb_logic_0_P[12]), .Y(comb_datapath_out[12]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U265__gate_1 (.A(stage_datapath_out[45]), .B(stage_datapath_out[13]), .Y(stage_comb_logic_0_P[12]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U324__gate_1 (.A(stage_datapath_out[13]), .B(stage_datapath_out[45]), .Y(stage_comb_logic_0_G[12]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1114__gate_1 (.A(stage_comb_logic_0_net1174), .B(stage_comb_logic_0_P[13]), .Y(comb_datapath_out[13]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U323__gate_1 (.A(stage_datapath_out[14]), .B(stage_datapath_out[46]), .Y(stage_comb_logic_0_G[13]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U264__gate_1 (.A(stage_datapath_out[46]), .B(stage_datapath_out[14]), .Y(stage_comb_logic_0_P[13]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1113__gate_1 (.A(stage_comb_logic_0_n69), .B(stage_comb_logic_0_P[14]), .Y(comb_datapath_out[14]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U263__gate_1 (.A(stage_datapath_out[47]), .B(stage_datapath_out[15]), .Y(stage_comb_logic_0_P[14]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U322__gate_1 (.A(stage_datapath_out[15]), .B(stage_datapath_out[47]), .Y(stage_comb_logic_0_G[14]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1112__gate_1 (.A(stage_comb_logic_0_net1196), .B(stage_comb_logic_0_P[15]), .Y(comb_datapath_out[15]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U321__gate_1 (.A(stage_datapath_out[16]), .B(stage_datapath_out[48]), .Y(stage_comb_logic_0_G[15]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U262__gate_1 (.A(stage_datapath_out[48]), .B(stage_datapath_out[16]), .Y(stage_comb_logic_0_P[15]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U261__gate_1 (.A(stage_datapath_out[49]), .B(stage_datapath_out[17]), .Y(stage_comb_logic_0_P[16]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U320__gate_1 (.A(stage_datapath_out[17]), .B(stage_datapath_out[49]), .Y(stage_comb_logic_0_G[16]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1111__gate_1 (.A(stage_comb_logic_0_net955), .B(stage_comb_logic_0_P[16]), .Y(comb_datapath_out[16]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1110__gate_1 (.A(stage_comb_logic_0_n49), .B(stage_comb_logic_0_P[17]), .Y(comb_datapath_out[17]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U260__gate_1 (.A(stage_datapath_out[50]), .B(stage_datapath_out[18]), .Y(stage_comb_logic_0_P[17]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U319__gate_1 (.A(stage_datapath_out[18]), .B(stage_datapath_out[50]), .Y(stage_comb_logic_0_G[17]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1109__gate_1 (.A(stage_comb_logic_0_net888), .B(stage_comb_logic_0_P[18]), .Y(comb_datapath_out[18]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U318__gate_1 (.A(stage_datapath_out[19]), .B(stage_datapath_out[51]), .Y(stage_comb_logic_0_G[18]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U259__gate_1 (.A(stage_datapath_out[51]), .B(stage_datapath_out[19]), .Y(stage_comb_logic_0_P[18]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U258__gate_1 (.A(stage_datapath_out[52]), .B(stage_datapath_out[20]), .Y(stage_comb_logic_0_P[19]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U317__gate_1 (.A(stage_datapath_out[20]), .B(stage_datapath_out[52]), .Y(stage_comb_logic_0_G[19]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1108__gate_1 (.A(stage_comb_logic_0_net884), .B(stage_comb_logic_0_P[19]), .Y(comb_datapath_out[19]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1107__gate_1 (.A(stage_comb_logic_0_net1134), .B(stage_comb_logic_0_P[20]), .Y(comb_datapath_out[20]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U257__gate_1 (.A(stage_datapath_out[53]), .B(stage_datapath_out[21]), .Y(stage_comb_logic_0_P[20]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U316__gate_1 (.A(stage_datapath_out[21]), .B(stage_datapath_out[53]), .Y(stage_comb_logic_0_G[20]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1106__gate_1 (.A(stage_comb_logic_0_n56), .B(stage_comb_logic_0_P[21]), .Y(comb_datapath_out[21]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U315__gate_1 (.A(stage_datapath_out[22]), .B(stage_datapath_out[54]), .Y(stage_comb_logic_0_G[21]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U256__gate_1 (.A(stage_datapath_out[54]), .B(stage_datapath_out[22]), .Y(stage_comb_logic_0_P[21]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U255__gate_1 (.A(stage_datapath_out[55]), .B(stage_datapath_out[23]), .Y(stage_comb_logic_0_P[22]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U314__gate_1 (.A(stage_datapath_out[23]), .B(stage_datapath_out[55]), .Y(stage_comb_logic_0_G[22]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1105__gate_1 (.A(stage_comb_logic_0_net891), .B(stage_comb_logic_0_P[22]), .Y(comb_datapath_out[22]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U313__gate_1 (.A(stage_datapath_out[24]), .B(stage_datapath_out[56]), .Y(stage_comb_logic_0_G[23]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1104__gate_1 (.A(stage_comb_logic_0_net880), .B(stage_comb_logic_0_P[23]), .Y(comb_datapath_out[23]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U254__gate_1 (.A(stage_datapath_out[56]), .B(stage_datapath_out[24]), .Y(stage_comb_logic_0_P[23]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U253__gate_1 (.A(stage_datapath_out[57]), .B(stage_datapath_out[25]), .Y(stage_comb_logic_0_P[24]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U312__gate_1 (.A(stage_datapath_out[25]), .B(stage_datapath_out[57]), .Y(stage_comb_logic_0_G[24]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1103__gate_1 (.A(stage_comb_logic_0_net1078), .B(stage_comb_logic_0_P[24]), .Y(comb_datapath_out[24]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1102__gate_1 (.A(stage_comb_logic_0_n74), .B(stage_comb_logic_0_P[26]), .Y(comb_datapath_out[26]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U252__gate_1 (.A(stage_datapath_out[59]), .B(stage_datapath_out[27]), .Y(stage_comb_logic_0_P[26]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U311__gate_1 (.A(stage_datapath_out[27]), .B(stage_datapath_out[59]), .Y(stage_comb_logic_0_G[26]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1101__gate_1 (.A(stage_comb_logic_0_net1159), .B(stage_comb_logic_0_P[27]), .Y(comb_datapath_out[27]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U310__gate_1 (.A(stage_datapath_out[28]), .B(stage_datapath_out[60]), .Y(stage_comb_logic_0_G[27]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U251__gate_1 (.A(stage_datapath_out[60]), .B(stage_datapath_out[28]), .Y(stage_comb_logic_0_P[27]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1100__gate_3 (.A(stage_comb_logic_0_C[31]), .B(stage_comb_logic_0_n110), .Y(stage_comb_logic_0_U1100__term_2));
    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1100__gate_4 (.A(stage_comb_logic_0_U1100__term_2), .B(stage_datapath_out[64]), .Y(stage_comb_logic_0_U1100__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U1100__gate_5 (.A(stage_comb_logic_0_U1100__term_1), .Y(comb_datapath_out[31]));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U250__gate_1 (.A(stage_datapath_out[32]), .Y(stage_comb_logic_0_n110));

    AO21x1_ASAP7_75t_R stage_comb_logic_0_U249__gate_1 (.A1(stage_comb_logic_0_C_1), .A2(stage_comb_logic_0_P[1]), .B(stage_comb_logic_0_G[1]), .Y(stage_comb_logic_0_C_2));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U248__gate_1 (.A(stage_comb_logic_0_net874), .B(stage_comb_logic_0_n99), .Y(stage_comb_logic_0_C[26]));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U247__gate_1 (.A(stage_comb_logic_0_G[25]), .Y(stage_comb_logic_0_n99));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U246__gate_1 (.A(stage_comb_logic_0_net911), .Y(stage_comb_logic_0_net883));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U245__gate_1 (.A(stage_comb_logic_0_n97), .Y(stage_comb_logic_0_n98));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U244__gate_1 (.A(stage_comb_logic_0_C_2), .Y(stage_comb_logic_0_n97));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U243__gate_1 (.A(stage_comb_logic_0_G[13]), .Y(stage_comb_logic_0_net925));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U242__gate_1 (.A(stage_comb_logic_0_n95), .B(stage_comb_logic_0_n96), .Y(stage_comb_logic_0_C_3));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U241__gate_1 (.A(stage_comb_logic_0_G[2]), .Y(stage_comb_logic_0_n96));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U240__gate_1 (.A(stage_comb_logic_0_C_2), .B(stage_comb_logic_0_P[2]), .Y(stage_comb_logic_0_n95));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U239__gate_1 (.A(stage_comb_logic_0_G[28]), .Y(stage_comb_logic_0_n94));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U238__gate_1 (.A(stage_comb_logic_0_n92), .Y(stage_comb_logic_0_n93));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U237__gate_1 (.A(stage_comb_logic_0_C_1), .Y(stage_comb_logic_0_n92));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U236__gate_1 (.A(stage_comb_logic_0_G[4]), .Y(stage_comb_logic_0_n90));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U235__gate_1 (.A(stage_comb_logic_0_C_3), .B(stage_comb_logic_0_P[3]), .Y(stage_comb_logic_0_net986));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U234__gate_1 (.A(stage_comb_logic_0_n88), .Y(stage_comb_logic_0_n89));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U233__gate_1 (.A(stage_comb_logic_0_n95), .Y(stage_comb_logic_0_n88));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U232__gate_1 (.A(stage_comb_logic_0_n89), .B(stage_comb_logic_0_n96), .Y(stage_comb_logic_0_n87));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U231__gate_1 (.A(stage_comb_logic_0_net993), .Y(stage_comb_logic_0_net994));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U230__gate_1 (.A(stage_comb_logic_0_net986), .Y(stage_comb_logic_0_net993));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U229__gate_1 (.A(stage_comb_logic_0_G[29]), .Y(stage_comb_logic_0_n85));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U228__gate_1 (.A(stage_comb_logic_0_G[30]), .Y(stage_comb_logic_0_n84));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U227__gate_1 (.A(stage_comb_logic_0_n94), .B(stage_comb_logic_0_n85), .Y(stage_comb_logic_0_n82));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U226__gate_1 (.A(stage_comb_logic_0_n85), .Y(stage_comb_logic_0_n81));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U225__gate_1 (.A(stage_comb_logic_0_n81), .B(stage_comb_logic_0_P[29]), .Y(stage_comb_logic_0_n80));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U224__gate_1 (.A(stage_comb_logic_0_net1024), .Y(stage_comb_logic_0_net1025));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U223__gate_1 (.A(stage_comb_logic_0_net1328), .Y(stage_comb_logic_0_net1024));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U222__gate_1 (.A(stage_comb_logic_0_net1025), .B(stage_comb_logic_0_n90), .Y(stage_comb_logic_0_n79));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U221__gate_1 (.A(stage_comb_logic_0_P[28]), .B(stage_comb_logic_0_n80), .Y(stage_comb_logic_0_n78));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U220__gate_1 (.A(stage_comb_logic_0_n80), .Y(stage_comb_logic_0_n77));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U219__gate_1 (.A(stage_comb_logic_0_n77), .B(stage_comb_logic_0_n82), .Y(stage_comb_logic_0_net1030));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U218__gate_1 (.A(stage_comb_logic_0_net1030), .Y(stage_comb_logic_0_net1036));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U217__gate_1 (.A(stage_comb_logic_0_net1036), .B(stage_comb_logic_0_n78), .Y(stage_comb_logic_0_net1035));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U216__gate_1 (.A(stage_comb_logic_0_net1035), .Y(stage_comb_logic_0_net1041));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U215__gate_1 (.A(stage_comb_logic_0_net1041), .B(stage_comb_logic_0_net1037), .Y(stage_comb_logic_0_n76));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U214__gate_1 (.A(stage_comb_logic_0_net1180), .B(stage_comb_logic_0_n99), .Y(stage_comb_logic_0_n74));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U213__gate_1 (.A(stage_comb_logic_0_G[5]), .Y(stage_comb_logic_0_n73));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U212__gate_1 (.A(stage_comb_logic_0_net1103), .Y(stage_comb_logic_0_net1088));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U211__gate_1 (.A(stage_comb_logic_0_net1160), .B(stage_comb_logic_0_net1086), .Y(stage_comb_logic_0_n70));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U210__gate_1 (.A(stage_comb_logic_0_net1094), .Y(stage_comb_logic_0_net1095));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U209__gate_1 (.A(stage_comb_logic_0_net870), .Y(stage_comb_logic_0_net1094));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U208__gate_1 (.A(stage_comb_logic_0_n70), .B(stage_comb_logic_0_net1092), .Y(stage_comb_logic_0_net870));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U207__gate_1 (.A(stage_comb_logic_0_n70), .B(stage_comb_logic_0_n71), .Y(stage_comb_logic_0_C_6));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U206__gate_1 (.A(stage_comb_logic_0_net1357), .Y(stage_comb_logic_0_net1105));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U205__gate_1 (.A(stage_comb_logic_0_G[0]), .Y(stage_comb_logic_0_n86));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U204__gate_1 (.A(stage_comb_logic_0_net1184), .B(stage_comb_logic_0_net925), .Y(stage_comb_logic_0_n69));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U203__gate_1 (.A(stage_comb_logic_0_net1151), .Y(stage_comb_logic_0_net1152));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U202__gate_1 (.A(stage_comb_logic_0_net1613), .Y(stage_comb_logic_0_net1151));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U201__gate_1 (.A(stage_comb_logic_0_net1024), .Y(stage_comb_logic_0_net1160));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U200__gate_1 (.A(stage_comb_logic_0_net1166), .Y(stage_comb_logic_0_net1167));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U199__gate_1 (.A(stage_comb_logic_0_C_10), .Y(stage_comb_logic_0_net1166));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U198__gate_1 (.A(stage_comb_logic_0_net1175), .Y(stage_comb_logic_0_net1176));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U197__gate_1 (.A(stage_comb_logic_0_net1179), .Y(stage_comb_logic_0_net1180));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U196__gate_1 (.A(stage_comb_logic_0_net874), .Y(stage_comb_logic_0_net1179));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U195__gate_1 (.A(stage_comb_logic_0_net1183), .Y(stage_comb_logic_0_net1184));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U194__gate_1 (.A(stage_comb_logic_0_net1403), .Y(stage_comb_logic_0_net1183));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U193__gate_1 (.A(stage_comb_logic_0_net1191), .Y(stage_comb_logic_0_net1192));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U192__gate_1 (.A(stage_comb_logic_0_net969), .Y(stage_comb_logic_0_net1191));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U191__gate_1 (.A(stage_comb_logic_0_net1383), .Y(stage_comb_logic_0_net1196));

    AOI21xp33_ASAP7_75t_R stage_comb_logic_0_U190__gate_1 (.A1(stage_comb_logic_0_G[21]), .A2(stage_comb_logic_0_P[22]), .B(stage_comb_logic_0_G[22]), .Y(stage_comb_logic_0_net1280));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U189__gate_1 (.A(stage_comb_logic_0_G[20]), .Y(stage_comb_logic_0_net1276));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U188__gate_1 (.A(stage_comb_logic_0_P[22]), .B(stage_comb_logic_0_P[21]), .Y(stage_comb_logic_0_net1275));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U187__gate_3 (.A(stage_comb_logic_0_G[21]), .Y(stage_comb_logic_0_U187__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U187__gate_4 (.A(stage_comb_logic_0_U187__term_2), .B(stage_comb_logic_0_n67), .Y(stage_comb_logic_0_U187__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U187__gate_5 (.A(stage_comb_logic_0_U187__term_1), .Y(stage_comb_logic_0_net891));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U186__gate_1 (.A(stage_comb_logic_0_net877), .Y(stage_comb_logic_0_net1333));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U185__gate_1 (.A(stage_comb_logic_0_n66), .B(stage_comb_logic_0_net1101), .Y(stage_comb_logic_0_net1357));

    AO21x1_ASAP7_75t_R stage_comb_logic_0_U184__gate_1 (.A1(stage_comb_logic_0_net1078), .A2(stage_comb_logic_0_P[24]), .B(stage_comb_logic_0_G[24]), .Y(stage_comb_logic_0_n68));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U183__gate_1 (.A(stage_comb_logic_0_net1594), .Y(stage_comb_logic_0_net1375));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U182__gate_1 (.A(stage_comb_logic_0_net1389), .B(stage_comb_logic_0_net1086), .Y(stage_comb_logic_0_n66));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U181__gate_1 (.A(stage_comb_logic_0_net1388), .Y(stage_comb_logic_0_net1389));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U180__gate_1 (.A(stage_comb_logic_0_net1631), .Y(stage_comb_logic_0_net1388));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U179__gate_1 (.A(stage_comb_logic_0_P[28]), .Y(stage_comb_logic_0_net1395));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U178__gate_1 (.A(stage_comb_logic_0_n83), .Y(stage_comb_logic_0_n65));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U177__gate_1 (.A(stage_comb_logic_0_net1541), .Y(stage_comb_logic_0_net1261));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U176__gate_3 (.A(stage_comb_logic_0_n63), .Y(stage_comb_logic_0_U176__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U176__gate_4 (.A(stage_comb_logic_0_U176__term_2), .B(stage_comb_logic_0_n60), .Y(stage_comb_logic_0_U176__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U176__gate_5 (.A(stage_comb_logic_0_U176__term_1), .Y(stage_comb_logic_0_net1541));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U175__gate_1 (.A(stage_comb_logic_0_net1275), .Y(stage_comb_logic_0_n61));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U174__gate_1 (.A(stage_comb_logic_0_G[18]), .Y(stage_comb_logic_0_net1496));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U173__gate_4 (.A(stage_comb_logic_0_net1275), .Y(stage_comb_logic_0_U173__term_3));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U173__gate_5 (.A(stage_comb_logic_0_U173__term_3), .B(stage_comb_logic_0_P[23]), .Y(stage_comb_logic_0_U173__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U173__gate_6 (.A(stage_comb_logic_0_U173__term_2), .B(stage_comb_logic_0_P[20]), .Y(stage_comb_logic_0_U173__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U173__gate_7 (.A(stage_comb_logic_0_U173__term_1), .Y(stage_comb_logic_0_net1509));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U172__gate_1 (.A(stage_comb_logic_0_P[23]), .Y(stage_comb_logic_0_n63));

    AOI21xp33_ASAP7_75t_R stage_comb_logic_0_U171__gate_1 (.A1(stage_comb_logic_0_n61), .A2(stage_comb_logic_0_n59), .B(stage_comb_logic_0_n60), .Y(stage_comb_logic_0_net879));

    OAI21xp33_ASAP7_75t_R stage_comb_logic_0_U170__gate_1 (.A1(stage_comb_logic_0_net1275), .A2(stage_comb_logic_0_net1276), .B(stage_comb_logic_0_net1280), .Y(stage_comb_logic_0_n60));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U169__gate_1 (.A(stage_comb_logic_0_net1383), .Y(stage_comb_logic_0_C_15));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U168__gate_1 (.A(stage_comb_logic_0_n56), .B(stage_comb_logic_0_P[21]), .Y(stage_comb_logic_0_n67));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U167__gate_1 (.A(stage_comb_logic_0_n58), .B(stage_comb_logic_0_P[9]), .Y(stage_comb_logic_0_n57));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U166__gate_1 (.A(stage_comb_logic_0_P[9]), .Y(stage_comb_logic_0_net1583));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U165__gate_1 (.A(stage_comb_logic_0_n58), .B(stage_comb_logic_0_C_8), .Y(stage_comb_logic_0_net969));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U164__gate_1 (.A(stage_comb_logic_0_P[8]), .Y(stage_comb_logic_0_n91));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U163__gate_1 (.A(stage_comb_logic_0_n91), .Y(stage_comb_logic_0_n58));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U162__gate_1 (.A(stage_comb_logic_0_net1591), .B(stage_comb_logic_0_n57), .Y(stage_comb_logic_0_net1590));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U161__gate_1 (.A(stage_comb_logic_0_net1134), .B(stage_comb_logic_0_P[20]), .Y(stage_comb_logic_0_n62));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U160__gate_1 (.A(stage_comb_logic_0_n62), .Y(stage_comb_logic_0_n59));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U159__gate_1 (.A(stage_comb_logic_0_net1614), .Y(stage_comb_logic_0_net1615));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U158__gate_3 (.A(stage_comb_logic_0_G[23]), .Y(stage_comb_logic_0_U158__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U158__gate_4 (.A(stage_comb_logic_0_U158__term_2), .B(stage_comb_logic_0_net1231), .Y(stage_comb_logic_0_U158__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U158__gate_5 (.A(stage_comb_logic_0_U158__term_1), .Y(stage_comb_logic_0_net1078));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U157__gate_1 (.A(stage_comb_logic_0_net1042), .B(stage_comb_logic_0_n65), .Y(stage_comb_logic_0_n55));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U156__gate_1 (.A(stage_comb_logic_0_n65), .Y(stage_comb_logic_0_n54));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U155__gate_1 (.A(stage_comb_logic_0_n54), .B(stage_comb_logic_0_n76), .Y(stage_comb_logic_0_n53));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U154__gate_1 (.A(stage_comb_logic_0_net1630), .Y(stage_comb_logic_0_net1627));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U153__gate_1 (.A(stage_comb_logic_0_n90), .B(stage_comb_logic_0_n73), .Y(stage_comb_logic_0_net1086));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U152__gate_1 (.A(stage_comb_logic_0_n73), .Y(stage_comb_logic_0_n72));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U151__gate_1 (.A(stage_comb_logic_0_n71), .B(stage_comb_logic_0_P[6]), .Y(stage_comb_logic_0_net1092));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U150__gate_1 (.A(stage_comb_logic_0_n72), .B(stage_comb_logic_0_P[5]), .Y(stage_comb_logic_0_n71));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U149__gate_1 (.A(stage_comb_logic_0_net1634), .Y(stage_comb_logic_0_net1635));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U148__gate_1 (.A(stage_comb_logic_0_n94), .B(stage_comb_logic_0_net1394), .Y(stage_comb_logic_0_n51));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U147__gate_1 (.A(stage_comb_logic_0_net1638), .B(stage_comb_logic_0_n51), .Y(stage_comb_logic_0_C[29]));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U146__gate_1 (.A(stage_comb_logic_0_C[27]), .B(stage_comb_logic_0_n55), .Y(stage_comb_logic_0_n52));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U145__gate_1 (.A(stage_comb_logic_0_C[27]), .B(stage_comb_logic_0_net1042), .Y(stage_comb_logic_0_n75));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U144__gate_1 (.A(stage_comb_logic_0_n75), .B(stage_comb_logic_0_n76), .Y(stage_comb_logic_0_C[30]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U143__gate_1 (.A(stage_comb_logic_0_n53), .B(stage_comb_logic_0_n84), .Y(stage_comb_logic_0_n50));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U142__gate_1 (.A(stage_comb_logic_0_n52), .B(stage_comb_logic_0_n50), .Y(stage_comb_logic_0_C[31]));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U141__gate_1 (.A(stage_comb_logic_0_net1133), .Y(stage_comb_logic_0_net1134));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U140__gate_1 (.A(stage_comb_logic_0_n62), .B(stage_comb_logic_0_net1276), .Y(stage_comb_logic_0_n56));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U139__gate_1 (.A(stage_comb_logic_0_net879), .Y(stage_comb_logic_0_net880));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U138__gate_1 (.A(stage_comb_logic_0_net1701), .Y(stage_comb_logic_0_net1771));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U137__gate_1 (.A(stage_comb_logic_0_net1171), .Y(stage_comb_logic_0_n48));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U136__gate_1 (.A(stage_comb_logic_0_n48), .Y(stage_comb_logic_0_n49));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U135__gate_1 (.A(stage_comb_logic_0_net1756), .Y(stage_comb_logic_0_net1740));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U134__gate_1 (.A(stage_comb_logic_0_G[17]), .B(stage_comb_logic_0_P[18]), .Y(stage_comb_logic_0_net1742));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U133__gate_1 (.A(stage_comb_logic_0_G[16]), .Y(stage_comb_logic_0_net1738));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U132__gate_1 (.A(stage_comb_logic_0_P[18]), .Y(stage_comb_logic_0_net1495));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U131__gate_1 (.A(stage_comb_logic_0_P[17]), .B(stage_comb_logic_0_net1171), .Y(stage_comb_logic_0_net1543));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U130__gate_3 (.A(stage_comb_logic_0_net1705), .Y(stage_comb_logic_0_U130__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U130__gate_4 (.A(stage_comb_logic_0_U130__term_2), .B(stage_comb_logic_0_n47), .Y(stage_comb_logic_0_U130__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U130__gate_5 (.A(stage_comb_logic_0_U130__term_1), .Y(stage_comb_logic_0_net1383));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U129__gate_1 (.A(stage_comb_logic_0_net1260), .B(stage_comb_logic_0_net1261), .Y(stage_comb_logic_0_net1231));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U128__gate_1 (.A(stage_comb_logic_0_net1133), .B(stage_comb_logic_0_net1509), .Y(stage_comb_logic_0_net1260));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U127__gate_1 (.A(stage_comb_logic_0_net1935), .Y(stage_comb_logic_0_net1705));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U126__gate_3 (.A(stage_comb_logic_0_G[14]), .Y(stage_comb_logic_0_U126__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U126__gate_4 (.A(stage_comb_logic_0_U126__term_2), .B(stage_comb_logic_0_n46), .Y(stage_comb_logic_0_U126__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U126__gate_5 (.A(stage_comb_logic_0_U126__term_1), .Y(stage_comb_logic_0_net1935));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U125__gate_1 (.A(stage_comb_logic_0_P[14]), .Y(stage_comb_logic_0_n46));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U124__gate_1 (.A(stage_comb_logic_0_n45), .Y(stage_comb_logic_0_net1324));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U123__gate_3 (.A(stage_comb_logic_0_G[14]), .Y(stage_comb_logic_0_U123__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U123__gate_4 (.A(stage_comb_logic_0_U123__term_2), .B(stage_comb_logic_0_net925), .Y(stage_comb_logic_0_U123__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U123__gate_5 (.A(stage_comb_logic_0_U123__term_1), .Y(stage_comb_logic_0_n45));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U122__gate_1 (.A(stage_comb_logic_0_P[13]), .Y(stage_comb_logic_0_net1933));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U121__gate_5 (.A(stage_comb_logic_0_net1705), .Y(stage_comb_logic_0_U121__term_4));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U121__gate_6 (.A(stage_comb_logic_0_U121__term_4), .B(stage_comb_logic_0_P[15]), .Y(stage_comb_logic_0_U121__term_3));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U121__gate_7 (.A(stage_comb_logic_0_U121__term_3), .B(stage_comb_logic_0_P[16]), .Y(stage_comb_logic_0_U121__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U121__gate_8 (.A(stage_comb_logic_0_U121__term_2), .B(stage_comb_logic_0_n45), .Y(stage_comb_logic_0_U121__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U121__gate_9 (.A(stage_comb_logic_0_U121__term_1), .Y(stage_comb_logic_0_net1756));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U120__gate_1 (.A(stage_comb_logic_0_P[15]), .B(stage_comb_logic_0_C_15), .Y(stage_comb_logic_0_net1362));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U119__gate_1 (.A(stage_comb_logic_0_G[15]), .B(stage_comb_logic_0_P[16]), .Y(stage_comb_logic_0_net1737));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U118__gate_1 (.A(stage_comb_logic_0_net1942), .Y(stage_comb_logic_0_net1911));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U117__gate_1 (.A(stage_comb_logic_0_net1771), .Y(stage_comb_logic_0_net1402));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U116__gate_1 (.A(stage_comb_logic_0_net1402), .Y(stage_comb_logic_0_net1403));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U115__gate_3 (.A(stage_comb_logic_0_G[17]), .Y(stage_comb_logic_0_U115__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U115__gate_4 (.A(stage_comb_logic_0_U115__term_2), .B(stage_comb_logic_0_net1543), .Y(stage_comb_logic_0_U115__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U115__gate_5 (.A(stage_comb_logic_0_U115__term_1), .Y(stage_comb_logic_0_n64));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U114__gate_4 (.A(stage_comb_logic_0_net1737), .B(stage_comb_logic_0_net1738), .Y(stage_comb_logic_0_U114__term_3));
    OR2x2_ASAP7_75t_R stage_comb_logic_0_U114__gate_5 (.A(stage_comb_logic_0_U114__term_3), .B(stage_comb_logic_0_net1762), .Y(stage_comb_logic_0_U114__term_2));
    OR2x2_ASAP7_75t_R stage_comb_logic_0_U114__gate_6 (.A(stage_comb_logic_0_U114__term_2), .B(stage_comb_logic_0_net1740), .Y(stage_comb_logic_0_U114__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U114__gate_7 (.A(stage_comb_logic_0_U114__term_1), .Y(stage_comb_logic_0_net1170));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U113__gate_1 (.A(stage_comb_logic_0_net1170), .Y(stage_comb_logic_0_net1171));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U112__gate_1 (.A(stage_comb_logic_0_n64), .Y(stage_comb_logic_0_net914));

    OAI21xp33_ASAP7_75t_R stage_comb_logic_0_U111__gate_1 (.A1(stage_comb_logic_0_net914), .A2(stage_comb_logic_0_net1495), .B(stage_comb_logic_0_net1496), .Y(stage_comb_logic_0_net911));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U110__gate_1 (.A(stage_comb_logic_0_net1403), .B(stage_comb_logic_0_net1324), .Y(stage_comb_logic_0_n47));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U109__gate_1 (.A(stage_comb_logic_0_net1911), .B(stage_comb_logic_0_net1933), .Y(stage_comb_logic_0_net1701));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U108__gate_3 (.A(stage_comb_logic_0_G[12]), .Y(stage_comb_logic_0_U108__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U108__gate_4 (.A(stage_comb_logic_0_U108__term_2), .B(stage_comb_logic_0_net1176), .Y(stage_comb_logic_0_U108__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U108__gate_5 (.A(stage_comb_logic_0_U108__term_1), .Y(stage_comb_logic_0_net1174));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U107__gate_3 (.A(stage_comb_logic_0_G[12]), .Y(stage_comb_logic_0_U107__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U107__gate_4 (.A(stage_comb_logic_0_U107__term_2), .B(stage_comb_logic_0_net1001), .Y(stage_comb_logic_0_U107__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U107__gate_5 (.A(stage_comb_logic_0_U107__term_1), .Y(stage_comb_logic_0_net1942));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U106__gate_1 (.A(stage_comb_logic_0_net914), .Y(stage_comb_logic_0_net888));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U105__gate_1 (.A(stage_comb_logic_0_net1362), .Y(stage_comb_logic_0_net1187));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U104__gate_1 (.A(stage_comb_logic_0_G[15]), .B(stage_comb_logic_0_net1187), .Y(stage_comb_logic_0_net955));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U103__gate_1 (.A(stage_comb_logic_0_net883), .Y(stage_comb_logic_0_net884));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U102__gate_1 (.A(stage_comb_logic_0_net2103), .Y(stage_comb_logic_0_net2087));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U101__gate_1 (.A(stage_comb_logic_0_net1167), .B(stage_comb_logic_0_P[10]), .Y(stage_comb_logic_0_net2068));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U100__gate_1 (.A(stage_comb_logic_0_P[11]), .Y(stage_comb_logic_0_net2072));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U99__gate_1 (.A(stage_comb_logic_0_net1635), .Y(stage_comb_logic_0_net2061));

    OAI21xp33_ASAP7_75t_R stage_comb_logic_0_U98__gate_1 (.A1(stage_comb_logic_0_net1627), .A2(stage_comb_logic_0_net2072), .B(stage_comb_logic_0_net2073), .Y(stage_comb_logic_0_net1613));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U97__gate_1 (.A(stage_comb_logic_0_net2060), .B(stage_comb_logic_0_net2061), .Y(stage_comb_logic_0_net1630));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U96__gate_3 (.A(stage_comb_logic_0_G[23]), .Y(stage_comb_logic_0_U96__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U96__gate_4 (.A(stage_comb_logic_0_U96__term_2), .B(stage_comb_logic_0_net1541), .Y(stage_comb_logic_0_U96__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U96__gate_5 (.A(stage_comb_logic_0_U96__term_1), .Y(stage_comb_logic_0_n40));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U95__gate_1 (.A(stage_comb_logic_0_n40), .B(stage_comb_logic_0_n39), .Y(stage_comb_logic_0_n36));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U94__gate_4 (.A(stage_comb_logic_0_G[18]), .Y(stage_comb_logic_0_U94__term_3));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U94__gate_5 (.A(stage_comb_logic_0_U94__term_3), .B(stage_comb_logic_0_net1501), .Y(stage_comb_logic_0_U94__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U94__gate_6 (.A(stage_comb_logic_0_U94__term_2), .B(stage_comb_logic_0_net1742), .Y(stage_comb_logic_0_U94__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U94__gate_7 (.A(stage_comb_logic_0_U94__term_1), .Y(stage_comb_logic_0_net1741));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U93__gate_1 (.A(stage_comb_logic_0_G[19]), .Y(stage_comb_logic_0_net1501));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U92__gate_1 (.A(stage_comb_logic_0_P[19]), .Y(stage_comb_logic_0_n44));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U91__gate_1 (.A(stage_comb_logic_0_net1501), .B(stage_comb_logic_0_n44), .Y(stage_comb_logic_0_n43));

    OAI221xp5_ASAP7_75t_R stage_comb_logic_0_U90__gate_1 (.A1(stage_comb_logic_0_P[18]), .A2(stage_comb_logic_0_net1741), .B1(stage_comb_logic_0_P[17]), .B2(stage_comb_logic_0_net1741), .C(stage_comb_logic_0_n43), .Y(stage_comb_logic_0_net1745));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U89__gate_1 (.A(stage_comb_logic_0_net1745), .Y(stage_comb_logic_0_net1769));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U88__gate_1 (.A(stage_comb_logic_0_C_20_1), .Y(stage_comb_logic_0_net1133));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U87__gate_1 (.A(stage_comb_logic_0_net1750), .Y(stage_comb_logic_0_C_20_1));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U86__gate_1 (.A(stage_comb_logic_0_net1509), .Y(stage_comb_logic_0_n41));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U85__gate_1 (.A(stage_comb_logic_0_C_20_1), .B(stage_comb_logic_0_n41), .Y(stage_comb_logic_0_n37));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U84__gate_1 (.A(stage_comb_logic_0_P[24]), .Y(stage_comb_logic_0_net1108));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U83__gate_1 (.A(stage_comb_logic_0_net1109), .Y(stage_comb_logic_0_n39));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U82__gate_1 (.A(stage_comb_logic_0_net1108), .B(stage_comb_logic_0_net1109), .Y(stage_comb_logic_0_n42));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U81__gate_1 (.A(stage_comb_logic_0_n42), .Y(stage_comb_logic_0_n38));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U80__gate_1 (.A(stage_comb_logic_0_C_25_1), .B(stage_comb_logic_0_net1333), .Y(stage_comb_logic_0_net874));

    AOI21xp33_ASAP7_75t_R stage_comb_logic_0_U79__gate_1 (.A1(stage_comb_logic_0_n36), .A2(stage_comb_logic_0_n37), .B(stage_comb_logic_0_n38), .Y(stage_comb_logic_0_C_25_1));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U78__gate_1 (.A(stage_comb_logic_0_P[16]), .B(stage_comb_logic_0_P[15]), .Y(stage_comb_logic_0_n34));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U77__gate_1 (.A(stage_comb_logic_0_net1911), .B(stage_comb_logic_0_net1912), .Y(stage_comb_logic_0_net1762));

    NAND3xp33_ASAP7_75t_R stage_comb_logic_0_U76__gate_1 (.A(stage_comb_logic_0_net1935), .B(stage_comb_logic_0_P[13]), .C(stage_comb_logic_0_n34), .Y(stage_comb_logic_0_net1912));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U75__gate_1 (.A(stage_comb_logic_0_net1741), .Y(stage_comb_logic_0_net1758));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U74__gate_1 (.A(stage_comb_logic_0_net1737), .Y(stage_comb_logic_0_net1744));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U73__gate_1 (.A(stage_comb_logic_0_G[16]), .B(stage_comb_logic_0_net1744), .Y(stage_comb_logic_0_net1743));

    NAND3xp33_ASAP7_75t_R stage_comb_logic_0_U72__gate_1 (.A(stage_comb_logic_0_net1758), .B(stage_comb_logic_0_net1756), .C(stage_comb_logic_0_net1743), .Y(stage_comb_logic_0_net1937));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U71__gate_1 (.A(stage_comb_logic_0_net1937), .B(stage_comb_logic_0_G[12]), .Y(stage_comb_logic_0_n32));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U70__gate_1 (.A(stage_comb_logic_0_net2026), .Y(stage_comb_logic_0_net1175));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U69__gate_1 (.A(stage_comb_logic_0_net1912), .Y(stage_comb_logic_0_n35));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U68__gate_1 (.A(stage_comb_logic_0_net1937), .B(stage_comb_logic_0_n35), .Y(stage_comb_logic_0_n33));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U67__gate_1 (.A(stage_comb_logic_0_net1751), .B(stage_comb_logic_0_net1769), .Y(stage_comb_logic_0_net1750));

    AOI21xp33_ASAP7_75t_R stage_comb_logic_0_U66__gate_1 (.A1(stage_comb_logic_0_n32), .A2(stage_comb_logic_0_net2026), .B(stage_comb_logic_0_n33), .Y(stage_comb_logic_0_net1751));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U65__gate_1 (.A(stage_comb_logic_0_net1192), .B(stage_comb_logic_0_n29), .Y(stage_comb_logic_0_net1052));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U64__gate_1 (.A(stage_comb_logic_0_G[8]), .Y(stage_comb_logic_0_n29));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U63__gate_1 (.A(stage_comb_logic_0_net1583), .B(stage_comb_logic_0_n29), .Y(stage_comb_logic_0_net1582));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U62__gate_1 (.A(stage_comb_logic_0_n24), .B(stage_comb_logic_0_P[7]), .Y(stage_comb_logic_0_n23));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U61__gate_3 (.A(stage_comb_logic_0_net1092), .Y(stage_comb_logic_0_U61__term_2));
    OR2x2_ASAP7_75t_R stage_comb_logic_0_U61__gate_4 (.A(stage_comb_logic_0_U61__term_2), .B(stage_comb_logic_0_n27), .Y(stage_comb_logic_0_U61__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U61__gate_5 (.A(stage_comb_logic_0_U61__term_1), .Y(stage_comb_logic_0_net1101));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U60__gate_1 (.A(stage_comb_logic_0_n23), .Y(stage_comb_logic_0_n27));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U59__gate_1 (.A(stage_comb_logic_0_net1095), .B(stage_comb_logic_0_n28), .Y(stage_comb_logic_0_net893));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U58__gate_1 (.A(stage_comb_logic_0_G[6]), .Y(stage_comb_logic_0_n28));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U57__gate_1 (.A(stage_comb_logic_0_n21), .Y(stage_comb_logic_0_n24));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U56__gate_1 (.A(stage_comb_logic_0_G[7]), .Y(stage_comb_logic_0_n21));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U55__gate_1 (.A(stage_comb_logic_0_n28), .B(stage_comb_logic_0_n21), .Y(stage_comb_logic_0_n25));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U54__gate_1 (.A(stage_comb_logic_0_n27), .B(stage_comb_logic_0_n25), .Y(stage_comb_logic_0_net1099));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U53__gate_3 (.A(stage_comb_logic_0_n22), .Y(stage_comb_logic_0_U53__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U53__gate_4 (.A(stage_comb_logic_0_U53__term_2), .B(stage_comb_logic_0_net992), .Y(stage_comb_logic_0_U53__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U53__gate_5 (.A(stage_comb_logic_0_U53__term_1), .Y(stage_comb_logic_0_net1328));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U52__gate_3 (.A(stage_comb_logic_0_n22), .Y(stage_comb_logic_0_U52__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U52__gate_4 (.A(stage_comb_logic_0_U52__term_2), .B(stage_comb_logic_0_net992), .Y(stage_comb_logic_0_U52__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U52__gate_5 (.A(stage_comb_logic_0_U52__term_1), .Y(stage_comb_logic_0_net1631));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U51__gate_1 (.A(stage_comb_logic_0_P[4]), .Y(stage_comb_logic_0_n22));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U50__gate_1 (.A(stage_comb_logic_0_net994), .B(stage_comb_logic_0_n31), .Y(stage_comb_logic_0_net992));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U49__gate_1 (.A(stage_comb_logic_0_G[3]), .Y(stage_comb_logic_0_n31));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U48__gate_1 (.A(stage_comb_logic_0_net986), .B(stage_comb_logic_0_n31), .Y(stage_comb_logic_0_C_4_1));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U47__gate_3 (.A(stage_comb_logic_0_n22), .Y(stage_comb_logic_0_U47__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U47__gate_4 (.A(stage_comb_logic_0_U47__term_2), .B(stage_comb_logic_0_C_4_1), .Y(stage_comb_logic_0_U47__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U47__gate_5 (.A(stage_comb_logic_0_U47__term_1), .Y(stage_comb_logic_0_n30));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U46__gate_1 (.A(stage_comb_logic_0_n30), .B(stage_comb_logic_0_net1086), .Y(stage_comb_logic_0_n26));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U45__gate_1 (.A(stage_comb_logic_0_n26), .B(stage_comb_logic_0_net1101), .Y(stage_comb_logic_0_net1098));

    AO21x1_ASAP7_75t_R stage_comb_logic_0_U44__gate_1 (.A1(stage_comb_logic_0_C[26]), .A2(stage_comb_logic_0_P[26]), .B(stage_comb_logic_0_G[26]), .Y(stage_comb_logic_0_C[27]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U43__gate_1 (.A(stage_comb_logic_0_P[27]), .B(stage_comb_logic_0_net1035), .Y(stage_comb_logic_0_net1042));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U42__gate_1 (.A(stage_comb_logic_0_P[27]), .B(stage_comb_logic_0_P[28]), .Y(stage_comb_logic_0_n18));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U41__gate_1 (.A(stage_comb_logic_0_net1159), .B(stage_comb_logic_0_n18), .Y(stage_comb_logic_0_net1638));

    AO21x1_ASAP7_75t_R stage_comb_logic_0_U40__gate_1 (.A1(stage_comb_logic_0_P[26]), .A2(stage_comb_logic_0_C[26]), .B(stage_comb_logic_0_G[26]), .Y(stage_comb_logic_0_net1159));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U39__gate_1 (.A(stage_comb_logic_0_net1159), .B(stage_comb_logic_0_P[27]), .Y(stage_comb_logic_0_n19));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U38__gate_1 (.A(stage_comb_logic_0_n20), .B(stage_comb_logic_0_net1030), .Y(stage_comb_logic_0_net1037));

    OR2x2_ASAP7_75t_R stage_comb_logic_0_U37__gate_1 (.A(stage_comb_logic_0_net1395), .B(stage_comb_logic_0_n20), .Y(stage_comb_logic_0_net1394));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U36__gate_1 (.A(stage_comb_logic_0_G[27]), .Y(stage_comb_logic_0_n20));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U35__gate_1 (.A(stage_comb_logic_0_n19), .B(stage_comb_logic_0_n20), .Y(stage_comb_logic_0_C[28]));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U34__gate_1 (.A(stage_comb_logic_0_net1098), .Y(stage_comb_logic_0_net1614));

    OAI21xp33_ASAP7_75t_R stage_comb_logic_0_U33__gate_1 (.A1(stage_comb_logic_0_net1614), .A2(stage_comb_logic_0_n2), .B(stage_comb_logic_0_net1590), .Y(stage_comb_logic_0_net2103));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U32__gate_1 (.A(stage_comb_logic_0_net1614), .B(stage_comb_logic_0_n2), .Y(stage_comb_logic_0_n10));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U31__gate_1 (.A(stage_comb_logic_0_n3), .Y(stage_comb_logic_0_n5));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U30__gate_1 (.A(stage_comb_logic_0_net2103), .Y(stage_comb_logic_0_net1594));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U29__gate_1 (.A(stage_comb_logic_0_n17), .Y(stage_comb_logic_0_net2026));

    OAI21xp33_ASAP7_75t_R stage_comb_logic_0_U28__gate_1 (.A1(stage_comb_logic_0_n10), .A2(stage_comb_logic_0_n8), .B(stage_comb_logic_0_n16), .Y(stage_comb_logic_0_n17));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U27__gate_1 (.A(stage_comb_logic_0_n16), .Y(stage_comb_logic_0_n11));

    OAI21xp33_ASAP7_75t_R stage_comb_logic_0_U26__gate_1 (.A1(stage_comb_logic_0_n7), .A2(stage_comb_logic_0_G[11]), .B(stage_comb_logic_0_P[12]), .Y(stage_comb_logic_0_n16));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U25__gate_1 (.A(stage_comb_logic_0_P[10]), .Y(stage_comb_logic_0_n15));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U24__gate_1 (.A(stage_comb_logic_0_n14), .Y(stage_comb_logic_0_net2060));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U23__gate_3 (.A(stage_comb_logic_0_G[10]), .Y(stage_comb_logic_0_U23__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U23__gate_4 (.A(stage_comb_logic_0_U23__term_2), .B(stage_comb_logic_0_n15), .Y(stage_comb_logic_0_U23__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U23__gate_5 (.A(stage_comb_logic_0_U23__term_1), .Y(stage_comb_logic_0_n14));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U22__gate_1 (.A(stage_comb_logic_0_G[9]), .Y(stage_comb_logic_0_n4));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U21__gate_1 (.A(stage_comb_logic_0_P[12]), .B(stage_comb_logic_0_P[11]), .Y(stage_comb_logic_0_n9));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U20__gate_1 (.A(stage_comb_logic_0_net1614), .B(stage_comb_logic_0_n2), .Y(stage_comb_logic_0_n13));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U19__gate_1 (.A(stage_comb_logic_0_n13), .B(stage_comb_logic_0_n8), .Y(stage_comb_logic_0_n12));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U18__gate_1 (.A(stage_comb_logic_0_n11), .B(stage_comb_logic_0_n12), .Y(stage_comb_logic_0_net1001));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U17__gate_4 (.A(stage_comb_logic_0_net2060), .Y(stage_comb_logic_0_U17__term_3));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U17__gate_5 (.A(stage_comb_logic_0_U17__term_3), .B(stage_comb_logic_0_n9), .Y(stage_comb_logic_0_U17__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U17__gate_6 (.A(stage_comb_logic_0_U17__term_2), .B(stage_comb_logic_0_net1590), .Y(stage_comb_logic_0_U17__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U17__gate_7 (.A(stage_comb_logic_0_U17__term_1), .Y(stage_comb_logic_0_n8));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U16__gate_1 (.A(stage_comb_logic_0_net1099), .B(stage_comb_logic_0_net1582), .Y(stage_comb_logic_0_n2));

    NOR3xp33_ASAP7_75t_R stage_comb_logic_0_U15__gate_1 (.A(stage_comb_logic_0_net2060), .B(stage_comb_logic_0_n6), .C(stage_comb_logic_0_n5), .Y(stage_comb_logic_0_n7));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U14__gate_1 (.A(stage_comb_logic_0_P[11]), .Y(stage_comb_logic_0_n6));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U13__gate_3 (.A(stage_comb_logic_0_n5), .Y(stage_comb_logic_0_U13__term_2));
    OR2x2_ASAP7_75t_R stage_comb_logic_0_U13__gate_4 (.A(stage_comb_logic_0_U13__term_2), .B(stage_comb_logic_0_net2087), .Y(stage_comb_logic_0_U13__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U13__gate_5 (.A(stage_comb_logic_0_U13__term_1), .Y(stage_comb_logic_0_net1634));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U12__gate_3 (.A(stage_comb_logic_0_G[10]), .Y(stage_comb_logic_0_U12__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U12__gate_4 (.A(stage_comb_logic_0_U12__term_2), .B(stage_comb_logic_0_n4), .Y(stage_comb_logic_0_U12__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U12__gate_5 (.A(stage_comb_logic_0_U12__term_1), .Y(stage_comb_logic_0_n3));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U11__gate_1 (.A(stage_comb_logic_0_G[11]), .Y(stage_comb_logic_0_net2073));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U10__gate_3 (.A(stage_comb_logic_0_G[10]), .Y(stage_comb_logic_0_U10__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U10__gate_4 (.A(stage_comb_logic_0_U10__term_2), .B(stage_comb_logic_0_net2068), .Y(stage_comb_logic_0_U10__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U10__gate_5 (.A(stage_comb_logic_0_U10__term_1), .Y(stage_comb_logic_0_net892));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U9__gate_3 (.A(stage_comb_logic_0_G[9]), .Y(stage_comb_logic_0_U9__term_2));
    AND2x2_ASAP7_75t_R stage_comb_logic_0_U9__gate_4 (.A(stage_comb_logic_0_U9__term_2), .B(stage_comb_logic_0_net1375), .Y(stage_comb_logic_0_U9__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U9__gate_5 (.A(stage_comb_logic_0_U9__term_1), .Y(stage_comb_logic_0_C_10));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_U8__gate_1 (.A(stage_comb_logic_0_net1105), .B(stage_comb_logic_0_net1099), .Y(stage_comb_logic_0_net1103));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U7__gate_1 (.A(stage_comb_logic_0_net1615), .B(stage_comb_logic_0_net1099), .Y(stage_comb_logic_0_C_8));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U6__gate_1 (.A(stage_comb_logic_0_net1582), .Y(stage_comb_logic_0_net1591));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U5__gate_1 (.A(stage_comb_logic_0_P[25]), .Y(stage_comb_logic_0_net877));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U4__gate_1 (.A(stage_comb_logic_0_P[30]), .Y(stage_comb_logic_0_n83));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U3__gate_1 (.A(stage_comb_logic_0_G[24]), .Y(stage_comb_logic_0_net1109));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U2__gate_1 (.A(stage_comb_logic_0_n86), .Y(stage_comb_logic_0_C_1));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_FA_0__gen_adder_adder_inst_U5__gate_1 (.A(stage_datapath_out[1]), .B(stage_datapath_out[33]), .Y(stage_comb_logic_0_G[0]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_FA_0__gen_adder_adder_inst_U4__gate_1 (.A(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n3), .B(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n2), .Y(comb_datapath_out[0]));

    HB1xp67_ASAP7_75t_R stage_comb_logic_0_FA_0__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[33]), .Y(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n3));

    INVx1_ASAP7_75t_R stage_comb_logic_0_FA_0__gen_adder_adder_inst_U2__gate_1 (.A(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n1), .Y(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n2));

    INVx1_ASAP7_75t_R stage_comb_logic_0_FA_0__gen_adder_adder_inst_U1__gate_1 (.A(stage_datapath_out[1]), .Y(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n1));

    HB1xp67_ASAP7_75t_R stage_comb_logic_0_FA_1__gen_adder_adder_inst_U6__gate_1 (.A(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net1156), .Y(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net997));

    INVx1_ASAP7_75t_R stage_comb_logic_0_FA_1__gen_adder_adder_inst_U5__gate_1 (.A(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net1155), .Y(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net1156));

    INVx1_ASAP7_75t_R stage_comb_logic_0_FA_1__gen_adder_adder_inst_U4__gate_1 (.A(stage_comb_logic_0_P[1]), .Y(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net1155));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_FA_1__gen_adder_adder_inst_U2__gate_1 (.A(stage_datapath_out[34]), .B(stage_datapath_out[2]), .Y(stage_comb_logic_0_P[1]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_FA_1__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[2]), .B(stage_datapath_out[34]), .Y(stage_comb_logic_0_G[1]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_FA_1__gen_adder_adder_inst_U1__gate_1 (.A(stage_comb_logic_0_n93), .B(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net997), .Y(comb_datapath_out[1]));

    XNOR2xp5_ASAP7_75t_R stage_comb_logic_0_FA_25__gen_adder_adder_inst_U4__gate_1 (.A(stage_comb_logic_0_n68), .B(stage_comb_logic_0_FA_25__gen_adder_adder_inst_n1), .Y(comb_datapath_out[25]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_FA_25__gen_adder_adder_inst_U2__gate_1 (.A(stage_datapath_out[58]), .B(stage_datapath_out[26]), .Y(stage_comb_logic_0_P[25]));

    INVx1_ASAP7_75t_R stage_comb_logic_0_FA_25__gen_adder_adder_inst_U1__gate_1 (.A(stage_comb_logic_0_P[25]), .Y(stage_comb_logic_0_FA_25__gen_adder_adder_inst_n1));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_FA_25__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[26]), .B(stage_datapath_out[58]), .Y(stage_comb_logic_0_G[25]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_FA_28__gen_adder_adder_inst_U4__gate_1 (.A(stage_datapath_out[61]), .B(stage_datapath_out[29]), .Y(stage_comb_logic_0_P[28]));

    INVx1_ASAP7_75t_R stage_comb_logic_0_FA_28__gen_adder_adder_inst_U2__gate_1 (.A(stage_comb_logic_0_P[28]), .Y(stage_comb_logic_0_FA_28__gen_adder_adder_inst_n1));

    XNOR2xp5_ASAP7_75t_R stage_comb_logic_0_FA_28__gen_adder_adder_inst_U1__gate_1 (.A(stage_comb_logic_0_C[28]), .B(stage_comb_logic_0_FA_28__gen_adder_adder_inst_n1), .Y(comb_datapath_out[28]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_FA_28__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[29]), .B(stage_datapath_out[61]), .Y(stage_comb_logic_0_G[28]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_FA_29__gen_adder_adder_inst_U4__gate_1 (.A(stage_datapath_out[62]), .B(stage_datapath_out[30]), .Y(stage_comb_logic_0_P[29]));

    INVx1_ASAP7_75t_R stage_comb_logic_0_FA_29__gen_adder_adder_inst_U2__gate_1 (.A(stage_comb_logic_0_P[29]), .Y(stage_comb_logic_0_FA_29__gen_adder_adder_inst_n1));

    XNOR2xp5_ASAP7_75t_R stage_comb_logic_0_FA_29__gen_adder_adder_inst_U1__gate_1 (.A(stage_comb_logic_0_C[29]), .B(stage_comb_logic_0_FA_29__gen_adder_adder_inst_n1), .Y(comb_datapath_out[29]));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_FA_29__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[30]), .B(stage_datapath_out[62]), .Y(stage_comb_logic_0_G[29]));

    XNOR2xp5_ASAP7_75t_R stage_comb_logic_0_FA_30__gen_adder_adder_inst_U4__gate_1 (.A(stage_comb_logic_0_C[30]), .B(stage_comb_logic_0_FA_30__gen_adder_adder_inst_n1), .Y(comb_datapath_out[30]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_FA_30__gen_adder_adder_inst_U2__gate_1 (.A(stage_datapath_out[63]), .B(stage_datapath_out[31]), .Y(stage_comb_logic_0_P[30]));

    INVx1_ASAP7_75t_R stage_comb_logic_0_FA_30__gen_adder_adder_inst_U1__gate_1 (.A(stage_comb_logic_0_P[30]), .Y(stage_comb_logic_0_FA_30__gen_adder_adder_inst_n1));

    AND2x2_ASAP7_75t_R stage_comb_logic_0_FA_30__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[31]), .B(stage_datapath_out[63]), .Y(stage_comb_logic_0_G[30]));
  click_ctrl_1 stage_0_click_ctrl ( .rst(rst), .Lreq(Lreq), .Lack(Lack),
        .Rreq(stage_0_Rreq), .Rack(stage_0_Rack), .clk(stage_0_clk) );
  delay_lines_0 stages_delay ( .in(stage_0_Rreq), .out(stage_0_Lreq_delay) );
  click_ctrl_0 stage_1_click_ctrl ( .rst(rst), .Lreq(stage_0_Lreq_delay),
        .Lack(stage_0_Rack), .Rreq(Rreq), .Rack(Rack), .clk(stage_1_clk) );

    TIEHIx1_ASAP7_75t_R tie_high (.H(pdk_tie_high));
endmodule

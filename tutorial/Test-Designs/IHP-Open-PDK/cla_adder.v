// Asynchronous carry-lookahead adder.
// IHP-Open-PDK mapping; explicit delay cells use buffer chains.

module delay_lines_0 ( in, out );
    wire U4__delay_1, U5__delay_1, U5__delay_3, U5__delay_5;

  input in;
  output out;
  wire   in_0_, n7, w0_0_, n1, n2, n3, n4, n5, out_0_;
  assign in_0_ = in;
  assign out = out_0_;

    sg13g2_inv_1 I_1__gate_1 (.A(w0_0_), .Y(n7));

    sg13g2_inv_1 I_0__gate_1 (.A(n5), .Y(w0_0_));

    sg13g2_buf_1 U1__gate_1 (.A(in_0_), .X(n1));

    sg13g2_buf_1 U2__gate_1 (.A(n1), .X(n2));

    sg13g2_buf_1 U3__gate_1 (.A(n2), .X(n3));

    sg13g2_buf_1 U4__gate_2 (.A(n3), .X(U4__delay_1));
    sg13g2_buf_1 U4__gate_3 (.A(U4__delay_1), .X(n4));

    sg13g2_buf_1 U5__gate_2 (.A(n4), .X(U5__delay_1));
    sg13g2_buf_1 U5__gate_4 (.A(U5__delay_1), .X(U5__delay_3));
    sg13g2_buf_1 U5__gate_6 (.A(U5__delay_3), .X(U5__delay_5));
    sg13g2_buf_1 U5__gate_7 (.A(U5__delay_5), .X(n5));

    sg13g2_buf_1 U6__gate_1 (.A(n7), .X(out_0_));

endmodule

module delay_line_clk_0 ( in, out );

  input in;
  output out;
  wire   out;
  assign out = in;

endmodule

module flop_0 ( rst, clk, D, Q );

  input rst, clk, D;
  output Q;

    sg13g2_dfrbpq_1 Q_reg__ff_1 (.D(D), .CLK(clk), .RESET_B(rst), .Q(Q));

endmodule

module ctrl_block_0 ( rst, Lreq, Lack, Rreq, Rack, delay_i, delay_o, clk );
    wire U2__term_1, U2__term_2, U2__term_4;

  input rst, Lreq, Rack, delay_i;
  output Lack, Rreq, delay_o, clk;
  wire   delay_i, _dff, n1, n2, n3;
  assign Rreq = delay_i;
  assign Lack = delay_i;

    sg13g2_nor2b_1 U1__gate_1 (.A(n1), .B_N(rst), .Y(clk));

    sg13g2_and3_1 U2__gate_3 (.A(delay_o), .B(n2), .C(Rack), .X(U2__term_2));
    sg13g2_and3_1 U2__gate_5 (.A(n3), .B(_dff), .C(Lreq), .X(U2__term_4));
    sg13g2_or2_1 U2__gate_6 (.A(U2__term_2), .B(U2__term_4), .X(U2__term_1));
    sg13g2_inv_1 U2__gate_7 (.A(U2__term_1), .Y(n1));

    sg13g2_inv_1 U3__gate_1 (.A(Rack), .Y(n3));

    sg13g2_inv_1 U4__gate_1 (.A(Lreq), .Y(n2));

    sg13g2_inv_1 U5__gate_1 (.A(delay_o), .Y(_dff));
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

  input rst, clk, D;
  output Q;

    sg13g2_dfrbpq_1 Q_reg__ff_1 (.D(D), .CLK(clk), .RESET_B(rst), .Q(Q));

endmodule

module ctrl_block_1 ( rst, Lreq, Lack, Rreq, Rack, delay_i, delay_o, clk );
    wire U2__term_1, U2__term_2, U2__term_4;

  input rst, Lreq, Rack, delay_i;
  output Lack, Rreq, delay_o, clk;
  wire   delay_i, _dff, n1, n2, n3;
  assign Rreq = delay_i;
  assign Lack = delay_i;

    sg13g2_nor2b_1 U1__gate_1 (.A(n1), .B_N(rst), .Y(clk));

    sg13g2_and3_1 U2__gate_3 (.A(delay_o), .B(n2), .C(Rack), .X(U2__term_2));
    sg13g2_and3_1 U2__gate_5 (.A(n3), .B(_dff), .C(Lreq), .X(U2__term_4));
    sg13g2_or2_1 U2__gate_6 (.A(U2__term_2), .B(U2__term_4), .X(U2__term_1));
    sg13g2_inv_1 U2__gate_7 (.A(U2__term_1), .Y(n1));

    sg13g2_inv_1 U3__gate_1 (.A(Rack), .Y(n3));

    sg13g2_inv_1 U4__gate_1 (.A(Lreq), .Y(n2));

    sg13g2_inv_1 U5__gate_1 (.A(delay_o), .Y(_dff));
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
    wire stage_comb_logic_0_U1100__term_1, stage_comb_logic_0_U1100__term_2, stage_comb_logic_0_U121__term_1, stage_comb_logic_0_U121__term_2, stage_comb_logic_0_U121__term_3, stage_comb_logic_0_U114__term_1;
    wire stage_comb_logic_0_U114__term_2, stage_comb_logic_0_U90__term_1, stage_comb_logic_0_U90__term_2, stage_comb_logic_0_U90__term_3, stage_comb_logic_0_U90__term_5;

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

    sg13g2_dfrbpq_1 stage_register_0_Q_reg63__ff_1 (.D(b_i[0]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[1]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg62__ff_1 (.D(b_i[1]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[2]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg61__ff_1 (.D(b_i[2]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[3]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg60__ff_1 (.D(b_i[3]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[4]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg59__ff_1 (.D(b_i[4]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[5]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg58__ff_1 (.D(b_i[5]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[6]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg57__ff_1 (.D(b_i[6]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[7]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg56__ff_1 (.D(b_i[7]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[8]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg55__ff_1 (.D(b_i[8]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[9]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg54__ff_1 (.D(b_i[9]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[10]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg53__ff_1 (.D(b_i[10]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[11]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg52__ff_1 (.D(b_i[11]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[12]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg51__ff_1 (.D(b_i[12]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[13]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg50__ff_1 (.D(b_i[13]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[14]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg49__ff_1 (.D(b_i[14]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[15]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg48__ff_1 (.D(b_i[15]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[16]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg47__ff_1 (.D(b_i[16]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[17]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg46__ff_1 (.D(b_i[17]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[18]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg45__ff_1 (.D(b_i[18]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[19]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg44__ff_1 (.D(b_i[19]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[20]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg43__ff_1 (.D(b_i[20]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[21]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg42__ff_1 (.D(b_i[21]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[22]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg41__ff_1 (.D(b_i[22]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[23]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg40__ff_1 (.D(b_i[23]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[24]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg39__ff_1 (.D(b_i[24]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[25]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg38__ff_1 (.D(b_i[25]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[26]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg37__ff_1 (.D(b_i[26]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[27]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg36__ff_1 (.D(b_i[27]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[28]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg35__ff_1 (.D(b_i[28]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[29]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg34__ff_1 (.D(b_i[29]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[30]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg33__ff_1 (.D(b_i[30]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[31]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg32__ff_1 (.D(b_i[31]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[32]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg31__ff_1 (.D(a_i[0]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[33]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg30__ff_1 (.D(a_i[1]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[34]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg29__ff_1 (.D(a_i[2]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[35]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg28__ff_1 (.D(a_i[3]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[36]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg27__ff_1 (.D(a_i[4]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[37]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg26__ff_1 (.D(a_i[5]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[38]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg25__ff_1 (.D(a_i[6]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[39]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg24__ff_1 (.D(a_i[7]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[40]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg23__ff_1 (.D(a_i[8]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[41]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg22__ff_1 (.D(a_i[9]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[42]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg21__ff_1 (.D(a_i[10]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[43]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg20__ff_1 (.D(a_i[11]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[44]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg19__ff_1 (.D(a_i[12]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[45]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg18__ff_1 (.D(a_i[13]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[46]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg17__ff_1 (.D(a_i[14]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[47]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg16__ff_1 (.D(a_i[15]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[48]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg15__ff_1 (.D(a_i[16]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[49]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg14__ff_1 (.D(a_i[17]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[50]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg13__ff_1 (.D(a_i[18]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[51]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg12__ff_1 (.D(a_i[19]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[52]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg11__ff_1 (.D(a_i[20]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[53]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg10__ff_1 (.D(a_i[21]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[54]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg9__ff_1 (.D(a_i[22]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[55]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg8__ff_1 (.D(a_i[23]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[56]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg7__ff_1 (.D(a_i[24]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[57]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg6__ff_1 (.D(a_i[25]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[58]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg5__ff_1 (.D(a_i[26]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[59]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg4__ff_1 (.D(a_i[27]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[60]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg3__ff_1 (.D(a_i[28]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[61]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg2__ff_1 (.D(a_i[29]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[62]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg1__ff_1 (.D(a_i[30]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[63]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg__ff_1 (.D(a_i[31]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[64]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg31__ff_1 (.D(comb_datapath_out[0]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[0]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg30__ff_1 (.D(comb_datapath_out[1]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[1]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg29__ff_1 (.D(comb_datapath_out[2]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[2]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg28__ff_1 (.D(comb_datapath_out[3]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[3]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg27__ff_1 (.D(comb_datapath_out[4]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[4]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg26__ff_1 (.D(comb_datapath_out[5]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[5]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg25__ff_1 (.D(comb_datapath_out[6]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[6]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg24__ff_1 (.D(comb_datapath_out[7]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[7]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg23__ff_1 (.D(comb_datapath_out[8]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[8]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg22__ff_1 (.D(comb_datapath_out[9]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[9]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg21__ff_1 (.D(comb_datapath_out[10]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[10]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg20__ff_1 (.D(comb_datapath_out[11]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[11]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg19__ff_1 (.D(comb_datapath_out[12]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[12]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg18__ff_1 (.D(comb_datapath_out[13]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[13]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg17__ff_1 (.D(comb_datapath_out[14]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[14]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg16__ff_1 (.D(comb_datapath_out[15]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[15]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg15__ff_1 (.D(comb_datapath_out[16]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[16]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg14__ff_1 (.D(comb_datapath_out[17]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[17]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg13__ff_1 (.D(comb_datapath_out[18]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[18]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg12__ff_1 (.D(comb_datapath_out[19]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[19]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg11__ff_1 (.D(comb_datapath_out[20]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[20]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg10__ff_1 (.D(comb_datapath_out[21]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[21]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg9__ff_1 (.D(comb_datapath_out[22]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[22]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg8__ff_1 (.D(comb_datapath_out[23]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[23]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg7__ff_1 (.D(comb_datapath_out[24]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[24]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg6__ff_1 (.D(comb_datapath_out[25]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[25]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg5__ff_1 (.D(comb_datapath_out[26]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[26]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg4__ff_1 (.D(comb_datapath_out[27]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[27]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg3__ff_1 (.D(comb_datapath_out[28]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[28]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg2__ff_1 (.D(comb_datapath_out[29]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[29]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg1__ff_1 (.D(comb_datapath_out[30]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[30]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg__ff_1 (.D(comb_datapath_out[31]), .CLK(stage_1_clk), .RESET_B(rst), .Q(sum_o[31]));

    sg13g2_xor2_1 stage_comb_logic_0_U1125__gate_1 (.A(stage_comb_logic_0_n98), .B(stage_comb_logic_0_P[2]), .X(comb_datapath_out[2]));

    sg13g2_and2_1 stage_comb_logic_0_U334__gate_1 (.A(stage_datapath_out[3]), .B(stage_datapath_out[35]), .X(stage_comb_logic_0_G[2]));

    sg13g2_xor2_1 stage_comb_logic_0_U275__gate_1 (.A(stage_datapath_out[35]), .B(stage_datapath_out[3]), .X(stage_comb_logic_0_P[2]));

    sg13g2_xor2_1 stage_comb_logic_0_U1124__gate_1 (.A(stage_comb_logic_0_n87), .B(stage_comb_logic_0_P[3]), .X(comb_datapath_out[3]));

    sg13g2_and2_1 stage_comb_logic_0_U333__gate_1 (.A(stage_datapath_out[4]), .B(stage_datapath_out[36]), .X(stage_comb_logic_0_G[3]));

    sg13g2_xor2_1 stage_comb_logic_0_U274__gate_1 (.A(stage_datapath_out[36]), .B(stage_datapath_out[4]), .X(stage_comb_logic_0_P[3]));

    sg13g2_xor2_1 stage_comb_logic_0_U1123__gate_1 (.A(stage_comb_logic_0_net992), .B(stage_comb_logic_0_P[4]), .X(comb_datapath_out[4]));

    sg13g2_and2_1 stage_comb_logic_0_U332__gate_1 (.A(stage_datapath_out[5]), .B(stage_datapath_out[37]), .X(stage_comb_logic_0_G[4]));

    sg13g2_xor2_1 stage_comb_logic_0_U273__gate_1 (.A(stage_datapath_out[37]), .B(stage_datapath_out[5]), .X(stage_comb_logic_0_P[4]));

    sg13g2_xor2_1 stage_comb_logic_0_U1122__gate_1 (.A(stage_comb_logic_0_n79), .B(stage_comb_logic_0_P[5]), .X(comb_datapath_out[5]));

    sg13g2_xor2_1 stage_comb_logic_0_U272__gate_1 (.A(stage_datapath_out[38]), .B(stage_datapath_out[6]), .X(stage_comb_logic_0_P[5]));

    sg13g2_and2_1 stage_comb_logic_0_U331__gate_1 (.A(stage_datapath_out[6]), .B(stage_datapath_out[38]), .X(stage_comb_logic_0_G[5]));

    sg13g2_xor2_1 stage_comb_logic_0_U1121__gate_1 (.A(stage_comb_logic_0_C_6), .B(stage_comb_logic_0_P[6]), .X(comb_datapath_out[6]));

    sg13g2_and2_1 stage_comb_logic_0_U330__gate_1 (.A(stage_datapath_out[7]), .B(stage_datapath_out[39]), .X(stage_comb_logic_0_G[6]));

    sg13g2_xor2_1 stage_comb_logic_0_U271__gate_1 (.A(stage_datapath_out[39]), .B(stage_datapath_out[7]), .X(stage_comb_logic_0_P[6]));

    sg13g2_xor2_1 stage_comb_logic_0_U1120__gate_1 (.A(stage_comb_logic_0_net893), .B(stage_comb_logic_0_P[7]), .X(comb_datapath_out[7]));

    sg13g2_and2_1 stage_comb_logic_0_U329__gate_1 (.A(stage_datapath_out[8]), .B(stage_datapath_out[40]), .X(stage_comb_logic_0_G[7]));

    sg13g2_xor2_1 stage_comb_logic_0_U270__gate_1 (.A(stage_datapath_out[40]), .B(stage_datapath_out[8]), .X(stage_comb_logic_0_P[7]));

    sg13g2_xor2_1 stage_comb_logic_0_U1119__gate_1 (.A(stage_comb_logic_0_net1088), .B(stage_comb_logic_0_P[8]), .X(comb_datapath_out[8]));

    sg13g2_and2_1 stage_comb_logic_0_U328__gate_1 (.A(stage_datapath_out[9]), .B(stage_datapath_out[41]), .X(stage_comb_logic_0_G[8]));

    sg13g2_xor2_1 stage_comb_logic_0_U269__gate_1 (.A(stage_datapath_out[41]), .B(stage_datapath_out[9]), .X(stage_comb_logic_0_P[8]));

    sg13g2_xor2_1 stage_comb_logic_0_U1118__gate_1 (.A(stage_comb_logic_0_net1052), .B(stage_comb_logic_0_P[9]), .X(comb_datapath_out[9]));

    sg13g2_xor2_1 stage_comb_logic_0_U268__gate_1 (.A(stage_datapath_out[42]), .B(stage_datapath_out[10]), .X(stage_comb_logic_0_P[9]));

    sg13g2_and2_1 stage_comb_logic_0_U327__gate_1 (.A(stage_datapath_out[10]), .B(stage_datapath_out[42]), .X(stage_comb_logic_0_G[9]));

    sg13g2_xor2_1 stage_comb_logic_0_U1117__gate_1 (.A(stage_comb_logic_0_net1167), .B(stage_comb_logic_0_P[10]), .X(comb_datapath_out[10]));

    sg13g2_and2_1 stage_comb_logic_0_U326__gate_1 (.A(stage_datapath_out[11]), .B(stage_datapath_out[43]), .X(stage_comb_logic_0_G[10]));

    sg13g2_xor2_1 stage_comb_logic_0_U267__gate_1 (.A(stage_datapath_out[43]), .B(stage_datapath_out[11]), .X(stage_comb_logic_0_P[10]));

    sg13g2_xor2_1 stage_comb_logic_0_U1116__gate_1 (.A(stage_comb_logic_0_net892), .B(stage_comb_logic_0_P[11]), .X(comb_datapath_out[11]));

    sg13g2_xor2_1 stage_comb_logic_0_U266__gate_1 (.A(stage_datapath_out[44]), .B(stage_datapath_out[12]), .X(stage_comb_logic_0_P[11]));

    sg13g2_and2_1 stage_comb_logic_0_U325__gate_1 (.A(stage_datapath_out[12]), .B(stage_datapath_out[44]), .X(stage_comb_logic_0_G[11]));

    sg13g2_xor2_1 stage_comb_logic_0_U1115__gate_1 (.A(stage_comb_logic_0_net1152), .B(stage_comb_logic_0_P[12]), .X(comb_datapath_out[12]));

    sg13g2_xor2_1 stage_comb_logic_0_U265__gate_1 (.A(stage_datapath_out[45]), .B(stage_datapath_out[13]), .X(stage_comb_logic_0_P[12]));

    sg13g2_and2_1 stage_comb_logic_0_U324__gate_1 (.A(stage_datapath_out[13]), .B(stage_datapath_out[45]), .X(stage_comb_logic_0_G[12]));

    sg13g2_xor2_1 stage_comb_logic_0_U1114__gate_1 (.A(stage_comb_logic_0_net1174), .B(stage_comb_logic_0_P[13]), .X(comb_datapath_out[13]));

    sg13g2_and2_1 stage_comb_logic_0_U323__gate_1 (.A(stage_datapath_out[14]), .B(stage_datapath_out[46]), .X(stage_comb_logic_0_G[13]));

    sg13g2_xor2_1 stage_comb_logic_0_U264__gate_1 (.A(stage_datapath_out[46]), .B(stage_datapath_out[14]), .X(stage_comb_logic_0_P[13]));

    sg13g2_xor2_1 stage_comb_logic_0_U1113__gate_1 (.A(stage_comb_logic_0_n69), .B(stage_comb_logic_0_P[14]), .X(comb_datapath_out[14]));

    sg13g2_xor2_1 stage_comb_logic_0_U263__gate_1 (.A(stage_datapath_out[47]), .B(stage_datapath_out[15]), .X(stage_comb_logic_0_P[14]));

    sg13g2_and2_1 stage_comb_logic_0_U322__gate_1 (.A(stage_datapath_out[15]), .B(stage_datapath_out[47]), .X(stage_comb_logic_0_G[14]));

    sg13g2_xor2_1 stage_comb_logic_0_U1112__gate_1 (.A(stage_comb_logic_0_net1196), .B(stage_comb_logic_0_P[15]), .X(comb_datapath_out[15]));

    sg13g2_and2_1 stage_comb_logic_0_U321__gate_1 (.A(stage_datapath_out[16]), .B(stage_datapath_out[48]), .X(stage_comb_logic_0_G[15]));

    sg13g2_xor2_1 stage_comb_logic_0_U262__gate_1 (.A(stage_datapath_out[48]), .B(stage_datapath_out[16]), .X(stage_comb_logic_0_P[15]));

    sg13g2_xor2_1 stage_comb_logic_0_U261__gate_1 (.A(stage_datapath_out[49]), .B(stage_datapath_out[17]), .X(stage_comb_logic_0_P[16]));

    sg13g2_and2_1 stage_comb_logic_0_U320__gate_1 (.A(stage_datapath_out[17]), .B(stage_datapath_out[49]), .X(stage_comb_logic_0_G[16]));

    sg13g2_xor2_1 stage_comb_logic_0_U1111__gate_1 (.A(stage_comb_logic_0_net955), .B(stage_comb_logic_0_P[16]), .X(comb_datapath_out[16]));

    sg13g2_xor2_1 stage_comb_logic_0_U1110__gate_1 (.A(stage_comb_logic_0_n49), .B(stage_comb_logic_0_P[17]), .X(comb_datapath_out[17]));

    sg13g2_xor2_1 stage_comb_logic_0_U260__gate_1 (.A(stage_datapath_out[50]), .B(stage_datapath_out[18]), .X(stage_comb_logic_0_P[17]));

    sg13g2_and2_1 stage_comb_logic_0_U319__gate_1 (.A(stage_datapath_out[18]), .B(stage_datapath_out[50]), .X(stage_comb_logic_0_G[17]));

    sg13g2_xor2_1 stage_comb_logic_0_U1109__gate_1 (.A(stage_comb_logic_0_net888), .B(stage_comb_logic_0_P[18]), .X(comb_datapath_out[18]));

    sg13g2_and2_1 stage_comb_logic_0_U318__gate_1 (.A(stage_datapath_out[19]), .B(stage_datapath_out[51]), .X(stage_comb_logic_0_G[18]));

    sg13g2_xor2_1 stage_comb_logic_0_U259__gate_1 (.A(stage_datapath_out[51]), .B(stage_datapath_out[19]), .X(stage_comb_logic_0_P[18]));

    sg13g2_xor2_1 stage_comb_logic_0_U258__gate_1 (.A(stage_datapath_out[52]), .B(stage_datapath_out[20]), .X(stage_comb_logic_0_P[19]));

    sg13g2_and2_1 stage_comb_logic_0_U317__gate_1 (.A(stage_datapath_out[20]), .B(stage_datapath_out[52]), .X(stage_comb_logic_0_G[19]));

    sg13g2_xor2_1 stage_comb_logic_0_U1108__gate_1 (.A(stage_comb_logic_0_net884), .B(stage_comb_logic_0_P[19]), .X(comb_datapath_out[19]));

    sg13g2_xor2_1 stage_comb_logic_0_U1107__gate_1 (.A(stage_comb_logic_0_net1134), .B(stage_comb_logic_0_P[20]), .X(comb_datapath_out[20]));

    sg13g2_xor2_1 stage_comb_logic_0_U257__gate_1 (.A(stage_datapath_out[53]), .B(stage_datapath_out[21]), .X(stage_comb_logic_0_P[20]));

    sg13g2_and2_1 stage_comb_logic_0_U316__gate_1 (.A(stage_datapath_out[21]), .B(stage_datapath_out[53]), .X(stage_comb_logic_0_G[20]));

    sg13g2_xor2_1 stage_comb_logic_0_U1106__gate_1 (.A(stage_comb_logic_0_n56), .B(stage_comb_logic_0_P[21]), .X(comb_datapath_out[21]));

    sg13g2_and2_1 stage_comb_logic_0_U315__gate_1 (.A(stage_datapath_out[22]), .B(stage_datapath_out[54]), .X(stage_comb_logic_0_G[21]));

    sg13g2_xor2_1 stage_comb_logic_0_U256__gate_1 (.A(stage_datapath_out[54]), .B(stage_datapath_out[22]), .X(stage_comb_logic_0_P[21]));

    sg13g2_xor2_1 stage_comb_logic_0_U255__gate_1 (.A(stage_datapath_out[55]), .B(stage_datapath_out[23]), .X(stage_comb_logic_0_P[22]));

    sg13g2_and2_1 stage_comb_logic_0_U314__gate_1 (.A(stage_datapath_out[23]), .B(stage_datapath_out[55]), .X(stage_comb_logic_0_G[22]));

    sg13g2_xor2_1 stage_comb_logic_0_U1105__gate_1 (.A(stage_comb_logic_0_net891), .B(stage_comb_logic_0_P[22]), .X(comb_datapath_out[22]));

    sg13g2_and2_1 stage_comb_logic_0_U313__gate_1 (.A(stage_datapath_out[24]), .B(stage_datapath_out[56]), .X(stage_comb_logic_0_G[23]));

    sg13g2_xor2_1 stage_comb_logic_0_U1104__gate_1 (.A(stage_comb_logic_0_net880), .B(stage_comb_logic_0_P[23]), .X(comb_datapath_out[23]));

    sg13g2_xor2_1 stage_comb_logic_0_U254__gate_1 (.A(stage_datapath_out[56]), .B(stage_datapath_out[24]), .X(stage_comb_logic_0_P[23]));

    sg13g2_xor2_1 stage_comb_logic_0_U253__gate_1 (.A(stage_datapath_out[57]), .B(stage_datapath_out[25]), .X(stage_comb_logic_0_P[24]));

    sg13g2_and2_1 stage_comb_logic_0_U312__gate_1 (.A(stage_datapath_out[25]), .B(stage_datapath_out[57]), .X(stage_comb_logic_0_G[24]));

    sg13g2_xor2_1 stage_comb_logic_0_U1103__gate_1 (.A(stage_comb_logic_0_net1078), .B(stage_comb_logic_0_P[24]), .X(comb_datapath_out[24]));

    sg13g2_xor2_1 stage_comb_logic_0_U1102__gate_1 (.A(stage_comb_logic_0_n74), .B(stage_comb_logic_0_P[26]), .X(comb_datapath_out[26]));

    sg13g2_xor2_1 stage_comb_logic_0_U252__gate_1 (.A(stage_datapath_out[59]), .B(stage_datapath_out[27]), .X(stage_comb_logic_0_P[26]));

    sg13g2_and2_1 stage_comb_logic_0_U311__gate_1 (.A(stage_datapath_out[27]), .B(stage_datapath_out[59]), .X(stage_comb_logic_0_G[26]));

    sg13g2_xor2_1 stage_comb_logic_0_U1101__gate_1 (.A(stage_comb_logic_0_net1159), .B(stage_comb_logic_0_P[27]), .X(comb_datapath_out[27]));

    sg13g2_and2_1 stage_comb_logic_0_U310__gate_1 (.A(stage_datapath_out[28]), .B(stage_datapath_out[60]), .X(stage_comb_logic_0_G[27]));

    sg13g2_xor2_1 stage_comb_logic_0_U251__gate_1 (.A(stage_datapath_out[60]), .B(stage_datapath_out[28]), .X(stage_comb_logic_0_P[27]));

    sg13g2_xor2_1 stage_comb_logic_0_U1100__gate_3 (.A(stage_comb_logic_0_C[31]), .B(stage_comb_logic_0_n110), .X(stage_comb_logic_0_U1100__term_2));
    sg13g2_xor2_1 stage_comb_logic_0_U1100__gate_4 (.A(stage_comb_logic_0_U1100__term_2), .B(stage_datapath_out[64]), .X(stage_comb_logic_0_U1100__term_1));
    sg13g2_inv_1 stage_comb_logic_0_U1100__gate_5 (.A(stage_comb_logic_0_U1100__term_1), .Y(comb_datapath_out[31]));

    sg13g2_inv_1 stage_comb_logic_0_U250__gate_1 (.A(stage_datapath_out[32]), .Y(stage_comb_logic_0_n110));

    sg13g2_a21o_1 stage_comb_logic_0_U249__gate_1 (.A1(stage_comb_logic_0_C_1), .A2(stage_comb_logic_0_P[1]), .B1(stage_comb_logic_0_G[1]), .X(stage_comb_logic_0_C_2));

    sg13g2_nand2_1 stage_comb_logic_0_U248__gate_1 (.A(stage_comb_logic_0_net874), .B(stage_comb_logic_0_n99), .Y(stage_comb_logic_0_C[26]));

    sg13g2_inv_1 stage_comb_logic_0_U247__gate_1 (.A(stage_comb_logic_0_G[25]), .Y(stage_comb_logic_0_n99));

    sg13g2_inv_1 stage_comb_logic_0_U246__gate_1 (.A(stage_comb_logic_0_net911), .Y(stage_comb_logic_0_net883));

    sg13g2_inv_1 stage_comb_logic_0_U245__gate_1 (.A(stage_comb_logic_0_n97), .Y(stage_comb_logic_0_n98));

    sg13g2_inv_1 stage_comb_logic_0_U244__gate_1 (.A(stage_comb_logic_0_C_2), .Y(stage_comb_logic_0_n97));

    sg13g2_inv_1 stage_comb_logic_0_U243__gate_1 (.A(stage_comb_logic_0_G[13]), .Y(stage_comb_logic_0_net925));

    sg13g2_nand2_1 stage_comb_logic_0_U242__gate_1 (.A(stage_comb_logic_0_n95), .B(stage_comb_logic_0_n96), .Y(stage_comb_logic_0_C_3));

    sg13g2_inv_1 stage_comb_logic_0_U241__gate_1 (.A(stage_comb_logic_0_G[2]), .Y(stage_comb_logic_0_n96));

    sg13g2_nand2_1 stage_comb_logic_0_U240__gate_1 (.A(stage_comb_logic_0_C_2), .B(stage_comb_logic_0_P[2]), .Y(stage_comb_logic_0_n95));

    sg13g2_inv_1 stage_comb_logic_0_U239__gate_1 (.A(stage_comb_logic_0_G[28]), .Y(stage_comb_logic_0_n94));

    sg13g2_inv_1 stage_comb_logic_0_U238__gate_1 (.A(stage_comb_logic_0_n92), .Y(stage_comb_logic_0_n93));

    sg13g2_inv_1 stage_comb_logic_0_U237__gate_1 (.A(stage_comb_logic_0_C_1), .Y(stage_comb_logic_0_n92));

    sg13g2_inv_1 stage_comb_logic_0_U236__gate_1 (.A(stage_comb_logic_0_G[4]), .Y(stage_comb_logic_0_n90));

    sg13g2_nand2_1 stage_comb_logic_0_U235__gate_1 (.A(stage_comb_logic_0_C_3), .B(stage_comb_logic_0_P[3]), .Y(stage_comb_logic_0_net986));

    sg13g2_inv_1 stage_comb_logic_0_U234__gate_1 (.A(stage_comb_logic_0_n88), .Y(stage_comb_logic_0_n89));

    sg13g2_inv_1 stage_comb_logic_0_U233__gate_1 (.A(stage_comb_logic_0_n95), .Y(stage_comb_logic_0_n88));

    sg13g2_nand2_1 stage_comb_logic_0_U232__gate_1 (.A(stage_comb_logic_0_n89), .B(stage_comb_logic_0_n96), .Y(stage_comb_logic_0_n87));

    sg13g2_inv_1 stage_comb_logic_0_U231__gate_1 (.A(stage_comb_logic_0_net993), .Y(stage_comb_logic_0_net994));

    sg13g2_inv_1 stage_comb_logic_0_U230__gate_1 (.A(stage_comb_logic_0_net986), .Y(stage_comb_logic_0_net993));

    sg13g2_inv_1 stage_comb_logic_0_U229__gate_1 (.A(stage_comb_logic_0_G[29]), .Y(stage_comb_logic_0_n85));

    sg13g2_inv_1 stage_comb_logic_0_U228__gate_1 (.A(stage_comb_logic_0_G[30]), .Y(stage_comb_logic_0_n84));

    sg13g2_and2_1 stage_comb_logic_0_U227__gate_1 (.A(stage_comb_logic_0_n94), .B(stage_comb_logic_0_n85), .X(stage_comb_logic_0_n82));

    sg13g2_inv_1 stage_comb_logic_0_U226__gate_1 (.A(stage_comb_logic_0_n85), .Y(stage_comb_logic_0_n81));

    sg13g2_or2_1 stage_comb_logic_0_U225__gate_1 (.A(stage_comb_logic_0_n81), .B(stage_comb_logic_0_P[29]), .X(stage_comb_logic_0_n80));

    sg13g2_inv_1 stage_comb_logic_0_U224__gate_1 (.A(stage_comb_logic_0_net1024), .Y(stage_comb_logic_0_net1025));

    sg13g2_inv_1 stage_comb_logic_0_U223__gate_1 (.A(stage_comb_logic_0_net1328), .Y(stage_comb_logic_0_net1024));

    sg13g2_nand2_1 stage_comb_logic_0_U222__gate_1 (.A(stage_comb_logic_0_net1025), .B(stage_comb_logic_0_n90), .Y(stage_comb_logic_0_n79));

    sg13g2_and2_1 stage_comb_logic_0_U221__gate_1 (.A(stage_comb_logic_0_P[28]), .B(stage_comb_logic_0_n80), .X(stage_comb_logic_0_n78));

    sg13g2_inv_1 stage_comb_logic_0_U220__gate_1 (.A(stage_comb_logic_0_n80), .Y(stage_comb_logic_0_n77));

    sg13g2_or2_1 stage_comb_logic_0_U219__gate_1 (.A(stage_comb_logic_0_n77), .B(stage_comb_logic_0_n82), .X(stage_comb_logic_0_net1030));

    sg13g2_inv_1 stage_comb_logic_0_U218__gate_1 (.A(stage_comb_logic_0_net1030), .Y(stage_comb_logic_0_net1036));

    sg13g2_or2_1 stage_comb_logic_0_U217__gate_1 (.A(stage_comb_logic_0_net1036), .B(stage_comb_logic_0_n78), .X(stage_comb_logic_0_net1035));

    sg13g2_inv_1 stage_comb_logic_0_U216__gate_1 (.A(stage_comb_logic_0_net1035), .Y(stage_comb_logic_0_net1041));

    sg13g2_or2_1 stage_comb_logic_0_U215__gate_1 (.A(stage_comb_logic_0_net1041), .B(stage_comb_logic_0_net1037), .X(stage_comb_logic_0_n76));

    sg13g2_nand2_1 stage_comb_logic_0_U214__gate_1 (.A(stage_comb_logic_0_net1180), .B(stage_comb_logic_0_n99), .Y(stage_comb_logic_0_n74));

    sg13g2_inv_1 stage_comb_logic_0_U213__gate_1 (.A(stage_comb_logic_0_G[5]), .Y(stage_comb_logic_0_n73));

    sg13g2_inv_1 stage_comb_logic_0_U212__gate_1 (.A(stage_comb_logic_0_net1103), .Y(stage_comb_logic_0_net1088));

    sg13g2_nand2_1 stage_comb_logic_0_U211__gate_1 (.A(stage_comb_logic_0_net1160), .B(stage_comb_logic_0_net1086), .Y(stage_comb_logic_0_n70));

    sg13g2_inv_1 stage_comb_logic_0_U210__gate_1 (.A(stage_comb_logic_0_net1094), .Y(stage_comb_logic_0_net1095));

    sg13g2_inv_1 stage_comb_logic_0_U209__gate_1 (.A(stage_comb_logic_0_net870), .Y(stage_comb_logic_0_net1094));

    sg13g2_nand2_1 stage_comb_logic_0_U208__gate_1 (.A(stage_comb_logic_0_n70), .B(stage_comb_logic_0_net1092), .Y(stage_comb_logic_0_net870));

    sg13g2_and2_1 stage_comb_logic_0_U207__gate_1 (.A(stage_comb_logic_0_n70), .B(stage_comb_logic_0_n71), .X(stage_comb_logic_0_C_6));

    sg13g2_inv_1 stage_comb_logic_0_U206__gate_1 (.A(stage_comb_logic_0_net1357), .Y(stage_comb_logic_0_net1105));

    sg13g2_inv_1 stage_comb_logic_0_U205__gate_1 (.A(stage_comb_logic_0_G[0]), .Y(stage_comb_logic_0_n86));

    sg13g2_nand2_1 stage_comb_logic_0_U204__gate_1 (.A(stage_comb_logic_0_net1184), .B(stage_comb_logic_0_net925), .Y(stage_comb_logic_0_n69));

    sg13g2_inv_1 stage_comb_logic_0_U203__gate_1 (.A(stage_comb_logic_0_net1151), .Y(stage_comb_logic_0_net1152));

    sg13g2_inv_1 stage_comb_logic_0_U202__gate_1 (.A(stage_comb_logic_0_net1613), .Y(stage_comb_logic_0_net1151));

    sg13g2_inv_1 stage_comb_logic_0_U201__gate_1 (.A(stage_comb_logic_0_net1024), .Y(stage_comb_logic_0_net1160));

    sg13g2_inv_1 stage_comb_logic_0_U200__gate_1 (.A(stage_comb_logic_0_net1166), .Y(stage_comb_logic_0_net1167));

    sg13g2_inv_1 stage_comb_logic_0_U199__gate_1 (.A(stage_comb_logic_0_C_10), .Y(stage_comb_logic_0_net1166));

    sg13g2_inv_1 stage_comb_logic_0_U198__gate_1 (.A(stage_comb_logic_0_net1175), .Y(stage_comb_logic_0_net1176));

    sg13g2_inv_1 stage_comb_logic_0_U197__gate_1 (.A(stage_comb_logic_0_net1179), .Y(stage_comb_logic_0_net1180));

    sg13g2_inv_1 stage_comb_logic_0_U196__gate_1 (.A(stage_comb_logic_0_net874), .Y(stage_comb_logic_0_net1179));

    sg13g2_inv_1 stage_comb_logic_0_U195__gate_1 (.A(stage_comb_logic_0_net1183), .Y(stage_comb_logic_0_net1184));

    sg13g2_inv_1 stage_comb_logic_0_U194__gate_1 (.A(stage_comb_logic_0_net1403), .Y(stage_comb_logic_0_net1183));

    sg13g2_inv_1 stage_comb_logic_0_U193__gate_1 (.A(stage_comb_logic_0_net1191), .Y(stage_comb_logic_0_net1192));

    sg13g2_inv_1 stage_comb_logic_0_U192__gate_1 (.A(stage_comb_logic_0_net969), .Y(stage_comb_logic_0_net1191));

    sg13g2_inv_1 stage_comb_logic_0_U191__gate_1 (.A(stage_comb_logic_0_net1383), .Y(stage_comb_logic_0_net1196));

    sg13g2_a21oi_1 stage_comb_logic_0_U190__gate_1 (.A1(stage_comb_logic_0_G[21]), .A2(stage_comb_logic_0_P[22]), .B1(stage_comb_logic_0_G[22]), .Y(stage_comb_logic_0_net1280));

    sg13g2_inv_1 stage_comb_logic_0_U189__gate_1 (.A(stage_comb_logic_0_G[20]), .Y(stage_comb_logic_0_net1276));

    sg13g2_nand2_1 stage_comb_logic_0_U188__gate_1 (.A(stage_comb_logic_0_P[22]), .B(stage_comb_logic_0_P[21]), .Y(stage_comb_logic_0_net1275));

    sg13g2_nand2b_1 stage_comb_logic_0_U187__gate_1 (.A_N(stage_comb_logic_0_G[21]), .B(stage_comb_logic_0_n67), .Y(stage_comb_logic_0_net891));

    sg13g2_inv_1 stage_comb_logic_0_U186__gate_1 (.A(stage_comb_logic_0_net877), .Y(stage_comb_logic_0_net1333));

    sg13g2_and2_1 stage_comb_logic_0_U185__gate_1 (.A(stage_comb_logic_0_n66), .B(stage_comb_logic_0_net1101), .X(stage_comb_logic_0_net1357));

    sg13g2_a21o_1 stage_comb_logic_0_U184__gate_1 (.A1(stage_comb_logic_0_net1078), .A2(stage_comb_logic_0_P[24]), .B1(stage_comb_logic_0_G[24]), .X(stage_comb_logic_0_n68));

    sg13g2_inv_1 stage_comb_logic_0_U183__gate_1 (.A(stage_comb_logic_0_net1594), .Y(stage_comb_logic_0_net1375));

    sg13g2_nand2_1 stage_comb_logic_0_U182__gate_1 (.A(stage_comb_logic_0_net1389), .B(stage_comb_logic_0_net1086), .Y(stage_comb_logic_0_n66));

    sg13g2_inv_1 stage_comb_logic_0_U181__gate_1 (.A(stage_comb_logic_0_net1388), .Y(stage_comb_logic_0_net1389));

    sg13g2_inv_1 stage_comb_logic_0_U180__gate_1 (.A(stage_comb_logic_0_net1631), .Y(stage_comb_logic_0_net1388));

    sg13g2_inv_1 stage_comb_logic_0_U179__gate_1 (.A(stage_comb_logic_0_P[28]), .Y(stage_comb_logic_0_net1395));

    sg13g2_inv_1 stage_comb_logic_0_U178__gate_1 (.A(stage_comb_logic_0_n83), .Y(stage_comb_logic_0_n65));

    sg13g2_inv_1 stage_comb_logic_0_U177__gate_1 (.A(stage_comb_logic_0_net1541), .Y(stage_comb_logic_0_net1261));

    sg13g2_nand2b_1 stage_comb_logic_0_U176__gate_1 (.A_N(stage_comb_logic_0_n63), .B(stage_comb_logic_0_n60), .Y(stage_comb_logic_0_net1541));

    sg13g2_inv_1 stage_comb_logic_0_U175__gate_1 (.A(stage_comb_logic_0_net1275), .Y(stage_comb_logic_0_n61));

    sg13g2_inv_1 stage_comb_logic_0_U174__gate_1 (.A(stage_comb_logic_0_G[18]), .Y(stage_comb_logic_0_net1496));

    sg13g2_nand3b_1 stage_comb_logic_0_U173__gate_1 (.A_N(stage_comb_logic_0_net1275), .B(stage_comb_logic_0_P[23]), .C(stage_comb_logic_0_P[20]), .Y(stage_comb_logic_0_net1509));

    sg13g2_inv_1 stage_comb_logic_0_U172__gate_1 (.A(stage_comb_logic_0_P[23]), .Y(stage_comb_logic_0_n63));

    sg13g2_a21oi_1 stage_comb_logic_0_U171__gate_1 (.A1(stage_comb_logic_0_n61), .A2(stage_comb_logic_0_n59), .B1(stage_comb_logic_0_n60), .Y(stage_comb_logic_0_net879));

    sg13g2_o21ai_1 stage_comb_logic_0_U170__gate_1 (.A1(stage_comb_logic_0_net1275), .A2(stage_comb_logic_0_net1276), .B1(stage_comb_logic_0_net1280), .Y(stage_comb_logic_0_n60));

    sg13g2_inv_1 stage_comb_logic_0_U169__gate_1 (.A(stage_comb_logic_0_net1383), .Y(stage_comb_logic_0_C_15));

    sg13g2_nand2_1 stage_comb_logic_0_U168__gate_1 (.A(stage_comb_logic_0_n56), .B(stage_comb_logic_0_P[21]), .Y(stage_comb_logic_0_n67));

    sg13g2_and2_1 stage_comb_logic_0_U167__gate_1 (.A(stage_comb_logic_0_n58), .B(stage_comb_logic_0_P[9]), .X(stage_comb_logic_0_n57));

    sg13g2_inv_1 stage_comb_logic_0_U166__gate_1 (.A(stage_comb_logic_0_P[9]), .Y(stage_comb_logic_0_net1583));

    sg13g2_nand2_1 stage_comb_logic_0_U165__gate_1 (.A(stage_comb_logic_0_n58), .B(stage_comb_logic_0_C_8), .Y(stage_comb_logic_0_net969));

    sg13g2_inv_1 stage_comb_logic_0_U164__gate_1 (.A(stage_comb_logic_0_P[8]), .Y(stage_comb_logic_0_n91));

    sg13g2_inv_1 stage_comb_logic_0_U163__gate_1 (.A(stage_comb_logic_0_n91), .Y(stage_comb_logic_0_n58));

    sg13g2_or2_1 stage_comb_logic_0_U162__gate_1 (.A(stage_comb_logic_0_net1591), .B(stage_comb_logic_0_n57), .X(stage_comb_logic_0_net1590));

    sg13g2_nand2_1 stage_comb_logic_0_U161__gate_1 (.A(stage_comb_logic_0_net1134), .B(stage_comb_logic_0_P[20]), .Y(stage_comb_logic_0_n62));

    sg13g2_inv_1 stage_comb_logic_0_U160__gate_1 (.A(stage_comb_logic_0_n62), .Y(stage_comb_logic_0_n59));

    sg13g2_inv_1 stage_comb_logic_0_U159__gate_1 (.A(stage_comb_logic_0_net1614), .Y(stage_comb_logic_0_net1615));

    sg13g2_nand2b_1 stage_comb_logic_0_U158__gate_1 (.A_N(stage_comb_logic_0_G[23]), .B(stage_comb_logic_0_net1231), .Y(stage_comb_logic_0_net1078));

    sg13g2_and2_1 stage_comb_logic_0_U157__gate_1 (.A(stage_comb_logic_0_net1042), .B(stage_comb_logic_0_n65), .X(stage_comb_logic_0_n55));

    sg13g2_inv_1 stage_comb_logic_0_U156__gate_1 (.A(stage_comb_logic_0_n65), .Y(stage_comb_logic_0_n54));

    sg13g2_or2_1 stage_comb_logic_0_U155__gate_1 (.A(stage_comb_logic_0_n54), .B(stage_comb_logic_0_n76), .X(stage_comb_logic_0_n53));

    sg13g2_inv_1 stage_comb_logic_0_U154__gate_1 (.A(stage_comb_logic_0_net1630), .Y(stage_comb_logic_0_net1627));

    sg13g2_and2_1 stage_comb_logic_0_U153__gate_1 (.A(stage_comb_logic_0_n90), .B(stage_comb_logic_0_n73), .X(stage_comb_logic_0_net1086));

    sg13g2_inv_1 stage_comb_logic_0_U152__gate_1 (.A(stage_comb_logic_0_n73), .Y(stage_comb_logic_0_n72));

    sg13g2_and2_1 stage_comb_logic_0_U151__gate_1 (.A(stage_comb_logic_0_n71), .B(stage_comb_logic_0_P[6]), .X(stage_comb_logic_0_net1092));

    sg13g2_or2_1 stage_comb_logic_0_U150__gate_1 (.A(stage_comb_logic_0_n72), .B(stage_comb_logic_0_P[5]), .X(stage_comb_logic_0_n71));

    sg13g2_inv_1 stage_comb_logic_0_U149__gate_1 (.A(stage_comb_logic_0_net1634), .Y(stage_comb_logic_0_net1635));

    sg13g2_and2_1 stage_comb_logic_0_U148__gate_1 (.A(stage_comb_logic_0_n94), .B(stage_comb_logic_0_net1394), .X(stage_comb_logic_0_n51));

    sg13g2_nand2_1 stage_comb_logic_0_U147__gate_1 (.A(stage_comb_logic_0_net1638), .B(stage_comb_logic_0_n51), .Y(stage_comb_logic_0_C[29]));

    sg13g2_nand2_1 stage_comb_logic_0_U146__gate_1 (.A(stage_comb_logic_0_C[27]), .B(stage_comb_logic_0_n55), .Y(stage_comb_logic_0_n52));

    sg13g2_nand2_1 stage_comb_logic_0_U145__gate_1 (.A(stage_comb_logic_0_C[27]), .B(stage_comb_logic_0_net1042), .Y(stage_comb_logic_0_n75));

    sg13g2_nand2_1 stage_comb_logic_0_U144__gate_1 (.A(stage_comb_logic_0_n75), .B(stage_comb_logic_0_n76), .Y(stage_comb_logic_0_C[30]));

    sg13g2_and2_1 stage_comb_logic_0_U143__gate_1 (.A(stage_comb_logic_0_n53), .B(stage_comb_logic_0_n84), .X(stage_comb_logic_0_n50));

    sg13g2_nand2_1 stage_comb_logic_0_U142__gate_1 (.A(stage_comb_logic_0_n52), .B(stage_comb_logic_0_n50), .Y(stage_comb_logic_0_C[31]));

    sg13g2_inv_1 stage_comb_logic_0_U141__gate_1 (.A(stage_comb_logic_0_net1133), .Y(stage_comb_logic_0_net1134));

    sg13g2_nand2_1 stage_comb_logic_0_U140__gate_1 (.A(stage_comb_logic_0_n62), .B(stage_comb_logic_0_net1276), .Y(stage_comb_logic_0_n56));

    sg13g2_inv_1 stage_comb_logic_0_U139__gate_1 (.A(stage_comb_logic_0_net879), .Y(stage_comb_logic_0_net880));

    sg13g2_inv_1 stage_comb_logic_0_U138__gate_1 (.A(stage_comb_logic_0_net1701), .Y(stage_comb_logic_0_net1771));

    sg13g2_inv_1 stage_comb_logic_0_U137__gate_1 (.A(stage_comb_logic_0_net1171), .Y(stage_comb_logic_0_n48));

    sg13g2_inv_1 stage_comb_logic_0_U136__gate_1 (.A(stage_comb_logic_0_n48), .Y(stage_comb_logic_0_n49));

    sg13g2_inv_1 stage_comb_logic_0_U135__gate_1 (.A(stage_comb_logic_0_net1756), .Y(stage_comb_logic_0_net1740));

    sg13g2_nand2_1 stage_comb_logic_0_U134__gate_1 (.A(stage_comb_logic_0_G[17]), .B(stage_comb_logic_0_P[18]), .Y(stage_comb_logic_0_net1742));

    sg13g2_inv_1 stage_comb_logic_0_U133__gate_1 (.A(stage_comb_logic_0_G[16]), .Y(stage_comb_logic_0_net1738));

    sg13g2_inv_1 stage_comb_logic_0_U132__gate_1 (.A(stage_comb_logic_0_P[18]), .Y(stage_comb_logic_0_net1495));

    sg13g2_nand2_1 stage_comb_logic_0_U131__gate_1 (.A(stage_comb_logic_0_P[17]), .B(stage_comb_logic_0_net1171), .Y(stage_comb_logic_0_net1543));

    sg13g2_nand2b_1 stage_comb_logic_0_U130__gate_1 (.A_N(stage_comb_logic_0_net1705), .B(stage_comb_logic_0_n47), .Y(stage_comb_logic_0_net1383));

    sg13g2_nor2_1 stage_comb_logic_0_U129__gate_1 (.A(stage_comb_logic_0_net1260), .B(stage_comb_logic_0_net1261), .Y(stage_comb_logic_0_net1231));

    sg13g2_nor2_1 stage_comb_logic_0_U128__gate_1 (.A(stage_comb_logic_0_net1133), .B(stage_comb_logic_0_net1509), .Y(stage_comb_logic_0_net1260));

    sg13g2_inv_1 stage_comb_logic_0_U127__gate_1 (.A(stage_comb_logic_0_net1935), .Y(stage_comb_logic_0_net1705));

    sg13g2_nand2b_1 stage_comb_logic_0_U126__gate_1 (.A_N(stage_comb_logic_0_G[14]), .B(stage_comb_logic_0_n46), .Y(stage_comb_logic_0_net1935));

    sg13g2_inv_1 stage_comb_logic_0_U125__gate_1 (.A(stage_comb_logic_0_P[14]), .Y(stage_comb_logic_0_n46));

    sg13g2_inv_1 stage_comb_logic_0_U124__gate_1 (.A(stage_comb_logic_0_n45), .Y(stage_comb_logic_0_net1324));

    sg13g2_nand2b_1 stage_comb_logic_0_U123__gate_1 (.A_N(stage_comb_logic_0_G[14]), .B(stage_comb_logic_0_net925), .Y(stage_comb_logic_0_n45));

    sg13g2_inv_1 stage_comb_logic_0_U122__gate_1 (.A(stage_comb_logic_0_P[13]), .Y(stage_comb_logic_0_net1933));

    sg13g2_nor2b_1 stage_comb_logic_0_U121__gate_4 (.A(stage_comb_logic_0_net1705), .B_N(stage_comb_logic_0_P[15]), .Y(stage_comb_logic_0_U121__term_3));
    sg13g2_and2_1 stage_comb_logic_0_U121__gate_5 (.A(stage_comb_logic_0_U121__term_3), .B(stage_comb_logic_0_P[16]), .X(stage_comb_logic_0_U121__term_2));
    sg13g2_and2_1 stage_comb_logic_0_U121__gate_6 (.A(stage_comb_logic_0_U121__term_2), .B(stage_comb_logic_0_n45), .X(stage_comb_logic_0_U121__term_1));
    sg13g2_inv_1 stage_comb_logic_0_U121__gate_7 (.A(stage_comb_logic_0_U121__term_1), .Y(stage_comb_logic_0_net1756));

    sg13g2_nand2_1 stage_comb_logic_0_U120__gate_1 (.A(stage_comb_logic_0_P[15]), .B(stage_comb_logic_0_C_15), .Y(stage_comb_logic_0_net1362));

    sg13g2_nand2_1 stage_comb_logic_0_U119__gate_1 (.A(stage_comb_logic_0_G[15]), .B(stage_comb_logic_0_P[16]), .Y(stage_comb_logic_0_net1737));

    sg13g2_inv_1 stage_comb_logic_0_U118__gate_1 (.A(stage_comb_logic_0_net1942), .Y(stage_comb_logic_0_net1911));

    sg13g2_inv_1 stage_comb_logic_0_U117__gate_1 (.A(stage_comb_logic_0_net1771), .Y(stage_comb_logic_0_net1402));

    sg13g2_inv_1 stage_comb_logic_0_U116__gate_1 (.A(stage_comb_logic_0_net1402), .Y(stage_comb_logic_0_net1403));

    sg13g2_nand2b_1 stage_comb_logic_0_U115__gate_1 (.A_N(stage_comb_logic_0_G[17]), .B(stage_comb_logic_0_net1543), .Y(stage_comb_logic_0_n64));

    sg13g2_nand3b_1 stage_comb_logic_0_U114__gate_3 (.A_N(stage_comb_logic_0_net1762), .B(stage_comb_logic_0_net1737), .C(stage_comb_logic_0_net1738), .Y(stage_comb_logic_0_U114__term_2));
    sg13g2_or2_1 stage_comb_logic_0_U114__gate_4 (.A(stage_comb_logic_0_U114__term_2), .B(stage_comb_logic_0_net1740), .X(stage_comb_logic_0_U114__term_1));
    sg13g2_inv_1 stage_comb_logic_0_U114__gate_5 (.A(stage_comb_logic_0_U114__term_1), .Y(stage_comb_logic_0_net1170));

    sg13g2_inv_1 stage_comb_logic_0_U113__gate_1 (.A(stage_comb_logic_0_net1170), .Y(stage_comb_logic_0_net1171));

    sg13g2_inv_1 stage_comb_logic_0_U112__gate_1 (.A(stage_comb_logic_0_n64), .Y(stage_comb_logic_0_net914));

    sg13g2_o21ai_1 stage_comb_logic_0_U111__gate_1 (.A1(stage_comb_logic_0_net914), .A2(stage_comb_logic_0_net1495), .B1(stage_comb_logic_0_net1496), .Y(stage_comb_logic_0_net911));

    sg13g2_nand2_1 stage_comb_logic_0_U110__gate_1 (.A(stage_comb_logic_0_net1403), .B(stage_comb_logic_0_net1324), .Y(stage_comb_logic_0_n47));

    sg13g2_nor2_1 stage_comb_logic_0_U109__gate_1 (.A(stage_comb_logic_0_net1911), .B(stage_comb_logic_0_net1933), .Y(stage_comb_logic_0_net1701));

    sg13g2_nand2b_1 stage_comb_logic_0_U108__gate_1 (.A_N(stage_comb_logic_0_G[12]), .B(stage_comb_logic_0_net1176), .Y(stage_comb_logic_0_net1174));

    sg13g2_nand2b_1 stage_comb_logic_0_U107__gate_1 (.A_N(stage_comb_logic_0_G[12]), .B(stage_comb_logic_0_net1001), .Y(stage_comb_logic_0_net1942));

    sg13g2_inv_1 stage_comb_logic_0_U106__gate_1 (.A(stage_comb_logic_0_net914), .Y(stage_comb_logic_0_net888));

    sg13g2_inv_1 stage_comb_logic_0_U105__gate_1 (.A(stage_comb_logic_0_net1362), .Y(stage_comb_logic_0_net1187));

    sg13g2_or2_1 stage_comb_logic_0_U104__gate_1 (.A(stage_comb_logic_0_G[15]), .B(stage_comb_logic_0_net1187), .X(stage_comb_logic_0_net955));

    sg13g2_inv_1 stage_comb_logic_0_U103__gate_1 (.A(stage_comb_logic_0_net883), .Y(stage_comb_logic_0_net884));

    sg13g2_inv_1 stage_comb_logic_0_U102__gate_1 (.A(stage_comb_logic_0_net2103), .Y(stage_comb_logic_0_net2087));

    sg13g2_nand2_1 stage_comb_logic_0_U101__gate_1 (.A(stage_comb_logic_0_net1167), .B(stage_comb_logic_0_P[10]), .Y(stage_comb_logic_0_net2068));

    sg13g2_inv_1 stage_comb_logic_0_U100__gate_1 (.A(stage_comb_logic_0_P[11]), .Y(stage_comb_logic_0_net2072));

    sg13g2_inv_1 stage_comb_logic_0_U99__gate_1 (.A(stage_comb_logic_0_net1635), .Y(stage_comb_logic_0_net2061));

    sg13g2_o21ai_1 stage_comb_logic_0_U98__gate_1 (.A1(stage_comb_logic_0_net1627), .A2(stage_comb_logic_0_net2072), .B1(stage_comb_logic_0_net2073), .Y(stage_comb_logic_0_net1613));

    sg13g2_nor2_1 stage_comb_logic_0_U97__gate_1 (.A(stage_comb_logic_0_net2060), .B(stage_comb_logic_0_net2061), .Y(stage_comb_logic_0_net1630));

    sg13g2_nand2b_1 stage_comb_logic_0_U96__gate_1 (.A_N(stage_comb_logic_0_G[23]), .B(stage_comb_logic_0_net1541), .Y(stage_comb_logic_0_n40));

    sg13g2_nor2_1 stage_comb_logic_0_U95__gate_1 (.A(stage_comb_logic_0_n40), .B(stage_comb_logic_0_n39), .Y(stage_comb_logic_0_n36));

    sg13g2_nand3b_1 stage_comb_logic_0_U94__gate_1 (.A_N(stage_comb_logic_0_G[18]), .B(stage_comb_logic_0_net1501), .C(stage_comb_logic_0_net1742), .Y(stage_comb_logic_0_net1741));

    sg13g2_inv_1 stage_comb_logic_0_U93__gate_1 (.A(stage_comb_logic_0_G[19]), .Y(stage_comb_logic_0_net1501));

    sg13g2_inv_1 stage_comb_logic_0_U92__gate_1 (.A(stage_comb_logic_0_P[19]), .Y(stage_comb_logic_0_n44));

    sg13g2_nand2_1 stage_comb_logic_0_U91__gate_1 (.A(stage_comb_logic_0_net1501), .B(stage_comb_logic_0_n44), .Y(stage_comb_logic_0_n43));

    sg13g2_or2_1 stage_comb_logic_0_U90__gate_4 (.A(stage_comb_logic_0_P[18]), .B(stage_comb_logic_0_net1741), .X(stage_comb_logic_0_U90__term_3));
    sg13g2_or2_1 stage_comb_logic_0_U90__gate_6 (.A(stage_comb_logic_0_P[17]), .B(stage_comb_logic_0_net1741), .X(stage_comb_logic_0_U90__term_5));
    sg13g2_and2_1 stage_comb_logic_0_U90__gate_7 (.A(stage_comb_logic_0_U90__term_3), .B(stage_comb_logic_0_U90__term_5), .X(stage_comb_logic_0_U90__term_2));
    sg13g2_and2_1 stage_comb_logic_0_U90__gate_8 (.A(stage_comb_logic_0_U90__term_2), .B(stage_comb_logic_0_n43), .X(stage_comb_logic_0_U90__term_1));
    sg13g2_inv_1 stage_comb_logic_0_U90__gate_9 (.A(stage_comb_logic_0_U90__term_1), .Y(stage_comb_logic_0_net1745));

    sg13g2_inv_1 stage_comb_logic_0_U89__gate_1 (.A(stage_comb_logic_0_net1745), .Y(stage_comb_logic_0_net1769));

    sg13g2_inv_1 stage_comb_logic_0_U88__gate_1 (.A(stage_comb_logic_0_C_20_1), .Y(stage_comb_logic_0_net1133));

    sg13g2_inv_1 stage_comb_logic_0_U87__gate_1 (.A(stage_comb_logic_0_net1750), .Y(stage_comb_logic_0_C_20_1));

    sg13g2_inv_1 stage_comb_logic_0_U86__gate_1 (.A(stage_comb_logic_0_net1509), .Y(stage_comb_logic_0_n41));

    sg13g2_nand2_1 stage_comb_logic_0_U85__gate_1 (.A(stage_comb_logic_0_C_20_1), .B(stage_comb_logic_0_n41), .Y(stage_comb_logic_0_n37));

    sg13g2_inv_1 stage_comb_logic_0_U84__gate_1 (.A(stage_comb_logic_0_P[24]), .Y(stage_comb_logic_0_net1108));

    sg13g2_inv_1 stage_comb_logic_0_U83__gate_1 (.A(stage_comb_logic_0_net1109), .Y(stage_comb_logic_0_n39));

    sg13g2_nand2_1 stage_comb_logic_0_U82__gate_1 (.A(stage_comb_logic_0_net1108), .B(stage_comb_logic_0_net1109), .Y(stage_comb_logic_0_n42));

    sg13g2_inv_1 stage_comb_logic_0_U81__gate_1 (.A(stage_comb_logic_0_n42), .Y(stage_comb_logic_0_n38));

    sg13g2_nand2_1 stage_comb_logic_0_U80__gate_1 (.A(stage_comb_logic_0_C_25_1), .B(stage_comb_logic_0_net1333), .Y(stage_comb_logic_0_net874));

    sg13g2_a21oi_1 stage_comb_logic_0_U79__gate_1 (.A1(stage_comb_logic_0_n36), .A2(stage_comb_logic_0_n37), .B1(stage_comb_logic_0_n38), .Y(stage_comb_logic_0_C_25_1));

    sg13g2_and2_1 stage_comb_logic_0_U78__gate_1 (.A(stage_comb_logic_0_P[16]), .B(stage_comb_logic_0_P[15]), .X(stage_comb_logic_0_n34));

    sg13g2_nor2_1 stage_comb_logic_0_U77__gate_1 (.A(stage_comb_logic_0_net1911), .B(stage_comb_logic_0_net1912), .Y(stage_comb_logic_0_net1762));

    sg13g2_nand3_1 stage_comb_logic_0_U76__gate_1 (.A(stage_comb_logic_0_net1935), .B(stage_comb_logic_0_P[13]), .C(stage_comb_logic_0_n34), .Y(stage_comb_logic_0_net1912));

    sg13g2_inv_1 stage_comb_logic_0_U75__gate_1 (.A(stage_comb_logic_0_net1741), .Y(stage_comb_logic_0_net1758));

    sg13g2_inv_1 stage_comb_logic_0_U74__gate_1 (.A(stage_comb_logic_0_net1737), .Y(stage_comb_logic_0_net1744));

    sg13g2_nor2_1 stage_comb_logic_0_U73__gate_1 (.A(stage_comb_logic_0_G[16]), .B(stage_comb_logic_0_net1744), .Y(stage_comb_logic_0_net1743));

    sg13g2_nand3_1 stage_comb_logic_0_U72__gate_1 (.A(stage_comb_logic_0_net1758), .B(stage_comb_logic_0_net1756), .C(stage_comb_logic_0_net1743), .Y(stage_comb_logic_0_net1937));

    sg13g2_nor2_1 stage_comb_logic_0_U71__gate_1 (.A(stage_comb_logic_0_net1937), .B(stage_comb_logic_0_G[12]), .Y(stage_comb_logic_0_n32));

    sg13g2_inv_1 stage_comb_logic_0_U70__gate_1 (.A(stage_comb_logic_0_net2026), .Y(stage_comb_logic_0_net1175));

    sg13g2_inv_1 stage_comb_logic_0_U69__gate_1 (.A(stage_comb_logic_0_net1912), .Y(stage_comb_logic_0_n35));

    sg13g2_nor2_1 stage_comb_logic_0_U68__gate_1 (.A(stage_comb_logic_0_net1937), .B(stage_comb_logic_0_n35), .Y(stage_comb_logic_0_n33));

    sg13g2_nand2_1 stage_comb_logic_0_U67__gate_1 (.A(stage_comb_logic_0_net1751), .B(stage_comb_logic_0_net1769), .Y(stage_comb_logic_0_net1750));

    sg13g2_a21oi_1 stage_comb_logic_0_U66__gate_1 (.A1(stage_comb_logic_0_n32), .A2(stage_comb_logic_0_net2026), .B1(stage_comb_logic_0_n33), .Y(stage_comb_logic_0_net1751));

    sg13g2_nand2_1 stage_comb_logic_0_U65__gate_1 (.A(stage_comb_logic_0_net1192), .B(stage_comb_logic_0_n29), .Y(stage_comb_logic_0_net1052));

    sg13g2_inv_1 stage_comb_logic_0_U64__gate_1 (.A(stage_comb_logic_0_G[8]), .Y(stage_comb_logic_0_n29));

    sg13g2_or2_1 stage_comb_logic_0_U63__gate_1 (.A(stage_comb_logic_0_net1583), .B(stage_comb_logic_0_n29), .X(stage_comb_logic_0_net1582));

    sg13g2_or2_1 stage_comb_logic_0_U62__gate_1 (.A(stage_comb_logic_0_n24), .B(stage_comb_logic_0_P[7]), .X(stage_comb_logic_0_n23));

    sg13g2_nor2b_1 stage_comb_logic_0_U61__gate_1 (.A(stage_comb_logic_0_n27), .B_N(stage_comb_logic_0_net1092), .Y(stage_comb_logic_0_net1101));

    sg13g2_inv_1 stage_comb_logic_0_U60__gate_1 (.A(stage_comb_logic_0_n23), .Y(stage_comb_logic_0_n27));

    sg13g2_nand2_1 stage_comb_logic_0_U59__gate_1 (.A(stage_comb_logic_0_net1095), .B(stage_comb_logic_0_n28), .Y(stage_comb_logic_0_net893));

    sg13g2_inv_1 stage_comb_logic_0_U58__gate_1 (.A(stage_comb_logic_0_G[6]), .Y(stage_comb_logic_0_n28));

    sg13g2_inv_1 stage_comb_logic_0_U57__gate_1 (.A(stage_comb_logic_0_n21), .Y(stage_comb_logic_0_n24));

    sg13g2_inv_1 stage_comb_logic_0_U56__gate_1 (.A(stage_comb_logic_0_G[7]), .Y(stage_comb_logic_0_n21));

    sg13g2_and2_1 stage_comb_logic_0_U55__gate_1 (.A(stage_comb_logic_0_n28), .B(stage_comb_logic_0_n21), .X(stage_comb_logic_0_n25));

    sg13g2_or2_1 stage_comb_logic_0_U54__gate_1 (.A(stage_comb_logic_0_n27), .B(stage_comb_logic_0_n25), .X(stage_comb_logic_0_net1099));

    sg13g2_nand2b_1 stage_comb_logic_0_U53__gate_1 (.A_N(stage_comb_logic_0_n22), .B(stage_comb_logic_0_net992), .Y(stage_comb_logic_0_net1328));

    sg13g2_nand2b_1 stage_comb_logic_0_U52__gate_1 (.A_N(stage_comb_logic_0_n22), .B(stage_comb_logic_0_net992), .Y(stage_comb_logic_0_net1631));

    sg13g2_inv_1 stage_comb_logic_0_U51__gate_1 (.A(stage_comb_logic_0_P[4]), .Y(stage_comb_logic_0_n22));

    sg13g2_nand2_1 stage_comb_logic_0_U50__gate_1 (.A(stage_comb_logic_0_net994), .B(stage_comb_logic_0_n31), .Y(stage_comb_logic_0_net992));

    sg13g2_inv_1 stage_comb_logic_0_U49__gate_1 (.A(stage_comb_logic_0_G[3]), .Y(stage_comb_logic_0_n31));

    sg13g2_nand2_1 stage_comb_logic_0_U48__gate_1 (.A(stage_comb_logic_0_net986), .B(stage_comb_logic_0_n31), .Y(stage_comb_logic_0_C_4_1));

    sg13g2_nand2b_1 stage_comb_logic_0_U47__gate_1 (.A_N(stage_comb_logic_0_n22), .B(stage_comb_logic_0_C_4_1), .Y(stage_comb_logic_0_n30));

    sg13g2_nand2_1 stage_comb_logic_0_U46__gate_1 (.A(stage_comb_logic_0_n30), .B(stage_comb_logic_0_net1086), .Y(stage_comb_logic_0_n26));

    sg13g2_nand2_1 stage_comb_logic_0_U45__gate_1 (.A(stage_comb_logic_0_n26), .B(stage_comb_logic_0_net1101), .Y(stage_comb_logic_0_net1098));

    sg13g2_a21o_1 stage_comb_logic_0_U44__gate_1 (.A1(stage_comb_logic_0_C[26]), .A2(stage_comb_logic_0_P[26]), .B1(stage_comb_logic_0_G[26]), .X(stage_comb_logic_0_C[27]));

    sg13g2_and2_1 stage_comb_logic_0_U43__gate_1 (.A(stage_comb_logic_0_P[27]), .B(stage_comb_logic_0_net1035), .X(stage_comb_logic_0_net1042));

    sg13g2_and2_1 stage_comb_logic_0_U42__gate_1 (.A(stage_comb_logic_0_P[27]), .B(stage_comb_logic_0_P[28]), .X(stage_comb_logic_0_n18));

    sg13g2_nand2_1 stage_comb_logic_0_U41__gate_1 (.A(stage_comb_logic_0_net1159), .B(stage_comb_logic_0_n18), .Y(stage_comb_logic_0_net1638));

    sg13g2_a21o_1 stage_comb_logic_0_U40__gate_1 (.A1(stage_comb_logic_0_P[26]), .A2(stage_comb_logic_0_C[26]), .B1(stage_comb_logic_0_G[26]), .X(stage_comb_logic_0_net1159));

    sg13g2_nand2_1 stage_comb_logic_0_U39__gate_1 (.A(stage_comb_logic_0_net1159), .B(stage_comb_logic_0_P[27]), .Y(stage_comb_logic_0_n19));

    sg13g2_and2_1 stage_comb_logic_0_U38__gate_1 (.A(stage_comb_logic_0_n20), .B(stage_comb_logic_0_net1030), .X(stage_comb_logic_0_net1037));

    sg13g2_or2_1 stage_comb_logic_0_U37__gate_1 (.A(stage_comb_logic_0_net1395), .B(stage_comb_logic_0_n20), .X(stage_comb_logic_0_net1394));

    sg13g2_inv_1 stage_comb_logic_0_U36__gate_1 (.A(stage_comb_logic_0_G[27]), .Y(stage_comb_logic_0_n20));

    sg13g2_nand2_1 stage_comb_logic_0_U35__gate_1 (.A(stage_comb_logic_0_n19), .B(stage_comb_logic_0_n20), .Y(stage_comb_logic_0_C[28]));

    sg13g2_inv_1 stage_comb_logic_0_U34__gate_1 (.A(stage_comb_logic_0_net1098), .Y(stage_comb_logic_0_net1614));

    sg13g2_o21ai_1 stage_comb_logic_0_U33__gate_1 (.A1(stage_comb_logic_0_net1614), .A2(stage_comb_logic_0_n2), .B1(stage_comb_logic_0_net1590), .Y(stage_comb_logic_0_net2103));

    sg13g2_nor2_1 stage_comb_logic_0_U32__gate_1 (.A(stage_comb_logic_0_net1614), .B(stage_comb_logic_0_n2), .Y(stage_comb_logic_0_n10));

    sg13g2_inv_1 stage_comb_logic_0_U31__gate_1 (.A(stage_comb_logic_0_n3), .Y(stage_comb_logic_0_n5));

    sg13g2_inv_1 stage_comb_logic_0_U30__gate_1 (.A(stage_comb_logic_0_net2103), .Y(stage_comb_logic_0_net1594));

    sg13g2_inv_1 stage_comb_logic_0_U29__gate_1 (.A(stage_comb_logic_0_n17), .Y(stage_comb_logic_0_net2026));

    sg13g2_o21ai_1 stage_comb_logic_0_U28__gate_1 (.A1(stage_comb_logic_0_n10), .A2(stage_comb_logic_0_n8), .B1(stage_comb_logic_0_n16), .Y(stage_comb_logic_0_n17));

    sg13g2_inv_1 stage_comb_logic_0_U27__gate_1 (.A(stage_comb_logic_0_n16), .Y(stage_comb_logic_0_n11));

    sg13g2_o21ai_1 stage_comb_logic_0_U26__gate_1 (.A1(stage_comb_logic_0_n7), .A2(stage_comb_logic_0_G[11]), .B1(stage_comb_logic_0_P[12]), .Y(stage_comb_logic_0_n16));

    sg13g2_inv_1 stage_comb_logic_0_U25__gate_1 (.A(stage_comb_logic_0_P[10]), .Y(stage_comb_logic_0_n15));

    sg13g2_inv_1 stage_comb_logic_0_U24__gate_1 (.A(stage_comb_logic_0_n14), .Y(stage_comb_logic_0_net2060));

    sg13g2_nand2b_1 stage_comb_logic_0_U23__gate_1 (.A_N(stage_comb_logic_0_G[10]), .B(stage_comb_logic_0_n15), .Y(stage_comb_logic_0_n14));

    sg13g2_inv_1 stage_comb_logic_0_U22__gate_1 (.A(stage_comb_logic_0_G[9]), .Y(stage_comb_logic_0_n4));

    sg13g2_and2_1 stage_comb_logic_0_U21__gate_1 (.A(stage_comb_logic_0_P[12]), .B(stage_comb_logic_0_P[11]), .X(stage_comb_logic_0_n9));

    sg13g2_nor2_1 stage_comb_logic_0_U20__gate_1 (.A(stage_comb_logic_0_net1614), .B(stage_comb_logic_0_n2), .Y(stage_comb_logic_0_n13));

    sg13g2_nor2_1 stage_comb_logic_0_U19__gate_1 (.A(stage_comb_logic_0_n13), .B(stage_comb_logic_0_n8), .Y(stage_comb_logic_0_n12));

    sg13g2_nor2_1 stage_comb_logic_0_U18__gate_1 (.A(stage_comb_logic_0_n11), .B(stage_comb_logic_0_n12), .Y(stage_comb_logic_0_net1001));

    sg13g2_nand3b_1 stage_comb_logic_0_U17__gate_1 (.A_N(stage_comb_logic_0_net2060), .B(stage_comb_logic_0_n9), .C(stage_comb_logic_0_net1590), .Y(stage_comb_logic_0_n8));

    sg13g2_nand2_1 stage_comb_logic_0_U16__gate_1 (.A(stage_comb_logic_0_net1099), .B(stage_comb_logic_0_net1582), .Y(stage_comb_logic_0_n2));

    sg13g2_nor3_1 stage_comb_logic_0_U15__gate_1 (.A(stage_comb_logic_0_net2060), .B(stage_comb_logic_0_n6), .C(stage_comb_logic_0_n5), .Y(stage_comb_logic_0_n7));

    sg13g2_inv_1 stage_comb_logic_0_U14__gate_1 (.A(stage_comb_logic_0_P[11]), .Y(stage_comb_logic_0_n6));

    sg13g2_nor2b_1 stage_comb_logic_0_U13__gate_1 (.A(stage_comb_logic_0_net2087), .B_N(stage_comb_logic_0_n5), .Y(stage_comb_logic_0_net1634));

    sg13g2_nand2b_1 stage_comb_logic_0_U12__gate_1 (.A_N(stage_comb_logic_0_G[10]), .B(stage_comb_logic_0_n4), .Y(stage_comb_logic_0_n3));

    sg13g2_inv_1 stage_comb_logic_0_U11__gate_1 (.A(stage_comb_logic_0_G[11]), .Y(stage_comb_logic_0_net2073));

    sg13g2_nand2b_1 stage_comb_logic_0_U10__gate_1 (.A_N(stage_comb_logic_0_G[10]), .B(stage_comb_logic_0_net2068), .Y(stage_comb_logic_0_net892));

    sg13g2_nand2b_1 stage_comb_logic_0_U9__gate_1 (.A_N(stage_comb_logic_0_G[9]), .B(stage_comb_logic_0_net1375), .Y(stage_comb_logic_0_C_10));

    sg13g2_and2_1 stage_comb_logic_0_U8__gate_1 (.A(stage_comb_logic_0_net1105), .B(stage_comb_logic_0_net1099), .X(stage_comb_logic_0_net1103));

    sg13g2_nand2_1 stage_comb_logic_0_U7__gate_1 (.A(stage_comb_logic_0_net1615), .B(stage_comb_logic_0_net1099), .Y(stage_comb_logic_0_C_8));

    sg13g2_inv_1 stage_comb_logic_0_U6__gate_1 (.A(stage_comb_logic_0_net1582), .Y(stage_comb_logic_0_net1591));

    sg13g2_inv_1 stage_comb_logic_0_U5__gate_1 (.A(stage_comb_logic_0_P[25]), .Y(stage_comb_logic_0_net877));

    sg13g2_inv_1 stage_comb_logic_0_U4__gate_1 (.A(stage_comb_logic_0_P[30]), .Y(stage_comb_logic_0_n83));

    sg13g2_inv_1 stage_comb_logic_0_U3__gate_1 (.A(stage_comb_logic_0_G[24]), .Y(stage_comb_logic_0_net1109));

    sg13g2_inv_1 stage_comb_logic_0_U2__gate_1 (.A(stage_comb_logic_0_n86), .Y(stage_comb_logic_0_C_1));

    sg13g2_and2_1 stage_comb_logic_0_FA_0__gen_adder_adder_inst_U5__gate_1 (.A(stage_datapath_out[1]), .B(stage_datapath_out[33]), .X(stage_comb_logic_0_G[0]));

    sg13g2_xor2_1 stage_comb_logic_0_FA_0__gen_adder_adder_inst_U4__gate_1 (.A(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n3), .B(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n2), .X(comb_datapath_out[0]));

    sg13g2_buf_1 stage_comb_logic_0_FA_0__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[33]), .X(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n3));

    sg13g2_inv_1 stage_comb_logic_0_FA_0__gen_adder_adder_inst_U2__gate_1 (.A(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n1), .Y(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n2));

    sg13g2_inv_1 stage_comb_logic_0_FA_0__gen_adder_adder_inst_U1__gate_1 (.A(stage_datapath_out[1]), .Y(stage_comb_logic_0_FA_0__gen_adder_adder_inst_n1));

    sg13g2_buf_1 stage_comb_logic_0_FA_1__gen_adder_adder_inst_U6__gate_1 (.A(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net1156), .X(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net997));

    sg13g2_inv_1 stage_comb_logic_0_FA_1__gen_adder_adder_inst_U5__gate_1 (.A(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net1155), .Y(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net1156));

    sg13g2_inv_1 stage_comb_logic_0_FA_1__gen_adder_adder_inst_U4__gate_1 (.A(stage_comb_logic_0_P[1]), .Y(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net1155));

    sg13g2_xor2_1 stage_comb_logic_0_FA_1__gen_adder_adder_inst_U2__gate_1 (.A(stage_datapath_out[34]), .B(stage_datapath_out[2]), .X(stage_comb_logic_0_P[1]));

    sg13g2_and2_1 stage_comb_logic_0_FA_1__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[2]), .B(stage_datapath_out[34]), .X(stage_comb_logic_0_G[1]));

    sg13g2_xor2_1 stage_comb_logic_0_FA_1__gen_adder_adder_inst_U1__gate_1 (.A(stage_comb_logic_0_n93), .B(stage_comb_logic_0_FA_1__gen_adder_adder_inst_net997), .X(comb_datapath_out[1]));

    sg13g2_xnor2_1 stage_comb_logic_0_FA_25__gen_adder_adder_inst_U4__gate_1 (.A(stage_comb_logic_0_n68), .B(stage_comb_logic_0_FA_25__gen_adder_adder_inst_n1), .Y(comb_datapath_out[25]));

    sg13g2_xor2_1 stage_comb_logic_0_FA_25__gen_adder_adder_inst_U2__gate_1 (.A(stage_datapath_out[58]), .B(stage_datapath_out[26]), .X(stage_comb_logic_0_P[25]));

    sg13g2_inv_1 stage_comb_logic_0_FA_25__gen_adder_adder_inst_U1__gate_1 (.A(stage_comb_logic_0_P[25]), .Y(stage_comb_logic_0_FA_25__gen_adder_adder_inst_n1));

    sg13g2_and2_1 stage_comb_logic_0_FA_25__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[26]), .B(stage_datapath_out[58]), .X(stage_comb_logic_0_G[25]));

    sg13g2_xor2_1 stage_comb_logic_0_FA_28__gen_adder_adder_inst_U4__gate_1 (.A(stage_datapath_out[61]), .B(stage_datapath_out[29]), .X(stage_comb_logic_0_P[28]));

    sg13g2_inv_1 stage_comb_logic_0_FA_28__gen_adder_adder_inst_U2__gate_1 (.A(stage_comb_logic_0_P[28]), .Y(stage_comb_logic_0_FA_28__gen_adder_adder_inst_n1));

    sg13g2_xnor2_1 stage_comb_logic_0_FA_28__gen_adder_adder_inst_U1__gate_1 (.A(stage_comb_logic_0_C[28]), .B(stage_comb_logic_0_FA_28__gen_adder_adder_inst_n1), .Y(comb_datapath_out[28]));

    sg13g2_and2_1 stage_comb_logic_0_FA_28__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[29]), .B(stage_datapath_out[61]), .X(stage_comb_logic_0_G[28]));

    sg13g2_xor2_1 stage_comb_logic_0_FA_29__gen_adder_adder_inst_U4__gate_1 (.A(stage_datapath_out[62]), .B(stage_datapath_out[30]), .X(stage_comb_logic_0_P[29]));

    sg13g2_inv_1 stage_comb_logic_0_FA_29__gen_adder_adder_inst_U2__gate_1 (.A(stage_comb_logic_0_P[29]), .Y(stage_comb_logic_0_FA_29__gen_adder_adder_inst_n1));

    sg13g2_xnor2_1 stage_comb_logic_0_FA_29__gen_adder_adder_inst_U1__gate_1 (.A(stage_comb_logic_0_C[29]), .B(stage_comb_logic_0_FA_29__gen_adder_adder_inst_n1), .Y(comb_datapath_out[29]));

    sg13g2_and2_1 stage_comb_logic_0_FA_29__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[30]), .B(stage_datapath_out[62]), .X(stage_comb_logic_0_G[29]));

    sg13g2_xnor2_1 stage_comb_logic_0_FA_30__gen_adder_adder_inst_U4__gate_1 (.A(stage_comb_logic_0_C[30]), .B(stage_comb_logic_0_FA_30__gen_adder_adder_inst_n1), .Y(comb_datapath_out[30]));

    sg13g2_xor2_1 stage_comb_logic_0_FA_30__gen_adder_adder_inst_U2__gate_1 (.A(stage_datapath_out[63]), .B(stage_datapath_out[31]), .X(stage_comb_logic_0_P[30]));

    sg13g2_inv_1 stage_comb_logic_0_FA_30__gen_adder_adder_inst_U1__gate_1 (.A(stage_comb_logic_0_P[30]), .Y(stage_comb_logic_0_FA_30__gen_adder_adder_inst_n1));

    sg13g2_and2_1 stage_comb_logic_0_FA_30__gen_adder_adder_inst_U3__gate_1 (.A(stage_datapath_out[31]), .B(stage_datapath_out[63]), .X(stage_comb_logic_0_G[30]));
  click_ctrl_1 stage_0_click_ctrl ( .rst(rst), .Lreq(Lreq), .Lack(Lack),
        .Rreq(stage_0_Rreq), .Rack(stage_0_Rack), .clk(stage_0_clk) );
  delay_lines_0 stages_delay ( .in(stage_0_Rreq), .out(stage_0_Lreq_delay) );
  click_ctrl_0 stage_1_click_ctrl ( .rst(rst), .Lreq(stage_0_Lreq_delay),
        .Lack(stage_0_Rack), .Rreq(Rreq), .Rack(Rack), .clk(stage_1_clk) );

endmodule

// Asynchronous four-bit ALU pipeline.
// ASAP7 mapping; explicit delay cells use buffer chains.

module delay_lines_0 ( in, out );
    wire U7__delay_1, U7__delay_3, U7__delay_5;

  input in;
  output out;
  wire   in0, n10, w0_0_, n1, n2, n3, n4, n5, n6, n7, n8, out_0_;
  assign in0 = in;
  assign out = out_0_;

    INVx1_ASAP7_75t_R I_1__gate_1 (.A(w0_0_), .Y(n10));

    INVx1_ASAP7_75t_R I_0__gate_1 (.A(n7), .Y(w0_0_));

    HB1xp67_ASAP7_75t_R U1__gate_1 (.A(in0), .Y(n1));

    HB1xp67_ASAP7_75t_R U2__gate_1 (.A(n1), .Y(n2));

    HB1xp67_ASAP7_75t_R U3__gate_1 (.A(n2), .Y(n3));

    HB1xp67_ASAP7_75t_R U4__gate_1 (.A(n3), .Y(n4));

    HB1xp67_ASAP7_75t_R U5__gate_1 (.A(n4), .Y(n5));

    HB1xp67_ASAP7_75t_R U6__gate_1 (.A(n5), .Y(n6));

    HB1xp67_ASAP7_75t_R U7__gate_2 (.A(n6), .Y(U7__delay_1));
    HB1xp67_ASAP7_75t_R U7__gate_4 (.A(U7__delay_1), .Y(U7__delay_3));
    HB1xp67_ASAP7_75t_R U7__gate_6 (.A(U7__delay_3), .Y(U7__delay_5));
    HB1xp67_ASAP7_75t_R U7__gate_7 (.A(U7__delay_5), .Y(n7));

    INVx1_ASAP7_75t_R U8__gate_1 (.A(n10), .Y(n8));

    INVx1_ASAP7_75t_R U9__gate_1 (.A(n8), .Y(out_0_));

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

module alu_pipe_async ( rst, operator_i, operand_a_i, operand_b_i, result_o,
        Lreq, Lack, Rreq, Rack );
    wire stage_register_0_Q_reg14__qn_1, stage_register_0_Q_reg13__qn_1, stage_register_0_Q_reg12__qn_1, stage_register_0_Q_reg11__qn_1, stage_register_0_Q_reg10__qn_1, stage_register_0_Q_reg9__qn_1;
    wire stage_register_0_Q_reg8__qn_1, stage_register_0_Q_reg7__qn_1, stage_register_0_Q_reg6__qn_1, stage_register_0_Q_reg5__qn_1, stage_register_0_Q_reg4__qn_1, stage_register_0_Q_reg3__qn_1;
    wire stage_register_0_Q_reg2__qn_1, stage_register_0_Q_reg1__qn_1, stage_register_0_Q_reg__qn_1, stage_comb_logic_0_U23__term_1, stage_comb_logic_0_U1__term_1, stage_comb_logic_0_U1__term_2;
    wire stage_register_1_Q_reg3__qn_1, stage_register_1_Q_reg2__qn_1, stage_register_1_Q_reg1__qn_1, stage_register_1_Q_reg__qn_1, pdk_tie_high;

  input [6:0] operator_i;
  input [3:0] operand_a_i;
  input [3:0] operand_b_i;
  output [3:0] result_o;
  input rst, Lreq, Rack;
  output Lack, Rreq;
  wire   stage_comb_logic_0_n25, stage_comb_logic_0_n26, stage_comb_logic_0_n9,
         stage_comb_logic_0_n15, stage_comb_logic_0_n24,
         stage_comb_logic_0_n16, stage_comb_logic_0_n23,
         stage_comb_logic_0_n19, stage_comb_logic_0_n22,
         stage_comb_logic_0_n21, stage_comb_logic_0_n20,
         stage_comb_logic_0_n18, stage_comb_logic_0_n17, stage_comb_logic_0_n8,
         stage_comb_logic_0_n11, stage_comb_logic_0_n14,
         stage_comb_logic_0_n13, stage_comb_logic_0_n12, stage_comb_logic_0_n1,
         stage_comb_logic_0_n7, stage_comb_logic_0_n2, stage_comb_logic_0_n6,
         stage_comb_logic_0_n10, stage_comb_logic_0_n5, stage_comb_logic_0_n4,
         stage_comb_logic_0_n3, stage_register_1_n33, stage_register_1_n13,
         stage_register_1_n32, stage_register_1_n12, stage_register_1_n31,
         stage_register_1_n11, stage_register_1_n3, stage_register_1_n1,
         stage_0_clk, stage_0_Rreq, stage_0_Rack, stage_1_clk,
         stage_0_Lreq_delay;
  wire   [14:0] stage_datapath_out;
  wire   [3:0] comb_datapath_out;

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg14__ff_2 (.D(operand_b_i[1]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg14__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg14__gate_3 (.A(stage_register_0_Q_reg14__qn_1), .Y(stage_datapath_out[1]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg13__ff_2 (.D(operand_b_i[2]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg13__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg13__gate_3 (.A(stage_register_0_Q_reg13__qn_1), .Y(stage_datapath_out[2]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg12__ff_2 (.D(operand_b_i[3]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg12__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg12__gate_3 (.A(stage_register_0_Q_reg12__qn_1), .Y(stage_datapath_out[3]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg11__ff_2 (.D(operand_a_i[0]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg11__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg11__gate_3 (.A(stage_register_0_Q_reg11__qn_1), .Y(stage_datapath_out[4]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg10__ff_2 (.D(operand_a_i[1]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg10__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg10__gate_3 (.A(stage_register_0_Q_reg10__qn_1), .Y(stage_datapath_out[5]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg9__ff_2 (.D(operand_a_i[2]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg9__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg9__gate_3 (.A(stage_register_0_Q_reg9__qn_1), .Y(stage_datapath_out[6]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg8__ff_2 (.D(operand_a_i[3]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg8__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg8__gate_3 (.A(stage_register_0_Q_reg8__qn_1), .Y(stage_datapath_out[7]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg7__ff_2 (.D(operator_i[0]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg7__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg7__gate_3 (.A(stage_register_0_Q_reg7__qn_1), .Y(stage_datapath_out[8]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg6__ff_2 (.D(operator_i[1]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg6__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg6__gate_3 (.A(stage_register_0_Q_reg6__qn_1), .Y(stage_datapath_out[9]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg5__ff_2 (.D(operator_i[2]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg5__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg5__gate_3 (.A(stage_register_0_Q_reg5__qn_1), .Y(stage_datapath_out[10]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg4__ff_2 (.D(operator_i[3]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg4__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg4__gate_3 (.A(stage_register_0_Q_reg4__qn_1), .Y(stage_datapath_out[11]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg3__ff_2 (.D(operator_i[4]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg3__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg3__gate_3 (.A(stage_register_0_Q_reg3__qn_1), .Y(stage_datapath_out[12]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg2__ff_2 (.D(operator_i[5]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg2__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg2__gate_3 (.A(stage_register_0_Q_reg2__qn_1), .Y(stage_datapath_out[13]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg1__ff_2 (.D(operator_i[6]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg1__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg1__gate_3 (.A(stage_register_0_Q_reg1__qn_1), .Y(stage_datapath_out[14]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_0_Q_reg__ff_2 (.D(operand_b_i[0]), .CLK(stage_0_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_0_Q_reg__qn_1));
    INVx1_ASAP7_75t_R stage_register_0_Q_reg__gate_3 (.A(stage_register_0_Q_reg__qn_1), .Y(stage_datapath_out[0]));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U30__gate_1 (.A(stage_comb_logic_0_n26), .B(stage_datapath_out[0]), .Y(stage_comb_logic_0_n16));

    OAI21xp33_ASAP7_75t_R stage_comb_logic_0_U29__gate_1 (.A1(stage_comb_logic_0_n9), .A2(stage_comb_logic_0_n10), .B(stage_datapath_out[6]), .Y(stage_comb_logic_0_n8));

    AOI211xp5_ASAP7_75t_R stage_comb_logic_0_U28__gate_1 (.A1(stage_datapath_out[10]), .A2(stage_datapath_out[9]), .B(stage_datapath_out[14]), .C(stage_datapath_out[13]), .Y(stage_comb_logic_0_n19));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U27__gate_1 (.A(stage_comb_logic_0_n26), .Y(stage_comb_logic_0_n25));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U26__gate_1 (.A(stage_comb_logic_0_n25), .Y(stage_comb_logic_0_n4));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U25__gate_1 (.A(stage_comb_logic_0_n23), .Y(stage_comb_logic_0_n26));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U24__gate_1 (.A(stage_comb_logic_0_n16), .B(stage_datapath_out[4]), .Y(stage_comb_logic_0_n15));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U23__gate_2 (.A(stage_comb_logic_0_n4), .B(stage_datapath_out[4]), .Y(stage_comb_logic_0_U23__term_1));
    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U23__gate_3 (.A(stage_comb_logic_0_U23__term_1), .B(stage_comb_logic_0_n16), .Y(comb_datapath_out[0]));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U22__gate_1 (.A(stage_comb_logic_0_n21), .Y(stage_comb_logic_0_n12));

    XNOR2xp5_ASAP7_75t_R stage_comb_logic_0_U21__gate_1 (.A(stage_comb_logic_0_n22), .B(stage_comb_logic_0_n23), .Y(stage_comb_logic_0_n21));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U20__gate_1 (.A(stage_comb_logic_0_n11), .Y(stage_comb_logic_0_n9));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U19__gate_1 (.A(stage_comb_logic_0_n1), .B(stage_comb_logic_0_n17), .Y(stage_comb_logic_0_n14));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U18__gate_1 (.A(stage_comb_logic_0_n15), .Y(stage_comb_logic_0_n7));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U17__gate_1 (.A(stage_comb_logic_0_n24), .Y(stage_comb_logic_0_n2));

    NAND2xp33_ASAP7_75t_R stage_comb_logic_0_U16__gate_1 (.A(stage_comb_logic_0_n16), .B(stage_datapath_out[4]), .Y(stage_comb_logic_0_n24));

    NAND4xp25_ASAP7_75t_R stage_comb_logic_0_U15__gate_1 (.A(stage_datapath_out[11]), .B(stage_datapath_out[8]), .C(stage_datapath_out[12]), .D(stage_comb_logic_0_n19), .Y(stage_comb_logic_0_n23));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U14__gate_1 (.A(stage_datapath_out[1]), .Y(stage_comb_logic_0_n22));

    XNOR2xp5_ASAP7_75t_R stage_comb_logic_0_U13__gate_1 (.A(stage_comb_logic_0_n21), .B(stage_datapath_out[5]), .Y(stage_comb_logic_0_n20));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U12__gate_1 (.A(stage_datapath_out[6]), .B(stage_comb_logic_0_n10), .Y(stage_comb_logic_0_n18));

    XNOR2xp5_ASAP7_75t_R stage_comb_logic_0_U11__gate_1 (.A(stage_comb_logic_0_n1), .B(stage_comb_logic_0_n20), .Y(comb_datapath_out[1]));

    XNOR2xp5_ASAP7_75t_R stage_comb_logic_0_U10__gate_1 (.A(stage_comb_logic_0_n11), .B(stage_comb_logic_0_n18), .Y(comb_datapath_out[2]));

    NOR2xp33_ASAP7_75t_R stage_comb_logic_0_U9__gate_1 (.A(stage_comb_logic_0_n17), .B(stage_comb_logic_0_n1), .Y(stage_comb_logic_0_n13));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U7__gate_1 (.A(stage_datapath_out[5]), .Y(stage_comb_logic_0_n17));

    OAI21xp33_ASAP7_75t_R stage_comb_logic_0_U5__gate_1 (.A1(stage_comb_logic_0_n11), .A2(stage_comb_logic_0_n6), .B(stage_comb_logic_0_n8), .Y(stage_comb_logic_0_n3));

    OAI21xp33_ASAP7_75t_R stage_comb_logic_0_U4__gate_1 (.A1(stage_comb_logic_0_n12), .A2(stage_comb_logic_0_n13), .B(stage_comb_logic_0_n14), .Y(stage_comb_logic_0_n11));

    OAI21xp33_ASAP7_75t_R stage_comb_logic_0_U3__gate_1 (.A1(stage_comb_logic_0_n4), .A2(stage_comb_logic_0_n2), .B(stage_comb_logic_0_n7), .Y(stage_comb_logic_0_n1));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U8__gate_1 (.A(stage_comb_logic_0_n4), .B(stage_datapath_out[2]), .Y(stage_comb_logic_0_n10));

    INVx1_ASAP7_75t_R stage_comb_logic_0_U6__gate_1 (.A(stage_comb_logic_0_n10), .Y(stage_comb_logic_0_n6));

    XNOR2xp5_ASAP7_75t_R stage_comb_logic_0_U2__gate_1 (.A(stage_datapath_out[3]), .B(stage_datapath_out[7]), .Y(stage_comb_logic_0_n5));

    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1__gate_3 (.A(stage_comb_logic_0_n3), .B(stage_comb_logic_0_n4), .Y(stage_comb_logic_0_U1__term_2));
    XOR2xp5_ASAP7_75t_R stage_comb_logic_0_U1__gate_4 (.A(stage_comb_logic_0_U1__term_2), .B(stage_comb_logic_0_n5), .Y(stage_comb_logic_0_U1__term_1));
    INVx1_ASAP7_75t_R stage_comb_logic_0_U1__gate_5 (.A(stage_comb_logic_0_U1__term_1), .Y(comb_datapath_out[3]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg3__ff_2 (.D(comb_datapath_out[0]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg3__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg3__gate_3 (.A(stage_register_1_Q_reg3__qn_1), .Y(stage_register_1_n33));

    INVx1_ASAP7_75t_R stage_register_1_U33__gate_1 (.A(stage_register_1_n33), .Y(stage_register_1_n13));

    INVx1_ASAP7_75t_R stage_register_1_U43__gate_1 (.A(stage_register_1_n13), .Y(result_o[0]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg2__ff_2 (.D(comb_datapath_out[1]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg2__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg2__gate_3 (.A(stage_register_1_Q_reg2__qn_1), .Y(stage_register_1_n32));

    INVx1_ASAP7_75t_R stage_register_1_U32__gate_1 (.A(stage_register_1_n32), .Y(stage_register_1_n12));

    INVx1_ASAP7_75t_R stage_register_1_U42__gate_1 (.A(stage_register_1_n12), .Y(result_o[1]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg1__ff_2 (.D(comb_datapath_out[2]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg1__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg1__gate_3 (.A(stage_register_1_Q_reg1__qn_1), .Y(stage_register_1_n31));

    INVx1_ASAP7_75t_R stage_register_1_U31__gate_1 (.A(stage_register_1_n31), .Y(stage_register_1_n11));

    INVx1_ASAP7_75t_R stage_register_1_U41__gate_1 (.A(stage_register_1_n11), .Y(result_o[2]));

    DFFASRHQNx1_ASAP7_75t_R stage_register_1_Q_reg__ff_2 (.D(comb_datapath_out[3]), .CLK(stage_1_clk), .SETN(pdk_tie_high), .RESETN(rst), .QN(stage_register_1_Q_reg__qn_1));
    INVx1_ASAP7_75t_R stage_register_1_Q_reg__gate_3 (.A(stage_register_1_Q_reg__qn_1), .Y(stage_register_1_n3));

    INVx1_ASAP7_75t_R stage_register_1_U3__gate_1 (.A(stage_register_1_n3), .Y(stage_register_1_n1));

    INVx1_ASAP7_75t_R stage_register_1_U4__gate_1 (.A(stage_register_1_n1), .Y(result_o[3]));
  click_ctrl_1 stage_0_click_ctrl ( .rst(rst), .Lreq(Lreq), .Lack(Lack),
        .Rreq(stage_0_Rreq), .Rack(stage_0_Rack), .clk(stage_0_clk) );
  delay_lines_0 stages_delay ( .in(stage_0_Rreq), .out(stage_0_Lreq_delay) );
  click_ctrl_0 stage_1_click_ctrl ( .rst(rst), .Lreq(stage_0_Lreq_delay),
        .Lack(stage_0_Rack), .Rreq(Rreq), .Rack(Rack), .clk(stage_1_clk) );

    TIEHIx1_ASAP7_75t_R tie_high (.H(pdk_tie_high));
endmodule

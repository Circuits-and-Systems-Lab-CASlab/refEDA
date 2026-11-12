// Asynchronous four-bit ALU pipeline.
// IHP-Open-PDK mapping; explicit delay cells use buffer chains.

module delay_lines_0 ( in, out );
    wire U7__delay_1, U7__delay_3, U7__delay_5;

  input in;
  output out;
  wire   in0, n10, w0_0_, n1, n2, n3, n4, n5, n6, n7, n8, out_0_;
  assign in0 = in;
  assign out = out_0_;

    sg13g2_inv_1 I_1__gate_1 (.A(w0_0_), .Y(n10));

    sg13g2_inv_1 I_0__gate_1 (.A(n7), .Y(w0_0_));

    sg13g2_buf_1 U1__gate_1 (.A(in0), .X(n1));

    sg13g2_buf_1 U2__gate_1 (.A(n1), .X(n2));

    sg13g2_buf_1 U3__gate_1 (.A(n2), .X(n3));

    sg13g2_buf_1 U4__gate_1 (.A(n3), .X(n4));

    sg13g2_buf_1 U5__gate_1 (.A(n4), .X(n5));

    sg13g2_buf_1 U6__gate_1 (.A(n5), .X(n6));

    sg13g2_buf_1 U7__gate_2 (.A(n6), .X(U7__delay_1));
    sg13g2_buf_1 U7__gate_4 (.A(U7__delay_1), .X(U7__delay_3));
    sg13g2_buf_1 U7__gate_6 (.A(U7__delay_3), .X(U7__delay_5));
    sg13g2_buf_1 U7__gate_7 (.A(U7__delay_5), .X(n7));

    sg13g2_inv_1 U8__gate_1 (.A(n10), .Y(n8));

    sg13g2_inv_1 U9__gate_1 (.A(n8), .Y(out_0_));

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

module alu_pipe_async ( rst, operator_i, operand_a_i, operand_b_i, result_o,
        Lreq, Lack, Rreq, Rack );
    wire stage_comb_logic_0_U28__term_1, stage_comb_logic_0_U28__term_2, stage_comb_logic_0_U23__term_1, stage_comb_logic_0_U1__term_1, stage_comb_logic_0_U1__term_2;

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

    sg13g2_dfrbpq_1 stage_register_0_Q_reg14__ff_1 (.D(operand_b_i[1]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[1]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg13__ff_1 (.D(operand_b_i[2]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[2]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg12__ff_1 (.D(operand_b_i[3]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[3]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg11__ff_1 (.D(operand_a_i[0]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[4]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg10__ff_1 (.D(operand_a_i[1]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[5]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg9__ff_1 (.D(operand_a_i[2]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[6]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg8__ff_1 (.D(operand_a_i[3]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[7]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg7__ff_1 (.D(operator_i[0]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[8]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg6__ff_1 (.D(operator_i[1]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[9]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg5__ff_1 (.D(operator_i[2]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[10]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg4__ff_1 (.D(operator_i[3]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[11]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg3__ff_1 (.D(operator_i[4]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[12]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg2__ff_1 (.D(operator_i[5]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[13]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg1__ff_1 (.D(operator_i[6]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[14]));

    sg13g2_dfrbpq_1 stage_register_0_Q_reg__ff_1 (.D(operand_b_i[0]), .CLK(stage_0_clk), .RESET_B(rst), .Q(stage_datapath_out[0]));

    sg13g2_xor2_1 stage_comb_logic_0_U30__gate_1 (.A(stage_comb_logic_0_n26), .B(stage_datapath_out[0]), .X(stage_comb_logic_0_n16));

    sg13g2_o21ai_1 stage_comb_logic_0_U29__gate_1 (.A1(stage_comb_logic_0_n9), .A2(stage_comb_logic_0_n10), .B1(stage_datapath_out[6]), .Y(stage_comb_logic_0_n8));

    sg13g2_a21o_1 stage_comb_logic_0_U28__gate_3 (.A1(stage_datapath_out[10]), .A2(stage_datapath_out[9]), .B1(stage_datapath_out[14]), .X(stage_comb_logic_0_U28__term_2));
    sg13g2_or2_1 stage_comb_logic_0_U28__gate_4 (.A(stage_comb_logic_0_U28__term_2), .B(stage_datapath_out[13]), .X(stage_comb_logic_0_U28__term_1));
    sg13g2_inv_1 stage_comb_logic_0_U28__gate_5 (.A(stage_comb_logic_0_U28__term_1), .Y(stage_comb_logic_0_n19));

    sg13g2_inv_1 stage_comb_logic_0_U27__gate_1 (.A(stage_comb_logic_0_n26), .Y(stage_comb_logic_0_n25));

    sg13g2_inv_1 stage_comb_logic_0_U26__gate_1 (.A(stage_comb_logic_0_n25), .Y(stage_comb_logic_0_n4));

    sg13g2_inv_1 stage_comb_logic_0_U25__gate_1 (.A(stage_comb_logic_0_n23), .Y(stage_comb_logic_0_n26));

    sg13g2_nor2_1 stage_comb_logic_0_U24__gate_1 (.A(stage_comb_logic_0_n16), .B(stage_datapath_out[4]), .Y(stage_comb_logic_0_n15));

    sg13g2_xor2_1 stage_comb_logic_0_U23__gate_2 (.A(stage_comb_logic_0_n4), .B(stage_datapath_out[4]), .X(stage_comb_logic_0_U23__term_1));
    sg13g2_xor2_1 stage_comb_logic_0_U23__gate_3 (.A(stage_comb_logic_0_U23__term_1), .B(stage_comb_logic_0_n16), .X(comb_datapath_out[0]));

    sg13g2_inv_1 stage_comb_logic_0_U22__gate_1 (.A(stage_comb_logic_0_n21), .Y(stage_comb_logic_0_n12));

    sg13g2_xnor2_1 stage_comb_logic_0_U21__gate_1 (.A(stage_comb_logic_0_n22), .B(stage_comb_logic_0_n23), .Y(stage_comb_logic_0_n21));

    sg13g2_inv_1 stage_comb_logic_0_U20__gate_1 (.A(stage_comb_logic_0_n11), .Y(stage_comb_logic_0_n9));

    sg13g2_nand2_1 stage_comb_logic_0_U19__gate_1 (.A(stage_comb_logic_0_n1), .B(stage_comb_logic_0_n17), .Y(stage_comb_logic_0_n14));

    sg13g2_inv_1 stage_comb_logic_0_U18__gate_1 (.A(stage_comb_logic_0_n15), .Y(stage_comb_logic_0_n7));

    sg13g2_inv_1 stage_comb_logic_0_U17__gate_1 (.A(stage_comb_logic_0_n24), .Y(stage_comb_logic_0_n2));

    sg13g2_nand2_1 stage_comb_logic_0_U16__gate_1 (.A(stage_comb_logic_0_n16), .B(stage_datapath_out[4]), .Y(stage_comb_logic_0_n24));

    sg13g2_nand4_1 stage_comb_logic_0_U15__gate_1 (.A(stage_datapath_out[11]), .B(stage_datapath_out[8]), .C(stage_datapath_out[12]), .D(stage_comb_logic_0_n19), .Y(stage_comb_logic_0_n23));

    sg13g2_inv_1 stage_comb_logic_0_U14__gate_1 (.A(stage_datapath_out[1]), .Y(stage_comb_logic_0_n22));

    sg13g2_xnor2_1 stage_comb_logic_0_U13__gate_1 (.A(stage_comb_logic_0_n21), .B(stage_datapath_out[5]), .Y(stage_comb_logic_0_n20));

    sg13g2_xor2_1 stage_comb_logic_0_U12__gate_1 (.A(stage_datapath_out[6]), .B(stage_comb_logic_0_n10), .X(stage_comb_logic_0_n18));

    sg13g2_xnor2_1 stage_comb_logic_0_U11__gate_1 (.A(stage_comb_logic_0_n1), .B(stage_comb_logic_0_n20), .Y(comb_datapath_out[1]));

    sg13g2_xnor2_1 stage_comb_logic_0_U10__gate_1 (.A(stage_comb_logic_0_n11), .B(stage_comb_logic_0_n18), .Y(comb_datapath_out[2]));

    sg13g2_nor2_1 stage_comb_logic_0_U9__gate_1 (.A(stage_comb_logic_0_n17), .B(stage_comb_logic_0_n1), .Y(stage_comb_logic_0_n13));

    sg13g2_inv_1 stage_comb_logic_0_U7__gate_1 (.A(stage_datapath_out[5]), .Y(stage_comb_logic_0_n17));

    sg13g2_o21ai_1 stage_comb_logic_0_U5__gate_1 (.A1(stage_comb_logic_0_n11), .A2(stage_comb_logic_0_n6), .B1(stage_comb_logic_0_n8), .Y(stage_comb_logic_0_n3));

    sg13g2_o21ai_1 stage_comb_logic_0_U4__gate_1 (.A1(stage_comb_logic_0_n12), .A2(stage_comb_logic_0_n13), .B1(stage_comb_logic_0_n14), .Y(stage_comb_logic_0_n11));

    sg13g2_o21ai_1 stage_comb_logic_0_U3__gate_1 (.A1(stage_comb_logic_0_n4), .A2(stage_comb_logic_0_n2), .B1(stage_comb_logic_0_n7), .Y(stage_comb_logic_0_n1));

    sg13g2_xor2_1 stage_comb_logic_0_U8__gate_1 (.A(stage_comb_logic_0_n4), .B(stage_datapath_out[2]), .X(stage_comb_logic_0_n10));

    sg13g2_inv_1 stage_comb_logic_0_U6__gate_1 (.A(stage_comb_logic_0_n10), .Y(stage_comb_logic_0_n6));

    sg13g2_xnor2_1 stage_comb_logic_0_U2__gate_1 (.A(stage_datapath_out[3]), .B(stage_datapath_out[7]), .Y(stage_comb_logic_0_n5));

    sg13g2_xor2_1 stage_comb_logic_0_U1__gate_3 (.A(stage_comb_logic_0_n3), .B(stage_comb_logic_0_n4), .X(stage_comb_logic_0_U1__term_2));
    sg13g2_xor2_1 stage_comb_logic_0_U1__gate_4 (.A(stage_comb_logic_0_U1__term_2), .B(stage_comb_logic_0_n5), .X(stage_comb_logic_0_U1__term_1));
    sg13g2_inv_1 stage_comb_logic_0_U1__gate_5 (.A(stage_comb_logic_0_U1__term_1), .Y(comb_datapath_out[3]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg3__ff_1 (.D(comb_datapath_out[0]), .CLK(stage_1_clk), .RESET_B(rst), .Q(stage_register_1_n33));

    sg13g2_inv_1 stage_register_1_U33__gate_1 (.A(stage_register_1_n33), .Y(stage_register_1_n13));

    sg13g2_inv_1 stage_register_1_U43__gate_1 (.A(stage_register_1_n13), .Y(result_o[0]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg2__ff_1 (.D(comb_datapath_out[1]), .CLK(stage_1_clk), .RESET_B(rst), .Q(stage_register_1_n32));

    sg13g2_inv_1 stage_register_1_U32__gate_1 (.A(stage_register_1_n32), .Y(stage_register_1_n12));

    sg13g2_inv_1 stage_register_1_U42__gate_1 (.A(stage_register_1_n12), .Y(result_o[1]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg1__ff_1 (.D(comb_datapath_out[2]), .CLK(stage_1_clk), .RESET_B(rst), .Q(stage_register_1_n31));

    sg13g2_inv_1 stage_register_1_U31__gate_1 (.A(stage_register_1_n31), .Y(stage_register_1_n11));

    sg13g2_inv_1 stage_register_1_U41__gate_1 (.A(stage_register_1_n11), .Y(result_o[2]));

    sg13g2_dfrbpq_1 stage_register_1_Q_reg__ff_1 (.D(comb_datapath_out[3]), .CLK(stage_1_clk), .RESET_B(rst), .Q(stage_register_1_n3));

    sg13g2_inv_1 stage_register_1_U3__gate_1 (.A(stage_register_1_n3), .Y(stage_register_1_n1));

    sg13g2_inv_1 stage_register_1_U4__gate_1 (.A(stage_register_1_n1), .Y(result_o[3]));
  click_ctrl_1 stage_0_click_ctrl ( .rst(rst), .Lreq(Lreq), .Lack(Lack),
        .Rreq(stage_0_Rreq), .Rack(stage_0_Rack), .clk(stage_0_clk) );
  delay_lines_0 stages_delay ( .in(stage_0_Rreq), .out(stage_0_Lreq_delay) );
  click_ctrl_0 stage_1_click_ctrl ( .rst(rst), .Lreq(stage_0_Lreq_delay),
        .Lack(stage_0_Rack), .Rreq(Rreq), .Rack(Rack), .clk(stage_1_clk) );

endmodule

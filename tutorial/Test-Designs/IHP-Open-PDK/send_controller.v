// SEND controller with a programmable delay path.
// IHP-Open-PDK mapping; explicit delay cells use buffer chains.

module remreg_3_4 ( out, sen, sclk, si, so );
    wire pdk_tie_high, pdk_tie_low;

  output [2:0] out;
  input sen, sclk, si;
  output so;

  assign so = out[2];

    sg13g2_dfrbpq_1 remreg_gen_0__genblk1_rem_dont_scan_rr__ff_1 (.D(si), .CLK(sclk), .RESET_B(sen), .Q(out[0]));

    sg13g2_dfrbpq_1 remreg_gen_1__genblk1_rem_dont_scan_rr__ff_1 (.D(out[0]), .CLK(sclk), .RESET_B(sen), .Q(out[1]));

    sg13g2_sdfbbp_1 remreg_gen_2__genblk1_rem_dont_scan_rr__ff_1 (.D(out[1]), .CLK(sclk), .SCE(pdk_tie_low), .SCD(pdk_tie_low), .RESET_B(pdk_tie_high), .SET_B(sen), .Q(out[2]));

    sg13g2_tiehi tie_high (.L_HI(pdk_tie_high));
    sg13g2_tielo tie_low (.L_LO(pdk_tie_low));
endmodule

module sym_delay ( sd_clk, sd_en, sd_in, sd_out, in, out );
    wire U1__delay_1, U1__delay_3, U1__delay_5, U1__delay_7, U2__delay_1, U2__delay_3;
    wire U2__delay_5, U2__delay_7, U3__delay_1, U3__delay_3, U3__delay_5, U3__delay_7;
    wire U5__delay_1, U5__delay_3, U6__delay_1, U6__delay_3, U6__delay_5, U6__delay_7;
    wire U7__delay_1, U7__delay_3, U9__delay_1, U10__delay_1, m_U11__term_1, m_U11__term_3;
    wire m_U10__term_1, m_U10__term_3, m_U8__delay_1, m_U8__delay_3, m_U8__delay_5, m_U8__delay_7;
    wire m_U7__delay_1, m_U7__delay_3, m_U7__delay_5, m_U7__delay_7, m_U6__delay_1, m_U6__delay_3;
    wire m_U6__delay_5, m_U6__delay_7, m_U5__term_1, m_U5__term_2, m_U5__term_3, m_U5__term_5;
    wire m_U5__term_8, m_U5__term_11;

  input sd_clk, sd_en, sd_in, in;
  output sd_out, out;
  wire   n2, n1, n3, n4, n6, n7, n5, n9, n8, n10, m_n2, m_n6, m_n7, m_n8, m_n1,
         m_n9, m_n4, m_n3, m_n15, m_n10, m_n14, m_n13, m_n12, m_n11, m_n5;
  wire   [2:0] sel;

  remreg_3_4 rr ( .out(sel), .sen(sd_en), .sclk(sd_clk), .si(sd_in), .so(
        sd_out) );

    sg13g2_buf_1 U1__gate_2 (.A(n2), .X(U1__delay_1));
    sg13g2_buf_1 U1__gate_4 (.A(U1__delay_1), .X(U1__delay_3));
    sg13g2_buf_1 U1__gate_6 (.A(U1__delay_3), .X(U1__delay_5));
    sg13g2_buf_1 U1__gate_8 (.A(U1__delay_5), .X(U1__delay_7));
    sg13g2_buf_1 U1__gate_9 (.A(U1__delay_7), .X(n1));

    sg13g2_buf_1 U2__gate_2 (.A(n3), .X(U2__delay_1));
    sg13g2_buf_1 U2__gate_4 (.A(U2__delay_1), .X(U2__delay_3));
    sg13g2_buf_1 U2__gate_6 (.A(U2__delay_3), .X(U2__delay_5));
    sg13g2_buf_1 U2__gate_8 (.A(U2__delay_5), .X(U2__delay_7));
    sg13g2_buf_1 U2__gate_9 (.A(U2__delay_7), .X(n2));

    sg13g2_buf_1 U3__gate_2 (.A(n4), .X(U3__delay_1));
    sg13g2_buf_1 U3__gate_4 (.A(U3__delay_1), .X(U3__delay_3));
    sg13g2_buf_1 U3__gate_6 (.A(U3__delay_3), .X(U3__delay_5));
    sg13g2_buf_1 U3__gate_8 (.A(U3__delay_5), .X(U3__delay_7));
    sg13g2_buf_1 U3__gate_9 (.A(U3__delay_7), .X(n3));

    sg13g2_buf_1 U4__gate_1 (.A(n6), .X(n4));

    sg13g2_buf_1 U5__gate_2 (.A(n7), .X(U5__delay_1));
    sg13g2_buf_1 U5__gate_4 (.A(U5__delay_1), .X(U5__delay_3));
    sg13g2_buf_1 U5__gate_5 (.A(U5__delay_3), .X(n5));

    sg13g2_buf_1 U6__gate_2 (.A(n5), .X(U6__delay_1));
    sg13g2_buf_1 U6__gate_4 (.A(U6__delay_1), .X(U6__delay_3));
    sg13g2_buf_1 U6__gate_6 (.A(U6__delay_3), .X(U6__delay_5));
    sg13g2_buf_1 U6__gate_8 (.A(U6__delay_5), .X(U6__delay_7));
    sg13g2_buf_1 U6__gate_9 (.A(U6__delay_7), .X(n6));

    sg13g2_buf_1 U7__gate_2 (.A(n9), .X(U7__delay_1));
    sg13g2_buf_1 U7__gate_4 (.A(U7__delay_1), .X(U7__delay_3));
    sg13g2_buf_1 U7__gate_5 (.A(U7__delay_3), .X(n7));

    sg13g2_buf_1 U8__gate_1 (.A(in), .X(n8));

    sg13g2_buf_1 U9__gate_2 (.A(n10), .X(U9__delay_1));
    sg13g2_buf_1 U9__gate_3 (.A(U9__delay_1), .X(n9));

    sg13g2_buf_1 U10__gate_2 (.A(n8), .X(U10__delay_1));
    sg13g2_buf_1 U10__gate_3 (.A(U10__delay_1), .X(n10));

    sg13g2_inv_1 m_U16__gate_1 (.A(sel[0]), .Y(m_n2));

    sg13g2_a22oi_1 m_U15__gate_1 (.A1(n7), .A2(m_n2), .B1(n6), .B2(sel[0]), .Y(m_n6));

    sg13g2_a22oi_1 m_U14__gate_1 (.A1(n10), .A2(m_n2), .B1(n9), .B2(sel[0]), .Y(m_n7));

    sg13g2_a22oi_1 m_U13__gate_1 (.A1(in), .A2(m_n2), .B1(sel[0]), .B2(in), .Y(m_n8));

    sg13g2_inv_1 m_U12__gate_1 (.A(sel[1]), .Y(m_n1));

    sg13g2_nor2_1 m_U11__gate_2 (.A(m_n9), .B(m_n1), .Y(m_U11__term_1));
    sg13g2_nor2_1 m_U11__gate_4 (.A(sel[1]), .B(m_n6), .Y(m_U11__term_3));
    sg13g2_or2_1 m_U11__gate_5 (.A(m_U11__term_1), .B(m_U11__term_3), .X(m_n4));

    sg13g2_nor2_1 m_U10__gate_2 (.A(m_n3), .B(sel[2]), .Y(m_U10__term_1));
    sg13g2_and2_1 m_U10__gate_4 (.A(sel[2]), .B(m_n15), .X(m_U10__term_3));
    sg13g2_or2_1 m_U10__gate_5 (.A(m_U10__term_1), .B(m_U10__term_3), .X(out));

    sg13g2_buf_1 m_U9__gate_1 (.A(m_n4), .X(m_n15));

    sg13g2_buf_1 m_U8__gate_2 (.A(m_n10), .X(m_U8__delay_1));
    sg13g2_buf_1 m_U8__gate_4 (.A(m_U8__delay_1), .X(m_U8__delay_3));
    sg13g2_buf_1 m_U8__gate_6 (.A(m_U8__delay_3), .X(m_U8__delay_5));
    sg13g2_buf_1 m_U8__gate_8 (.A(m_U8__delay_5), .X(m_U8__delay_7));
    sg13g2_buf_1 m_U8__gate_9 (.A(m_U8__delay_7), .X(m_n14));

    sg13g2_buf_1 m_U7__gate_2 (.A(m_n14), .X(m_U7__delay_1));
    sg13g2_buf_1 m_U7__gate_4 (.A(m_U7__delay_1), .X(m_U7__delay_3));
    sg13g2_buf_1 m_U7__gate_6 (.A(m_U7__delay_3), .X(m_U7__delay_5));
    sg13g2_buf_1 m_U7__gate_8 (.A(m_U7__delay_5), .X(m_U7__delay_7));
    sg13g2_buf_1 m_U7__gate_9 (.A(m_U7__delay_7), .X(m_n13));

    sg13g2_buf_1 m_U6__gate_2 (.A(m_n13), .X(m_U6__delay_1));
    sg13g2_buf_1 m_U6__gate_4 (.A(m_U6__delay_1), .X(m_U6__delay_3));
    sg13g2_buf_1 m_U6__gate_6 (.A(m_U6__delay_3), .X(m_U6__delay_5));
    sg13g2_buf_1 m_U6__gate_8 (.A(m_U6__delay_5), .X(m_U6__delay_7));
    sg13g2_buf_1 m_U6__gate_9 (.A(m_U6__delay_7), .X(m_n12));

    sg13g2_buf_1 m_U4__gate_1 (.A(m_n12), .X(m_n11));

    sg13g2_buf_1 m_U3__gate_1 (.A(m_n5), .X(m_n10));

    sg13g2_buf_1 m_U2__gate_1 (.A(m_n11), .X(m_n9));

    sg13g2_a22oi_1 m_U1__gate_1 (.A1(n4), .A2(m_n2), .B1(n1), .B2(sel[0]), .Y(m_n5));

    sg13g2_and2_1 m_U5__gate_4 (.A(m_n7), .B(sel[1]), .X(m_U5__term_3));
    sg13g2_and2_1 m_U5__gate_6 (.A(m_n7), .B(m_n8), .X(m_U5__term_5));
    sg13g2_or2_1 m_U5__gate_7 (.A(m_U5__term_3), .B(m_U5__term_5), .X(m_U5__term_2));
    sg13g2_and2_1 m_U5__gate_9 (.A(m_n1), .B(sel[1]), .X(m_U5__term_8));
    sg13g2_or2_1 m_U5__gate_10 (.A(m_U5__term_2), .B(m_U5__term_8), .X(m_U5__term_1));
    sg13g2_and2_1 m_U5__gate_12 (.A(m_n1), .B(m_n8), .X(m_U5__term_11));
    sg13g2_or2_1 m_U5__gate_13 (.A(m_U5__term_1), .B(m_U5__term_11), .X(m_n3));

endmodule

module SEND_ctrl_slackless ( left_req, left_en, left_ack, right_ack, right_en,
        right_req, sd_clk, sd_en, sd_in, sd_out, ctrl_reset_n, dp_reset_n );
    wire state1_flop__scan_d_1, state0_flop__scan_d_1, pdk_tie_low;

  input left_req, left_en, right_ack, right_en, sd_clk, sd_en, sd_in,
         ctrl_reset_n, dp_reset_n;
  output left_ack, right_req, sd_out;
  wire   state0, state0_d, state1_clk, s1clk, state0_clk, clk, n7, LreqXLack,
         ao_0, ao_1, n6, n8, n9;

  sym_delay rem_dont_touch_sym0 ( .sd_clk(sd_clk), .sd_en(sd_en), .sd_in(sd_in), .sd_out(sd_out), .in(state0), .out(state0_d) );

    sg13g2_mux2_1 rem_size_only_clock_mux1__gate_1 (.A0(state1_clk), .A1(pdk_tie_low), .S(pdk_tie_low), .X(s1clk));

    sg13g2_mux2_1 rem_size_only_clock_mux0__gate_1 (.A0(state0_clk), .A1(pdk_tie_low), .S(pdk_tie_low), .X(clk));

    sg13g2_mux2_1 state1_flop__gate_2 (.A0(n7), .A1(pdk_tie_low), .S(pdk_tie_low), .X(state1_flop__scan_d_1));
    sg13g2_dfrbpq_1 state1_flop__ff_3 (.D(state1_flop__scan_d_1), .CLK(s1clk), .RESET_B(dp_reset_n), .Q(right_req));

    sg13g2_nand2b_1 nand_0__gate_1 (.A_N(left_en), .B(LreqXLack), .Y(ao_0));

    sg13g2_nand2_1 nand_1__gate_1 (.A(LreqXLack), .B(left_en), .Y(ao_1));

    sg13g2_mux2_1 state0_flop__gate_2 (.A0(n6), .A1(pdk_tie_low), .S(pdk_tie_low), .X(state0_flop__scan_d_1));
    sg13g2_dfrbpq_1 state0_flop__ff_3 (.D(state0_flop__scan_d_1), .CLK(clk), .RESET_B(dp_reset_n), .Q(state0));

    sg13g2_nor2b_1 nor_1__gate_1 (.A(ao_1), .B_N(ctrl_reset_n), .Y(state1_clk));

    sg13g2_nor2b_1 nor_0__gate_1 (.A(ao_0), .B_N(ctrl_reset_n), .Y(state0_clk));

    sg13g2_inv_1 U10__gate_1 (.A(right_ack), .Y(n8));

    sg13g2_xnor2_1 U11__gate_1 (.A(n8), .B(state0_d), .Y(left_ack));

    sg13g2_inv_1 U12__gate_1 (.A(right_req), .Y(n7));

    sg13g2_inv_1 U13__gate_1 (.A(state0), .Y(n6));

    sg13g2_xor2_1 U14__gate_1 (.A(right_ack), .B(left_req), .X(n9));

    sg13g2_xor2_1 U15__gate_1 (.A(n9), .B(state0_d), .X(LreqXLack));

    sg13g2_tielo tie_low (.L_LO(pdk_tie_low));
endmodule

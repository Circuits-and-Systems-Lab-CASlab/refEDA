// Bundled-data controller with token initialisation.
// ASAP7 mapping; explicit delay cells use buffer chains.

module remreg_3_4 ( out, sen, sclk, si, so );
    wire remreg_gen_0__genblk1_rem_dont_scan_rr__qn_1, remreg_gen_1__genblk1_rem_dont_scan_rr__qn_1, remreg_gen_2__genblk1_rem_dont_scan_rr__qn_1, pdk_tie_high;

  output [2:0] out;
  input sen, sclk, si;
  output so;

  assign so = out[2];

    DFFASRHQNx1_ASAP7_75t_R remreg_gen_0__genblk1_rem_dont_scan_rr__ff_2 (.D(si), .CLK(sclk), .SETN(pdk_tie_high), .RESETN(sen), .QN(remreg_gen_0__genblk1_rem_dont_scan_rr__qn_1));
    INVx1_ASAP7_75t_R remreg_gen_0__genblk1_rem_dont_scan_rr__gate_3 (.A(remreg_gen_0__genblk1_rem_dont_scan_rr__qn_1), .Y(out[0]));

    DFFASRHQNx1_ASAP7_75t_R remreg_gen_1__genblk1_rem_dont_scan_rr__ff_2 (.D(out[0]), .CLK(sclk), .SETN(pdk_tie_high), .RESETN(sen), .QN(remreg_gen_1__genblk1_rem_dont_scan_rr__qn_1));
    INVx1_ASAP7_75t_R remreg_gen_1__genblk1_rem_dont_scan_rr__gate_3 (.A(remreg_gen_1__genblk1_rem_dont_scan_rr__qn_1), .Y(out[1]));

    DFFASRHQNx1_ASAP7_75t_R remreg_gen_2__genblk1_rem_dont_scan_rr__ff_2 (.D(out[1]), .CLK(sclk), .SETN(sen), .RESETN(pdk_tie_high), .QN(remreg_gen_2__genblk1_rem_dont_scan_rr__qn_1));
    INVx1_ASAP7_75t_R remreg_gen_2__genblk1_rem_dont_scan_rr__gate_3 (.A(remreg_gen_2__genblk1_rem_dont_scan_rr__qn_1), .Y(out[2]));

    TIEHIx1_ASAP7_75t_R tie_high (.H(pdk_tie_high));
endmodule

module sym_delay ( sd_clk, sd_en, sd_in, sd_out, in, out );
    wire U1__delay_1, U1__delay_3, U1__delay_5, U1__delay_7, U2__delay_1, U2__delay_3;
    wire U2__delay_5, U2__delay_7, U3__delay_1, U3__delay_3, U3__delay_5, U3__delay_7;
    wire U5__delay_1, U5__delay_3, U6__delay_1, U6__delay_3, U6__delay_5, U6__delay_7;
    wire U7__delay_1, U7__delay_3, U9__delay_1, U10__delay_1, m_U10__term_1, m_U10__term_3;
    wire m_U8__delay_1, m_U8__delay_3, m_U8__delay_5, m_U8__delay_7, m_U7__delay_1, m_U7__delay_3;
    wire m_U7__delay_5, m_U7__delay_7, m_U6__delay_1, m_U6__delay_3, m_U6__delay_5, m_U6__delay_7;

  input sd_clk, sd_en, sd_in, in;
  output sd_out, out;
  wire   n2, n1, n3, n4, n6, n7, n5, n9, n8, n10, m_n2, m_n6, m_n7, m_n8, m_n1,
         m_n9, m_n4, m_n3, m_n15, m_n10, m_n14, m_n13, m_n12, m_n11, m_n5;
  wire   [2:0] sel;

  remreg_3_4 rr ( .out(sel), .sen(sd_en), .sclk(sd_clk), .si(sd_in), .so(
        sd_out) );

    HB1xp67_ASAP7_75t_R U1__gate_2 (.A(n2), .Y(U1__delay_1));
    HB1xp67_ASAP7_75t_R U1__gate_4 (.A(U1__delay_1), .Y(U1__delay_3));
    HB1xp67_ASAP7_75t_R U1__gate_6 (.A(U1__delay_3), .Y(U1__delay_5));
    HB1xp67_ASAP7_75t_R U1__gate_8 (.A(U1__delay_5), .Y(U1__delay_7));
    HB1xp67_ASAP7_75t_R U1__gate_9 (.A(U1__delay_7), .Y(n1));

    HB1xp67_ASAP7_75t_R U2__gate_2 (.A(n3), .Y(U2__delay_1));
    HB1xp67_ASAP7_75t_R U2__gate_4 (.A(U2__delay_1), .Y(U2__delay_3));
    HB1xp67_ASAP7_75t_R U2__gate_6 (.A(U2__delay_3), .Y(U2__delay_5));
    HB1xp67_ASAP7_75t_R U2__gate_8 (.A(U2__delay_5), .Y(U2__delay_7));
    HB1xp67_ASAP7_75t_R U2__gate_9 (.A(U2__delay_7), .Y(n2));

    HB1xp67_ASAP7_75t_R U3__gate_2 (.A(n4), .Y(U3__delay_1));
    HB1xp67_ASAP7_75t_R U3__gate_4 (.A(U3__delay_1), .Y(U3__delay_3));
    HB1xp67_ASAP7_75t_R U3__gate_6 (.A(U3__delay_3), .Y(U3__delay_5));
    HB1xp67_ASAP7_75t_R U3__gate_8 (.A(U3__delay_5), .Y(U3__delay_7));
    HB1xp67_ASAP7_75t_R U3__gate_9 (.A(U3__delay_7), .Y(n3));

    HB1xp67_ASAP7_75t_R U4__gate_1 (.A(n6), .Y(n4));

    HB1xp67_ASAP7_75t_R U5__gate_2 (.A(n7), .Y(U5__delay_1));
    HB1xp67_ASAP7_75t_R U5__gate_4 (.A(U5__delay_1), .Y(U5__delay_3));
    HB1xp67_ASAP7_75t_R U5__gate_5 (.A(U5__delay_3), .Y(n5));

    HB1xp67_ASAP7_75t_R U6__gate_2 (.A(n5), .Y(U6__delay_1));
    HB1xp67_ASAP7_75t_R U6__gate_4 (.A(U6__delay_1), .Y(U6__delay_3));
    HB1xp67_ASAP7_75t_R U6__gate_6 (.A(U6__delay_3), .Y(U6__delay_5));
    HB1xp67_ASAP7_75t_R U6__gate_8 (.A(U6__delay_5), .Y(U6__delay_7));
    HB1xp67_ASAP7_75t_R U6__gate_9 (.A(U6__delay_7), .Y(n6));

    HB1xp67_ASAP7_75t_R U7__gate_2 (.A(n9), .Y(U7__delay_1));
    HB1xp67_ASAP7_75t_R U7__gate_4 (.A(U7__delay_1), .Y(U7__delay_3));
    HB1xp67_ASAP7_75t_R U7__gate_5 (.A(U7__delay_3), .Y(n7));

    HB1xp67_ASAP7_75t_R U8__gate_1 (.A(in), .Y(n8));

    HB1xp67_ASAP7_75t_R U9__gate_2 (.A(n10), .Y(U9__delay_1));
    HB1xp67_ASAP7_75t_R U9__gate_3 (.A(U9__delay_1), .Y(n9));

    HB1xp67_ASAP7_75t_R U10__gate_2 (.A(n8), .Y(U10__delay_1));
    HB1xp67_ASAP7_75t_R U10__gate_3 (.A(U10__delay_1), .Y(n10));

    INVx1_ASAP7_75t_R m_U16__gate_1 (.A(sel[0]), .Y(m_n2));

    AOI22xp33_ASAP7_75t_R m_U15__gate_1 (.A1(n7), .A2(m_n2), .B1(n6), .B2(sel[0]), .Y(m_n6));

    AOI22xp33_ASAP7_75t_R m_U14__gate_1 (.A1(n10), .A2(m_n2), .B1(n9), .B2(sel[0]), .Y(m_n7));

    AOI22xp33_ASAP7_75t_R m_U13__gate_1 (.A1(in), .A2(m_n2), .B1(sel[0]), .B2(in), .Y(m_n8));

    INVx1_ASAP7_75t_R m_U12__gate_1 (.A(sel[1]), .Y(m_n1));

    OAI22xp33_ASAP7_75t_R m_U11__gate_1 (.A1(m_n9), .A2(m_n1), .B1(sel[1]), .B2(m_n6), .Y(m_n4));

    NOR2xp33_ASAP7_75t_R m_U10__gate_2 (.A(m_n3), .B(sel[2]), .Y(m_U10__term_1));
    AND2x2_ASAP7_75t_R m_U10__gate_4 (.A(sel[2]), .B(m_n15), .Y(m_U10__term_3));
    OR2x2_ASAP7_75t_R m_U10__gate_5 (.A(m_U10__term_1), .B(m_U10__term_3), .Y(out));

    HB1xp67_ASAP7_75t_R m_U9__gate_1 (.A(m_n4), .Y(m_n15));

    HB1xp67_ASAP7_75t_R m_U8__gate_2 (.A(m_n10), .Y(m_U8__delay_1));
    HB1xp67_ASAP7_75t_R m_U8__gate_4 (.A(m_U8__delay_1), .Y(m_U8__delay_3));
    HB1xp67_ASAP7_75t_R m_U8__gate_6 (.A(m_U8__delay_3), .Y(m_U8__delay_5));
    HB1xp67_ASAP7_75t_R m_U8__gate_8 (.A(m_U8__delay_5), .Y(m_U8__delay_7));
    HB1xp67_ASAP7_75t_R m_U8__gate_9 (.A(m_U8__delay_7), .Y(m_n14));

    HB1xp67_ASAP7_75t_R m_U7__gate_2 (.A(m_n14), .Y(m_U7__delay_1));
    HB1xp67_ASAP7_75t_R m_U7__gate_4 (.A(m_U7__delay_1), .Y(m_U7__delay_3));
    HB1xp67_ASAP7_75t_R m_U7__gate_6 (.A(m_U7__delay_3), .Y(m_U7__delay_5));
    HB1xp67_ASAP7_75t_R m_U7__gate_8 (.A(m_U7__delay_5), .Y(m_U7__delay_7));
    HB1xp67_ASAP7_75t_R m_U7__gate_9 (.A(m_U7__delay_7), .Y(m_n13));

    HB1xp67_ASAP7_75t_R m_U6__gate_2 (.A(m_n13), .Y(m_U6__delay_1));
    HB1xp67_ASAP7_75t_R m_U6__gate_4 (.A(m_U6__delay_1), .Y(m_U6__delay_3));
    HB1xp67_ASAP7_75t_R m_U6__gate_6 (.A(m_U6__delay_3), .Y(m_U6__delay_5));
    HB1xp67_ASAP7_75t_R m_U6__gate_8 (.A(m_U6__delay_5), .Y(m_U6__delay_7));
    HB1xp67_ASAP7_75t_R m_U6__gate_9 (.A(m_U6__delay_7), .Y(m_n12));

    HB1xp67_ASAP7_75t_R m_U4__gate_1 (.A(m_n12), .Y(m_n11));

    HB1xp67_ASAP7_75t_R m_U3__gate_1 (.A(m_n5), .Y(m_n10));

    HB1xp67_ASAP7_75t_R m_U2__gate_1 (.A(m_n11), .Y(m_n9));

    AOI22xp33_ASAP7_75t_R m_U1__gate_1 (.A1(n4), .A2(m_n2), .B1(n1), .B2(sel[0]), .Y(m_n5));

    OA22x2_ASAP7_75t_R m_U5__gate_1 (.A1(m_n7), .A2(m_n1), .B1(sel[1]), .B2(m_n8), .Y(m_n3));

endmodule

module bd_flop_ctrl_tok ( left_req, left_en, left_ack, right_ack, right_en,
        right_req, sd_clk, sd_en, sd_in, sd_out, clk, ctrl_reset_n, dp_reset_n
 );
    wire rem_size_only_clock_mux__term_1, rem_size_only_clock_mux__term_2, rem_size_only_clock_mux__term_5, state0_flop__scan_d_1, state0_flop__term_2, state0_flop__term_3;
    wire state0_flop__term_6, state0_flop__qn_9, pdk_tie_high, pdk_tie_low;

  input left_req, left_en, right_ack, right_en, sd_clk, sd_en, sd_in,
         ctrl_reset_n, dp_reset_n;
  output left_ack, right_req, sd_out, clk;
  wire   n9, state0_d, state0_clk, ao_0_0, ao_0_1, n6, n5;

  sym_delay rem_dont_touch_sym0 ( .sd_clk(sd_clk), .sd_en(sd_en), .sd_in(sd_in), .sd_out(sd_out), .in(n9), .out(state0_d) );

    INVx1_ASAP7_75t_R rem_size_only_clock_mux__gate_3 (.A(pdk_tie_low), .Y(rem_size_only_clock_mux__term_2));
    AND2x2_ASAP7_75t_R rem_size_only_clock_mux__gate_4 (.A(state0_clk), .B(rem_size_only_clock_mux__term_2), .Y(rem_size_only_clock_mux__term_1));
    AND2x2_ASAP7_75t_R rem_size_only_clock_mux__gate_6 (.A(pdk_tie_low), .B(pdk_tie_low), .Y(rem_size_only_clock_mux__term_5));
    OR2x2_ASAP7_75t_R rem_size_only_clock_mux__gate_7 (.A(rem_size_only_clock_mux__term_1), .B(rem_size_only_clock_mux__term_5), .Y(clk));

    INVx1_ASAP7_75t_R state0_flop__gate_4 (.A(pdk_tie_low), .Y(state0_flop__term_3));
    AND2x2_ASAP7_75t_R state0_flop__gate_5 (.A(state0_flop__term_3), .B(left_ack), .Y(state0_flop__term_2));
    AND2x2_ASAP7_75t_R state0_flop__gate_7 (.A(pdk_tie_low), .B(pdk_tie_low), .Y(state0_flop__term_6));
    OR2x2_ASAP7_75t_R state0_flop__gate_8 (.A(state0_flop__term_2), .B(state0_flop__term_6), .Y(state0_flop__scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R state0_flop__ff_10 (.D(state0_flop__scan_d_1), .CLK(clk), .SETN(dp_reset_n), .RESETN(pdk_tie_high), .QN(state0_flop__qn_9));
    INVx1_ASAP7_75t_R state0_flop__gate_11 (.A(state0_flop__qn_9), .Y(n9));

    NAND3xp33_ASAP7_75t_R nand_0_0__gate_1 (.A(left_req), .B(state0_d), .C(right_ack), .Y(ao_0_0));

    NOR3xp33_ASAP7_75t_R nand_0_1__gate_1 (.A(state0_d), .B(right_ack), .C(left_req), .Y(ao_0_1));

    AOI21xp33_ASAP7_75t_R U7__gate_1 (.A1(ao_0_0), .A2(n6), .B(n5), .Y(state0_clk));

    INVx1_ASAP7_75t_R U8__gate_1 (.A(ao_0_1), .Y(n6));

    INVx1_ASAP7_75t_R U9__gate_1 (.A(ctrl_reset_n), .Y(n5));

    INVx1_ASAP7_75t_R U10__gate_1 (.A(n9), .Y(left_ack));

    INVx1_ASAP7_75t_R U11__gate_1 (.A(left_ack), .Y(right_req));

    TIEHIx1_ASAP7_75t_R tie_high (.H(pdk_tie_high));
    TIELOx1_ASAP7_75t_R tie_low (.L(pdk_tie_low));
endmodule

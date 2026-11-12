/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12-SP1
// Date      : Tue Nov  3 10:43:35 2026
/////////////////////////////////////////////////////////////


module afifo ( i_wclk, i_wrst_n, i_wr, i_wdata, o_wfull, i_rclk, i_rrst_n, 
        i_rd, o_rdata, o_rempty, wptr, rptr );
  input [1:0] i_wdata;
  output [1:0] o_rdata;
  output [4:0] wptr;
  output [4:0] rptr;
  input i_wclk, i_wrst_n, i_wr, i_rclk, i_rrst_n, i_rd;
  output o_wfull, o_rempty;
  wire   N13, N14, N15, N16, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27,
         N29, N30, N31, N32, N34, N35, N36, N37, N38, \mem[0][1] , \mem[0][0] ,
         \mem[1][1] , \mem[1][0] , \mem[2][1] , \mem[2][0] , \mem[3][1] ,
         \mem[3][0] , \mem[4][1] , \mem[4][0] , \mem[5][1] , \mem[5][0] ,
         \mem[6][1] , \mem[6][0] , \mem[7][1] , \mem[7][0] , \mem[8][1] ,
         \mem[8][0] , \mem[9][1] , \mem[9][0] , \mem[10][1] , \mem[10][0] ,
         \mem[11][1] , \mem[11][0] , \mem[12][1] , \mem[12][0] , \mem[13][1] ,
         \mem[13][0] , \mem[14][1] , \mem[14][0] , \mem[15][1] , \mem[15][0] ,
         N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N87, N88, N89, N90,
         N92, N93, N94, N95, N96, n101, n102, n103, n104, n105, n111, n112,
         n113, n114, n115, n219, \eq_131/B[3] , \eq_131/B[4] , n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366;
  wire   [4:0] rgray;
  wire   [4:0] wgray;
  wire   [4:0] rq2_wgray;
  assign rptr[0] = N13;
  assign rptr[1] = N14;
  assign rptr[2] = N15;
  assign rptr[3] = N16;

  sg13g2_dfrbp_1 \rgray_reg[0]  ( .D(N87), .CLK(i_rclk), .RESET_B(n219), .Q(
        rgray[0]) );
  sg13g2_dfrbp_1 \wq1_rgray_reg[0]  ( .D(N18), .CLK(i_wclk), .RESET_B(n219), 
        .Q_N(n101) );
  sg13g2_dfrbp_1 \wq2_rgray_reg[0]  ( .D(N23), .CLK(i_wclk), .RESET_B(n219), 
        .Q_N(n329) );
  sg13g2_dfrbp_1 \wbin_reg[0]  ( .D(N34), .CLK(i_wclk), .RESET_B(n219), .Q(
        wptr[0]), .Q_N(n222) );
  sg13g2_dfrbp_1 \wgray_reg[0]  ( .D(N29), .CLK(i_wclk), .RESET_B(n219), .Q(
        wgray[0]) );
  sg13g2_dfrbp_1 \rq1_wgray_reg[0]  ( .D(N76), .CLK(i_rclk), .RESET_B(n219), 
        .Q_N(n111) );
  sg13g2_dfrbp_1 \rq2_wgray_reg[0]  ( .D(N81), .CLK(i_rclk), .RESET_B(n219), 
        .Q_N(n326) );
  sg13g2_dfrbp_1 \wbin_reg[1]  ( .D(N35), .CLK(i_wclk), .RESET_B(n219), .Q(
        wptr[1]) );
  sg13g2_dfrbp_1 \wgray_reg[1]  ( .D(N30), .CLK(i_wclk), .RESET_B(n219), .Q(
        wgray[1]) );
  sg13g2_dfrbp_1 \rq1_wgray_reg[1]  ( .D(N77), .CLK(i_rclk), .RESET_B(n219), 
        .Q_N(n112) );
  sg13g2_dfrbp_1 \rq2_wgray_reg[1]  ( .D(N82), .CLK(i_rclk), .RESET_B(n219), 
        .Q_N(n325) );
  sg13g2_dfrbp_1 \wbin_reg[2]  ( .D(N36), .CLK(i_wclk), .RESET_B(n219), .Q(
        wptr[2]) );
  sg13g2_dfrbp_1 \wgray_reg[2]  ( .D(N31), .CLK(i_wclk), .RESET_B(n219), .Q(
        wgray[2]) );
  sg13g2_dfrbp_1 \rq1_wgray_reg[2]  ( .D(N78), .CLK(i_rclk), .RESET_B(n219), 
        .Q_N(n113) );
  sg13g2_dfrbp_1 \rq2_wgray_reg[2]  ( .D(N83), .CLK(i_rclk), .RESET_B(n219), 
        .Q(rq2_wgray[2]) );
  sg13g2_dfrbp_1 \wbin_reg[3]  ( .D(N37), .CLK(i_wclk), .RESET_B(n219), .Q(
        wptr[3]) );
  sg13g2_dfrbp_1 \wgray_reg[3]  ( .D(N32), .CLK(i_wclk), .RESET_B(n219), .Q(
        wgray[3]) );
  sg13g2_dfrbp_1 \rq1_wgray_reg[3]  ( .D(N79), .CLK(i_rclk), .RESET_B(n219), 
        .Q_N(n114) );
  sg13g2_dfrbp_1 \rq2_wgray_reg[3]  ( .D(N84), .CLK(i_rclk), .RESET_B(n219), 
        .Q_N(n327) );
  sg13g2_dfrbp_1 \wbin_reg[4]  ( .D(N38), .CLK(i_wclk), .RESET_B(n219), .Q(
        wptr[4]) );
  sg13g2_dfrbp_1 \wgray_reg[4]  ( .D(N38), .CLK(i_wclk), .RESET_B(n219), .Q(
        wgray[4]) );
  sg13g2_dfrbp_1 \rq1_wgray_reg[4]  ( .D(N80), .CLK(i_rclk), .RESET_B(n219), 
        .Q_N(n115) );
  sg13g2_dfrbp_1 \rq2_wgray_reg[4]  ( .D(N85), .CLK(i_rclk), .RESET_B(n219), 
        .Q(rq2_wgray[4]) );
  sg13g2_dfrbp_1 \rbin_reg[0]  ( .D(N92), .CLK(i_rclk), .RESET_B(n219), .Q(N13), .Q_N(n334) );
  sg13g2_dfrbp_1 \rbin_reg[1]  ( .D(N93), .CLK(i_rclk), .RESET_B(n219), .Q(N14), .Q_N(n331) );
  sg13g2_dfrbp_1 \rgray_reg[1]  ( .D(N88), .CLK(i_rclk), .RESET_B(n219), .Q(
        rgray[1]) );
  sg13g2_dfrbp_1 \wq1_rgray_reg[1]  ( .D(N19), .CLK(i_wclk), .RESET_B(n219), 
        .Q_N(n102) );
  sg13g2_dfrbp_1 \wq2_rgray_reg[1]  ( .D(N24), .CLK(i_wclk), .RESET_B(n219), 
        .Q_N(n328) );
  sg13g2_dfrbp_1 \rbin_reg[2]  ( .D(N94), .CLK(i_rclk), .RESET_B(n219), .Q(N15), .Q_N(n333) );
  sg13g2_dfrbp_1 \rgray_reg[2]  ( .D(N89), .CLK(i_rclk), .RESET_B(n219), .Q(
        rgray[2]) );
  sg13g2_dfrbp_1 \wq1_rgray_reg[2]  ( .D(N20), .CLK(i_wclk), .RESET_B(n219), 
        .Q_N(n103) );
  sg13g2_dfrbp_1 \wq2_rgray_reg[2]  ( .D(N25), .CLK(i_wclk), .RESET_B(n219), 
        .Q_N(n330) );
  sg13g2_dfrbp_1 \rbin_reg[3]  ( .D(N95), .CLK(i_rclk), .RESET_B(n219), .Q(N16), .Q_N(n332) );
  sg13g2_dfrbp_1 \rgray_reg[3]  ( .D(N90), .CLK(i_rclk), .RESET_B(n219), .Q(
        rgray[3]) );
  sg13g2_dfrbp_1 \wq1_rgray_reg[3]  ( .D(N21), .CLK(i_wclk), .RESET_B(n219), 
        .Q_N(n104) );
  sg13g2_dfrbp_1 \wq2_rgray_reg[3]  ( .D(N26), .CLK(i_wclk), .RESET_B(n219), 
        .Q_N(\eq_131/B[3] ) );
  sg13g2_dfrbp_1 \rbin_reg[4]  ( .D(N96), .CLK(i_rclk), .RESET_B(n219), .Q(
        rptr[4]) );
  sg13g2_dfrbp_1 \rgray_reg[4]  ( .D(N96), .CLK(i_rclk), .RESET_B(n219), .Q(
        rgray[4]) );
  sg13g2_dfrbp_1 \wq1_rgray_reg[4]  ( .D(N22), .CLK(i_wclk), .RESET_B(n219), 
        .Q_N(n105) );
  sg13g2_dfrbp_1 \wq2_rgray_reg[4]  ( .D(N27), .CLK(i_wclk), .RESET_B(n219), 
        .Q_N(\eq_131/B[4] ) );
  sg13g2_dfrbp_1 \mem_reg[8][0]  ( .D(n352), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[8][0] ) );
  sg13g2_dfrbp_1 \mem_reg[8][1]  ( .D(n351), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[8][1] ) );
  sg13g2_dfrbp_1 \mem_reg[10][0]  ( .D(n354), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[10][0] ) );
  sg13g2_dfrbp_1 \mem_reg[10][1]  ( .D(n353), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[10][1] ) );
  sg13g2_dfrbp_1 \mem_reg[12][0]  ( .D(n356), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[12][0] ) );
  sg13g2_dfrbp_1 \mem_reg[12][1]  ( .D(n355), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[12][1] ) );
  sg13g2_dfrbp_1 \mem_reg[14][0]  ( .D(n358), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[14][0] ) );
  sg13g2_dfrbp_1 \mem_reg[14][1]  ( .D(n357), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[14][1] ) );
  sg13g2_dfrbp_1 \mem_reg[9][0]  ( .D(n360), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[9][0] ) );
  sg13g2_dfrbp_1 \mem_reg[9][1]  ( .D(n359), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[9][1] ) );
  sg13g2_dfrbp_1 \mem_reg[11][0]  ( .D(n362), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[11][0] ) );
  sg13g2_dfrbp_1 \mem_reg[11][1]  ( .D(n361), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[11][1] ) );
  sg13g2_dfrbp_1 \mem_reg[13][0]  ( .D(n364), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[13][0] ) );
  sg13g2_dfrbp_1 \mem_reg[13][1]  ( .D(n363), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[13][1] ) );
  sg13g2_dfrbp_1 \mem_reg[15][0]  ( .D(n366), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[15][0] ) );
  sg13g2_dfrbp_1 \mem_reg[15][1]  ( .D(n365), .CLK(i_wclk), .RESET_B(n219), 
        .Q(\mem[15][1] ) );
  sg13g2_dfrbp_1 \mem_reg[0][0]  ( .D(n336), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[0][0] ) );
  sg13g2_dfrbp_1 \mem_reg[0][1]  ( .D(n335), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[0][1] ) );
  sg13g2_dfrbp_1 \mem_reg[2][0]  ( .D(n338), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[2][0] ) );
  sg13g2_dfrbp_1 \mem_reg[2][1]  ( .D(n337), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[2][1] ) );
  sg13g2_dfrbp_1 \mem_reg[4][0]  ( .D(n340), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[4][0] ) );
  sg13g2_dfrbp_1 \mem_reg[4][1]  ( .D(n339), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[4][1] ) );
  sg13g2_dfrbp_1 \mem_reg[6][0]  ( .D(n342), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[6][0] ) );
  sg13g2_dfrbp_1 \mem_reg[6][1]  ( .D(n341), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[6][1] ) );
  sg13g2_dfrbp_1 \mem_reg[1][0]  ( .D(n344), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[1][0] ) );
  sg13g2_dfrbp_1 \mem_reg[1][1]  ( .D(n343), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[1][1] ) );
  sg13g2_dfrbp_1 \mem_reg[3][0]  ( .D(n346), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[3][0] ) );
  sg13g2_dfrbp_1 \mem_reg[3][1]  ( .D(n345), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[3][1] ) );
  sg13g2_dfrbp_1 \mem_reg[5][0]  ( .D(n348), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[5][0] ) );
  sg13g2_dfrbp_1 \mem_reg[5][1]  ( .D(n347), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[5][1] ) );
  sg13g2_dfrbp_1 \mem_reg[7][0]  ( .D(n350), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[7][0] ) );
  sg13g2_dfrbp_1 \mem_reg[7][1]  ( .D(n349), .CLK(i_wclk), .RESET_B(n219), .Q(
        \mem[7][1] ) );
  sg13g2_inv_1 U238 ( .A(i_rrst_n), .Y(n223) );
  sg13g2_inv_1 U239 ( .A(i_wrst_n), .Y(n224) );
  sg13g2_tiehi U240 ( .L_HI(n219) );
  sg13g2_nor2_1 U241 ( .A(n331), .B(N13), .Y(n248) );
  sg13g2_nor2_1 U242 ( .A(n331), .B(n334), .Y(n247) );
  sg13g2_a22oi_1 U243 ( .A1(\mem[10][0] ), .A2(n248), .B1(\mem[11][0] ), .B2(
        n247), .Y(n226) );
  sg13g2_nor2_1 U244 ( .A(N13), .B(N14), .Y(n250) );
  sg13g2_nor2_1 U245 ( .A(n334), .B(N14), .Y(n249) );
  sg13g2_a22oi_1 U246 ( .A1(\mem[8][0] ), .A2(n250), .B1(\mem[9][0] ), .B2(
        n249), .Y(n225) );
  sg13g2_nand2_1 U247 ( .A(n226), .B(n225), .Y(n230) );
  sg13g2_a22oi_1 U248 ( .A1(\mem[14][0] ), .A2(n248), .B1(\mem[15][0] ), .B2(
        n247), .Y(n228) );
  sg13g2_a22oi_1 U249 ( .A1(\mem[12][0] ), .A2(n250), .B1(\mem[13][0] ), .B2(
        n249), .Y(n227) );
  sg13g2_nand2_1 U250 ( .A(n228), .B(n227), .Y(n229) );
  sg13g2_a22oi_1 U251 ( .A1(n230), .A2(n333), .B1(n229), .B2(N15), .Y(n238) );
  sg13g2_a22oi_1 U252 ( .A1(\mem[2][0] ), .A2(n248), .B1(\mem[3][0] ), .B2(
        n247), .Y(n232) );
  sg13g2_a22oi_1 U253 ( .A1(\mem[0][0] ), .A2(n250), .B1(\mem[1][0] ), .B2(
        n249), .Y(n231) );
  sg13g2_a21oi_1 U254 ( .A1(n232), .A2(n231), .B1(N15), .Y(n236) );
  sg13g2_a22oi_1 U255 ( .A1(\mem[6][0] ), .A2(n248), .B1(\mem[7][0] ), .B2(
        n247), .Y(n234) );
  sg13g2_a22oi_1 U256 ( .A1(\mem[4][0] ), .A2(n250), .B1(\mem[5][0] ), .B2(
        n249), .Y(n233) );
  sg13g2_a21oi_1 U257 ( .A1(n234), .A2(n233), .B1(n333), .Y(n235) );
  sg13g2_o21ai_1 U258 ( .A1(n236), .A2(n235), .B1(n332), .Y(n237) );
  sg13g2_o21ai_1 U259 ( .A1(n332), .A2(n238), .B1(n237), .Y(o_rdata[0]) );
  sg13g2_a22oi_1 U260 ( .A1(\mem[2][1] ), .A2(n248), .B1(\mem[3][1] ), .B2(
        n247), .Y(n240) );
  sg13g2_a22oi_1 U261 ( .A1(\mem[0][1] ), .A2(n250), .B1(\mem[1][1] ), .B2(
        n249), .Y(n239) );
  sg13g2_nand2_1 U262 ( .A(n240), .B(n239), .Y(n244) );
  sg13g2_a22oi_1 U263 ( .A1(\mem[6][1] ), .A2(n248), .B1(\mem[7][1] ), .B2(
        n247), .Y(n242) );
  sg13g2_a22oi_1 U264 ( .A1(\mem[4][1] ), .A2(n250), .B1(\mem[5][1] ), .B2(
        n249), .Y(n241) );
  sg13g2_nand2_1 U265 ( .A(n242), .B(n241), .Y(n243) );
  sg13g2_a22oi_1 U266 ( .A1(n244), .A2(n333), .B1(n243), .B2(N15), .Y(n256) );
  sg13g2_a22oi_1 U267 ( .A1(\mem[10][1] ), .A2(n248), .B1(\mem[11][1] ), .B2(
        n247), .Y(n246) );
  sg13g2_a22oi_1 U268 ( .A1(\mem[8][1] ), .A2(n250), .B1(\mem[9][1] ), .B2(
        n249), .Y(n245) );
  sg13g2_a21oi_1 U269 ( .A1(n246), .A2(n245), .B1(N15), .Y(n254) );
  sg13g2_a22oi_1 U270 ( .A1(\mem[14][1] ), .A2(n248), .B1(\mem[15][1] ), .B2(
        n247), .Y(n252) );
  sg13g2_a22oi_1 U271 ( .A1(\mem[12][1] ), .A2(n250), .B1(\mem[13][1] ), .B2(
        n249), .Y(n251) );
  sg13g2_a21oi_1 U272 ( .A1(n252), .A2(n251), .B1(n333), .Y(n253) );
  sg13g2_o21ai_1 U273 ( .A1(n254), .A2(n253), .B1(N16), .Y(n255) );
  sg13g2_o21ai_1 U274 ( .A1(N16), .A2(n256), .B1(n255), .Y(o_rdata[1]) );
  sg13g2_mux2_1 U275 ( .A0(\mem[0][1] ), .A1(i_wdata[1]), .S(n257), .X(n335)
         );
  sg13g2_mux2_1 U276 ( .A0(\mem[0][0] ), .A1(i_wdata[0]), .S(n257), .X(n336)
         );
  sg13g2_and2_1 U277 ( .A(n258), .B(n259), .X(n257) );
  sg13g2_mux2_1 U278 ( .A0(\mem[2][1] ), .A1(i_wdata[1]), .S(n260), .X(n337)
         );
  sg13g2_mux2_1 U279 ( .A0(\mem[2][0] ), .A1(i_wdata[0]), .S(n260), .X(n338)
         );
  sg13g2_and2_1 U280 ( .A(n261), .B(n258), .X(n260) );
  sg13g2_mux2_1 U281 ( .A0(\mem[4][1] ), .A1(i_wdata[1]), .S(n262), .X(n339)
         );
  sg13g2_mux2_1 U282 ( .A0(\mem[4][0] ), .A1(i_wdata[0]), .S(n262), .X(n340)
         );
  sg13g2_and2_1 U283 ( .A(n263), .B(n258), .X(n262) );
  sg13g2_mux2_1 U284 ( .A0(\mem[6][1] ), .A1(i_wdata[1]), .S(n264), .X(n341)
         );
  sg13g2_mux2_1 U285 ( .A0(\mem[6][0] ), .A1(i_wdata[0]), .S(n264), .X(n342)
         );
  sg13g2_nor2b_1 U286 ( .B_N(n258), .A(n265), .Y(n264) );
  sg13g2_nor2_1 U287 ( .A(n266), .B(wptr[3]), .Y(n258) );
  sg13g2_mux2_1 U288 ( .A0(\mem[1][1] ), .A1(i_wdata[1]), .S(n267), .X(n343)
         );
  sg13g2_mux2_1 U289 ( .A0(\mem[1][0] ), .A1(i_wdata[0]), .S(n267), .X(n344)
         );
  sg13g2_and2_1 U290 ( .A(n268), .B(n259), .X(n267) );
  sg13g2_mux2_1 U291 ( .A0(\mem[3][1] ), .A1(i_wdata[1]), .S(n269), .X(n345)
         );
  sg13g2_mux2_1 U292 ( .A0(\mem[3][0] ), .A1(i_wdata[0]), .S(n269), .X(n346)
         );
  sg13g2_and2_1 U293 ( .A(n268), .B(n261), .X(n269) );
  sg13g2_mux2_1 U294 ( .A0(\mem[5][1] ), .A1(i_wdata[1]), .S(n270), .X(n347)
         );
  sg13g2_mux2_1 U295 ( .A0(\mem[5][0] ), .A1(i_wdata[0]), .S(n270), .X(n348)
         );
  sg13g2_and2_1 U296 ( .A(n268), .B(n263), .X(n270) );
  sg13g2_mux2_1 U297 ( .A0(i_wdata[1]), .A1(\mem[7][1] ), .S(n271), .X(n349)
         );
  sg13g2_mux2_1 U298 ( .A0(i_wdata[0]), .A1(\mem[7][0] ), .S(n271), .X(n350)
         );
  sg13g2_mux2_1 U299 ( .A0(\mem[8][1] ), .A1(i_wdata[1]), .S(n272), .X(n351)
         );
  sg13g2_mux2_1 U300 ( .A0(\mem[8][0] ), .A1(i_wdata[0]), .S(n272), .X(n352)
         );
  sg13g2_and2_1 U301 ( .A(n273), .B(n259), .X(n272) );
  sg13g2_mux2_1 U302 ( .A0(\mem[10][1] ), .A1(i_wdata[1]), .S(n274), .X(n353)
         );
  sg13g2_mux2_1 U303 ( .A0(\mem[10][0] ), .A1(i_wdata[0]), .S(n274), .X(n354)
         );
  sg13g2_and2_1 U304 ( .A(n273), .B(n261), .X(n274) );
  sg13g2_mux2_1 U305 ( .A0(\mem[12][1] ), .A1(i_wdata[1]), .S(n275), .X(n355)
         );
  sg13g2_mux2_1 U306 ( .A0(\mem[12][0] ), .A1(i_wdata[0]), .S(n275), .X(n356)
         );
  sg13g2_and2_1 U307 ( .A(n273), .B(n263), .X(n275) );
  sg13g2_mux2_1 U308 ( .A0(\mem[14][1] ), .A1(i_wdata[1]), .S(n276), .X(n357)
         );
  sg13g2_mux2_1 U309 ( .A0(\mem[14][0] ), .A1(i_wdata[0]), .S(n276), .X(n358)
         );
  sg13g2_nor2b_1 U310 ( .B_N(n273), .A(n265), .Y(n276) );
  sg13g2_nor2b_1 U311 ( .B_N(wptr[3]), .A(n266), .Y(n273) );
  sg13g2_mux2_1 U312 ( .A0(\mem[9][1] ), .A1(i_wdata[1]), .S(n277), .X(n359)
         );
  sg13g2_mux2_1 U313 ( .A0(\mem[9][0] ), .A1(i_wdata[0]), .S(n277), .X(n360)
         );
  sg13g2_and2_1 U314 ( .A(n278), .B(n259), .X(n277) );
  sg13g2_nor2_1 U315 ( .A(wptr[2]), .B(wptr[1]), .Y(n259) );
  sg13g2_mux2_1 U316 ( .A0(\mem[11][1] ), .A1(i_wdata[1]), .S(n279), .X(n361)
         );
  sg13g2_mux2_1 U317 ( .A0(\mem[11][0] ), .A1(i_wdata[0]), .S(n279), .X(n362)
         );
  sg13g2_and2_1 U318 ( .A(n278), .B(n261), .X(n279) );
  sg13g2_mux2_1 U319 ( .A0(\mem[13][1] ), .A1(i_wdata[1]), .S(n280), .X(n363)
         );
  sg13g2_mux2_1 U320 ( .A0(\mem[13][0] ), .A1(i_wdata[0]), .S(n280), .X(n364)
         );
  sg13g2_and2_1 U321 ( .A(n278), .B(n263), .X(n280) );
  sg13g2_mux2_1 U322 ( .A0(i_wdata[1]), .A1(\mem[15][1] ), .S(n281), .X(n365)
         );
  sg13g2_mux2_1 U323 ( .A0(i_wdata[0]), .A1(\mem[15][0] ), .S(n281), .X(n366)
         );
  sg13g2_inv_1 U324 ( .A(n282), .Y(N90) );
  sg13g2_a22oi_1 U325 ( .A1(N95), .A2(n283), .B1(N96), .B2(n284), .Y(n282) );
  sg13g2_nor2_1 U326 ( .A(n285), .B(n283), .Y(N96) );
  sg13g2_xor2_1 U327 ( .A(n286), .B(rptr[4]), .X(n283) );
  sg13g2_nand2b_1 U328 ( .A_N(n332), .B(n287), .Y(n286) );
  sg13g2_inv_1 U329 ( .A(n288), .Y(N89) );
  sg13g2_a22oi_1 U330 ( .A1(N94), .A2(n284), .B1(N95), .B2(n289), .Y(n288) );
  sg13g2_nor2_1 U331 ( .A(n284), .B(n223), .Y(N95) );
  sg13g2_xor2_1 U332 ( .A(n332), .B(n287), .X(n284) );
  sg13g2_nor2b_1 U333 ( .B_N(n290), .A(n333), .Y(n287) );
  sg13g2_inv_1 U334 ( .A(n291), .Y(N88) );
  sg13g2_a22oi_1 U335 ( .A1(N93), .A2(n289), .B1(N94), .B2(n292), .Y(n291) );
  sg13g2_nor2_1 U336 ( .A(n289), .B(n223), .Y(N94) );
  sg13g2_xor2_1 U337 ( .A(n333), .B(n290), .X(n289) );
  sg13g2_nor2b_1 U338 ( .B_N(n293), .A(n331), .Y(n290) );
  sg13g2_inv_1 U339 ( .A(n294), .Y(N87) );
  sg13g2_a22oi_1 U340 ( .A1(N92), .A2(n292), .B1(N93), .B2(n295), .Y(n294) );
  sg13g2_nor2_1 U341 ( .A(n292), .B(n285), .Y(N93) );
  sg13g2_xor2_1 U342 ( .A(n331), .B(n293), .X(n292) );
  sg13g2_nor2b_1 U343 ( .B_N(n296), .A(n334), .Y(n293) );
  sg13g2_nor2_1 U344 ( .A(n295), .B(n285), .Y(N92) );
  sg13g2_xor2_1 U345 ( .A(n334), .B(n296), .X(n295) );
  sg13g2_nor2b_1 U346 ( .B_N(i_rd), .A(o_rempty), .Y(n296) );
  sg13g2_and4_1 U347 ( .A(n297), .B(n298), .C(n299), .D(n300), .X(o_rempty) );
  sg13g2_xor2_1 U348 ( .A(n327), .B(rgray[3]), .X(n300) );
  sg13g2_nor2_1 U349 ( .A(n301), .B(n302), .Y(n299) );
  sg13g2_xor2_1 U350 ( .A(rq2_wgray[2]), .B(rgray[2]), .X(n302) );
  sg13g2_xor2_1 U351 ( .A(rq2_wgray[4]), .B(rgray[4]), .X(n301) );
  sg13g2_xor2_1 U352 ( .A(n326), .B(rgray[0]), .X(n298) );
  sg13g2_xor2_1 U353 ( .A(n325), .B(rgray[1]), .X(n297) );
  sg13g2_nor2_1 U354 ( .A(n285), .B(n115), .Y(N85) );
  sg13g2_nor2_1 U355 ( .A(n285), .B(n114), .Y(N84) );
  sg13g2_nor2_1 U356 ( .A(n285), .B(n113), .Y(N83) );
  sg13g2_nor2_1 U357 ( .A(n285), .B(n112), .Y(N82) );
  sg13g2_nor2_1 U358 ( .A(n285), .B(n111), .Y(N81) );
  sg13g2_inv_1 U359 ( .A(i_rrst_n), .Y(n285) );
  sg13g2_and2_1 U360 ( .A(wgray[4]), .B(i_rrst_n), .X(N80) );
  sg13g2_and2_1 U361 ( .A(wgray[3]), .B(i_rrst_n), .X(N79) );
  sg13g2_and2_1 U362 ( .A(wgray[2]), .B(i_rrst_n), .X(N78) );
  sg13g2_and2_1 U363 ( .A(wgray[1]), .B(i_rrst_n), .X(N77) );
  sg13g2_and2_1 U364 ( .A(wgray[0]), .B(i_rrst_n), .X(N76) );
  sg13g2_inv_1 U365 ( .A(n303), .Y(N32) );
  sg13g2_a22oi_1 U366 ( .A1(N37), .A2(n304), .B1(N38), .B2(n305), .Y(n303) );
  sg13g2_nor2_1 U367 ( .A(n224), .B(n304), .Y(N38) );
  sg13g2_xor2_1 U368 ( .A(n281), .B(wptr[4]), .X(n304) );
  sg13g2_nand2_1 U369 ( .A(n278), .B(n307), .Y(n281) );
  sg13g2_nor2b_1 U370 ( .B_N(wptr[3]), .A(n308), .Y(n278) );
  sg13g2_inv_1 U371 ( .A(n309), .Y(N31) );
  sg13g2_a22oi_1 U372 ( .A1(N36), .A2(n305), .B1(n310), .B2(N37), .Y(n309) );
  sg13g2_nor2_1 U373 ( .A(n224), .B(n305), .Y(N37) );
  sg13g2_and2_1 U374 ( .A(n271), .B(n311), .X(n305) );
  sg13g2_o21ai_1 U375 ( .A1(n265), .A2(n308), .B1(wptr[3]), .Y(n311) );
  sg13g2_nand2_1 U376 ( .A(n268), .B(n307), .Y(n271) );
  sg13g2_inv_1 U377 ( .A(n265), .Y(n307) );
  sg13g2_nand2_1 U378 ( .A(wptr[2]), .B(wptr[1]), .Y(n265) );
  sg13g2_nor2_1 U379 ( .A(n308), .B(wptr[3]), .Y(n268) );
  sg13g2_inv_1 U380 ( .A(n312), .Y(N30) );
  sg13g2_a22oi_1 U381 ( .A1(N35), .A2(n310), .B1(n313), .B2(N36), .Y(n312) );
  sg13g2_nor2_1 U382 ( .A(n306), .B(n310), .Y(N36) );
  sg13g2_nor2_1 U383 ( .A(n314), .B(n263), .Y(n310) );
  sg13g2_nor2b_1 U384 ( .B_N(wptr[2]), .A(wptr[1]), .Y(n263) );
  sg13g2_mux2_1 U385 ( .A0(n261), .A1(wptr[2]), .S(n308), .X(n314) );
  sg13g2_nor2b_1 U386 ( .B_N(wptr[1]), .A(wptr[2]), .Y(n261) );
  sg13g2_inv_1 U387 ( .A(n315), .Y(N29) );
  sg13g2_a22oi_1 U388 ( .A1(N34), .A2(n313), .B1(n316), .B2(N35), .Y(n315) );
  sg13g2_nor2_1 U389 ( .A(n306), .B(n313), .Y(N35) );
  sg13g2_xor2_1 U390 ( .A(wptr[1]), .B(n308), .X(n313) );
  sg13g2_nand2_1 U391 ( .A(wptr[0]), .B(n317), .Y(n308) );
  sg13g2_nor2_1 U392 ( .A(n306), .B(n316), .Y(N34) );
  sg13g2_inv_1 U393 ( .A(n318), .Y(n316) );
  sg13g2_o21ai_1 U394 ( .A1(n317), .A2(n222), .B1(n266), .Y(n318) );
  sg13g2_nand2_1 U395 ( .A(n317), .B(n222), .Y(n266) );
  sg13g2_nor2b_1 U396 ( .B_N(i_wr), .A(o_wfull), .Y(n317) );
  sg13g2_and4_1 U397 ( .A(n319), .B(n320), .C(n321), .D(n322), .X(o_wfull) );
  sg13g2_xor2_1 U398 ( .A(n330), .B(wgray[2]), .X(n322) );
  sg13g2_nor2_1 U399 ( .A(n323), .B(n324), .Y(n321) );
  sg13g2_xor2_1 U400 ( .A(\eq_131/B[3] ), .B(wgray[3]), .X(n324) );
  sg13g2_xor2_1 U401 ( .A(\eq_131/B[4] ), .B(wgray[4]), .X(n323) );
  sg13g2_xor2_1 U402 ( .A(n329), .B(wgray[0]), .X(n320) );
  sg13g2_xor2_1 U403 ( .A(n328), .B(wgray[1]), .X(n319) );
  sg13g2_nor2_1 U404 ( .A(n306), .B(n105), .Y(N27) );
  sg13g2_nor2_1 U405 ( .A(n306), .B(n104), .Y(N26) );
  sg13g2_nor2_1 U406 ( .A(n306), .B(n103), .Y(N25) );
  sg13g2_nor2_1 U407 ( .A(n306), .B(n102), .Y(N24) );
  sg13g2_nor2_1 U408 ( .A(n306), .B(n101), .Y(N23) );
  sg13g2_inv_1 U409 ( .A(i_wrst_n), .Y(n306) );
  sg13g2_and2_1 U410 ( .A(rgray[4]), .B(i_wrst_n), .X(N22) );
  sg13g2_and2_1 U411 ( .A(rgray[3]), .B(i_wrst_n), .X(N21) );
  sg13g2_and2_1 U412 ( .A(rgray[2]), .B(i_wrst_n), .X(N20) );
  sg13g2_and2_1 U413 ( .A(rgray[1]), .B(i_wrst_n), .X(N19) );
  sg13g2_and2_1 U414 ( .A(rgray[0]), .B(i_wrst_n), .X(N18) );
endmodule


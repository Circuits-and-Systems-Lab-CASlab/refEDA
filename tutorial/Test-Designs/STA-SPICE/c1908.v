/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Thu Jun 27 16:22:35 2024
/////////////////////////////////////////////////////////////


module c1908 ( N1, N4, N7, N10, N13, N16, N19, N22, N25, N28, N31, N34, N37, 
        N40, N43, N46, N49, N53, N56, N60, N63, N66, N69, N72, N76, N79, N82, 
        N85, N88, N91, N94, N99, N104, N2753, N2754, N2755, N2756, N2762, 
        N2767, N2768, N2779, N2780, N2781, N2782, N2783, N2784, N2785, N2786, 
        N2787, N2811, N2886, N2887, N2888, N2889, N2890, N2891, N2892, N2899, 
        clk );
  input N1, N4, N7, N10, N13, N16, N19, N22, N25, N28, N31, N34, N37, N40, N43,
         N46, N49, N53, N56, N60, N63, N66, N69, N72, N76, N79, N82, N85, N88,
         N91, N94, N99, N104, clk;
  output N2753, N2754, N2755, N2756, N2762, N2767, N2768, N2779, N2780, N2781,
         N2782, N2783, N2784, N2785, N2786, N2787, N2811, N2886, N2887, N2888,
         N2889, N2890, N2891, N2892, N2899;
  wire   n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300;

  OAI32xp33_ASAP7_75t_R U174 ( .A1(n149), .A2(n150), .A3(n151), .B1(n152), 
        .B2(n153), .Y(N2899) );
  AOI21xp33_ASAP7_75t_R U175 ( .A1(n154), .A2(n150), .B(n155), .Y(n152) );
  INVx1_ASAP7_75t_R U176 ( .A(N79), .Y(n150) );
  INVx1_ASAP7_75t_R U177 ( .A(n153), .Y(n149) );
  XOR2xp5_ASAP7_75t_R U178 ( .A(n156), .B(n157), .Y(N2892) );
  AOI21xp33_ASAP7_75t_R U179 ( .A1(N91), .A2(N66), .B(n158), .Y(n157) );
  OAI32xp33_ASAP7_75t_R U180 ( .A1(n158), .A2(n159), .A3(n160), .B1(N104), 
        .B2(n161), .Y(n156) );
  XNOR2xp5_ASAP7_75t_R U181 ( .A(n162), .B(n159), .Y(n161) );
  INVx1_ASAP7_75t_R U182 ( .A(N91), .Y(n160) );
  XOR2xp5_ASAP7_75t_R U183 ( .A(n163), .B(n164), .Y(n159) );
  XOR2xp5_ASAP7_75t_R U184 ( .A(n165), .B(n166), .Y(N2891) );
  AOI21xp33_ASAP7_75t_R U185 ( .A1(N88), .A2(N63), .B(n158), .Y(n166) );
  OAI32xp33_ASAP7_75t_R U186 ( .A1(n158), .A2(n167), .A3(n168), .B1(N104), 
        .B2(n169), .Y(n165) );
  XNOR2xp5_ASAP7_75t_R U187 ( .A(n170), .B(n167), .Y(n169) );
  INVx1_ASAP7_75t_R U188 ( .A(N88), .Y(n168) );
  XOR2xp5_ASAP7_75t_R U189 ( .A(n171), .B(n172), .Y(n167) );
  OAI32xp33_ASAP7_75t_R U190 ( .A1(n173), .A2(n174), .A3(n151), .B1(n175), 
        .B2(n176), .Y(N2890) );
  AOI21xp33_ASAP7_75t_R U191 ( .A1(n154), .A2(n174), .B(n155), .Y(n175) );
  OAI32xp33_ASAP7_75t_R U192 ( .A1(n177), .A2(n178), .A3(n151), .B1(n179), 
        .B2(n180), .Y(N2889) );
  AOI21xp33_ASAP7_75t_R U193 ( .A1(n154), .A2(n178), .B(n155), .Y(n179) );
  INVx1_ASAP7_75t_R U194 ( .A(N85), .Y(n178) );
  OAI32xp33_ASAP7_75t_R U195 ( .A1(n181), .A2(n182), .A3(n151), .B1(n183), 
        .B2(n184), .Y(N2888) );
  AOI21xp33_ASAP7_75t_R U196 ( .A1(n154), .A2(n182), .B(n155), .Y(n183) );
  INVx1_ASAP7_75t_R U197 ( .A(N82), .Y(n182) );
  OAI32xp33_ASAP7_75t_R U198 ( .A1(n185), .A2(n186), .A3(n151), .B1(n187), 
        .B2(n188), .Y(N2887) );
  AOI21xp33_ASAP7_75t_R U199 ( .A1(n154), .A2(n186), .B(n155), .Y(n187) );
  INVx1_ASAP7_75t_R U200 ( .A(N76), .Y(n186) );
  OAI32xp33_ASAP7_75t_R U201 ( .A1(n189), .A2(n190), .A3(n151), .B1(n191), 
        .B2(n192), .Y(N2886) );
  AOI21xp33_ASAP7_75t_R U202 ( .A1(n154), .A2(n190), .B(n155), .Y(n191) );
  NOR2xp33_ASAP7_75t_R U203 ( .A(n193), .B(n194), .Y(n155) );
  NAND2xp33_ASAP7_75t_R U204 ( .A(n193), .B(n154), .Y(n151) );
  INVx1_ASAP7_75t_R U205 ( .A(n194), .Y(n154) );
  NOR2xp33_ASAP7_75t_R U206 ( .A(n158), .B(N99), .Y(n194) );
  AOI21xp33_ASAP7_75t_R U207 ( .A1(n162), .A2(n170), .B(n195), .Y(n193) );
  NAND3xp33_ASAP7_75t_R U208 ( .A(n170), .B(n162), .C(n196), .Y(N2811) );
  AOI331xp33_ASAP7_75t_R U209 ( .A1(n197), .A2(n198), .A3(n199), .B1(n200), 
        .B2(n201), .B3(n202), .C1(N104), .Y(n196) );
  O2A1O1Ixp33_ASAP7_75t_R U210 ( .A1(n203), .A2(n204), .B(n205), .C(n206), .Y(
        n202) );
  INVx1_ASAP7_75t_R U211 ( .A(n197), .Y(n205) );
  INVx1_ASAP7_75t_R U212 ( .A(n204), .Y(n199) );
  OAI32xp33_ASAP7_75t_R U213 ( .A1(n207), .A2(n208), .A3(n209), .B1(n210), 
        .B2(n206), .Y(n198) );
  INVx1_ASAP7_75t_R U214 ( .A(n211), .Y(n206) );
  O2A1O1Ixp33_ASAP7_75t_R U215 ( .A1(n212), .A2(n213), .B(n201), .C(n214), .Y(
        n210) );
  AOI21xp33_ASAP7_75t_R U216 ( .A1(n215), .A2(n216), .B(n207), .Y(n214) );
  INVx1_ASAP7_75t_R U217 ( .A(n201), .Y(n209) );
  AND5x1_ASAP7_75t_R U218 ( .A(n217), .B(n218), .C(n219), .D(n220), .E(n221), 
        .Y(n162) );
  AOI211xp5_ASAP7_75t_R U219 ( .A1(n222), .A2(n223), .B(n224), .C(n225), .Y(
        n221) );
  INVx1_ASAP7_75t_R U220 ( .A(n208), .Y(n223) );
  AND5x1_ASAP7_75t_R U221 ( .A(n226), .B(n227), .C(n228), .D(n229), .E(n230), 
        .Y(n170) );
  AO21x1_ASAP7_75t_R U222 ( .A1(n231), .A2(n232), .B(n208), .Y(n229) );
  NOR2xp33_ASAP7_75t_R U223 ( .A(n233), .B(n234), .Y(n208) );
  XOR2xp5_ASAP7_75t_R U224 ( .A(N40), .B(n225), .Y(N2787) );
  AND2x2_ASAP7_75t_R U225 ( .A(n235), .B(n236), .Y(n225) );
  XOR2xp5_ASAP7_75t_R U226 ( .A(N37), .B(n224), .Y(N2786) );
  AND3x1_ASAP7_75t_R U227 ( .A(n203), .B(n211), .C(n235), .Y(n224) );
  XNOR2xp5_ASAP7_75t_R U228 ( .A(N34), .B(n237), .Y(N2785) );
  NAND2xp33_ASAP7_75t_R U229 ( .A(n222), .B(n234), .Y(n237) );
  XNOR2xp5_ASAP7_75t_R U230 ( .A(N31), .B(n238), .Y(N2784) );
  NAND2xp33_ASAP7_75t_R U231 ( .A(n222), .B(n233), .Y(n238) );
  AND2x2_ASAP7_75t_R U232 ( .A(n235), .B(n239), .Y(n222) );
  AND2x2_ASAP7_75t_R U233 ( .A(n200), .B(n240), .Y(n235) );
  INVx1_ASAP7_75t_R U234 ( .A(n207), .Y(n200) );
  NAND2xp33_ASAP7_75t_R U235 ( .A(n241), .B(n213), .Y(n207) );
  XNOR2xp5_ASAP7_75t_R U236 ( .A(N25), .B(n217), .Y(N2783) );
  NAND4xp25_ASAP7_75t_R U237 ( .A(n236), .B(n201), .C(n212), .D(n242), .Y(n217) );
  NOR3xp33_ASAP7_75t_R U238 ( .A(n243), .B(n244), .C(n245), .Y(n236) );
  XNOR2xp5_ASAP7_75t_R U239 ( .A(N22), .B(n230), .Y(N2782) );
  NAND4xp25_ASAP7_75t_R U240 ( .A(n197), .B(n246), .C(n201), .D(n247), .Y(n230) );
  XNOR2xp5_ASAP7_75t_R U241 ( .A(N19), .B(n228), .Y(N2781) );
  NAND3xp33_ASAP7_75t_R U242 ( .A(n201), .B(n248), .C(n203), .Y(n228) );
  XOR2xp5_ASAP7_75t_R U243 ( .A(N16), .B(n249), .Y(N2780) );
  NOR2xp33_ASAP7_75t_R U244 ( .A(n250), .B(n231), .Y(n249) );
  XNOR2xp5_ASAP7_75t_R U245 ( .A(n251), .B(n252), .Y(N2779) );
  NOR2xp33_ASAP7_75t_R U246 ( .A(n245), .B(n231), .Y(n252) );
  NAND4xp25_ASAP7_75t_R U247 ( .A(n201), .B(n239), .C(n212), .D(n247), .Y(n231) );
  NOR2xp33_ASAP7_75t_R U248 ( .A(n215), .B(n253), .Y(n201) );
  INVx1_ASAP7_75t_R U249 ( .A(n254), .Y(n253) );
  XNOR2xp5_ASAP7_75t_R U250 ( .A(N46), .B(n218), .Y(N2768) );
  NAND2xp33_ASAP7_75t_R U251 ( .A(n233), .B(n255), .Y(n218) );
  XNOR2xp5_ASAP7_75t_R U252 ( .A(N43), .B(n219), .Y(N2767) );
  NAND3xp33_ASAP7_75t_R U253 ( .A(n246), .B(n239), .C(n240), .Y(n219) );
  AND3x1_ASAP7_75t_R U254 ( .A(n256), .B(n257), .C(n212), .Y(n246) );
  XNOR2xp5_ASAP7_75t_R U255 ( .A(N28), .B(n220), .Y(N2762) );
  NAND2xp33_ASAP7_75t_R U256 ( .A(n234), .B(n255), .Y(n220) );
  AND3x1_ASAP7_75t_R U257 ( .A(n203), .B(n212), .C(n240), .Y(n255) );
  AND2x2_ASAP7_75t_R U258 ( .A(n258), .B(n242), .Y(n240) );
  OAI31xp33_ASAP7_75t_R U259 ( .A1(n259), .A2(N91), .A3(n158), .B(n204), .Y(
        n242) );
  NOR2xp33_ASAP7_75t_R U260 ( .A(n244), .B(n260), .Y(n203) );
  XNOR2xp5_ASAP7_75t_R U261 ( .A(N10), .B(n226), .Y(N2756) );
  NAND4xp25_ASAP7_75t_R U262 ( .A(n260), .B(n261), .C(n258), .D(n248), .Y(n226) );
  XOR2xp5_ASAP7_75t_R U263 ( .A(N7), .B(n262), .Y(N2755) );
  NOR2xp33_ASAP7_75t_R U264 ( .A(n250), .B(n232), .Y(n262) );
  INVx1_ASAP7_75t_R U265 ( .A(n234), .Y(n250) );
  NOR2xp33_ASAP7_75t_R U266 ( .A(n256), .B(n263), .Y(n234) );
  INVx1_ASAP7_75t_R U267 ( .A(n257), .Y(n263) );
  XOR2xp5_ASAP7_75t_R U268 ( .A(N4), .B(n264), .Y(N2754) );
  NOR2xp33_ASAP7_75t_R U269 ( .A(n245), .B(n232), .Y(n264) );
  NAND4xp25_ASAP7_75t_R U270 ( .A(n197), .B(n258), .C(n212), .D(n247), .Y(n232) );
  NOR2xp33_ASAP7_75t_R U271 ( .A(n243), .B(n261), .Y(n197) );
  INVx1_ASAP7_75t_R U272 ( .A(n233), .Y(n245) );
  NOR2xp33_ASAP7_75t_R U273 ( .A(n257), .B(n265), .Y(n233) );
  INVx1_ASAP7_75t_R U274 ( .A(n256), .Y(n265) );
  XNOR2xp5_ASAP7_75t_R U275 ( .A(N1), .B(n227), .Y(N2753) );
  NAND3xp33_ASAP7_75t_R U276 ( .A(n248), .B(n239), .C(n258), .Y(n227) );
  INVx1_ASAP7_75t_R U277 ( .A(n216), .Y(n258) );
  NAND2xp33_ASAP7_75t_R U278 ( .A(n215), .B(n254), .Y(n216) );
  OAI21xp33_ASAP7_75t_R U279 ( .A1(N94), .A2(n266), .B(N60), .Y(n254) );
  XOR2xp5_ASAP7_75t_R U280 ( .A(N76), .B(n267), .Y(n215) );
  NOR2xp33_ASAP7_75t_R U281 ( .A(N94), .B(n188), .Y(n267) );
  INVx1_ASAP7_75t_R U282 ( .A(n185), .Y(n188) );
  FAx1_ASAP7_75t_R U283 ( .A(n164), .B(n268), .CI(n269), .SN(n185) );
  FAx1_ASAP7_75t_R U284 ( .A(N40), .B(n270), .CI(n271), .SN(n269) );
  AND2x2_ASAP7_75t_R U285 ( .A(n158), .B(N66), .Y(n270) );
  NOR2xp33_ASAP7_75t_R U286 ( .A(n260), .B(n261), .Y(n239) );
  INVx1_ASAP7_75t_R U287 ( .A(n244), .Y(n261) );
  A2O1A1Ixp33_ASAP7_75t_R U288 ( .A1(n173), .A2(n195), .B(N56), .C(n272), .Y(
        n244) );
  OAI221xp5_ASAP7_75t_R U289 ( .A1(n273), .A2(n176), .B1(N69), .B2(n173), .C(
        n195), .Y(n272) );
  NOR2xp33_ASAP7_75t_R U290 ( .A(N69), .B(n174), .Y(n273) );
  INVx1_ASAP7_75t_R U291 ( .A(N56), .Y(n174) );
  INVx1_ASAP7_75t_R U292 ( .A(n176), .Y(n173) );
  XNOR2xp5_ASAP7_75t_R U293 ( .A(n274), .B(n275), .Y(n176) );
  FAx1_ASAP7_75t_R U294 ( .A(N28), .B(N19), .CI(N10), .SN(n275) );
  FAx1_ASAP7_75t_R U295 ( .A(n276), .B(n277), .CI(n163), .SN(n274) );
  AND3x1_ASAP7_75t_R U296 ( .A(N60), .B(n158), .C(N69), .Y(n276) );
  INVx1_ASAP7_75t_R U297 ( .A(n243), .Y(n260) );
  XOR2xp5_ASAP7_75t_R U298 ( .A(N79), .B(n278), .Y(n243) );
  NOR2xp33_ASAP7_75t_R U299 ( .A(N94), .B(n153), .Y(n278) );
  FAx1_ASAP7_75t_R U300 ( .A(n164), .B(n279), .CI(n280), .SN(n153) );
  XNOR2xp5_ASAP7_75t_R U301 ( .A(n251), .B(n281), .Y(n280) );
  NOR3xp33_ASAP7_75t_R U302 ( .A(n190), .B(N72), .C(N104), .Y(n281) );
  INVx1_ASAP7_75t_R U303 ( .A(N13), .Y(n251) );
  FAx1_ASAP7_75t_R U304 ( .A(n282), .B(n277), .CI(n283), .SN(n164) );
  XOR2xp5_ASAP7_75t_R U305 ( .A(N37), .B(N46), .Y(n277) );
  AND3x1_ASAP7_75t_R U306 ( .A(n212), .B(n247), .C(n211), .Y(n248) );
  NOR2xp33_ASAP7_75t_R U307 ( .A(n257), .B(n256), .Y(n211) );
  XOR2xp5_ASAP7_75t_R U308 ( .A(N82), .B(n284), .Y(n256) );
  NOR2xp33_ASAP7_75t_R U309 ( .A(N94), .B(n184), .Y(n284) );
  INVx1_ASAP7_75t_R U310 ( .A(n181), .Y(n184) );
  XNOR2xp5_ASAP7_75t_R U311 ( .A(n285), .B(n286), .Y(n181) );
  FAx1_ASAP7_75t_R U312 ( .A(n287), .B(n163), .CI(n288), .SN(n286) );
  XOR2xp5_ASAP7_75t_R U313 ( .A(N25), .B(N40), .Y(n163) );
  AND3x1_ASAP7_75t_R U314 ( .A(N53), .B(n289), .C(n158), .Y(n287) );
  FAx1_ASAP7_75t_R U315 ( .A(n290), .B(N4), .CI(n282), .SN(n285) );
  INVx1_ASAP7_75t_R U316 ( .A(N31), .Y(n282) );
  INVx1_ASAP7_75t_R U317 ( .A(N43), .Y(n290) );
  XOR2xp5_ASAP7_75t_R U318 ( .A(N85), .B(n291), .Y(n257) );
  NOR2xp33_ASAP7_75t_R U319 ( .A(N94), .B(n180), .Y(n291) );
  INVx1_ASAP7_75t_R U320 ( .A(n177), .Y(n180) );
  FAx1_ASAP7_75t_R U321 ( .A(n292), .B(n293), .CI(n283), .SN(n177) );
  XOR2xp5_ASAP7_75t_R U322 ( .A(N34), .B(n294), .Y(n283) );
  NAND3xp33_ASAP7_75t_R U323 ( .A(N69), .B(n158), .C(N56), .Y(n293) );
  FAx1_ASAP7_75t_R U324 ( .A(N7), .B(n295), .CI(N16), .SN(n292) );
  OAI31xp33_ASAP7_75t_R U325 ( .A1(n259), .A2(N88), .A3(n158), .B(n204), .Y(
        n247) );
  OAI211xp5_ASAP7_75t_R U326 ( .A1(n266), .A2(n289), .B(n158), .C(N99), .Y(
        n204) );
  OAI21xp33_ASAP7_75t_R U327 ( .A1(n266), .A2(n289), .B(N94), .Y(n259) );
  INVx1_ASAP7_75t_R U328 ( .A(N72), .Y(n289) );
  INVx1_ASAP7_75t_R U329 ( .A(N69), .Y(n266) );
  NOR2xp33_ASAP7_75t_R U330 ( .A(n213), .B(n296), .Y(n212) );
  INVx1_ASAP7_75t_R U331 ( .A(n241), .Y(n296) );
  OAI21xp33_ASAP7_75t_R U332 ( .A1(N94), .A2(N72), .B(N53), .Y(n241) );
  A2O1A1Ixp33_ASAP7_75t_R U333 ( .A1(n189), .A2(n195), .B(N49), .C(n297), .Y(
        n213) );
  OAI211xp5_ASAP7_75t_R U334 ( .A1(N72), .A2(n192), .B(n298), .C(n195), .Y(
        n297) );
  OAI21xp33_ASAP7_75t_R U335 ( .A1(n192), .A2(n190), .B(N72), .Y(n298) );
  INVx1_ASAP7_75t_R U336 ( .A(N49), .Y(n190) );
  INVx1_ASAP7_75t_R U337 ( .A(N94), .Y(n195) );
  INVx1_ASAP7_75t_R U338 ( .A(n192), .Y(n189) );
  FAx1_ASAP7_75t_R U339 ( .A(n172), .B(n288), .CI(n299), .SN(n192) );
  FAx1_ASAP7_75t_R U340 ( .A(N25), .B(n300), .CI(n294), .SN(n299) );
  XOR2xp5_ASAP7_75t_R U341 ( .A(N28), .B(N43), .Y(n294) );
  AND2x2_ASAP7_75t_R U342 ( .A(n158), .B(N63), .Y(n300) );
  INVx1_ASAP7_75t_R U343 ( .A(N104), .Y(n158) );
  XNOR2xp5_ASAP7_75t_R U344 ( .A(N46), .B(n171), .Y(n288) );
  XNOR2xp5_ASAP7_75t_R U345 ( .A(N13), .B(n295), .Y(n171) );
  INVx1_ASAP7_75t_R U346 ( .A(N22), .Y(n295) );
  XNOR2xp5_ASAP7_75t_R U347 ( .A(n268), .B(n279), .Y(n172) );
  FAx1_ASAP7_75t_R U348 ( .A(N19), .B(N16), .CI(n271), .SN(n279) );
  INVx1_ASAP7_75t_R U349 ( .A(N1), .Y(n271) );
  FAx1_ASAP7_75t_R U350 ( .A(N7), .B(N4), .CI(N10), .SN(n268) );
endmodule


// Three-stage Click ring with reset and a three-register datapath.
// ASAP7 mapping; explicit delay cells use buffer chains.

module click1 ( Rin, Ain, Rout, Aout, clkout, rst);
    wire ff__qn_1, pdk_tie_high;

   input Rin, Aout;
   input rst;
   output Ain, Rout;
   output clkout;

   wire   t1bar, t1, t2, nfire, fire;
   wire   q, qn;

   wire nsetff, setff;

   assign Rout = q;
   assign Ain = Rout;
   assign clkout = fire;

    XNOR2xp5_ASAP7_75t_R xnorRHS__gate_1 (.A(Aout), .B(Rout), .Y(t2));

    XNOR2xp5_ASAP7_75t_R xnorLHS__gate_1 (.A(Rin), .B(Ain), .Y(t1bar));

    INVx1_ASAP7_75t_R xnorinv__gate_1 (.A(t1bar), .Y(t1));

    NAND2xp33_ASAP7_75t_R midnand__gate_1 (.A(t1), .B(t2), .Y(nfire));

    INVx1_ASAP7_75t_R inv__gate_1 (.A(nfire), .Y(fire));

    NAND2xp33_ASAP7_75t_R nandset__gate_1 (.A(rst), .B(fire), .Y(nsetff));

    INVx1_ASAP7_75t_R invqset__gate_1 (.A(nsetff), .Y(setff));

    DFFASRHQNx1_ASAP7_75t_R ff__ff_2 (.D(qn), .CLK(setff), .SETN(pdk_tie_high), .RESETN(rst), .QN(ff__qn_1));
    INVx1_ASAP7_75t_R ff__gate_3 (.A(ff__qn_1), .Y(q));

    INVx1_ASAP7_75t_R invq__gate_1 (.A(q), .Y(qn));

    TIEHIx1_ASAP7_75t_R tie_high (.H(pdk_tie_high));
endmodule

module click2 ( Rin, Ain, Rout, Aout, clkout, rst);
    wire ff__qn_1, pdk_tie_high;

   input Rin, Aout;
   input rst;
   output Ain, Rout;
   output clkout;

   wire   t1bar, t1, t2, nfire, fire;
   wire   q, qn;

   wire nsetff, setff;

   assign Rout = q;
   assign Ain = Rout;
   assign clkout = fire;

    XNOR2xp5_ASAP7_75t_R xnorRHS__gate_1 (.A(Aout), .B(Rout), .Y(t2));

    XNOR2xp5_ASAP7_75t_R xnorLHS__gate_1 (.A(Rin), .B(Ain), .Y(t1bar));

    INVx1_ASAP7_75t_R xnorinv__gate_1 (.A(t1bar), .Y(t1));

    NAND2xp33_ASAP7_75t_R midnand__gate_1 (.A(t1), .B(t2), .Y(nfire));

    INVx1_ASAP7_75t_R inv__gate_1 (.A(nfire), .Y(fire));

    NAND2xp33_ASAP7_75t_R nandset__gate_1 (.A(rst), .B(fire), .Y(nsetff));

    INVx1_ASAP7_75t_R invqset__gate_1 (.A(nsetff), .Y(setff));

    DFFASRHQNx1_ASAP7_75t_R ff__ff_2 (.D(qn), .CLK(setff), .SETN(pdk_tie_high), .RESETN(rst), .QN(ff__qn_1));
    INVx1_ASAP7_75t_R ff__gate_3 (.A(ff__qn_1), .Y(q));

    INVx1_ASAP7_75t_R invq__gate_1 (.A(q), .Y(qn));

    TIEHIx1_ASAP7_75t_R tie_high (.H(pdk_tie_high));
endmodule

module click3 ( Rin, Ain, Rout, Aout, clkout, rst);
    wire ff__qn_1, pdk_tie_high;

   input Rin, Aout;
   input rst;
   output Ain, Rout;
   output clkout;

   wire nsetff, setff;

   wire   t1bar, t1, t2, nfire, fire;
   wire   q, qn;

   assign Rout = q;
   assign Ain = Rout;
   assign clkout = fire;

    XNOR2xp5_ASAP7_75t_R xnorRHS__gate_1 (.A(Aout), .B(Rout), .Y(t2));

    XNOR2xp5_ASAP7_75t_R xnorLHS__gate_1 (.A(Rin), .B(Ain), .Y(t1bar));

    INVx1_ASAP7_75t_R xnorinv__gate_1 (.A(t1bar), .Y(t1));

    NAND2xp33_ASAP7_75t_R midnand__gate_1 (.A(t1), .B(t2), .Y(nfire));

    INVx1_ASAP7_75t_R inv__gate_1 (.A(nfire), .Y(fire));

    NAND2xp33_ASAP7_75t_R nandset__gate_1 (.A(rst), .B(fire), .Y(nsetff));

    INVx1_ASAP7_75t_R invqset__gate_1 (.A(nsetff), .Y(setff));

    DFFASRHQNx1_ASAP7_75t_R ff__ff_2 (.D(qn), .CLK(setff), .SETN(rst), .RESETN(pdk_tie_high), .QN(ff__qn_1));
    INVx1_ASAP7_75t_R ff__gate_3 (.A(ff__qn_1), .Y(q));

    INVx1_ASAP7_75t_R invq__gate_1 (.A(q), .Y(qn));

    TIEHIx1_ASAP7_75t_R tie_high (.H(pdk_tie_high));
endmodule

module datapath(a, b, c, d, clk1, clk2, rst);
    wire ff__qn_1, ff2__qn_1, ff3__qn_1, pdk_tie_high;

   input a, b;
   input rst;
   output c, d;

   input  clk1, clk2;

   wire   ffin, ffout;
   wire   ffin2, ffout2, ffout3;

    NAND2xp33_ASAP7_75t_R dataand__gate_1 (.A(a), .B(b), .Y(ffin));

    DFFASRHQNx1_ASAP7_75t_R ff__ff_2 (.D(ffin), .CLK(clk1), .SETN(pdk_tie_high), .RESETN(rst), .QN(ff__qn_1));
    INVx1_ASAP7_75t_R ff__gate_3 (.A(ff__qn_1), .Y(ffout));

    DFFASRHQNx1_ASAP7_75t_R ff2__ff_2 (.D(a), .CLK(clk1), .SETN(pdk_tie_high), .RESETN(rst), .QN(ff2__qn_1));
    INVx1_ASAP7_75t_R ff2__gate_3 (.A(ff2__qn_1), .Y(ffout2));

    NAND2xp33_ASAP7_75t_R dataand2__gate_1 (.A(ffout), .B(ffout2), .Y(c));

    DFFASRHQNx1_ASAP7_75t_R ff3__ff_2 (.D(ffout2), .CLK(clk2), .SETN(pdk_tie_high), .RESETN(rst), .QN(ff3__qn_1));
    INVx1_ASAP7_75t_R ff3__gate_3 (.A(ff3__qn_1), .Y(ffout3));

    INVx1_ASAP7_75t_R inv__gate_1 (.A(ffout3), .Y(d));

    TIEHIx1_ASAP7_75t_R tie_high (.H(pdk_tie_high));
endmodule

module toplevel(a, b, c, d, rst);

   input a, b;
   input rst;
   output c, d;

   wire dummy;
   wire Rin1, Aout1;
   wire Ain1, Rout1;
   wire Rin2, Aout2;
   wire Ain2, Rout3;
   wire Rin3, Aout3;
   wire Ain3, Rout2;
   wire clkout1, clkout2, clkout3;

   assign Rin2 = Rout1;
   assign Aout1 = Ain2;

   assign Rin3 = Rout2;
   assign Aout2 = Ain3;

   assign Rin1 = Rout3;
   assign Aout3 = Ain1;

   click1 myclick1 (.Rin(Rin1), .Ain(Ain1), .Rout(Rout1), .Aout(Aout1), .clkout(clkout1), .rst(rst));
   click2 myclick2 (.Rin(Rin2), .Ain(Ain2), .Rout(Rout2), .Aout(Aout2), .clkout(clkout2), .rst(rst));
   click3 myclick3 (.Rin(Rin3), .Ain(Ain3), .Rout(Rout3), .Aout(Aout3), .clkout(clkout3), .rst(rst));

   datapath thedatapath (.a(a), .b(b), .c(c), .d(d), .clk1(clkout1), .clk2(clkout2), .rst(rst));

endmodule

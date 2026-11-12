// Three-stage Click ring with reset and a three-register datapath.
// IHP-Open-PDK mapping; explicit delay cells use buffer chains.

module click1 ( Rin, Ain, Rout, Aout, clkout, rst);

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

    sg13g2_xnor2_1 xnorRHS__gate_1 (.A(Aout), .B(Rout), .Y(t2));

    sg13g2_xnor2_1 xnorLHS__gate_1 (.A(Rin), .B(Ain), .Y(t1bar));

    sg13g2_inv_1 xnorinv__gate_1 (.A(t1bar), .Y(t1));

    sg13g2_nand2_1 midnand__gate_1 (.A(t1), .B(t2), .Y(nfire));

    sg13g2_inv_1 inv__gate_1 (.A(nfire), .Y(fire));

    sg13g2_nand2_1 nandset__gate_1 (.A(rst), .B(fire), .Y(nsetff));

    sg13g2_inv_1 invqset__gate_1 (.A(nsetff), .Y(setff));

    sg13g2_dfrbpq_1 ff__ff_1 (.D(qn), .CLK(setff), .RESET_B(rst), .Q(q));

    sg13g2_inv_1 invq__gate_1 (.A(q), .Y(qn));

endmodule

module click2 ( Rin, Ain, Rout, Aout, clkout, rst);

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

    sg13g2_xnor2_1 xnorRHS__gate_1 (.A(Aout), .B(Rout), .Y(t2));

    sg13g2_xnor2_1 xnorLHS__gate_1 (.A(Rin), .B(Ain), .Y(t1bar));

    sg13g2_inv_1 xnorinv__gate_1 (.A(t1bar), .Y(t1));

    sg13g2_nand2_1 midnand__gate_1 (.A(t1), .B(t2), .Y(nfire));

    sg13g2_inv_1 inv__gate_1 (.A(nfire), .Y(fire));

    sg13g2_nand2_1 nandset__gate_1 (.A(rst), .B(fire), .Y(nsetff));

    sg13g2_inv_1 invqset__gate_1 (.A(nsetff), .Y(setff));

    sg13g2_dfrbpq_1 ff__ff_1 (.D(qn), .CLK(setff), .RESET_B(rst), .Q(q));

    sg13g2_inv_1 invq__gate_1 (.A(q), .Y(qn));

endmodule

module click3 ( Rin, Ain, Rout, Aout, clkout, rst);
    wire ff__preset_d_1, ff__preset_qn_2;

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

    sg13g2_xnor2_1 xnorRHS__gate_1 (.A(Aout), .B(Rout), .Y(t2));

    sg13g2_xnor2_1 xnorLHS__gate_1 (.A(Rin), .B(Ain), .Y(t1bar));

    sg13g2_inv_1 xnorinv__gate_1 (.A(t1bar), .Y(t1));

    sg13g2_nand2_1 midnand__gate_1 (.A(t1), .B(t2), .Y(nfire));

    sg13g2_inv_1 inv__gate_1 (.A(nfire), .Y(fire));

    sg13g2_nand2_1 nandset__gate_1 (.A(rst), .B(fire), .Y(nsetff));

    sg13g2_inv_1 invqset__gate_1 (.A(nsetff), .Y(setff));

    sg13g2_inv_1 ff__gate_3 (.A(qn), .Y(ff__preset_d_1));
    sg13g2_dfrbpq_1 ff__ff_4 (.D(ff__preset_d_1), .CLK(setff), .RESET_B(rst), .Q(ff__preset_qn_2));
    sg13g2_inv_1 ff__gate_5 (.A(ff__preset_qn_2), .Y(q));

    sg13g2_inv_1 invq__gate_1 (.A(q), .Y(qn));

endmodule

module datapath(a, b, c, d, clk1, clk2, rst);

   input a, b;
   input rst;
   output c, d;

   input  clk1, clk2;

   wire   ffin, ffout;
   wire   ffin2, ffout2, ffout3;

    sg13g2_nand2_1 dataand__gate_1 (.A(a), .B(b), .Y(ffin));

    sg13g2_dfrbpq_1 ff__ff_1 (.D(ffin), .CLK(clk1), .RESET_B(rst), .Q(ffout));

    sg13g2_dfrbpq_1 ff2__ff_1 (.D(a), .CLK(clk1), .RESET_B(rst), .Q(ffout2));

    sg13g2_nand2_1 dataand2__gate_1 (.A(ffout), .B(ffout2), .Y(c));

    sg13g2_dfrbpq_1 ff3__ff_1 (.D(ffout2), .CLK(clk2), .RESET_B(rst), .Q(ffout3));

    sg13g2_inv_1 inv__gate_1 (.A(ffout3), .Y(d));

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

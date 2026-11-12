// SG13G2 mapping of the tutorial's click 2stage ring circuit.
module click1 ( Rin, Ain, Rout, Aout, clkout );
    wire pdk_tie_high;
   input Rin, Aout;
   output Ain, Rout;
   output clkout;

   wire   t1bar, t1, t2, nfire, fire;
   wire   q, qn;

   assign Rout = q;
   assign Ain = Rout;
   assign clkout = fire;

   sg13g2_xnor2_1 xnorRHS (.A(Aout), .B(Rout), .Y(t2));
   sg13g2_xnor2_1 xnorLHS (.A(Rin), .B(Ain), .Y(t1bar));
   sg13g2_inv_1 xnorinv (.A(t1bar), .Y(t1));

   sg13g2_nand2_1 midnand (.A(t1), .B(t2), .Y(nfire));
   sg13g2_inv_1 inv (.A(nfire), .Y(fire));

   sg13g2_dfrbpq_1 ff (.D(qn), .CLK(fire), .Q(q), .RESET_B(pdk_tie_high));
   sg13g2_inv_1 invq (.A(q), .Y(qn));

    sg13g2_tiehi tie_high (.L_HI(pdk_tie_high));
endmodule // click

module click2 ( Rin, Ain, Rout, Aout, clkout );
    wire pdk_tie_high;
   input Rin, Aout;
   output Ain, Rout;
   output clkout;

   wire   t1bar, t1, t2, nfire, fire;
   wire   q, qn;

   assign Rout = q;
   assign Ain = Rout;
   assign clkout = fire;

   sg13g2_xnor2_1 xnorRHS (.A(Aout), .B(Rout), .Y(t2));
   sg13g2_xnor2_1 xnorLHS (.A(Rin), .B(Ain), .Y(t1bar));
   sg13g2_inv_1 xnorinv (.A(t1bar), .Y(t1));

   sg13g2_nand2_1 midnand (.A(t1), .B(t2), .Y(nfire));
   sg13g2_inv_1 inv (.A(nfire), .Y(fire));

   sg13g2_dfrbpq_1 ff (.D(qn), .CLK(fire), .Q(q), .RESET_B(pdk_tie_high));
   sg13g2_inv_1 invq (.A(q), .Y(qn));

    sg13g2_tiehi tie_high (.L_HI(pdk_tie_high));
endmodule // click

module datapath(a, b, c, d, clk1, clk2);
    wire pdk_tie_high;
   input a, b;
   output c, d;

   input  clk1, clk2;

   wire   ffin, ffout;
   wire   ffin2, ffout2, ffout3;

   sg13g2_nand2_1 dataand (.A(a), .B(b), .Y(ffin));

   sg13g2_dfrbpq_1 ff (.D(ffin), .CLK(clk1), .Q(ffout), .RESET_B(pdk_tie_high));
   sg13g2_dfrbpq_1 ff2 (.D(a), .CLK(clk1), .Q(ffout2), .RESET_B(pdk_tie_high));

   sg13g2_nand2_1 dataand2 (.A(ffout), .B(ffout2), .Y(c));

   sg13g2_dfrbpq_1 ff3 (.D(ffout2), .CLK(clk2), .Q(ffout3), .RESET_B(pdk_tie_high));

   sg13g2_inv_1 inv (.A(ffout3), .Y(d));

    sg13g2_tiehi tie_high (.L_HI(pdk_tie_high));
endmodule // datapath

module toplevel(a, b, c, d);

   input a, b;
   output c, d;

   wire dummy;
   wire Rin1, Aout1;
   wire Ain1, Rout1;
   wire Rin2, Aout2;
   wire Ain2, Rout2;
   wire clkout1, clkout2;

   assign Rin2 = Rout1; // Rin2 driven by Rout1 //
   assign Aout1 = Ain2; // Aout1 driven by Ain2 //

   assign Rin1 = Rout2; // Rin1 driven by Rout2 //
   assign Aout2 = Ain1; // Aout2 driven by Ain1 //

   click1 myclick1 (.Rin(Rin1), .Ain(Ain1), .Rout(Rout1), .Aout(Aout1), .clkout(clkout1));
   click2 myclick2 (.Rin(Rin2), .Ain(Ain2), .Rout(Rout2), .Aout(Aout2), .clkout(clkout2));
   datapath thedatapath (.a(a), .b(b), .c(c), .d(d), .clk1(clkout1), .clk2(clkout2));

endmodule // toplevel

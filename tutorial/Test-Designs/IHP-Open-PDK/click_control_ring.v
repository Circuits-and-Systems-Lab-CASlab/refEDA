// SG13G2 mapping of the tutorial's click control ring circuit.
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

module toplevel (Rout1, Rout2);
 output Rout1, Rout2;
 wire Ain1, Ain2, clkout1, clkout2;
 click1 myclick1 (.Rin(Rout2), .Ain(Ain1), .Rout(Rout1), .Aout(Ain2), .clkout(clkout1));
 click2 myclick2 (.Rin(Rout1), .Ain(Ain2), .Rout(Rout2), .Aout(Ain1), .clkout(clkout2));
endmodule

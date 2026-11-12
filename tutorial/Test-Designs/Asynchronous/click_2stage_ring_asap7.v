// ASAP7 RVT version of the QA two-stage Click ring with datapath.
// DFFHQx4 provides the non-inverting Q output used by the original circuit.
module click1 ( Rin, Ain, Rout, Aout, clkout );
   input Rin, Aout;
   output Ain, Rout;
   output clkout;   
   
   wire   t1bar, t1, t2, nfire, fire;
   wire   q, qn;   

   assign Rout = q;
   assign Ain = Rout;
   assign clkout = fire;   
   
   XNOR2x1_ASAP7_75t_R xnorRHS (.A(Aout), .B(Rout), .Y(t2));
   XNOR2x1_ASAP7_75t_R xnorLHS (.A(Rin), .B(Ain), .Y(t1bar));
   INVx1_ASAP7_75t_R xnorinv (.A(t1bar), .Y(t1));

   NAND2x1_ASAP7_75t_R midnand (.A(t1), .B(t2), .Y(nfire));
   INVx1_ASAP7_75t_R inv (.A(nfire), .Y(fire));

   DFFHQx4_ASAP7_75t_R ff (.D(qn), .CLK(fire), .Q(q));
   INVx1_ASAP7_75t_R invq (.A(q), .Y(qn)); 
	       
endmodule // click

module click2 ( Rin, Ain, Rout, Aout, clkout );
   input Rin, Aout;
   output Ain, Rout;
   output clkout;   
   
   wire   t1bar, t1, t2, nfire, fire;
   wire   q, qn;   

   assign Rout = q;
   assign Ain = Rout;   
   assign clkout = fire;
   
   XNOR2x1_ASAP7_75t_R xnorRHS (.A(Aout), .B(Rout), .Y(t2));
   XNOR2x1_ASAP7_75t_R xnorLHS (.A(Rin), .B(Ain), .Y(t1bar));
   INVx1_ASAP7_75t_R xnorinv (.A(t1bar), .Y(t1));

   NAND2x1_ASAP7_75t_R midnand (.A(t1), .B(t2), .Y(nfire));
   INVx1_ASAP7_75t_R inv (.A(nfire), .Y(fire));

   DFFHQx4_ASAP7_75t_R ff (.D(qn), .CLK(fire), .Q(q));
   INVx1_ASAP7_75t_R invq (.A(q), .Y(qn)); 
	       
endmodule // click

module datapath(a, b, c, d, clk1, clk2);
   input a, b;
   output c, d;

   input  clk1, clk2;
   
   wire   ffin, ffout;   
   wire   ffin2, ffout2, ffout3;   
   
   NAND2x1_ASAP7_75t_R dataand (.A(a), .B(b), .Y(ffin));

   DFFHQx4_ASAP7_75t_R ff (.D(ffin), .CLK(clk1), .Q(ffout));
   DFFHQx4_ASAP7_75t_R ff2 (.D(a), .CLK(clk1), .Q(ffout2));

   NAND2x1_ASAP7_75t_R dataand2 (.A(ffout), .B(ffout2), .Y(c));
   
   DFFHQx4_ASAP7_75t_R ff3 (.D(ffout2), .CLK(clk2), .Q(ffout3));

   INVx1_ASAP7_75t_R inv (.A(ffout3), .Y(d));   
		   
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

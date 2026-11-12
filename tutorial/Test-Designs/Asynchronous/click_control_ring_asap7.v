// Two-stage Click control ring using ASAP7 RVT cells.
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

module toplevel (Rout1, Rout2);
 output Rout1, Rout2;
 wire Ain1, Ain2, clkout1, clkout2;
 click1 myclick1 (.Rin(Rout2), .Ain(Ain1), .Rout(Rout1), .Aout(Ain2), .clkout(clkout1));
 click2 myclick2 (.Rin(Rout1), .Ain(Ain2), .Rout(Rout2), .Aout(Ain1), .clkout(clkout2));
endmodule

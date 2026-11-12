// SG13G2 mapping of the tutorial's click datapath fanout circuit.
module click1 (Rin, Ain, Rout, Aout, clkout);
    wire pdk_tie_high;
    input Rin, Aout;
    output Ain, Rout;
    output clkout;

    wire t1, t2, fire;
    wire q, qn;

    assign Rout = q;
    assign Ain = Rout;
    assign clkout = fire;

    sg13g2_xnor2_1 xnorRHS (.A(Aout), .B(Rout), .Y(t2));
    sg13g2_xor2_1 xorLHS (.A(Rin), .B(Ain), .X(t1));

    sg13g2_and2_1 midand (.A(t1), .B(t2), .X(fire));

    sg13g2_dfrbpq_1 ff (.D(qn), .CLK(fire), .Q(q), .RESET_B(pdk_tie_high));
    sg13g2_inv_1 invq (.A(q), .Y(qn));
    sg13g2_tiehi tie_high (.L_HI(pdk_tie_high));
endmodule

module click2 (Rin, Ain, Rout, Aout, clkout);
    wire pdk_tie_high;
    input Rin, Aout;
    output Ain, Rout;
    output clkout;

    wire t1, t2, fire;
    wire q, qn;

    assign Rout = q;
    assign Ain = Rout;
    assign clkout = fire;

    sg13g2_xnor2_1 xnorRHS (.A(Aout), .B(Rout), .Y(t2));
    sg13g2_xor2_1 xorLHS (.A(Rin), .B(Ain), .X(t1));

    sg13g2_and2_1 midand (.A(t1), .B(t2), .X(fire));

    sg13g2_dfrbpq_1 ff (.D(qn), .CLK(fire), .Q(q), .RESET_B(pdk_tie_high));
    sg13g2_inv_1 invq (.A(q), .Y(qn));
    sg13g2_tiehi tie_high (.L_HI(pdk_tie_high));
endmodule

module datapath (a, b, c, d, clk1, clk2, out);
    wire pdk_tie_high;
    input a, b;
    output c, d;

    input clk1, clk2;

    output [8:0] out;

    wire ffin, ffout;
    wire ffout2, ffout3, latch3in;
    wire dataand4out;

    sg13g2_nand2_1 dataand (.A(a), .B(dataand4out), .Y(ffin));

    sg13g2_dfrbpq_1 ff (.D(ffin), .CLK(clk1), .Q(ffout), .RESET_B(pdk_tie_high));

    sg13g2_dfrbpq_1 ff2 (.D(dataand4out), .CLK(clk1), .Q(ffout2), .RESET_B(pdk_tie_high));

    sg13g2_dfrbpq_1 ff21 (.D(dataand4out), .CLK(clk1), .Q(out[0]), .RESET_B(pdk_tie_high));
    sg13g2_dfrbpq_1 ff22 (.D(dataand4out), .CLK(clk1), .Q(out[1]), .RESET_B(pdk_tie_high));
    sg13g2_dfrbpq_1 ff23 (.D(dataand4out), .CLK(clk1), .Q(out[2]), .RESET_B(pdk_tie_high));
    sg13g2_dfrbpq_1 ff24 (.D(dataand4out), .CLK(clk1), .Q(out[3]), .RESET_B(pdk_tie_high));
    sg13g2_dfrbpq_1 ff25 (.D(dataand4out), .CLK(clk1), .Q(out[4]), .RESET_B(pdk_tie_high));
    sg13g2_dfrbpq_1 ff26 (.D(dataand4out), .CLK(clk1), .Q(out[5]), .RESET_B(pdk_tie_high));
    sg13g2_dfrbpq_1 ff27 (.D(dataand4out), .CLK(clk1), .Q(out[6]), .RESET_B(pdk_tie_high));
    sg13g2_dfrbpq_1 ff28 (.D(dataand4out), .CLK(clk1), .Q(out[7]), .RESET_B(pdk_tie_high));
    sg13g2_dfrbpq_1 ff29 (.D(dataand4out), .CLK(clk1), .Q(out[8]), .RESET_B(pdk_tie_high));

    sg13g2_nand2_1 dataand2 (.A(ffout), .B(ffout2), .Y(c));

    sg13g2_nand2_1 dataand3 (.A(ffout), .B(ffout2), .Y(latch3in));

    sg13g2_dfrbpq_1 ff3 (.D(latch3in), .CLK(clk2), .Q(ffout3), .RESET_B(pdk_tie_high));

    sg13g2_nand2_1 dataand4 (.A(ffout3), .B(b), .Y(dataand4out));

    sg13g2_inv_1 inv (.A(ffout3), .Y(d));
    sg13g2_tiehi tie_high (.L_HI(pdk_tie_high));
endmodule

module toplevel (a, b, c, d, out);

    input a, b;
    output c, d;

    output [8:0] out;

    wire Rin1, Aout1;
    wire Ain1, Rout1;
    wire Rin2, Aout2;
    wire Ain2, Rout2;
    wire clkout1, clkout2;
    wire clkout1buff;

    assign Rin2 = Rout1;
    assign Aout1 = Ain2;

    assign Rin1 = Rout2;
    assign Aout2 = Ain1;

    click1 myclick1 (.Rin(Rin1), .Ain(Ain1), .Rout(Rout1), .Aout(Aout1), .clkout(clkout1));

    click2 myclick2 (.Rin(Rin2), .Ain(Ain2), .Rout(Rout2), .Aout(Aout2), .clkout(clkout2));

    sg13g2_buf_1 clockbuf (.A(clkout1), .X(clkout1buff));

    datapath thedatapath (.a(a), .b(b), .c(c), .d(d), .clk1(clkout1buff), .clk2(clkout2), .out(out));
endmodule

// Two Click stages with a buffered first-stage clock and a register bank.
// The controllers are wired in functional mode.
module click1 (Rin, Ain, Rout, Aout, clkout);
    input Rin, Aout;
    output Ain, Rout;
    output clkout;

    wire t1, t2, fire;
    wire q, qn;

    assign Rout = q;
    assign Ain = Rout;
    assign clkout = fire;

    XNOR2x1_ASAP7_75t_R xnorRHS (.A(Aout), .B(Rout), .Y(t2));
    XOR2x1_ASAP7_75t_R xorLHS  (.A(Rin), .B(Ain), .Y(t1));

    AND2x2_ASAP7_75t_R midand (.A(t1), .B(t2), .Y(fire));

    DFFHQx4_ASAP7_75t_R ff (.D(qn), .CLK(fire), .Q(q));
    INVx1_ASAP7_75t_R invq (.A(q), .Y(qn));
endmodule

module click2 (Rin, Ain, Rout, Aout, clkout);
    input Rin, Aout;
    output Ain, Rout;
    output clkout;

    wire t1, t2, fire;
    wire q, qn;

    assign Rout = q;
    assign Ain = Rout;
    assign clkout = fire;

    XNOR2x1_ASAP7_75t_R xnorRHS (.A(Aout), .B(Rout), .Y(t2));
    XOR2x1_ASAP7_75t_R xorLHS  (.A(Rin), .B(Ain), .Y(t1));

    AND2x2_ASAP7_75t_R midand (.A(t1), .B(t2), .Y(fire));

    DFFHQx4_ASAP7_75t_R ff (.D(qn), .CLK(fire), .Q(q));
    INVx1_ASAP7_75t_R invq (.A(q), .Y(qn));
endmodule

module datapath (a, b, c, d, clk1, clk2, out);
    input a, b;
    output c, d;

    input clk1, clk2;

    output [8:0] out;

    wire ffin, ffout;
    wire ffout2, ffout3, latch3in;
    wire dataand4out;

    NAND2x1_ASAP7_75t_R dataand (.A(a), .B(dataand4out), .Y(ffin));

    DFFHQx4_ASAP7_75t_R ff (.D(ffin), .CLK(clk1), .Q(ffout));

    DFFHQx4_ASAP7_75t_R ff2 (.D(dataand4out), .CLK(clk1), .Q(ffout2));

    DFFHQx4_ASAP7_75t_R ff21 (.D(dataand4out), .CLK(clk1), .Q(out[0]));
    DFFHQx4_ASAP7_75t_R ff22 (.D(dataand4out), .CLK(clk1), .Q(out[1]));
    DFFHQx4_ASAP7_75t_R ff23 (.D(dataand4out), .CLK(clk1), .Q(out[2]));
    DFFHQx4_ASAP7_75t_R ff24 (.D(dataand4out), .CLK(clk1), .Q(out[3]));
    DFFHQx4_ASAP7_75t_R ff25 (.D(dataand4out), .CLK(clk1), .Q(out[4]));
    DFFHQx4_ASAP7_75t_R ff26 (.D(dataand4out), .CLK(clk1), .Q(out[5]));
    DFFHQx4_ASAP7_75t_R ff27 (.D(dataand4out), .CLK(clk1), .Q(out[6]));
    DFFHQx4_ASAP7_75t_R ff28 (.D(dataand4out), .CLK(clk1), .Q(out[7]));
    DFFHQx4_ASAP7_75t_R ff29 (.D(dataand4out), .CLK(clk1), .Q(out[8]));

    NAND2x1_ASAP7_75t_R dataand2 (.A(ffout), .B(ffout2), .Y(c));

    NAND2x1_ASAP7_75t_R dataand3 (.A(ffout), .B(ffout2), .Y(latch3in));

    DFFHQx4_ASAP7_75t_R ff3 (.D(latch3in), .CLK(clk2), .Q(ffout3));

    NAND2x1_ASAP7_75t_R dataand4 (.A(ffout3), .B(b), .Y(dataand4out));

    INVx1_ASAP7_75t_R inv (.A(ffout3), .Y(d));
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

    BUFx2_ASAP7_75t_R clockbuf (.A(clkout1), .Y(clkout1buff));

    datapath thedatapath (.a(a), .b(b), .c(c), .d(d), .clk1(clkout1buff), .clk2(clkout2), .out(out));
endmodule

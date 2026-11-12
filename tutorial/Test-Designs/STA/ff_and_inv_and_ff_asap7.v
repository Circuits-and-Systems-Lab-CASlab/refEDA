
module ff_and_inv_and_ff(clk, in1, in2, in3, out);

input clk, in1, in2, in3;
output out;
wire n1, n1_inv, n2, q1;

DFFHQx4_ASAP7_75t_R FF1 (.Q(q1), .D(in1), .CLK(clk));
NAND2xp33_ASAP7_75t_R NAND1 ( .A(q1), .B(in2), .Y(n1) );
INVx1_ASAP7_75t_R INV ( .A(n1), .Y(n1_inv) );
NAND2xp33_ASAP7_75t_R NAND2 ( .A(n1_inv), .B(in3), .Y(n2) );
DFFHQx4_ASAP7_75t_R FF2 (.Q(out), .D(n2), .CLK(clk));

endmodule

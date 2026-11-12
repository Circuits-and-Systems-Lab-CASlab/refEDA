module and_or_gate (a1, a2, b1, out, clk);

input a1, a2;
input b1;
output out;
input clk;

sg13g2_a21o_1 U1 (.A1(a1), .A2(a2), .B1(b1), .X(out));

endmodule
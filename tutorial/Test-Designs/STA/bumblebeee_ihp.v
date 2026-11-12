// Reset pins omitted in the supplied example are tied inactive.
module bumblebeee (in1, in2, in3, clk, out1, out2);
  wire pdk_tie_high;


  input in1, in2, in3;
  input clk;
  output out1, out2;

  wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;

  sg13g2_dfrbp_1 FF1 (.Q(w1), .D(in1), .CLK(clk), .RESET_B(pdk_tie_high) );
  sg13g2_dfrbp_1 FF2 (.Q(w2), .D(in2), .CLK(clk), .RESET_B(pdk_tie_high) );
  sg13g2_dfrbp_1 FF3 (.Q(w3), .D(in3), .CLK(clk), .RESET_B(pdk_tie_high) );

  sg13g2_and2_1 AND1 (.A(w1), .B(w2), .X(w4));
  sg13g2_and2_1 AND2 (.A(w2), .B(w3), .X(w5));

  sg13g2_buf_1 INV1 (.A(w4), .X(w6));
  sg13g2_buf_1 INV2 (.A(w5), .X(w8));

  sg13g2_or2_1 OR1 (.A(w4), .B(w5), .X(w7));

  sg13g2_and2_1 AND3 (.A(w6), .B(w7), .X(w9));
  sg13g2_and2_1 AND4 (.A(w7), .B(w8), .X(w10));

  sg13g2_dfrbp_1 FF4 (.Q(out1), .D(w9), .CLK(clk), .RESET_B(pdk_tie_high) );
  sg13g2_dfrbp_1 FF5 (.Q(out2), .D(w10), .CLK(clk), .RESET_B(pdk_tie_high) );

  sg13g2_tiehi tie_high (.L_HI(pdk_tie_high));

endmodule
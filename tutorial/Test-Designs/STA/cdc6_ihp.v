// Reset pins omitted in the supplied example are tied inactive.
module cdc6 (in1, in2, in3, clk1, clk2, clk3, out1, out2);
  wire pdk_tie_high;


  input in1, in2, in3;
  input clk1, clk2, clk3;

  output out1, out2;

  wire u1_to_u4a1, u2_to_u4a2, u3_to_u5a2;
  wire u4_out, u5_out;
  wire cnw1, cnw2, cnw2_2, cnw3, cnw4, cnw5;

  sg13g2_buf_1 cn_buf_0 (.A(clk1), .X(cnw1));
  sg13g2_dfrbp_1 _U1 (.Q(u1_to_u4a1), .D(in1), .CLK(cnw1), .RESET_B(pdk_tie_high) );
  sg13g2_dfrbp_1 _U2 (.Q(u2_to_u4a2), .D(in2), .CLK(clk2), .RESET_B(pdk_tie_high) );

  sg13g2_buf_1 cn_buf_1 (.A(clk3), .X(cnw3));
  sg13g2_dfrbp_1 _U3 (.Q(u3_to_u5a2), .D(in3), .CLK(cnw3), .RESET_B(pdk_tie_high) );
  
  sg13g2_nand2_1 _U4 (.A(u1_to_u4a1), .B(u2_to_u4a2), .Y(u4_out));
  sg13g2_nand2_1 _U5 (.A(u4_out), .B(u3_to_u5a2), .Y(u5_out));
  
  sg13g2_dfrbp_1 _U6 (.Q(out1), .D(u4_out), .CLK(cnw1), .RESET_B(pdk_tie_high) );

  sg13g2_buf_1 cn_buf_2 (.A(clk2), .X(cnw2));
  sg13g2_buf_1 cn_buf_3 (.A(cnw2), .X(cnw2_2));
  sg13g2_dfrbp_1 _U7 (.Q(out2), .D(u5_out), .CLK(cnw2_2), .RESET_B(pdk_tie_high) );

  sg13g2_tiehi tie_high (.L_HI(pdk_tie_high));

endmodule

/*

  FF U1 ---- 
            |
            ---->
                  NAND U4  ---------------------------------> FF U6 --------> OUT1
            ---->                    |
            |                        |
  FF U2 ----                         |
                                     --->
                                          NAND U5 ----------> FF U7 --------> OUT2
  FF U3 -------------------------------->

*/

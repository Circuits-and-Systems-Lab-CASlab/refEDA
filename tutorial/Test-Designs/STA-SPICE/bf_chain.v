
module bf_chain(in, out, clk);

  input in, clk;
  output out;
  wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20;
  
  BUFx2_ASAP7_75t_R U1(.A (in), .Y (w1));
  BUFx2_ASAP7_75t_R U2(.A (w1), .Y (w2));
  BUFx2_ASAP7_75t_R U3(.A (w2), .Y (w3));
  BUFx2_ASAP7_75t_R U4(.A (w3), .Y (w4));
  BUFx2_ASAP7_75t_R U5(.A (w4), .Y (w5));
  BUFx2_ASAP7_75t_R U6(.A (w5), .Y (w6));
  BUFx2_ASAP7_75t_R U7(.A (w6), .Y (w7));
  BUFx2_ASAP7_75t_R U8(.A (w7), .Y (w8));
  BUFx2_ASAP7_75t_R U9(.A (w8), .Y (w9));
  BUFx2_ASAP7_75t_R U10(.A (w9), .Y (w10));
  BUFx2_ASAP7_75t_R U11(.A (w10), .Y (w11));
  BUFx2_ASAP7_75t_R U12(.A (w11), .Y (w12));
  BUFx2_ASAP7_75t_R U13(.A (w12), .Y (w13));
  BUFx2_ASAP7_75t_R U14(.A (w13), .Y (w14));
  BUFx2_ASAP7_75t_R U15(.A (w14), .Y (w15));
  BUFx2_ASAP7_75t_R U16(.A (w15), .Y (w16));
  BUFx2_ASAP7_75t_R U17(.A (w16), .Y (w17));
  BUFx2_ASAP7_75t_R U18(.A (w17), .Y (w18));
  BUFx2_ASAP7_75t_R U19(.A (w18), .Y (w19));
  BUFx2_ASAP7_75t_R U20(.A (w19), .Y (w20));
  BUFx2_ASAP7_75t_R U21(.A (w20), .Y (out));

endmodule


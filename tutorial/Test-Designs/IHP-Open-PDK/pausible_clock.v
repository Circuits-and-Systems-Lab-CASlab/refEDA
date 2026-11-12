// Pausible-clock timing demonstration, flattened to one module.
// The ack FF drives n5; its inverter is the sole ack driver.
module SynchronizerToolkitPausibleClk ( arst, dataIn, req, scanCk, scanTest,
        dataOut, clk, ack );
wire pdk_tie_high;

  input [7:0] dataIn;
  output [7:0] dataOut;
  input arst, req, scanCk, scanTest;
  output clk, ack;
  wire   l, n2;


    wire u_DatapathPausibleClk__dataFlop_reg_7___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_6___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_5___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_4___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_3___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_2___scan_d_1;
    wire u_DatapathPausibleClk__dataFlop_reg_1___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_0___scan_d_1, u_DatapathPausibleClk__dataOut_reg_7___scan_d_1, u_DatapathPausibleClk__dataOut_reg_6___scan_d_1, u_DatapathPausibleClk__dataOut_reg_5___scan_d_1, u_DatapathPausibleClk__dataOut_reg_4___scan_d_1;
    wire u_DatapathPausibleClk__dataOut_reg_3___scan_d_1, u_DatapathPausibleClk__dataOut_reg_2___scan_d_1, u_DatapathPausibleClk__dataOut_reg_1___scan_d_1, u_DatapathPausibleClk__dataOut_reg_0___scan_d_1, u_DatapathPausibleClk__pdk_tie_high, u_DatapathPausibleClk__pdk_tie_low;

  
  
  
  wire   u_DatapathPausibleClk__n31, u_DatapathPausibleClk__n32, u_DatapathPausibleClk__n1, u_DatapathPausibleClk__n2, u_DatapathPausibleClk__n3, u_DatapathPausibleClk__n5, u_DatapathPausibleClk__n7, u_DatapathPausibleClk__n9, u_DatapathPausibleClk__n11, u_DatapathPausibleClk__n13;
  wire   [7:0] u_DatapathPausibleClk__dataFlop;

   assign u_DatapathPausibleClk__n31 = u_DatapathPausibleClk__pdk_tie_high;
   assign u_DatapathPausibleClk__n32 = u_DatapathPausibleClk__pdk_tie_low;

    sg13g2_mux2_1 u_DatapathPausibleClk__dataFlop_reg_7___gate_2 (.A0(dataIn[7]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataFlop_reg_7___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataFlop_reg_7___ff_3 (.D(u_DatapathPausibleClk__dataFlop_reg_7___scan_d_1), .CLK(l), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__dataFlop[7]));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataFlop_reg_6___gate_2 (.A0(dataIn[6]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataFlop_reg_6___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataFlop_reg_6___ff_3 (.D(u_DatapathPausibleClk__dataFlop_reg_6___scan_d_1), .CLK(l), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__dataFlop[6]));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataFlop_reg_5___gate_2 (.A0(dataIn[5]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataFlop_reg_5___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataFlop_reg_5___ff_3 (.D(u_DatapathPausibleClk__dataFlop_reg_5___scan_d_1), .CLK(l), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__dataFlop[5]));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataFlop_reg_4___gate_2 (.A0(dataIn[4]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataFlop_reg_4___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataFlop_reg_4___ff_3 (.D(u_DatapathPausibleClk__dataFlop_reg_4___scan_d_1), .CLK(l), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__dataFlop[4]));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataFlop_reg_3___gate_2 (.A0(dataIn[3]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataFlop_reg_3___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataFlop_reg_3___ff_3 (.D(u_DatapathPausibleClk__dataFlop_reg_3___scan_d_1), .CLK(l), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__dataFlop[3]));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataFlop_reg_2___gate_2 (.A0(dataIn[2]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataFlop_reg_2___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataFlop_reg_2___ff_3 (.D(u_DatapathPausibleClk__dataFlop_reg_2___scan_d_1), .CLK(l), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__dataFlop[2]));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataFlop_reg_1___gate_2 (.A0(dataIn[1]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataFlop_reg_1___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataFlop_reg_1___ff_3 (.D(u_DatapathPausibleClk__dataFlop_reg_1___scan_d_1), .CLK(l), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__dataFlop[1]));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataFlop_reg_0___gate_2 (.A0(dataIn[0]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataFlop_reg_0___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataFlop_reg_0___ff_3 (.D(u_DatapathPausibleClk__dataFlop_reg_0___scan_d_1), .CLK(l), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__dataFlop[0]));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataOut_reg_7___gate_2 (.A0(u_DatapathPausibleClk__dataFlop[7]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataOut_reg_7___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataOut_reg_7___ff_3 (.D(u_DatapathPausibleClk__dataOut_reg_7___scan_d_1), .CLK(clk), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__n2));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataOut_reg_6___gate_2 (.A0(u_DatapathPausibleClk__dataFlop[6]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataOut_reg_6___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataOut_reg_6___ff_3 (.D(u_DatapathPausibleClk__dataOut_reg_6___scan_d_1), .CLK(clk), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__n1));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataOut_reg_5___gate_2 (.A0(u_DatapathPausibleClk__dataFlop[5]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataOut_reg_5___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataOut_reg_5___ff_3 (.D(u_DatapathPausibleClk__dataOut_reg_5___scan_d_1), .CLK(clk), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__n3));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataOut_reg_4___gate_2 (.A0(u_DatapathPausibleClk__dataFlop[4]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataOut_reg_4___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataOut_reg_4___ff_3 (.D(u_DatapathPausibleClk__dataOut_reg_4___scan_d_1), .CLK(clk), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__n5));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataOut_reg_3___gate_2 (.A0(u_DatapathPausibleClk__dataFlop[3]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataOut_reg_3___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataOut_reg_3___ff_3 (.D(u_DatapathPausibleClk__dataOut_reg_3___scan_d_1), .CLK(clk), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__n7));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataOut_reg_2___gate_2 (.A0(u_DatapathPausibleClk__dataFlop[2]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataOut_reg_2___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataOut_reg_2___ff_3 (.D(u_DatapathPausibleClk__dataOut_reg_2___scan_d_1), .CLK(clk), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__n9));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataOut_reg_1___gate_2 (.A0(u_DatapathPausibleClk__dataFlop[1]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataOut_reg_1___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataOut_reg_1___ff_3 (.D(u_DatapathPausibleClk__dataOut_reg_1___scan_d_1), .CLK(clk), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__n11));

    sg13g2_mux2_1 u_DatapathPausibleClk__dataOut_reg_0___gate_2 (.A0(u_DatapathPausibleClk__dataFlop[0]), .A1(u_DatapathPausibleClk__n32), .S(u_DatapathPausibleClk__n32), .X(u_DatapathPausibleClk__dataOut_reg_0___scan_d_1));
    sg13g2_dfrbpq_1 u_DatapathPausibleClk__dataOut_reg_0___ff_3 (.D(u_DatapathPausibleClk__dataOut_reg_0___scan_d_1), .CLK(clk), .RESET_B(u_DatapathPausibleClk__n31), .Q(u_DatapathPausibleClk__n13));

    sg13g2_inv_1 u_DatapathPausibleClk__U3__gate_1 (.A(u_DatapathPausibleClk__n3), .Y(dataOut[5]));

    sg13g2_inv_1 u_DatapathPausibleClk__U4__gate_1 (.A(u_DatapathPausibleClk__n5), .Y(dataOut[4]));

    sg13g2_inv_1 u_DatapathPausibleClk__U5__gate_1 (.A(u_DatapathPausibleClk__n7), .Y(dataOut[3]));

    sg13g2_inv_1 u_DatapathPausibleClk__U6__gate_1 (.A(u_DatapathPausibleClk__n9), .Y(dataOut[2]));

    sg13g2_inv_1 u_DatapathPausibleClk__U7__gate_1 (.A(u_DatapathPausibleClk__n11), .Y(dataOut[1]));

    sg13g2_inv_1 u_DatapathPausibleClk__U8__gate_1 (.A(u_DatapathPausibleClk__n13), .Y(dataOut[0]));

    sg13g2_inv_1 u_DatapathPausibleClk__U9__gate_1 (.A(u_DatapathPausibleClk__n1), .Y(dataOut[6]));

    sg13g2_inv_1 u_DatapathPausibleClk__U10__gate_1 (.A(u_DatapathPausibleClk__n2), .Y(dataOut[7]));

    sg13g2_tiehi u_DatapathPausibleClk__tie_high (.L_HI(u_DatapathPausibleClk__pdk_tie_high));
    sg13g2_tielo u_DatapathPausibleClk__tie_low (.L_LO(u_DatapathPausibleClk__pdk_tie_low));



    wire u_ControllerPausibleClk__reqFlop_reg__scan_d_1, u_ControllerPausibleClk__ack_reg__scan_d_1, u_ControllerPausibleClk__pdk_tie_high, u_ControllerPausibleClk__pdk_tie_low;

  
  
  wire   u_ControllerPausibleClk__reqFlop, u_ControllerPausibleClk__r1, u_ControllerPausibleClk__g2, u_ControllerPausibleClk__n_0_net_, u_ControllerPausibleClk__n_1_net_, u_ControllerPausibleClk__n_2_net_, u_ControllerPausibleClk__clkDelayed, u_ControllerPausibleClk__clkDelayedprime, u_ControllerPausibleClk__n1, u_ControllerPausibleClk__n3, u_ControllerPausibleClk__n5
;

  assign u_ControllerPausibleClk__n1 = u_ControllerPausibleClk__pdk_tie_high;
  assign u_ControllerPausibleClk__n3 = u_ControllerPausibleClk__pdk_tie_low;

    sg13g2_mux2_1 u_ControllerPausibleClk__reqFlop_reg__gate_2 (.A0(req), .A1(u_ControllerPausibleClk__n3), .S(u_ControllerPausibleClk__n3), .X(u_ControllerPausibleClk__reqFlop_reg__scan_d_1));
    sg13g2_dfrbpq_1 u_ControllerPausibleClk__reqFlop_reg__ff_3 (.D(u_ControllerPausibleClk__reqFlop_reg__scan_d_1), .CLK(l), .RESET_B(u_ControllerPausibleClk__n_2_net_), .Q(u_ControllerPausibleClk__reqFlop));

    sg13g2_mux2_1 u_ControllerPausibleClk__ack_reg__gate_2 (.A0(u_ControllerPausibleClk__reqFlop), .A1(u_ControllerPausibleClk__n3), .S(u_ControllerPausibleClk__n3), .X(u_ControllerPausibleClk__ack_reg__scan_d_1));
    sg13g2_dfrbpq_1 u_ControllerPausibleClk__ack_reg__ff_3 (.D(u_ControllerPausibleClk__ack_reg__scan_d_1), .CLK(clk), .RESET_B(u_ControllerPausibleClk__n1), .Q(u_ControllerPausibleClk__n5));

    sg13g2_nand2_1 u_ControllerPausibleClk__u_HinstMutex_u_SizeOnlyHinstMutex1__gate_1 (.A(u_ControllerPausibleClk__r1), .B(u_ControllerPausibleClk__n_0_net_), .Y(l));

    sg13g2_nand2_1 u_ControllerPausibleClk__u_HinstMutex_u_SizeOnlyHinstMutex2__gate_1 (.A(u_ControllerPausibleClk__r1), .B(u_ControllerPausibleClk__n_0_net_), .Y(u_ControllerPausibleClk__g2));

    sg13g2_nand3_1 u_ControllerPausibleClk__u_HinstMullerC_u_SizeOnlyHinstMullerC__gate_1 (.A(u_ControllerPausibleClk__g2), .B(u_ControllerPausibleClk__n_1_net_), .C(u_ControllerPausibleClk__n_2_net_), .Y(clk));

    sg13g2_inv_1 u_ControllerPausibleClk__u_HinstBuff_u_SizeOnlyBuff__gate_1 (.A(clk), .Y(u_ControllerPausibleClk__clkDelayedprime));

    sg13g2_inv_1 u_ControllerPausibleClk__u_HinstBuff_u_SizeOnlyBuff2__gate_1 (.A(u_ControllerPausibleClk__clkDelayedprime), .Y(u_ControllerPausibleClk__clkDelayed));

    sg13g2_inv_1 u_ControllerPausibleClk__U3__gate_1 (.A(u_ControllerPausibleClk__n5), .Y(ack));

    sg13g2_inv_1 u_ControllerPausibleClk__U6__gate_1 (.A(arst), .Y(u_ControllerPausibleClk__n_2_net_));

    sg13g2_inv_1 u_ControllerPausibleClk__U7__gate_1 (.A(u_ControllerPausibleClk__clkDelayed), .Y(u_ControllerPausibleClk__n_1_net_));

    sg13g2_inv_1 u_ControllerPausibleClk__U8__gate_1 (.A(clk), .Y(u_ControllerPausibleClk__n_0_net_));

    sg13g2_xnor2_1 u_ControllerPausibleClk__U9__gate_1 (.A(req), .B(u_ControllerPausibleClk__reqFlop), .Y(u_ControllerPausibleClk__r1));

    sg13g2_tiehi u_ControllerPausibleClk__tie_high (.L_HI(u_ControllerPausibleClk__pdk_tie_high));
    sg13g2_tielo u_ControllerPausibleClk__tie_low (.L_LO(u_ControllerPausibleClk__pdk_tie_low));


   assign n2 = pdk_tie_high;

    sg13g2_tiehi tie_high (.L_HI(pdk_tie_high));
endmodule

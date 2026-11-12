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


    wire u_DatapathPausibleClk__dataFlop_reg_7___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_7___term_2, u_DatapathPausibleClk__dataFlop_reg_7___term_3, u_DatapathPausibleClk__dataFlop_reg_7___term_6, u_DatapathPausibleClk__dataFlop_reg_7___qn_9, u_DatapathPausibleClk__dataFlop_reg_6___scan_d_1;
    wire u_DatapathPausibleClk__dataFlop_reg_6___term_2, u_DatapathPausibleClk__dataFlop_reg_6___term_3, u_DatapathPausibleClk__dataFlop_reg_6___term_6, u_DatapathPausibleClk__dataFlop_reg_6___qn_9, u_DatapathPausibleClk__dataFlop_reg_5___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_5___term_2;
    wire u_DatapathPausibleClk__dataFlop_reg_5___term_3, u_DatapathPausibleClk__dataFlop_reg_5___term_6, u_DatapathPausibleClk__dataFlop_reg_5___qn_9, u_DatapathPausibleClk__dataFlop_reg_4___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_4___term_2, u_DatapathPausibleClk__dataFlop_reg_4___term_3;
    wire u_DatapathPausibleClk__dataFlop_reg_4___term_6, u_DatapathPausibleClk__dataFlop_reg_4___qn_9, u_DatapathPausibleClk__dataFlop_reg_3___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_3___term_2, u_DatapathPausibleClk__dataFlop_reg_3___term_3, u_DatapathPausibleClk__dataFlop_reg_3___term_6;
    wire u_DatapathPausibleClk__dataFlop_reg_3___qn_9, u_DatapathPausibleClk__dataFlop_reg_2___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_2___term_2, u_DatapathPausibleClk__dataFlop_reg_2___term_3, u_DatapathPausibleClk__dataFlop_reg_2___term_6, u_DatapathPausibleClk__dataFlop_reg_2___qn_9;
    wire u_DatapathPausibleClk__dataFlop_reg_1___scan_d_1, u_DatapathPausibleClk__dataFlop_reg_1___term_2, u_DatapathPausibleClk__dataFlop_reg_1___term_3, u_DatapathPausibleClk__dataFlop_reg_1___term_6, u_DatapathPausibleClk__dataFlop_reg_1___qn_9, u_DatapathPausibleClk__dataFlop_reg_0___scan_d_1;
    wire u_DatapathPausibleClk__dataFlop_reg_0___term_2, u_DatapathPausibleClk__dataFlop_reg_0___term_3, u_DatapathPausibleClk__dataFlop_reg_0___term_6, u_DatapathPausibleClk__dataFlop_reg_0___qn_9, u_DatapathPausibleClk__dataOut_reg_7___scan_d_1, u_DatapathPausibleClk__dataOut_reg_7___term_2;
    wire u_DatapathPausibleClk__dataOut_reg_7___term_3, u_DatapathPausibleClk__dataOut_reg_7___term_6, u_DatapathPausibleClk__dataOut_reg_7___qn_9, u_DatapathPausibleClk__dataOut_reg_6___scan_d_1, u_DatapathPausibleClk__dataOut_reg_6___term_2, u_DatapathPausibleClk__dataOut_reg_6___term_3;
    wire u_DatapathPausibleClk__dataOut_reg_6___term_6, u_DatapathPausibleClk__dataOut_reg_6___qn_9, u_DatapathPausibleClk__dataOut_reg_5___scan_d_1, u_DatapathPausibleClk__dataOut_reg_5___term_2, u_DatapathPausibleClk__dataOut_reg_5___term_3, u_DatapathPausibleClk__dataOut_reg_5___term_6;
    wire u_DatapathPausibleClk__dataOut_reg_5___qn_9, u_DatapathPausibleClk__dataOut_reg_4___scan_d_1, u_DatapathPausibleClk__dataOut_reg_4___term_2, u_DatapathPausibleClk__dataOut_reg_4___term_3, u_DatapathPausibleClk__dataOut_reg_4___term_6, u_DatapathPausibleClk__dataOut_reg_4___qn_9;
    wire u_DatapathPausibleClk__dataOut_reg_3___scan_d_1, u_DatapathPausibleClk__dataOut_reg_3___term_2, u_DatapathPausibleClk__dataOut_reg_3___term_3, u_DatapathPausibleClk__dataOut_reg_3___term_6, u_DatapathPausibleClk__dataOut_reg_3___qn_9, u_DatapathPausibleClk__dataOut_reg_2___scan_d_1;
    wire u_DatapathPausibleClk__dataOut_reg_2___term_2, u_DatapathPausibleClk__dataOut_reg_2___term_3, u_DatapathPausibleClk__dataOut_reg_2___term_6, u_DatapathPausibleClk__dataOut_reg_2___qn_9, u_DatapathPausibleClk__dataOut_reg_1___scan_d_1, u_DatapathPausibleClk__dataOut_reg_1___term_2;
    wire u_DatapathPausibleClk__dataOut_reg_1___term_3, u_DatapathPausibleClk__dataOut_reg_1___term_6, u_DatapathPausibleClk__dataOut_reg_1___qn_9, u_DatapathPausibleClk__dataOut_reg_0___scan_d_1, u_DatapathPausibleClk__dataOut_reg_0___term_2, u_DatapathPausibleClk__dataOut_reg_0___term_3;
    wire u_DatapathPausibleClk__dataOut_reg_0___term_6, u_DatapathPausibleClk__dataOut_reg_0___qn_9, u_DatapathPausibleClk__pdk_tie_high, u_DatapathPausibleClk__pdk_tie_low;

  
  
  
  wire   u_DatapathPausibleClk__n31, u_DatapathPausibleClk__n32, u_DatapathPausibleClk__n1, u_DatapathPausibleClk__n2, u_DatapathPausibleClk__n3, u_DatapathPausibleClk__n5, u_DatapathPausibleClk__n7, u_DatapathPausibleClk__n9, u_DatapathPausibleClk__n11, u_DatapathPausibleClk__n13;
  wire   [7:0] u_DatapathPausibleClk__dataFlop;

   assign u_DatapathPausibleClk__n31 = u_DatapathPausibleClk__pdk_tie_high;
   assign u_DatapathPausibleClk__n32 = u_DatapathPausibleClk__pdk_tie_low;

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_7___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_7___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_7___gate_5 (.A(u_DatapathPausibleClk__dataFlop_reg_7___term_3), .B(dataIn[7]), .Y(u_DatapathPausibleClk__dataFlop_reg_7___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_7___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_7___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_7___gate_8 (.A(u_DatapathPausibleClk__dataFlop_reg_7___term_2), .B(u_DatapathPausibleClk__dataFlop_reg_7___term_6), .Y(u_DatapathPausibleClk__dataFlop_reg_7___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_7___ff_10 (.D(u_DatapathPausibleClk__dataFlop_reg_7___scan_d_1), .CLK(l), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataFlop_reg_7___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_7___gate_11 (.A(u_DatapathPausibleClk__dataFlop_reg_7___qn_9), .Y(u_DatapathPausibleClk__dataFlop[7]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_6___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_6___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_6___gate_5 (.A(u_DatapathPausibleClk__dataFlop_reg_6___term_3), .B(dataIn[6]), .Y(u_DatapathPausibleClk__dataFlop_reg_6___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_6___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_6___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_6___gate_8 (.A(u_DatapathPausibleClk__dataFlop_reg_6___term_2), .B(u_DatapathPausibleClk__dataFlop_reg_6___term_6), .Y(u_DatapathPausibleClk__dataFlop_reg_6___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_6___ff_10 (.D(u_DatapathPausibleClk__dataFlop_reg_6___scan_d_1), .CLK(l), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataFlop_reg_6___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_6___gate_11 (.A(u_DatapathPausibleClk__dataFlop_reg_6___qn_9), .Y(u_DatapathPausibleClk__dataFlop[6]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_5___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_5___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_5___gate_5 (.A(u_DatapathPausibleClk__dataFlop_reg_5___term_3), .B(dataIn[5]), .Y(u_DatapathPausibleClk__dataFlop_reg_5___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_5___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_5___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_5___gate_8 (.A(u_DatapathPausibleClk__dataFlop_reg_5___term_2), .B(u_DatapathPausibleClk__dataFlop_reg_5___term_6), .Y(u_DatapathPausibleClk__dataFlop_reg_5___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_5___ff_10 (.D(u_DatapathPausibleClk__dataFlop_reg_5___scan_d_1), .CLK(l), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataFlop_reg_5___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_5___gate_11 (.A(u_DatapathPausibleClk__dataFlop_reg_5___qn_9), .Y(u_DatapathPausibleClk__dataFlop[5]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_4___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_4___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_4___gate_5 (.A(u_DatapathPausibleClk__dataFlop_reg_4___term_3), .B(dataIn[4]), .Y(u_DatapathPausibleClk__dataFlop_reg_4___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_4___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_4___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_4___gate_8 (.A(u_DatapathPausibleClk__dataFlop_reg_4___term_2), .B(u_DatapathPausibleClk__dataFlop_reg_4___term_6), .Y(u_DatapathPausibleClk__dataFlop_reg_4___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_4___ff_10 (.D(u_DatapathPausibleClk__dataFlop_reg_4___scan_d_1), .CLK(l), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataFlop_reg_4___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_4___gate_11 (.A(u_DatapathPausibleClk__dataFlop_reg_4___qn_9), .Y(u_DatapathPausibleClk__dataFlop[4]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_3___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_3___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_3___gate_5 (.A(u_DatapathPausibleClk__dataFlop_reg_3___term_3), .B(dataIn[3]), .Y(u_DatapathPausibleClk__dataFlop_reg_3___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_3___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_3___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_3___gate_8 (.A(u_DatapathPausibleClk__dataFlop_reg_3___term_2), .B(u_DatapathPausibleClk__dataFlop_reg_3___term_6), .Y(u_DatapathPausibleClk__dataFlop_reg_3___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_3___ff_10 (.D(u_DatapathPausibleClk__dataFlop_reg_3___scan_d_1), .CLK(l), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataFlop_reg_3___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_3___gate_11 (.A(u_DatapathPausibleClk__dataFlop_reg_3___qn_9), .Y(u_DatapathPausibleClk__dataFlop[3]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_2___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_2___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_2___gate_5 (.A(u_DatapathPausibleClk__dataFlop_reg_2___term_3), .B(dataIn[2]), .Y(u_DatapathPausibleClk__dataFlop_reg_2___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_2___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_2___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_2___gate_8 (.A(u_DatapathPausibleClk__dataFlop_reg_2___term_2), .B(u_DatapathPausibleClk__dataFlop_reg_2___term_6), .Y(u_DatapathPausibleClk__dataFlop_reg_2___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_2___ff_10 (.D(u_DatapathPausibleClk__dataFlop_reg_2___scan_d_1), .CLK(l), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataFlop_reg_2___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_2___gate_11 (.A(u_DatapathPausibleClk__dataFlop_reg_2___qn_9), .Y(u_DatapathPausibleClk__dataFlop[2]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_1___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_1___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_1___gate_5 (.A(u_DatapathPausibleClk__dataFlop_reg_1___term_3), .B(dataIn[1]), .Y(u_DatapathPausibleClk__dataFlop_reg_1___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_1___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_1___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_1___gate_8 (.A(u_DatapathPausibleClk__dataFlop_reg_1___term_2), .B(u_DatapathPausibleClk__dataFlop_reg_1___term_6), .Y(u_DatapathPausibleClk__dataFlop_reg_1___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_1___ff_10 (.D(u_DatapathPausibleClk__dataFlop_reg_1___scan_d_1), .CLK(l), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataFlop_reg_1___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_1___gate_11 (.A(u_DatapathPausibleClk__dataFlop_reg_1___qn_9), .Y(u_DatapathPausibleClk__dataFlop[1]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_0___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_0___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_0___gate_5 (.A(u_DatapathPausibleClk__dataFlop_reg_0___term_3), .B(dataIn[0]), .Y(u_DatapathPausibleClk__dataFlop_reg_0___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_0___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataFlop_reg_0___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_0___gate_8 (.A(u_DatapathPausibleClk__dataFlop_reg_0___term_2), .B(u_DatapathPausibleClk__dataFlop_reg_0___term_6), .Y(u_DatapathPausibleClk__dataFlop_reg_0___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_0___ff_10 (.D(u_DatapathPausibleClk__dataFlop_reg_0___scan_d_1), .CLK(l), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataFlop_reg_0___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataFlop_reg_0___gate_11 (.A(u_DatapathPausibleClk__dataFlop_reg_0___qn_9), .Y(u_DatapathPausibleClk__dataFlop[0]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_7___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_7___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_7___gate_5 (.A(u_DatapathPausibleClk__dataOut_reg_7___term_3), .B(u_DatapathPausibleClk__dataFlop[7]), .Y(u_DatapathPausibleClk__dataOut_reg_7___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_7___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_7___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_7___gate_8 (.A(u_DatapathPausibleClk__dataOut_reg_7___term_2), .B(u_DatapathPausibleClk__dataOut_reg_7___term_6), .Y(u_DatapathPausibleClk__dataOut_reg_7___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_7___ff_10 (.D(u_DatapathPausibleClk__dataOut_reg_7___scan_d_1), .CLK(clk), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataOut_reg_7___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_7___gate_11 (.A(u_DatapathPausibleClk__dataOut_reg_7___qn_9), .Y(u_DatapathPausibleClk__n2));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_6___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_6___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_6___gate_5 (.A(u_DatapathPausibleClk__dataOut_reg_6___term_3), .B(u_DatapathPausibleClk__dataFlop[6]), .Y(u_DatapathPausibleClk__dataOut_reg_6___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_6___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_6___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_6___gate_8 (.A(u_DatapathPausibleClk__dataOut_reg_6___term_2), .B(u_DatapathPausibleClk__dataOut_reg_6___term_6), .Y(u_DatapathPausibleClk__dataOut_reg_6___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_6___ff_10 (.D(u_DatapathPausibleClk__dataOut_reg_6___scan_d_1), .CLK(clk), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataOut_reg_6___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_6___gate_11 (.A(u_DatapathPausibleClk__dataOut_reg_6___qn_9), .Y(u_DatapathPausibleClk__n1));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_5___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_5___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_5___gate_5 (.A(u_DatapathPausibleClk__dataOut_reg_5___term_3), .B(u_DatapathPausibleClk__dataFlop[5]), .Y(u_DatapathPausibleClk__dataOut_reg_5___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_5___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_5___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_5___gate_8 (.A(u_DatapathPausibleClk__dataOut_reg_5___term_2), .B(u_DatapathPausibleClk__dataOut_reg_5___term_6), .Y(u_DatapathPausibleClk__dataOut_reg_5___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_5___ff_10 (.D(u_DatapathPausibleClk__dataOut_reg_5___scan_d_1), .CLK(clk), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataOut_reg_5___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_5___gate_11 (.A(u_DatapathPausibleClk__dataOut_reg_5___qn_9), .Y(u_DatapathPausibleClk__n3));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_4___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_4___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_4___gate_5 (.A(u_DatapathPausibleClk__dataOut_reg_4___term_3), .B(u_DatapathPausibleClk__dataFlop[4]), .Y(u_DatapathPausibleClk__dataOut_reg_4___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_4___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_4___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_4___gate_8 (.A(u_DatapathPausibleClk__dataOut_reg_4___term_2), .B(u_DatapathPausibleClk__dataOut_reg_4___term_6), .Y(u_DatapathPausibleClk__dataOut_reg_4___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_4___ff_10 (.D(u_DatapathPausibleClk__dataOut_reg_4___scan_d_1), .CLK(clk), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataOut_reg_4___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_4___gate_11 (.A(u_DatapathPausibleClk__dataOut_reg_4___qn_9), .Y(u_DatapathPausibleClk__n5));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_3___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_3___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_3___gate_5 (.A(u_DatapathPausibleClk__dataOut_reg_3___term_3), .B(u_DatapathPausibleClk__dataFlop[3]), .Y(u_DatapathPausibleClk__dataOut_reg_3___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_3___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_3___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_3___gate_8 (.A(u_DatapathPausibleClk__dataOut_reg_3___term_2), .B(u_DatapathPausibleClk__dataOut_reg_3___term_6), .Y(u_DatapathPausibleClk__dataOut_reg_3___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_3___ff_10 (.D(u_DatapathPausibleClk__dataOut_reg_3___scan_d_1), .CLK(clk), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataOut_reg_3___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_3___gate_11 (.A(u_DatapathPausibleClk__dataOut_reg_3___qn_9), .Y(u_DatapathPausibleClk__n7));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_2___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_2___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_2___gate_5 (.A(u_DatapathPausibleClk__dataOut_reg_2___term_3), .B(u_DatapathPausibleClk__dataFlop[2]), .Y(u_DatapathPausibleClk__dataOut_reg_2___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_2___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_2___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_2___gate_8 (.A(u_DatapathPausibleClk__dataOut_reg_2___term_2), .B(u_DatapathPausibleClk__dataOut_reg_2___term_6), .Y(u_DatapathPausibleClk__dataOut_reg_2___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_2___ff_10 (.D(u_DatapathPausibleClk__dataOut_reg_2___scan_d_1), .CLK(clk), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataOut_reg_2___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_2___gate_11 (.A(u_DatapathPausibleClk__dataOut_reg_2___qn_9), .Y(u_DatapathPausibleClk__n9));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_1___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_1___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_1___gate_5 (.A(u_DatapathPausibleClk__dataOut_reg_1___term_3), .B(u_DatapathPausibleClk__dataFlop[1]), .Y(u_DatapathPausibleClk__dataOut_reg_1___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_1___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_1___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_1___gate_8 (.A(u_DatapathPausibleClk__dataOut_reg_1___term_2), .B(u_DatapathPausibleClk__dataOut_reg_1___term_6), .Y(u_DatapathPausibleClk__dataOut_reg_1___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_1___ff_10 (.D(u_DatapathPausibleClk__dataOut_reg_1___scan_d_1), .CLK(clk), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataOut_reg_1___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_1___gate_11 (.A(u_DatapathPausibleClk__dataOut_reg_1___qn_9), .Y(u_DatapathPausibleClk__n11));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_0___gate_4 (.A(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_0___term_3));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_0___gate_5 (.A(u_DatapathPausibleClk__dataOut_reg_0___term_3), .B(u_DatapathPausibleClk__dataFlop[0]), .Y(u_DatapathPausibleClk__dataOut_reg_0___term_2));
    AND2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_0___gate_7 (.A(u_DatapathPausibleClk__n32), .B(u_DatapathPausibleClk__n32), .Y(u_DatapathPausibleClk__dataOut_reg_0___term_6));
    OR2x2_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_0___gate_8 (.A(u_DatapathPausibleClk__dataOut_reg_0___term_2), .B(u_DatapathPausibleClk__dataOut_reg_0___term_6), .Y(u_DatapathPausibleClk__dataOut_reg_0___scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_0___ff_10 (.D(u_DatapathPausibleClk__dataOut_reg_0___scan_d_1), .CLK(clk), .SETN(u_DatapathPausibleClk__pdk_tie_high), .RESETN(u_DatapathPausibleClk__n31), .QN(u_DatapathPausibleClk__dataOut_reg_0___qn_9));
    INVx1_ASAP7_75t_R u_DatapathPausibleClk__dataOut_reg_0___gate_11 (.A(u_DatapathPausibleClk__dataOut_reg_0___qn_9), .Y(u_DatapathPausibleClk__n13));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__U3__gate_1 (.A(u_DatapathPausibleClk__n3), .Y(dataOut[5]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__U4__gate_1 (.A(u_DatapathPausibleClk__n5), .Y(dataOut[4]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__U5__gate_1 (.A(u_DatapathPausibleClk__n7), .Y(dataOut[3]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__U6__gate_1 (.A(u_DatapathPausibleClk__n9), .Y(dataOut[2]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__U7__gate_1 (.A(u_DatapathPausibleClk__n11), .Y(dataOut[1]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__U8__gate_1 (.A(u_DatapathPausibleClk__n13), .Y(dataOut[0]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__U9__gate_1 (.A(u_DatapathPausibleClk__n1), .Y(dataOut[6]));

    INVx1_ASAP7_75t_R u_DatapathPausibleClk__U10__gate_1 (.A(u_DatapathPausibleClk__n2), .Y(dataOut[7]));

    TIEHIx1_ASAP7_75t_R u_DatapathPausibleClk__tie_high (.H(u_DatapathPausibleClk__pdk_tie_high));
    TIELOx1_ASAP7_75t_R u_DatapathPausibleClk__tie_low (.L(u_DatapathPausibleClk__pdk_tie_low));



    wire u_ControllerPausibleClk__reqFlop_reg__scan_d_1, u_ControllerPausibleClk__reqFlop_reg__term_2, u_ControllerPausibleClk__reqFlop_reg__term_3, u_ControllerPausibleClk__reqFlop_reg__term_6, u_ControllerPausibleClk__reqFlop_reg__qn_9, u_ControllerPausibleClk__ack_reg__scan_d_1;
    wire u_ControllerPausibleClk__ack_reg__term_2, u_ControllerPausibleClk__ack_reg__term_3, u_ControllerPausibleClk__ack_reg__term_6, u_ControllerPausibleClk__ack_reg__qn_9, u_ControllerPausibleClk__pdk_tie_high, u_ControllerPausibleClk__pdk_tie_low;

  
  
  wire   u_ControllerPausibleClk__reqFlop, u_ControllerPausibleClk__r1, u_ControllerPausibleClk__g2, u_ControllerPausibleClk__n_0_net_, u_ControllerPausibleClk__n_1_net_, u_ControllerPausibleClk__n_2_net_, u_ControllerPausibleClk__clkDelayed, u_ControllerPausibleClk__clkDelayedprime, u_ControllerPausibleClk__n1, u_ControllerPausibleClk__n3, u_ControllerPausibleClk__n5
;

  assign u_ControllerPausibleClk__n1 = u_ControllerPausibleClk__pdk_tie_high;
  assign u_ControllerPausibleClk__n3 = u_ControllerPausibleClk__pdk_tie_low;

    INVx1_ASAP7_75t_R u_ControllerPausibleClk__reqFlop_reg__gate_4 (.A(u_ControllerPausibleClk__n3), .Y(u_ControllerPausibleClk__reqFlop_reg__term_3));
    AND2x2_ASAP7_75t_R u_ControllerPausibleClk__reqFlop_reg__gate_5 (.A(u_ControllerPausibleClk__reqFlop_reg__term_3), .B(req), .Y(u_ControllerPausibleClk__reqFlop_reg__term_2));
    AND2x2_ASAP7_75t_R u_ControllerPausibleClk__reqFlop_reg__gate_7 (.A(u_ControllerPausibleClk__n3), .B(u_ControllerPausibleClk__n3), .Y(u_ControllerPausibleClk__reqFlop_reg__term_6));
    OR2x2_ASAP7_75t_R u_ControllerPausibleClk__reqFlop_reg__gate_8 (.A(u_ControllerPausibleClk__reqFlop_reg__term_2), .B(u_ControllerPausibleClk__reqFlop_reg__term_6), .Y(u_ControllerPausibleClk__reqFlop_reg__scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_ControllerPausibleClk__reqFlop_reg__ff_10 (.D(u_ControllerPausibleClk__reqFlop_reg__scan_d_1), .CLK(l), .SETN(u_ControllerPausibleClk__pdk_tie_high), .RESETN(u_ControllerPausibleClk__n_2_net_), .QN(u_ControllerPausibleClk__reqFlop_reg__qn_9));
    INVx1_ASAP7_75t_R u_ControllerPausibleClk__reqFlop_reg__gate_11 (.A(u_ControllerPausibleClk__reqFlop_reg__qn_9), .Y(u_ControllerPausibleClk__reqFlop));

    INVx1_ASAP7_75t_R u_ControllerPausibleClk__ack_reg__gate_4 (.A(u_ControllerPausibleClk__n3), .Y(u_ControllerPausibleClk__ack_reg__term_3));
    AND2x2_ASAP7_75t_R u_ControllerPausibleClk__ack_reg__gate_5 (.A(u_ControllerPausibleClk__ack_reg__term_3), .B(u_ControllerPausibleClk__reqFlop), .Y(u_ControllerPausibleClk__ack_reg__term_2));
    AND2x2_ASAP7_75t_R u_ControllerPausibleClk__ack_reg__gate_7 (.A(u_ControllerPausibleClk__n3), .B(u_ControllerPausibleClk__n3), .Y(u_ControllerPausibleClk__ack_reg__term_6));
    OR2x2_ASAP7_75t_R u_ControllerPausibleClk__ack_reg__gate_8 (.A(u_ControllerPausibleClk__ack_reg__term_2), .B(u_ControllerPausibleClk__ack_reg__term_6), .Y(u_ControllerPausibleClk__ack_reg__scan_d_1));
    DFFASRHQNx1_ASAP7_75t_R u_ControllerPausibleClk__ack_reg__ff_10 (.D(u_ControllerPausibleClk__ack_reg__scan_d_1), .CLK(clk), .SETN(u_ControllerPausibleClk__pdk_tie_high), .RESETN(u_ControllerPausibleClk__n1), .QN(u_ControllerPausibleClk__ack_reg__qn_9));
    INVx1_ASAP7_75t_R u_ControllerPausibleClk__ack_reg__gate_11 (.A(u_ControllerPausibleClk__ack_reg__qn_9), .Y(u_ControllerPausibleClk__n5));

    NAND2xp33_ASAP7_75t_R u_ControllerPausibleClk__u_HinstMutex_u_SizeOnlyHinstMutex1__gate_1 (.A(u_ControllerPausibleClk__r1), .B(u_ControllerPausibleClk__n_0_net_), .Y(l));

    NAND2xp33_ASAP7_75t_R u_ControllerPausibleClk__u_HinstMutex_u_SizeOnlyHinstMutex2__gate_1 (.A(u_ControllerPausibleClk__r1), .B(u_ControllerPausibleClk__n_0_net_), .Y(u_ControllerPausibleClk__g2));

    NAND3xp33_ASAP7_75t_R u_ControllerPausibleClk__u_HinstMullerC_u_SizeOnlyHinstMullerC__gate_1 (.A(u_ControllerPausibleClk__g2), .B(u_ControllerPausibleClk__n_1_net_), .C(u_ControllerPausibleClk__n_2_net_), .Y(clk));

    INVx1_ASAP7_75t_R u_ControllerPausibleClk__u_HinstBuff_u_SizeOnlyBuff__gate_1 (.A(clk), .Y(u_ControllerPausibleClk__clkDelayedprime));

    INVx1_ASAP7_75t_R u_ControllerPausibleClk__u_HinstBuff_u_SizeOnlyBuff2__gate_1 (.A(u_ControllerPausibleClk__clkDelayedprime), .Y(u_ControllerPausibleClk__clkDelayed));

    INVx1_ASAP7_75t_R u_ControllerPausibleClk__U3__gate_1 (.A(u_ControllerPausibleClk__n5), .Y(ack));

    INVx1_ASAP7_75t_R u_ControllerPausibleClk__U6__gate_1 (.A(arst), .Y(u_ControllerPausibleClk__n_2_net_));

    INVx1_ASAP7_75t_R u_ControllerPausibleClk__U7__gate_1 (.A(u_ControllerPausibleClk__clkDelayed), .Y(u_ControllerPausibleClk__n_1_net_));

    INVx1_ASAP7_75t_R u_ControllerPausibleClk__U8__gate_1 (.A(clk), .Y(u_ControllerPausibleClk__n_0_net_));

    XNOR2xp5_ASAP7_75t_R u_ControllerPausibleClk__U9__gate_1 (.A(req), .B(u_ControllerPausibleClk__reqFlop), .Y(u_ControllerPausibleClk__r1));

    TIEHIx1_ASAP7_75t_R u_ControllerPausibleClk__tie_high (.H(u_ControllerPausibleClk__pdk_tie_high));
    TIELOx1_ASAP7_75t_R u_ControllerPausibleClk__tie_low (.L(u_ControllerPausibleClk__pdk_tie_low));


   assign n2 = pdk_tie_high;

    TIEHIx1_ASAP7_75t_R tie_high (.H(pdk_tie_high));
endmodule

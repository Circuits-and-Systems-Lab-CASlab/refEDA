// Single Click stage with scan data and clock selection.
module click (Rin, Ain, Rout, Aout, test_se, test_si, test_clk);
    input Rin, Aout, test_se, test_si, test_clk;
    output Ain, Rout;
    wire req, ack, fire, q, qn, scan_off, clk, d;
    wire func_clk_n, scan_clk_n, func_d_n, scan_d_n;

    assign Rout = q;
    assign Ain = Rout;

    XOR2x1_ASAP7_75t_R request (.A(Rin), .B(Ain), .Y(req));
    XNOR2x1_ASAP7_75t_R acknowledge (.A(Aout), .B(Rout), .Y(ack));
    AND2x2_ASAP7_75t_R fire_gate (.A(req), .B(ack), .Y(fire));
    INVx1_ASAP7_75t_R invert_select (.A(test_se), .Y(scan_off));

    // test_se selects both the scan clock and scan data.
    NAND2x1_ASAP7_75t_R func_clk (.A(fire), .B(scan_off), .Y(func_clk_n));
    NAND2x1_ASAP7_75t_R scan_clk (.A(test_clk), .B(test_se), .Y(scan_clk_n));
    NAND2x1_ASAP7_75t_R clock_select (.A(func_clk_n), .B(scan_clk_n), .Y(clk));

    NAND2x1_ASAP7_75t_R func_data (.A(qn), .B(scan_off), .Y(func_d_n));
    NAND2x1_ASAP7_75t_R scan_data (.A(test_si), .B(test_se), .Y(scan_d_n));
    NAND2x1_ASAP7_75t_R data_select (.A(func_d_n), .B(scan_d_n), .Y(d));

    DFFHQx4_ASAP7_75t_R ff (.D(d), .CLK(clk), .Q(q));
    INVx1_ASAP7_75t_R invq (.A(q), .Y(qn));
endmodule

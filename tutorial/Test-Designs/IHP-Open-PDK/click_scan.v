// SG13G2 mapping of the tutorial's click scan circuit.
module click (Rin, Ain, Rout, Aout, test_se, test_si, test_clk);
    wire pdk_tie_high;
    input Rin, Aout, test_se, test_si, test_clk;
    output Ain, Rout;
    wire req, ack, fire, q, qn, scan_off, clk, d;
    wire func_clk_n, scan_clk_n, func_d_n, scan_d_n;

    assign Rout = q;
    assign Ain = Rout;

    sg13g2_xor2_1 request (.A(Rin), .B(Ain), .X(req));
    sg13g2_xnor2_1 acknowledge (.A(Aout), .B(Rout), .Y(ack));
    sg13g2_and2_1 fire_gate (.A(req), .B(ack), .X(fire));
    sg13g2_inv_1 invert_select (.A(test_se), .Y(scan_off));

    sg13g2_nand2_1 func_clk (.A(fire), .B(scan_off), .Y(func_clk_n));
    sg13g2_nand2_1 scan_clk (.A(test_clk), .B(test_se), .Y(scan_clk_n));
    sg13g2_nand2_1 clock_select (.A(func_clk_n), .B(scan_clk_n), .Y(clk));

    sg13g2_nand2_1 func_data (.A(qn), .B(scan_off), .Y(func_d_n));
    sg13g2_nand2_1 scan_data (.A(test_si), .B(test_se), .Y(scan_d_n));
    sg13g2_nand2_1 data_select (.A(func_d_n), .B(scan_d_n), .Y(d));

    sg13g2_dfrbpq_1 ff (.D(d), .CLK(clk), .Q(q), .RESET_B(pdk_tie_high));
    sg13g2_inv_1 invq (.A(q), .Y(qn));
    sg13g2_tiehi tie_high (.L_HI(pdk_tie_high));
endmodule

module simple (inp1, inp2, ispd_clk, out);

		input inp1;
		input inp2;
		input ispd_clk;
		output out;

		wire sngl_w_U1_L, sngl_w_f1_QN;




		SDFHx4_ASAP7_75t_R f1 ( .CLK(ispd_clk), .D(sngl_w_U1_L), .QN(sngl_w_f1_QN), .SE(inp2), 
				.SI(inp1) );
		TIELOx1_ASAP7_75t_R U1 ( .L(sngl_w_U1_L) );
		CKINVDCx16_ASAP7_75t_R U3 ( .A(sngl_w_f1_QN), .Y(out) );

endmodule


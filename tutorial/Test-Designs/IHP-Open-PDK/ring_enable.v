// SG13G2 mapping of the tutorial's ring enable circuit.
module ring_en (EN);
    input EN;
    wire stage1, stage2, feedback;

    sg13g2_nand2_1 nand_en (.A(EN), .B(feedback), .Y(stage1));
    sg13g2_inv_1 inv1 (.A(stage1), .Y(stage2));
    sg13g2_inv_1 inv2 (.A(stage2), .Y(feedback));
endmodule

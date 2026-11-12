// Enabled three-inversion ring, mapped to ASAP7.
module ring_en (EN);
    input EN;
    wire stage1, stage2, feedback;

    NAND2x1_ASAP7_75t_R nand_en (.A(EN), .B(feedback), .Y(stage1));
    INVx1_ASAP7_75t_R inv1 (.A(stage1), .Y(stage2));
    INVx1_ASAP7_75t_R inv2 (.A(stage2), .Y(feedback));
endmodule

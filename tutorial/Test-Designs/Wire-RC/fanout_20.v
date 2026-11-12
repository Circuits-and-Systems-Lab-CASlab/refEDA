// Auto-generated: INVx1_ASAP7_75t_R driving 20 BUFx2_ASAP7_75t_R instances
module fanout_20 (drv_in, driver_out, buf_out_0, buf_out_1, buf_out_2, buf_out_3, buf_out_4, buf_out_5, buf_out_6, buf_out_7, buf_out_8, buf_out_9, buf_out_10, buf_out_11, buf_out_12, buf_out_13, buf_out_14, buf_out_15, buf_out_16, buf_out_17, buf_out_18, buf_out_19);
    input drv_in;
    output driver_out, buf_out_0, buf_out_1, buf_out_2, buf_out_3, buf_out_4, buf_out_5, buf_out_6, buf_out_7, buf_out_8, buf_out_9, buf_out_10, buf_out_11, buf_out_12, buf_out_13, buf_out_14, buf_out_15, buf_out_16, buf_out_17, buf_out_18, buf_out_19;

    // Driver cell
    INVx1_ASAP7_75t_R u_driver (
        .A  (drv_in),
        .Y (driver_out)
    );

    // Fanout load cells (x20)
    BUFx2_ASAP7_75t_R u_buf_0 (
        .A  (driver_out),
        .Y (buf_out_0)
    );
    BUFx2_ASAP7_75t_R u_buf_1 (
        .A  (driver_out),
        .Y (buf_out_1)
    );
    BUFx2_ASAP7_75t_R u_buf_2 (
        .A  (driver_out),
        .Y (buf_out_2)
    );
    BUFx2_ASAP7_75t_R u_buf_3 (
        .A  (driver_out),
        .Y (buf_out_3)
    );
    BUFx2_ASAP7_75t_R u_buf_4 (
        .A  (driver_out),
        .Y (buf_out_4)
    );
    BUFx2_ASAP7_75t_R u_buf_5 (
        .A  (driver_out),
        .Y (buf_out_5)
    );
    BUFx2_ASAP7_75t_R u_buf_6 (
        .A  (driver_out),
        .Y (buf_out_6)
    );
    BUFx2_ASAP7_75t_R u_buf_7 (
        .A  (driver_out),
        .Y (buf_out_7)
    );
    BUFx2_ASAP7_75t_R u_buf_8 (
        .A  (driver_out),
        .Y (buf_out_8)
    );
    BUFx2_ASAP7_75t_R u_buf_9 (
        .A  (driver_out),
        .Y (buf_out_9)
    );
    BUFx2_ASAP7_75t_R u_buf_10 (
        .A  (driver_out),
        .Y (buf_out_10)
    );
    BUFx2_ASAP7_75t_R u_buf_11 (
        .A  (driver_out),
        .Y (buf_out_11)
    );
    BUFx2_ASAP7_75t_R u_buf_12 (
        .A  (driver_out),
        .Y (buf_out_12)
    );
    BUFx2_ASAP7_75t_R u_buf_13 (
        .A  (driver_out),
        .Y (buf_out_13)
    );
    BUFx2_ASAP7_75t_R u_buf_14 (
        .A  (driver_out),
        .Y (buf_out_14)
    );
    BUFx2_ASAP7_75t_R u_buf_15 (
        .A  (driver_out),
        .Y (buf_out_15)
    );
    BUFx2_ASAP7_75t_R u_buf_16 (
        .A  (driver_out),
        .Y (buf_out_16)
    );
    BUFx2_ASAP7_75t_R u_buf_17 (
        .A  (driver_out),
        .Y (buf_out_17)
    );
    BUFx2_ASAP7_75t_R u_buf_18 (
        .A  (driver_out),
        .Y (buf_out_18)
    );
    BUFx2_ASAP7_75t_R u_buf_19 (
        .A  (driver_out),
        .Y (buf_out_19)
    );

endmodule

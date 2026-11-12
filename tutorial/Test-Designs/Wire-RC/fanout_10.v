// Auto-generated: INVx1_ASAP7_75t_R driving 10 BUFx2_ASAP7_75t_R instances
module fanout_10 (drv_in, driver_out, buf_out_0, buf_out_1, buf_out_2, buf_out_3, buf_out_4, buf_out_5, buf_out_6, buf_out_7, buf_out_8, buf_out_9);
    input drv_in;
    output driver_out, buf_out_0, buf_out_1, buf_out_2, buf_out_3, buf_out_4, buf_out_5, buf_out_6, buf_out_7, buf_out_8, buf_out_9;

    // Driver cell
    INVx1_ASAP7_75t_R u_driver (
        .A  (drv_in),
        .Y (driver_out)
    );

    // Fanout load cells (x10)
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

endmodule

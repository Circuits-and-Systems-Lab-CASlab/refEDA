// Auto-generated: INVx1_ASAP7_75t_R driving 50 BUFx2_ASAP7_75t_R instances
module fanout_50 (drv_in, driver_out, buf_out_0, buf_out_1, buf_out_2, buf_out_3, buf_out_4, buf_out_5, buf_out_6, buf_out_7, buf_out_8, buf_out_9, buf_out_10, buf_out_11, buf_out_12, buf_out_13, buf_out_14, buf_out_15, buf_out_16, buf_out_17, buf_out_18, buf_out_19, buf_out_20, buf_out_21, buf_out_22, buf_out_23, buf_out_24, buf_out_25, buf_out_26, buf_out_27, buf_out_28, buf_out_29, buf_out_30, buf_out_31, buf_out_32, buf_out_33, buf_out_34, buf_out_35, buf_out_36, buf_out_37, buf_out_38, buf_out_39, buf_out_40, buf_out_41, buf_out_42, buf_out_43, buf_out_44, buf_out_45, buf_out_46, buf_out_47, buf_out_48, buf_out_49);
    input drv_in;
    output driver_out, buf_out_0, buf_out_1, buf_out_2, buf_out_3, buf_out_4, buf_out_5, buf_out_6, buf_out_7, buf_out_8, buf_out_9, buf_out_10, buf_out_11, buf_out_12, buf_out_13, buf_out_14, buf_out_15, buf_out_16, buf_out_17, buf_out_18, buf_out_19, buf_out_20, buf_out_21, buf_out_22, buf_out_23, buf_out_24, buf_out_25, buf_out_26, buf_out_27, buf_out_28, buf_out_29, buf_out_30, buf_out_31, buf_out_32, buf_out_33, buf_out_34, buf_out_35, buf_out_36, buf_out_37, buf_out_38, buf_out_39, buf_out_40, buf_out_41, buf_out_42, buf_out_43, buf_out_44, buf_out_45, buf_out_46, buf_out_47, buf_out_48, buf_out_49;

    // Driver cell
    INVx1_ASAP7_75t_R u_driver (
        .A  (drv_in),
        .Y (driver_out)
    );

    // Fanout load cells (x50)
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
    BUFx2_ASAP7_75t_R u_buf_20 (
        .A  (driver_out),
        .Y (buf_out_20)
    );
    BUFx2_ASAP7_75t_R u_buf_21 (
        .A  (driver_out),
        .Y (buf_out_21)
    );
    BUFx2_ASAP7_75t_R u_buf_22 (
        .A  (driver_out),
        .Y (buf_out_22)
    );
    BUFx2_ASAP7_75t_R u_buf_23 (
        .A  (driver_out),
        .Y (buf_out_23)
    );
    BUFx2_ASAP7_75t_R u_buf_24 (
        .A  (driver_out),
        .Y (buf_out_24)
    );
    BUFx2_ASAP7_75t_R u_buf_25 (
        .A  (driver_out),
        .Y (buf_out_25)
    );
    BUFx2_ASAP7_75t_R u_buf_26 (
        .A  (driver_out),
        .Y (buf_out_26)
    );
    BUFx2_ASAP7_75t_R u_buf_27 (
        .A  (driver_out),
        .Y (buf_out_27)
    );
    BUFx2_ASAP7_75t_R u_buf_28 (
        .A  (driver_out),
        .Y (buf_out_28)
    );
    BUFx2_ASAP7_75t_R u_buf_29 (
        .A  (driver_out),
        .Y (buf_out_29)
    );
    BUFx2_ASAP7_75t_R u_buf_30 (
        .A  (driver_out),
        .Y (buf_out_30)
    );
    BUFx2_ASAP7_75t_R u_buf_31 (
        .A  (driver_out),
        .Y (buf_out_31)
    );
    BUFx2_ASAP7_75t_R u_buf_32 (
        .A  (driver_out),
        .Y (buf_out_32)
    );
    BUFx2_ASAP7_75t_R u_buf_33 (
        .A  (driver_out),
        .Y (buf_out_33)
    );
    BUFx2_ASAP7_75t_R u_buf_34 (
        .A  (driver_out),
        .Y (buf_out_34)
    );
    BUFx2_ASAP7_75t_R u_buf_35 (
        .A  (driver_out),
        .Y (buf_out_35)
    );
    BUFx2_ASAP7_75t_R u_buf_36 (
        .A  (driver_out),
        .Y (buf_out_36)
    );
    BUFx2_ASAP7_75t_R u_buf_37 (
        .A  (driver_out),
        .Y (buf_out_37)
    );
    BUFx2_ASAP7_75t_R u_buf_38 (
        .A  (driver_out),
        .Y (buf_out_38)
    );
    BUFx2_ASAP7_75t_R u_buf_39 (
        .A  (driver_out),
        .Y (buf_out_39)
    );
    BUFx2_ASAP7_75t_R u_buf_40 (
        .A  (driver_out),
        .Y (buf_out_40)
    );
    BUFx2_ASAP7_75t_R u_buf_41 (
        .A  (driver_out),
        .Y (buf_out_41)
    );
    BUFx2_ASAP7_75t_R u_buf_42 (
        .A  (driver_out),
        .Y (buf_out_42)
    );
    BUFx2_ASAP7_75t_R u_buf_43 (
        .A  (driver_out),
        .Y (buf_out_43)
    );
    BUFx2_ASAP7_75t_R u_buf_44 (
        .A  (driver_out),
        .Y (buf_out_44)
    );
    BUFx2_ASAP7_75t_R u_buf_45 (
        .A  (driver_out),
        .Y (buf_out_45)
    );
    BUFx2_ASAP7_75t_R u_buf_46 (
        .A  (driver_out),
        .Y (buf_out_46)
    );
    BUFx2_ASAP7_75t_R u_buf_47 (
        .A  (driver_out),
        .Y (buf_out_47)
    );
    BUFx2_ASAP7_75t_R u_buf_48 (
        .A  (driver_out),
        .Y (buf_out_48)
    );
    BUFx2_ASAP7_75t_R u_buf_49 (
        .A  (driver_out),
        .Y (buf_out_49)
    );

endmodule

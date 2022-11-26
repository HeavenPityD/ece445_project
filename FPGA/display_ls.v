// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="display_ls_display_ls,hls_ip_2022_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35ti-csg324-1L,HLS_INPUT_CLOCK=1000000.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.205457,HLS_SYN_LAT=133,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=39,HLS_SYN_LUT=278,HLS_VERSION=2022_2}" *)

module display_ls (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        SDA,
        SDA_ap_vld,
        SCL,
        SCL_ap_vld
);

parameter    ap_ST_fsm_state1 = 24'd1;
parameter    ap_ST_fsm_state2 = 24'd2;
parameter    ap_ST_fsm_state3 = 24'd4;
parameter    ap_ST_fsm_state4 = 24'd8;
parameter    ap_ST_fsm_state5 = 24'd16;
parameter    ap_ST_fsm_state6 = 24'd32;
parameter    ap_ST_fsm_state7 = 24'd64;
parameter    ap_ST_fsm_state8 = 24'd128;
parameter    ap_ST_fsm_state9 = 24'd256;
parameter    ap_ST_fsm_state10 = 24'd512;
parameter    ap_ST_fsm_state11 = 24'd1024;
parameter    ap_ST_fsm_state12 = 24'd2048;
parameter    ap_ST_fsm_state13 = 24'd4096;
parameter    ap_ST_fsm_state14 = 24'd8192;
parameter    ap_ST_fsm_state15 = 24'd16384;
parameter    ap_ST_fsm_state16 = 24'd32768;
parameter    ap_ST_fsm_state17 = 24'd65536;
parameter    ap_ST_fsm_state18 = 24'd131072;
parameter    ap_ST_fsm_state19 = 24'd262144;
parameter    ap_ST_fsm_state20 = 24'd524288;
parameter    ap_ST_fsm_state21 = 24'd1048576;
parameter    ap_ST_fsm_state22 = 24'd2097152;
parameter    ap_ST_fsm_state23 = 24'd4194304;
parameter    ap_ST_fsm_state24 = 24'd8388608;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] SDA;
output   SDA_ap_vld;
output  [7:0] SCL;
output   SCL_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] SDA;
reg SDA_ap_vld;
reg[7:0] SCL;
reg SCL_ap_vld;

(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_I2C_out_fu_66_ap_start;
wire    grp_I2C_out_fu_66_ap_done;
wire    grp_I2C_out_fu_66_ap_idle;
wire    grp_I2C_out_fu_66_ap_ready;
reg   [6:0] grp_I2C_out_fu_66_j;
wire   [7:0] grp_I2C_out_fu_66_SDA;
wire    grp_I2C_out_fu_66_SDA_ap_vld;
reg    grp_I2C_out_fu_66_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
reg   [23:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
reg    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
reg    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 24'd1;
#0 grp_I2C_out_fu_66_ap_start_reg = 1'b0;
end

display_ls_I2C_out grp_I2C_out_fu_66(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_I2C_out_fu_66_ap_start),
    .ap_done(grp_I2C_out_fu_66_ap_done),
    .ap_idle(grp_I2C_out_fu_66_ap_idle),
    .ap_ready(grp_I2C_out_fu_66_ap_ready),
    .j(grp_I2C_out_fu_66_j),
    .SDA(grp_I2C_out_fu_66_SDA),
    .SDA_ap_vld(grp_I2C_out_fu_66_SDA_ap_vld)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_I2C_out_fu_66_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16))) begin
            grp_I2C_out_fu_66_ap_start_reg <= 1'b1;
        end else if ((grp_I2C_out_fu_66_ap_ready == 1'b1)) begin
            grp_I2C_out_fu_66_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        SCL = 8'd1;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | ((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23)) | ((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7)) | ((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        SCL = 8'd0;
    end else begin
        SCL = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | ((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23)) | ((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7)) | ((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        SCL_ap_vld = 1'b1;
    end else begin
        SCL_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        SDA = 8'd1;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        SDA = 8'd0;
    end else if ((((grp_I2C_out_fu_66_SDA_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state23)) | ((grp_I2C_out_fu_66_SDA_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_I2C_out_fu_66_SDA_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state19)) | ((grp_I2C_out_fu_66_SDA_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_I2C_out_fu_66_SDA_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state15)) | ((grp_I2C_out_fu_66_SDA_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13)) | ((grp_I2C_out_fu_66_SDA_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((grp_I2C_out_fu_66_SDA_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state9)) | ((grp_I2C_out_fu_66_SDA_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state7)) | ((grp_I2C_out_fu_66_SDA_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((grp_I2C_out_fu_66_SDA_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        SDA = grp_I2C_out_fu_66_SDA;
    end else begin
        SDA = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        SDA_ap_vld = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        SDA_ap_vld = grp_I2C_out_fu_66_SDA_ap_vld;
    end else begin
        SDA_ap_vld = 1'b0;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

always @ (*) begin
    if ((grp_I2C_out_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end

assign ap_ST_fsm_state12_blk = 1'b0;

always @ (*) begin
    if ((grp_I2C_out_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end

assign ap_ST_fsm_state14_blk = 1'b0;

always @ (*) begin
    if ((grp_I2C_out_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end

assign ap_ST_fsm_state16_blk = 1'b0;

always @ (*) begin
    if ((grp_I2C_out_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end

assign ap_ST_fsm_state18_blk = 1'b0;

always @ (*) begin
    if ((grp_I2C_out_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state19_blk = 1'b1;
    end else begin
        ap_ST_fsm_state19_blk = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state20_blk = 1'b0;

always @ (*) begin
    if ((grp_I2C_out_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end

assign ap_ST_fsm_state22_blk = 1'b0;

always @ (*) begin
    if ((grp_I2C_out_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end

assign ap_ST_fsm_state24_blk = 1'b0;

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_I2C_out_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_I2C_out_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if ((grp_I2C_out_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((grp_I2C_out_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_I2C_out_fu_66_j = 7'd6;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_I2C_out_fu_66_j = 7'd1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_I2C_out_fu_66_j = 7'd12;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_I2C_out_fu_66_j = 7'd109;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_I2C_out_fu_66_j = 7'd94;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_I2C_out_fu_66_j = 7'd20;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_I2C_out_fu_66_j = 7'd57;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_I2C_out_fu_66_j = 7'd56;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_I2C_out_fu_66_j = 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_I2C_out_fu_66_j = 7'd120;
    end else begin
        grp_I2C_out_fu_66_j = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            if (((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((grp_I2C_out_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_I2C_out_fu_66_ap_start = grp_I2C_out_fu_66_ap_start_reg;

endmodule //display_ls
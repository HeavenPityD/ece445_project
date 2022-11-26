//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Nov 24 15:36:17 2022
//Host        : Richdesk running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (SCL,
    SDA,
    clk_100MHz,
    reset,
    reset_rtl_0,
    start);
  output SCL;
  output SDA;
  input clk_100MHz;
  input reset;
  input reset_rtl_0;
  input start;

  wire SCL;
  wire SDA;
  wire clk_100MHz;
  wire reset;
  wire reset_rtl_0;
  wire start;

  design_1 design_1_i
       (.SCL(SCL),
        .SDA(SDA),
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .reset_rtl_0(reset_rtl_0),
        .start(start));
endmodule

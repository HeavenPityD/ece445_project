// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 24 15:36:54 2022
// Host        : Richdesk running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_display_ls_0_1_stub.v
// Design      : design_1_display_ls_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "display_ls,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(SDA_ap_vld, SCL_ap_vld, ap_clk, ap_rst, ap_start, 
  ap_done, ap_idle, ap_ready, SDA, SCL)
/* synthesis syn_black_box black_box_pad_pin="SDA_ap_vld,SCL_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SDA[7:0],SCL[7:0]" */;
  output SDA_ap_vld;
  output SCL_ap_vld;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [7:0]SDA;
  output [7:0]SCL;
endmodule

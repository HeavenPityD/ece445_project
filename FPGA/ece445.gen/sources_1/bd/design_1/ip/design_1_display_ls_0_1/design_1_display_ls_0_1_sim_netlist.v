// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 24 15:36:54 2022
// Host        : Richdesk running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Richard/OneDrive - University of Illinois -
//               Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.gen/sources_1/bd/design_1/ip/design_1_display_ls_0_1/design_1_display_ls_0_1_sim_netlist.v}
// Design      : design_1_display_ls_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_display_ls_0_1,display_ls,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "display_ls,Vivado 2022.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_display_ls_0_1
   (SDA_ap_vld,
    SCL_ap_vld,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    SDA,
    SCL);
  output SDA_ap_vld;
  output SCL_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 SDA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SDA, LAYERED_METADATA undef" *) output [7:0]SDA;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 SCL DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SCL, LAYERED_METADATA undef" *) output [7:0]SCL;

  wire \<const0> ;
  wire [0:0]\^SCL ;
  wire SCL_ap_vld;
  wire [0:0]\^SDA ;
  wire SDA_ap_vld;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [7:1]NLW_inst_SCL_UNCONNECTED;
  wire [7:1]NLW_inst_SDA_UNCONNECTED;

  assign SCL[7] = \<const0> ;
  assign SCL[6] = \<const0> ;
  assign SCL[5] = \<const0> ;
  assign SCL[4] = \<const0> ;
  assign SCL[3] = \<const0> ;
  assign SCL[2] = \<const0> ;
  assign SCL[1] = \<const0> ;
  assign SCL[0] = \^SCL [0];
  assign SDA[7] = \<const0> ;
  assign SDA[6] = \<const0> ;
  assign SDA[5] = \<const0> ;
  assign SDA[4] = \<const0> ;
  assign SDA[3] = \<const0> ;
  assign SDA[2] = \<const0> ;
  assign SDA[1] = \<const0> ;
  assign SDA[0] = \^SDA [0];
  GND GND
       (.G(\<const0> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "24'b000000000000000000000001" *) 
  (* ap_ST_fsm_state10 = "24'b000000000000001000000000" *) 
  (* ap_ST_fsm_state11 = "24'b000000000000010000000000" *) 
  (* ap_ST_fsm_state12 = "24'b000000000000100000000000" *) 
  (* ap_ST_fsm_state13 = "24'b000000000001000000000000" *) 
  (* ap_ST_fsm_state14 = "24'b000000000010000000000000" *) 
  (* ap_ST_fsm_state15 = "24'b000000000100000000000000" *) 
  (* ap_ST_fsm_state16 = "24'b000000001000000000000000" *) 
  (* ap_ST_fsm_state17 = "24'b000000010000000000000000" *) 
  (* ap_ST_fsm_state18 = "24'b000000100000000000000000" *) 
  (* ap_ST_fsm_state19 = "24'b000001000000000000000000" *) 
  (* ap_ST_fsm_state2 = "24'b000000000000000000000010" *) 
  (* ap_ST_fsm_state20 = "24'b000010000000000000000000" *) 
  (* ap_ST_fsm_state21 = "24'b000100000000000000000000" *) 
  (* ap_ST_fsm_state22 = "24'b001000000000000000000000" *) 
  (* ap_ST_fsm_state23 = "24'b010000000000000000000000" *) 
  (* ap_ST_fsm_state24 = "24'b100000000000000000000000" *) 
  (* ap_ST_fsm_state3 = "24'b000000000000000000000100" *) 
  (* ap_ST_fsm_state4 = "24'b000000000000000000001000" *) 
  (* ap_ST_fsm_state5 = "24'b000000000000000000010000" *) 
  (* ap_ST_fsm_state6 = "24'b000000000000000000100000" *) 
  (* ap_ST_fsm_state7 = "24'b000000000000000001000000" *) 
  (* ap_ST_fsm_state8 = "24'b000000000000000010000000" *) 
  (* ap_ST_fsm_state9 = "24'b000000000000000100000000" *) 
  design_1_display_ls_0_1_display_ls inst
       (.SCL({NLW_inst_SCL_UNCONNECTED[7:1],\^SCL }),
        .SCL_ap_vld(SCL_ap_vld),
        .SDA({NLW_inst_SDA_UNCONNECTED[7:1],\^SDA }),
        .SDA_ap_vld(SDA_ap_vld),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start));
endmodule

(* ORIG_REF_NAME = "display_ls" *) (* ap_ST_fsm_state1 = "24'b000000000000000000000001" *) (* ap_ST_fsm_state10 = "24'b000000000000001000000000" *) 
(* ap_ST_fsm_state11 = "24'b000000000000010000000000" *) (* ap_ST_fsm_state12 = "24'b000000000000100000000000" *) (* ap_ST_fsm_state13 = "24'b000000000001000000000000" *) 
(* ap_ST_fsm_state14 = "24'b000000000010000000000000" *) (* ap_ST_fsm_state15 = "24'b000000000100000000000000" *) (* ap_ST_fsm_state16 = "24'b000000001000000000000000" *) 
(* ap_ST_fsm_state17 = "24'b000000010000000000000000" *) (* ap_ST_fsm_state18 = "24'b000000100000000000000000" *) (* ap_ST_fsm_state19 = "24'b000001000000000000000000" *) 
(* ap_ST_fsm_state2 = "24'b000000000000000000000010" *) (* ap_ST_fsm_state20 = "24'b000010000000000000000000" *) (* ap_ST_fsm_state21 = "24'b000100000000000000000000" *) 
(* ap_ST_fsm_state22 = "24'b001000000000000000000000" *) (* ap_ST_fsm_state23 = "24'b010000000000000000000000" *) (* ap_ST_fsm_state24 = "24'b100000000000000000000000" *) 
(* ap_ST_fsm_state3 = "24'b000000000000000000000100" *) (* ap_ST_fsm_state4 = "24'b000000000000000000001000" *) (* ap_ST_fsm_state5 = "24'b000000000000000000010000" *) 
(* ap_ST_fsm_state6 = "24'b000000000000000000100000" *) (* ap_ST_fsm_state7 = "24'b000000000000000001000000" *) (* ap_ST_fsm_state8 = "24'b000000000000000010000000" *) 
(* ap_ST_fsm_state9 = "24'b000000000000000100000000" *) (* hls_module = "yes" *) 
module design_1_display_ls_0_1_display_ls
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    SDA,
    SDA_ap_vld,
    SCL,
    SCL_ap_vld);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [7:0]SDA;
  output SDA_ap_vld;
  output [7:0]SCL;
  output SCL_ap_vld;

  wire \<const0> ;
  wire [0:0]\^SCL ;
  wire SCL_ap_vld;
  wire SCL_ap_vld_INST_0_i_1_n_3;
  wire SCL_ap_vld_INST_0_i_4_n_3;
  wire [0:0]\^SDA ;
  wire SDA_ap_vld;
  wire SDA_ap_vld_INST_0_i_1_n_3;
  wire \ap_CS_fsm_reg_n_3_[0] ;
  wire \ap_CS_fsm_reg_n_3_[13] ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state12;
  wire ap_CS_fsm_state13;
  wire ap_CS_fsm_state15;
  wire ap_CS_fsm_state16;
  wire ap_CS_fsm_state17;
  wire ap_CS_fsm_state18;
  wire ap_CS_fsm_state19;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state20;
  wire ap_CS_fsm_state21;
  wire ap_CS_fsm_state22;
  wire ap_CS_fsm_state23;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [23:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst;
  wire ap_start;
  wire grp_I2C_out_fu_66_ap_start_reg;
  wire grp_I2C_out_fu_66_ap_start_reg0;
  wire grp_I2C_out_fu_66_ap_start_reg_i_3_n_3;
  wire grp_I2C_out_fu_66_n_28;
  wire grp_I2C_out_fu_66_n_29;

  assign SCL[7] = \<const0> ;
  assign SCL[6] = \<const0> ;
  assign SCL[5] = \<const0> ;
  assign SCL[4] = \<const0> ;
  assign SCL[3] = \<const0> ;
  assign SCL[2] = \<const0> ;
  assign SCL[1] = \<const0> ;
  assign SCL[0] = \^SCL [0];
  assign SDA[7] = \<const0> ;
  assign SDA[6] = \<const0> ;
  assign SDA[5] = \<const0> ;
  assign SDA[4] = \<const0> ;
  assign SDA[3] = \<const0> ;
  assign SDA[2] = \<const0> ;
  assign SDA[1] = \<const0> ;
  assign SDA[0] = \^SDA [0];
  assign ap_done = \^SCL [0];
  assign ap_ready = \^SCL [0];
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    SCL_ap_vld_INST_0_i_1
       (.I0(\ap_CS_fsm_reg_n_3_[0] ),
        .I1(ap_start),
        .I2(\^SCL ),
        .I3(SCL_ap_vld_INST_0_i_4_n_3),
        .I4(ap_CS_fsm_state6),
        .O(SCL_ap_vld_INST_0_i_1_n_3));
  LUT4 #(
    .INIT(16'hFFFE)) 
    SCL_ap_vld_INST_0_i_4
       (.I0(ap_CS_fsm_state2),
        .I1(ap_CS_fsm_state4),
        .I2(ap_CS_fsm_state20),
        .I3(ap_CS_fsm_state22),
        .O(SCL_ap_vld_INST_0_i_4_n_3));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    SDA_ap_vld_INST_0_i_1
       (.I0(ap_CS_fsm_state15),
        .I1(ap_CS_fsm_state17),
        .I2(ap_CS_fsm_state19),
        .I3(ap_CS_fsm_state3),
        .I4(ap_CS_fsm_state13),
        .I5(grp_I2C_out_fu_66_n_28),
        .O(SDA_ap_vld_INST_0_i_1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\^SCL ),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_3_[0] ),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_3_[0] ),
        .I1(ap_start),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_3_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[10]),
        .Q(ap_CS_fsm_state11),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[11]),
        .Q(ap_CS_fsm_state12),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[12]),
        .Q(ap_CS_fsm_state13),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[13]),
        .Q(\ap_CS_fsm_reg_n_3_[13] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[14]),
        .Q(ap_CS_fsm_state15),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[15]),
        .Q(ap_CS_fsm_state16),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[16]),
        .Q(ap_CS_fsm_state17),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[17]),
        .Q(ap_CS_fsm_state18),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[18]),
        .Q(ap_CS_fsm_state19),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[19]),
        .Q(ap_CS_fsm_state20),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[20]),
        .Q(ap_CS_fsm_state21),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[21]),
        .Q(ap_CS_fsm_state22),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[22]),
        .Q(ap_CS_fsm_state23),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[23]),
        .Q(\^SCL ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[8]),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[9]),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_3_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  design_1_display_ls_0_1_display_ls_I2C_out grp_I2C_out_fu_66
       (.D(ap_NS_fsm[23:2]),
        .Q({\^SCL ,ap_CS_fsm_state23,ap_CS_fsm_state22,ap_CS_fsm_state21,ap_CS_fsm_state20,ap_CS_fsm_state19,ap_CS_fsm_state18,ap_CS_fsm_state17,ap_CS_fsm_state16,ap_CS_fsm_state15,\ap_CS_fsm_reg_n_3_[13] ,ap_CS_fsm_state13,ap_CS_fsm_state12,ap_CS_fsm_state11,ap_CS_fsm_state10,ap_CS_fsm_state9,ap_CS_fsm_state8,ap_CS_fsm_state7,ap_CS_fsm_state6,ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2,\ap_CS_fsm_reg_n_3_[0] }),
        .SCL_ap_vld(SCL_ap_vld),
        .SCL_ap_vld_0(SCL_ap_vld_INST_0_i_1_n_3),
        .SDA(\^SDA ),
        .SDA_ap_vld(SDA_ap_vld),
        .SDA_ap_vld_0(SDA_ap_vld_INST_0_i_1_n_3),
        .\ap_CS_fsm_reg[20] (grp_I2C_out_fu_66_n_28),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .grp_I2C_out_fu_66_ap_start_reg(grp_I2C_out_fu_66_ap_start_reg),
        .grp_I2C_out_fu_66_ap_start_reg0(grp_I2C_out_fu_66_ap_start_reg0),
        .grp_I2C_out_fu_66_ap_start_reg_reg(grp_I2C_out_fu_66_n_29));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    grp_I2C_out_fu_66_ap_start_reg_i_2
       (.I0(SCL_ap_vld_INST_0_i_4_n_3),
        .I1(grp_I2C_out_fu_66_ap_start_reg_i_3_n_3),
        .I2(ap_CS_fsm_state8),
        .I3(ap_CS_fsm_state16),
        .I4(ap_CS_fsm_state6),
        .O(grp_I2C_out_fu_66_ap_start_reg0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    grp_I2C_out_fu_66_ap_start_reg_i_3
       (.I0(\ap_CS_fsm_reg_n_3_[13] ),
        .I1(ap_CS_fsm_state12),
        .I2(ap_CS_fsm_state18),
        .I3(ap_CS_fsm_state10),
        .O(grp_I2C_out_fu_66_ap_start_reg_i_3_n_3));
  FDRE #(
    .INIT(1'b0)) 
    grp_I2C_out_fu_66_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_I2C_out_fu_66_n_29),
        .Q(grp_I2C_out_fu_66_ap_start_reg),
        .R(ap_rst));
endmodule

(* ORIG_REF_NAME = "display_ls_I2C_out" *) 
module design_1_display_ls_0_1_display_ls_I2C_out
   (SDA,
    SDA_ap_vld,
    D,
    SCL_ap_vld,
    \ap_CS_fsm_reg[20] ,
    grp_I2C_out_fu_66_ap_start_reg_reg,
    ap_rst,
    ap_clk,
    Q,
    ap_start,
    grp_I2C_out_fu_66_ap_start_reg,
    SDA_ap_vld_0,
    SCL_ap_vld_0,
    grp_I2C_out_fu_66_ap_start_reg0);
  output [0:0]SDA;
  output SDA_ap_vld;
  output [21:0]D;
  output SCL_ap_vld;
  output \ap_CS_fsm_reg[20] ;
  output grp_I2C_out_fu_66_ap_start_reg_reg;
  input ap_rst;
  input ap_clk;
  input [23:0]Q;
  input ap_start;
  input grp_I2C_out_fu_66_ap_start_reg;
  input SDA_ap_vld_0;
  input SCL_ap_vld_0;
  input grp_I2C_out_fu_66_ap_start_reg0;

  wire [21:0]D;
  wire [23:0]Q;
  wire SCL_ap_vld;
  wire SCL_ap_vld_0;
  wire [0:0]SDA;
  wire SDA_ap_vld;
  wire SDA_ap_vld_0;
  wire SDA_ap_vld_INST_0_i_2_n_3;
  wire \ap_CS_fsm_reg[20] ;
  wire ap_clk;
  wire ap_rst;
  wire ap_start;
  wire [7:0]d_fu_42;
  wire \d_fu_42[1]_i_2_n_3 ;
  wire \d_fu_42[2]_i_2_n_3 ;
  wire \d_fu_42[3]_i_2_n_3 ;
  wire \d_fu_42[4]_i_2_n_3 ;
  wire \d_fu_42[4]_i_3_n_3 ;
  wire \d_fu_42[5]_i_2_n_3 ;
  wire \d_fu_42[5]_i_3_n_3 ;
  wire \d_fu_42[6]_i_2_n_3 ;
  wire \d_fu_42[6]_i_3_n_3 ;
  wire \d_fu_42[6]_i_4_n_3 ;
  wire \d_fu_42[7]_i_2_n_3 ;
  wire flow_control_loop_pipe_sequential_init_U_n_29;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_39;
  wire flow_control_loop_pipe_sequential_init_U_n_40;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire grp_I2C_out_fu_66_ap_start_reg;
  wire grp_I2C_out_fu_66_ap_start_reg0;
  wire grp_I2C_out_fu_66_ap_start_reg_reg;
  wire \n_fu_38_reg_n_3_[0] ;
  wire \n_fu_38_reg_n_3_[1] ;
  wire \n_fu_38_reg_n_3_[2] ;
  wire \n_fu_38_reg_n_3_[3] ;
  wire [6:0]p_0_in;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    SDA_ap_vld_INST_0_i_2
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[10]),
        .I3(Q[4]),
        .O(SDA_ap_vld_INST_0_i_2_n_3));
  LUT2 #(
    .INIT(4'hE)) 
    SDA_ap_vld_INST_0_i_4
       (.I0(Q[20]),
        .I1(Q[22]),
        .O(\ap_CS_fsm_reg[20] ));
  LUT6 #(
    .INIT(64'h00000000FFFF5400)) 
    \d_fu_42[1]_i_2 
       (.I0(Q[18]),
        .I1(Q[16]),
        .I2(Q[8]),
        .I3(\d_fu_42[6]_i_3_n_3 ),
        .I4(Q[20]),
        .I5(Q[22]),
        .O(\d_fu_42[1]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \d_fu_42[2]_i_2 
       (.I0(Q[22]),
        .I1(Q[20]),
        .I2(Q[14]),
        .I3(Q[16]),
        .I4(Q[18]),
        .O(\d_fu_42[2]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hF5F5F5F5F5F5F5F4)) 
    \d_fu_42[3]_i_2 
       (.I0(Q[20]),
        .I1(Q[10]),
        .I2(Q[22]),
        .I3(Q[18]),
        .I4(Q[14]),
        .I5(Q[16]),
        .O(\d_fu_42[3]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h1111111111110001)) 
    \d_fu_42[4]_i_2 
       (.I0(Q[22]),
        .I1(Q[20]),
        .I2(Q[10]),
        .I3(\d_fu_42[5]_i_3_n_3 ),
        .I4(Q[18]),
        .I5(\d_fu_42[4]_i_3_n_3 ),
        .O(\d_fu_42[4]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \d_fu_42[4]_i_3 
       (.I0(Q[14]),
        .I1(Q[16]),
        .O(\d_fu_42[4]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h00000000000000FD)) 
    \d_fu_42[5]_i_2 
       (.I0(\d_fu_42[5]_i_3_n_3 ),
        .I1(Q[10]),
        .I2(Q[14]),
        .I3(Q[16]),
        .I4(Q[18]),
        .I5(\ap_CS_fsm_reg[20] ),
        .O(\d_fu_42[5]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \d_fu_42[5]_i_3 
       (.I0(Q[4]),
        .I1(Q[8]),
        .I2(Q[6]),
        .O(\d_fu_42[5]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h00000000AAAAA8AA)) 
    \d_fu_42[6]_i_2 
       (.I0(\d_fu_42[6]_i_3_n_3 ),
        .I1(Q[16]),
        .I2(Q[8]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(\d_fu_42[6]_i_4_n_3 ),
        .O(\d_fu_42[6]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \d_fu_42[6]_i_3 
       (.I0(Q[16]),
        .I1(Q[14]),
        .I2(Q[10]),
        .O(\d_fu_42[6]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \d_fu_42[6]_i_4 
       (.I0(Q[20]),
        .I1(Q[22]),
        .I2(Q[18]),
        .O(\d_fu_42[6]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h00000000000000FD)) 
    \d_fu_42[7]_i_2 
       (.I0(SDA_ap_vld_INST_0_i_2_n_3),
        .I1(Q[14]),
        .I2(Q[16]),
        .I3(Q[18]),
        .I4(Q[22]),
        .I5(Q[20]),
        .O(\d_fu_42[7]_i_2_n_3 ));
  FDRE \d_fu_42_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(p_0_in[0]),
        .Q(d_fu_42[0]),
        .R(1'b0));
  FDRE \d_fu_42_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(p_0_in[1]),
        .Q(d_fu_42[1]),
        .R(1'b0));
  FDRE \d_fu_42_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(p_0_in[2]),
        .Q(d_fu_42[2]),
        .R(1'b0));
  FDRE \d_fu_42_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(p_0_in[3]),
        .Q(d_fu_42[3]),
        .R(1'b0));
  FDRE \d_fu_42_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(p_0_in[4]),
        .Q(d_fu_42[4]),
        .R(1'b0));
  FDRE \d_fu_42_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(p_0_in[5]),
        .Q(d_fu_42[5]),
        .R(1'b0));
  FDRE \d_fu_42_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(p_0_in[6]),
        .Q(d_fu_42[6]),
        .R(1'b0));
  FDRE \d_fu_42_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(flow_control_loop_pipe_sequential_init_U_n_29),
        .Q(d_fu_42[7]),
        .R(1'b0));
  design_1_display_ls_0_1_display_ls_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .E(flow_control_loop_pipe_sequential_init_U_n_5),
        .Q(Q),
        .SCL_ap_vld(SCL_ap_vld),
        .SCL_ap_vld_0(SCL_ap_vld_0),
        .SDA(SDA),
        .\SDA[0] (d_fu_42),
        .SDA_ap_vld(SDA_ap_vld),
        .SDA_ap_vld_0(SDA_ap_vld_0),
        .SDA_ap_vld_1(SDA_ap_vld_INST_0_i_2_n_3),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .\d_fu_42_reg[0] (\d_fu_42[1]_i_2_n_3 ),
        .\d_fu_42_reg[2] (\d_fu_42[2]_i_2_n_3 ),
        .\d_fu_42_reg[3] (\d_fu_42[3]_i_2_n_3 ),
        .\d_fu_42_reg[4] (\d_fu_42[4]_i_2_n_3 ),
        .\d_fu_42_reg[5] (\d_fu_42[5]_i_2_n_3 ),
        .\d_fu_42_reg[6] ({flow_control_loop_pipe_sequential_init_U_n_29,p_0_in}),
        .\d_fu_42_reg[6]_0 (\d_fu_42[6]_i_2_n_3 ),
        .\d_fu_42_reg[7] (\d_fu_42[7]_i_2_n_3 ),
        .grp_I2C_out_fu_66_ap_start_reg(grp_I2C_out_fu_66_ap_start_reg),
        .grp_I2C_out_fu_66_ap_start_reg0(grp_I2C_out_fu_66_ap_start_reg0),
        .grp_I2C_out_fu_66_ap_start_reg_reg(grp_I2C_out_fu_66_ap_start_reg_reg),
        .\n_fu_38_reg[2] ({flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38,flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40}),
        .\n_fu_38_reg[3] ({\n_fu_38_reg_n_3_[3] ,\n_fu_38_reg_n_3_[2] ,\n_fu_38_reg_n_3_[1] ,\n_fu_38_reg_n_3_[0] }));
  FDRE \n_fu_38_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(flow_control_loop_pipe_sequential_init_U_n_40),
        .Q(\n_fu_38_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \n_fu_38_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(flow_control_loop_pipe_sequential_init_U_n_39),
        .Q(\n_fu_38_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \n_fu_38_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(flow_control_loop_pipe_sequential_init_U_n_38),
        .Q(\n_fu_38_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \n_fu_38_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_5),
        .D(flow_control_loop_pipe_sequential_init_U_n_37),
        .Q(\n_fu_38_reg_n_3_[3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "display_ls_flow_control_loop_pipe_sequential_init" *) 
module design_1_display_ls_0_1_display_ls_flow_control_loop_pipe_sequential_init
   (SDA,
    SDA_ap_vld,
    E,
    D,
    SCL_ap_vld,
    \d_fu_42_reg[6] ,
    \n_fu_38_reg[2] ,
    grp_I2C_out_fu_66_ap_start_reg_reg,
    ap_rst,
    ap_clk,
    Q,
    ap_start,
    \SDA[0] ,
    grp_I2C_out_fu_66_ap_start_reg,
    SDA_ap_vld_0,
    SDA_ap_vld_1,
    SCL_ap_vld_0,
    \d_fu_42_reg[0] ,
    \n_fu_38_reg[3] ,
    \d_fu_42_reg[6]_0 ,
    \d_fu_42_reg[7] ,
    \d_fu_42_reg[5] ,
    \d_fu_42_reg[4] ,
    \d_fu_42_reg[3] ,
    \d_fu_42_reg[2] ,
    grp_I2C_out_fu_66_ap_start_reg0);
  output [0:0]SDA;
  output SDA_ap_vld;
  output [0:0]E;
  output [21:0]D;
  output SCL_ap_vld;
  output [7:0]\d_fu_42_reg[6] ;
  output [3:0]\n_fu_38_reg[2] ;
  output grp_I2C_out_fu_66_ap_start_reg_reg;
  input ap_rst;
  input ap_clk;
  input [23:0]Q;
  input ap_start;
  input [7:0]\SDA[0] ;
  input grp_I2C_out_fu_66_ap_start_reg;
  input SDA_ap_vld_0;
  input SDA_ap_vld_1;
  input SCL_ap_vld_0;
  input \d_fu_42_reg[0] ;
  input [3:0]\n_fu_38_reg[3] ;
  input \d_fu_42_reg[6]_0 ;
  input \d_fu_42_reg[7] ;
  input \d_fu_42_reg[5] ;
  input \d_fu_42_reg[4] ;
  input \d_fu_42_reg[3] ;
  input \d_fu_42_reg[2] ;
  input grp_I2C_out_fu_66_ap_start_reg0;

  wire [21:0]D;
  wire [0:0]E;
  wire [23:0]Q;
  wire SCL_ap_vld;
  wire SCL_ap_vld_0;
  wire SCL_ap_vld_INST_0_i_2_n_3;
  wire SCL_ap_vld_INST_0_i_3_n_3;
  wire SCL_ap_vld_INST_0_i_5_n_3;
  wire [0:0]SDA;
  wire [7:0]\SDA[0] ;
  wire SDA_ap_vld;
  wire SDA_ap_vld_0;
  wire SDA_ap_vld_1;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_3;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_3;
  wire ap_rst;
  wire ap_start;
  wire \d_fu_42_reg[0] ;
  wire \d_fu_42_reg[2] ;
  wire \d_fu_42_reg[3] ;
  wire \d_fu_42_reg[4] ;
  wire \d_fu_42_reg[5] ;
  wire [7:0]\d_fu_42_reg[6] ;
  wire \d_fu_42_reg[6]_0 ;
  wire \d_fu_42_reg[7] ;
  wire grp_I2C_out_fu_66_ap_start_reg;
  wire grp_I2C_out_fu_66_ap_start_reg0;
  wire grp_I2C_out_fu_66_ap_start_reg_reg;
  wire [3:0]\n_fu_38_reg[2] ;
  wire [3:0]\n_fu_38_reg[3] ;

  LUT6 #(
    .INIT(64'hFCFCFFFFFCFCFFFE)) 
    SCL_ap_vld_INST_0
       (.I0(Q[6]),
        .I1(SCL_ap_vld_0),
        .I2(SCL_ap_vld_INST_0_i_2_n_3),
        .I3(Q[4]),
        .I4(SCL_ap_vld_INST_0_i_3_n_3),
        .I5(Q[22]),
        .O(SCL_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3F302A20)) 
    SCL_ap_vld_INST_0_i_2
       (.I0(Q[20]),
        .I1(SCL_ap_vld_INST_0_i_5_n_3),
        .I2(grp_I2C_out_fu_66_ap_start_reg),
        .I3(ap_done_cache),
        .I4(Q[2]),
        .O(SCL_ap_vld_INST_0_i_2_n_3));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    SCL_ap_vld_INST_0_i_3
       (.I0(SCL_ap_vld_INST_0_i_5_n_3),
        .I1(grp_I2C_out_fu_66_ap_start_reg),
        .I2(ap_done_cache),
        .O(SCL_ap_vld_INST_0_i_3_n_3));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFBFB)) 
    SCL_ap_vld_INST_0_i_5
       (.I0(\n_fu_38_reg[3] [1]),
        .I1(\n_fu_38_reg[3] [3]),
        .I2(\n_fu_38_reg[3] [2]),
        .I3(ap_loop_init_int),
        .I4(grp_I2C_out_fu_66_ap_start_reg),
        .I5(\n_fu_38_reg[3] [0]),
        .O(SCL_ap_vld_INST_0_i_5_n_3));
  LUT6 #(
    .INIT(64'hAAAABFAABFAABFAA)) 
    \SDA[0]_INST_0 
       (.I0(Q[23]),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(\SDA[0] [7]),
        .I4(ap_loop_init_int),
        .I5(grp_I2C_out_fu_66_ap_start_reg),
        .O(SDA));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD0D0D0)) 
    SDA_ap_vld_INST_0
       (.I0(SDA_ap_vld_0),
        .I1(SDA_ap_vld_1),
        .I2(E),
        .I3(Q[0]),
        .I4(ap_start),
        .I5(Q[23]),
        .O(SDA_ap_vld));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000000)) 
    SDA_ap_vld_INST_0_i_3
       (.I0(\n_fu_38_reg[3] [0]),
        .I1(ap_loop_init_int),
        .I2(\n_fu_38_reg[3] [2]),
        .I3(\n_fu_38_reg[3] [3]),
        .I4(\n_fu_38_reg[3] [1]),
        .I5(grp_I2C_out_fu_66_ap_start_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(Q[9]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .I2(Q[10]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[11]_i_1 
       (.I0(Q[10]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[12]_i_1 
       (.I0(Q[11]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .I2(Q[12]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[13]_i_1 
       (.I0(Q[12]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[14]_i_1 
       (.I0(Q[13]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .I2(Q[14]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[15]_i_1 
       (.I0(Q[14]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[16]_i_1 
       (.I0(Q[15]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .I2(Q[16]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[17]_i_1 
       (.I0(Q[16]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[18]_i_1 
       (.I0(Q[17]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .I2(Q[18]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[19]_i_1 
       (.I0(Q[18]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[20]_i_1 
       (.I0(Q[19]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .I2(Q[20]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h08A8)) 
    \ap_CS_fsm[21]_i_1 
       (.I0(Q[20]),
        .I1(ap_done_cache),
        .I2(grp_I2C_out_fu_66_ap_start_reg),
        .I3(SCL_ap_vld_INST_0_i_5_n_3),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[22]_i_1 
       (.I0(Q[21]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .I2(Q[22]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[23]_i_1 
       (.I0(Q[22]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(Q[1]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .I2(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h08A8)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(Q[2]),
        .I1(ap_done_cache),
        .I2(grp_I2C_out_fu_66_ap_start_reg),
        .I3(SCL_ap_vld_INST_0_i_5_n_3),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(Q[3]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .I2(Q[4]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(Q[4]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(Q[5]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .I2(Q[6]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(Q[6]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[8]_i_1 
       (.I0(Q[7]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .I2(Q[8]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[9]_i_1 
       (.I0(Q[8]),
        .I1(SCL_ap_vld_INST_0_i_3_n_3),
        .O(D[7]));
  LUT3 #(
    .INIT(8'h74)) 
    ap_done_cache_i_1
       (.I0(SCL_ap_vld_INST_0_i_5_n_3),
        .I1(grp_I2C_out_fu_66_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_3),
        .Q(ap_done_cache),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF5C)) 
    ap_loop_init_int_i_1
       (.I0(SCL_ap_vld_INST_0_i_5_n_3),
        .I1(ap_loop_init_int),
        .I2(grp_I2C_out_fu_66_ap_start_reg),
        .I3(ap_rst),
        .O(ap_loop_init_int_i_1_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \d_fu_42[0]_i_1 
       (.I0(\d_fu_42_reg[0] ),
        .I1(SCL_ap_vld_INST_0_i_5_n_3),
        .O(\d_fu_42_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \d_fu_42[1]_i_1 
       (.I0(\d_fu_42_reg[0] ),
        .I1(ap_loop_init_int),
        .I2(\SDA[0] [0]),
        .I3(SCL_ap_vld_INST_0_i_5_n_3),
        .I4(\d_fu_42_reg[2] ),
        .O(\d_fu_42_reg[6] [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \d_fu_42[2]_i_1 
       (.I0(\d_fu_42_reg[2] ),
        .I1(ap_loop_init_int),
        .I2(\SDA[0] [1]),
        .I3(SCL_ap_vld_INST_0_i_5_n_3),
        .I4(\d_fu_42_reg[3] ),
        .O(\d_fu_42_reg[6] [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \d_fu_42[3]_i_1 
       (.I0(\d_fu_42_reg[3] ),
        .I1(ap_loop_init_int),
        .I2(\SDA[0] [2]),
        .I3(SCL_ap_vld_INST_0_i_5_n_3),
        .I4(\d_fu_42_reg[4] ),
        .O(\d_fu_42_reg[6] [3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \d_fu_42[4]_i_1 
       (.I0(\d_fu_42_reg[4] ),
        .I1(ap_loop_init_int),
        .I2(\SDA[0] [3]),
        .I3(SCL_ap_vld_INST_0_i_5_n_3),
        .I4(\d_fu_42_reg[5] ),
        .O(\d_fu_42_reg[6] [4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \d_fu_42[5]_i_1 
       (.I0(\d_fu_42_reg[5] ),
        .I1(ap_loop_init_int),
        .I2(\SDA[0] [4]),
        .I3(SCL_ap_vld_INST_0_i_5_n_3),
        .I4(\d_fu_42_reg[6]_0 ),
        .O(\d_fu_42_reg[6] [5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \d_fu_42[6]_i_1 
       (.I0(\d_fu_42_reg[6]_0 ),
        .I1(ap_loop_init_int),
        .I2(\SDA[0] [5]),
        .I3(SCL_ap_vld_INST_0_i_5_n_3),
        .I4(\d_fu_42_reg[7] ),
        .O(\d_fu_42_reg[6] [6]));
  LUT4 #(
    .INIT(16'hE200)) 
    \d_fu_42[7]_i_1 
       (.I0(\SDA[0] [6]),
        .I1(ap_loop_init_int),
        .I2(\d_fu_42_reg[7] ),
        .I3(SCL_ap_vld_INST_0_i_5_n_3),
        .O(\d_fu_42_reg[6] [7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    grp_I2C_out_fu_66_ap_start_reg_i_1
       (.I0(SCL_ap_vld_INST_0_i_5_n_3),
        .I1(grp_I2C_out_fu_66_ap_start_reg),
        .I2(grp_I2C_out_fu_66_ap_start_reg0),
        .O(grp_I2C_out_fu_66_ap_start_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF00FFFB)) 
    \n_fu_38[0]_i_1 
       (.I0(\n_fu_38_reg[3] [2]),
        .I1(\n_fu_38_reg[3] [3]),
        .I2(\n_fu_38_reg[3] [1]),
        .I3(ap_loop_init_int),
        .I4(\n_fu_38_reg[3] [0]),
        .O(\n_fu_38_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \n_fu_38[1]_i_1 
       (.I0(\n_fu_38_reg[3] [0]),
        .I1(ap_loop_init_int),
        .I2(\n_fu_38_reg[3] [1]),
        .O(\n_fu_38_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1320)) 
    \n_fu_38[2]_i_1 
       (.I0(\n_fu_38_reg[3] [0]),
        .I1(ap_loop_init_int),
        .I2(\n_fu_38_reg[3] [1]),
        .I3(\n_fu_38_reg[3] [2]),
        .O(\n_fu_38_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h070E0800)) 
    \n_fu_38[3]_i_1 
       (.I0(\n_fu_38_reg[3] [2]),
        .I1(\n_fu_38_reg[3] [1]),
        .I2(ap_loop_init_int),
        .I3(\n_fu_38_reg[3] [0]),
        .I4(\n_fu_38_reg[3] [3]),
        .O(\n_fu_38_reg[2] [3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

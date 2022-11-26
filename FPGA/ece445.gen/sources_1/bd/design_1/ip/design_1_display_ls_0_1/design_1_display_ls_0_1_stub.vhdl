-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 24 15:36:54 2022
-- Host        : Richdesk running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/Richard/OneDrive - University of Illinois -
--               Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.gen/sources_1/bd/design_1/ip/design_1_display_ls_0_1/design_1_display_ls_0_1_stub.vhdl}
-- Design      : design_1_display_ls_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_display_ls_0_1 is
  Port ( 
    SDA_ap_vld : out STD_LOGIC;
    SCL_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    SDA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SCL : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_display_ls_0_1;

architecture stub of design_1_display_ls_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SDA_ap_vld,SCL_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SDA[7:0],SCL[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "display_ls,Vivado 2022.2";
begin
end;

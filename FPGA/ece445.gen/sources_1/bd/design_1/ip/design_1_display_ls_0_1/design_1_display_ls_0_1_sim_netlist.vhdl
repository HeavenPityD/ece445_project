-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 24 15:36:54 2022
-- Host        : Richdesk running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Richard/OneDrive - University of Illinois -
--               Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.gen/sources_1/bd/design_1/ip/design_1_display_ls_0_1/design_1_display_ls_0_1_sim_netlist.vhdl}
-- Design      : design_1_display_ls_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_display_ls_0_1_display_ls_flow_control_loop_pipe_sequential_init is
  port (
    SDA : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDA_ap_vld : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SCL_ap_vld : out STD_LOGIC;
    \d_fu_42_reg[6]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \n_fu_38_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    grp_I2C_out_fu_66_ap_start_reg_reg : out STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ap_start : in STD_LOGIC;
    \SDA[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    grp_I2C_out_fu_66_ap_start_reg : in STD_LOGIC;
    SDA_ap_vld_0 : in STD_LOGIC;
    SDA_ap_vld_1 : in STD_LOGIC;
    SCL_ap_vld_0 : in STD_LOGIC;
    \d_fu_42_reg[0]\ : in STD_LOGIC;
    \n_fu_38_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_fu_42_reg[6]_0\ : in STD_LOGIC;
    \d_fu_42_reg[7]\ : in STD_LOGIC;
    \d_fu_42_reg[5]\ : in STD_LOGIC;
    \d_fu_42_reg[4]\ : in STD_LOGIC;
    \d_fu_42_reg[3]\ : in STD_LOGIC;
    \d_fu_42_reg[2]\ : in STD_LOGIC;
    grp_I2C_out_fu_66_ap_start_reg0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_display_ls_0_1_display_ls_flow_control_loop_pipe_sequential_init : entity is "display_ls_flow_control_loop_pipe_sequential_init";
end design_1_display_ls_0_1_display_ls_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of design_1_display_ls_0_1_display_ls_flow_control_loop_pipe_sequential_init is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SCL_ap_vld_INST_0_i_2_n_3 : STD_LOGIC;
  signal SCL_ap_vld_INST_0_i_3_n_3 : STD_LOGIC;
  signal SCL_ap_vld_INST_0_i_5_n_3 : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_3 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_3 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of SCL_ap_vld_INST_0_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of SCL_ap_vld_INST_0_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_CS_fsm[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ap_CS_fsm[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ap_CS_fsm[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ap_CS_fsm[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ap_CS_fsm[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ap_CS_fsm[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ap_CS_fsm[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ap_CS_fsm[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ap_CS_fsm[18]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ap_CS_fsm[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ap_CS_fsm[20]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ap_CS_fsm[21]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ap_CS_fsm[22]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ap_CS_fsm[23]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ap_CS_fsm[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ap_loop_init_int_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \d_fu_42[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \d_fu_42[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of grp_I2C_out_fu_66_ap_start_reg_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \n_fu_38[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \n_fu_38[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \n_fu_38[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \n_fu_38[3]_i_1\ : label is "soft_lutpair1";
begin
  E(0) <= \^e\(0);
SCL_ap_vld_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFFFFFCFCFFFE"
    )
        port map (
      I0 => Q(6),
      I1 => SCL_ap_vld_0,
      I2 => SCL_ap_vld_INST_0_i_2_n_3,
      I3 => Q(4),
      I4 => SCL_ap_vld_INST_0_i_3_n_3,
      I5 => Q(22),
      O => SCL_ap_vld
    );
SCL_ap_vld_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F302A20"
    )
        port map (
      I0 => Q(20),
      I1 => SCL_ap_vld_INST_0_i_5_n_3,
      I2 => grp_I2C_out_fu_66_ap_start_reg,
      I3 => ap_done_cache,
      I4 => Q(2),
      O => SCL_ap_vld_INST_0_i_2_n_3
    );
SCL_ap_vld_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => SCL_ap_vld_INST_0_i_5_n_3,
      I1 => grp_I2C_out_fu_66_ap_start_reg,
      I2 => ap_done_cache,
      O => SCL_ap_vld_INST_0_i_3_n_3
    );
SCL_ap_vld_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFBFB"
    )
        port map (
      I0 => \n_fu_38_reg[3]\(1),
      I1 => \n_fu_38_reg[3]\(3),
      I2 => \n_fu_38_reg[3]\(2),
      I3 => ap_loop_init_int,
      I4 => grp_I2C_out_fu_66_ap_start_reg,
      I5 => \n_fu_38_reg[3]\(0),
      O => SCL_ap_vld_INST_0_i_5_n_3
    );
\SDA[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAABFAABFAA"
    )
        port map (
      I0 => Q(23),
      I1 => Q(0),
      I2 => ap_start,
      I3 => \SDA[0]\(7),
      I4 => ap_loop_init_int,
      I5 => grp_I2C_out_fu_66_ap_start_reg,
      O => SDA(0)
    );
SDA_ap_vld_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFD0D0D0"
    )
        port map (
      I0 => SDA_ap_vld_0,
      I1 => SDA_ap_vld_1,
      I2 => \^e\(0),
      I3 => Q(0),
      I4 => ap_start,
      I5 => Q(23),
      O => SDA_ap_vld
    );
SDA_ap_vld_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000000"
    )
        port map (
      I0 => \n_fu_38_reg[3]\(0),
      I1 => ap_loop_init_int,
      I2 => \n_fu_38_reg[3]\(2),
      I3 => \n_fu_38_reg[3]\(3),
      I4 => \n_fu_38_reg[3]\(1),
      I5 => grp_I2C_out_fu_66_ap_start_reg,
      O => \^e\(0)
    );
\ap_CS_fsm[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(9),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      I2 => Q(10),
      O => D(8)
    );
\ap_CS_fsm[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(10),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      O => D(9)
    );
\ap_CS_fsm[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(11),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      I2 => Q(12),
      O => D(10)
    );
\ap_CS_fsm[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(12),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      O => D(11)
    );
\ap_CS_fsm[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(13),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      I2 => Q(14),
      O => D(12)
    );
\ap_CS_fsm[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(14),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      O => D(13)
    );
\ap_CS_fsm[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(15),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      I2 => Q(16),
      O => D(14)
    );
\ap_CS_fsm[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(16),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      O => D(15)
    );
\ap_CS_fsm[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(17),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      I2 => Q(18),
      O => D(16)
    );
\ap_CS_fsm[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(18),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      O => D(17)
    );
\ap_CS_fsm[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(19),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      I2 => Q(20),
      O => D(18)
    );
\ap_CS_fsm[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08A8"
    )
        port map (
      I0 => Q(20),
      I1 => ap_done_cache,
      I2 => grp_I2C_out_fu_66_ap_start_reg,
      I3 => SCL_ap_vld_INST_0_i_5_n_3,
      O => D(19)
    );
\ap_CS_fsm[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(21),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      I2 => Q(22),
      O => D(20)
    );
\ap_CS_fsm[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(22),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      O => D(21)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(1),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      I2 => Q(2),
      O => D(0)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08A8"
    )
        port map (
      I0 => Q(2),
      I1 => ap_done_cache,
      I2 => grp_I2C_out_fu_66_ap_start_reg,
      I3 => SCL_ap_vld_INST_0_i_5_n_3,
      O => D(1)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(3),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      I2 => Q(4),
      O => D(2)
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(4),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      O => D(3)
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(5),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      I2 => Q(6),
      O => D(4)
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(6),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      O => D(5)
    );
\ap_CS_fsm[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(7),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      I2 => Q(8),
      O => D(6)
    );
\ap_CS_fsm[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(8),
      I1 => SCL_ap_vld_INST_0_i_3_n_3,
      O => D(7)
    );
ap_done_cache_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => SCL_ap_vld_INST_0_i_5_n_3,
      I1 => grp_I2C_out_fu_66_ap_start_reg,
      I2 => ap_done_cache,
      O => ap_done_cache_i_1_n_3
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_3,
      Q => ap_done_cache,
      R => ap_rst
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5C"
    )
        port map (
      I0 => SCL_ap_vld_INST_0_i_5_n_3,
      I1 => ap_loop_init_int,
      I2 => grp_I2C_out_fu_66_ap_start_reg,
      I3 => ap_rst,
      O => ap_loop_init_int_i_1_n_3
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_3,
      Q => ap_loop_init_int,
      R => '0'
    );
\d_fu_42[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \d_fu_42_reg[0]\,
      I1 => SCL_ap_vld_INST_0_i_5_n_3,
      O => \d_fu_42_reg[6]\(0)
    );
\d_fu_42[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \d_fu_42_reg[0]\,
      I1 => ap_loop_init_int,
      I2 => \SDA[0]\(0),
      I3 => SCL_ap_vld_INST_0_i_5_n_3,
      I4 => \d_fu_42_reg[2]\,
      O => \d_fu_42_reg[6]\(1)
    );
\d_fu_42[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \d_fu_42_reg[2]\,
      I1 => ap_loop_init_int,
      I2 => \SDA[0]\(1),
      I3 => SCL_ap_vld_INST_0_i_5_n_3,
      I4 => \d_fu_42_reg[3]\,
      O => \d_fu_42_reg[6]\(2)
    );
\d_fu_42[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \d_fu_42_reg[3]\,
      I1 => ap_loop_init_int,
      I2 => \SDA[0]\(2),
      I3 => SCL_ap_vld_INST_0_i_5_n_3,
      I4 => \d_fu_42_reg[4]\,
      O => \d_fu_42_reg[6]\(3)
    );
\d_fu_42[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \d_fu_42_reg[4]\,
      I1 => ap_loop_init_int,
      I2 => \SDA[0]\(3),
      I3 => SCL_ap_vld_INST_0_i_5_n_3,
      I4 => \d_fu_42_reg[5]\,
      O => \d_fu_42_reg[6]\(4)
    );
\d_fu_42[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \d_fu_42_reg[5]\,
      I1 => ap_loop_init_int,
      I2 => \SDA[0]\(4),
      I3 => SCL_ap_vld_INST_0_i_5_n_3,
      I4 => \d_fu_42_reg[6]_0\,
      O => \d_fu_42_reg[6]\(5)
    );
\d_fu_42[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \d_fu_42_reg[6]_0\,
      I1 => ap_loop_init_int,
      I2 => \SDA[0]\(5),
      I3 => SCL_ap_vld_INST_0_i_5_n_3,
      I4 => \d_fu_42_reg[7]\,
      O => \d_fu_42_reg[6]\(6)
    );
\d_fu_42[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \SDA[0]\(6),
      I1 => ap_loop_init_int,
      I2 => \d_fu_42_reg[7]\,
      I3 => SCL_ap_vld_INST_0_i_5_n_3,
      O => \d_fu_42_reg[6]\(7)
    );
grp_I2C_out_fu_66_ap_start_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => SCL_ap_vld_INST_0_i_5_n_3,
      I1 => grp_I2C_out_fu_66_ap_start_reg,
      I2 => grp_I2C_out_fu_66_ap_start_reg0,
      O => grp_I2C_out_fu_66_ap_start_reg_reg
    );
\n_fu_38[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FFFB"
    )
        port map (
      I0 => \n_fu_38_reg[3]\(2),
      I1 => \n_fu_38_reg[3]\(3),
      I2 => \n_fu_38_reg[3]\(1),
      I3 => ap_loop_init_int,
      I4 => \n_fu_38_reg[3]\(0),
      O => \n_fu_38_reg[2]\(0)
    );
\n_fu_38[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \n_fu_38_reg[3]\(0),
      I1 => ap_loop_init_int,
      I2 => \n_fu_38_reg[3]\(1),
      O => \n_fu_38_reg[2]\(1)
    );
\n_fu_38[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1320"
    )
        port map (
      I0 => \n_fu_38_reg[3]\(0),
      I1 => ap_loop_init_int,
      I2 => \n_fu_38_reg[3]\(1),
      I3 => \n_fu_38_reg[3]\(2),
      O => \n_fu_38_reg[2]\(2)
    );
\n_fu_38[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"070E0800"
    )
        port map (
      I0 => \n_fu_38_reg[3]\(2),
      I1 => \n_fu_38_reg[3]\(1),
      I2 => ap_loop_init_int,
      I3 => \n_fu_38_reg[3]\(0),
      I4 => \n_fu_38_reg[3]\(3),
      O => \n_fu_38_reg[2]\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_display_ls_0_1_display_ls_I2C_out is
  port (
    SDA : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDA_ap_vld : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SCL_ap_vld : out STD_LOGIC;
    \ap_CS_fsm_reg[20]\ : out STD_LOGIC;
    grp_I2C_out_fu_66_ap_start_reg_reg : out STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ap_start : in STD_LOGIC;
    grp_I2C_out_fu_66_ap_start_reg : in STD_LOGIC;
    SDA_ap_vld_0 : in STD_LOGIC;
    SCL_ap_vld_0 : in STD_LOGIC;
    grp_I2C_out_fu_66_ap_start_reg0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_display_ls_0_1_display_ls_I2C_out : entity is "display_ls_I2C_out";
end design_1_display_ls_0_1_display_ls_I2C_out;

architecture STRUCTURE of design_1_display_ls_0_1_display_ls_I2C_out is
  signal SDA_ap_vld_INST_0_i_2_n_3 : STD_LOGIC;
  signal \^ap_cs_fsm_reg[20]\ : STD_LOGIC;
  signal d_fu_42 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \d_fu_42[1]_i_2_n_3\ : STD_LOGIC;
  signal \d_fu_42[2]_i_2_n_3\ : STD_LOGIC;
  signal \d_fu_42[3]_i_2_n_3\ : STD_LOGIC;
  signal \d_fu_42[4]_i_2_n_3\ : STD_LOGIC;
  signal \d_fu_42[4]_i_3_n_3\ : STD_LOGIC;
  signal \d_fu_42[5]_i_2_n_3\ : STD_LOGIC;
  signal \d_fu_42[5]_i_3_n_3\ : STD_LOGIC;
  signal \d_fu_42[6]_i_2_n_3\ : STD_LOGIC;
  signal \d_fu_42[6]_i_3_n_3\ : STD_LOGIC;
  signal \d_fu_42[6]_i_4_n_3\ : STD_LOGIC;
  signal \d_fu_42[7]_i_2_n_3\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_29 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_37 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_38 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_39 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_40 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_5 : STD_LOGIC;
  signal \n_fu_38_reg_n_3_[0]\ : STD_LOGIC;
  signal \n_fu_38_reg_n_3_[1]\ : STD_LOGIC;
  signal \n_fu_38_reg_n_3_[2]\ : STD_LOGIC;
  signal \n_fu_38_reg_n_3_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of SDA_ap_vld_INST_0_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \d_fu_42[2]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \d_fu_42[4]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \d_fu_42[5]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \d_fu_42[6]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \d_fu_42[6]_i_4\ : label is "soft_lutpair16";
begin
  \ap_CS_fsm_reg[20]\ <= \^ap_cs_fsm_reg[20]\;
SDA_ap_vld_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(8),
      I1 => Q(6),
      I2 => Q(10),
      I3 => Q(4),
      O => SDA_ap_vld_INST_0_i_2_n_3
    );
SDA_ap_vld_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(20),
      I1 => Q(22),
      O => \^ap_cs_fsm_reg[20]\
    );
\d_fu_42[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF5400"
    )
        port map (
      I0 => Q(18),
      I1 => Q(16),
      I2 => Q(8),
      I3 => \d_fu_42[6]_i_3_n_3\,
      I4 => Q(20),
      I5 => Q(22),
      O => \d_fu_42[1]_i_2_n_3\
    );
\d_fu_42[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABA"
    )
        port map (
      I0 => Q(22),
      I1 => Q(20),
      I2 => Q(14),
      I3 => Q(16),
      I4 => Q(18),
      O => \d_fu_42[2]_i_2_n_3\
    );
\d_fu_42[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5F5F5F5F5F4"
    )
        port map (
      I0 => Q(20),
      I1 => Q(10),
      I2 => Q(22),
      I3 => Q(18),
      I4 => Q(14),
      I5 => Q(16),
      O => \d_fu_42[3]_i_2_n_3\
    );
\d_fu_42[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111110001"
    )
        port map (
      I0 => Q(22),
      I1 => Q(20),
      I2 => Q(10),
      I3 => \d_fu_42[5]_i_3_n_3\,
      I4 => Q(18),
      I5 => \d_fu_42[4]_i_3_n_3\,
      O => \d_fu_42[4]_i_2_n_3\
    );
\d_fu_42[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(14),
      I1 => Q(16),
      O => \d_fu_42[4]_i_3_n_3\
    );
\d_fu_42[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000FD"
    )
        port map (
      I0 => \d_fu_42[5]_i_3_n_3\,
      I1 => Q(10),
      I2 => Q(14),
      I3 => Q(16),
      I4 => Q(18),
      I5 => \^ap_cs_fsm_reg[20]\,
      O => \d_fu_42[5]_i_2_n_3\
    );
\d_fu_42[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(4),
      I1 => Q(8),
      I2 => Q(6),
      O => \d_fu_42[5]_i_3_n_3\
    );
\d_fu_42[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAA8AA"
    )
        port map (
      I0 => \d_fu_42[6]_i_3_n_3\,
      I1 => Q(16),
      I2 => Q(8),
      I3 => Q(4),
      I4 => Q(6),
      I5 => \d_fu_42[6]_i_4_n_3\,
      O => \d_fu_42[6]_i_2_n_3\
    );
\d_fu_42[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => Q(16),
      I1 => Q(14),
      I2 => Q(10),
      O => \d_fu_42[6]_i_3_n_3\
    );
\d_fu_42[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(20),
      I1 => Q(22),
      I2 => Q(18),
      O => \d_fu_42[6]_i_4_n_3\
    );
\d_fu_42[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000FD"
    )
        port map (
      I0 => SDA_ap_vld_INST_0_i_2_n_3,
      I1 => Q(14),
      I2 => Q(16),
      I3 => Q(18),
      I4 => Q(22),
      I5 => Q(20),
      O => \d_fu_42[7]_i_2_n_3\
    );
\d_fu_42_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => p_0_in(0),
      Q => d_fu_42(0),
      R => '0'
    );
\d_fu_42_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => p_0_in(1),
      Q => d_fu_42(1),
      R => '0'
    );
\d_fu_42_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => p_0_in(2),
      Q => d_fu_42(2),
      R => '0'
    );
\d_fu_42_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => p_0_in(3),
      Q => d_fu_42(3),
      R => '0'
    );
\d_fu_42_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => p_0_in(4),
      Q => d_fu_42(4),
      R => '0'
    );
\d_fu_42_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => p_0_in(5),
      Q => d_fu_42(5),
      R => '0'
    );
\d_fu_42_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => p_0_in(6),
      Q => d_fu_42(6),
      R => '0'
    );
\d_fu_42_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => flow_control_loop_pipe_sequential_init_U_n_29,
      Q => d_fu_42(7),
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_display_ls_0_1_display_ls_flow_control_loop_pipe_sequential_init
     port map (
      D(21 downto 0) => D(21 downto 0),
      E(0) => flow_control_loop_pipe_sequential_init_U_n_5,
      Q(23 downto 0) => Q(23 downto 0),
      SCL_ap_vld => SCL_ap_vld,
      SCL_ap_vld_0 => SCL_ap_vld_0,
      SDA(0) => SDA(0),
      \SDA[0]\(7 downto 0) => d_fu_42(7 downto 0),
      SDA_ap_vld => SDA_ap_vld,
      SDA_ap_vld_0 => SDA_ap_vld_0,
      SDA_ap_vld_1 => SDA_ap_vld_INST_0_i_2_n_3,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      \d_fu_42_reg[0]\ => \d_fu_42[1]_i_2_n_3\,
      \d_fu_42_reg[2]\ => \d_fu_42[2]_i_2_n_3\,
      \d_fu_42_reg[3]\ => \d_fu_42[3]_i_2_n_3\,
      \d_fu_42_reg[4]\ => \d_fu_42[4]_i_2_n_3\,
      \d_fu_42_reg[5]\ => \d_fu_42[5]_i_2_n_3\,
      \d_fu_42_reg[6]\(7) => flow_control_loop_pipe_sequential_init_U_n_29,
      \d_fu_42_reg[6]\(6 downto 0) => p_0_in(6 downto 0),
      \d_fu_42_reg[6]_0\ => \d_fu_42[6]_i_2_n_3\,
      \d_fu_42_reg[7]\ => \d_fu_42[7]_i_2_n_3\,
      grp_I2C_out_fu_66_ap_start_reg => grp_I2C_out_fu_66_ap_start_reg,
      grp_I2C_out_fu_66_ap_start_reg0 => grp_I2C_out_fu_66_ap_start_reg0,
      grp_I2C_out_fu_66_ap_start_reg_reg => grp_I2C_out_fu_66_ap_start_reg_reg,
      \n_fu_38_reg[2]\(3) => flow_control_loop_pipe_sequential_init_U_n_37,
      \n_fu_38_reg[2]\(2) => flow_control_loop_pipe_sequential_init_U_n_38,
      \n_fu_38_reg[2]\(1) => flow_control_loop_pipe_sequential_init_U_n_39,
      \n_fu_38_reg[2]\(0) => flow_control_loop_pipe_sequential_init_U_n_40,
      \n_fu_38_reg[3]\(3) => \n_fu_38_reg_n_3_[3]\,
      \n_fu_38_reg[3]\(2) => \n_fu_38_reg_n_3_[2]\,
      \n_fu_38_reg[3]\(1) => \n_fu_38_reg_n_3_[1]\,
      \n_fu_38_reg[3]\(0) => \n_fu_38_reg_n_3_[0]\
    );
\n_fu_38_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => flow_control_loop_pipe_sequential_init_U_n_40,
      Q => \n_fu_38_reg_n_3_[0]\,
      R => '0'
    );
\n_fu_38_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => flow_control_loop_pipe_sequential_init_U_n_39,
      Q => \n_fu_38_reg_n_3_[1]\,
      R => '0'
    );
\n_fu_38_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => flow_control_loop_pipe_sequential_init_U_n_38,
      Q => \n_fu_38_reg_n_3_[2]\,
      R => '0'
    );
\n_fu_38_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_5,
      D => flow_control_loop_pipe_sequential_init_U_n_37,
      Q => \n_fu_38_reg_n_3_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_display_ls_0_1_display_ls is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    SDA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SDA_ap_vld : out STD_LOGIC;
    SCL : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SCL_ap_vld : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_display_ls_0_1_display_ls : entity is "display_ls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000000000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000001000000000";
  attribute ap_ST_fsm_state11 : string;
  attribute ap_ST_fsm_state11 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000010000000000";
  attribute ap_ST_fsm_state12 : string;
  attribute ap_ST_fsm_state12 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000100000000000";
  attribute ap_ST_fsm_state13 : string;
  attribute ap_ST_fsm_state13 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000001000000000000";
  attribute ap_ST_fsm_state14 : string;
  attribute ap_ST_fsm_state14 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000010000000000000";
  attribute ap_ST_fsm_state15 : string;
  attribute ap_ST_fsm_state15 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000100000000000000";
  attribute ap_ST_fsm_state16 : string;
  attribute ap_ST_fsm_state16 of design_1_display_ls_0_1_display_ls : entity is "24'b000000001000000000000000";
  attribute ap_ST_fsm_state17 : string;
  attribute ap_ST_fsm_state17 of design_1_display_ls_0_1_display_ls : entity is "24'b000000010000000000000000";
  attribute ap_ST_fsm_state18 : string;
  attribute ap_ST_fsm_state18 of design_1_display_ls_0_1_display_ls : entity is "24'b000000100000000000000000";
  attribute ap_ST_fsm_state19 : string;
  attribute ap_ST_fsm_state19 of design_1_display_ls_0_1_display_ls : entity is "24'b000001000000000000000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000000000000010";
  attribute ap_ST_fsm_state20 : string;
  attribute ap_ST_fsm_state20 of design_1_display_ls_0_1_display_ls : entity is "24'b000010000000000000000000";
  attribute ap_ST_fsm_state21 : string;
  attribute ap_ST_fsm_state21 of design_1_display_ls_0_1_display_ls : entity is "24'b000100000000000000000000";
  attribute ap_ST_fsm_state22 : string;
  attribute ap_ST_fsm_state22 of design_1_display_ls_0_1_display_ls : entity is "24'b001000000000000000000000";
  attribute ap_ST_fsm_state23 : string;
  attribute ap_ST_fsm_state23 of design_1_display_ls_0_1_display_ls : entity is "24'b010000000000000000000000";
  attribute ap_ST_fsm_state24 : string;
  attribute ap_ST_fsm_state24 of design_1_display_ls_0_1_display_ls : entity is "24'b100000000000000000000000";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000000000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000000000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000000000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000000000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000000001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000000010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of design_1_display_ls_0_1_display_ls : entity is "24'b000000000000000100000000";
  attribute hls_module : string;
  attribute hls_module of design_1_display_ls_0_1_display_ls : entity is "yes";
end design_1_display_ls_0_1_display_ls;

architecture STRUCTURE of design_1_display_ls_0_1_display_ls is
  signal \<const0>\ : STD_LOGIC;
  signal \^scl\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SCL_ap_vld_INST_0_i_1_n_3 : STD_LOGIC;
  signal SCL_ap_vld_INST_0_i_4_n_3 : STD_LOGIC;
  signal \^sda\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SDA_ap_vld_INST_0_i_1_n_3 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_3_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_3_[13]\ : STD_LOGIC;
  signal ap_CS_fsm_state10 : STD_LOGIC;
  signal ap_CS_fsm_state11 : STD_LOGIC;
  signal ap_CS_fsm_state12 : STD_LOGIC;
  signal ap_CS_fsm_state13 : STD_LOGIC;
  signal ap_CS_fsm_state15 : STD_LOGIC;
  signal ap_CS_fsm_state16 : STD_LOGIC;
  signal ap_CS_fsm_state17 : STD_LOGIC;
  signal ap_CS_fsm_state18 : STD_LOGIC;
  signal ap_CS_fsm_state19 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state20 : STD_LOGIC;
  signal ap_CS_fsm_state21 : STD_LOGIC;
  signal ap_CS_fsm_state22 : STD_LOGIC;
  signal ap_CS_fsm_state23 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal grp_I2C_out_fu_66_ap_start_reg : STD_LOGIC;
  signal grp_I2C_out_fu_66_ap_start_reg0 : STD_LOGIC;
  signal grp_I2C_out_fu_66_ap_start_reg_i_3_n_3 : STD_LOGIC;
  signal grp_I2C_out_fu_66_n_28 : STD_LOGIC;
  signal grp_I2C_out_fu_66_n_29 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of SCL_ap_vld_INST_0_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair20";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[10]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[11]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[12]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[13]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[14]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[15]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[16]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[17]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[18]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[19]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[20]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[21]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[22]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[23]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair20";
begin
  SCL(7) <= \<const0>\;
  SCL(6) <= \<const0>\;
  SCL(5) <= \<const0>\;
  SCL(4) <= \<const0>\;
  SCL(3) <= \<const0>\;
  SCL(2) <= \<const0>\;
  SCL(1) <= \<const0>\;
  SCL(0) <= \^scl\(0);
  SDA(7) <= \<const0>\;
  SDA(6) <= \<const0>\;
  SDA(5) <= \<const0>\;
  SDA(4) <= \<const0>\;
  SDA(3) <= \<const0>\;
  SDA(2) <= \<const0>\;
  SDA(1) <= \<const0>\;
  SDA(0) <= \^sda\(0);
  ap_done <= \^scl\(0);
  ap_ready <= \^scl\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
SCL_ap_vld_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_3_[0]\,
      I1 => ap_start,
      I2 => \^scl\(0),
      I3 => SCL_ap_vld_INST_0_i_4_n_3,
      I4 => ap_CS_fsm_state6,
      O => SCL_ap_vld_INST_0_i_1_n_3
    );
SCL_ap_vld_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_CS_fsm_state4,
      I2 => ap_CS_fsm_state20,
      I3 => ap_CS_fsm_state22,
      O => SCL_ap_vld_INST_0_i_4_n_3
    );
SDA_ap_vld_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ap_CS_fsm_state15,
      I1 => ap_CS_fsm_state17,
      I2 => ap_CS_fsm_state19,
      I3 => ap_CS_fsm_state3,
      I4 => ap_CS_fsm_state13,
      I5 => grp_I2C_out_fu_66_n_28,
      O => SDA_ap_vld_INST_0_i_1_n_3
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^scl\(0),
      I1 => ap_start,
      I2 => \ap_CS_fsm_reg_n_3_[0]\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_3_[0]\,
      I1 => ap_start,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_3_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(10),
      Q => ap_CS_fsm_state11,
      R => ap_rst
    );
\ap_CS_fsm_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(11),
      Q => ap_CS_fsm_state12,
      R => ap_rst
    );
\ap_CS_fsm_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(12),
      Q => ap_CS_fsm_state13,
      R => ap_rst
    );
\ap_CS_fsm_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(13),
      Q => \ap_CS_fsm_reg_n_3_[13]\,
      R => ap_rst
    );
\ap_CS_fsm_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(14),
      Q => ap_CS_fsm_state15,
      R => ap_rst
    );
\ap_CS_fsm_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(15),
      Q => ap_CS_fsm_state16,
      R => ap_rst
    );
\ap_CS_fsm_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(16),
      Q => ap_CS_fsm_state17,
      R => ap_rst
    );
\ap_CS_fsm_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(17),
      Q => ap_CS_fsm_state18,
      R => ap_rst
    );
\ap_CS_fsm_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(18),
      Q => ap_CS_fsm_state19,
      R => ap_rst
    );
\ap_CS_fsm_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(19),
      Q => ap_CS_fsm_state20,
      R => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst
    );
\ap_CS_fsm_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(20),
      Q => ap_CS_fsm_state21,
      R => ap_rst
    );
\ap_CS_fsm_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(21),
      Q => ap_CS_fsm_state22,
      R => ap_rst
    );
\ap_CS_fsm_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(22),
      Q => ap_CS_fsm_state23,
      R => ap_rst
    );
\ap_CS_fsm_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(23),
      Q => \^scl\(0),
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state6,
      R => ap_rst
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_state7,
      R => ap_rst
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => ap_CS_fsm_state8,
      R => ap_rst
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(8),
      Q => ap_CS_fsm_state9,
      R => ap_rst
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(9),
      Q => ap_CS_fsm_state10,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_3_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
grp_I2C_out_fu_66: entity work.design_1_display_ls_0_1_display_ls_I2C_out
     port map (
      D(21 downto 0) => ap_NS_fsm(23 downto 2),
      Q(23) => \^scl\(0),
      Q(22) => ap_CS_fsm_state23,
      Q(21) => ap_CS_fsm_state22,
      Q(20) => ap_CS_fsm_state21,
      Q(19) => ap_CS_fsm_state20,
      Q(18) => ap_CS_fsm_state19,
      Q(17) => ap_CS_fsm_state18,
      Q(16) => ap_CS_fsm_state17,
      Q(15) => ap_CS_fsm_state16,
      Q(14) => ap_CS_fsm_state15,
      Q(13) => \ap_CS_fsm_reg_n_3_[13]\,
      Q(12) => ap_CS_fsm_state13,
      Q(11) => ap_CS_fsm_state12,
      Q(10) => ap_CS_fsm_state11,
      Q(9) => ap_CS_fsm_state10,
      Q(8) => ap_CS_fsm_state9,
      Q(7) => ap_CS_fsm_state8,
      Q(6) => ap_CS_fsm_state7,
      Q(5) => ap_CS_fsm_state6,
      Q(4) => ap_CS_fsm_state5,
      Q(3) => ap_CS_fsm_state4,
      Q(2) => ap_CS_fsm_state3,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \ap_CS_fsm_reg_n_3_[0]\,
      SCL_ap_vld => SCL_ap_vld,
      SCL_ap_vld_0 => SCL_ap_vld_INST_0_i_1_n_3,
      SDA(0) => \^sda\(0),
      SDA_ap_vld => SDA_ap_vld,
      SDA_ap_vld_0 => SDA_ap_vld_INST_0_i_1_n_3,
      \ap_CS_fsm_reg[20]\ => grp_I2C_out_fu_66_n_28,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      grp_I2C_out_fu_66_ap_start_reg => grp_I2C_out_fu_66_ap_start_reg,
      grp_I2C_out_fu_66_ap_start_reg0 => grp_I2C_out_fu_66_ap_start_reg0,
      grp_I2C_out_fu_66_ap_start_reg_reg => grp_I2C_out_fu_66_n_29
    );
grp_I2C_out_fu_66_ap_start_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => SCL_ap_vld_INST_0_i_4_n_3,
      I1 => grp_I2C_out_fu_66_ap_start_reg_i_3_n_3,
      I2 => ap_CS_fsm_state8,
      I3 => ap_CS_fsm_state16,
      I4 => ap_CS_fsm_state6,
      O => grp_I2C_out_fu_66_ap_start_reg0
    );
grp_I2C_out_fu_66_ap_start_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_3_[13]\,
      I1 => ap_CS_fsm_state12,
      I2 => ap_CS_fsm_state18,
      I3 => ap_CS_fsm_state10,
      O => grp_I2C_out_fu_66_ap_start_reg_i_3_n_3
    );
grp_I2C_out_fu_66_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_I2C_out_fu_66_n_29,
      Q => grp_I2C_out_fu_66_ap_start_reg,
      R => ap_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_display_ls_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_display_ls_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_display_ls_0_1 : entity is "design_1_display_ls_0_1,display_ls,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_display_ls_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_display_ls_0_1 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_display_ls_0_1 : entity is "display_ls,Vivado 2022.2";
  attribute hls_module : string;
  attribute hls_module of design_1_display_ls_0_1 : entity is "yes";
end design_1_display_ls_0_1;

architecture STRUCTURE of design_1_display_ls_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^scl\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sda\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_SCL_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_inst_SDA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "24'b000000000000000000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of inst : label is "24'b000000000000001000000000";
  attribute ap_ST_fsm_state11 : string;
  attribute ap_ST_fsm_state11 of inst : label is "24'b000000000000010000000000";
  attribute ap_ST_fsm_state12 : string;
  attribute ap_ST_fsm_state12 of inst : label is "24'b000000000000100000000000";
  attribute ap_ST_fsm_state13 : string;
  attribute ap_ST_fsm_state13 of inst : label is "24'b000000000001000000000000";
  attribute ap_ST_fsm_state14 : string;
  attribute ap_ST_fsm_state14 of inst : label is "24'b000000000010000000000000";
  attribute ap_ST_fsm_state15 : string;
  attribute ap_ST_fsm_state15 of inst : label is "24'b000000000100000000000000";
  attribute ap_ST_fsm_state16 : string;
  attribute ap_ST_fsm_state16 of inst : label is "24'b000000001000000000000000";
  attribute ap_ST_fsm_state17 : string;
  attribute ap_ST_fsm_state17 of inst : label is "24'b000000010000000000000000";
  attribute ap_ST_fsm_state18 : string;
  attribute ap_ST_fsm_state18 of inst : label is "24'b000000100000000000000000";
  attribute ap_ST_fsm_state19 : string;
  attribute ap_ST_fsm_state19 of inst : label is "24'b000001000000000000000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "24'b000000000000000000000010";
  attribute ap_ST_fsm_state20 : string;
  attribute ap_ST_fsm_state20 of inst : label is "24'b000010000000000000000000";
  attribute ap_ST_fsm_state21 : string;
  attribute ap_ST_fsm_state21 of inst : label is "24'b000100000000000000000000";
  attribute ap_ST_fsm_state22 : string;
  attribute ap_ST_fsm_state22 of inst : label is "24'b001000000000000000000000";
  attribute ap_ST_fsm_state23 : string;
  attribute ap_ST_fsm_state23 of inst : label is "24'b010000000000000000000000";
  attribute ap_ST_fsm_state24 : string;
  attribute ap_ST_fsm_state24 of inst : label is "24'b100000000000000000000000";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "24'b000000000000000000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "24'b000000000000000000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "24'b000000000000000000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "24'b000000000000000000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "24'b000000000000000001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of inst : label is "24'b000000000000000010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of inst : label is "24'b000000000000000100000000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of SCL : signal is "xilinx.com:signal:data:1.0 SCL DATA";
  attribute X_INTERFACE_PARAMETER of SCL : signal is "XIL_INTERFACENAME SCL, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of SDA : signal is "xilinx.com:signal:data:1.0 SDA DATA";
  attribute X_INTERFACE_PARAMETER of SDA : signal is "XIL_INTERFACENAME SDA, LAYERED_METADATA undef";
begin
  SCL(7) <= \<const0>\;
  SCL(6) <= \<const0>\;
  SCL(5) <= \<const0>\;
  SCL(4) <= \<const0>\;
  SCL(3) <= \<const0>\;
  SCL(2) <= \<const0>\;
  SCL(1) <= \<const0>\;
  SCL(0) <= \^scl\(0);
  SDA(7) <= \<const0>\;
  SDA(6) <= \<const0>\;
  SDA(5) <= \<const0>\;
  SDA(4) <= \<const0>\;
  SDA(3) <= \<const0>\;
  SDA(2) <= \<const0>\;
  SDA(1) <= \<const0>\;
  SDA(0) <= \^sda\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_display_ls_0_1_display_ls
     port map (
      SCL(7 downto 1) => NLW_inst_SCL_UNCONNECTED(7 downto 1),
      SCL(0) => \^scl\(0),
      SCL_ap_vld => SCL_ap_vld,
      SDA(7 downto 1) => NLW_inst_SDA_UNCONNECTED(7 downto 1),
      SDA(0) => \^sda\(0),
      SDA_ap_vld => SDA_ap_vld,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start
    );
end STRUCTURE;

set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]


set_property PACKAGE_PIN D9 [get_ports rst_clk]
set_property IOSTANDARD LVCMOS33 [get_ports rst_clk]









set_property PACKAGE_PIN T14 [get_ports debug_out]
set_property IOSTANDARD LVCMOS33 [get_ports debug_out]













set_property PACKAGE_PIN U16 [get_ports i2c_scl]
set_property IOSTANDARD LVCMOS33 [get_ports i2c_scl]
set_property PACKAGE_PIN P14 [get_ports i2c_sda]
set_property IOSTANDARD LVCMOS33 [get_ports i2c_sda]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PACKAGE_PIN C9 [get_ports rst]





set_property PACKAGE_PIN T11 [get_ports rst_low]
set_property IOSTANDARD LVCMOS33 [get_ports rst_low]
set_property PULLUP true [get_ports i2c_sda]
set_property SLEW SLOW [get_ports i2c_sda]
set_property SLEW SLOW [get_ports rst_low]










create_clock -period 2000.000 -name clk -waveform {0.000 1000.000} [get_ports clk]

set_property PULLUP true [get_ports i2c_scl]

create_clock -period 20000.000 -name clk -waveform {0.000 1000.000} [get_ports clk]
create_clock -period 20000.000 -name clk -waveform {0.000 10000.000} [get_ports clk]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 3 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {controller/state__1[0]} {controller/state__1[1]} {controller/state__1[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list i2c_scl_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list i2c_sda_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list i2c_sda_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list i2c_sda_TRI]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list rst_IBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]

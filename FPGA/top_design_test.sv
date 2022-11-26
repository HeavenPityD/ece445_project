module top_design_test();

timeunit 10ns;	// Half clock cycle at 50 MHz
			// This is the amount of time represented by #1 
timeprecision 1ns;

logic clk = 0;
logic ap_done, ap_idle, ap_ready, SDA_ap_vld, SCL_ap_vld;
logic[7:0] SDA;
logic[7:0] SCL;
logic rst = 0;
logic start = 0;
display_ls design1(.ap_clk(clk), .ap_rst(rst), .ap_start(start), .*);
always begin : CLOCK_GENERATION
#1 clk = ~clk;
end

initial begin: TEST_VECTORS
#2 rst = 1;
#2 rst = 0;
#2 start = 1;
#2 start = 0;
end

endmodule
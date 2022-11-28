module test_i2c_controller();

timeunit 10ns;	// Half clock cycle at 50 MHz
			// This is the amount of time represented by #1 
timeprecision 1ns;

logic clk = 0;
logic rst = 0;
logic rst_clk = 0;
wire i2c_sda;
wire i2c_scl;
logic debug, debug_out;
logic rst_low;
i2c_top top(.*);
always begin : CLOCK_GENERATION
#1 clk = ~clk;
end

initial begin: TEST_VECTORS
#2 rst_clk = 1;
#2 rst_clk = 0;
#2 rst = 1;
#10 rst = 0;
end

endmodule
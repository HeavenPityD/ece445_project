module test_two_line_driver();

timeunit 10ns;	// Half clock cycle at 50 MHz
			// This is the amount of time represented by #1 
timeprecision 1ns;

logic rst_clk = 0;
logic rst_driver = 0;
logic start = 0;
logic clk = 0;
logic rst_low;
logic data;
logic clk_low;
logic scl;
two_line_display_driver driver(.*);

always begin : CLOCK_GENERATION
#1 clk = ~clk;
end

initial begin: TEST_VECTORS
#10 rst_clk = 1;
#2 rst_clk = 0;
#10 rst_driver = 1;
#900 rst_driver = 0;
#1000 start = 1;
#400 start = 0;
end

endmodule
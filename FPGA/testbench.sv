module testbench();

timeunit 10ns;	// Half clock cycle at 50 MHz
			// This is the amount of time represented by #1 
timeprecision 1ns;

logic clk = 0;
logic [167:0] msg = -1;
logic signal = 0;
top topModule(.*);

always begin : CLOCK_GENERATION
#1 clk = ~clk;
end

initial begin: TEST_VECTORS
#10 msg = {24'd000000, 32'd1, 32'd96, 32'd0, 8'd0, 32'd0, 8'd0};

#10 msg = {24'd000000, 32'd1, 32'd104, 32'd0, 8'd1, 32'd1, 8'd0};

#10 msg = {24'd000000, 32'd1, 32'd103, 32'd0, 8'd0, 32'd2, 8'd0};
end

endmodule
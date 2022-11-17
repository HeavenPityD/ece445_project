module top(
    input logic clk,
    input logic [167:0] msg,
    output logic signal
);
logic [167:0] outputMsg;
sequencer seq(.clk(clk), .msgOut(outputMsg), .msg(msg));
processor process(.clk(clk), .msg(outputMsg), .signal(signal));

endmodule
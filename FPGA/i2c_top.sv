module i2c_top(
    input logic rst_clk,
    input logic rst,
    input logic clk,
    input logic debug,
    output logic debug_out,
    output logic rst_low,
    inout i2c_sda,
    inout i2c_scl
);
logic low_clk;
clock_generator generator(.rst(rst_clk),.*);
logic[7:0] data_out;
logic ready;
assign debug_out = debug;
assign rst_low = ~rst;
logic [6:0] addr;
logic [7:0] data;
logic enable = 0;
i2c_controller controller(.clk(low_clk), .addr(7'h3c), .data_in(data), .enable(enable), .rw(0), .*);

logic [4:0] ct;
logic [3:0] state;
logic [3:0] ct_state;

parameter [7:0] data_buf[13] = {8'h78, 8'h00, 8'h38, 8'h39, 8'h14, 8'h78, 8'h5e, 8'h6d, 8'h0c, 8'h01, 8'h06, 8'h40, 8'h41};

always @(posedge low_clk) begin
    if (rst) begin
        ct = 0;
        state = 0;
        ct_state = 0;
        enable = 1;
    end
    else if (state == 0) begin
        if (ready) begin
            data <= data_buf[ct];
            ct += 1;
            state = 1;
        end
    end else if (state == 1) begin
        if (ct_state >= 5) begin
            ct_state = 0;
            if (ct < 13) state = 0;
            else begin
                state = 2;
                enable = 0;
            end
        end else ct_state += 1;
    end
end
endmodule
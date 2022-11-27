module i2c_top(
    input logic rst_clk,
    input logic rst,
    input logic clk,
    output logic debug_out,
    output logic rst_low,
    inout i2c_sda,
    inout i2c_scl
);
//logic low_clk = 0;
//logic [7:0] ct_clk = 0;
//always @(posedge clk_gen) begin
//    if (ct_clk == 200) begin
//        ct_clk = 0;
//        low_clk = ~low_clk;
//    end else ct_clk += 1;
//end
assign debug_out = 1;
//clock_generator generator(.rst(rst_clk),.*);
logic[7:0] data_out;
logic ready;
assign rst_low = ~rst;
logic [6:0] addr;
logic [7:0] data;
logic enable = 0;
i2c_controller controller(.clk(clk), .addr(7'h3c), .data_in(8'h01), .enable(1), .rw(0), .*);

//logic [4:0] ct;
//logic [3:0] state = 0;
//logic [3:0] ct_state;
//parameter [7:0] data_buf[16] = {8'h3c, 8'h00, 8'h38, 8'h00, 8'h39, 8'h00, 8'h14, 8'h78, 8'h5e, 8'h6d, 8'h0c, 8'h01, 8'h06, 8'h00, 8'h40, 8'h41};

//always @(posedge clk) begin
//    if (state == 0 && rst) begin
//        ct = 0;
//        state = 1;
//        ct_state = 0;
//        enable = 1;
//    end
//    else if (state == 1) begin
//        if (ready) begin
//            data <= data_buf[ct];
//            ct += 1;
//            state = 2;
//        end
//    end else if (state == 2) begin
//        if (ct_state >= 5) begin
//            ct_state = 0;
//            if (ct < 16) state = 1;
//            else begin
//                state = 3;
//                enable = 0;
//            end
//        end else ct_state += 1;
//    end
//end
endmodule
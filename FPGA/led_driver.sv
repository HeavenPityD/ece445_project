module led_driver(
    input logic rst,
    input logic clk,
    output logic cclr_neg,
    output logic[3:0] num,
    output logic clk_out,
    input logic next_num
);
logic [3:0] buffer[8];
logic [3:0] ct;
logic rst_out=0;
logic [31:0]balance = 32'd11111111;
logic [2:0] state_1 = 0;
clock_generator gen(.low_clk(clk_out),.*);
always_ff @ (posedge clk_out) begin
    if (next_num == 1) balance = 32'd22222222;
end
always_ff @ (posedge clk_out) begin
//    if (rst_out) begin
//        ct = 1;
//        cclr_neg = 0;
//       state_1 = 1;
    if (state_1 == 0) begin
        cclr_neg = 0;
        state_1 = 1;
        ct = 0;
    end else if (state_1 == 1) begin
        state_1 = 2;
        cclr_neg =1;
    end else begin
        cclr_neg = 1;
        num = buffer[ct];
        if (ct == 7) ct = 0;
        else ct += 1;
    end
end

logic [3:0] calculation[8];
logic [3:0] ct_cal;
logic [3:0] state;
logic [31:0] balance_buf;
integer digit[8] = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000};
always_ff @ (posedge clk) begin
    if (rst) begin
        rst_out = 0;
        state = 0;
        ct_cal = 0;
    end else if (state == 0) begin
        rst_out = 0;
        balance_buf = balance;
        ct_cal = 0;
        state = 1;
    end else if (state == 9) begin
        buffer[ct_cal] = calculation[ct_cal];
        if (ct_cal == 7) begin
            rst_out = 1;
            ct_cal = 0;
            state = 0;
        end else ct_cal += 1;
    end else begin
        if ( (ct_cal+1) * digit[8-state] > balance_buf) begin
            calculation[state-1] = ct_cal;
            balance_buf -= ct_cal * digit[8-state];
            ct_cal = 0;
            state += 1;
        end else ct_cal += 1;
    end
end

endmodule
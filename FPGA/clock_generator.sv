module clock_generator(
    input logic rst,
    input logic clk,
    output logic low_clk
);
logic [7:0] ct;

always_ff @ (posedge clk) begin
    if (rst) begin
        low_clk = 0;
        ct = 0;
    end else if (ct == 200) begin
        low_clk = ~low_clk;
        ct = 0;
    end else ct += 1;
end

endmodule
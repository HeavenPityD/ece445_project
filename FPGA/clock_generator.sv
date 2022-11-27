module clock_generator(
    input logic clk,
    output logic low_clk
);
logic [7:0] ct = 0;

always_ff @ (posedge clk) begin
    if (ct == 0) low_clk = 0;
    else if (ct == 100) low_clk = 1;
    if (ct == 199) ct = 0;
    else ct += 1;
end

endmodule
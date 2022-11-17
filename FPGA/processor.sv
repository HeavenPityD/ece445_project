module processor(
    input logic clk,
    input logic [167:0] msg,
    output logic signal
);
logic [31:0] bidLevel[100];
logic [31:0] askLevel[100];
logic [31:0] bestBid = 0;
logic [31:0] myBid = 1;
logic [31:0] bestAsk = -1;
logic [31:0] myAsk = -2;
logic [31:0] seq = 0;
logic [1:0] state = 0;

always_ff @ (posedge clk) begin
    if (state == 0) begin
        signal = 0;
        if (seq == msg[39:8]) begin
            if (msg[7:0] == 0) begin
                if (msg[47:40] == 0) begin
                    if (msg[111:80] >= myAsk) state = 1;
                    else begin
                        bidLevel[msg[111:80]-50] += msg[143:112];
                        if (msg[111:80] > bestBid) begin
                            bestBid = msg[111:80];
                            myBid = msg[111:80] + 1;
                        end
                    end
                end else begin
                    if (msg[111:80] <= myBid) state = 1;
                    else begin
                        askLevel[msg[111:80]-50] += msg[143:112];
                        if (msg[111:80] < bestAsk) begin
                            bestAsk = msg[111:80];
                            myAsk = msg[111:80] - 1;
                        end
                    end
                end
            seq += 1;
            end
        end
    end else if (state == 1) begin
        state = 0;
        signal = 1;
    end
end

endmodule
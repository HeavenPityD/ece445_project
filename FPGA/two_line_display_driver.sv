module two_line_display_driver(
    (* mark_debug = "yes" *) input logic rst_clk,
    (* mark_debug = "yes" *) input logic debug,
    (* mark_debug = "yes" *) input logic rst_driver,
    (* mark_debug = "yes" *) input logic start,
    (* mark_debug = "yes" *) input logic clk,
    (* mark_debug = "yes" *) output logic rst_low,
    (* mark_debug = "yes" *) output logic data,
    (* mark_debug = "yes" *) output logic scl,
    (* mark_debug = "yes" *) output logic debug_out
);

logic clk_low;
assign rst_low = ~rst_driver;
assign debug_out = debug;
clock_generator clk_gen(.rst(rst_clk), .clk(clk), .low_clk(clk_low));

parameter SLAVE_ADDR = 8'b01111100;
parameter IST_CLR = 10'b0000000001; //clear the screen
parameter IST_ON = 8'b00001100; // turn the display on
parameter NULL_READ = 8'b00000000; // null read

logic [2:0] state;
logic [4:0] slave_ct;
logic [4:0] ist_ct;
logic clk_flag;
always_ff @ (posedge clk_low) begin
    if (rst_driver) begin
        data = 1;
        scl = 1;
    end else if (start) begin
        state = 0;
        clk_flag = 0;
        slave_ct = 0;
        ist_ct = 0;
        data = 1;
        scl = 1;
    end else if (state == 0) begin
        data = 0;
        scl = 1;
        state = 1;
    end else if (state == 1) begin
        if (clk_flag == 0) begin
            clk_flag = ~clk_flag;
            scl = ~scl;
        end else begin
            clk_flag = ~clk_flag;
            if (scl == 0) begin
                if (slave_ct == 8) begin
                    slave_ct = 0;
                    state = 2;
                end else begin
                    data = SLAVE_ADDR[7-slave_ct];
                    slave_ct += 1;
                end
            end
        end
    end else if (state == 2) begin
        if (clk_flag == 0) begin
            clk_flag = ~clk_flag;
            scl = ~scl;
        end else begin
            clk_flag = ~clk_flag;
            if (scl == 0) begin
                if (ist_ct == 8) begin
                    ist_ct = 0;
                    state = 3;
                end else begin
                    data = IST_ON[7-ist_ct];
                    ist_ct += 1;
                end
            end
        end  
    end else if (state == 3) begin
        if (clk_flag == 0) begin
            clk_flag = ~clk_flag;
            scl = ~scl;
        end else begin
            clk_flag = ~clk_flag;
            if (scl == 0) begin
                if (ist_ct == 4) begin
                    ist_ct = 0;
                    state = 4;
                    data = 0;
                end else begin
                    data = IST_ON[7-ist_ct];
                    ist_ct += 1;
                end
            end
        end  
    end else begin
        if (clk_flag == 0) begin
            clk_flag = ~clk_flag;
            scl = ~scl;
        end else begin
            clk_flag = ~clk_flag;
            if (scl == 1) begin
                data = 1;
                state = 4;
            end
        end      
    end
//    if (rst_driver) begin
//        flag = 0;
//        slave_ct = 0;
//        ist_ct = 0;
//    end else if (flag == 0) begin
//        if (ist_ct == 8) begin
//            ist_ct = 0;
//            flag = 1;
//        end else begin
//            data = SLAVE_ADDR[slave_ct];
//            slave_ct += 1;
//        end
//    end else if (flag == 1) begin
//        if (ist_ct == 10) begin
//            ist_ct = 0;
//            flag = 2;
//        end else begin
//            data = IST_ON[ist_ct];
//            ist_ct += 1;
//        end
//    end else begin
//        if (ist_ct == 8) ist_ct = 0;
//        else begin
//            data = NULL_READ[ist_ct];
//            ist_ct += 1;
//        end
//    end
end

endmodule
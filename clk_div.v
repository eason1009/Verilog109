module clock_div (clk_48MHZ,clk_1HZ);

input clh_48MHZ;
output clk_1HZ;

reg[31:0] counter_1HZ;
reg clk_1HZ;

always@(posedge clk_48MHZ)
    begin
        if(counter_1HZ<32'd48000_000)
            counter_1HZ<=counter_1HZ+32'd1;
        else 
            counter_1HZ<=32'd1;
    end

    always@(posedge clk_48MHZ)
    begin
        if(counter_1HZ<=32'd24000_000)
            clk_1HZ<=32'd1;
        else 
            clk_1HZ<=32'd0;
    end

endmodule
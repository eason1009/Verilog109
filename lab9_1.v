module lab9_1(clock,reset,din,dout_digit);

input clock,reset,din;
output [6:0]dout_digit;

wire[3:0]value;

clock_div clock_div(
    .clk_48MHZ (clock),
    .clk_1HZ (clk_1HZ)
);
d_ff d_ff(
    .clock (clk_1HZ),
    .reset (reset),
    .din_d (din),
    .dout_q (value[0])
);

assign value[3:1]=3'b000;

SevenSeg SevenSeg(
    .din (value[3:0]),
    .dout (dout_digit)
);

endmodule
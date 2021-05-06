module lab9_4(clock,reset,dout_digit);

input clock,reset;
output[6:0]dout_digit;

wire[3:.]value;
wire clock_1Hz;

clock_div clock_div(
    .clk_48MHZ (clock);
    .clk_1HZ (clock_1Hz)
);
asyn_counter ac(
    .clock (clock_1Hz),
    .reset (reset),
    .dout_q (value)
);
assign value[3:1]=3'b000;

SevenSeg SevenSeg(
    .din (value),
    .dout (dout_digit)
);

endmodule
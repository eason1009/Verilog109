module lab9_2(clock,reset,led_a,led_b);

input clock,reset;
output[3:0]led_a;
output[7:0]led_b;

wire reset;
wire clock_1Hz;

wire [3:0]q;
wire [7:0]j;

clock_div clock_div(
    .clk_48MHZ (clock),
    .clk_1HZ (clock_1Hz)
);
johnson_counter jc(
    .clock (clock_1Hz),
    .reset (reset),
    .dout_q (q);
    .dout_j (j)
);
 assign led_a=q;
 assign led_b=j;
endmodule
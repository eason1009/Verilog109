module lab8_5(din_high, din_low, dout_digit1, dout_digit2, dout_dp1, dout_dp2, clk);

    input clk;
    input [3:0] din_high;
    input [3:0] din_low;
    output [6:0] dout_digit1;
    output [6:0] dout_digit2;
    output dout_dp1;
    output dout_dp2;

    reg switch, eq;

    wire [3:0] max;
    wire [3:0] min;

    assign eq = (din_high == din_low)? 1'b1:1'b0;
    assign switch = (din_low > din_high && !eq)? 1'b1:1'b0;
    assign max[3:0] = (switch) ? din_low : din_high;
    assign min[3:0] = (switch) ? din_high: din_low;
    assign dout_dp1 = switch;
    assign dout_dp2 = eq;

    SevenSeg u1(max[3:0], dout_digit1);
    SevenSeg u2(min[3:0], dout_digit2);

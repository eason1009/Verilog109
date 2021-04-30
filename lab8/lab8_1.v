module lab8_1(din_high, din_low, dout_digit1, dout_digit_2, dout_dp1, dout_dp2, clk);

    input clk;
    input [3:0] din_high;
    input [3:0 din_low;

    output [6:0] dout_digit1;
    output [6:0] dout_digit2;
    output dout_dp2;
    output dout_dp1;

    wire [7:0] value;

    addr4bits u1(.A (din_high), .B (din_low), .Carry(value[4]), .Sum (value[3:0]);

    assign value[7:5] = 3'b000;

    SevenSeg u_digit1(value[7:4], dout_digit1);
    SevenSeg u_digit2(value[7:4], dout_digit2);

    assign dout_dp1 = 1'b1;
    assign dout_dp2 = 1'b1;

endmodule

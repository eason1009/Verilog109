module johnson_counter(clock,reset,dout_q,dout_j);

input clock,reset;
output [3:0] dout_q;
output [7:0] dout_j;

wire q0,q1,q2,q3;
wire nq3;

dff dff_b0(
    .clock (clock),
    .reset (reset),
    .din_d (nq3),
    .dout_q (q0)
);
dff dff_b1(
    .clock (clock),
    .reset (reset),
    .din_d (q0),
    .dout_q (q1)
);
dff dff_b2(
    .clock (clock),
    .reset (reset),
    .din_d ( ),
    .dout_q ( )
);
dff dff_b3(
    .clock (clock),
    .reset (reset),
    .din_d ( ),
    .dout_q ( ),
    .dout_nq (nq3)
);

assign dout_q={q3,q2,q1,q0};

assign dout_j[0]=(~q3)&(~q0);
assign dout_j[1]=(~q1)&(q0);
assign dout_j[2]=(~q2)&(q1);
assign dout_j[3]=(~q3)&(q2);
assign dout_j[4]=(q3)&(q0);
assign dout_j[5]=(q1)&(~q0);
assign dout_j[6]=(q2)&(~q1);
assign dout_j[7]=(q3)&(~q2);

endmodule
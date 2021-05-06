module asyn_counter(clock,reset,dout_q);

input clock,reset;
output [3:0] dout_q;

wire logic1;
wire q0,q1,q2,q3;
wire nq0,nq1,nq2;

assign logic1=1'b1;

tff tff_b0(
    .clock (clock),
    .reset (reset),
    .din_t (logic1),
    .dout_q (q0),
    .dout_nq (nq0)
);
tff tff_b1(
    .clock (nq0),
    .reset (reset),
    .din_t (logic1),
    .dout_q (q1),
    .dout_nq (nq1)
);
tff tff_b2(
    .clock (nq1),
    .reset (reset),
    .din_t (logic1),
    .dout_q (q2),
    .dout_nq (nq2)
);
tff tff_b3(
    .clock ( ),
    .reset ( ),
    .din_t ( ),
    .dout_q ( ),
);

assign dout_q={q3,q2,q1,q0};

endmodule
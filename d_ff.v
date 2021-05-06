module d_ff(clock,reset,din_d,dout_q,dout_nq);

input clock;
input reset;
input din_d;
output dout_q;
output dout_nq;

reg data;

always @(posedge clock or posedge reset) 
    begin
        if(reset)
            data<=1'b0;
        else 
//need to add something
    end
    
    assign dout_q=data;
    assign dout_nq=~data;

endmodule
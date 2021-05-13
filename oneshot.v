module oneshot(clk,din,dout);

input clk;
input din;

output dout;

reg[1:0]ss;

always@(posedge clk)
begin
    case(ss)
    2'b00:
    if(din)ss<=2'b01;
    2'b01:
    ss<=2'b10;
    2'b10:
    if(~din)ss<=2'b00;
    default:
    ss<=2'b00;
    endcase
end

asssign dout=ss[0];
endmodule
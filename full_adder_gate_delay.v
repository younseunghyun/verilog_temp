`timescale 1ns/1ps
module full_adder_gate_delay(a, b ,c_in, sum, c_out);

input a ,b , c_in;
output sum, c_out;
wire w1, w2, w3, w4;

xor #10  xor$0(w1, a, b);
xor #10 xor$1(sum, w1, c_in);
or #10 or1(w2,a,b);
and #10 and$0(w3,w2,c_in);
and #10 and$1(w4,a,b);
or #10 or$1(c_out,w3,w4);

endmodule

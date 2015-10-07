module full_adder_gate(a, b ,c_in, sum, c_out);

input a ,b , c_in;
output sum, c_out;
wire w1, w2, w3, w4;

xor xor$0(w1, a, b);
xor xor$1(sum, w1, c_in);
or or1(w2,a,b);
and and$0(w3,w2,c_in);
and and$1(w4,a,b);
or or$1(c_out,w3,w4);

endmodule

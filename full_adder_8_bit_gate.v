module full_adder_8_bit_gate(a, b, c_in,sel, sum,c_out, over_flow);

input [7:0] a, b;
input c_in, sel;
output [7:0] sum;
output c_out;
output over_flow;


wire c_out_w, over_flow_w;
wire [7:0] carry;
wire [7:0] b_op;

xor(b_op[0],b[0],sel);
xor(b_op[1],b[1],sel);
xor(b_op[2],b[2],sel);
xor(b_op[3],b[3],sel);
xor(b_op[4],b[4],sel);
xor(b_op[5],b[5],sel);
xor(b_op[6],b[6],sel);
xor(b_op[7],b[7],sel);

xor(c_out,carry[7],sel);
xor(over_flow,carry[7],carry[6]);

full_adder_gate fah$0(.a(a[0]), .b(b_op[0]), .c_in(c_in), .sum(sum[0]), .c_out(carry[0]));
full_adder_gate fah$1(.a(a[1]), .b(b_op[1]), .c_in(carry[0]), .sum(sum[1]), .c_out(carry[1]));
full_adder_gate fah$2(.a(a[2]), .b(b_op[2]), .c_in(carry[1]), .sum(sum[2]), .c_out(carry[2]));
full_adder_gate fah$3(.a(a[3]), .b(b_op[3]), .c_in(carry[2]), .sum(sum[3]), .c_out(carry[3]));
full_adder_gate fah$4(.a(a[4]), .b(b_op[4]), .c_in(carry[3]), .sum(sum[4]), .c_out(carry[4]));
full_adder_gate fah$5(.a(a[5]), .b(b_op[5]), .c_in(carry[4]), .sum(sum[5]), .c_out(carry[5]));
full_adder_gate fah$6(.a(a[6]), .b(b_op[6]), .c_in(carry[5]), .sum(sum[6]), .c_out(carry[6]));
full_adder_gate fah$7(.a(a[7]), .b(b_op[7]), .c_in(carry[6]), .sum(sum[7]), .c_out(carry[7]));




endmodule
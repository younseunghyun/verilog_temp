`timescale 1ns/1ps
module tb_8_bit_full_adder_data_flow;

reg [7:0] a, b;
reg c_in;
reg sel;
wire [7:0] sum;
wire c_out, over_flow;

full_adder_8_bit_data_flow fa8(a,b,c_in,sel,sum,c_out,over_flow);

initial
begin
	a <= 8'b01010101;
	b <= 8'b01000100;
	c_in <= 1'b0;
	sel <= 1'b0;
	#100;
	a <= 8'b10111011;
	b <= 8'b01000100;
	c_in <= 1'b0;
	sel <= 1'b0;
	#100
	a <= 8'b00010001;
	b <= 8'b01010101;
	c_in <= 1'b0;
	sel <= 1'b0;
	#100
	a <= 8'b11111111;
	b <= 8'b01010101;
	c_in <= 1'b0;
	sel <= 1'b0;
	#100
	$finish;
end


initial
$monitor($time, "output sum = %d, c_out = %d", sum, c_out);
endmodule
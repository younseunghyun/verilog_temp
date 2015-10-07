`timescale 1ns/1ps
module tb_bit_counter;

reg clk;
reg input_sig;
reg reset;
wire [7:0] Q;

t_ff t_ff$0(Q,clk,reset);

initial
begin
	clk = 1'b0;
	forever #10 clk = ~clk;
end

initial
begin
	reset = 1'b0;
	#100 reset = 1'b1;
	#200 reset = 1'b0;
	#1000 $finish;
end

endmodule
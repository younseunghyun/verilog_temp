module bit_counter_8bit(input_s,clk, Q,reset);

input reset, input_s, clk;
output[7:0] Q;
wire [7:0] Q;

t_ff tff$0(Q[0], ~clk, reset);
t_ff tff$1(Q[1], ~Q[0], reset);
t_ff tff$2(Q[2], ~Q[1], reset);
t_ff tff$3(Q[3], ~Q[2], reset);
t_ff tff$4(Q[4], ~Q[3], reset);
t_ff tff$5(Q[5], ~Q[4], reset);
t_ff tff$6(Q[6], ~Q[5], reset);
t_ff tff$7(Q[7], ~Q[6], reset);

endmodule

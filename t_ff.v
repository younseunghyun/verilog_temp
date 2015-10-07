module t_ff (q, clk, reset);

input clk, reset;
output reg [7:0] q;

always @(posedge clk or negedge reset)
begin
	if (reset) q = 1'b0;
	else q = q + 1;
end

endmodule

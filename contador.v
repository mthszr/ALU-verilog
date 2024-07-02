module contador(
	input clk,
	output reg [3:0] F
);

always @(posedge clk) begin
	F <= F + 1;
end

endmodule
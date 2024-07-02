module teste(
	input [3:0] a,
	input [3:0] b,
	input sa,
	input sb,
	
	output [4:0] sand,
	output [4:0] sxor
);

assign sand = {sa, a} & {sb, b};
assign sxor = {sa, a} ^ {sb, b};

endmodule
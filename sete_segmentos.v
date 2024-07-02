module sete_segmentos (
	input [5:0] num,
	output reg [0:6] dezenas,
	output reg [0:6] unidades,
);

wire num_dez = num / 10;
wire num_uni = num % 10;

always @(*)

endmodule 
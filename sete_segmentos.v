module sete_segmentos (
	input [5:0] num,
	output reg [0:6] dezenas,
	output reg [0:6] unidades,
);

wire [3:0] num_dez = num / 10;
wire [3:0] num_uni = num % 10;

always @(*) begin

	case (num_dez)
		0: dezenas = 7'b0000001;
		1: dezenas = 7'b1001111;
		2: dezenas = 7'b0010010;
		default: dezenas = 7'b1111111;
	endcase

end

//terminar
always @(*) begin

	case (num_uni)
		0: unidades = 7'b0000001;
		1: unidades = 7'b1001111;
		2: unidades = 7'b0010010;
		default: dezenas = 7'b1111111;
	endcase

end

endmodule 
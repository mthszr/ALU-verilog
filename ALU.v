module ALU(
	input [3:0] a,
	input [3:0] b,
	input sa,
	input sb,
	input [2:0] seletor,
	
	output reg [4:0] F,
	output reg SF,
	output reg status
	
);

wire subtracao = (seletor == 1);

wire [4:0] res_soma;
wire res_sinal;
operacoes (a, b, sa, sb, (seletor == 1), res_soma, res_sinal);


wire maior, menor, igual;
comparador complicado (a, b, sa, sb, igual, maior, menor);

wire [4:0] sand, sxor;
teste simples (.sa(sa), .sb(sb), .a(a), .b(b), .sxor(sxor), .sand(sand));

always @(*) begin

	case (seletor)
		0: begin F = res_soma; SF = res_sinal; end
		1: begin F = res_soma; SF = res_sinal; end
		2: begin F = sb ? -b : b; SF = sb; end //complemento de B (falha -0)
		6: begin F = sand; SF = 0; end
		7: begin F = sxor; SF = 0; end
		default: begin F = 0; SF = 0; end
	endcase

end

always @(*) begin

	case (seletor)
		3: status = igual;
		4: status = maior;
		5: status = menor;
		default: status = 0;
	endcase

end


endmodule
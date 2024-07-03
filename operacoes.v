module operacoes(
	input [3:0] a,
	input [3:0] b,
	input sa, //sinal de a 
	input sb, //snal de b
	
	input subtracao, 
	
	output reg sres, //sinal do resultado
	output reg [4:0] res //resultado
	
);

wire novo_sb = subtracao ^ sb;

always @(*) begin
	//sinais iguais
	if(sa == novo_sb) begin
		sres = sa;
		res = a + b;
	end
	//sinais diferentes
	else begin
		if(a > b) begin
			sres = sa;
			res = a - b;
		end else if (a == b) begin
			sres = 0;
			res = 0;
		end else begin
			sres = novo_sb;
			res = b - a;
		end
	end
end

endmodule
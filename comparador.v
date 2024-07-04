module comparador(
	input [3:0] a,
	input [3:0] b,
	input sa, 
	input sb,
	
	output reg igual,
	output reg maior,
	output reg menor
);

reg novo_sa, novo_sb;
reg [3:0] novo_a, novo_b;

always @(*) begin

	novo_sa = (a == 0) ? 0 : sa;
	novo_sb = (b == 0) ? 0 : sb;
	
	novo_a = novo_sa ? -a : a;
	novo_b = novo_sb ? -b : b;
	
	//sinal diferente
	if (novo_sa != novo_sb) begin
		igual = 0;
		maior = novo_sa < novo_sb;
		menor = novo_sa > novo_sb;
	end else begin
		igual = (novo_a == novo_b);
		maior = (novo_a > novo_b);
		menor = (novo_a < novo_b);
	end
	

end


endmodule
module alu
(
   input    [4:0] rs, rt, 
	input	   [4:0] shamt, 
	input	   [5:0] funct,
   input 	[4:0] rd
);

wire [31:0] add_ans, sub_ans, srl_ans;

add add(rs, rt, add_ans);
sub sub(rs, rt, sub_ans);
srl srl(rt, shamt, srl_ans);
mux mux(add_ans, sub_ans, srl_ans, funct, rd);
endmodule

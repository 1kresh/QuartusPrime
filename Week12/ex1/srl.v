module srl
(
	 input      [4:0] rt, 
	 input	   [4:0] shamt,
	 output     [31:0] srl_ans
);

assign srl_ans = glob.r[rt] >> shamt;
	
endmodule

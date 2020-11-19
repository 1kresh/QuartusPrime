module add
(
	 input      [4:0] rs, rt,
	 output     [31:0] add_ans
);

assign add_ans = glob.r[rs] + glob.r[rt];
	
endmodule

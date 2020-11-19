module sub
(
	 input      [4:0] rs, rt,
	 output     [31:0] sub_ans
);

assign sub_ans = glob.r[rs] - glob.r[rt];
	
endmodule

module mux
(
	input     [31:0] add_ans, sub_ans, srl_ans,
	input     [5:0] funct,
   input     [4:0] rd
);

always@ (*) begin
	case ( funct )
		6'b100000 : begin
		glob.r[rd] <= add_ans;
		end
		6'b100010 : begin
		glob.r[rd] <= sub_ans;
		end
		6'b000010 : begin
		glob.r[rd] <= srl_ans;
		end
	endcase
end
	
endmodule

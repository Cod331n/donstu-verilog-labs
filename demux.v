module demux21(
	input I0,
	input S0,
	output Y1,
	output Y2
);
	assign {Y1,Y2} = S0 ? {1'b0,I0} : {I0,1'b0};
endmodule
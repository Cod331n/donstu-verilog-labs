module summator (
	input wire [7:0] a,
	input wire [7:0] b,
	output wire [7:0] out
);
	assign {out} = a + b;
endmodule
module сomparator(
	input [1:0] a,
 	input [1:0] b,
 	output reg [1:0] grth, lsth, eq
);
	always@(a, b) begin
		grth=0;
		lsth=0;
		eq=0;
		if (a==b)
			 eq=2'b01;
		else if (a>b)
			grth=2'b01;
		else if (a<b)
			lsth=2'b01;
	end
endmodule
module testbench_mul;
	reg [1:0] a;
	reg [1:0] b;
	wire [3:0] out;
	mul uut (
		.a(a),
		.b(b),
		.out(out)
	);
	initial begin
		$dumpfile("mul.vcd");
		$dumpvars(0,uut);
		$monitor($time,"a=%b,b=%b,out=%b", a,b,out);
		a=2'b10;
		b=2'b10;
		#10;
		a=2'b01;
		b=2'b01;
		#10;
		a=2'b10;
		b=2'b01;
		#10;
		$finish;
	end
endmodule
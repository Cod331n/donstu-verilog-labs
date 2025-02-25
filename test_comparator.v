module testbench_comparator;
	reg [1:0] a;
	reg [1:0] b;
	wire [1:0] grth, lsth, eq;
	comparator uut(a, b, grth, lsth, eq);
	initial begin
		$dumpfile("com.vcd");
		$dumpvars(0,uut);
		$monitor($time,"a=%b,b=%b,grth=%b,lsth=%b,eq=%b", a,b,grth,lsth,eq);
		a=0; b=0; 
		#10;
		a=1; b=0; 
		#10;
		a=1; b=1; 
		#10;
		a=0; b=1;
		#10;
		$finish;
	end
endmodule

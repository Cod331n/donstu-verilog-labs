`timescale 1ns / 1ns
module testbench_summator;
	reg [7:0] var_a;
	reg [7:0] var_b;
	wire [7:0] r_out;
	summator uut (
 		.a(var_a),
 		.b(var_b),
 		.out(r_out)
 	);
	initial begin
 		$dumpfile("summator.vcd");
 		$dumpvars(0,testbench_summator);
 		var_a = 8'h55;
 		var_b = 8'h01;
 		#10;
		var_a = 8'h55;
		var_b = 8'h05;
 		#10;
 		var_a = 8'h99;
 		var_b = 8'h05;
 		#10;
 		var_a = 8'h80;
 		var_b = 8'h10;
 		#10;
 		$finish;
	end
endmodule
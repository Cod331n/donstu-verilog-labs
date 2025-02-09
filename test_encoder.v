module testbench_encoder;
	reg [7:0] i;
	wire [2:0] o;
	encoder_8_3 uut (
		.o(o),
		.i(i)
	);
	initial begin
		$dumpfile("encoder.vcd");
		$dumpvars(0, testbench_encoder); 
		$monitor($time,"i=%b,o=%b",i,o); 
		i=8'h01;
		#2 i=8'h02;
		#2 i=8'h04;
		#2 i=8'h08;
		#2 i=8'h10;
		#2 i=8'h20;
		#2 i=8'h40;
		#2 i=8'h80;
	end
	initial #18 $finish;
endmodule

module testbench_decoder;
	reg [2:0] i;
	wire [7:0] o;
	decoder_3_8 uut (
		.o(o),
		.i(i)
	);
	initial begin
		$dumpfile("decoder.vcd");
		$dumpvars(0, testbench_decoder); 
		$monitor($time,"i=%b,o=%b",i,o); 
		i=3'b000;
		#2 i=3'b001;
		#2 i=3'b010;
		#2 i=3'b011;
		#2 i=3'b100;
		#2 i=3'b101;
		#2 i=3'b110;
		#2 i=3'b111;
	end
	initial #18 $finish;
endmodule

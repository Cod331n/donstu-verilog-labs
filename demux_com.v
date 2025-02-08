module testdemux21;
	reg I0, S0;
	wire Y1, Y2;
	demux21 demux(I0, S0, Y1, Y2);
	initial begin
		$dumpfile("test.vcd");
		$dumpvars(0, testdemux21);
    		$monitor($time,"I0=%b,I1=%b,S0=%b,Y=%b", I0,S0,Y1,Y2);
    		#5 S0=0; I0=0; 
    		#5 S0=0; I0=1; 
    		#5 S0=1; I0=0; 
    		#5 S0=1; I0=1; 
		#5 $finish;
  	end
endmodule
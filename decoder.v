module decoder_3_8(o, i);
    output reg [7:0] o;
    input [2:0] i;
    always @ (*) case (i)
        3'b000: o=8'h01;
        3'b001: o=8'h02;
        3'b010: o=8'h04;
        3'b011: o=8'h08;
        3'b100: o=8'h10;
        3'b101: o=8'h20;
        3'b110: o=8'h40;
        3'b111: o=8'h80;
        default: o=8'h00;
    endcase
endmodule
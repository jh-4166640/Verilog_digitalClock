module segment(decin, segout);
 input [3:0] decin;
 output reg [6:0] segout;
 always @*
	case(decin)
		4'h0: segout = 7'b0000001;
		4'h1: segout = 7'b1001111;
		4'h2: segout = 7'b0010010;
		4'h3: segout = 7'b0000110;
		4'h4: segout = 7'b1001100;
		4'h5: segout = 7'b0100100;
		4'h6: segout = 7'b0100000;
		4'h7: segout = 7'b0001101;
		4'h8: segout = 7'b0000000;
		4'h9: segout = 7'b0000100;
		4'hA: segout = 7'b0001000;
		4'hB: segout = 7'b1100000;
		4'hC: segout = 7'b1110010;
		4'hD: segout = 7'b1000010;
		4'hE: segout = 7'b0110000;
		4'hF: segout = 7'b0111000;
		
		default: segout = 7'b1111111;
	endcase
endmodule
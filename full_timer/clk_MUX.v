module clk_MUX(set_sw, clk, btn, clk_out);
	input set_sw, clk, btn;
	output reg clk_out;
	
	always @(*)
		begin
			if(set_sw) 
				clk_out <= !btn;
			else
				clk_out <= clk;
		end

endmodule


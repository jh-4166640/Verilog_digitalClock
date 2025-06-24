module clock_generater(clk,reset,seconds);
	input clk, reset;
	reg [24:0] count;
	output reg seconds;
	
	always @(posedge clk or negedge reset)
	begin
		if(!reset) begin
			count <=0;
			seconds <= 0;
		end
		else if(count == 25'd24999999) begin
			count <=0;
			seconds <= ~seconds;
		end
		else begin
			count <= count + 1'b1;
		end
		
	end
	

endmodule
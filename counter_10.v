module counter_10(clk_in, reset, digit, carry_out);
	input clk_in, reset;
	output reg [3:0] digit;
	output reg carry_out;
	always@(posedge clk_in or negedge reset)
	begin
		if(!reset) begin
			digit <= 0;
			carry_out <= 1'b0;
		end
		else if(digit==4'd9) begin
			digit <= 0;
			carry_out <= 1'b1;
		end
		else begin
			digit <= digit+1;
			carry_out <= 1'b0;
		end	
	end
endmodule
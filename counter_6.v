module counter_6(clk, reset, digit ,carry_out);

	input clk, reset;
	output reg [3:0] digit;
	output reg carry_out;
	
	always@(posedge clk or negedge reset)
		begin
			if(!reset) begin
				digit <= 0;
				carry_out <= 1'b0;
			end
			else if(digit == 4'd5) begin
				digit <= 0;
				carry_out <= 1'b1;
			end
			else begin
				digit <= digit + 1;
				carry_out <= 1'b0;
			end
		end

endmodule
module counter_24(clk, reset, digit0, digit1, carry_out);
	input clk, reset;
	output reg [3:0] digit0;
	output reg [3:0] digit1;
	output reg carry_out;
	reg [4:0] count; 	
	
	always@(posedge clk or negedge reset)
		begin
			if(!reset) begin
				count <= 0;
				digit0 <= 0;
				digit1 <= 0; 
				carry_out <= 1'b0;
			end
			else if(count == 5'd23) begin
				count <= 0;
				digit0 <= 0;
				digit1 <= 0;
				carry_out <= 1'b1;
			end
			else begin
				count <= count + 1;
				digit0 <= (count+1)%10;
				digit1 <= (count+1)/10;
				carry_out <= 1'b0;
			end
		end

endmodule
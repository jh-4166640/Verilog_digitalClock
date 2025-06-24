module full_timer(set_sw, clk, btn_s, btn_m, btn_h, reset, segsec0, segsec1, segmin0, segmin1, seghour0, seghour1);

	 input clk, set_sw, reset;
	 input btn_s, btn_m, btn_h;
	 output [6:0] segsec0, segsec1, segmin0, segmin1, seghour0, seghour1;
	 wire carry_1s, carry_1m, carry_1h, clk_1s, carry_1min, carry_1hour;
	 wire carry_10s, carry_10m, carry_24h;
	 wire [3:0] digit_sec0, digit_sec1, digit_min0, digit_min1, digit_hour0, digit_hour1;
	 reg [3:0] save[7:0];
	 
	 clock_generater clk_gen(clk, reset, clk_1s);
	 
	 clk_MUX SET0(set_sw, clk_1s, btn_s, carry_1s);
	 counter_10 cnt10_sec(carry_1s,reset,digit_sec0, carry_10s);
	 segment seg_sec0(digit_sec0, segsec0);
	 
	 counter_6 cnt6_sec(carry_10s, reset, digit_sec1, carry_1min);
	 segment seg_sec1(digit_sec1, segsec1);
	 
	 clk_MUX SET1(set_sw, carry_1min, btn_m, carry_1m);
	 counter_10 cnt10_min(carry_1m,reset,digit_min0, carry_10m);
	 segment seg_min0(digit_min0, segmin0);
	 
	 counter_6 cnt6_min(carry_10m, reset, digit_min1, carry_1hour);
	 segment seg_min1(digit_min1, segmin1);
	 
	 clk_MUX SET2(set_sw, carry_1hour, btn_h, carry_1h);
	 counter_24 cnt24_hour(carry_1h, reset, digit_hour0, digit_hour1, carry_24h);
	 segment seg_hour0(digit_hour0, seghour0);
	 segment seg_hour1(digit_hour1, seghour1); 
	 
	 

	
endmodule
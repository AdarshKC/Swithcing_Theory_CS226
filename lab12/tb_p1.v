// Test bench for p1.v
module tb_p1();
	reg clk, reset,inp;
	wire Y;
	wire[2:0] curr_state;
	integer i;
	p1 DUT(Y,curr_state,clk,reset,inp);
	reg[20:1] SEQUENCE = 20'b11101101001001101101;
	initial reset = 1'b1;
	always #10 clk = ~clk;
	initial
		begin
		clk = 1'b1;
		reset = 1'b0;
		for (i = 20; i >= 1; i = i - 1)
		begin
			inp = SEQUENCE[i]; #20
			$monitor("SEQUENCE_BIT = %b, Y = %b\n", inp, Y, $time);
		end
	end
endmodule

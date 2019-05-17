// Adarsh Chaudhary 1701CS01 Lab7 tb_p2

module tb_p2(); //test_bench
	reg[2:0] D; 
	wire L;

	integer i;
	p2 UUT (L, D); 
	initial
	begin
	D=0; #10;
	D=1; #10;
	D=2; #10;
	D=3; #10;
	D=4; #10;
	D=5; #10;
	D=6; #10;
	D=7; #10;
	#10 $monitor("D = %b", D, "  |  L = ", L);
	end
endmodule

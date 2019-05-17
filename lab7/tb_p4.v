// Adarsh Chaudhary 1701CS01 Lab7 tb_p4

module tb_p4();
	parameter N=8;
	reg[N-1:0] a, b;
	wire eq, neq, lt, lte, gt, gte;
	
	integer i;
	comparators UUT (eq,neq,lt,lte,gt,gte,a,b);
	initial
	begin
		#10 
		$monitor("a = ", a, " | b = ", b,  " |  eq = ", eq, " | neq = ", neq, " | lt = ", lt, " | lte = ", lte, " | gt = ", gt, " | gte = ", gte);
		for( i = 1; i <= 10; i = i + 1)
		begin
			a=$urandom%2**N-1;
			b=$urandom%2**N-1;
			#10;
			$display("-----------------------------------------");
		end
	end
endmodule

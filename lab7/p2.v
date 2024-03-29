// Adarsh Chaudhary 1701CS01 Lab7 p2

module p2(L, D); //you list all inputs and outputs, by convention outputs go first
	output L; // this tells the compile which lines are inputs and outputs
	input[2:0] D;
	
	not n2 (D2_n, D[2]); // defines the inverter gate, see figure
	not n1 (D1_n, D[1]); // defines the inverter gate, see figure
	not n0 (D0_n, D[0]); // defines the inverter gate, see figure
	
	and a0 (a0_o, D0_n, D2_n); // defines the a0 gate, see figure
	and a1 (a1_o, D1_n, D2_n); // defines the a1 gate, see figure
	or o0 (L, a0_o, a1_o); // defines the o0 gate, see figure
endmodule

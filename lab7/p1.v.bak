// Adarsh Chaudhary 1701CS01 Lab7 p1

module p1(Z, D, S); //you list all inputs and outputs, by convention outputs go first
	output Z;
	input[3:0] D;
	input[1:0] S;
	
	not inv1 (S0_n, S[0]); // defines the inverter gate, see figure
	not inv2 (S1_n, S[1]); // defines the inverter gate, see figure
	
	and and1 (a0_o, D[0], S1_n, S0_n); // defines the a0 gate, see figure
	and and2 (a1_o, D[1], S1_n, S[0]); // defines the a1 gate, see figure
	and and3 (a2_o, D[2], S[1], S0_n); // defines the a2 gate, see figure
	and and4 (a3_o, D[3], S[1], S[0]); // defines the a3 gate, see figure
	
	nor final (Z, a0_o, a1_o, a2_o, a3_o); // defines the o1 gate, see figure
endmodule

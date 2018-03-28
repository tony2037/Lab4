`timescale 1ns/10ps
`include "one_bit_fulladder.v"
module addsub_1bit( S, 
                    cout, 
                    A, 
                    B,
		    cin, 
                    addsub   ) ;

	output S, cout;
	input A, B, cin, addsub ;

	wire y1, y2, B_in, not_B, not_addsub;
	not(not_B, B);
	not(not_addsub, addsub);
	
	and(y1, B, not_addsub);
	and(y2, not_B, addsub);
	or(B_in, y1, y2);

	one_bit_fulladder adder(.S(S), .cout(cout), .A(A), .B(B_in), .cin(cin));

//Note : primary gates doesn't need instance name when called

endmodule

`timescale 1ns/10ps
module one_bit_fulladder( S, 
                          cout, 
                          A, 
                          B, 
                          cin   ) ;

	output S, cout ;
	input A, B, cin ;

	wire y1, y2, y3 ;

	xor ( S, y1, cin ) ;
	or	( cout, y2, y3 ) ;
	xor	( y1, A, B ) ;
	and ( y2, y1, cin ) ;
	and ( y3, A, B ) ;

//Note : primary gates doesn't need instance name when called

endmodule

`timescale 1ns/10ps
module addsub_8bit( S, 
                    cout,
		    ov_flag, 
                    A, 
                    B, 
                    addsub   ) ;

	output S, cout, ov_flag ;
	input A, B, addsub ;
/*
	wire y1, y2, y3 ;

	xor ( S, y1, cin ) ;
	or	( cout, y2, y3 ) ;
	xor	( y1, A, B ) ;
	and ( y2, y1, cin ) ;
	and ( y3, A, B ) ;*/

//Note : primary gates doesn't need instance name when called

endmodule

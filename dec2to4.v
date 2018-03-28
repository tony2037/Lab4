`timescale 1ns/10ps
module dec2to4( d0, 
                d1, 
                d2, 
                d3, 
                a0, 
                a1 ) ;

	 output d0, d1, d2, d3 ;
	 input a0, a1 ;

	 wire b, c ;

	 and (d0, b, c) ;
	 and (d1, c, a0) ;
	 and (d2, b, a1) ;
	 and (d3, a0, a1) ;
	 not (b, a0) ;
	 not (c, a1) ;

endmodule

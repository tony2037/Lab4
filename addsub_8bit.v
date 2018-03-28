`timescale 1ns/10ps
`include "addsub_1bit.v"
module addsub_8bit( output [7:0] S, 
                    output cout,
		    output ov_flag, 
                    input [7:0] A, 
                    input [7:0] B, 
                    input addsub   ) ;

	//output S, cout, ov_flag ;
	//input A, B, addsub ;
/*
	wire y1, y2, y3 ;

	xor ( S, y1, cin ) ;
	or	( cout, y2, y3 ) ;
	xor	( y1, A, B ) ;
	and ( y2, y1, cin ) ;
	and ( y3, A, B ) ;*/
	
	wire cout0, cout1, cout2, cout3, cout4, cout5, cout6;
	addsub_1bit addsub0(.S(S[0]), .cout(cout0), .A(A[0]), .B(B[0]), .cin(0), .addsub(addsub));
	addsub_1bit addsub1(.S(S[1]), .cout(cout1), .A(A[1]), .B(B[1]), .cin(cout0), .addsub(addsub));
	addsub_1bit addsub2(.S(S[2]), .cout(cout2), .A(A[2]), .B(B[2]), .cin(cout1), .addsub(addsub));
	addsub_1bit addsub3(.S(S[3]), .cout(cout3), .A(A[3]), .B(B[3]), .cin(cout2), .addsub(addsub));
	addsub_1bit addsub4(.S(S[4]), .cout(cout4), .A(A[4]), .B(B[4]), .cin(cout3), .addsub(addsub));
	addsub_1bit addsub5(.S(S[5]), .cout(cout5), .A(A[5]), .B(B[5]), .cin(cout4), .addsub(addsub));
	addsub_1bit addsub6(.S(S[6]), .cout(cout6), .A(A[6]), .B(B[6]), .cin(cout5), .addsub(addsub));
	addsub_1bit addsub7(.S(S[7]), .cout(cout), .A(A[7]), .B(B[7]), .cin(cout6), .addsub(addsub));

//Note : primary gates doesn't need instance name when called

endmodule

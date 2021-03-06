`timescale 1ns/10ps
module Dec_BCDto7S( a, 
		b,
		c,
		d,
		e,
		f,
		g,
		A,
		B,
		C,
		D
		) ;

	 output a, b, c, d, e, f, g ;
	 input A, B, C, D ;

	 wire not_A, not_B, not_C, not_D;
	 not(not_A, A);
	 not(not_B, B);
	 not(not_C, C);
	 not(not_D, D);

	 //a	 
	 wire a_term1, a_term2, a_term3, a_term4;
	 and(a_term1, not_A, C);
	 and(a_term2, A, not_B, not_C);
	 and(a_term3, not_A, B, D);
	 and(a_term4, not_B, not_C, not_D);
	 or(a, a_term1, a_term2, a_term3, a_term4);

	 //b
	 wire b_term3,b_term4;
	 and(b_term3, C, D);
	 and(b_term4, not_C, not_D);
	 or(b, A, not_B, b_term3, b_term4);

	 //c
	 or(c, A, B, not_C, D);


	 //d
	 wire d_term2, d_term3, d_term4, d_term5;
	 and(d_term2, not_B, not_D);
	 and(d_term3, not_B, C);
	 and(d_term4, C, not_D);
	 and(d_term5, B, not_C, D);
	 or(d, A, d_term2, d_term3, d_term4, d_term5);


	 //e
	 wire e_term1,e_term2,e_term3;
	 and(e_term1, A, B);
	 and(e_term2, A, not_B, C);
	 and(e_term3, not_B, not_C, not_D);
	 or(e, e_term1, e_term2, e_term3);

	 //f
	 wire f_term1, f_term2;
	 and(f_term1, not_C, not_D);
	 and(f_term2, B, not_C);
	 or(f, f_term1, f_term2, A);

	 //g
	 wire g_term1,g_term2,g_term3,g_term4;
	 and(g_term1, not_A, B, not_C);
	 and(g_term2, A, not_B, not_C);
	 and(g_term3, not_A, not_B, C);
	 and(g_term4, not_A, C, not_D);
	 or(g, g_term1, g_term2, g_term3, g_term4);


endmodule

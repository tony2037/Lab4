module Dec_BCDto7S(A,B,C,D,a,b,c,d,e,f,g);

  input A,B,C,D;
  output a,b,c,d,e,f,g;

  wire Ab,Bb,Cb,Db;

  wire an0,an1,an2,an3;
  wire bn0,bn1;
  wire dn0,dn1,dn2,dn3;

  not(Ab, A);
  not(Bb, B);
  not(Cb, C);
  not(Db, D);

//////a///////
  and(an0, Ab, C);	
  and(an1, A, Bb, Cb);
  and(an2, Ab, B, D);
  and(an3, Bb, Cb, Db);
  or(a, an0, an1, an2, an3);
//////////////

//////b///////
  and(bn0, C, D);
  and(bn1, Cb, Db);
  or(b, A, Bb, bn0, bn1);
//////////////

//////c///////

//////////////

//////d///////
  and(dn0, Bb, Db);	
  and(dn1, Bb, C);
  and(dn2, C, Db);
  and(dn3, B, Cb, D);
  or(d, A, dn0, dn1, dn2, dn3);
//////////////

//////e///////

//////////////

//////f///////

//////////////

//////g///////

//////////////

endmodule
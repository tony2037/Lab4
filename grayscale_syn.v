/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Wed Mar 28 19:15:07 2018
/////////////////////////////////////////////////////////////


module grayscale_DW01_add_1 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  AND2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U3 ( .A(B[7]), .B(carry[7]), .Y(SUM[7]) );
endmodule


module grayscale ( color, gray );
  input [23:0] color;
  output [7:0] gray;
  wire   \temp_r[9] , \temp_r[8] , \temp_r[7] , \temp_r[6] , \temp_r[5] ,
         \temp_r[4] , \temp_r[10] , \temp_g[9] , \temp_g[8] , \temp_g[7] ,
         \temp_g[6] , \temp_g[5] , \temp_g[4] , \temp_g[11] , \temp_g[10] , N7,
         N6, N5, N4, N3, N2, N1, N0, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127;

  grayscale_DW01_add_1 add_1_root_add_31_2 ( .A({1'b0, \temp_r[10] , 
        \temp_r[9] , \temp_r[8] , \temp_r[7] , \temp_r[6] , \temp_r[5] , 
        \temp_r[4] }), .B({\temp_g[11] , \temp_g[10] , \temp_g[9] , 
        \temp_g[8] , \temp_g[7] , \temp_g[6] , \temp_g[5] , \temp_g[4] }), 
        .CI(1'b0), .SUM({N7, N6, N5, N4, N3, N2, N1, N0}) );
  OAI21X1 U61 ( .A0(n124), .A1(n125), .B0(n126), .Y(n121) );
  OAI22X1 U62 ( .A0(color[20]), .A1(n86), .B0(color[22]), .B1(n93), .Y(n83) );
  XOR2X1 U63 ( .A(color[23]), .B(n80), .Y(\temp_r[9] ) );
  NOR2X1 U64 ( .A(n81), .B(n82), .Y(n80) );
  XOR2X1 U65 ( .A(n82), .B(n81), .Y(\temp_r[8] ) );
  XNOR2X1 U66 ( .A(n83), .B(n84), .Y(\temp_r[7] ) );
  XOR2X1 U67 ( .A(color[23]), .B(color[21]), .Y(n84) );
  XNOR2X1 U68 ( .A(n85), .B(n86), .Y(\temp_r[6] ) );
  XOR2X1 U69 ( .A(color[20]), .B(n82), .Y(n85) );
  XNOR2X1 U70 ( .A(n87), .B(n88), .Y(\temp_r[5] ) );
  XOR2X1 U71 ( .A(color[19]), .B(n89), .Y(n87) );
  XNOR2X1 U72 ( .A(n90), .B(n91), .Y(\temp_r[4] ) );
  XNOR2X1 U73 ( .A(color[18]), .B(color[20]), .Y(n90) );
  NOR3BXL U74 ( .AN(color[23]), .B(n82), .C(n81), .Y(\temp_r[10] ) );
  OA21XL U75 ( .A0(n89), .A1(n83), .B0(n92), .Y(n81) );
  OAI2BB1X1 U76 ( .A0N(n83), .A1N(n89), .B0(color[23]), .Y(n92) );
  AND2X1 U77 ( .A(n86), .B(color[20]), .Y(n93) );
  OAI2BB1X1 U78 ( .A0N(n88), .A1N(color[19]), .B0(n94), .Y(n86) );
  OAI21XL U79 ( .A0(color[19]), .A1(n88), .B0(color[21]), .Y(n94) );
  OAI2BB1X1 U80 ( .A0N(n91), .A1N(color[18]), .B0(n95), .Y(n88) );
  OAI21XL U81 ( .A0(color[18]), .A1(n91), .B0(color[20]), .Y(n95) );
  OAI2BB1X1 U82 ( .A0N(color[17]), .A1N(color[19]), .B0(n96), .Y(n91) );
  OAI211X1 U83 ( .A0(color[17]), .A1(color[19]), .B0(color[16]), .C0(color[18]), .Y(n96) );
  CLKINVX1 U84 ( .A(color[21]), .Y(n89) );
  CLKINVX1 U85 ( .A(color[22]), .Y(n82) );
  XNOR2X1 U86 ( .A(color[14]), .B(n97), .Y(\temp_g[9] ) );
  XOR2X1 U87 ( .A(color[13]), .B(n98), .Y(\temp_g[8] ) );
  XNOR2X1 U88 ( .A(n99), .B(n100), .Y(\temp_g[7] ) );
  XNOR2X1 U89 ( .A(color[15]), .B(color[12]), .Y(n99) );
  XNOR2X1 U90 ( .A(n101), .B(n102), .Y(\temp_g[6] ) );
  XNOR2X1 U91 ( .A(color[11]), .B(color[14]), .Y(n101) );
  XNOR2X1 U92 ( .A(n103), .B(n104), .Y(\temp_g[5] ) );
  XNOR2X1 U93 ( .A(color[10]), .B(color[13]), .Y(n103) );
  XOR2X1 U94 ( .A(n105), .B(n106), .Y(\temp_g[4] ) );
  XOR2X1 U95 ( .A(color[9]), .B(color[12]), .Y(n106) );
  AND2X1 U96 ( .A(color[11]), .B(color[8]), .Y(n105) );
  AND2X1 U97 ( .A(color[15]), .B(n107), .Y(\temp_g[11] ) );
  XOR2X1 U98 ( .A(color[15]), .B(n107), .Y(\temp_g[10] ) );
  NOR2BX1 U99 ( .AN(color[14]), .B(n97), .Y(n107) );
  NAND2X1 U100 ( .A(n98), .B(color[13]), .Y(n97) );
  OA22X1 U101 ( .A0(color[12]), .A1(n100), .B0(color[15]), .B1(n108), .Y(n98)
         );
  AND2X1 U102 ( .A(n100), .B(color[12]), .Y(n108) );
  OAI2BB1X1 U103 ( .A0N(n102), .A1N(color[11]), .B0(n109), .Y(n100) );
  OAI21XL U104 ( .A0(color[11]), .A1(n102), .B0(color[14]), .Y(n109) );
  OAI2BB1X1 U105 ( .A0N(n104), .A1N(color[10]), .B0(n110), .Y(n102) );
  OAI21XL U106 ( .A0(color[10]), .A1(n104), .B0(color[13]), .Y(n110) );
  OAI2BB1X1 U107 ( .A0N(color[12]), .A1N(color[9]), .B0(n111), .Y(n104) );
  OAI211X1 U108 ( .A0(color[12]), .A1(color[9]), .B0(color[11]), .C0(color[8]), 
        .Y(n111) );
  XOR2X1 U109 ( .A(N7), .B(n112), .Y(gray[7]) );
  AND2X1 U110 ( .A(n113), .B(N6), .Y(n112) );
  XOR2X1 U111 ( .A(N6), .B(n113), .Y(gray[6]) );
  AND2X1 U112 ( .A(N5), .B(n114), .Y(n113) );
  XOR2X1 U113 ( .A(N5), .B(n114), .Y(gray[5]) );
  OAI2BB1X1 U114 ( .A0N(n115), .A1N(N4), .B0(n116), .Y(n114) );
  OAI21XL U115 ( .A0(N4), .A1(n115), .B0(color[7]), .Y(n116) );
  XNOR2X1 U116 ( .A(n117), .B(n115), .Y(gray[4]) );
  AO22X1 U117 ( .A0(n118), .A1(N3), .B0(n119), .B1(color[6]), .Y(n115) );
  OR2X1 U118 ( .A(N3), .B(n118), .Y(n119) );
  XNOR2X1 U119 ( .A(N4), .B(color[7]), .Y(n117) );
  XNOR2X1 U120 ( .A(n120), .B(n118), .Y(gray[3]) );
  OAI2BB1X1 U121 ( .A0N(n121), .A1N(N2), .B0(n122), .Y(n118) );
  OAI21XL U122 ( .A0(N2), .A1(n121), .B0(color[5]), .Y(n122) );
  XNOR2X1 U123 ( .A(N3), .B(color[6]), .Y(n120) );
  XNOR2X1 U124 ( .A(n123), .B(n121), .Y(gray[2]) );
  OAI2BB1X1 U125 ( .A0N(n124), .A1N(n125), .B0(color[4]), .Y(n126) );
  XNOR2X1 U126 ( .A(N2), .B(color[5]), .Y(n123) );
  XOR2X1 U127 ( .A(n124), .B(n127), .Y(gray[1]) );
  XOR2X1 U128 ( .A(n125), .B(color[4]), .Y(n127) );
  CLKINVX1 U129 ( .A(N1), .Y(n125) );
  NAND2X1 U130 ( .A(color[3]), .B(N0), .Y(n124) );
  XOR2X1 U131 ( .A(color[3]), .B(N0), .Y(gray[0]) );
endmodule


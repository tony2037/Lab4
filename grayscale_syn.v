/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Apr  6 11:48:55 2018
/////////////////////////////////////////////////////////////


module grayscale_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module grayscale_DW01_add_0 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [11:1] carry;

  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .Y(SUM[11]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  OAI2BB1X1 U1 ( .A0N(n1), .A1N(A[2]), .B0(n2), .Y(carry[3]) );
  OAI21XL U2 ( .A0(A[2]), .A1(n1), .B0(B[2]), .Y(n2) );
  OAI2BB1X1 U3 ( .A0N(A[1]), .A1N(B[1]), .B0(n3), .Y(n1) );
  OAI211X1 U4 ( .A0(A[1]), .A1(B[1]), .B0(A[0]), .C0(B[0]), .Y(n3) );
endmodule


module grayscale_DW01_add_1 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n2, n3;
  wire   [11:1] carry;
  assign \B[0]  = B[0];
  assign SUM[0] = \B[0] ;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(n2), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[10]), .B(n3), .Y(SUM[11]) );
  AND2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n2) );
  AND2X2 U3 ( .A(B[9]), .B(carry[9]), .Y(n3) );
  XOR2X1 U4 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  XOR2XL U5 ( .A(B[10]), .B(n3), .Y(SUM[10]) );
  XOR2X1 U6 ( .A(B[9]), .B(carry[9]), .Y(SUM[9]) );
endmodule


module grayscale ( color, gray );
  input [23:0] color;
  output [7:0] gray;
  wire   N14, N15, N16, N17, N18, N19, N20, N21, \temp_g[9] , \temp_g[8] ,
         \temp_g[7] , \temp_g[6] , \temp_g[5] , \temp_g[4] , \temp_g[3] ,
         \temp_g[2] , \temp_g[1] , \temp_g[10] , \temp_g[0] , N9, N8, N7, N6,
         N5, N4, N3, N2, N12, N11, N10, N1, \add_2_root_add_32_2/SUM[3] ,
         \add_2_root_add_32_2/SUM[4] , \add_2_root_add_32_2/SUM[5] ,
         \add_2_root_add_32_2/SUM[6] , \add_2_root_add_32_2/SUM[7] ,
         \add_2_root_add_32_2/SUM[8] , \add_2_root_add_32_2/SUM[9] ,
         \add_2_root_add_32_2/SUM[10] , \add_2_root_add_32_2/SUM[11] , n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71;
  wire   [11:3] temp_total;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;
  assign \temp_g[1]  = color[1];
  assign \temp_g[0]  = color[0];

  grayscale_DW01_inc_0 add_37 ( .A(temp_total[11:4]), .SUM({N21, N20, N19, N18, 
        N17, N16, N15, N14}) );
  grayscale_DW01_add_0 add_0_root_add_32_2 ( .A({\add_2_root_add_32_2/SUM[11] , 
        \add_2_root_add_32_2/SUM[10] , \add_2_root_add_32_2/SUM[9] , 
        \add_2_root_add_32_2/SUM[8] , \add_2_root_add_32_2/SUM[7] , 
        \add_2_root_add_32_2/SUM[6] , \add_2_root_add_32_2/SUM[5] , 
        \add_2_root_add_32_2/SUM[4] , \add_2_root_add_32_2/SUM[3] , 
        color[10:8]}), .B({N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1}), 
        .CI(1'b0), .SUM({temp_total, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2}) );
  grayscale_DW01_add_1 add_1_root_add_32_2 ( .A({1'b0, 1'b0, 1'b0, 
        color[23:16], 1'b0}), .B({1'b0, \temp_g[10] , \temp_g[9] , \temp_g[8] , 
        \temp_g[7] , \temp_g[6] , \temp_g[5] , \temp_g[4] , \temp_g[3] , 
        \temp_g[2] , \temp_g[1] , \temp_g[0] }), .CI(1'b0), .SUM({N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2, N1}) );
  OAI21X1 U21 ( .A0(n64), .A1(n58), .B0(n71), .Y(n63) );
  OAI21X1 U22 ( .A0(n46), .A1(n43), .B0(n52), .Y(n45) );
  OAI2BB1XL U23 ( .A0N(n63), .A1N(color[10]), .B0(n70), .Y(n60) );
  OAI2BB1XL U24 ( .A0N(n45), .A1N(color[2]), .B0(n51), .Y(n42) );
  XOR2X1 U25 ( .A(color[7]), .B(n34), .Y(\temp_g[9] ) );
  NOR2X1 U26 ( .A(n35), .B(n36), .Y(n34) );
  XOR2X1 U27 ( .A(n36), .B(n35), .Y(\temp_g[8] ) );
  XNOR2X1 U28 ( .A(n37), .B(n38), .Y(\temp_g[7] ) );
  XNOR2X1 U29 ( .A(color[5]), .B(color[7]), .Y(n37) );
  XNOR2X1 U30 ( .A(n39), .B(n40), .Y(\temp_g[6] ) );
  XOR2X1 U31 ( .A(color[4]), .B(n36), .Y(n39) );
  XNOR2X1 U32 ( .A(n41), .B(n42), .Y(\temp_g[5] ) );
  XOR2X1 U33 ( .A(color[5]), .B(n43), .Y(n41) );
  XNOR2X1 U34 ( .A(n44), .B(n45), .Y(\temp_g[4] ) );
  XNOR2X1 U35 ( .A(color[2]), .B(color[4]), .Y(n44) );
  XOR2X1 U36 ( .A(n46), .B(n47), .Y(\temp_g[3] ) );
  XOR2X1 U37 ( .A(\temp_g[1] ), .B(n43), .Y(n47) );
  XOR2X1 U38 ( .A(\temp_g[0] ), .B(color[2]), .Y(\temp_g[2] ) );
  NOR3BXL U39 ( .AN(color[7]), .B(n35), .C(n36), .Y(\temp_g[10] ) );
  CLKINVX1 U40 ( .A(color[6]), .Y(n36) );
  AOI21X1 U41 ( .A0(n38), .A1(color[5]), .B0(n48), .Y(n35) );
  OA21XL U42 ( .A0(color[5]), .A1(n38), .B0(color[7]), .Y(n48) );
  OAI2BB1X1 U43 ( .A0N(n40), .A1N(color[4]), .B0(n49), .Y(n38) );
  OAI21XL U44 ( .A0(color[4]), .A1(n40), .B0(color[6]), .Y(n49) );
  AO22X1 U45 ( .A0(n50), .A1(color[5]), .B0(n42), .B1(color[3]), .Y(n40) );
  OR2X1 U46 ( .A(n42), .B(color[3]), .Y(n50) );
  OAI21XL U47 ( .A0(color[2]), .A1(n45), .B0(color[4]), .Y(n51) );
  OAI2BB1X1 U48 ( .A0N(n46), .A1N(n43), .B0(\temp_g[1] ), .Y(n52) );
  CLKINVX1 U49 ( .A(color[3]), .Y(n43) );
  NAND2X1 U50 ( .A(\temp_g[0] ), .B(color[2]), .Y(n46) );
  CLKMX2X2 U51 ( .A(temp_total[11]), .B(N21), .S0(temp_total[3]), .Y(gray[7])
         );
  CLKMX2X2 U52 ( .A(temp_total[10]), .B(N20), .S0(temp_total[3]), .Y(gray[6])
         );
  CLKMX2X2 U53 ( .A(temp_total[9]), .B(N19), .S0(temp_total[3]), .Y(gray[5])
         );
  CLKMX2X2 U54 ( .A(temp_total[8]), .B(N18), .S0(temp_total[3]), .Y(gray[4])
         );
  CLKMX2X2 U55 ( .A(temp_total[7]), .B(N17), .S0(temp_total[3]), .Y(gray[3])
         );
  CLKMX2X2 U56 ( .A(temp_total[6]), .B(N16), .S0(temp_total[3]), .Y(gray[2])
         );
  CLKMX2X2 U57 ( .A(temp_total[5]), .B(N15), .S0(temp_total[3]), .Y(gray[1])
         );
  CLKMX2X2 U58 ( .A(temp_total[4]), .B(N14), .S0(temp_total[3]), .Y(gray[0])
         );
  XOR2X1 U59 ( .A(color[14]), .B(n53), .Y(\add_2_root_add_32_2/SUM[9] ) );
  NOR2X1 U60 ( .A(n54), .B(n55), .Y(n53) );
  XOR2X1 U61 ( .A(n55), .B(n54), .Y(\add_2_root_add_32_2/SUM[8] ) );
  XOR2X1 U62 ( .A(n56), .B(n57), .Y(\add_2_root_add_32_2/SUM[7] ) );
  XOR2X1 U63 ( .A(color[15]), .B(n58), .Y(n56) );
  XNOR2X1 U64 ( .A(n59), .B(n60), .Y(\add_2_root_add_32_2/SUM[6] ) );
  XOR2X1 U65 ( .A(color[11]), .B(n61), .Y(n59) );
  XNOR2X1 U66 ( .A(n62), .B(n63), .Y(\add_2_root_add_32_2/SUM[5] ) );
  XOR2X1 U67 ( .A(color[10]), .B(n55), .Y(n62) );
  XOR2X1 U68 ( .A(n64), .B(n65), .Y(\add_2_root_add_32_2/SUM[4] ) );
  XOR2X1 U69 ( .A(color[9]), .B(n58), .Y(n65) );
  XOR2X1 U70 ( .A(color[8]), .B(color[11]), .Y(\add_2_root_add_32_2/SUM[3] )
         );
  AND2X1 U71 ( .A(color[15]), .B(n66), .Y(\add_2_root_add_32_2/SUM[11] ) );
  XOR2X1 U72 ( .A(color[15]), .B(n66), .Y(\add_2_root_add_32_2/SUM[10] ) );
  NOR3X1 U73 ( .A(n55), .B(n54), .C(n61), .Y(n66) );
  OA21XL U74 ( .A0(n57), .A1(n58), .B0(n67), .Y(n54) );
  OAI21XL U75 ( .A0(color[12]), .A1(n68), .B0(color[15]), .Y(n67) );
  CLKINVX1 U76 ( .A(n57), .Y(n68) );
  AOI2BB2X1 U77 ( .B0(n60), .B1(color[11]), .A0N(n69), .A1N(n61), .Y(n57) );
  CLKINVX1 U78 ( .A(color[14]), .Y(n61) );
  NOR2X1 U79 ( .A(color[11]), .B(n60), .Y(n69) );
  OAI21XL U80 ( .A0(color[10]), .A1(n63), .B0(color[13]), .Y(n70) );
  OAI2BB1X1 U81 ( .A0N(n64), .A1N(n58), .B0(color[9]), .Y(n71) );
  CLKINVX1 U82 ( .A(color[12]), .Y(n58) );
  NAND2X1 U83 ( .A(color[8]), .B(color[11]), .Y(n64) );
  CLKINVX1 U84 ( .A(color[13]), .Y(n55) );
endmodule


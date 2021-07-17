
module encoder_8 ( inc, enc );
  input [2:0] inc;
  output [2:0] enc;
  wire   n2, n3, n5;

  OAI22_X1 U1 ( .A1(n2), .A2(n5), .B1(inc[2]), .B2(n3), .ZN(enc[1]) );
  INV_X1 U2 ( .A(inc[2]), .ZN(n5) );
  OAI21_X1 U3 ( .B1(inc[1]), .B2(inc[0]), .A(n3), .ZN(n2) );
  AOI21_X1 U4 ( .B1(n2), .B2(n3), .A(inc[2]), .ZN(enc[0]) );
  AND3_X1 U5 ( .A1(inc[2]), .A2(n3), .A3(n2), .ZN(enc[2]) );
  NAND2_X1 U6 ( .A1(inc[1]), .A2(inc[0]), .ZN(n3) );
endmodule


module MUX51_GENERIC_N8_0 ( posA, negA, pos2A, neg2A, SEL, Y );
  input [7:0] posA;
  input [7:0] negA;
  input [7:0] pos2A;
  input [7:0] neg2A;
  input [2:0] SEL;
  output [7:0] Y;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24;

  NOR3_X2 U26 ( .A1(SEL[0]), .A2(SEL[2]), .A3(n24), .ZN(n5) );
  NOR3_X2 U28 ( .A1(SEL[1]), .A2(SEL[2]), .A3(n23), .ZN(n8) );
  NOR3_X2 U29 ( .A1(n24), .A2(SEL[2]), .A3(n23), .ZN(n7) );
  NAND2_X1 U2 ( .A1(n13), .A2(n14), .ZN(Y[4]) );
  AOI22_X1 U3 ( .A1(negA[4]), .A2(n5), .B1(neg2A[4]), .B2(n6), .ZN(n14) );
  AOI22_X1 U4 ( .A1(pos2A[4]), .A2(n7), .B1(posA[4]), .B2(n8), .ZN(n13) );
  NAND2_X1 U5 ( .A1(n9), .A2(n10), .ZN(Y[6]) );
  AOI22_X1 U6 ( .A1(pos2A[6]), .A2(n7), .B1(posA[6]), .B2(n8), .ZN(n9) );
  AOI22_X1 U7 ( .A1(negA[6]), .A2(n5), .B1(neg2A[6]), .B2(n6), .ZN(n10) );
  AND3_X1 U8 ( .A1(n23), .A2(n24), .A3(SEL[2]), .ZN(n6) );
  NAND2_X1 U9 ( .A1(n11), .A2(n12), .ZN(Y[5]) );
  AOI22_X1 U10 ( .A1(negA[5]), .A2(n5), .B1(neg2A[5]), .B2(n6), .ZN(n12) );
  AOI22_X1 U11 ( .A1(pos2A[5]), .A2(n7), .B1(posA[5]), .B2(n8), .ZN(n11) );
  INV_X1 U12 ( .A(SEL[1]), .ZN(n24) );
  INV_X1 U13 ( .A(SEL[0]), .ZN(n23) );
  NAND2_X1 U14 ( .A1(n19), .A2(n20), .ZN(Y[1]) );
  AOI22_X1 U15 ( .A1(negA[1]), .A2(n5), .B1(neg2A[1]), .B2(n6), .ZN(n20) );
  AOI22_X1 U16 ( .A1(pos2A[1]), .A2(n7), .B1(posA[1]), .B2(n8), .ZN(n19) );
  NAND2_X1 U17 ( .A1(n17), .A2(n18), .ZN(Y[2]) );
  AOI22_X1 U18 ( .A1(negA[2]), .A2(n5), .B1(neg2A[2]), .B2(n6), .ZN(n18) );
  AOI22_X1 U19 ( .A1(pos2A[2]), .A2(n7), .B1(posA[2]), .B2(n8), .ZN(n17) );
  NAND2_X1 U20 ( .A1(n15), .A2(n16), .ZN(Y[3]) );
  AOI22_X1 U21 ( .A1(negA[3]), .A2(n5), .B1(neg2A[3]), .B2(n6), .ZN(n16) );
  AOI22_X1 U22 ( .A1(pos2A[3]), .A2(n7), .B1(posA[3]), .B2(n8), .ZN(n15) );
  NAND2_X1 U23 ( .A1(n3), .A2(n4), .ZN(Y[7]) );
  AOI22_X1 U24 ( .A1(pos2A[7]), .A2(n7), .B1(posA[7]), .B2(n8), .ZN(n3) );
  AOI22_X1 U25 ( .A1(negA[7]), .A2(n5), .B1(neg2A[7]), .B2(n6), .ZN(n4) );
  NAND2_X1 U27 ( .A1(n21), .A2(n22), .ZN(Y[0]) );
  AOI22_X1 U30 ( .A1(negA[0]), .A2(n5), .B1(neg2A[0]), .B2(n6), .ZN(n22) );
  AOI22_X1 U31 ( .A1(pos2A[0]), .A2(n7), .B1(posA[0]), .B2(n8), .ZN(n21) );
endmodule


module booth_first_row_N8_RAD3_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;
  assign carry[2] = A[1];

  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  XOR2_X1 U2 ( .A(carry[7]), .B(A[7]), .Z(SUM[7]) );
  INV_X1 U1 ( .A(carry[2]), .ZN(SUM[1]) );
endmodule


module booth_first_row_N8_RAD3 ( A, encIn, nextA, sum );
  input [7:0] A;
  input [2:0] encIn;
  output [7:0] nextA;
  output [7:0] sum;
  wire   \mA[0] , n1, n2, n4, n5, n6, n7, n8, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29;
  wire   [2:0] enc_to_mux;
  wire   [7:0] m2A;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign nextA[0] = 1'b0;
  assign nextA[7] = A[6];
  assign nextA[6] = A[5];
  assign nextA[5] = A[4];
  assign nextA[4] = A[3];
  assign nextA[3] = A[2];
  assign nextA[2] = A[1];
  assign nextA[1] = \mA[0] ;
  assign \mA[0]  = A[0];

  XOR2_X1 U23 ( .A(n17), .B(A[7]), .Z(n8) );
  NAND3_X1 U25 ( .A1(n23), .A2(n24), .A3(n20), .ZN(n22) );
  encoder_8 enc ( .inc(encIn), .enc(enc_to_mux) );
  MUX51_GENERIC_N8_0 mux ( .posA({A[7:1], \mA[0] }), .negA({n8, n2, n4, n5, n6, 
        n7, n1, \mA[0] }), .pos2A({A[6:1], \mA[0] , 1'b0}), .neg2A({m2A[7:1], 
        1'b0}), .SEL(enc_to_mux), .Y(sum) );
  booth_first_row_N8_RAD3_DW01_inc_0 add_51 ( .A({n26, n25, n24, n23, n27, n28, 
        n29, 1'b1}), .SUM({m2A[7:1], SYNOPSYS_UNCONNECTED__0}) );
  NOR2_X1 U4 ( .A1(n22), .A2(A[5]), .ZN(n18) );
  XNOR2_X1 U5 ( .A(A[4]), .B(n21), .ZN(n5) );
  XNOR2_X1 U6 ( .A(n18), .B(A[6]), .ZN(n2) );
  XNOR2_X1 U7 ( .A(n22), .B(n25), .ZN(n4) );
  AND2_X1 U8 ( .A1(n23), .A2(n20), .ZN(n21) );
  NAND2_X1 U9 ( .A1(n18), .A2(n26), .ZN(n17) );
  NOR3_X1 U10 ( .A1(A[2]), .A2(\mA[0] ), .A3(A[1]), .ZN(n20) );
  INV_X1 U11 ( .A(A[2]), .ZN(n27) );
  NOR2_X1 U12 ( .A1(A[1]), .A2(\mA[0] ), .ZN(n19) );
  XNOR2_X1 U13 ( .A(n29), .B(A[1]), .ZN(n1) );
  INV_X1 U14 ( .A(\mA[0] ), .ZN(n29) );
  XNOR2_X1 U15 ( .A(A[2]), .B(n19), .ZN(n7) );
  XNOR2_X1 U16 ( .A(n20), .B(A[3]), .ZN(n6) );
  INV_X1 U17 ( .A(A[5]), .ZN(n25) );
  INV_X1 U18 ( .A(A[3]), .ZN(n23) );
  INV_X1 U19 ( .A(A[1]), .ZN(n28) );
  INV_X1 U20 ( .A(A[6]), .ZN(n26) );
  INV_X1 U21 ( .A(A[4]), .ZN(n24) );
endmodule


module encoder_9 ( inc, enc );
  input [2:0] inc;
  output [2:0] enc;
  wire   n5, n7, n8;

  OAI22_X1 U1 ( .A1(n8), .A2(n5), .B1(inc[2]), .B2(n7), .ZN(enc[1]) );
  INV_X1 U2 ( .A(inc[2]), .ZN(n5) );
  OAI21_X1 U3 ( .B1(inc[1]), .B2(inc[0]), .A(n7), .ZN(n8) );
  AOI21_X1 U4 ( .B1(n8), .B2(n7), .A(inc[2]), .ZN(enc[0]) );
  AND3_X1 U5 ( .A1(inc[2]), .A2(n7), .A3(n8), .ZN(enc[2]) );
  NAND2_X1 U6 ( .A1(inc[1]), .A2(inc[0]), .ZN(n7) );
endmodule


module shift_compl_N8_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;
  assign carry[2] = A[1];

  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  XOR2_X1 U2 ( .A(carry[7]), .B(A[7]), .Z(SUM[7]) );
  INV_X1 U1 ( .A(carry[2]), .ZN(SUM[1]) );
endmodule


module shift_compl_N8 ( A, p2A, m2A, p4A, m4A );
  input [7:0] A;
  output [7:0] p2A;
  output [7:0] m2A;
  output [7:0] p4A;
  output [7:0] m4A;
  wire   \A[0] , \add_34/carry[7] , \add_34/carry[6] , \add_34/carry[5] ,
         \add_34/carry[4] , n4, n5, n6, n7, n8, n9, n10;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign p4A[0] = 1'b0;
  assign p4A[1] = 1'b0;
  assign p2A[0] = 1'b0;
  assign p2A[7] = A[6];
  assign p2A[6] = A[5];
  assign p4A[7] = A[5];
  assign p2A[5] = A[4];
  assign p4A[6] = A[4];
  assign p4A[5] = A[3];
  assign p2A[4] = A[3];
  assign p4A[4] = A[2];
  assign p2A[3] = A[2];
  assign p4A[3] = A[1];
  assign p2A[2] = A[1];
  assign m2A[0] = 1'b0;
  assign m4A[2] = \A[0] ;
  assign p4A[2] = \A[0] ;
  assign p2A[1] = \A[0] ;
  assign \A[0]  = A[0];
  assign m4A[0] = 1'b0;
  assign m4A[1] = 1'b0;

  HA_X1 \add_34/U1_1_3  ( .A(n10), .B(n7), .CO(\add_34/carry[4] ), .S(m4A[3])
         );
  HA_X1 \add_34/U1_1_4  ( .A(n9), .B(\add_34/carry[4] ), .CO(\add_34/carry[5] ), .S(m4A[4]) );
  HA_X1 \add_34/U1_1_5  ( .A(n8), .B(\add_34/carry[5] ), .CO(\add_34/carry[6] ), .S(m4A[5]) );
  HA_X1 \add_34/U1_1_6  ( .A(n4), .B(\add_34/carry[6] ), .CO(\add_34/carry[7] ), .S(m4A[6]) );
  XOR2_X1 U15 ( .A(n5), .B(\add_34/carry[7] ), .Z(m4A[7]) );
  shift_compl_N8_DW01_inc_1 add_33 ( .A({n6, n5, n4, n8, n9, n10, n7, 1'b1}), 
        .SUM({m2A[7:1], SYNOPSYS_UNCONNECTED__0}) );
  INV_X1 U3 ( .A(A[4]), .ZN(n4) );
  INV_X1 U5 ( .A(A[5]), .ZN(n5) );
  INV_X1 U6 ( .A(A[1]), .ZN(n10) );
  INV_X1 U7 ( .A(A[2]), .ZN(n9) );
  INV_X1 U8 ( .A(A[3]), .ZN(n8) );
  INV_X1 U9 ( .A(\A[0] ), .ZN(n7) );
  INV_X1 U10 ( .A(A[6]), .ZN(n6) );
endmodule


module MUX51_GENERIC_N8_1 ( posA, negA, pos2A, neg2A, SEL, Y );
  input [7:0] posA;
  input [7:0] negA;
  input [7:0] pos2A;
  input [7:0] neg2A;
  input [2:0] SEL;
  output [7:0] Y;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44;

  NOR3_X2 U26 ( .A1(SEL[0]), .A2(SEL[2]), .A3(n23), .ZN(n42) );
  NOR3_X2 U28 ( .A1(SEL[1]), .A2(SEL[2]), .A3(n24), .ZN(n39) );
  NOR3_X2 U29 ( .A1(n23), .A2(SEL[2]), .A3(n24), .ZN(n40) );
  NAND2_X1 U2 ( .A1(n38), .A2(n37), .ZN(Y[6]) );
  AOI22_X1 U3 ( .A1(negA[6]), .A2(n42), .B1(neg2A[6]), .B2(n41), .ZN(n37) );
  AOI22_X1 U4 ( .A1(pos2A[6]), .A2(n40), .B1(posA[6]), .B2(n39), .ZN(n38) );
  NAND2_X1 U5 ( .A1(n44), .A2(n43), .ZN(Y[7]) );
  AOI22_X1 U6 ( .A1(negA[7]), .A2(n42), .B1(neg2A[7]), .B2(n41), .ZN(n43) );
  AOI22_X1 U7 ( .A1(pos2A[7]), .A2(n40), .B1(posA[7]), .B2(n39), .ZN(n44) );
  AND3_X1 U8 ( .A1(n24), .A2(n23), .A3(SEL[2]), .ZN(n41) );
  INV_X1 U9 ( .A(SEL[1]), .ZN(n23) );
  INV_X1 U10 ( .A(SEL[0]), .ZN(n24) );
  NAND2_X1 U11 ( .A1(n32), .A2(n31), .ZN(Y[3]) );
  AOI22_X1 U12 ( .A1(negA[3]), .A2(n42), .B1(neg2A[3]), .B2(n41), .ZN(n31) );
  AOI22_X1 U13 ( .A1(pos2A[3]), .A2(n40), .B1(posA[3]), .B2(n39), .ZN(n32) );
  NAND2_X1 U14 ( .A1(n34), .A2(n33), .ZN(Y[4]) );
  AOI22_X1 U15 ( .A1(negA[4]), .A2(n42), .B1(neg2A[4]), .B2(n41), .ZN(n33) );
  AOI22_X1 U16 ( .A1(pos2A[4]), .A2(n40), .B1(posA[4]), .B2(n39), .ZN(n34) );
  NAND2_X1 U17 ( .A1(n36), .A2(n35), .ZN(Y[5]) );
  AOI22_X1 U18 ( .A1(negA[5]), .A2(n42), .B1(neg2A[5]), .B2(n41), .ZN(n35) );
  AOI22_X1 U19 ( .A1(pos2A[5]), .A2(n40), .B1(posA[5]), .B2(n39), .ZN(n36) );
  NAND2_X1 U20 ( .A1(n30), .A2(n29), .ZN(Y[2]) );
  AOI22_X1 U21 ( .A1(negA[2]), .A2(n42), .B1(neg2A[2]), .B2(n41), .ZN(n29) );
  AOI22_X1 U22 ( .A1(pos2A[2]), .A2(n40), .B1(posA[2]), .B2(n39), .ZN(n30) );
  NAND2_X1 U23 ( .A1(n26), .A2(n25), .ZN(Y[0]) );
  AOI22_X1 U24 ( .A1(pos2A[0]), .A2(n40), .B1(posA[0]), .B2(n39), .ZN(n26) );
  AOI22_X1 U25 ( .A1(negA[0]), .A2(n42), .B1(neg2A[0]), .B2(n41), .ZN(n25) );
  NAND2_X1 U27 ( .A1(n28), .A2(n27), .ZN(Y[1]) );
  AOI22_X1 U30 ( .A1(pos2A[1]), .A2(n40), .B1(posA[1]), .B2(n39), .ZN(n28) );
  AOI22_X1 U31 ( .A1(negA[1]), .A2(n42), .B1(neg2A[1]), .B2(n41), .ZN(n27) );
endmodule


module FA_224 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n2), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module FA_231 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n6), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module FA_230 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n6), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module FA_229 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n6), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module FA_228 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n6), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module FA_227 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n6), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module FA_226 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n6), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module FA_225 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n6), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module RCA_N8 ( A, B, Ci, S, Co );
  input [7:0] A;
  input [7:0] B;
  output [7:0] S;
  input Ci;
  output Co;

  wire   [7:1] tmp;

  FA_224 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_231 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_230 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_229 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(tmp[4]) );
  FA_228 FAi_4 ( .A(A[4]), .B(B[4]), .Ci(tmp[4]), .S(S[4]), .Co(tmp[5]) );
  FA_227 FAi_5 ( .A(A[5]), .B(B[5]), .Ci(tmp[5]), .S(S[5]), .Co(tmp[6]) );
  FA_226 FAi_6 ( .A(A[6]), .B(B[6]), .Ci(tmp[6]), .S(S[6]), .Co(tmp[7]) );
  FA_225 FAi_7 ( .A(A[7]), .B(B[7]), .Ci(tmp[7]), .S(S[7]), .Co(Co) );
endmodule


module booth_row_N8_RAD3 ( currA, currSum, encIn, nextA, nextSum );
  input [7:0] currA;
  input [7:0] currSum;
  input [2:0] encIn;
  output [7:0] nextA;
  output [7:0] nextSum;

  wire   [2:0] enc_to_mux;
  wire   [7:0] p2A_s;
  wire   [7:0] m2A_s;
  wire   [7:0] m4A_s;
  wire   [7:0] mux_to_add;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;
  assign nextA[1] = 1'b0;
  assign nextA[0] = 1'b0;

  encoder_9 enc ( .inc(encIn), .enc(enc_to_mux) );
  shift_compl_N8 sh_and_cmpl ( .A(currA), .p2A({p2A_s[7:1], 
        SYNOPSYS_UNCONNECTED__0}), .m2A({m2A_s[7:1], SYNOPSYS_UNCONNECTED__1}), 
        .p4A({nextA[7:2], SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}), 
        .m4A({m4A_s[7:2], SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5})
         );
  MUX51_GENERIC_N8_1 mux ( .posA({p2A_s[7:1], 1'b0}), .negA({m2A_s[7:1], 1'b0}), .pos2A({nextA[7:2], 1'b0, 1'b0}), .neg2A({m4A_s[7:2], 1'b0, 1'b0}), .SEL(
        enc_to_mux), .Y(mux_to_add) );
  RCA_N8 add ( .A(mux_to_add), .B(currSum), .Ci(1'b0), .S(nextSum) );
endmodule


module BOOTHMUL ( A, B, P );
  input [3:0] A;
  input [3:0] B;
  output [7:0] P;
  wire   \add_mat[0][15] , \add_mat[0][14] , \add_mat[0][13] ,
         \add_mat[0][12] , \add_mat[0][11] , \add_mat[0][10] , \add_mat[0][9] ,
         \add_mat[0][7] , \add_mat[0][6] , \add_mat[0][5] , \add_mat[0][4] ,
         \add_mat[0][3] , \add_mat[0][2] , \add_mat[0][1] , \add_mat[0][0] ;
  wire   SYNOPSYS_UNCONNECTED__0;

  booth_first_row_N8_RAD3 first_row_0 ( .A({A[3], A[3], A[3], A[3], A}), 
        .encIn({B[1:0], 1'b0}), .nextA({\add_mat[0][15] , \add_mat[0][14] , 
        \add_mat[0][13] , \add_mat[0][12] , \add_mat[0][11] , \add_mat[0][10] , 
        \add_mat[0][9] , SYNOPSYS_UNCONNECTED__0}), .sum({\add_mat[0][7] , 
        \add_mat[0][6] , \add_mat[0][5] , \add_mat[0][4] , \add_mat[0][3] , 
        \add_mat[0][2] , \add_mat[0][1] , \add_mat[0][0] }) );
  booth_row_N8_RAD3 other_rows_1 ( .currA({\add_mat[0][15] , \add_mat[0][14] , 
        \add_mat[0][13] , \add_mat[0][12] , \add_mat[0][11] , \add_mat[0][10] , 
        \add_mat[0][9] , 1'b0}), .currSum({\add_mat[0][7] , \add_mat[0][6] , 
        \add_mat[0][5] , \add_mat[0][4] , \add_mat[0][3] , \add_mat[0][2] , 
        \add_mat[0][1] , \add_mat[0][0] }), .encIn(B[3:1]), .nextSum(P) );
endmodule


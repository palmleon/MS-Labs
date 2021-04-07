
module PGnet_block_0 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module Gen_Gen_0 ( Pik, Gik, Gmj, Gij );
  input Pik, Gik, Gmj;
  output Gij;
  wire   n2;

  AOI21_X1 U1 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(Gij) );
endmodule


module Gen_Gen_9 ( Pik, Gik, Gmj, Gij );
  input Pik, Gik, Gmj;
  output Gij;
  wire   n2;

  AOI21_X1 U1 ( .B1(Gmj), .B2(Pik), .A(Gik), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(Gij) );
endmodule


module Gen_Prop_0 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n2;

  AND2_X1 U1 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
  INV_X1 U2 ( .A(n2), .ZN(Gij) );
  AOI21_X1 U3 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n2) );
endmodule


module Gen_Prop_26 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n2) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Gen_8 ( Pik, Gik, Gmj, Gij );
  input Pik, Gik, Gmj;
  output Gij;
  wire   n18, n19;

  NOR2_X1 U1 ( .A1(Gik), .A2(Pik), .ZN(n18) );
  NOR2_X1 U2 ( .A1(Gmj), .A2(Gik), .ZN(n19) );
  NOR2_X1 U3 ( .A1(n19), .A2(n18), .ZN(Gij) );
endmodule


module Gen_Prop_12 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n2;

  AOI21_X1 U1 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n2) );
  AND2_X1 U2 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
  INV_X1 U3 ( .A(n2), .ZN(Gij) );
endmodule


module Gen_Prop_6 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n2;

  AOI21_X1 U1 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(Gij) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Gen_6 ( Pik, Gik, Gmj, Gij );
  input Pik, Gik, Gmj;
  output Gij;
  wire   net11812, n19;

  INV_X1 U1 ( .A(Gik), .ZN(net11812) );
  NAND2_X1 U2 ( .A1(Gmj), .A2(Pik), .ZN(n19) );
  NAND2_X1 U3 ( .A1(n19), .A2(net11812), .ZN(Gij) );
endmodule


module Gen_Gen_3 ( Pik, Gik, Gmj, Gij );
  input Pik, Gik, Gmj;
  output Gij;
  wire   n13;

  INV_X1 U1 ( .A(n13), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gmj), .B2(Pik), .A(Gik), .ZN(n13) );
endmodule


module Gen_Gen_5 ( Pik, Gik, Gmj, Gij );
  input Pik, Gik, Gmj;
  output Gij;
  wire   n13;

  INV_X1 U1 ( .A(n13), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n13) );
endmodule


module PGnet_block_1 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_2 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_3 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_4 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_5 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_6 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_7 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_8 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_9 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_10 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_11 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_12 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_13 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_14 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_15 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_16 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_17 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_18 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_19 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_20 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_21 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_22 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_23 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_24 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_25 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_26 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_27 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_28 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_29 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_30 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module PGnet_block_31 ( A, B, Pii, Gii );
  input A, B;
  output Pii, Gii;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(Pii) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(Gii) );
endmodule


module Gen_Gen_1 ( Pik, Gik, Gmj, Gij );
  input Pik, Gik, Gmj;
  output Gij;
  wire   net11757, n18;

  INV_X1 U1 ( .A(Gik), .ZN(net11757) );
  NAND2_X1 U2 ( .A1(Gmj), .A2(Pik), .ZN(n18) );
  NAND2_X1 U3 ( .A1(n18), .A2(net11757), .ZN(Gij) );
endmodule


module Gen_Gen_2 ( Pik, Gik, Gmj, Gij );
  input Pik, Gik, Gmj;
  output Gij;
  wire   n18, n19;

  INV_X1 U1 ( .A(Gik), .ZN(n18) );
  NAND2_X1 U2 ( .A1(Gmj), .A2(Pik), .ZN(n19) );
  NAND2_X1 U3 ( .A1(n19), .A2(n18), .ZN(Gij) );
endmodule


module Gen_Gen_4 ( Pik, Gik, Gmj, Gij );
  input Pik, Gik, Gmj;
  output Gij;
  wire   n18, n19;

  INV_X1 U1 ( .A(Gik), .ZN(n18) );
  NAND2_X1 U2 ( .A1(n19), .A2(n18), .ZN(Gij) );
  NAND2_X1 U3 ( .A1(Gmj), .A2(Pik), .ZN(n19) );
endmodule


module Gen_Gen_7 ( Pik, Gik, Gmj, Gij );
  input Pik, Gik, Gmj;
  output Gij;
  wire   n18, n19;

  NOR2_X1 U1 ( .A1(Pik), .A2(Gik), .ZN(n18) );
  NOR2_X1 U2 ( .A1(Gmj), .A2(Gik), .ZN(n19) );
  NOR2_X1 U3 ( .A1(n19), .A2(n18), .ZN(Gij) );
endmodule


module Gen_Prop_1 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  AND2_X1 U1 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
  INV_X1 U2 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U3 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
endmodule


module Gen_Prop_2 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  AND2_X1 U1 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
  INV_X1 U2 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U3 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
endmodule


module Gen_Prop_3 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  AND2_X1 U1 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
  INV_X1 U2 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U3 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
endmodule


module Gen_Prop_21 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_4 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_7 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_8 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_9 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_10 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_11 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_13 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_14 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_15 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_16 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_17 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_18 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_19 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_20 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_22 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_23 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_24 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_25 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  INV_X1 U1 ( .A(n23), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U3 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
endmodule


module Gen_Prop_5 ( Pik, Gik, Pmj, Gmj, Pij, Gij );
  input Pik, Gik, Pmj, Gmj;
  output Pij, Gij;
  wire   n23;

  AOI21_X1 U1 ( .B1(Pik), .B2(Gmj), .A(Gik), .ZN(n23) );
  AND2_X1 U2 ( .A1(Pmj), .A2(Pik), .ZN(Pij) );
  INV_X1 U3 ( .A(n23), .ZN(Gij) );
endmodule


module carry_generator_NBIT32_NBIT_PER_BLOCK4 ( A, B, Cin, Co );
  input [31:0] A;
  input [31:0] B;
  output [7:0] Co;
  input Cin;
  wire   n5, n6, n7, \g[16][16] , \g[16][15] , \g[16][13] , \g[16][9] ,
         \g[15][15] , \g[14][14] , \g[14][13] , \g[13][13] , \g[12][12] ,
         \g[12][11] , \g[12][9] , \g[11][11] , \g[10][10] , \g[10][9] ,
         \g[9][9] , \g[8][8] , \g[8][7] , \g[8][5] , \g[7][7] , \g[6][6] ,
         \g[6][5] , \g[5][5] , \g[4][4] , \g[4][3] , \g[3][3] , \g[2][2] ,
         \g[2][0] , \g[1][1] , \g[1][0] , \p[16][16] , \p[16][15] ,
         \p[16][13] , \p[16][9] , \p[15][15] , \p[14][14] , \p[14][13] ,
         \p[13][13] , \p[12][12] , \p[12][11] , \p[12][9] , \p[11][11] ,
         \p[10][10] , \p[10][9] , \p[9][9] , \p[8][8] , \p[8][7] , \p[8][5] ,
         \p[7][7] , \p[6][6] , \p[6][5] , \p[5][5] , \p[4][4] , \p[4][3] ,
         \p[3][3] , \p[2][2] , \p[1][1] , \g[32][32] , \g[32][31] ,
         \g[32][29] , \g[32][25] , \g[32][17] , \g[31][31] , \g[30][30] ,
         \g[30][29] , \g[29][29] , \g[28][28] , \g[28][27] , \g[28][25] ,
         \g[28][17] , \g[27][27] , \g[26][26] , \g[26][25] , \g[25][25] ,
         \g[24][24] , \g[24][23] , \g[24][21] , \g[24][17] , \g[23][23] ,
         \g[22][22] , \g[22][21] , \g[21][21] , \g[20][20] , \g[20][19] ,
         \g[20][17] , \g[19][19] , \g[18][18] , \g[18][17] , \g[17][17] ,
         \p[32][32] , \p[32][31] , \p[32][29] , \p[32][25] , \p[32][17] ,
         \p[31][31] , \p[30][30] , \p[30][29] , \p[29][29] , \p[28][28] ,
         \p[28][27] , \p[28][25] , \p[28][17] , \p[27][27] , \p[26][26] ,
         \p[26][25] , \p[25][25] , \p[24][24] , \p[24][23] , \p[24][21] ,
         \p[24][17] , \p[23][23] , \p[22][22] , \p[22][21] , \p[21][21] ,
         \p[20][20] , \p[20][19] , \p[20][17] , \p[19][19] , \p[18][18] ,
         \p[18][17] , \p[17][17] , n45;

  PGnet_block_0 PG_i_i_0 ( .A(A[0]), .B(B[0]), .Pii(\p[1][1] ), .Gii(\g[1][1] ) );
  PGnet_block_31 PG_i_i_1 ( .A(A[1]), .B(B[1]), .Pii(\p[2][2] ), .Gii(
        \g[2][2] ) );
  PGnet_block_30 PG_i_i_2 ( .A(A[2]), .B(B[2]), .Pii(\p[3][3] ), .Gii(
        \g[3][3] ) );
  PGnet_block_29 PG_i_i_3 ( .A(A[3]), .B(B[3]), .Pii(\p[4][4] ), .Gii(
        \g[4][4] ) );
  PGnet_block_28 PG_i_i_4 ( .A(A[4]), .B(B[4]), .Pii(\p[5][5] ), .Gii(
        \g[5][5] ) );
  PGnet_block_27 PG_i_i_5 ( .A(A[5]), .B(B[5]), .Pii(\p[6][6] ), .Gii(
        \g[6][6] ) );
  PGnet_block_26 PG_i_i_6 ( .A(A[6]), .B(B[6]), .Pii(\p[7][7] ), .Gii(
        \g[7][7] ) );
  PGnet_block_25 PG_i_i_7 ( .A(A[7]), .B(B[7]), .Pii(\p[8][8] ), .Gii(
        \g[8][8] ) );
  PGnet_block_24 PG_i_i_8 ( .A(A[8]), .B(B[8]), .Pii(\p[9][9] ), .Gii(
        \g[9][9] ) );
  PGnet_block_23 PG_i_i_9 ( .A(A[9]), .B(B[9]), .Pii(\p[10][10] ), .Gii(
        \g[10][10] ) );
  PGnet_block_22 PG_i_i_10 ( .A(A[10]), .B(B[10]), .Pii(\p[11][11] ), .Gii(
        \g[11][11] ) );
  PGnet_block_21 PG_i_i_11 ( .A(A[11]), .B(B[11]), .Pii(\p[12][12] ), .Gii(
        \g[12][12] ) );
  PGnet_block_20 PG_i_i_12 ( .A(A[12]), .B(B[12]), .Pii(\p[13][13] ), .Gii(
        \g[13][13] ) );
  PGnet_block_19 PG_i_i_13 ( .A(A[13]), .B(B[13]), .Pii(\p[14][14] ), .Gii(
        \g[14][14] ) );
  PGnet_block_18 PG_i_i_14 ( .A(A[14]), .B(B[14]), .Pii(\p[15][15] ), .Gii(
        \g[15][15] ) );
  PGnet_block_17 PG_i_i_15 ( .A(A[15]), .B(B[15]), .Pii(\p[16][16] ), .Gii(
        \g[16][16] ) );
  PGnet_block_16 PG_i_i_16 ( .A(A[16]), .B(B[16]), .Pii(\p[17][17] ), .Gii(
        \g[17][17] ) );
  PGnet_block_15 PG_i_i_17 ( .A(A[17]), .B(B[17]), .Pii(\p[18][18] ), .Gii(
        \g[18][18] ) );
  PGnet_block_14 PG_i_i_18 ( .A(A[18]), .B(B[18]), .Pii(\p[19][19] ), .Gii(
        \g[19][19] ) );
  PGnet_block_13 PG_i_i_19 ( .A(A[19]), .B(B[19]), .Pii(\p[20][20] ), .Gii(
        \g[20][20] ) );
  PGnet_block_12 PG_i_i_20 ( .A(A[20]), .B(B[20]), .Pii(\p[21][21] ), .Gii(
        \g[21][21] ) );
  PGnet_block_11 PG_i_i_21 ( .A(A[21]), .B(B[21]), .Pii(\p[22][22] ), .Gii(
        \g[22][22] ) );
  PGnet_block_10 PG_i_i_22 ( .A(A[22]), .B(B[22]), .Pii(\p[23][23] ), .Gii(
        \g[23][23] ) );
  PGnet_block_9 PG_i_i_23 ( .A(A[23]), .B(B[23]), .Pii(\p[24][24] ), .Gii(
        \g[24][24] ) );
  PGnet_block_8 PG_i_i_24 ( .A(A[24]), .B(B[24]), .Pii(\p[25][25] ), .Gii(
        \g[25][25] ) );
  PGnet_block_7 PG_i_i_25 ( .A(A[25]), .B(B[25]), .Pii(\p[26][26] ), .Gii(
        \g[26][26] ) );
  PGnet_block_6 PG_i_i_26 ( .A(A[26]), .B(B[26]), .Pii(\p[27][27] ), .Gii(
        \g[27][27] ) );
  PGnet_block_5 PG_i_i_27 ( .A(A[27]), .B(B[27]), .Pii(\p[28][28] ), .Gii(
        \g[28][28] ) );
  PGnet_block_4 PG_i_i_28 ( .A(A[28]), .B(B[28]), .Pii(\p[29][29] ), .Gii(
        \g[29][29] ) );
  PGnet_block_3 PG_i_i_29 ( .A(A[29]), .B(B[29]), .Pii(\p[30][30] ), .Gii(
        \g[30][30] ) );
  PGnet_block_2 PG_i_i_30 ( .A(A[30]), .B(B[30]), .Pii(\p[31][31] ), .Gii(
        \g[31][31] ) );
  PGnet_block_1 PG_i_i_31 ( .A(A[31]), .B(B[31]), .Pii(\p[32][32] ), .Gii(
        \g[32][32] ) );
  Gen_Gen_0 G_1_0 ( .Pik(\p[1][1] ), .Gik(\g[1][1] ), .Gmj(Cin), .Gij(
        \g[1][0] ) );
  Gen_Gen_9 G_i_0_1_0 ( .Pik(\p[2][2] ), .Gik(\g[2][2] ), .Gmj(\g[1][0] ), 
        .Gij(\g[2][0] ) );
  Gen_Prop_0 PG_i_j_1_1 ( .Pik(\p[4][4] ), .Gik(\g[4][4] ), .Pmj(\p[3][3] ), 
        .Gmj(\g[3][3] ), .Pij(\p[4][3] ), .Gij(\g[4][3] ) );
  Gen_Prop_26 PG_i_j_1_2 ( .Pik(\p[6][6] ), .Gik(\g[6][6] ), .Pmj(\p[5][5] ), 
        .Gmj(\g[5][5] ), .Pij(\p[6][5] ), .Gij(\g[6][5] ) );
  Gen_Prop_25 PG_i_j_1_3 ( .Pik(\p[8][8] ), .Gik(\g[8][8] ), .Pmj(\p[7][7] ), 
        .Gmj(\g[7][7] ), .Pij(\p[8][7] ), .Gij(\g[8][7] ) );
  Gen_Prop_24 PG_i_j_1_4 ( .Pik(\p[10][10] ), .Gik(\g[10][10] ), .Pmj(
        \p[9][9] ), .Gmj(\g[9][9] ), .Pij(\p[10][9] ), .Gij(\g[10][9] ) );
  Gen_Prop_23 PG_i_j_1_5 ( .Pik(\p[12][12] ), .Gik(\g[12][12] ), .Pmj(
        \p[11][11] ), .Gmj(\g[11][11] ), .Pij(\p[12][11] ), .Gij(\g[12][11] )
         );
  Gen_Prop_22 PG_i_j_1_6 ( .Pik(\p[14][14] ), .Gik(\g[14][14] ), .Pmj(
        \p[13][13] ), .Gmj(\g[13][13] ), .Pij(\p[14][13] ), .Gij(\g[14][13] )
         );
  Gen_Prop_21 PG_i_j_1_7 ( .Pik(\p[16][16] ), .Gik(\g[16][16] ), .Pmj(
        \p[15][15] ), .Gmj(\g[15][15] ), .Pij(\p[16][15] ), .Gij(\g[16][15] )
         );
  Gen_Prop_20 PG_i_j_1_8 ( .Pik(\p[18][18] ), .Gik(\g[18][18] ), .Pmj(
        \p[17][17] ), .Gmj(\g[17][17] ), .Pij(\p[18][17] ), .Gij(\g[18][17] )
         );
  Gen_Prop_19 PG_i_j_1_9 ( .Pik(\p[20][20] ), .Gik(\g[20][20] ), .Pmj(
        \p[19][19] ), .Gmj(\g[19][19] ), .Pij(\p[20][19] ), .Gij(\g[20][19] )
         );
  Gen_Prop_18 PG_i_j_1_10 ( .Pik(\p[22][22] ), .Gik(\g[22][22] ), .Pmj(
        \p[21][21] ), .Gmj(\g[21][21] ), .Pij(\p[22][21] ), .Gij(\g[22][21] )
         );
  Gen_Prop_17 PG_i_j_1_11 ( .Pik(\p[24][24] ), .Gik(\g[24][24] ), .Pmj(
        \p[23][23] ), .Gmj(\g[23][23] ), .Pij(\p[24][23] ), .Gij(\g[24][23] )
         );
  Gen_Prop_16 PG_i_j_1_12 ( .Pik(\p[26][26] ), .Gik(\g[26][26] ), .Pmj(
        \p[25][25] ), .Gmj(\g[25][25] ), .Pij(\p[26][25] ), .Gij(\g[26][25] )
         );
  Gen_Prop_15 PG_i_j_1_13 ( .Pik(\p[28][28] ), .Gik(\g[28][28] ), .Pmj(
        \p[27][27] ), .Gmj(\g[27][27] ), .Pij(\p[28][27] ), .Gij(\g[28][27] )
         );
  Gen_Prop_14 PG_i_j_1_14 ( .Pik(\p[30][30] ), .Gik(\g[30][30] ), .Pmj(
        \p[29][29] ), .Gmj(\g[29][29] ), .Pij(\p[30][29] ), .Gij(\g[30][29] )
         );
  Gen_Prop_13 PG_i_j_1_15 ( .Pik(\p[32][32] ), .Gik(\g[32][32] ), .Pmj(
        \p[31][31] ), .Gmj(\g[31][31] ), .Pij(\p[32][31] ), .Gij(\g[32][31] )
         );
  Gen_Gen_8 G_i_0_2_0 ( .Pik(\p[4][3] ), .Gik(\g[4][3] ), .Gmj(\g[2][0] ), 
        .Gij(n7) );
  Gen_Prop_12 PG_i_j_2_1 ( .Pik(\p[8][7] ), .Gik(\g[8][7] ), .Pmj(\p[6][5] ), 
        .Gmj(\g[6][5] ), .Pij(\p[8][5] ), .Gij(\g[8][5] ) );
  Gen_Prop_11 PG_i_j_2_2 ( .Pik(\p[12][11] ), .Gik(\g[12][11] ), .Pmj(
        \p[10][9] ), .Gmj(\g[10][9] ), .Pij(\p[12][9] ), .Gij(\g[12][9] ) );
  Gen_Prop_10 PG_i_j_2_3 ( .Pik(\p[16][15] ), .Gik(\g[16][15] ), .Pmj(
        \p[14][13] ), .Gmj(\g[14][13] ), .Pij(\p[16][13] ), .Gij(\g[16][13] )
         );
  Gen_Prop_9 PG_i_j_2_4 ( .Pik(\p[20][19] ), .Gik(\g[20][19] ), .Pmj(
        \p[18][17] ), .Gmj(\g[18][17] ), .Pij(\p[20][17] ), .Gij(\g[20][17] )
         );
  Gen_Prop_8 PG_i_j_2_5 ( .Pik(\p[24][23] ), .Gik(\g[24][23] ), .Pmj(
        \p[22][21] ), .Gmj(\g[22][21] ), .Pij(\p[24][21] ), .Gij(\g[24][21] )
         );
  Gen_Prop_7 PG_i_j_2_6 ( .Pik(\p[28][27] ), .Gik(\g[28][27] ), .Pmj(
        \p[26][25] ), .Gmj(\g[26][25] ), .Pij(\p[28][25] ), .Gij(\g[28][25] )
         );
  Gen_Prop_6 PG_i_j_2_7 ( .Pik(\p[32][31] ), .Gik(\g[32][31] ), .Pmj(
        \p[30][29] ), .Gmj(\g[30][29] ), .Pij(\p[32][29] ), .Gij(\g[32][29] )
         );
  Gen_Gen_7 G_i_0_3_0 ( .Pik(\p[8][5] ), .Gik(\g[8][5] ), .Gmj(n7), .Gij(n6)
         );
  Gen_Prop_5 PG_i_j_3_1 ( .Pik(\p[16][13] ), .Gik(\g[16][13] ), .Pmj(
        \p[12][9] ), .Gmj(\g[12][9] ), .Pij(\p[16][9] ), .Gij(\g[16][9] ) );
  Gen_Prop_4 PG_i_j_3_2 ( .Pik(\p[24][21] ), .Gik(\g[24][21] ), .Pmj(
        \p[20][17] ), .Gmj(\g[20][17] ), .Pij(\p[24][17] ), .Gij(\g[24][17] )
         );
  Gen_Prop_3 PG_i_j_3_3 ( .Pik(\p[32][29] ), .Gik(\g[32][29] ), .Pmj(
        \p[28][25] ), .Gmj(\g[28][25] ), .Pij(\p[32][25] ), .Gij(\g[32][25] )
         );
  Gen_Gen_6 G_i_0_4_0 ( .Pik(\p[16][9] ), .Gik(\g[16][9] ), .Gmj(n6), .Gij(n5)
         );
  Gen_Prop_2 PG_i_j_4_1 ( .Pik(\p[32][25] ), .Gik(\g[32][25] ), .Pmj(
        \p[24][17] ), .Gmj(\g[24][17] ), .Pij(\p[32][17] ), .Gij(\g[32][17] )
         );
  Gen_Gen_5 G_i_0_5_0 ( .Pik(\p[32][17] ), .Gik(\g[32][17] ), .Gmj(Co[3]), 
        .Gij(Co[7]) );
  Gen_Gen_4 G_i_0_2_1_5 ( .Pik(\p[24][17] ), .Gik(\g[24][17] ), .Gmj(n5), 
        .Gij(Co[5]) );
  Gen_Gen_3 G_i_0_3_1_4 ( .Pik(\p[12][9] ), .Gik(\g[12][9] ), .Gmj(n45), .Gij(
        Co[2]) );
  Gen_Gen_2 G_i_0_3_2_5 ( .Pik(\p[20][17] ), .Gik(\g[20][17] ), .Gmj(n5), 
        .Gij(Co[4]) );
  Gen_Prop_1 PG_i_j_3_3_4 ( .Pik(\p[28][25] ), .Gik(\g[28][25] ), .Pmj(
        \p[24][17] ), .Gmj(\g[24][17] ), .Pij(\p[28][17] ), .Gij(\g[28][17] )
         );
  Gen_Gen_1 G_i_0_3_3_5 ( .Pik(\p[28][17] ), .Gik(\g[28][17] ), .Gmj(n5), 
        .Gij(Co[6]) );
  BUF_X1 U1 ( .A(n6), .Z(n45) );
  BUF_X2 U2 ( .A(n5), .Z(Co[3]) );
  CLKBUF_X1 U3 ( .A(n7), .Z(Co[0]) );
  CLKBUF_X1 U4 ( .A(n45), .Z(Co[1]) );
endmodule


module FA_0 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n2), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module FA_61 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_62 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_63 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_0 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_0 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_63 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_62 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_61 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_GENERIC_N4_0 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n9), .ZN(Y[0]) );
  AOI22_X1 U2 ( .A1(A[0]), .A2(n5), .B1(B[0]), .B2(SEL), .ZN(n9) );
  INV_X1 U3 ( .A(n8), .ZN(Y[1]) );
  AOI22_X1 U4 ( .A1(A[1]), .A2(n5), .B1(B[1]), .B2(SEL), .ZN(n8) );
  INV_X1 U5 ( .A(n7), .ZN(Y[2]) );
  AOI22_X1 U6 ( .A1(A[2]), .A2(n5), .B1(B[2]), .B2(SEL), .ZN(n7) );
  INV_X1 U7 ( .A(SEL), .ZN(n5) );
  INV_X1 U8 ( .A(n6), .ZN(Y[3]) );
  AOI22_X1 U9 ( .A1(A[3]), .A2(n5), .B1(SEL), .B2(B[3]), .ZN(n6) );
endmodule


module FA_57 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_58 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_59 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_60 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_15 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_60 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_59 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_58 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_57 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module CARRY_SEL_BLOCK_N4_0 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_N4_0 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_N4_15 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  MUX21_GENERIC_N4_0 MUX21 ( .A(S0), .B(S1), .SEL(Ci), .Y(S) );
endmodule


module MUX21_GENERIC_N4_7 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n8), .ZN(Y[1]) );
  INV_X1 U2 ( .A(n7), .ZN(Y[2]) );
  INV_X1 U3 ( .A(n6), .ZN(Y[3]) );
  INV_X1 U4 ( .A(n9), .ZN(Y[0]) );
  AOI22_X1 U5 ( .A1(A[3]), .A2(n5), .B1(SEL), .B2(B[3]), .ZN(n6) );
  AOI22_X1 U6 ( .A1(A[2]), .A2(n5), .B1(B[2]), .B2(SEL), .ZN(n7) );
  AOI22_X1 U7 ( .A1(A[1]), .A2(n5), .B1(B[1]), .B2(SEL), .ZN(n8) );
  AOI22_X1 U8 ( .A1(A[0]), .A2(n5), .B1(B[0]), .B2(SEL), .ZN(n9) );
  INV_X1 U9 ( .A(SEL), .ZN(n5) );
endmodule


module FA_49 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_50 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_51 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_52 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_13 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_52 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_51 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_50 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_49 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_53 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_54 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_55 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_56 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_14 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_56 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_55 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_54 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_53 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module CARRY_SEL_BLOCK_N4_7 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_N4_14 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_N4_13 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  MUX21_GENERIC_N4_7 MUX21 ( .A(S0), .B(S1), .SEL(Ci), .Y(S) );
endmodule


module MUX21_GENERIC_N4_5 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n5, n6, n7, n8, n9, n24;

  INV_X1 U1 ( .A(SEL), .ZN(n24) );
  INV_X1 U2 ( .A(SEL), .ZN(n5) );
  INV_X1 U3 ( .A(n8), .ZN(Y[1]) );
  AOI22_X1 U4 ( .A1(n5), .A2(A[1]), .B1(SEL), .B2(B[1]), .ZN(n8) );
  INV_X1 U5 ( .A(n7), .ZN(Y[2]) );
  AOI22_X1 U6 ( .A1(n5), .A2(A[2]), .B1(SEL), .B2(B[2]), .ZN(n7) );
  INV_X1 U7 ( .A(n6), .ZN(Y[3]) );
  AOI22_X1 U8 ( .A1(n24), .A2(A[3]), .B1(SEL), .B2(B[3]), .ZN(n6) );
  INV_X1 U9 ( .A(n9), .ZN(Y[0]) );
  AOI22_X1 U10 ( .A1(n24), .A2(A[0]), .B1(SEL), .B2(B[0]), .ZN(n9) );
endmodule


module FA_33 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_9 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_36 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_35 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_34 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_33 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_37 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_38 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_39 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_40 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_10 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_40 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_39 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_38 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_37 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module CARRY_SEL_BLOCK_N4_5 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_N4_10 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_N4_9 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  MUX21_GENERIC_N4_5 MUX21 ( .A(S0), .B(S1), .SEL(Ci), .Y(S) );
endmodule


module MUX21_GENERIC_N4_4 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n5, n7, n8, n9, net11695, net11764;

  MUX2_X1 U1 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
  INV_X1 U2 ( .A(SEL), .ZN(net11764) );
  INV_X1 U3 ( .A(SEL), .ZN(net11695) );
  INV_X1 U4 ( .A(n8), .ZN(Y[1]) );
  INV_X1 U5 ( .A(n7), .ZN(Y[2]) );
  INV_X1 U6 ( .A(n9), .ZN(Y[0]) );
  AOI22_X1 U7 ( .A1(net11764), .A2(A[2]), .B1(SEL), .B2(B[2]), .ZN(n7) );
  AOI22_X1 U8 ( .A1(n5), .A2(A[1]), .B1(SEL), .B2(B[1]), .ZN(n8) );
  AOI22_X1 U9 ( .A1(net11695), .A2(A[0]), .B1(SEL), .B2(B[0]), .ZN(n9) );
  INV_X1 U10 ( .A(SEL), .ZN(n5) );
endmodule


module FA_25 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_26 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_7 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_28 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_27 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_26 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_25 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_29 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_30 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_31 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_32 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_8 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_32 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_31 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_30 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_29 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module CARRY_SEL_BLOCK_N4_4 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_N4_8 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_N4_7 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  MUX21_GENERIC_N4_4 MUX21 ( .A(S0), .B(S1), .SEL(Ci), .Y(S) );
endmodule


module MUX21_GENERIC_N4_3 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX2_X1 U1 ( .A(A[0]), .B(B[0]), .S(SEL), .Z(Y[0]) );
  MUX2_X1 U2 ( .A(A[2]), .B(B[2]), .S(SEL), .Z(Y[2]) );
  MUX2_X1 U3 ( .A(A[1]), .B(B[1]), .S(SEL), .Z(Y[1]) );
  MUX2_X1 U4 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
endmodule


module FA_17 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_18 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_19 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_5 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_20 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_19 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_18 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_17 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_21 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_22 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_23 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_24 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_6 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_24 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_23 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_22 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_21 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module CARRY_SEL_BLOCK_N4_3 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_N4_6 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_N4_5 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  MUX21_GENERIC_N4_3 MUX21 ( .A(S0), .B(S1), .SEL(Ci), .Y(S) );
endmodule


module MUX21_GENERIC_N4_2 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX2_X1 U1 ( .A(A[0]), .B(B[0]), .S(SEL), .Z(Y[0]) );
  MUX2_X1 U2 ( .A(A[1]), .B(B[1]), .S(SEL), .Z(Y[1]) );
  MUX2_X1 U3 ( .A(A[2]), .B(B[2]), .S(SEL), .Z(Y[2]) );
  MUX2_X1 U4 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
endmodule


module FA_9 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_10 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_3 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_12 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_11 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_10 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_9 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_13 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_14 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_15 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_16 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_4 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_16 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_15 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_14 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_13 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module CARRY_SEL_BLOCK_N4_2 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_N4_4 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_N4_3 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  MUX21_GENERIC_N4_2 MUX21 ( .A(S0), .B(S1), .SEL(Ci), .Y(S) );
endmodule


module MUX21_GENERIC_N4_1 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   net11703, net11704;
  assign Y[1] = net11703;
  assign Y[0] = net11704;

  MUX2_X1 U1 ( .A(A[0]), .B(B[0]), .S(SEL), .Z(net11704) );
  MUX2_X1 U2 ( .A(A[2]), .B(B[2]), .S(SEL), .Z(Y[2]) );
  MUX2_X1 U3 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
  MUX2_X1 U4 ( .A(A[1]), .B(B[1]), .S(SEL), .Z(net11703) );
endmodule


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_1 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_4 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_3 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_2 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_1 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_2 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_8 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_7 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_6 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_5 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module CARRY_SEL_BLOCK_N4_1 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_N4_2 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_N4_1 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  MUX21_GENERIC_N4_1 MUX21 ( .A(S0), .B(S1), .SEL(Ci), .Y(S) );
endmodule


module MUX21_GENERIC_N4_6 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n60, n61, n62, n63, n64, n65;

  INV_X1 U1 ( .A(SEL), .ZN(n60) );
  INV_X1 U2 ( .A(n62), .ZN(Y[1]) );
  INV_X1 U3 ( .A(n63), .ZN(Y[2]) );
  INV_X1 U4 ( .A(n64), .ZN(Y[3]) );
  INV_X1 U5 ( .A(n61), .ZN(Y[0]) );
  AOI22_X1 U6 ( .A1(A[3]), .A2(n65), .B1(SEL), .B2(B[3]), .ZN(n64) );
  AOI22_X1 U7 ( .A1(A[2]), .A2(n60), .B1(B[2]), .B2(SEL), .ZN(n63) );
  AOI22_X1 U8 ( .A1(A[1]), .A2(n60), .B1(B[1]), .B2(SEL), .ZN(n62) );
  AOI22_X1 U9 ( .A1(A[0]), .A2(n65), .B1(B[0]), .B2(SEL), .ZN(n61) );
  INV_X1 U10 ( .A(SEL), .ZN(n65) );
endmodule


module FA_41 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_42 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_43 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_44 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_11 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_44 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_43 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_42 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_41 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_45 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module FA_48 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n34, n35;

  XOR2_X1 U3 ( .A(Ci), .B(n34), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n34) );
  INV_X1 U1 ( .A(n35), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n34), .B2(Ci), .ZN(n35) );
endmodule


module RCA_N4_12 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] tmp;

  FA_48 FAi_0 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(tmp[1]) );
  FA_47 FAi_1 ( .A(A[1]), .B(B[1]), .Ci(tmp[1]), .S(S[1]), .Co(tmp[2]) );
  FA_46 FAi_2 ( .A(A[2]), .B(B[2]), .Ci(tmp[2]), .S(S[2]), .Co(tmp[3]) );
  FA_45 FAi_3 ( .A(A[3]), .B(B[3]), .Ci(tmp[3]), .S(S[3]), .Co(Co) );
endmodule


module CARRY_SEL_BLOCK_N4_6 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_N4_12 RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0) );
  RCA_N4_11 RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  MUX21_GENERIC_N4_6 MUX21 ( .A(S0), .B(S1), .SEL(Ci), .Y(S) );
endmodule


module SUM_GENERATOR_NBIT32_NBIT_PER_BLOCK4 ( A, B, Ci, S );
  input [31:0] A;
  input [31:0] B;
  input [7:0] Ci;
  output [31:0] S;


  CARRY_SEL_BLOCK_N4_0 CSBi_0 ( .A(A[3:0]), .B(B[3:0]), .Ci(Ci[0]), .S(S[3:0])
         );
  CARRY_SEL_BLOCK_N4_7 CSBi_1 ( .A(A[7:4]), .B(B[7:4]), .Ci(Ci[1]), .S(S[7:4])
         );
  CARRY_SEL_BLOCK_N4_6 CSBi_2 ( .A(A[11:8]), .B(B[11:8]), .Ci(Ci[2]), .S(
        S[11:8]) );
  CARRY_SEL_BLOCK_N4_5 CSBi_3 ( .A(A[15:12]), .B(B[15:12]), .Ci(Ci[3]), .S(
        S[15:12]) );
  CARRY_SEL_BLOCK_N4_4 CSBi_4 ( .A(A[19:16]), .B(B[19:16]), .Ci(Ci[4]), .S(
        S[19:16]) );
  CARRY_SEL_BLOCK_N4_3 CSBi_5 ( .A(A[23:20]), .B(B[23:20]), .Ci(Ci[5]), .S(
        S[23:20]) );
  CARRY_SEL_BLOCK_N4_2 CSBi_6 ( .A(A[27:24]), .B(B[27:24]), .Ci(Ci[6]), .S(
        S[27:24]) );
  CARRY_SEL_BLOCK_N4_1 CSBlast ( .A(A[31:28]), .B(B[31:28]), .Ci(Ci[7]), .S(
        S[31:28]) );
endmodule


module P4_ADDER_NBIT32_NBIT_PER_BLOCK4 ( A, B, Ci, S, Co );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Ci;
  output Co;
  wire   n11;
  wire   [7:1] carries;

  carry_generator_NBIT32_NBIT_PER_BLOCK4 CarryG ( .A(A), .B(B), .Cin(Ci), .Co(
        {Co, carries}) );
  SUM_GENERATOR_NBIT32_NBIT_PER_BLOCK4 SumG ( .A({A[31:1], n11}), .B(B), .Ci({
        carries, Ci}), .S(S) );
  BUF_X2 U1 ( .A(A[0]), .Z(n11) );
endmodule


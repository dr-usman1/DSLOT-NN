`timescale 1ps / 1ps
module OA_Tree_9 (
    output z_p,z_n,
    input x1_p,x1_n,x2_p,x2_n,x3_p,x3_n,x4_p,x4_n,
    input y1_p,y1_n,y2_p,y2_n,y3_p,y3_n,y4_p,y4_n,
    input sup_p,sup_n,
    input clk, rst
);
//wire sup_pd0,sup_nd0,sup_pd1,sup_nd1,sup_pd2,sup_nd2,sup_pd3,sup_nd3,sup_pd4,sup_nd4,sup_pd5,sup_nd5,sup_pd6,sup_nd6,sup_pd7,sup_nd7;
wire [9:0] sup_pd, sup_nd;
wire s3z1_p,s3z1_n;

assign sup_pd[0] = sup_p;
assign sup_nd[0] = sup_n;


genvar i;
generate 
  for (i=0; i<9; i=i+1)
  begin: BLK1
    DFF#(1) i01 (sup_pd[i+1],sup_pd[i],clk,rst);
    DFF#(1) i02 (sup_nd[i+1],sup_nd[i],clk,rst);
  end
endgenerate

/*
DFF#(1) d01 (sup_pd1, sup_pd0, clk, rst); 
DFF#(1) d02 (sup_pd2, sup_pd1, clk, rst);

DFF#(1) d03 (sup_pd3, sup_pd2, clk, rst);
DFF#(1) d04 (sup_pd4, sup_pd3, clk, rst);

DFF#(1) d05 (sup_pd5, sup_pd4, clk, rst);
DFF#(1) d06 (sup_pd6, sup_pd5, clk, rst);

DFF#(1) d07 (sup_pd7, sup_pd6, clk, rst); 
DFF#(1) d08 (sup_pd8, sup_pd7, clk, rst);

DFF#(1) d09 (sup_pd9, sup_pd8, clk, rst);




DFF#(1) d13 (sup_nd1, sup_nd0, clk, rst);
DFF#(1) d14 (sup_nd2, sup_nd1, clk, rst);

DFF#(1) d15 (sup_nd3, sup_nd2, clk, rst);
DFF#(1) d16 (sup_nd4, sup_nd3, clk, rst);

DFF#(1) d17 (sup_nd5, sup_nd4, clk, rst);
DFF#(1) d18 (sup_nd6, sup_nd5, clk, rst);

DFF#(1) d19 (sup_nd7, sup_nd6, clk, rst);
DFF#(1) d20 (sup_nd8, sup_nd7, clk, rst);

DFF#(1) d21 (sup_nd9, sup_nd8, clk, rst);
*/



OA_Tree_8 i01 (s3z1_p,s3z1_n,x1_p,x1_n,x2_p,x2_n,x3_p,x3_n,x4_p,x4_n,y1_p,y1_n,y2_p,y2_n,y3_p,y3_n,y4_p,y4_n,clk,rst);
OA s3i01 (z_p,z_n, s3z1_p, s3z1_n, sup_pd[9], sup_nd[9], clk,rst);

endmodule

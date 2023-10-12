`timescale 1ps / 1ps
module OA_Tree_8 (
    output z_p,z_n,
    input x1_p,x1_n,x2_p,x2_n,x3_p,x3_n,x4_p,x4_n,
    input y1_p,y1_n,y2_p,y2_n,y3_p,y3_n,y4_p,y4_n,
    input clk, rst
);

wire s2z1_p,s2z1_n,s2z2_p,s2z2_n;

OA_Tree_4 i01 (s2z1_p,s2z1_n,x1_p,x1_n,x2_p,x2_n,y1_p,y1_n,y2_p,y2_n,clk,rst),
          i02 (s2z2_p,s2z2_n,x3_p,x3_n,x4_p,x4_n,y3_p,y3_n,y4_p,y4_n,clk,rst);

OA s2i01 (z_p,z_n,s2z1_p,s2z1_n,s2z2_p,s2z2_n,clk,rst);  
endmodule
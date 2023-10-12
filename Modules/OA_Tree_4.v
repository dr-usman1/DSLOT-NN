`timescale 1ps / 1ps
module OA_Tree_4 (
    output z_p,z_n,
    input x1_p,x1_n,x2_p,x2_n,
    input y1_p,y1_n,y2_p,y2_n,
    input clk, rst
);

wire s1z1_p,s1z1_n,s1z2_p,s1z2_n;

OA  i01 (s1z1_p,s1z1_n,x1_p,x1_n,y1_p,y1_n,clk,rst),
    i02 (s1z2_p,s1z2_n,x2_p,x2_n,y2_p,y2_n,clk,rst),
    i03 (z_p,z_n,s1z1_p,s1z1_n,s1z2_p,s1z2_n,clk,rst);
endmodule
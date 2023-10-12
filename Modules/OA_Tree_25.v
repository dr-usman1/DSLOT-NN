`timescale 1ps / 1ps
module OA_Tree_25 (
    output z_p,z_n,
    input x1_p,x1_n,x2_p,x2_n,x3_p,x3_n,x4_p,x4_n,x5_p,x5_n,x6_p,x6_n,x7_p,x7_n,x8_p,x8_n,x9_p,x9_n,x10_p,x10_n,x11_p,x11_n,x12_p,x12_n,
    input y1_p,y1_n,y2_p,y2_n,y3_p,y3_n,y4_p,y4_n,y5_p,y5_n,y6_p,y6_n,y7_p,y7_n,y8_p,y8_n,y9_p,y9_n,y10_p,y10_n,y11_p,y11_n,y12_p,y12_n,
    input sup_p,sup_n,
    input clk, rst
);
    
    wire s4z1_p,s4z1_n,s4z2_p,s4z2_n;

    OA_Tree_16 i03 (s4z1_p,s4z1_n,x1_p,x1_n,x2_p,x2_n,x3_p,x3_n,x4_p,x4_n,x5_p,x5_n,x6_p,x6_n,x7_p,x7_n,x8_p,x8_n,y1_p,y1_n,y2_p,y2_n,y3_p,y3_n,y4_p,y4_n,y5_p,y5_n,y6_p,y6_n,y7_p,y7_n,y8_p,y8_n,clk,rst);

    OA_Tree_9  i04 (s4z2_p,s4z2_n,x9_p,x9_n,x10_p,x10_n,x11_p,x11_n,x12_p,x12_n,y9_p,y9_n,y10_p,y10_n,y11_p,y11_n,y12_p,y12_n,sup_p,sup_n,clk,rst);

    OA s3i01 (z_p,z_n,s4z1_p,s4z1_n,s4z2_p,s4z2_n,clk,rst);
endmodule
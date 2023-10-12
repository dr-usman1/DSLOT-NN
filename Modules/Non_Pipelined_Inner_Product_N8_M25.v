`timescale 1ps/1ps
module Non_Pipelined_Inner_Product_N8_M25 #(
    parameter in_width = 8, out_width=16
) (
    output z_p,z_n,
    input x1_p,x1_n,x2_p,x2_n,x3_p,x3_n,x4_p,x4_n,x5_p,x5_n,x6_p,x6_n,x7_p,x7_n,x8_p,x8_n,
          x9_p,x9_n,x10_p,x10_n,x11_p,x11_n,x12_p,x12_n,x13_p,x13_n,x14_p,x14_n,x15_p,x15_n,x16_p,x16_n,
          x17_p,x17_n,x18_p,x18_n,x19_p,x19_n,x20_p,x20_n,x21_p,x21_n,x22_p,x22_n,x23_p,x23_n,x24_p,x24_n,
          x25_p,x25_n,
    input [in_width+1:0] B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,B16,
                      B17,B18,B19,B20,B21,B22,B23,B24,B25,
    input clk,rst
);
    wire m_z1_p,m_z1_n,m_z2_p,m_z2_n,m_z3_p,m_z3_n,m_z4_p,m_z4_n,m_z5_p,m_z5_n,m_z6_p,m_z6_n,m_z7_p,m_z7_n,m_z8_p,m_z8_n,
         m_z9_p,m_z9_n,m_z10_p,m_z10_n,m_z11_p,m_z11_n,m_z12_p,m_z12_n,m_z13_p,m_z13_n,m_z14_p,m_z14_n,m_z15_p,m_z15_n,m_z16_p,m_z16_n,
         m_z17_p,m_z17_n,m_z18_p,m_z18_n,m_z19_p,m_z19_n,m_z20_p,m_z20_n,m_z21_p,m_z21_n,m_z22_p,m_z22_n,m_z23_p,m_z23_n,m_z24_p,m_z24_n,
         m_z25_p,m_z25_n;
         
    S_P_Mult #(in_width, out_width) i01 (m_z1_p,m_z1_n,x1_p,x1_n,B1,clk,rst),
                                   i02 (m_z2_p,m_z2_n,x2_p,x2_n,B2,clk,rst),
                                   i03 (m_z3_p,m_z3_n,x3_p,x3_n,B3,clk,rst),
                                   i04 (m_z4_p,m_z4_n,x4_p,x4_n,B4,clk,rst),
                                   i05 (m_z5_p,m_z5_n,x5_p,x5_n,B5,clk,rst),
                                   i06 (m_z6_p,m_z6_n,x6_p,x6_n,B6,clk,rst),
                                   i07 (m_z7_p,m_z7_n,x7_p,x7_n,B7,clk,rst),
                                   i08 (m_z8_p,m_z8_n,x8_p,x8_n,B8,clk,rst),
                                   i09 (m_z9_p,m_z9_n,x9_p,x9_n,B9,clk,rst),
                                   i10 (m_z10_p,m_z10_n,x10_p,x10_n,B10,clk,rst),
                                   i11 (m_z11_p,m_z11_n,x11_p,x11_n,B11,clk,rst),
                                   i12 (m_z12_p,m_z12_n,x12_p,x12_n,B12,clk,rst),
                                   i13 (m_z13_p,m_z13_n,x13_p,x13_n,B13,clk,rst),
                                   i14 (m_z14_p,m_z14_n,x14_p,x14_n,B14,clk,rst),
                                   i15 (m_z15_p,m_z15_n,x15_p,x15_n,B15,clk,rst),
                                   i16 (m_z16_p,m_z16_n,x16_p,x16_n,B16,clk,rst),
                                   i17 (m_z17_p,m_z17_n,x17_p,x17_n,B17,clk,rst),
                                   i18 (m_z18_p,m_z18_n,x18_p,x18_n,B18,clk,rst),
                                   i19 (m_z19_p,m_z19_n,x19_p,x19_n,B19,clk,rst),
                                   i20 (m_z20_p,m_z20_n,x20_p,x20_n,B20,clk,rst),
                                   i21 (m_z21_p,m_z21_n,x21_p,x21_n,B21,clk,rst),
                                   i22 (m_z22_p,m_z22_n,x22_p,x22_n,B22,clk,rst),
                                   i23 (m_z23_p,m_z23_n,x23_p,x23_n,B23,clk,rst),
                                   i24 (m_z24_p,m_z24_n,x24_p,x24_n,B24,clk,rst),
                                   i25 (m_z25_p,m_z25_n,x25_p,x25_n,B25,clk,rst);


    OA_Tree_25 OAi01 (z_p,z_n,m_z1_p,m_z1_n,m_z2_p,m_z2_n,m_z3_p,m_z3_n,m_z4_p,m_z4_n,m_z5_p,m_z5_n,m_z6_p,m_z6_n,m_z7_p,m_z7_n,m_z8_p,m_z8_n,
    m_z9_p,m_z9_n,m_z10_p,m_z10_n,m_z11_p,m_z11_n,m_z12_p,m_z12_n,m_z13_p,m_z13_n,m_z14_p,m_z14_n,m_z15_p,m_z15_n,m_z16_p,m_z16_n,m_z17_p,m_z17_n,
    m_z18_p,m_z18_n,m_z19_p,m_z19_n,m_z20_p,m_z20_n,m_z21_p,m_z21_n,m_z22_p,m_z22_n,m_z23_p,m_z23_n,m_z24_p,m_z24_n,
         m_z25_p,m_z25_n,clk,rst);
endmodule
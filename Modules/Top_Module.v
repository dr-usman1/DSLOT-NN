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

`timescale 1ps / 1ps
module S_P_Mult #(parameter N=8, R=16)
  (output  z_p,z_n, input ina_p,ina_n,input [N+1:0]B,input clk,rst);
  //wire z_p, z_n;
  reg [N+2:0] WS;
  reg [N+2:0] WC; 
  wire [N+1:0] C_out;
  wire [N+3:0]VS1,VC1;
  wire [3:0]V4;
  wire V4_2;
  wire [N+3:0]C_out_ext;
  integer i;
  reg init;
  /*
  initial begin
    WS = {N+3{1'b0}};
    WC = {N+3{1'b0}};
  end
  */
  assign C_out = ina_p? (ina_n?{N+1{1'b0}}:{B}):(ina_n?{~B}:{N+1{1'b0}});
  assign C_out_ext = {{2{C_out[N+1]}},C_out[N+1:0]};
  Compressor3_2 #(N+3) ins1 (VS1,VC1,{WS},{WC},{C_out_ext},(~ina_p&ina_n),rst);
  
  
  always @(posedge clk or posedge rst)
  begin
  if (rst)
    begin
    i <= 0;
    WS = {N+3{1'b0}};
    WC = {N+3{1'b0}};
  
  end
  else
    begin
    i <= i+1;
  end
  end
  
  always @(i)
  begin
  if (i == R+3)
    begin
    i = 0;
    
  end
end
always@(posedge clk or posedge rst)
begin
  if (i<2)
    init = 1'b1;
  else
    init = 1'b0;
  end

  
  always @(posedge clk or posedge rst)
  begin
    if (!rst)
      begin
        if (init)
        begin
          WS <= VS1[N+2:0];
          WC <= VC1[N+2:0];
        end
        else 
        begin
          WS<= {V4_2,V4[1:0],VS1[N-1:0]};
          WC<= {3'b000,VC1[N-1:0]};
        end
      
          
      end
   end
    /*
    always@(posedge clk or posedge rst)
    begin
        if (i>1)
          begin
            z_preg <= z_p;
            z_nreg <= z_n;
          end
        else
          begin
           z_preg <= 0;
           z_nreg <= 0;
         end
          
    end
    */
    
    
  V_Block VB1 (V4,VS1[N+3:N],VC1[N+3:N],rst);
  M_Block MB1 (V4_2,z_p,z_n,V4[2]);
  Sel_Fun sfun1 (z_p,z_n,V4[3:1]);
  
endmodule

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

`timescale 1ps / 1ps
module OA_Tree_16 (
    output z_p,z_n,
    input x1_p,x1_n,x2_p,x2_n,x3_p,x3_n,x4_p,x4_n,x5_p,x5_n,x6_p,x6_n,x7_p,x7_n,x8_p,x8_n,
    input y1_p,y1_n,y2_p,y2_n,y3_p,y3_n,y4_p,y4_n,y5_p,y5_n,y6_p,y6_n,y7_p,y7_n,y8_p,y8_n,
    input clk, rst
);
    
    wire s3z1_p,s3z1_n,s3z2_p,s3z2_n;

    OA_Tree_8 i03 (s3z1_p,s3z1_n,x1_p,x1_n,x2_p,x2_n,x3_p,x3_n,x4_p,x4_n,y1_p,y1_n,y2_p,y2_n,y3_p,y3_n,y4_p,y4_n,clk,rst),
              i04 (s3z2_p,s3z2_n,x5_p,x5_n,x6_p,x6_n,x7_p,x7_n,x8_p,x8_n,y5_p,y5_n,y6_p,y6_n,y7_p,y7_n,y8_p,y8_n,clk,rst);

    OA s3i01 (z_p,z_n,s3z1_p,s3z1_n,s3z2_p,s3z2_n,clk,rst);
endmodule

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

 `timescale 1ps / 1ps
 module OA (output wz_p,wz_n, input x_p,x_n,y_p,y_n, input clk, rst);
  wire x_nn, s1, s1_n, hjp2, c2,zjp1_n, wjp2, w_s1r2, zjp1_p;
  reg s1r1, s1r2, s2r2,s2r1, s2r3;

Compressor ins1(x_p,x_nn,y_p,s1,hjp2),
           ins2(~s1r1,~w_s1r2,hjp2,wjp2,c2);
  assign x_nn = ~x_n;
  assign s1_n = ~s1;
  assign w_s1r2 = s1r2;
  assign zjp1_n = ~c2;
  assign zjp1_p = s2r2;
  assign wz_n = s2r1;
  assign wz_p = s2r3; 
   
  always@(posedge clk)
  begin
  if (~rst)
    begin
    s1r1 = s1_n;
    s1r2 = y_n;
    s2r2 = wjp2;
    s2r1 = zjp1_n;
    s2r3 = zjp1_p;
  end
    
  else
    begin
    s1r1 = 1'b0;
    s2r1 = 1'b0;
    s2r3 = 1'b0;
    s2r2 = 1'b0;
    s1r2 = 1'b0;
  end
end      
endmodule

`timescale 1ps / 1ps
module Compressor (a, b, cin, sum, cout);
  output cout, sum;
  input a, b, cin;
  assign sum = a^b^cin;
  assign cout = ((a&b) | (b&cin) | (a&cin));
endmodule


`timescale 1ps / 1ps
module M_Block(output V_2, input z,z_n,V);
assign V_2 = (z|z_n)^V;
endmodule

`timescale 1ps / 1ps
module Compressor3_2
#(parameter W = 11)
(output [W:0]FS,FC, input [W-1:0]WS, WC, input [W:0] x,  input cin, input rst);
wire [W:0]x_ext;
wire [W:0]YS; 
wire [W+1:0] YC;
assign x_ext = {x};
assign FS = YS;
assign FC = YC[W:0];

assign YC[0] = cin&~rst;
assign YC[1] = 1'b0;
assign YS[0] = x_ext[0]&~rst;
genvar i;

generate
  for (i = 1; i<=W;i = i+1)
  begin: CV_2
        assign {YC[i+1],YS[i]} = (x_ext[i]&~rst)+(WS[i-1]&~rst)+(WC[i-1]&~rst);
  end
endgenerate


endmodule

`timescale 1ps / 1ps
module Sel_Fun (output reg z,z_n, input [3:1]V);
    always@(V)
          begin
      case(V)
      /**/ 
      3'b000: begin z=0; z_n=0; end
      3'b001: begin z=1; z_n=0; end
      3'b010: begin z=1; z_n=0; end
      3'b011: begin z=1; z_n=0; end
      3'b100: begin z=0; z_n=1; end
      3'b101: begin z=0; z_n=1; end
      3'b110: begin z=0; z_n=1; end
      3'b111: begin z=0; z_n=0; end
      default: begin z=0; z_n=0; end
      /**/
      /*
      3'b000: begin z=0; z_n=0; end
      3'b001: begin z=0; z_n=0; end
      3'b010: begin z=1; z_n=0; end
      3'b011: begin z=1; z_n=0; end
      3'b100: begin z=0; z_n=1; end
      3'b101: begin z=0; z_n=1; end
      3'b110: begin z=0; z_n=0; end
      3'b111: begin z=0; z_n=0; end
      default: begin z=0; z_n=0; end
      */
      endcase
    end
 endmodule 


`timescale 1ps / 1ps
module V_Block(output[3:0]V,input [3:0]sum,carry, input rst);
assign V = (sum&~rst) + (carry&~rst);
endmodule


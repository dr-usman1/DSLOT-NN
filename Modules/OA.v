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





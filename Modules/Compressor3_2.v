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


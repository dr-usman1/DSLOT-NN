`timescale 1ps / 1ps
module V_Block(output[3:0]V,input [3:0]sum,carry, input rst);
assign V = (sum&~rst) + (carry&~rst);
endmodule


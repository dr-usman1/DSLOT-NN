`timescale 1ps / 1ps
module M_Block(output V_2, input z,z_n,V);
assign V_2 = (z|z_n)^V;
endmodule
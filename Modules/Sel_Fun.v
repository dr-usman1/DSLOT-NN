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

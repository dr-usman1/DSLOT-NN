`timescale 1ps / 1ps
module DFF #(parameter W = 2)
(output reg [W-1:0]Q, input [W-1:0]D, input clk,rst);
    always @(posedge clk) begin
        if (rst) begin
        Q <= 0;
        end
        else begin
         Q <= D;
        end
    end
endmodule


module main (
  input reg [15:0] activation_0, input reg weight_0,
  input reg [15:0] activation_1, input reg weight_1,
  input reg [15:0] activation_2, input reg weight_2,
  input reg [15:0] activation_3, input reg weight_3,
  input reg [15:0] activation_4, input reg weight_4,
  input reg [15:0] activation_5, input reg weight_5,
  input reg [15:0] activation_6, input reg weight_6,
  input reg [15:0] activation_7, input reg weight_7,
  input reg [15:0] activation_8, input reg weight_8,
  input reg [15:0] activation_9, input reg weight_9,
  input reg [15:0] activation_10, input reg weight_10,
  input reg [15:0] activation_11, input reg weight_11,
  input reg [15:0] activation_12, input reg weight_12,
  input reg [15:0] activation_13, input reg weight_13,
  input reg [15:0] activation_14, input reg weight_14,
  input reg [15:0] activation_15, input reg weight_15,
  input reg [15:0] activation_16, input reg weight_16,
  input reg [15:0] activation_17, input reg weight_17,
  input reg [15:0] activation_18, input reg weight_18,
  input reg [15:0] activation_19, input reg weight_19,
  input reg [15:0] activation_20, input reg weight_20,
  input reg [15:0] activation_21, input reg weight_21,
  input reg [15:0] activation_22, input reg weight_22,
  input reg [15:0] activation_23, input reg weight_23,
  input reg [15:0] activation_24, input reg weight_24,
  input reg [15:0] activation_25, input reg weight_25,
  input reg [15:0] activation_26, input reg weight_26,
  input reg [15:0] activation_27, input reg weight_27,
  input reg [15:0] activation_28, input reg weight_28,
  input reg [15:0] activation_29, input reg weight_29,
  input reg [15:0] activation_30, input reg weight_30,
  input reg [15:0] activation_31, input reg weight_31,
  output [20:0] out);
/*
assign activation_0 = 16'b01111111111111111;
assign activation_1 = activation_0;
assign activation_2 = activation_0;
assign activation_3 = activation_0;
assign activation_4 = activation_0;
assign activation_5 = activation_0;
assign activation_6 = activation_0;
assign activation_7 = activation_0;
assign activation_8 = activation_0;
assign activation_9 = activation_0;
assign activation_10 = activation_0;
assign activation_11 = activation_0;
assign activation_12 = activation_0;
assign activation_13 = activation_0;
assign activation_14 = activation_0;
assign activation_15 = activation_0;
assign activation_16 = activation_0;
assign activation_17 = activation_0;
assign activation_18 = activation_0;
assign activation_19 = activation_0;
assign activation_20 = activation_0;
assign activation_21 = activation_0;
assign activation_22 = activation_0;
assign activation_23 = activation_0;
assign activation_24 = activation_0;
assign activation_25 = activation_0;
assign activation_26 = activation_0;
assign activation_27 = activation_0;
assign activation_28 = activation_0;
assign activation_29 = activation_0;
assign activation_30 = activation_0;
assign activation_31 = activation_0;


assign weight_0 = 1'b1;
assign weight_1 = weight_0;
assign weight_2 = weight_0;
assign weight_3 = weight_0;
assign weight_4 = weight_0;
assign weight_5 = weight_0;
assign weight_6 = weight_0;
assign weight_7 = weight_0;
assign weight_8 = weight_0;
assign weight_9 = weight_0;
assign weight_10 = weight_0;
assign weight_11 = weight_0;
assign weight_12 = weight_0;
assign weight_13 = weight_0;
assign weight_14 = weight_0;
assign weight_15 = weight_0;
assign weight_16 = weight_0;
assign weight_17 = weight_0;
assign weight_18 = weight_0;
assign weight_19 = weight_0;
assign weight_20 = weight_0;
assign weight_21 = weight_0;
assign weight_22 = weight_0;
assign weight_23 = weight_0;
assign weight_24 = weight_0;
assign weight_25 = weight_0;
assign weight_26 = weight_0;
assign weight_27 = weight_0;
assign weight_28 = weight_0;
assign weight_29 = weight_0;
assign weight_30 = weight_0;
assign weight_31 = weight_0;
*/


wire [15:0] mult_out0;
wire [15:0] mult_out1;
wire [15:0] mult_out2;
wire [15:0] mult_out3;
wire [15:0] mult_out4;
wire [15:0] mult_out5;
wire [15:0] mult_out6;
wire [15:0] mult_out7;
wire [15:0] mult_out8;
wire [15:0] mult_out9;
wire [15:0] mult_out10;
wire [15:0] mult_out11;
wire [15:0] mult_out12;
wire [15:0] mult_out13;
wire [15:0] mult_out14;
wire [15:0] mult_out15;
wire [15:0] mult_out16;
wire [15:0] mult_out17;
wire [15:0] mult_out18;
wire [15:0] mult_out19;
wire [15:0] mult_out20;
wire [15:0] mult_out21;
wire [15:0] mult_out22;
wire [15:0] mult_out23;
wire [15:0] mult_out24;
wire [15:0] mult_out25;
wire [15:0] mult_out26;
wire [15:0] mult_out27;
wire [15:0] mult_out28;
wire [15:0] mult_out29;
wire [15:0] mult_out30;
wire [15:0] mult_out31;
  


And_Mult_Array inst1 (
activation_0, weight_0,
activation_1, weight_1,
activation_2, weight_2,
activation_3, weight_3,
activation_4, weight_4,
activation_5, weight_5,
activation_6, weight_6,
activation_7, weight_7,
activation_8, weight_8,
activation_9, weight_9,
activation_10, weight_10,
activation_11, weight_11,
activation_12, weight_12,
activation_13, weight_13,
activation_14, weight_14,
activation_15, weight_15,
activation_16, weight_16,
activation_17, weight_17,
activation_18, weight_18,
activation_19, weight_19,
activation_20, weight_20,
activation_21, weight_21,
activation_22, weight_22,
activation_23, weight_23,
activation_24, weight_24,
activation_25, weight_25,
activation_26, weight_26,
activation_27, weight_27,
activation_28, weight_28,
activation_29, weight_29,
activation_30, weight_30,
activation_31, weight_31,
mult_out0,
mult_out1,
mult_out2,
mult_out3,
mult_out4,
mult_out5,
mult_out6,
mult_out7,
mult_out8,
mult_out9,
mult_out10,
mult_out11,
mult_out12,
mult_out13,
mult_out14,
mult_out15,
mult_out16,
mult_out17,
mult_out18,
mult_out19,
mult_out20,
mult_out21,
mult_out22,
mult_out23,
mult_out24,
mult_out25,
mult_out26,
mult_out27,
mult_out28,
mult_out29,
mult_out30,
mult_out31);

AdderTree inst2(mult_out0,
mult_out1,
mult_out2,
mult_out3,
mult_out4,
mult_out5,
mult_out6,
mult_out7,
mult_out8,
mult_out9,
mult_out10,
mult_out11,
mult_out12,
mult_out13,
mult_out14,
mult_out15,
mult_out16,
mult_out17,
mult_out18,
mult_out19,
mult_out20,
mult_out21,
mult_out22,
mult_out23,
mult_out24,
mult_out25,
mult_out26,
mult_out27,
mult_out28,
mult_out29,
mult_out30,
mult_out31, out);
endmodule

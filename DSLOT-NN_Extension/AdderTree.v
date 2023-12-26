module AdderTree (
  input [15:0] input0,
input [15:0] input1,
input [15:0] input2,
input [15:0] input3,
input [15:0] input4,
input [15:0] input5,
input [15:0] input6,
input [15:0] input7,
input [15:0] input8,
input [15:0] input9,
input [15:0] input10,
input [15:0] input11,
input [15:0] input12,
input [15:0] input13,
input [15:0] input14,
input [15:0] input15,
input [15:0] input16,
input [15:0] input17,
input [15:0] input18,
input [15:0] input19,
input [15:0] input20,
input [15:0] input21,
input [15:0] input22,
input [15:0] input23,
input [15:0] input24,
input [15:0] input25,
input [15:0] input26,
input [15:0] input27,
input [15:0] input28,
input [15:0] input29,
input [15:0] input30,
input [15:0] input31,
  
output [20:0] sum
);


wire [16:0] int_sum_L1_0;
wire [16:0] int_sum_L1_1;
wire [16:0] int_sum_L1_2;
wire [16:0] int_sum_L1_3;
wire [16:0] int_sum_L1_4;
wire [16:0] int_sum_L1_5;
wire [16:0] int_sum_L1_6;
wire [16:0] int_sum_L1_7;
wire [16:0] int_sum_L1_8;
wire [16:0] int_sum_L1_9;
wire [16:0] int_sum_L1_10;
wire [16:0] int_sum_L1_11;
wire [16:0] int_sum_L1_12;
wire [16:0] int_sum_L1_13;
wire [16:0] int_sum_L1_14;
wire [16:0] int_sum_L1_15;

wire [17:0] int_sum_L2_0;
wire [17:0] int_sum_L2_1;
wire [17:0] int_sum_L2_2;
wire [17:0] int_sum_L2_3;
wire [17:0] int_sum_L2_4;
wire [17:0] int_sum_L2_5;
wire [17:0] int_sum_L2_6;
wire [17:0] int_sum_L2_7;

wire [18:0] int_sum_L3_0;
wire [18:0] int_sum_L3_1;
wire [18:0] int_sum_L3_2;
wire [18:0] int_sum_L3_3;

wire [19:0] int_sum_L4_0;
wire [19:0] int_sum_L4_1;


AdderTree_L1 inst0 (input0, input1, int_sum_L1_0);
AdderTree_L1 inst1 (input2, input3, int_sum_L1_1);
AdderTree_L1 inst2 (input4, input5, int_sum_L1_2);
AdderTree_L1 inst3 (input6, input7, int_sum_L1_3);
AdderTree_L1 inst4 (input8, input9, int_sum_L1_4);
AdderTree_L1 inst5 (input10, input11, int_sum_L1_5);
AdderTree_L1 inst6 (input12, input13, int_sum_L1_6);
AdderTree_L1 inst7 (input14, input15, int_sum_L1_7);
AdderTree_L1 inst8 (input16, input17, int_sum_L1_8);
AdderTree_L1 inst9 (input18, input19, int_sum_L1_9);
AdderTree_L1 inst10 (input20, input21, int_sum_L1_10);
AdderTree_L1 inst11 (input22, input23, int_sum_L1_11);
AdderTree_L1 inst12 (input24, input25, int_sum_L1_12);
AdderTree_L1 inst13 (input26, input27, int_sum_L1_13);
AdderTree_L1 inst14 (input28, input29, int_sum_L1_14);
AdderTree_L1 inst15 (input30, input31, int_sum_L1_15);

AdderTree_L2 instL2_0 (int_sum_L1_0,int_sum_L1_1,int_sum_L2_0);
AdderTree_L2 instL2_1 (int_sum_L1_2,int_sum_L1_3,int_sum_L2_1);
AdderTree_L2 instL2_2 (int_sum_L1_4,int_sum_L1_5,int_sum_L2_2);
AdderTree_L2 instL2_3 (int_sum_L1_6,int_sum_L1_7,int_sum_L2_3);
AdderTree_L2 instL2_4 (int_sum_L1_8,int_sum_L1_9,int_sum_L2_4);
AdderTree_L2 instL2_5 (int_sum_L1_10,int_sum_L1_11,int_sum_L2_5);
AdderTree_L2 instL2_6 (int_sum_L1_12,int_sum_L1_13,int_sum_L2_6);
AdderTree_L2 instL2_7 (int_sum_L1_14,int_sum_L1_15,int_sum_L2_7);

AdderTree_L3 instL3_0 (int_sum_L2_0, int_sum_L2_1, int_sum_L3_0);
AdderTree_L3 instL3_1 (int_sum_L2_2, int_sum_L2_3, int_sum_L3_1);
AdderTree_L3 instL3_2 (int_sum_L2_4, int_sum_L2_5, int_sum_L3_2);
AdderTree_L3 instL3_3 (int_sum_L2_6, int_sum_L2_7, int_sum_L3_3);

AdderTree_L4 instL4_0 (int_sum_L3_0,int_sum_L3_1,int_sum_L4_0);
AdderTree_L4 instL4_1 (int_sum_L3_2,int_sum_L3_3,int_sum_L4_1);

AdderTree_L5 instL5_0 (int_sum_L4_0,int_sum_L4_1,sum);

endmodule

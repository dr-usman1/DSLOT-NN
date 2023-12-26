module AdderTree_L1(
  input [15:0] input1, input2,
  output reg [16:0] sum
);

always@*
begin
sum = input1 + input2;
end


endmodule

module AdderTree_L2(
  input [16:0] input1, input2,
  output reg [17:0] sum
);

always@*
begin
sum = input1 + input2;
end


endmodule

module AdderTree_L3(
  input [17:0] input1, input2,
  output reg [18:0] sum
);

always@*
begin
sum = input1 + input2;
end


endmodule

module AdderTree_L4(
  input [18:0] input1, input2,
  output reg [19:0] sum
);

always@*
begin
sum = input1 + input2;
end


endmodule
module AdderTree_L5(
  input [19:0] input1, input2,
  output reg [20:0] sum
);

always@*
begin
sum = input1 + input2;
end


endmodule

module ActivationMultiplier(
  input reg [15:0] activation,
  input reg weight,
  output reg [15:0] result
);

  always @* begin
    if (weight)
      result = activation;
    else
      result = 16'h0000;
  end

endmodule

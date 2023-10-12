`timescale 1ps / 1ps
module S_P_Mult #(parameter N=8, R=16)
  (output  z_p,z_n, input ina_p,ina_n,input [N+1:0]B,input clk,rst);
  //wire z_p, z_n;
  reg [N+2:0] WS;
  reg [N+2:0] WC; 
  wire [N+1:0] C_out;
  wire [N+3:0]VS1,VC1;
  wire [3:0]V4;
  wire V4_2;
  wire [N+3:0]C_out_ext;
  integer i;
  reg init;
  /*
  initial begin
    WS = {N+3{1'b0}};
    WC = {N+3{1'b0}};
  end
  */
  assign C_out = ina_p? (ina_n?{N+1{1'b0}}:{B}):(ina_n?{~B}:{N+1{1'b0}});
  assign C_out_ext = {{2{C_out[N+1]}},C_out[N+1:0]};
  Compressor3_2 #(N+3) ins1 (VS1,VC1,{WS},{WC},{C_out_ext},(~ina_p&ina_n),rst);
  
  
  always @(posedge clk or posedge rst)
  begin
  if (rst)
    begin
    i <= 0;
    WS = {N+3{1'b0}};
    WC = {N+3{1'b0}};
  
  end
  else
    begin
    i <= i+1;
  end
  end
  
  always @(i)
  begin
  if (i == R+3)
    begin
    i = 0;
    
  end
end
always@(posedge clk or posedge rst)
begin
  if (i<2)
    init = 1'b1;
  else
    init = 1'b0;
  end

  
  always @(posedge clk or posedge rst)
  begin
    if (!rst)
      begin
        if (init)
        begin
          WS <= VS1[N+2:0];
          WC <= VC1[N+2:0];
        end
        else 
        begin
          WS<= {V4_2,V4[1:0],VS1[N-1:0]};
          WC<= {3'b000,VC1[N-1:0]};
        end
      
          
      end
   end
    /*
    always@(posedge clk or posedge rst)
    begin
        if (i>1)
          begin
            z_preg <= z_p;
            z_nreg <= z_n;
          end
        else
          begin
           z_preg <= 0;
           z_nreg <= 0;
         end
          
    end
    */
    
    
  V_Block VB1 (V4,VS1[N+3:N],VC1[N+3:N],rst);
  M_Block MB1 (V4_2,z_p,z_n,V4[2]);
  Sel_Fun sfun1 (z_p,z_n,V4[3:1]);
  
endmodule



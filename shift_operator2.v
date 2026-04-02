module shift_operator2(
  input clock,
  input Input,
  output reg [3:0] Input_Delay
);
  initial begin
  Input_Delay = 4'b0000;
  end

  always @(posedge clock)
    begin
      
      Input_Delay <= Input_Delay << 1;
      Input_Delay[0]<= Input;
    end
  
endmodule
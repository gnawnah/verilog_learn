`include "shift_operator2.v"

module tb_shift_operator2;

  reg clock;
  reg Input;
  wire [3:0] Input_Delay;

  shift_operator2 uut (
    .clock(clock),
    .Input(Input),
    .Input_Delay(Input_Delay)
  );

  initial begin
    $dumpfile("shift_operator2.vcd");
    $dumpvars(0, tb_shift_operator2);

    clock = 0;
    Input = 0;
    

    #10 Input = 1;
    #10 Input = 0;
    #10 Input = 1;
    #10 Input = 1;
    #10 Input = 0;

    #40 $finish;
  end

  always #5 clock = ~clock;

endmodule
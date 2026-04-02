
module function_auto();

  function [7:0] factorial;
    input [3:0] i_Num;
    begin
      if (i_Num == 1)
        factorial = 1;
      else
        factorial = i_Num * (factorial(i_Num-1));
    end
  endfunction

  initial begin
    $dumpfile("autofunction.vcd");
    $dumpvars(0, function_auto);
    $display("Factorial of 1 = %d", factorial (1));
    $display("Factorial of 2 = %d", factorial (2));
    $display("Factorial of 3 = %d", factorial (3));
    $display("Factorial of 4 = %d", factorial (4));
    $display ("Factorial of 5 = %d", factorial (5));
    #10;
    $finish;
  end



endmodule
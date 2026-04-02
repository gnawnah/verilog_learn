module function_example();
reg r_Bit1 = 1'b1;
reg r_Bit2 = 1'b0;
reg r_Bit3 = 1'b1;
wire w_Result;
reg r_Global;

function do_math;
  input i_bit1, i_bit2, i_bit3;
  reg v_Temp; // local variable

  begin
    // demonstrates driving external Global reg
    r_Global = 1'b1;

    v_Temp = (i_bit1 & i_bit2);
    do_math = (v_Temp | i_bit3);
  end

  endfunction


  assign w_Result = do_math(r_Bit1, r_Bit2, r_Bit3);

  initial begin
    $dumpfile("function.vcd");
    $dumpvars(0, function_example);
    #200;
    $finish;
  end

endmodule

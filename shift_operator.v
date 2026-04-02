module shift_operator();

  reg [3:0] r_Shift1 = 4'b1000;
  reg signed [3:0] r_Shift2 = 4'b1000;
  
  initial begin
    $dumpfile("shift.vcd");
    $dumpvars(0,shift_operator);
    
    $display("%b", r_Shift1 << 1);
    $display("%b", $signed(r_Shift1) <<< 1);
    $display("%b", r_Shift2 <<< 1);
    $display("%b", $signed(r_Shift1) >>> 2);
    $display("%b", r_Shift2 >>> 2);

    $finish;

  end
endmodule
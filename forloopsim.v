module for_loop_simulation();

  integer ii=0;
  reg[7:0] r_Data [5:0];

  initial begin 
    $dumpfile("forloopsim.vcd");
    $dumpvars(0, for_loop_simulation);
    for (ii=0; ii<6; ii=ii+1)
      begin
      r_Data[ii] = ii*ii;
      $display("Time %2d: r_Data at Index %1d is %2d", $time, ii, r_Data[ii]);
      #10;
      end
      $finish;
  end
endmodule
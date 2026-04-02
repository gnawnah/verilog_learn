module repeat_example();

  reg r_Clock = 1'b0;

  initial begin
    $dumpfile("repeatloop.vcd");
    $dumpvars(0, repeat_example);
    repeat(10)
      #5
      r_Clock = !r_Clock;

      $display("Simulation Complete");

    $finish;
  end
endmodule
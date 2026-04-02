module forever_ex();

  reg r_Clock = 1'b0;

  initial begin
    $dumpfile("foreverloop.vcd");
    $dumpvars(0, forever_ex);
    forever
      #10 r_Clock = !r_Clock;
    
    $finish;
  end

endmodule
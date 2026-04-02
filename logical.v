
module logical_operators ();

  reg r_A = 1'b1;
  reg r_B = 1'b0;

  initial begin
    $dumpfile("logical.vcd");
    $dumpvars(0, logical_operators);
    #10
    if (r_A || r_B)
      $display("Either r_A or r_B is 1");
    else 
      $display("Neither r_A nor r_B is 1");

    if (r_A && r_B)
      $display("Both r_A and r_B are 1");
    else 
      $display("r_A and r_B are not both 1");
    
    if (!r_A)
      $display("r_A is not 1");
    else 
      $display("r_A is 1");

    $finish;
  end


endmodule
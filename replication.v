
module replication_operator();

  reg [3:0] r_VAL_1 = 4'b0111;

  parameter c_MULTIPLIER = 4'b0010;

  initial begin
    
    $dumpfile("replication.vcd");
    $dumpvars(0, replication_operator);

    $display("Replication of 0x7, 3 times is 0x%h", {3{r_VAL_1}});

    $display("Replication of 0x7, %1d times is 0x%h", c_MULTIPLIER, {c_MULTIPLIER{r_VAL_1}});

    $display("Concatenate 4 with replication of 0xA twice: 0x%h", {4'b0100, {2{4'hA}}});

    $display("Replicate the concatenation of 0xB and 0xC 4 times: 0x%h", {{4{4'hB}}, {4{4'hC}}});
  end
endmodule
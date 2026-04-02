
module test2;

  reg r_Check = 1'b1;
  wire w_Test1;
  assign w_Test1 = r_Check ? 1'b1 : 1'b0;

  initial begin
    $dumpfile("conditional.vcd");
    $dumpvars(0, test2);
    #1;
    $display("OUTPUT: %s", r_Check ? "HI THERE" : "POTATO");
    $display("Value of w_Test1: %b", w_Test1);
    $display("%h", (10>5)?16'hABCD : 16'h1234);
    $display("%s", (1==1)? "YES, ONE EQUALS ONE" : "HOW DID YOU GET HERE");

    $finish;
  end
endmodule
module relational_operators() ;

initial begin
  $dumpfile("relational.vcd");
  $dumpvars(0, relational_operators);
  $display("Is 2 <=3?   %b", 2<=3);
  $display("4'hx >= 10?     %b", 4'hX >= 10);
  $finish;
end
endmodule
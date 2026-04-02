module test3;

  reg[1:0] r_Sel;
  wire w_Out;

  assign w_Out = r_Sel[1] ? (r_Sel[0] ? 1'b0 : 1'b1) : (r_Sel[0] ? 1'b1 : 1'b1);

  initial begin
    $dumpfile("cond2.vcd");
    $dumpvars(0, test3);
    r_Sel = 2'b00;
    #1; 
    $display("w_Out: %b", w_Out);
    r_Sel = 2'b01;
    #1; 
    $display("w_Out: %b", w_Out);
    r_Sel = 2'b10;
    #1; 
    $display("w_Out: %b", w_Out);
    r_Sel = 2'b11;
    #1; 
    $display("w_Out: %b", w_Out);
    $finish;
  end

endmodule
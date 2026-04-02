module task_auto ();
 
  task automatic auto_print;
    input [3:0] i_Value;
    begin
      #(i_Value) $display("Value = %d", i_Value);
    end
  endtask
   
  task non_auto_print;
    input [3:0] i_Value;
    begin
      #(i_Value) $display("Value = %d", i_Value);
    end
  endtask
   
  initial
    begin
      $display("Printing Automatic Tasks");
      fork
        auto_print(3);
        auto_print(6);
        auto_print(1);
      join
      #10;
       
      $display("Printing Non-Automatic Tasks");  
      fork
        non_auto_print(3);
        non_auto_print(6);
        non_auto_print(1);
      join
    end
endmodule // task_auto
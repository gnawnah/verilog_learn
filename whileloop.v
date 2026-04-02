module while_example (); 
  integer ii=0;
  reg [7:0] r_Data[15:0]; // Create reg 8 bit wide by 16 words deep.
   
  initial
    begin
       
      // Sets first value of r_Data to allow while loop to execute
      // (Allows it to be true on the first iteration)
      r_Data[ii] = ii*ii;
       
      while (r_Data[ii] < 100)  
        begin
          $display("Time %2d: r_Data at Index %1d is %2d", $time, ii, r_Data[ii]);
          ii = ii + 1;
          r_Data[ii] = ii*ii;
          #10;
        end
    end
endmodule
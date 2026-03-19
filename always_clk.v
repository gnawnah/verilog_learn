
always @ (posdege i_clock) // this is a clocked always block, it will be triggered at the rising edge of i_clock
// posedge is a keyword in verilog, it means the positive edge of a signal, in this case, i_clock
  begin
    and_gate <= input_1 & input_2; // will be updated at the next rising edge  
  end
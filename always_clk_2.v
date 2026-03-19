
reg test1 = 1'b1; // this is a reg type variable, it can hold a value and be updated in an always block
reg test2 = 1'b0; //1'b0 means 1 bit binary 0, it is a way to specify the initial value of the reg variable
reg test3 = 1'b0;
reg test4 = 1'b0;

always @ (posedge i_clock)
  begin
    test2<= test1; // this is a non-blocking assignment, it will be updated at the next rising edge of i_clock, it is used
    test3<=test2; // <= is a non-blocking assignment operator, it means that the right-hand side will be evaluated at the current time, but the left-hand side will be updated at the next time step, in this case, at the next rising edge of i_clock
    test4<= test3;
  end
  // this is a clocked always block, it will be triggered at the rising edge of i_clock

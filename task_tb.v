`include "task_unit.v"

module task_tb;

  reg [7:0] i_addr;
  reg [7:0] i_data;

  task_unit uut();

  initial begin
    $dumpfile("task.vcd");
    $dumpvars(0, task_tb);

    i_addr = 8'h12;
    i_data = 8'h34;

    uut.do_write(i_addr, i_data);

    #10;
    $finish;
  end

endmodule
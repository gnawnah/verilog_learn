
// D flip-flop 
module d_ff (i_clk, i_d, o_q, o_qbar);
  input i_d, i_clk;
  output o_q, o_qbar;
  wire i_d, i_clk;
  reg o_q = 1'b0, o_qbar = 1'b0;

  always @ (posedge i_clk)
    begin
      o_q<=i_d;
      o_qbar<=!i_d;
    end

endmodule

// testbench for the D flip-flop
`timescale 1us/1ns
module d_ff_tb;
reg r_D_TB, r_CLK_TB;
wire w_D_TB, w_QBAR_TB;

always #5 r_CLK_TB = !r_CLK_TB; // 100 kHz clock: period = 10 us, half-period = 5 us

d_ff UUT (
  .i_clk(r_CLK_TB),
  .i_d(r_D_TB),
  .o_q(w_Q_TB),
  .o_qbar(w_QBAR_TB)
);

initial begin
  $dumpfile("abw.vcd");
  $dumpvars(0, d_ff_tb);
  r_CLK_TB <= 1'b0;
  r_D_TB <= 1'b0;
  #40;
  r_D_TB <= 1'b1;
  #40;
  $finish;
end

endmodule
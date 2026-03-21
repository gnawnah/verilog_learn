`include "tutorial_led_blink.v"
`timescale 1us/1ns

module tutorial_led_blink_tb;

  reg r_CLOCK    = 1'b0;
  reg r_ENABLE   = 1'b0;
  reg r_SWITCH_1 = 1'b0;
  reg r_SWITCH_2 = 1'b0;

  wire w_LED_DRIVE;

  // Instantiate the Unit Under Test (UUT)
  tutorial_led_blink UUT (
    .i_clock(r_CLOCK),
    .i_enable(r_ENABLE),
    .i_switch_1(r_SWITCH_1),
    .i_switch_2(r_SWITCH_2),
    .o_led_drive(w_LED_DRIVE)
  );

  // 25 kHz clock: period = 40 us, half-period = 20 us
  always #20 r_CLOCK = ~r_CLOCK;

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tutorial_led_blink_tb);

    r_ENABLE   = 1'b1;

    r_SWITCH_1 = 1'b0;
    r_SWITCH_2 = 1'b0;
    #200000; // 0.2 seconds

    r_SWITCH_1 = 1'b0;
    r_SWITCH_2 = 1'b1;
    #200000; // 0.2 seconds

    r_SWITCH_1 = 1'b1;
    r_SWITCH_2 = 1'b0;
    #500000; // 0.5 seconds

    r_SWITCH_1 = 1'b1;
    r_SWITCH_2 = 1'b1;
    #2000000; // 2 seconds

    $display("Test Complete");
    $finish;
  end

endmodule
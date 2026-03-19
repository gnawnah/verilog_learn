
module tutorial_led_blink
(
  i_clock,
  i_enable,
  i_switch_1;
  i_switch_2;
  o_led_drive
);

input i_clock;
input i_enable;
input i_switch_1;
input i_switch_2;
output o_led_drive;

// constants
parameter c_CNT_100HZ = 125; // the clock is 25kHz, so to get 100Hz, we need to divide the clock by 250, which is 125 for the half period
parameter c_CNT_50HZ = 250;
parameter c_CNT_10HZ = 1250;
parameter c_CNT_1HZ = 12500;

reg [31:0] r_CNT_100HZ = 0; // this is for counting the clock cycles, it is a 32-bit register, it can hold a value from 0 to 2^32-1
reg [31:0] r_CNT_50HZ = 0;
reg [31:0] r_CNT_10HZ = 0;
reg [31:0] r_CNT_1HZ = 0;

reg r_TOGGLE_100HZ = 0; // this is for toggling the LED, it is a 1-bit register, it can hold a value of 0 or 1
reg r_TOGGLE_50HZ = 0;
reg r_TOGGLE_10HZ = 0;
reg r_TOGGLE_1HZ = 0;

reg r_LED_SELECT; // this is for selecting which LED to drive, it is a 1-bit register, it can hold a value of 0 or 1
wire w_LED_SELECT;

begin 
  always @ (posedge i_clock)
    begin
      if (r_CNT_100HZ)




end
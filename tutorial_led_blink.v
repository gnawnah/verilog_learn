module tutorial_led_blink (
    i_clock,
    i_enable,
    i_switch_1,
    i_switch_2,
    o_led_drive
);

  input  i_clock;
  input  i_enable;
  input  i_switch_1;
  input  i_switch_2;
  output o_led_drive;

  // Constants (parameters) to create the frequencies needed:
  // Input clock is 25 kHz
  parameter c_CNT_100HZ = 125;
  parameter c_CNT_50HZ  = 250;
  parameter c_CNT_10HZ  = 1250;
  parameter c_CNT_1HZ   = 12500;

  // These signals will be the counters
  reg [31:0] r_CNT_100HZ = 0;
  reg [31:0] r_CNT_50HZ  = 0;
  reg [31:0] r_CNT_10HZ  = 0;
  reg [31:0] r_CNT_1HZ   = 0;

  // These signals will toggle at the frequencies needed
  reg r_TOGGLE_100HZ = 1'b0;
  reg r_TOGGLE_50HZ  = 1'b0;
  reg r_TOGGLE_10HZ  = 1'b0;
  reg r_TOGGLE_1HZ   = 1'b0;

  // One bit select
  reg  r_LED_SELECT;
  wire w_LED_SELECT;

  // 100 Hz toggle
  always @(posedge i_clock) begin
    if (r_CNT_100HZ == c_CNT_100HZ - 1) begin
      r_TOGGLE_100HZ <= ~r_TOGGLE_100HZ;
      r_CNT_100HZ    <= 0;
    end
    else begin
      r_CNT_100HZ <= r_CNT_100HZ + 1;
    end
  end

  // 50 Hz toggle
  always @(posedge i_clock) begin
    if (r_CNT_50HZ == c_CNT_50HZ - 1) begin
      r_TOGGLE_50HZ <= ~r_TOGGLE_50HZ;
      r_CNT_50HZ    <= 0;
    end
    else begin
      r_CNT_50HZ <= r_CNT_50HZ + 1;
    end
  end

  // 10 Hz toggle
  always @(posedge i_clock) begin
    if (r_CNT_10HZ == c_CNT_10HZ - 1) begin
      r_TOGGLE_10HZ <= ~r_TOGGLE_10HZ;
      r_CNT_10HZ    <= 0;
    end
    else begin
      r_CNT_10HZ <= r_CNT_10HZ + 1;
    end
  end

  // 1 Hz toggle
  always @(posedge i_clock) begin
    if (r_CNT_1HZ == c_CNT_1HZ - 1) begin
      r_TOGGLE_1HZ <= ~r_TOGGLE_1HZ;
      r_CNT_1HZ    <= 0;
    end
    else begin
      r_CNT_1HZ <= r_CNT_1HZ + 1;
    end
  end

  // Create a multiplexer based on switch inputs
  always @(*) begin
    case ({i_switch_1, i_switch_2}) // Concatenation operator
      2'b11: r_LED_SELECT = r_TOGGLE_1HZ; // this is setting r_LED_SELECT to the value of r_TOGGLE_1HZ when both switches are 1
      2'b10: r_LED_SELECT = r_TOGGLE_10HZ;
      2'b01: r_LED_SELECT = r_TOGGLE_50HZ;
      2'b00: r_LED_SELECT = r_TOGGLE_100HZ;
      default: r_LED_SELECT = 1'b0;
    endcase
  end

  assign o_led_drive = r_LED_SELECT & i_enable;

  // Alternative way to design multiplexer (same as above):
  // assign w_LED_SELECT = i_switch_1 ? (i_switch_2 ? r_TOGGLE_1HZ  : r_TOGGLE_10HZ) :
  //                                    (i_switch_2 ? r_TOGGLE_50HZ : r_TOGGLE_100HZ);
  // assign o_led_drive = w_LED_SELECT & i_enable;

endmodule
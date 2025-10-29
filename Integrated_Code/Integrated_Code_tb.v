`timescale 1ns / 1ps

module Integrated_Code_tb;

    // Inputs
    reg clock;
    reg [3:0] KEY;
    reg [9:0] SW;

    // Outputs
    wire resetApp;
    wire LT24Wr_n, LT24Rd_n, LT24CS_n, LT24RS, LT24Reset_n, LT24LCDOn;
    wire [15:0] LT24Data;
    wire [3:0] debug_state;
    wire pwm;
    wire debug_key0_held;

    // Instantiate the Unit Under Test (UUT)
    Integrated_Code uut (
        .clock(clock),
        .KEY(KEY),
        .SW(SW),
        .resetApp(resetApp),
        .LT24Wr_n(LT24Wr_n),
        .LT24Rd_n(LT24Rd_n),
        .LT24CS_n(LT24CS_n),
        .LT24RS(LT24RS),
        .LT24Reset_n(LT24Reset_n),
        .LT24Data(LT24Data),
        .LT24LCDOn(LT24LCDOn),
        .debug_state(debug_state),
        .pwm(pwm),
        .debug_key0_held(debug_key0_held)
    );

    // Clock generation
    initial clock = 0;
    always #10 clock = ~clock;  // 50 MHz clock (period = 20ns)

    // Simulation procedure
    initial begin
        // Initialize inputs
        KEY = 4'b1111;   // All keys unpressed (active low)
        SW = 10'b0000000000; // All switches off

        // Wait 100 ns for global reset
        #100;

        // Simulate reset
        KEY[0] = 0; #100; KEY[0] = 1; #100;

        // Show image
        SW[0] = 1; #50; SW[0] = 0;

        // Enter number '3'
        SW[3] = 1; #50; SW[3] = 0;

        // Cursor move left
        KEY[1] = 0; #50; KEY[1] = 1;

        // Enter number '5'
        SW[5] = 1; #50; SW[5] = 0;

        // Move cursor up
        KEY[2] = 0; #50; KEY[2] = 1;

        // Long reset
        KEY[0] = 0; #200; KEY[0] = 1;

        // Observe outputs
        #500;

        $finish;
    end

endmodule

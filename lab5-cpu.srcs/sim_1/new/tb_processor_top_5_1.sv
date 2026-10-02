`timescale 1ns / 1ps

module tb_processor_top_5_1;

    logic clk;
    logic reset;
    logic run_i;
    logic continue_i;
    logic [15:0] sw_i;

    logic [15:0] led_o;
    logic [7:0] hex_seg_left;
    logic [3:0] hex_grid_left;
    logic [7:0] hex_seg_right;
    logic [3:0] hex_grid_right;

    processor_top dut (
        .clk(clk),
        .reset(reset),
        .run_i(run_i),
        .continue_i(continue_i),
        .sw_i(sw_i),
        .led_o(led_o),
        .hex_seg_left(hex_seg_left),
        .hex_grid_left(hex_grid_left),
        .hex_seg_right(hex_seg_right),
        .hex_grid_right(hex_grid_right)
    );

    // Toggle every 5 ns: one full clock period is 10 ns.
    always #5 clk = ~clk;

    initial begin
        // Starting input values at 0 ns.
        clk = 1'b0;
        reset = 1'b0;
        run_i = 1'b0;
        continue_i = 1'b0;
        sw_i = 16'h0000;

        // 80 ns: assert reset after the input synchronizers settle.
        #80;
        reset = 1'b1;

        // 130 ns: release reset after five clock periods.
        #50;
        reset = 1'b0;

        // 250 ns: keep the original test's first instruction.
        // The dots name instances inside the DUT (lecture slide 132).
        // Use behavioral simulation with the project's test_memory module.
        #120;
        //dut.mem_subsystem.test_mem_subsystem.mem_array[0] = 16'h1221;

        // 300 ns: press Run to start the first fetch.
        #50;
        run_i = 1'b1;

        // 420 ns: release Run and end the simulation.
        // Continue stays low, so the CPU pauses after the first fetch.
        #120;
        run_i = 1'b0;
        $finish;
    end

endmodule

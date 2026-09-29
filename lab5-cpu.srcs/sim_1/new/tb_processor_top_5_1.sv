`timescale 1ns / 1ps

// ECE 385 Lab 5.1: FETCH only; no instruction execution is expected.
// Repository: juniperchow/ece385lab5cpu, commit f01d1db.
// Add this file to Simulation Sources and select tb_processor_top_5_1.
// Compile the project RTL and test_memory.sv, with types.sv on the include path.
// Do not define SYNTHESIS. The testbench initializes the supplied simulation RAM.
// The current repository has CPU wiring defects; failures are expected until
// those defects are corrected. This testbench does not override CPU signals.
// Syntax/elaboration checked with slang; not run in an event-driven simulator.

module tb_processor_top_5_1;
    localparam int TIMEOUT_CYCLES = 40;
    localparam int BUTTON_CYCLES = 12;

    logic clk = 1'b0;
    logic reset = 1'b0;
    logic run_i = 1'b0;
    logic continue_i = 1'b0;
    logic [15:0] sw_i = 16'h0000;
    wire [15:0] led_o;
    wire [7:0] hex_seg_left, hex_seg_right;
    wire [3:0] hex_grid_left, hex_grid_right;

    int unsigned error_count = 0;
    int unsigned check_count = 0;
    int unsigned fetch_count = 0;
    int unsigned reset_cycles = 0;
    bit monitor_enable = 0;
    bit reset_count_enable = 0;

    processor_top dut (
        .clk(clk), .reset(reset), .run_i(run_i),
        .continue_i(continue_i), .sw_i(sw_i), .led_o(led_o),
        .hex_seg_left(hex_seg_left), .hex_grid_left(hex_grid_left),
        .hex_seg_right(hex_seg_right), .hex_grid_right(hex_grid_right)
    );

    always #5 clk = ~clk;

    // Independent expected words. Even ADD/AND/NOT encodings must only be
    // fetched in Week 1; no decode/execute phase should occur.
    function automatic logic [15:0] expected_word(input int unsigned address);
        case (address)
            0: expected_word = 16'h1221;
            1: expected_word = 16'h54A5;
            2: expected_word = 16'h96FF;
            3: expected_word = 16'h0000;
            4: expected_word = 16'hFFFF;
            default: expected_word = 16'hA55A;
        endcase
    endfunction

    task automatic check_value(
        input string label_text,
        input logic [31:0] actual,
        input logic [31:0] expected
    );
        check_count++;
        if (actual !== expected) begin
            error_count++;
            $display("[FAIL] %0t %s: actual=0x%08h (%0d), expected=0x%08h (%0d)",
                     $time, label_text, actual, actual, expected, expected);
        end else begin
            $display("[PASS] %0t %s: actual=0x%08h (%0d), expected=0x%08h (%0d)",
                     $time, label_text, actual, actual, expected, expected);
        end
    endtask

    task automatic tick(input int cycles);
        repeat (cycles) begin
            @(posedge clk);
            #1; // Sample after DUT nonblocking assignments have settled.
        end
    endtask

    task automatic initialize_test_memory;
        // The supplied memory reloads its original image while reset is high.
        // Install our directed image only after the synchronized reset clears.
        @(negedge clk);
        for (int unsigned i = 0; i < 256; i++)
            dut.mem_subsystem.test_mem_subsystem.mem_array[i] = expected_word(i);
    endtask

    task automatic apply_reset;
        monitor_enable = 0;
        @(negedge clk);
        reset = 1'b1;
        run_i = 1'b0;
        continue_i = 1'b0;
        reset_cycles = 0;
        reset_count_enable = 1;
        tick(5);
        @(negedge clk);
        reset = 1'b0;
        // Account for the actual processor_top synchronizer/debouncer latency.
        tick(BUTTON_CYCLES);
        reset_count_enable = 0;
        check_value("CPU reset held for five rising edges", reset_cycles, 5);
        check_value("Synchronized reset released", {31'b0, dut.reset_s}, 0);
        check_value("Reset PC", {16'b0, dut.slc3.cpu.pc}, 0);
        check_value("Reset MAR", {16'b0, dut.slc3.cpu.mar}, 0);
        check_value("Reset MDR", {16'b0, dut.slc3.cpu.mdr}, 0);
        check_value("Reset IR", {16'b0, dut.slc3.cpu.ir}, 0);
        check_value("Reset LEDs", {16'b0, led_o}, 0);
        check_value("Halted memory read enable", {31'b0, dut.sram_mem_ena}, 0);
        check_value("Halted memory write enable", {31'b0, dut.sram_wr_ena}, 0);
        fetch_count = 0;
        initialize_test_memory();
        monitor_enable = 1;
        tick(5);
        check_value("CPU waits for Run", {16'b0, dut.slc3.cpu.pc}, 0);
        check_value("No fetch before Run", fetch_count, 0);
    endtask

    task automatic press_run;
        @(negedge clk);
        run_i = 1'b1;
        tick(BUTTON_CYCLES);
        @(negedge clk);
        run_i = 1'b0;
        tick(BUTTON_CYCLES);
    endtask

    task automatic press_continue(input int hold_cycles);
        @(negedge clk);
        continue_i = 1'b1;
        tick(hold_cycles);
        @(negedge clk);
        continue_i = 1'b0;
        tick(BUTTON_CYCLES);
    endtask

    task automatic check_pause(input int unsigned address);
        bit reached_pause;
        reached_pause = 0;
        for (int n = 0; n < TIMEOUT_CYCLES; n++) begin
            tick(1);
            if (dut.slc3.cpu.ld_led === 1'b1) begin
                reached_pause = 1;
                break;
            end
        end
        check_value($sformatf("Fetch %0d reached pause before timeout", address),
                    {31'b0, reached_pause}, 1);
        check_value("Exactly one IR load per requested fetch", fetch_count, address + 1);
        check_value("MAR equals fetched address", {16'b0, dut.slc3.cpu.mar}, address);
        check_value("PC increments once", {16'b0, dut.slc3.cpu.pc}, address + 1);
        check_value("MDR contains fetched word", {16'b0, dut.slc3.cpu.mdr},
                    {16'b0, expected_word(address)});
        check_value("IR contains fetched word", {16'b0, dut.slc3.cpu.ir},
                    {16'b0, expected_word(address)});
        check_value("IR feeds right HEX driver", {16'b0, dut.slc3.hex_display_debug},
                    {16'b0, expected_word(address)});
        check_value("Paused LEDs show IR", {16'b0, led_o},
                    {16'b0, expected_word(address)});
        check_value("Memory idle during pause", {31'b0, dut.sram_mem_ena}, 0);
        tick(8);
        check_value("IR holds while Continue is low", {16'b0, dut.slc3.cpu.ir},
                    {16'b0, expected_word(address)});
        check_value("PC holds while Continue is low", {16'b0, dut.slc3.cpu.pc}, address + 1);
        check_value("No extra fetch during pause", fetch_count, address + 1);
    endtask

    // Observe load strobes at the same edge used by the registers.
    always @(posedge clk) begin
        if (reset_count_enable && dut.reset_s === 1'b1)
            reset_cycles++;
        if (monitor_enable && dut.reset_s === 1'b0) begin
            if (dut.slc3.cpu.ld_ir === 1'b1)
                fetch_count++;
            check_count += 2;
            if (dut.slc3.cpu.mem_wr_ena !== 1'b0) begin
                error_count++;
                $display("[FAIL] %0t FETCH-only CPU write enable: actual=%b expected=0",
                         $time, dut.slc3.cpu.mem_wr_ena);
            end
            if (dut.slc3.cpu.ld_reg !== 1'b0) begin
                error_count++;
                $display("[FAIL] %0t FETCH-only register write: actual=%b expected=0",
                         $time, dut.slc3.cpu.ld_reg);
            end
        end
    end

    initial begin
        $display("=== ECE 385 Lab 5.1: self-checking FETCH test ===");
        // Let synchronizer flops settle before creating a real reset transition.
        // The provided debounce counter has no explicit initialization/reset.
        tick(8);
        apply_reset();
        press_run();
        check_pause(0);
        press_continue(BUTTON_CYCLES);
        check_pause(1);
        press_continue(BUTTON_CYCLES);
        check_pause(2);
        press_continue(BUTTON_CYCLES);
        check_pause(3); // Zero data is a valid fetched word, not a timeout marker.
        press_continue(BUTTON_CYCLES);
        check_pause(4); // All-one data is also valid in FETCH-only mode.

        // A held Continue must not advance until it is released.
        @(negedge clk);
        continue_i = 1'b1;
        tick(3 * BUTTON_CYCLES);
        check_value("Held Continue does not repeat fetch", fetch_count, 5);
        check_value("Held Continue preserves PC", {16'b0, dut.slc3.cpu.pc}, 5);
        check_value("Held Continue preserves IR", {16'b0, dut.slc3.cpu.ir}, 16'hFFFF);
        @(negedge clk);
        continue_i = 1'b0;
        tick(BUTTON_CYCLES);
        check_pause(5);

        // Reset must recover from a running/paused CPU and restart at address 0.
        apply_reset();
        press_run();
        check_pause(0);

        $display("=== Checks: %0d; errors: %0d ===", check_count, error_count);
        if (error_count == 0)
            $display("[PASS] Lab 5.1 FETCH verification completed successfully.");
        else
            $display("[FAIL] Lab 5.1 FETCH verification found %0d errors.", error_count);
        $finish;
    end

    initial begin
        #100000;
        error_count++;
        $display("[FAIL] Global watchdog timeout; checks=%0d errors=%0d",
                 check_count, error_count);
        $finish;
    end
endmodule

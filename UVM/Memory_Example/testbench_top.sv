module testbench_top;

    // Clock and reset signals declaration
    bit clk, reset;

    // Clock generation
    always #5 clk = !clk;

    // Reset generation
    initial begin
        reset = 1;
        #5 reset = 0;
    end

endmodule // testbench_top

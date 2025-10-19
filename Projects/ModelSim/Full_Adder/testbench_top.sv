/*

    _inst => Instance
    vir_  => Virtual
    DUT   => Design Under Test

*/

module testbench_top;

    test       test_inst(interface_inst);

    interface_ interface_inst();

    full_adder DUT(
        .a(interface_inst.a),
        .b(interface_inst.b),
        .c_in(interface_inst.c_in),
        .s(interface_inst.s),
        .c_out(interface_inst.c_out)
    );

    initial begin
        $dumpfile("dump.vcd");  // Waveform output
        $dumpvars;
    end

endmodule // testbench_top

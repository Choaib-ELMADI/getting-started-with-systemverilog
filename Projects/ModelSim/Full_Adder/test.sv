`include "environment.sv"

program test(full_adder_if interface_inst);
    environment env;

    initial begin
        env = new(interface_inst);
        env.test_run();
    end

endprogram // test

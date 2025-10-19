`include "environment.sv"

program test(interface_ interface_inst);
    environment env;

    initial begin
        env = new(interface_inst);
        env.test_run();
    end

endprogram // test

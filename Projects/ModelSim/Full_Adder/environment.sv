`include "generator.sv"
`include "interface_.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
    generator  gen;
    driver     drv;
    monitor    mnt;
    scoreboard scb;

    mailbox gen2drv;
    mailbox mnt2scb;

    virtual interface_ vir_interface_inst;

    function new(interface_ vir_interface_inst);
        this.vir_interface_inst = vir_interface_inst;

        gen2drv = new();
        mnt2scb = new();

        gen = new(gen2drv);
        drv = new(vir_interface_inst, gen2drv);
        mnt = new(vir_interface_inst, mnt2scb);
        scb = new(mnt2scb);
    endfunction // new

    task test_run();
        fork
            gen.main();
            drv.main();
            mnt.main();
            scb.main();
        join
    endtask // test_run

endclass // environment

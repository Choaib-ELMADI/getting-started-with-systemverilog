class driver;
    virtual interface_ vir_interface_inst();

    mailbox gen2drv;

    function new(virtual interface_ vir_interface_inst, mailbox gen2drv);
        this.vir_interface_inst = vir_interface_inst;
        this.gen2drv = gen2drv;
    endfunction // new

    task main();
        repeat (2) begin
            transaction trans;
            gen2drv.get(trans);

            vir_interface_inst.a    <= trans.a;
            vir_interface_inst.b    <= trans.b;
            vir_interface_inst.c_in <= trans.c_in;
            #1;

            trans.display("DRIVER CLASS SIGNALS");
        end
    endtask // main

endclass // driver

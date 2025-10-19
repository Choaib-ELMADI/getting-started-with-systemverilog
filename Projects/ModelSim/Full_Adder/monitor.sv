class monitor;
    virtual interface_ vir_interface_inst();

    mailbox mnt2scb;

    function new(virtual interface_ vir_interface_inst, mailbox mnt2scb);
        this.vir_interface_inst = vir_interface_inst;
        this.mnt2scb = mnt2scb;
    endfunction // new

    task main();
        repeat (2) begin
            #1;

            transaction trans = new();
            trans.a     = vir_interface_inst.a;
            trans.b     = vir_interface_inst.b;
            trans.c_in  = vir_interface_inst.c_in;
            trans.s     = vir_interface_inst.s;
            trans.c_out = vir_interface_inst.c_out;

            mnt2scb.put(trans);

            trans.display("MONITOR CLASS SIGNALS");
        end
    endtask // main

endclass // monitor

`include "transaction.sv"

class generator;
    transaction trans;

    mailbox gen2drv;

    function new(mailbox gen2drv);
        this.gen2drv = gen2drv;
    endfunction // new

    task main;
        repeat (2) begin
            trans = new();
            if (!trans.randomize()) begin
                $display("ERROR IN GENERATOR TRANSACTION RANDOMIZATION");
                $finish;
            end

            trans.display("GENERATOR CLASS SIGNALS");
            gen2drv.put(trans);
        end
    endtask // main

endclass // generator

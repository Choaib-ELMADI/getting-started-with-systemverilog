`include "transaction.sv"

class scoreboard;
    mailbox mnt2scb;

    function new(mailbox mnt2scb);
        this.mnt2scb = mnt2scb;
    endfunction // new

    task main();
        transaction trans;

        repeat (2) begin
            mnt2scb.get(trans);
            trans.display("SCOREBOARD CLASS SIGNALS");

            // Reference module | Golden DUT
            if (
                ((trans.a ^ trans.b ^ trans.c_in) == trans.s) &&
                (((trans.a & trans.b) | (trans.c_in & (trans.a ^ trans.b))) == trans.c_out)
            )
                $display("***** PASS *****");
            else
                $display("!!!!! FAIL !!!!!");
        end
    endtask // main

endclass // scoreboard

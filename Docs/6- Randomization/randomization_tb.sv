class rand_class;
    rand  bit [3:0] addr;
    randc bit [3:0] data;

    function void run();

        if (this.randomize()) begin // ERROR: randomize() is not supported in ModelSim! Check QuestaSim!
            $display("rand : %0d", this.addr);
            $display("randc: %0d", this.data);
        end else begin
            $display("Randomization error!");
        end

    endfunction // run

endclass // rand_class

module randomization_tb;
    rand_class r;

    initial begin

        r = new();
        r.run();

    end

endmodule // randomization_tb

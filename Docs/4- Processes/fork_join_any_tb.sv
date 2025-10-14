module fork_join_any_tb;
    initial $display("..........FORK JOIN ANY..........");

    initial begin

        fork
            begin
                $display("%0t Process 1 started", $time);
                #5;
                $display("%0t Process 1 completed", $time);
            end

            begin
                $display("%0t Process 2 started", $time);
                #20;
                $display("%0t Process 2 completed", $time);
            end
        join_any
            $display("%0t Fork join any completed", $time);
            $display("..........FORK JOIN ANY..........");
            #100 $finish;

    end

endmodule // fork_join_any_tb

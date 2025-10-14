module fork_join_tb;
    initial $display("..........FORK JOIN..........");

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
        join
            $display("%0t Fork join completed", $time);
            $display("..........FORK JOIN..........");
            #100 $finish;

    end

endmodule // fork_join_tb

module queues_tb;
    bit bit_q [$];
    int int_q [$:2] = { 1, 2, 3 };
    int q_int [$]   = { 4, 5, 6, 7, 8 };

    initial begin

        foreach (int_q[i]) $display("int_q[%0d] = %0d", i, int_q[i]);
        foreach (q_int[i]) $display("q_int[%0d] = %0d", i, q_int[i]);

        bit_q.push_back(1'b0);
        $display("bit_q = %p", bit_q);
        bit_q.push_back(1'b1);
        $display("bit_q = %p", bit_q);
        bit_q.push_back(1'b0);
        $display("bit_q = %p", bit_q);
        bit_q.push_back(1'b0);
        $display("bit_q = %p", bit_q);
        bit_q.pop_front();
        $display("bit_q = %p", bit_q);
        bit_q.pop_back();
        $display("bit_q = %p", bit_q);

    end

endmodule // queues_tb

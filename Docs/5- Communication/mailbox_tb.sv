class sender;
    int s_data;
    mailbox mbx;

    task send();
        s_data = 10;
        mbx.put(s_data);
    endtask // send

endclass // sender

class receiver;
    int r_data;
    mailbox mbx;

    task receive();
        mbx.get(r_data);
        $display("Received data is: %0d", r_data);
    endtask // receive

endclass // receiver

module mailbox_tb;
    mailbox  mbx;
    sender   s;
    receiver r;

    initial begin

        s = new();
        r = new();

        s.mbx = mbx;
        r.mbx = mbx;

        s.send();
        r.receive();

    end

endmodule // mailbox_tb

class packet;
    bit [31:0] address;
    bit [31:0] data;
    int        x;

    function new(int x_init);
        $display("Inside new function constructor of pakcet!");
        x = x_init;
    endfunction // new

    function void print();
        $display("Inside print function of pakcet!");
    endfunction // print

    function get();
        return x;
    endfunction // get

    function void set(int i);
        x = i;
    endfunction // set

endclass // packet

module packet_class_tb;
    packet packet_1;            // Object declaration

    initial begin

        packet_1 = new(10);     // Object creation
        $display("%0d", packet_1.get());
        packet_1.print();
        packet_1.set(14);
        $display("%0d", packet_1.get());

    end

endmodule // packet_class_tb

class packet;
    bit [31:0] address;
    bit [31:0] data;
    int        x;

    function new(int x_init);

        $display("Inside new function constructor of pakcet!");
        x = x_init;

    endfunction // new

    function void print;
        $display("Inside print function of pakcet!");
    endfunction // print

    function get;
        return x;
    endfunction // get

    function set(int i);
        x = i;
    endfunction // set

endclass // packet

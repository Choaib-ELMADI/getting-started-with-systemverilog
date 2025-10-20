`ifndef TRANSACTION_SV
`define TRANSACTION_SV

class transaction;
    rand bit a, b, c_in;
    bit      s, c_out;

    function void display(string name);
        $display("__________ %s __________", name);
        $display("a=%0b, b=%0b, c_in=%0b --> s=%0b, c_out=%0b", a, b, c_in, s, c_out);
        $display("______________________________");
    endfunction // display

endclass // transaction

`endif

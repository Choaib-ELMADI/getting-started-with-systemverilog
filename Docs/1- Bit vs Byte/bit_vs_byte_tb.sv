module bit_vs_byte_tb;
    bit  [7:0] bit_variable;    // bit is unsigned
    byte       byte_variable;   // byte is signed

    initial begin

        bit_variable  = 8'b10101010;    // 170
        byte_variable = 8'b10101010;    // -86

        $display("bit_variable : %b - %d", bit_variable,  bit_variable);
        $display("byte_variable: %b - %d", byte_variable, byte_variable);

    end

endmodule // bit_vs_byte_tb

module full_adder (
    input  a, b, c_in,  // 'wire' implicitly
    output s, c_out     // 'wire' implicitly
);

    // s = a xor b xor c_in
    assign s = a ^ b ^ c;

    // c_out = (a and b) or (c_in and (a xor b))
    assign c_out = (a & b) | (c_in & (a ^ b));

endmodule // full_adder

module static_arrays_tb;

    bit [3:0] array_1;          // 4-bit vector
    array_1 = 4'b1010;

    bit [1:0][3:0] array_2;     // 8-bit vector
    array_2 = '{ 2, 4 };
    // array_2[1] = 2 ---> array_2[1] = 0010
    // array_2[0] = 4 ---> array_2[0] = 0100

    bit y = array_2[0][2];      // y = 1

    /* ---- ---- ---- ---- ---- */

    int array_3 [6];            // Compact declaration
    int array_4 [0:5];          // Verbose declaration

    int array_5 [6][2];

    int array_6 [3][6][2];

endmodule // static_arrays_tb

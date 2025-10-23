module dynamic_arrays_tb;

    // Declaration
    int       d_array_1 [];
    bit [7:0] d_array_2 [];

    // Memory allocation
    d_array_1 = new[2];
    d_array_2 = new[4];

    // Initialization - Assigning values
    d_array_1 = '{ 10, 2 };
    d_array_2 = '{ 1, 2, 3, 4 };
    // d_array_2[3] = 1 ---> d_array_2[3] = 0000 0001
    // d_array_2[2] = 2 ---> d_array_2[2] = 0000 0010
    // d_array_2[1] = 3 ---> d_array_2[1] = 0000 0011
    // d_array_2[0] = 4 ---> d_array_2[0] = 0000 0100

    d_array_1 = new[10];            // Old values are deleted
    d_array_2 = new[10](d_array_2); // Preserve old values

endmodule // dynamic_arrays_tb

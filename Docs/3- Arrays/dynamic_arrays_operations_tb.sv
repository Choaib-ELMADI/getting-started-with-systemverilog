module dynamic_arrays_operations_tb;
    int array [];   // Dynamic array

    initial begin

        array = new[5]; 
        $display("Size: %0d", array.size());

        array = '{ 5, 4, 3, 2, 1 };
        // array[0] = 5
        // array[1] = 4
        // array[2] = 3
        // array[3] = 2
        // array[4] = 1

        $display("Size: %0d", array.size());
        foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);

        array = new[4](array);
        // array[0] = 5
        // array[1] = 4
        // array[2] = 3
        // array[3] = 2

        $display("Size: %0d", array.size());
        foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);

        array = new[3];
        // array[0] = 0
        // array[1] = 0
        // array[2] = 0

        $display("Size: %0d", array.size());
        foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);

        array.delete();
        $display("Size: %0d", array.size());

    end

endmodule // dynamic_arrays_operations_tb

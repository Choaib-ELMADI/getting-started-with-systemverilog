module associative_arrays_tb;
    int num_cars [string];
    int array [*];

    initial begin

        num_cars = '{ "BMW": 5, "M.Benz": 4, "Dacia": 10 };
        // array = '{ 1, 2, 3 }; // ERROR: An associative array assignment pattern may only have named elements.
        array = '{ 1: 1, "TWO": 2, 11: 3, 0100: 4 };

        $display("Number of cars: %p", num_cars);
        $display("Number of BMWs: %0d", num_cars["BMW"]);

    end

endmodule // associative_arrays_tb

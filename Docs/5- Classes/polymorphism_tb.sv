class base_class;
    virtual function void display();
        $display("Base class is displaying!");
    endfunction // display

endclass // base_class

class derived_class extends base_class;
    function void display();
        $display("Derived class is displaying!");
    endfunction // display

endclass // derived_class

module polymorphism_tb;

    initial begin

        base_class base;
        // base.display();  // ERROR

        derived_class derived = new();
        derived.display();

        base = derived;     // POLYMORPHISM
        // 'base' handle type is base_class
        // 'base' object type is derived_class
        base.display();

        derived.display();

    end

endmodule // polymorphism_tb

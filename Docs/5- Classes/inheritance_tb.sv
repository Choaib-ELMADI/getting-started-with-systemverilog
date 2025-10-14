class parent_trans;
    bit [31:0] data;

    function void disp_p();
        $display("Value of data = %0h", data);
    endfunction // disp_p

endclass // parent_trans

class child_trans extends parent_trans;
    int id;

    function void disp_c();
        $display("Value of id = %0h", id);
    endfunction // disp_c

endclass // child_trans

module inheritance_tb;

    initial begin

        child_trans c_tr;
        c_tr = new();
        c_tr.data = 5;  // Child class is updating a property of its base class
        c_tr.disp_p();  // Child class is accessing a method of its base class
        c_tr.id = 1;
        c_tr.disp_c();

    end

endmodule // inheritance_tb

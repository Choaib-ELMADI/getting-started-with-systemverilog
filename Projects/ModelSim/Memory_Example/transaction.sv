class transaction;
    rand bit       write_en, read_en;
    rand bit [1:0] address;
    rand bit [7:0] w_data;
    bit      [7:0] r_data;

    constraint read_write_en_constraint { write_en != read_en };

endclass // transaction

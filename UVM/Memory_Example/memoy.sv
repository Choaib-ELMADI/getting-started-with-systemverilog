module memory
    #(
        parameter ADDR_WIDTH = 2,   // 4 memory locations
        parameter DATA_WIDTH = 8    // 8-bit location size
    )
    (
        input                       clk, reset,
        input                       write_en, read_en,
        input      [ADDR_WIDTH-1:0] address,
        input      [DATA_WIDTH-1:0] w_data,
        output reg [DATA_WIDTH-1:0] r_data
    );

    reg [DATA_WIDTH-1:0] mem [0:2**ADDR_WIDTH-1];

    always @(posedge clk) begin
        if (reset) begin
            for (int i=0; i<2**ADDR_WIDTH; i++) begin
                mem[i] <= 8'hFF;
            end
        end
        else begin
            if (write_en) begin
                mem[address] <= w_data;
            end

            if (read_en) begin
                r_data <= mem[address];
            end
        end
    end

endmodule // memory

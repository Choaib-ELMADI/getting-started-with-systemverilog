module strings_tb;

    string dialog = "Hello!";

    initial begin

        $display("%s", dialog);
        foreach (dialog[i]) begin
            $display("%s", dialog[i]);
        end

    end

endmodule

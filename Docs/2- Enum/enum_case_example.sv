module enum_case_example;
    typedef enum { IDLE, RUNNING, STOPPED } state_t;
    state_t current_state;

    initial begin

        current_state = RUNNING;

        case (current_state)
            IDLE   : $display("Current state is IDLE = %d.", current_state);
            RUNNING: $display("Current state is RUNNING = %d.", current_state);
            STOPPED: $display("Current state is STOPPED = %d.", current_state);
            default: $display("Unknown state!");
        endcase

    end

endmodule // enum_case_example

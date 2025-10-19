`include "agent.sv"
`include "scoreboard.sv"

class environment extends uvm_env;
    agent      agt;
    scoreboard scb;

    function new();
    endfunction // new

endclass // environment

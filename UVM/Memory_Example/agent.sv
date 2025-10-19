`include "sequencer.sv"
`include "driver.sv"
`include "monitor.sv"

class agent extends uvm_agent;
    sequencer seq;
    driver    drv;
    monitor   mnt;

    function new();
    endfunction // new

endclass // agent

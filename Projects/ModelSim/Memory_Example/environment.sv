`include "generator.sv"
`include "driver.sv"
`include "scoreboard.sv"
`include "monitor.sv"

class environment;
    generator  gen;
    driver     drv;
    scoreboard scb;
    monitor    mnt;

    mailbox gen2drv;
    mailbox mnt2scb;

    function new();
    endfunction // new

endclass // environment

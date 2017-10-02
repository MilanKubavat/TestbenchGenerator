class monitor extends uvm_monitor;
   `uvm_component_utils(monitor)

   extern function new(string name, uvm_component parent);
   extern function void build_phase(uvm_phase phase);
   extern function void connect_phase(uvm_phase phase);

   extern task run_phase(uvm_phase phase);

endclass


function monitor::new(string name, uvm_component parent);
   super.new(name, parent);
endfunction


function void monitor::build_phase(uvm_phase phase);
endfunction


function void monitor::connect_phase phase(uvm_phase phase);
endfunction


task monitor::run_phase(uvm_phase phase);
endtask


class driver extends uvm_driver#(transaction);
   `uvm_component_utils(driver)

   extern function new(string name, uvm_component parent);
   extern function void build_phase(uvm_phase phase);
   extern function void connect_phase(uvm_phase phase);

   extern task run_phase(uvm_phase phase);

endclass


function driver::new(string name, uvm_component parent);
   super.new(name, parent);
endfunction


function void driver::build_phase(uvm_phase phase);
endfunction


function void driver::connect_phase phase(uvm_phase phase);
endfunction


task driver::run_phase(uvm_phase phase);
endtask


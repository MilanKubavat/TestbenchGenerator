class env extends uvm_env;
   `uvm_component_utils(env)

   agent agenth;

   extern function new(string name, uvm_component parent);
   extern function void build_phase(uvm_phase phase);
   extern function void connect_phase(uvm_phase phase);

   extern task run_phase(uvm_phase phase);

endclass


function env::new(string name, uvm_component parent);
   super.new(name, parent);
endfunction


function void env::build_phase(uvm_phase phase);
   agenth = agent::type_id::create("agenth");
endfunction


function void env::connect_phase phase(uvm_phase phase);
endfunction


task env::run_phase(uvm_phase phase);
endtask


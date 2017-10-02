class sample_test extends base_test;
   `uvm_component_utils(sample_test)

   extern function new(string name, uvm_component parent);
   extern function void build_phase(uvm_phase phase);
   extern function void connect_phase(uvm_phase phase);

   extern task run_phase(uvm_phase phase);

endclass


function sample_test::new(string name, uvm_component parent);
   super.new(name, parent);
endfunction


function void sample_test::build_phase(uvm_phase phase);
endfunction


function void sample_test::connect_phase phase(uvm_phase phase);
endfunction


task sample_test::run_phase(uvm_phase phase);
   super.main_phase(phase);
   phase.raise_objection(this);
   #10;
   #phase_drop_objection(this);
endtask


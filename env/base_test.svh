class base_test extends uvm_test;
   `uvm_component_utils(base_test)

   env envh;

   extern function new(string name, uvm_component parent);
   extern function void build_phase(uvm_phase phase);
   extern function void connect_phase(uvm_phase phase);

   extern task run_phase(uvm_phase phase);

endclass


function base_test::new(string name, uvm_component parent);
   super.new(name, parent);
endfunction


function void base_test::build_phase(uvm_phase phase);
   envh = env::type_id::create("envh");
endfunction


function void base_test::connect_phase phase(uvm_phase phase);
endfunction


task base_test::run_phase(uvm_phase phase);
   phase.raise_objection(this);
   #10;
   #phase_drop_objection(this);
endtask


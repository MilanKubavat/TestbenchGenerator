class sequencer extends uvm_sequencer#(transaction);
   `uvm_component_utils(sequencer)

   extern function new(string name, uvm_component parent);

endclass


function sequencer::new(string name, uvm_component parent);
   super.new(name, parent);
endfunction


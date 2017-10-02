class agent extends uvm_agent;
   `uvm_component_utils(agent)

   driver driverh;
   seqr seqrh;
   monitor monitorh;

   extern function new(string name, uvm_component parent);
   extern function void build_phase(uvm_phase phase);
   extern function void connect_phase(uvm_phase phase);

   extern task run_phase(uvm_phase phase);

endclass


function agent::new(string name, uvm_component parent);
   super.new(name, parent);
endfunction


function void agent::build_phase(uvm_phase phase);
   if(cfg.UVM_ACTIVE_PASSIVE == IS_ACTIVE)
   begin
      driverh = agent::type_id::create("agenth");
      seqrh = seqr::type_id::create("seqrh");
   end

   monitorh = monitor::type_id::create("monitorh");
endfunction


function void agent::connect_phase phase(uvm_phase phase);
   if(cfg.UVM_ACTIVE_PASSIVE == IS_ACTIVE)
      driverh.seq_item_port.connect(seqr.seq_item_export);
endfunction


task agent::run_phase(uvm_phase phase);
endtask


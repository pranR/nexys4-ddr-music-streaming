`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2018 07:37:43 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//import axi_vip_pkg::*;
//import axi4stream_vip_pkg::*;
import axi4stream_vip_v1_0_1_pkg::*;
import design_1_axi4stream_vip_0_1_pkg::*;

module tb();

        bit clock;
        bit reset;
        
        wire [15:0] dataOut;
        wire [31:0] AXIBus;
        wire ready, valid;
        design_1_wrapper DUT (.clock_rtl(clock), .reset_rtl(reset), .dataOut(dataOut), .AXIBus(AXIBus), .ready(ready), .valid(valid));
        
        initial begin
          //reset <= 1'b0;
          //#20
          reset <= 1'b1;
        end
        
        always #10 clock <= ~clock;
        
        design_1_axi4stream_vip_0_1_mst_t mst_agent;

        initial
        begin
            //axi4stream_transaction wr_transaction;
            mst_agent = new("master vip agent",DUT.design_1_i.axi4stream_vip_0.inst.IF);
                            
            mst_agent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);
            mst_agent.start_master();

            fork
               begin
                  $display("Simple master to slave transfer example with randomization completes");
                  for(int i = 0; i < 6;i++) begin
                     mst_gen_transaction();
                  end  
               end
            join_any
       end
       
       task mst_gen_transaction();
         axi4stream_transaction                         wr_transaction; 
         wr_transaction = mst_agent.driver.create_transaction("Master VIP write transaction");
         WR_TRANSACTION_FAIL: assert(wr_transaction.randomize());
         mst_agent.driver.send(wr_transaction);
       endtask
endmodule

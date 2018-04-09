//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Wed Mar 21 13:53:51 2018
//Host        : ug241 running 64-bit Debian GNU/Linux 9.4 (stretch)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=21,da_clkrst_cnt=4,da_mb_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (AXIBus,
    clock_rtl,
    dataOut,
    ready,
    reset_rtl,
    valid);
  output [31:0]AXIBus;
  input clock_rtl;
  output [15:0]dataOut;
  output ready;
  input reset_rtl;
  output [0:0]valid;

  wire [15:0]ChorusFilter_0_dataOut;
  wire ChorusFilter_0_s00_axis_tready;
  wire Net;
  wire [31:0]axi4stream_vip_0_m_axis_tdata;
  wire [0:0]axi4stream_vip_0_m_axis_tvalid;
  wire clk_wiz_clk_out1;

  assign AXIBus[31:0] = axi4stream_vip_0_m_axis_tdata;
  assign Net = reset_rtl;
  assign clk_wiz_clk_out1 = clock_rtl;
  assign dataOut[15:0] = ChorusFilter_0_dataOut;
  assign ready = ChorusFilter_0_s00_axis_tready;
  assign valid[0] = axi4stream_vip_0_m_axis_tvalid;
  design_1_ChorusFilter_0_3 ChorusFilter_0
       (.dataOut(ChorusFilter_0_dataOut),
        .s00_axis_aclk(clk_wiz_clk_out1),
        .s00_axis_aresetn(Net),
        .s00_axis_tdata(axi4stream_vip_0_m_axis_tdata),
        .s00_axis_tlast(1'b0),
        .s00_axis_tready(ChorusFilter_0_s00_axis_tready),
        .s00_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s00_axis_tvalid(axi4stream_vip_0_m_axis_tvalid));
  design_1_axi4stream_vip_0_1 axi4stream_vip_0
       (.aclk(clk_wiz_clk_out1),
        .aresetn(Net),
        .m_axis_tdata(axi4stream_vip_0_m_axis_tdata),
        .m_axis_tready(ChorusFilter_0_s00_axis_tready),
        .m_axis_tvalid(axi4stream_vip_0_m_axis_tvalid));
endmodule

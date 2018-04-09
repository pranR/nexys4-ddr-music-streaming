//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Wed Mar 21 13:27:34 2018
//Host        : ug241 running 64-bit Debian GNU/Linux 9.4 (stretch)
//Command     : generate_target ex_sim.bd
//Design      : ex_sim
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ex_sim,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex_sim,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ex_sim.hwdef" *) 
module ex_sim
   (Ready,
    Valid,
    aclk,
    aresetn);
  output [0:0]Ready;
  output [0:0]Valid;
  input aclk;
  input aresetn;

  wire aclk_1;
  wire aresetn_1;
  wire [31:0]axi4stream_vip_mst_M_AXIS_TDATA;
  wire [0:0]axi4stream_vip_mst_m_axis_tvalid;
  wire [31:0]axi4stream_vip_passthrough_M_AXIS_TDATA;
  wire [0:0]axi4stream_vip_passthrough_M_AXIS_TREADY;
  wire [0:0]axi4stream_vip_passthrough_M_AXIS_TVALID;
  wire [0:0]axi4stream_vip_passthrough_s_axis_tready;

  assign Ready[0] = axi4stream_vip_passthrough_s_axis_tready;
  assign Valid[0] = axi4stream_vip_mst_m_axis_tvalid;
  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  ex_sim_axi4stream_vip_mst_0 axi4stream_vip_mst
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_tdata(axi4stream_vip_mst_M_AXIS_TDATA),
        .m_axis_tready(1'b0),
        .m_axis_tvalid(axi4stream_vip_mst_m_axis_tvalid));
  ex_sim_axi4stream_vip_passthrough_0 axi4stream_vip_passthrough
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_tdata(axi4stream_vip_passthrough_M_AXIS_TDATA),
        .m_axis_tready(axi4stream_vip_passthrough_M_AXIS_TREADY),
        .m_axis_tvalid(axi4stream_vip_passthrough_M_AXIS_TVALID),
        .s_axis_tdata(axi4stream_vip_mst_M_AXIS_TDATA),
        .s_axis_tready(axi4stream_vip_passthrough_s_axis_tready),
        .s_axis_tvalid(1'b0));
  ex_sim_axi4stream_vip_slv_0 axi4stream_vip_slv
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .s_axis_tdata(axi4stream_vip_passthrough_M_AXIS_TDATA),
        .s_axis_tready(axi4stream_vip_passthrough_M_AXIS_TREADY),
        .s_axis_tvalid(axi4stream_vip_passthrough_M_AXIS_TVALID));
endmodule

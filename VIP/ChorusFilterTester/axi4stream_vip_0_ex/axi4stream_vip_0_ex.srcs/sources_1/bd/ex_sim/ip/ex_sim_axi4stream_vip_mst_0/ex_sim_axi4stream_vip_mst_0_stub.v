// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Wed Mar 21 13:28:11 2018
// Host        : ug241 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_mst_0/ex_sim_axi4stream_vip_mst_0_stub.v
// Design      : ex_sim_axi4stream_vip_mst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi4stream_vip_v1_0_1_top,Vivado 2017.2" *)
module ex_sim_axi4stream_vip_mst_0(aclk, aresetn, m_axis_tvalid, m_axis_tready, 
  m_axis_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,m_axis_tvalid[0:0],m_axis_tready[0:0],m_axis_tdata[31:0]" */;
  input aclk;
  input aresetn;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [31:0]m_axis_tdata;
endmodule

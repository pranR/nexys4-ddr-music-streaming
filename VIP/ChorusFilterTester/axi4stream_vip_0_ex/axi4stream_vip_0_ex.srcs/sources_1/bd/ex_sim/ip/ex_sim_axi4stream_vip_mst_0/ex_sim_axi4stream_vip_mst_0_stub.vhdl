-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Wed Mar 21 13:28:11 2018
-- Host        : ug241 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /nfs/ug/homes-0/y/yusufal5/Desktop/ChorusFilterTester/axi4stream_vip_0_ex/axi4stream_vip_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_axi4stream_vip_mst_0/ex_sim_axi4stream_vip_mst_0_stub.vhdl
-- Design      : ex_sim_axi4stream_vip_mst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ex_sim_axi4stream_vip_mst_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end ex_sim_axi4stream_vip_mst_0;

architecture stub of ex_sim_axi4stream_vip_mst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,m_axis_tvalid[0:0],m_axis_tready[0:0],m_axis_tdata[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi4stream_vip_v1_0_1_top,Vivado 2017.2";
begin
end;

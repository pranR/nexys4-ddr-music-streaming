-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Mon Mar 26 05:31:34 2018
-- Host        : ruben-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ruben/ECE532/final_demo/warmup/warmup.srcs/sources_1/bd/design_1/ip/design_1_Chorus_0_0/design_1_Chorus_0_0_sim_netlist.vhdl
-- Design      : design_1_Chorus_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Chorus_0_0_CircularBuffer is
  port (
    dataOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axis_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Chorus_0_0_CircularBuffer : entity is "CircularBuffer";
end design_1_Chorus_0_0_CircularBuffer;

architecture STRUCTURE of design_1_Chorus_0_0_CircularBuffer is
begin
\dataOut1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(0),
      Q => dataOut(0),
      R => '0'
    );
\dataOut1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(10),
      Q => dataOut(10),
      R => '0'
    );
\dataOut1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(11),
      Q => dataOut(11),
      R => '0'
    );
\dataOut1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(12),
      Q => dataOut(12),
      R => '0'
    );
\dataOut1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(13),
      Q => dataOut(13),
      R => '0'
    );
\dataOut1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(14),
      Q => dataOut(14),
      R => '0'
    );
\dataOut1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(15),
      Q => dataOut(15),
      R => '0'
    );
\dataOut1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(1),
      Q => dataOut(1),
      R => '0'
    );
\dataOut1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(2),
      Q => dataOut(2),
      R => '0'
    );
\dataOut1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(3),
      Q => dataOut(3),
      R => '0'
    );
\dataOut1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(4),
      Q => dataOut(4),
      R => '0'
    );
\dataOut1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(5),
      Q => dataOut(5),
      R => '0'
    );
\dataOut1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(6),
      Q => dataOut(6),
      R => '0'
    );
\dataOut1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(7),
      Q => dataOut(7),
      R => '0'
    );
\dataOut1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(8),
      Q => dataOut(8),
      R => '0'
    );
\dataOut1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => s00_axis_tdata(9),
      Q => dataOut(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Chorus_0_0_ChorusFilter is
  port (
    dataOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axis_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Chorus_0_0_ChorusFilter : entity is "ChorusFilter";
end design_1_Chorus_0_0_ChorusFilter;

architecture STRUCTURE of design_1_Chorus_0_0_ChorusFilter is
begin
circBuff: entity work.design_1_Chorus_0_0_CircularBuffer
     port map (
      dataOut(15 downto 0) => dataOut(15 downto 0),
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_tdata(15 downto 0) => s00_axis_tdata(15 downto 0),
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Chorus_0_0_Chorus_v1_0 is
  port (
    dataOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axis_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Chorus_0_0_Chorus_v1_0 : entity is "Chorus_v1_0";
end design_1_Chorus_0_0_Chorus_v1_0;

architecture STRUCTURE of design_1_Chorus_0_0_Chorus_v1_0 is
begin
chorusFilter: entity work.design_1_Chorus_0_0_ChorusFilter
     port map (
      dataOut(15 downto 0) => dataOut(15 downto 0),
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_tdata(15 downto 0) => s00_axis_tdata(15 downto 0),
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Chorus_0_0 is
  port (
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    dataOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Chorus_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Chorus_0_0 : entity is "design_1_Chorus_0_0,Chorus_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Chorus_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Chorus_0_0 : entity is "Chorus_v1_0,Vivado 2017.2";
end design_1_Chorus_0_0;

architecture STRUCTURE of design_1_Chorus_0_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  s00_axis_tready <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_Chorus_0_0_Chorus_v1_0
     port map (
      dataOut(15 downto 0) => dataOut(15 downto 0),
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_tdata(15 downto 0) => s00_axis_tdata(15 downto 0),
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;

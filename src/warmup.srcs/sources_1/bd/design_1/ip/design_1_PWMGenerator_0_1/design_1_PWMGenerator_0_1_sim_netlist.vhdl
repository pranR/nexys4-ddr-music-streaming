-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Mon Mar 26 05:30:14 2018
-- Host        : ruben-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ruben/ECE532/final_demo/warmup/warmup.srcs/sources_1/bd/design_1/ip/design_1_PWMGenerator_0_1/design_1_PWMGenerator_0_1_sim_netlist.vhdl
-- Design      : design_1_PWMGenerator_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PWMGenerator_0_1_PWMGenerator is
  port (
    PWM : out STD_LOGIC;
    PCM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PWMGenerator_0_1_PWMGenerator : entity is "PWMGenerator";
end design_1_PWMGenerator_0_1_PWMGenerator;

architecture STRUCTURE of design_1_PWMGenerator_0_1_PWMGenerator is
  signal PCMReg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PWMAccumulator : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \PWMAccumulator[11]_i_2_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[11]_i_3_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[11]_i_4_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[11]_i_5_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[15]_i_2_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[15]_i_3_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[15]_i_4_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[15]_i_5_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[3]_i_2_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[3]_i_3_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[3]_i_4_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[3]_i_5_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[7]_i_2_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[7]_i_3_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[7]_i_4_n_0\ : STD_LOGIC;
  signal \PWMAccumulator[7]_i_5_n_0\ : STD_LOGIC;
  signal \PWMAccumulator_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \PWMAccumulator_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \PWMAccumulator_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \PWMAccumulator_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \PWMAccumulator_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \PWMAccumulator_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \PWMAccumulator_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \PWMAccumulator_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \PWMAccumulator_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \PWMAccumulator_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \PWMAccumulator_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \PWMAccumulator_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \PWMAccumulator_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \PWMAccumulator_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \PWMAccumulator_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \PWMAccumulator_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \NLW_PWMAccumulator_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PWMAccumulator_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\PCMReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(0),
      Q => PCMReg(0),
      R => '0'
    );
\PCMReg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(10),
      Q => PCMReg(10),
      R => '0'
    );
\PCMReg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(11),
      Q => PCMReg(11),
      R => '0'
    );
\PCMReg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(12),
      Q => PCMReg(12),
      R => '0'
    );
\PCMReg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(13),
      Q => PCMReg(13),
      R => '0'
    );
\PCMReg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(14),
      Q => PCMReg(14),
      R => '0'
    );
\PCMReg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(15),
      Q => PCMReg(15),
      R => '0'
    );
\PCMReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(1),
      Q => PCMReg(1),
      R => '0'
    );
\PCMReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(2),
      Q => PCMReg(2),
      R => '0'
    );
\PCMReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(3),
      Q => PCMReg(3),
      R => '0'
    );
\PCMReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(4),
      Q => PCMReg(4),
      R => '0'
    );
\PCMReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(5),
      Q => PCMReg(5),
      R => '0'
    );
\PCMReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(6),
      Q => PCMReg(6),
      R => '0'
    );
\PCMReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(7),
      Q => PCMReg(7),
      R => '0'
    );
\PCMReg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(8),
      Q => PCMReg(8),
      R => '0'
    );
\PCMReg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => PCM(9),
      Q => PCMReg(9),
      R => '0'
    );
\PWMAccumulator[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(11),
      I1 => PCMReg(11),
      O => \PWMAccumulator[11]_i_2_n_0\
    );
\PWMAccumulator[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(10),
      I1 => PCMReg(10),
      O => \PWMAccumulator[11]_i_3_n_0\
    );
\PWMAccumulator[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(9),
      I1 => PCMReg(9),
      O => \PWMAccumulator[11]_i_4_n_0\
    );
\PWMAccumulator[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(8),
      I1 => PCMReg(8),
      O => \PWMAccumulator[11]_i_5_n_0\
    );
\PWMAccumulator[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(15),
      I1 => PCMReg(15),
      O => \PWMAccumulator[15]_i_2_n_0\
    );
\PWMAccumulator[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(14),
      I1 => PCMReg(14),
      O => \PWMAccumulator[15]_i_3_n_0\
    );
\PWMAccumulator[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(13),
      I1 => PCMReg(13),
      O => \PWMAccumulator[15]_i_4_n_0\
    );
\PWMAccumulator[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(12),
      I1 => PCMReg(12),
      O => \PWMAccumulator[15]_i_5_n_0\
    );
\PWMAccumulator[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(3),
      I1 => PCMReg(3),
      O => \PWMAccumulator[3]_i_2_n_0\
    );
\PWMAccumulator[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(2),
      I1 => PCMReg(2),
      O => \PWMAccumulator[3]_i_3_n_0\
    );
\PWMAccumulator[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(1),
      I1 => PCMReg(1),
      O => \PWMAccumulator[3]_i_4_n_0\
    );
\PWMAccumulator[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(0),
      I1 => PCMReg(0),
      O => \PWMAccumulator[3]_i_5_n_0\
    );
\PWMAccumulator[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(7),
      I1 => PCMReg(7),
      O => \PWMAccumulator[7]_i_2_n_0\
    );
\PWMAccumulator[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(6),
      I1 => PCMReg(6),
      O => \PWMAccumulator[7]_i_3_n_0\
    );
\PWMAccumulator[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(5),
      I1 => PCMReg(5),
      O => \PWMAccumulator[7]_i_4_n_0\
    );
\PWMAccumulator[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PWMAccumulator(4),
      I1 => PCMReg(4),
      O => \PWMAccumulator[7]_i_5_n_0\
    );
\PWMAccumulator_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => PWMAccumulator(0),
      R => '0'
    );
\PWMAccumulator_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(10),
      Q => PWMAccumulator(10),
      R => '0'
    );
\PWMAccumulator_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(11),
      Q => PWMAccumulator(11),
      R => '0'
    );
\PWMAccumulator_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PWMAccumulator_reg[7]_i_1_n_0\,
      CO(3) => \PWMAccumulator_reg[11]_i_1_n_0\,
      CO(2) => \PWMAccumulator_reg[11]_i_1_n_1\,
      CO(1) => \PWMAccumulator_reg[11]_i_1_n_2\,
      CO(0) => \PWMAccumulator_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PWMAccumulator(11 downto 8),
      O(3 downto 0) => p_0_in(11 downto 8),
      S(3) => \PWMAccumulator[11]_i_2_n_0\,
      S(2) => \PWMAccumulator[11]_i_3_n_0\,
      S(1) => \PWMAccumulator[11]_i_4_n_0\,
      S(0) => \PWMAccumulator[11]_i_5_n_0\
    );
\PWMAccumulator_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(12),
      Q => PWMAccumulator(12),
      R => '0'
    );
\PWMAccumulator_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(13),
      Q => PWMAccumulator(13),
      R => '0'
    );
\PWMAccumulator_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(14),
      Q => PWMAccumulator(14),
      R => '0'
    );
\PWMAccumulator_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(15),
      Q => PWMAccumulator(15),
      R => '0'
    );
\PWMAccumulator_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PWMAccumulator_reg[11]_i_1_n_0\,
      CO(3) => \PWMAccumulator_reg[15]_i_1_n_0\,
      CO(2) => \PWMAccumulator_reg[15]_i_1_n_1\,
      CO(1) => \PWMAccumulator_reg[15]_i_1_n_2\,
      CO(0) => \PWMAccumulator_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PWMAccumulator(15 downto 12),
      O(3 downto 0) => p_0_in(15 downto 12),
      S(3) => \PWMAccumulator[15]_i_2_n_0\,
      S(2) => \PWMAccumulator[15]_i_3_n_0\,
      S(1) => \PWMAccumulator[15]_i_4_n_0\,
      S(0) => \PWMAccumulator[15]_i_5_n_0\
    );
\PWMAccumulator_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(16),
      Q => PWM,
      R => '0'
    );
\PWMAccumulator_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PWMAccumulator_reg[15]_i_1_n_0\,
      CO(3 downto 1) => \NLW_PWMAccumulator_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => p_0_in(16),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_PWMAccumulator_reg[16]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\PWMAccumulator_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => PWMAccumulator(1),
      R => '0'
    );
\PWMAccumulator_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => PWMAccumulator(2),
      R => '0'
    );
\PWMAccumulator_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => PWMAccumulator(3),
      R => '0'
    );
\PWMAccumulator_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \PWMAccumulator_reg[3]_i_1_n_0\,
      CO(2) => \PWMAccumulator_reg[3]_i_1_n_1\,
      CO(1) => \PWMAccumulator_reg[3]_i_1_n_2\,
      CO(0) => \PWMAccumulator_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PWMAccumulator(3 downto 0),
      O(3 downto 0) => p_0_in(3 downto 0),
      S(3) => \PWMAccumulator[3]_i_2_n_0\,
      S(2) => \PWMAccumulator[3]_i_3_n_0\,
      S(1) => \PWMAccumulator[3]_i_4_n_0\,
      S(0) => \PWMAccumulator[3]_i_5_n_0\
    );
\PWMAccumulator_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => PWMAccumulator(4),
      R => '0'
    );
\PWMAccumulator_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => PWMAccumulator(5),
      R => '0'
    );
\PWMAccumulator_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => PWMAccumulator(6),
      R => '0'
    );
\PWMAccumulator_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => PWMAccumulator(7),
      R => '0'
    );
\PWMAccumulator_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PWMAccumulator_reg[3]_i_1_n_0\,
      CO(3) => \PWMAccumulator_reg[7]_i_1_n_0\,
      CO(2) => \PWMAccumulator_reg[7]_i_1_n_1\,
      CO(1) => \PWMAccumulator_reg[7]_i_1_n_2\,
      CO(0) => \PWMAccumulator_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PWMAccumulator(7 downto 4),
      O(3 downto 0) => p_0_in(7 downto 4),
      S(3) => \PWMAccumulator[7]_i_2_n_0\,
      S(2) => \PWMAccumulator[7]_i_3_n_0\,
      S(1) => \PWMAccumulator[7]_i_4_n_0\,
      S(0) => \PWMAccumulator[7]_i_5_n_0\
    );
\PWMAccumulator_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(8),
      Q => PWMAccumulator(8),
      R => '0'
    );
\PWMAccumulator_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(9),
      Q => PWMAccumulator(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PWMGenerator_0_1 is
  port (
    PCM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    PWM : out STD_LOGIC;
    AUD_SD : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_PWMGenerator_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_PWMGenerator_0_1 : entity is "design_1_PWMGenerator_0_1,PWMGenerator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_PWMGenerator_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_PWMGenerator_0_1 : entity is "PWMGenerator,Vivado 2017.2";
end design_1_PWMGenerator_0_1;

architecture STRUCTURE of design_1_PWMGenerator_0_1 is
  signal \<const1>\ : STD_LOGIC;
begin
  AUD_SD <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_PWMGenerator_0_1_PWMGenerator
     port map (
      PCM(15 downto 0) => PCM(15 downto 0),
      PWM => PWM,
      clk => clk
    );
end STRUCTURE;

-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Mon Mar 26 05:30:14 2018
-- Host        : ruben-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/ruben/ECE532/final_demo/warmup/warmup.srcs/sources_1/bd/design_1/ip/design_1_PWMGenerator_0_1/design_1_PWMGenerator_0_1_stub.vhdl
-- Design      : design_1_PWMGenerator_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_PWMGenerator_0_1 is
  Port ( 
    PCM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    PWM : out STD_LOGIC;
    AUD_SD : out STD_LOGIC
  );

end design_1_PWMGenerator_0_1;

architecture stub of design_1_PWMGenerator_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "PCM[15:0],clk,PWM,AUD_SD";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "PWMGenerator,Vivado 2017.2";
begin
end;

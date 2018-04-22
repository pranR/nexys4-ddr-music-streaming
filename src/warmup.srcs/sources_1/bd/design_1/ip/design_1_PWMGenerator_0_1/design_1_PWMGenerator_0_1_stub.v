// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Mar 26 05:30:14 2018
// Host        : ruben-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ruben/ECE532/final_demo/warmup/warmup.srcs/sources_1/bd/design_1/ip/design_1_PWMGenerator_0_1/design_1_PWMGenerator_0_1_stub.v
// Design      : design_1_PWMGenerator_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "PWMGenerator,Vivado 2017.2" *)
module design_1_PWMGenerator_0_1(PCM, clk, PWM, AUD_SD)
/* synthesis syn_black_box black_box_pad_pin="PCM[15:0],clk,PWM,AUD_SD" */;
  input [15:0]PCM;
  input clk;
  output PWM;
  output AUD_SD;
endmodule

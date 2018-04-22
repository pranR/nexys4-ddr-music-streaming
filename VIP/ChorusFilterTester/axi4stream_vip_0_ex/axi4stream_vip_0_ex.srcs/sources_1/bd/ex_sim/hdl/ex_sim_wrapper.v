//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Wed Mar 21 13:27:34 2018
//Host        : ug241 running 64-bit Debian GNU/Linux 9.4 (stretch)
//Command     : generate_target ex_sim_wrapper.bd
//Design      : ex_sim_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ex_sim_wrapper
   (Ready,
    Valid,
    aclk,
    aresetn);
  output [0:0]Ready;
  output [0:0]Valid;
  input aclk;
  input aresetn;

  wire [0:0]Ready;
  wire [0:0]Valid;
  wire aclk;
  wire aresetn;

  ex_sim ex_sim_i
       (.Ready(Ready),
        .Valid(Valid),
        .aclk(aclk),
        .aresetn(aresetn));
endmodule

//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Wed Mar 21 13:53:51 2018
//Host        : ug241 running 64-bit Debian GNU/Linux 9.4 (stretch)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire [31:0]AXIBus;
  wire clock_rtl;
  wire [15:0]dataOut;
  wire ready;
  wire reset_rtl;
  wire [0:0]valid;

  design_1 design_1_i
       (.AXIBus(AXIBus),
        .clock_rtl(clock_rtl),
        .dataOut(dataOut),
        .ready(ready),
        .reset_rtl(reset_rtl),
        .valid(valid));
endmodule

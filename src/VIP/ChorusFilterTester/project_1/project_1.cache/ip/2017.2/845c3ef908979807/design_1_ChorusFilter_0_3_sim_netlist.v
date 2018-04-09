// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Wed Mar 21 13:54:22 2018
// Host        : ug241 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ChorusFilter_0_3_sim_netlist.v
// Design      : design_1_ChorusFilter_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChorusFilter
   (dataOut,
    s00_axis_tvalid,
    s00_axis_tdata,
    s00_axis_aclk);
  output [15:0]dataOut;
  input s00_axis_tvalid;
  input [15:0]s00_axis_tdata;
  input s00_axis_aclk;

  wire [15:0]dataOut;
  wire s00_axis_aclk;
  wire [15:0]s00_axis_tdata;
  wire s00_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CircularBuffer circBuff
       (.dataOut(dataOut),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChorusFilter_v1_0
   (dataOut,
    s00_axis_tvalid,
    s00_axis_tdata,
    s00_axis_aclk);
  output [15:0]dataOut;
  input s00_axis_tvalid;
  input [15:0]s00_axis_tdata;
  input s00_axis_aclk;

  wire [15:0]dataOut;
  wire s00_axis_aclk;
  wire [15:0]s00_axis_tdata;
  wire s00_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChorusFilter chorusFilter
       (.dataOut(dataOut),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CircularBuffer
   (dataOut,
    s00_axis_tvalid,
    s00_axis_tdata,
    s00_axis_aclk);
  output [15:0]dataOut;
  input s00_axis_tvalid;
  input [15:0]s00_axis_tdata;
  input s00_axis_aclk;

  wire [15:0]dataOut;
  wire s00_axis_aclk;
  wire [15:0]s00_axis_tdata;
  wire s00_axis_tvalid;

  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[0] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[0]),
        .Q(dataOut[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[10] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[10]),
        .Q(dataOut[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[11] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[11]),
        .Q(dataOut[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[12] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[12]),
        .Q(dataOut[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[13] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[13]),
        .Q(dataOut[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[14] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[14]),
        .Q(dataOut[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[15] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[15]),
        .Q(dataOut[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[1] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[1]),
        .Q(dataOut[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[2] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[2]),
        .Q(dataOut[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[3] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[3]),
        .Q(dataOut[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[4] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[4]),
        .Q(dataOut[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[5] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[5]),
        .Q(dataOut[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[6] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[6]),
        .Q(dataOut[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[7] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[7]),
        .Q(dataOut[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[8] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[8]),
        .Q(dataOut[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut1_reg[9] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(s00_axis_tdata[9]),
        .Q(dataOut[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ChorusFilter_0_3,ChorusFilter_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ChorusFilter_v1_0,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (dataOut,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    s00_axis_tready,
    s00_axis_aclk,
    s00_axis_aresetn);
  output [15:0]dataOut;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK, xilinx.com:signal:clock:1.0 s00_axis_aclk CLK" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST, xilinx.com:signal:reset:1.0 s00_axis_aresetn RST" *) input s00_axis_aresetn;

  wire \<const1> ;
  wire [15:0]dataOut;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tvalid;

  assign s00_axis_tready = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChorusFilter_v1_0 inst
       (.dataOut(dataOut),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_tdata(s00_axis_tdata[15:0]),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

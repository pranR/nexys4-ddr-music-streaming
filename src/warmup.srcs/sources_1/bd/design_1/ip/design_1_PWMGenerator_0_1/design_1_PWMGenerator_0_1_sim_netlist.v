// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Mar 26 05:30:14 2018
// Host        : ruben-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ruben/ECE532/final_demo/warmup/warmup.srcs/sources_1/bd/design_1/ip/design_1_PWMGenerator_0_1/design_1_PWMGenerator_0_1_sim_netlist.v
// Design      : design_1_PWMGenerator_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_PWMGenerator_0_1,PWMGenerator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "PWMGenerator,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_PWMGenerator_0_1
   (PCM,
    clk,
    PWM,
    AUD_SD);
  input [15:0]PCM;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  output PWM;
  output AUD_SD;

  wire \<const1> ;
  wire [15:0]PCM;
  wire PWM;
  wire clk;

  assign AUD_SD = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  design_1_PWMGenerator_0_1_PWMGenerator inst
       (.PCM(PCM),
        .PWM(PWM),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "PWMGenerator" *) 
module design_1_PWMGenerator_0_1_PWMGenerator
   (PWM,
    PCM,
    clk);
  output PWM;
  input [15:0]PCM;
  input clk;

  wire [15:0]PCM;
  wire [15:0]PCMReg;
  wire PWM;
  wire [15:0]PWMAccumulator;
  wire \PWMAccumulator[11]_i_2_n_0 ;
  wire \PWMAccumulator[11]_i_3_n_0 ;
  wire \PWMAccumulator[11]_i_4_n_0 ;
  wire \PWMAccumulator[11]_i_5_n_0 ;
  wire \PWMAccumulator[15]_i_2_n_0 ;
  wire \PWMAccumulator[15]_i_3_n_0 ;
  wire \PWMAccumulator[15]_i_4_n_0 ;
  wire \PWMAccumulator[15]_i_5_n_0 ;
  wire \PWMAccumulator[3]_i_2_n_0 ;
  wire \PWMAccumulator[3]_i_3_n_0 ;
  wire \PWMAccumulator[3]_i_4_n_0 ;
  wire \PWMAccumulator[3]_i_5_n_0 ;
  wire \PWMAccumulator[7]_i_2_n_0 ;
  wire \PWMAccumulator[7]_i_3_n_0 ;
  wire \PWMAccumulator[7]_i_4_n_0 ;
  wire \PWMAccumulator[7]_i_5_n_0 ;
  wire \PWMAccumulator_reg[11]_i_1_n_0 ;
  wire \PWMAccumulator_reg[11]_i_1_n_1 ;
  wire \PWMAccumulator_reg[11]_i_1_n_2 ;
  wire \PWMAccumulator_reg[11]_i_1_n_3 ;
  wire \PWMAccumulator_reg[15]_i_1_n_0 ;
  wire \PWMAccumulator_reg[15]_i_1_n_1 ;
  wire \PWMAccumulator_reg[15]_i_1_n_2 ;
  wire \PWMAccumulator_reg[15]_i_1_n_3 ;
  wire \PWMAccumulator_reg[3]_i_1_n_0 ;
  wire \PWMAccumulator_reg[3]_i_1_n_1 ;
  wire \PWMAccumulator_reg[3]_i_1_n_2 ;
  wire \PWMAccumulator_reg[3]_i_1_n_3 ;
  wire \PWMAccumulator_reg[7]_i_1_n_0 ;
  wire \PWMAccumulator_reg[7]_i_1_n_1 ;
  wire \PWMAccumulator_reg[7]_i_1_n_2 ;
  wire \PWMAccumulator_reg[7]_i_1_n_3 ;
  wire clk;
  wire [16:0]p_0_in;
  wire [3:1]\NLW_PWMAccumulator_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_PWMAccumulator_reg[16]_i_1_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[0]),
        .Q(PCMReg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[10]),
        .Q(PCMReg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[11]),
        .Q(PCMReg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[12]),
        .Q(PCMReg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[13]),
        .Q(PCMReg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[14]),
        .Q(PCMReg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[15]),
        .Q(PCMReg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[1]),
        .Q(PCMReg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[2]),
        .Q(PCMReg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[3]),
        .Q(PCMReg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[4]),
        .Q(PCMReg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[5]),
        .Q(PCMReg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[6]),
        .Q(PCMReg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[7]),
        .Q(PCMReg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[8]),
        .Q(PCMReg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PCMReg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(PCM[9]),
        .Q(PCMReg[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[11]_i_2 
       (.I0(PWMAccumulator[11]),
        .I1(PCMReg[11]),
        .O(\PWMAccumulator[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[11]_i_3 
       (.I0(PWMAccumulator[10]),
        .I1(PCMReg[10]),
        .O(\PWMAccumulator[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[11]_i_4 
       (.I0(PWMAccumulator[9]),
        .I1(PCMReg[9]),
        .O(\PWMAccumulator[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[11]_i_5 
       (.I0(PWMAccumulator[8]),
        .I1(PCMReg[8]),
        .O(\PWMAccumulator[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[15]_i_2 
       (.I0(PWMAccumulator[15]),
        .I1(PCMReg[15]),
        .O(\PWMAccumulator[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[15]_i_3 
       (.I0(PWMAccumulator[14]),
        .I1(PCMReg[14]),
        .O(\PWMAccumulator[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[15]_i_4 
       (.I0(PWMAccumulator[13]),
        .I1(PCMReg[13]),
        .O(\PWMAccumulator[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[15]_i_5 
       (.I0(PWMAccumulator[12]),
        .I1(PCMReg[12]),
        .O(\PWMAccumulator[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[3]_i_2 
       (.I0(PWMAccumulator[3]),
        .I1(PCMReg[3]),
        .O(\PWMAccumulator[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[3]_i_3 
       (.I0(PWMAccumulator[2]),
        .I1(PCMReg[2]),
        .O(\PWMAccumulator[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[3]_i_4 
       (.I0(PWMAccumulator[1]),
        .I1(PCMReg[1]),
        .O(\PWMAccumulator[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[3]_i_5 
       (.I0(PWMAccumulator[0]),
        .I1(PCMReg[0]),
        .O(\PWMAccumulator[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[7]_i_2 
       (.I0(PWMAccumulator[7]),
        .I1(PCMReg[7]),
        .O(\PWMAccumulator[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[7]_i_3 
       (.I0(PWMAccumulator[6]),
        .I1(PCMReg[6]),
        .O(\PWMAccumulator[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[7]_i_4 
       (.I0(PWMAccumulator[5]),
        .I1(PCMReg[5]),
        .O(\PWMAccumulator[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWMAccumulator[7]_i_5 
       (.I0(PWMAccumulator[4]),
        .I1(PCMReg[4]),
        .O(\PWMAccumulator[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(PWMAccumulator[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(PWMAccumulator[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(PWMAccumulator[11]),
        .R(1'b0));
  CARRY4 \PWMAccumulator_reg[11]_i_1 
       (.CI(\PWMAccumulator_reg[7]_i_1_n_0 ),
        .CO({\PWMAccumulator_reg[11]_i_1_n_0 ,\PWMAccumulator_reg[11]_i_1_n_1 ,\PWMAccumulator_reg[11]_i_1_n_2 ,\PWMAccumulator_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(PWMAccumulator[11:8]),
        .O(p_0_in[11:8]),
        .S({\PWMAccumulator[11]_i_2_n_0 ,\PWMAccumulator[11]_i_3_n_0 ,\PWMAccumulator[11]_i_4_n_0 ,\PWMAccumulator[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(PWMAccumulator[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(PWMAccumulator[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(PWMAccumulator[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(PWMAccumulator[15]),
        .R(1'b0));
  CARRY4 \PWMAccumulator_reg[15]_i_1 
       (.CI(\PWMAccumulator_reg[11]_i_1_n_0 ),
        .CO({\PWMAccumulator_reg[15]_i_1_n_0 ,\PWMAccumulator_reg[15]_i_1_n_1 ,\PWMAccumulator_reg[15]_i_1_n_2 ,\PWMAccumulator_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(PWMAccumulator[15:12]),
        .O(p_0_in[15:12]),
        .S({\PWMAccumulator[15]_i_2_n_0 ,\PWMAccumulator[15]_i_3_n_0 ,\PWMAccumulator[15]_i_4_n_0 ,\PWMAccumulator[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[16]),
        .Q(PWM),
        .R(1'b0));
  CARRY4 \PWMAccumulator_reg[16]_i_1 
       (.CI(\PWMAccumulator_reg[15]_i_1_n_0 ),
        .CO({\NLW_PWMAccumulator_reg[16]_i_1_CO_UNCONNECTED [3:1],p_0_in[16]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_PWMAccumulator_reg[16]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(PWMAccumulator[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(PWMAccumulator[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(PWMAccumulator[3]),
        .R(1'b0));
  CARRY4 \PWMAccumulator_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\PWMAccumulator_reg[3]_i_1_n_0 ,\PWMAccumulator_reg[3]_i_1_n_1 ,\PWMAccumulator_reg[3]_i_1_n_2 ,\PWMAccumulator_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(PWMAccumulator[3:0]),
        .O(p_0_in[3:0]),
        .S({\PWMAccumulator[3]_i_2_n_0 ,\PWMAccumulator[3]_i_3_n_0 ,\PWMAccumulator[3]_i_4_n_0 ,\PWMAccumulator[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(PWMAccumulator[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(PWMAccumulator[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(PWMAccumulator[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(PWMAccumulator[7]),
        .R(1'b0));
  CARRY4 \PWMAccumulator_reg[7]_i_1 
       (.CI(\PWMAccumulator_reg[3]_i_1_n_0 ),
        .CO({\PWMAccumulator_reg[7]_i_1_n_0 ,\PWMAccumulator_reg[7]_i_1_n_1 ,\PWMAccumulator_reg[7]_i_1_n_2 ,\PWMAccumulator_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(PWMAccumulator[7:4]),
        .O(p_0_in[7:4]),
        .S({\PWMAccumulator[7]_i_2_n_0 ,\PWMAccumulator[7]_i_3_n_0 ,\PWMAccumulator[7]_i_4_n_0 ,\PWMAccumulator[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(PWMAccumulator[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWMAccumulator_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(PWMAccumulator[9]),
        .R(1'b0));
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

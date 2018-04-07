`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2018 01:11:56 PM
// Design Name: 
// Module Name: PWMGenerator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PWMGenerator(
        PCM,
        clk,
        PWM,
        AUD_SD
    );
    
    parameter width = 16;
    input [width-1:0] PCM;
    input clk;
    output PWM;
    output AUD_SD;
    
    reg [width-1:0] PCMReg = 0;
    reg [width:0] PWMAccumulator = 0;
    
    always@(posedge clk) PCMReg <= PCM;
    always@(posedge clk) PWMAccumulator <= PWMAccumulator[width-1:0] + PCMReg;
    assign PWM = PWMAccumulator[width];
    assign AUD_SD = 1'b1;
endmodule

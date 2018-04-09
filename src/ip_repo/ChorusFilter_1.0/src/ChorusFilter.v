`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2018 05:13:01 PM
// Design Name: 
// Module Name: ChorusFilter
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


module ChorusFilter(input clk, input resetn, input enable,  input[15:0] dataIn, output [15:0] dataOut);
       wire[15:0] dataOut1;
       wire[15:0] dataOut2;
       wire[15:0] delay;
       
       SineLUT LUT(.clk(clk), .resetn(resetn), .enable(enable), .data(delay));
       CircularBuffer circBuff(.clk(clk), .resetn(resetn), .dataIn(dataIn), .dataOut1(dataOut1), .dataOut2(dataOut2), .delay(delay), .enable(enable));
       
       wire [31:0] dataOut132;
       wire [31:0] dataOut232;
       
       assign dataOut132 = {16'h0000, dataOut1};
       assign dataOut232 = {16'h0000, dataOut2};
       
       /*integer i = 0;
       always@(posedge clk)
       begin
            if (i == 5)
                $finish;
            
            if (enable)
            begin
                $display("0: %h\n", dataIn);    
                $display("1: %h\n", dataOut132);
                $display("2: %h\n", dataOut232);
                $display("3: %h\n", ((3*dataOut132) >> 2));
                $display("4: %h\n", (dataOut232 >> 2));
                $display("5: %h\n", ((3*dataOut132) >> 2) + (dataOut232 >> 2));
                $display("6: %h\n", dataOut);
                $display("7: %h\n\n\n", delay);
                i = i+1;
            end
       end
       */
       wire [31:0] dataOut32 = dataOut132;//((3*dataOut132) >> 2) + (dataOut232 >> 2);
       assign dataOut = dataOut32[15:0];
       
endmodule

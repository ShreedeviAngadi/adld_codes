`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:43 05/16/2022 
// Design Name: 
// Module Name:    pipo1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pipo1(pseed,data_in,ld,clk);
input[15:0] data_in;
input ld,clk;
output reg [15:0] pseed;
always @(posedge clk)
if(ld) pseed <= data_in;
endmodule

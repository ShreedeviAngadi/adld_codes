`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:55 04/06/2022 
// Design Name: 
// Module Name:    mem_rom 
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
module mem_rom(addr,data_out,rd_en,cs);
input [3:0] addr;
input rd_en,cs;
output reg [3:0] data_out;
always@(addr or data_out or rd_en or cs)
case(addr)
0: data_out=99;
1: data_out=11;
2: data_out=22;
3: data_out=33;
endcase
endmodule

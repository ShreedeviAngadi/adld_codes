`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:43 05/16/2022 
// Design Name: 
// Module Name:    project_datapath 
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
module project_datapath(eq,lda,ldb,decb,z,nseed,data_in,clk);
input lda,ldb;
input decb;
input clk;
input[15:0] data_in;
output[15:0] z,nseed;
output eq;
wire[15:0] pseed,bout,x,y;
pipo A(pseed,data_in,lda,clk);
rightshift r_shift(x,pseed);
xor1 o1(y,x,pseed);
and2 a1(nseed,x,y);
eqz comp1(eq1,bout);
cntr F(bout,data_in,ldb,decb);

add a(z,nseed,pseed);
endmodule


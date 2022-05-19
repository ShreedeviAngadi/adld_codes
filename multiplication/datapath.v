`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:38:23 03/17/2022 
// Design Name: 
// Module Name:    datapath 
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
module datapath(eqz,lda,ldb,ldp,clrp,decb,data_in,clk);
input lda,ldb,ldp,clrp,decb,clk;
input [15:0] data_in;
output eqz;
wire [15:0] x,y,z,bout,bus;
PIPO1 A(x,bus,lda,clk);
PIPO2 p(y,ldp,clrp,z);
CNTR b(bout,bus,ldb,decb);
ADD AD(z,x,y);
EQZ comp(eqz,bout);
endmodule
/////////////////////



`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:06 05/16/2022 
// Design Name: 
// Module Name:    tb_project 
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
module tb_project;
reg[15:0] data_in;
reg clk,start;
wire done;
project_datapath DP(eq,lda,ldb,decb,z,nseed,data_in,clk);
controller CON(lda,ldb,decb,done,clk,eq,start);
initial
begin
clk=1'b0;
#3 start=1'b1;
#100 $finish;
end

always #5 clk=~clk;

initial
begin
#20 data_in=4536;
#20 data_in=65535;
end

initial
begin
$monitor($time,"%d %d",DP.z,DP.nseed);
$dumpfile("tb.vcd");
$dumpvars(0,tb_project);
end
endmodule

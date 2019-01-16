`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:40:00 03/31/2016 
// Design Name: 
// Module Name:    RCA 
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
module RCA5x5(
    input [4:0] i1,
    input [4:0] i2,
    output [4:0] Sum, 
	 output Cout	  
    );
wire temp1, temp2, temp3,temp4;   

HA inst1( .i1(i1[0]), .i2(i2[0]), .Sum(Sum[0]), .Carry(temp1) );
FA inst2( .i1(i1[1]), .i2(i2[1]), .Cin(temp1), .Sum(Sum[1]), .Cout(temp2) );
FA inst3( .i1(i1[2]), .i2(i2[2]), .Cin(temp2), .Sum(Sum[2]), .Cout(temp3) );
FA inst4( .i1(i1[3]), .i2(i2[3]), .Cin(temp3), .Sum(Sum[3]), .Cout(temp4) );
FA inst5( .i1(i1[4]), .i2(i2[4]), .Cin(temp4), .Sum(Sum[4]), .Cout(Cout) );


endmodule

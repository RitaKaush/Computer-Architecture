`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:56 04/03/2016 
// Design Name: 
// Module Name:    RCA4x4 
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
module RCA4x4(
    input [3:0] i1,
    input [3:0] i2,
    output [3:0] Sum,
	 output Cout
    );

wire temp1, temp2, temp3,temp4;
parameter x=1'b0;   

FA inst1( .i1(i1[0]), .i2(i2[0]), .Cin(x),     .Sum(Sum[0]), .Cout(temp1) );
FA inst2( .i1(i1[1]), .i2(i2[1]), .Cin(temp1), .Sum(Sum[1]), .Cout(temp2) );
FA inst3( .i1(i1[2]), .i2(i2[2]), .Cin(temp2), .Sum(Sum[2]), .Cout(temp3) );
FA inst4( .i1(i1[3]), .i2(i2[3]), .Cin(temp3), .Sum(Sum[3]), .Cout(Cout) );

endmodule

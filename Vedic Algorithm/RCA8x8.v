`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:27 04/02/2016 
// Design Name: 
// Module Name:    RCA8x8 
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
module RCA8x8(
    input [7:0] i1,
    input [7:0] i2,
    output [7:0] Sum,
	 output Carry
    );

wire temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8;
parameter x=1'b0;   

FA inst1( .i1(i1[0]), .i2(i2[0]), .Cin(x),     .Sum(Sum[0]), .Cout(temp1) );
FA inst2( .i1(i1[1]), .i2(i2[1]), .Cin(temp1), .Sum(Sum[1]), .Cout(temp2) );
FA inst3( .i1(i1[2]), .i2(i2[2]), .Cin(temp2), .Sum(Sum[2]), .Cout(temp3) );
FA inst4( .i1(i1[3]), .i2(i2[3]), .Cin(temp3), .Sum(Sum[3]), .Cout(temp4) );
FA inst5( .i1(i1[4]), .i2(i2[4]), .Cin(temp4), .Sum(Sum[4]), .Cout(temp5) );
FA inst6( .i1(i1[5]), .i2(i2[5]), .Cin(temp5), .Sum(Sum[5]), .Cout(temp6) );
FA inst7( .i1(i1[6]), .i2(i2[6]), .Cin(temp6), .Sum(Sum[6]), .Cout(temp7) );
FA inst8( .i1(i1[7]), .i2(i2[7]), .Cin(temp7), .Sum(Sum[7]), .Cout(Carry) );

endmodule

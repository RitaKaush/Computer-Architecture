`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:24 04/03/2016 
// Design Name: 
// Module Name:    Vedic2x2 
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
module Vedic2x2(
    input [1:0] i1,
    input [1:0] i2,
    output [3:0] Product
    );


wire temp1, temp2, temp3, temp4;

ANDgate inst1( .i1(i1[0]), .i2(i2[0]), .y(Product[0]));
ANDgate inst2( .i1(i1[0]), .i2(i2[1]), .y(temp1));
ANDgate inst3( .i1(i1[1]), .i2(i2[0]), .y(temp2));
ANDgate inst4( .i1(i1[1]), .i2(i2[1]), .y(temp3));

HA inst5(.i1(temp1), .i2(temp2), .Sum(Product[1]), .Carry(temp4));
HA inst6(.i1(temp4), .i2(temp3), .Sum(Product[2]), .Carry(Product[3]));

endmodule

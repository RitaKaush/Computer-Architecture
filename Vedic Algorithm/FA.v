`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:54:43 03/31/2016 
// Design Name: 
// Module Name:    FA 
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
module FA(
    input i1,
    input i2,
    input Cin,
    output Sum,
    output Cout
    );
assign Sum = i1 ^ i2 ^ Cin;
assign Cout = (i1 & Cin) | (i2 & Cin) | (i1 & i2);


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:01:02 04/14/2016 
// Design Name: 
// Module Name:    NANDgate_3Input 
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
module NANDgate_3Input(
    input A,
    input B,
    input C,
    output Y
    );

assign Y= ~(A & B & C);
endmodule

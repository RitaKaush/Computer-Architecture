`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:06:49 04/14/2016 
// Design Name: 
// Module Name:    NANDgate_2Input 
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
module NANDgate_2Input(
    input A,
    input B,
    output Y
    );

assign Y= ~(A & B);
endmodule

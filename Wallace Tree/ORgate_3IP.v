`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:41:56 05/07/2016 
// Design Name: 
// Module Name:    ORgate_3IP 
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
module ORgate_3IP(
    input A,
    input B,
    input C,
    output Y
    );

assign Y= A|B|C;

endmodule

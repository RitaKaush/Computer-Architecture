`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:37 04/16/2016 
// Design Name: 
// Module Name:    HalfAdder 
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
module HalfAdder(
    input A,
    input B,
    output Sum,
    output Carry 
    );
//wire temp1;
//XORgate_2Input X1(.A(A), .B(B), .Y(Sum));
//NANDgate_2Input NA1(.A(A), .B(B), .Y(temp1));
//NOTgate N1(.A(temp1), .Y(Carry));
assign Sum = A ^ B;
assign Carry = A & B;

endmodule

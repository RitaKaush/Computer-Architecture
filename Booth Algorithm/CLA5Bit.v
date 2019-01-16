`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:42 05/06/2016 
// Design Name: 
// Module Name:    CLA5Bit 
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
module CLA5Bit(
    input [4:0] i1,
    input [4:0] i2,
    output [5:0] Output
    );

wire C0=0;
FullAdder FA0(.A(i1[0]),.B(i2[0]),.Cin(C0),.Sum(Output[0]));
assign G0=i1[0] & i2[0];
assign P0=i1[0] | i2[0];
assign C1=G0 | P0&C0;

FullAdder FA1(.A(i1[1]),.B(i2[1]),.Cin(C1),.Sum(Output[1]));
assign G1=i1[1] & i2[1];
assign P1=i1[1] | i2[1];
assign C2=G1 | P1&C1;

FullAdder FA2(.A(i1[2]),.B(i2[2]),.Cin(C2),.Sum(Output[2]));
assign G2=i1[2] & i2[2];
assign P2=i1[2] | i2[2];
assign C3=G2 | P2&C2;

FullAdder FA3(.A(i1[3]),.B(i2[3]),.Cin(C3),.Sum(Output[3]));
assign G3=i1[3] & i2[3];
assign P3=i1[3] | i2[3];
assign C4=G3 | P3&C3;

FullAdder FA4(.A(i1[4]),.B(i2[4]),.Cin(C4),.Sum(Output[4]));
assign G4=i1[4] & i2[4];
assign P4=i1[4] | i2[4];
assign C5=G4 | P4&C4;
//assign Output[5]=Output[4];
assign Output[5]=C5;

endmodule

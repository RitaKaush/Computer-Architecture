`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:18 05/01/2016 
// Design Name: 
// Module Name:    CLA12Bit 
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
module CLA12Bit(
    input [11:0] i1,
    input [11:0] i2,
    output [11:0] Output 
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

FullAdder FA5(.A(i1[5]),.B(i2[5]),.Cin(C5),.Sum(Output[5]));
assign G5=i1[5] & i2[5];
assign P5=i1[5] | i2[5];
assign C6=G5 | P5&C5;

FullAdder FA6(.A(i1[6]),.B(i2[6]),.Cin(C6),.Sum(Output[6]));
assign G6=i1[6] & i2[6];
assign P6=i1[6] | i2[6];
assign C7=G6 | P6&C6;

FullAdder FA7(.A(i1[7]),.B(i2[7]),.Cin(C7),.Sum(Output[7]));
assign G7=i1[7] & i2[7];
assign P7=i1[7] | i2[7];
assign C8=G7 | P7&C7;

FullAdder FA8(.A(i1[8]),.B(i2[8]),.Cin(C8),.Sum(Output[8]));
assign G8=i1[8] & i2[8];
assign P8=i1[8] | i2[8];
assign C9=G8 | P8&C8;

FullAdder FA9(.A(i1[9]),.B(i2[9]),.Cin(C9),.Sum(Output[9]));
assign G9=i1[9] & i2[9];
assign P9=i1[9] | i2[9];
assign C10=G9 | P9&C9;

FullAdder FA10(.A(i1[10]),.B(i2[10]),.Cin(C10),.Sum(Output[10]));
assign G10=i1[10] & i2[10];
assign P10=i1[10] | i2[10];
assign C11=G10 | P10&C10;

FullAdder FA11(.A(i1[11]),.B(i2[11]),.Cin(C11),.Sum(Output[11]));

endmodule

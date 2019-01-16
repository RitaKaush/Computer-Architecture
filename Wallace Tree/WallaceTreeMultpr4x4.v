`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:00:10 05/07/2016 
// Design Name: 
// Module Name:    WallaceTreeMultpr4x4 
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
module WallaceTreeMultpr4x4(
    input [3:0] A,
    input [3:0] B,
    output [7:0] Product
    );

assign Product[0]=A[0]&B[0];

wire c1,s1,s2,s3,s4,s5,s6,s7,s8,s9,c2,c3,c4,c5,c6,c7,c8,c9;

wire temp1=A[0]&B[1];
wire temp2=A[1]&B[0];
HalfAdder HA1(.A(temp1), .B(temp2), .Sum(s1), .Cout(c1));

assign Product[1]=s1;

wire temp3=A[0]&B[2];
wire temp4=A[1]&B[1];
wire temp5=A[2]&B[0];
FullAdder FA1(.A(temp5),.B(temp4),.Cin(temp3),.Sum(s2),.Cout(c2));

wire temp6=A[3]&B[0];
wire temp7=A[2]&B[1];
wire temp8=A[1]&B[2];
FullAdder FA2(.A(temp6),.B(temp7),.Cin(temp8),.Sum(s3),.Cout(c3));

wire temp9=A[3]&B[1] ;
wire temp10=A[2]&B[2] ;
wire temp11=A[1]&B[3] ;
FullAdder FA3(.A(temp9),.B(temp10),.Cin(temp11),.Sum(s4),.Cout(c4));

wire temp12=A[3]&B[2] ;
wire temp13=A[2]&B[3] ;
FullAdder FA4(.A(temp12),.B(temp13),.Cin(c4),.Sum(s5),.Cout(c5));

wire temp14=A[3]&B[3];
wire temp15=A[0]&B[3];

FullAdder FA5(.A(s3),.B(temp15),.Cin(c2),.Sum(s6),.Cout(c6));
FullAdder FA6(.A(s4),.B(c3),.Cin(c6),.Sum(s7),.Cout(c7));
FullAdder FA7(.A(s5),.B(c7),.Cin(c12),.Sum(s8),.Cout(c8));
FullAdder FA8(.A(temp14),.B(c5),.Cin(c8),.Sum(s9),.Cout(c9));

HalfAdder HA2(.A(s2), .B(c1), .Sum(s10), .Cout(c10));
HalfAdder HA3(.A(s6), .B(c10), .Sum(s11), .Cout(c11));
HalfAdder HA4(.A(s7), .B(c11), .Sum(s12), .Cout(c12));

assign Product[2]=s10;
assign Product[3]=s11;
assign Product[4]=s12;
assign Product[5]=s8;
assign Product[6]=s9;
assign Product[7]=c9; 


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:32 05/06/2016 
// Design Name: 
// Module Name:    BoothMultp4x4 
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
module BoothMultp4x4(
    input [3:0] MR,
    input [3:0] MD,
    output [7:0] Product
    );

wire temp1=0;
wire s0,n0,d0,s1,d1,n1;
wire [4:0]PP1;
wire [4:0]PP2;
wire [4:0] S1;
wire [4:0] C1;
wire [4:0] S2;
wire [4:0] C2;
wire [6:0] SE1;
wire [4:0] SE2;
wire [4:0] temp2;
wire [5:0] temp3;

BoothEncoder BE1(.i0(temp1),.i1(MR[0]),.i2(MR[1]),.Single(s0),.Double(d0),.Negate(n0));
BoothEncoder BE2(.i0(MR[1]),.i1(MR[2]),.i2(MR[3]),.Single(s1),.Double(d1),.Negate(n1));

//Booth Decode Module 1- five 1-bit booth decoder(n+1 bits)- for s0,n0,d0; Multpd1 is the lower bit//

BoothDecoder BD11 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(temp1), .Multpd2(MD[0]), .PartProd(PP1[0]));
BoothDecoder BD12 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[0]), .Multpd2(MD[1]), .PartProd(PP1[1]));
BoothDecoder BD13 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[1]), .Multpd2(MD[2]), .PartProd(PP1[2]));
BoothDecoder BD14 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[2]), .Multpd2(MD[3]), .PartProd(PP1[3]));
BoothDecoder BD15 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[3]), .Multpd2(MD[3]), .PartProd(PP1[4]));

//array of 5 half adders to produce 2s complement at the 5 bit output of the decoder 1//
HalfAdder HA11 (.A(n0), .B(PP1[0]), .Sum(S1[0]), .Carry(C1[0]));
HalfAdder HA12 (.A(C1[0]), .B(PP1[1]), .Sum(S1[1]), .Carry(C1[1]));
HalfAdder HA13 (.A(C1[1]), .B(PP1[2]), .Sum(S1[2]), .Carry(C1[2]));
HalfAdder HA14 (.A(C1[2]), .B(PP1[3]), .Sum(S1[3]), .Carry(C1[3]));
HalfAdder HA15 (.A(C1[3]), .B(PP1[4]), .Sum(S1[4]), .Carry(C1[4]));


//Booth Decode Module 2- five 1-bit booth decoder- for s1,n1,d1; Multpd1 is the lower bit//

BoothDecoder BD21 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(temp1), .Multpd2(MD[0]), .PartProd(PP2[0]));
BoothDecoder BD22 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[0]), .Multpd2(MD[1]), .PartProd(PP2[1]));
BoothDecoder BD23 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[1]), .Multpd2(MD[2]), .PartProd(PP2[2]));
BoothDecoder BD24 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[2]), .Multpd2(MD[3]), .PartProd(PP2[3]));
BoothDecoder BD25 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[3]), .Multpd2(MD[3]), .PartProd(PP2[4]));

//array of 5 half adders to produce 2s complement at the 5 bit output of the decoder 2//
HalfAdder HA21 (.A(n1), .B(PP2[0]), .Sum(S2[0]), .Carry(C2[0]));
HalfAdder HA22 (.A(C2[0]), .B(PP2[1]), .Sum(S2[1]), .Carry(C2[1]));
HalfAdder HA23 (.A(C2[1]), .B(PP2[2]), .Sum(S2[2]), .Carry(C2[2]));
HalfAdder HA24 (.A(C2[2]), .B(PP2[3]), .Sum(S2[3]), .Carry(C2[3]));
HalfAdder HA25 (.A(C2[3]), .B(PP2[4]), .Sum(S2[4]), .Carry(C2[4]));

//sign extension//

assign SE1 = {{2{S1[4]}}, S1[4:0]};
assign Product[1:0]=SE1[1:0];
assign temp2=SE1[6:2];
assign SE2=S2[4:0];
CLA5Bit CLA5(.i1(temp2), .i2(SE2), .Output(temp3));
assign Product[7:2]=temp3;




endmodule

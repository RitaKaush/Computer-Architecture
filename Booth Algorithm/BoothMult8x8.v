`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:42 04/30/2016 
// Design Name: 
// Module Name:    BoothMult8x8 
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
module BoothMult8x8(
    input [7:0] MR,
    input [7:0] MD,
    output [15:0] Product
    );
	 
wire temp1=0; 
wire s0,d0,n0,s1,d1,n1,s2,d2,n2,s3,d3,n3;
wire [8:0]PP1;
wire [8:0]PP2;
wire [8:0]PP3; 
wire [8:0]PP5;
wire [8:0]S1;
wire [8:0]C1; 
wire [8:0]S2;
wire [8:0]C2;
wire [8:0]S3;
wire [8:0]C3;
wire [8:0]S5;
wire [8:0]C5;
//wire [11:0] temp2;
//wire [11:0] temp3;
//wire [11:0] temp14;
//wire [11:0] temp5;
//wire [11:0] temp6;
//wire [11:0] temp9;


BoothEncoder BE1(.i0(temp1),.i1(MR[0]),.i2(MR[1]),.Single(s0),.Double(d0),.Negate(n0));
BoothEncoder BE2(.i0(MR[1]),.i1(MR[2]),.i2(MR[3]),.Single(s1),.Double(d1),.Negate(n1));
BoothEncoder BE3(.i0(MR[3]),.i1(MR[4]),.i2(MR[5]),.Single(s2),.Double(d2),.Negate(n2));
BoothEncoder BE4(.i0(MR[5]),.i1(MR[6]),.i2(MR[7]),.Single(s3),.Double(d3),.Negate(n3));

//Booth Decode Module 1- Nine 1-bit booth decoder- for s0,n0,d0; Multpd1 is the lower bit//

BoothDecoder BD11 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(temp1), .Multpd2(MD[0]), .PartProd(PP1[0]));
BoothDecoder BD12 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[0]), .Multpd2(MD[1]), .PartProd(PP1[1]));
BoothDecoder BD13 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[1]), .Multpd2(MD[2]), .PartProd(PP1[2]));
BoothDecoder BD14 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[2]), .Multpd2(MD[3]), .PartProd(PP1[3]));
BoothDecoder BD15 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[3]), .Multpd2(MD[4]), .PartProd(PP1[4]));
BoothDecoder BD16 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[4]), .Multpd2(MD[5]), .PartProd(PP1[5]));
BoothDecoder BD17 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[5]), .Multpd2(MD[6]), .PartProd(PP1[6]));
BoothDecoder BD18 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[6]), .Multpd2(MD[7]), .PartProd(PP1[7]));
BoothDecoder BD19 (.SNGL(s0), .DBL(d0), .NEG(n0), .Multpd1(MD[7]), .Multpd2(MD[7]), .PartProd(PP1[8]));

//array of 9 half adders to produce 2s complement at the 9 bit output of the decoder 1//
HalfAdder HA11 (.A(n0), .B(PP1[0]), .Sum(S1[0]), .Carry(C1[0]));
HalfAdder HA12 (.A(C1[0]), .B(PP1[1]), .Sum(S1[1]), .Carry(C1[1]));
HalfAdder HA13 (.A(C1[1]), .B(PP1[2]), .Sum(S1[2]), .Carry(C1[2]));
HalfAdder HA14 (.A(C1[2]), .B(PP1[3]), .Sum(S1[3]), .Carry(C1[3]));
HalfAdder HA15 (.A(C1[3]), .B(PP1[4]), .Sum(S1[4]), .Carry(C1[4]));
HalfAdder HA16 (.A(C1[4]), .B(PP1[5]), .Sum(S1[5]), .Carry(C1[5]));
HalfAdder HA17 (.A(C1[5]), .B(PP1[6]), .Sum(S1[6]), .Carry(C1[6]));
HalfAdder HA18 (.A(C1[6]), .B(PP1[7]), .Sum(S1[7]), .Carry(C1[7]));
HalfAdder HA19 (.A(C1[7]), .B(PP1[8]), .Sum(S1[8]), .Carry(C1[8]));

//Booth Decode Module 2- Nine 1-bit booth decoder- for s1,n1,d1; Multpd1 is the lower bit//

BoothDecoder BD21 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(temp1), .Multpd2(MD[0]), .PartProd(PP2[0]));
BoothDecoder BD22 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[0]), .Multpd2(MD[1]), .PartProd(PP2[1]));
BoothDecoder BD23 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[1]), .Multpd2(MD[2]), .PartProd(PP2[2]));
BoothDecoder BD24 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[2]), .Multpd2(MD[3]), .PartProd(PP2[3]));
BoothDecoder BD25 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[3]), .Multpd2(MD[4]), .PartProd(PP2[4]));
BoothDecoder BD26 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[4]), .Multpd2(MD[5]), .PartProd(PP2[5]));
BoothDecoder BD27 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[5]), .Multpd2(MD[6]), .PartProd(PP2[6]));
BoothDecoder BD28 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[6]), .Multpd2(MD[7]), .PartProd(PP2[7]));
BoothDecoder BD29 (.SNGL(s1), .DBL(d1), .NEG(n1), .Multpd1(MD[7]), .Multpd2(MD[7]), .PartProd(PP2[8]));

//array of 9 half adders to produce 2s complement at the 9 bit output of the decoder 2//
HalfAdder HA21 (.A(n1), .B(PP2[0]), .Sum(S2[0]), .Carry(C2[0]));
HalfAdder HA22 (.A(C2[0]), .B(PP2[1]), .Sum(S2[1]), .Carry(C2[1]));
HalfAdder HA23 (.A(C2[1]), .B(PP2[2]), .Sum(S2[2]), .Carry(C2[2]));
HalfAdder HA24 (.A(C2[2]), .B(PP2[3]), .Sum(S2[3]), .Carry(C2[3]));
HalfAdder HA25 (.A(C2[3]), .B(PP2[4]), .Sum(S2[4]), .Carry(C2[4]));
HalfAdder HA26 (.A(C2[4]), .B(PP2[5]), .Sum(S2[5]), .Carry(C2[5]));
HalfAdder HA27 (.A(C2[5]), .B(PP2[6]), .Sum(S2[6]), .Carry(C2[6]));
HalfAdder HA28 (.A(C2[6]), .B(PP2[7]), .Sum(S2[7]), .Carry(C2[7]));
HalfAdder HA29 (.A(C2[7]), .B(PP2[8]), .Sum(S2[8]), .Carry(C2[8]));

//Booth Decode Module 3- Nine 1-bit booth decoder- for s2,n2,d2; Multpd1 is the lower bit//

BoothDecoder BD31 (.SNGL(s2), .DBL(d2), .NEG(n2), .Multpd1(temp1), .Multpd2(MD[0]), .PartProd(PP3[0]));
BoothDecoder BD32 (.SNGL(s2), .DBL(d2), .NEG(n2), .Multpd1(MD[0]), .Multpd2(MD[1]), .PartProd(PP3[1]));
BoothDecoder BD33 (.SNGL(s2), .DBL(d2), .NEG(n2), .Multpd1(MD[1]), .Multpd2(MD[2]), .PartProd(PP3[2]));
BoothDecoder BD34 (.SNGL(s2), .DBL(d2), .NEG(n2), .Multpd1(MD[2]), .Multpd2(MD[3]), .PartProd(PP3[3]));
BoothDecoder BD35 (.SNGL(s2), .DBL(d2), .NEG(n2), .Multpd1(MD[3]), .Multpd2(MD[4]), .PartProd(PP3[4]));
BoothDecoder BD36 (.SNGL(s2), .DBL(d2), .NEG(n2), .Multpd1(MD[4]), .Multpd2(MD[5]), .PartProd(PP3[5]));
BoothDecoder BD37 (.SNGL(s2), .DBL(d2), .NEG(n2), .Multpd1(MD[5]), .Multpd2(MD[6]), .PartProd(PP3[6]));
BoothDecoder BD38 (.SNGL(s2), .DBL(d2), .NEG(n2), .Multpd1(MD[6]), .Multpd2(MD[7]), .PartProd(PP3[7]));
BoothDecoder BD39 (.SNGL(s2), .DBL(d2), .NEG(n2), .Multpd1(MD[7]), .Multpd2(MD[7]), .PartProd(PP3[8]));

//array of 9 half adders to produce 2s complement at the 9 bit output of the decoder 3//
HalfAdder HA31 (.A(n2), .B(PP3[0]), .Sum(S3[0]), .Carry(C3[0]));
HalfAdder HA32 (.A(C3[0]), .B(PP3[1]), .Sum(S3[1]), .Carry(C3[1]));
HalfAdder HA33 (.A(C3[1]), .B(PP3[2]), .Sum(S3[2]), .Carry(C3[2]));
HalfAdder HA34 (.A(C3[2]), .B(PP3[3]), .Sum(S3[3]), .Carry(C3[3]));
HalfAdder HA35 (.A(C3[3]), .B(PP3[4]), .Sum(S3[4]), .Carry(C3[4]));
HalfAdder HA36 (.A(C3[4]), .B(PP3[5]), .Sum(S3[5]), .Carry(C3[5]));
HalfAdder HA37 (.A(C3[5]), .B(PP3[6]), .Sum(S3[6]), .Carry(C3[6]));
HalfAdder HA38 (.A(C3[6]), .B(PP3[7]), .Sum(S3[7]), .Carry(C3[7]));
HalfAdder HA39 (.A(C3[7]), .B(PP3[8]), .Sum(S3[8]), .Carry(C3[8]));

//Booth Decode Module 4- Nine 1-bit booth decoder- for s3,n3,d3; Multpd1 is the lower bit//

BoothDecoder BD41 (.SNGL(s3), .DBL(d3), .NEG(n3), .Multpd1(temp1), .Multpd2(MD[0]), .PartProd(PP5[0]));
BoothDecoder BD42 (.SNGL(s3), .DBL(d3), .NEG(n3), .Multpd1(MD[0]), .Multpd2(MD[1]), .PartProd(PP5[1]));
BoothDecoder BD43 (.SNGL(s3), .DBL(d3), .NEG(n3), .Multpd1(MD[1]), .Multpd2(MD[2]), .PartProd(PP5[2]));
BoothDecoder BD44 (.SNGL(s3), .DBL(d3), .NEG(n3), .Multpd1(MD[2]), .Multpd2(MD[3]), .PartProd(PP5[3]));
BoothDecoder BD45 (.SNGL(s3), .DBL(d3), .NEG(n3), .Multpd1(MD[3]), .Multpd2(MD[4]), .PartProd(PP5[4]));
BoothDecoder BD46 (.SNGL(s3), .DBL(d3), .NEG(n3), .Multpd1(MD[4]), .Multpd2(MD[5]), .PartProd(PP5[5]));
BoothDecoder BD47 (.SNGL(s3), .DBL(d3), .NEG(n3), .Multpd1(MD[5]), .Multpd2(MD[6]), .PartProd(PP5[6]));
BoothDecoder BD48 (.SNGL(s3), .DBL(d3), .NEG(n3), .Multpd1(MD[6]), .Multpd2(MD[7]), .PartProd(PP5[7]));
BoothDecoder BD49 (.SNGL(s3), .DBL(d3), .NEG(n3), .Multpd1(MD[7]), .Multpd2(MD[7]), .PartProd(PP5[8]));

//array of 9 half adders to produce 2s complement at the 9 bit output of the decoder//
HalfAdder HA41 (.A(n3), .B(PP5[0]), .Sum(S5[0]), .Carry(C5[0]));
HalfAdder HA42 (.A(C5[0]), .B(PP5[1]), .Sum(S5[1]), .Carry(C5[1]));
HalfAdder HA43 (.A(C5[1]), .B(PP5[2]), .Sum(S5[2]), .Carry(C5[2]));
HalfAdder HA44 (.A(C5[2]), .B(PP5[3]), .Sum(S5[3]), .Carry(C5[3]));
HalfAdder HA45 (.A(C5[3]), .B(PP5[4]), .Sum(S5[4]), .Carry(C5[4]));
HalfAdder HA46 (.A(C5[4]), .B(PP5[5]), .Sum(S5[5]), .Carry(C5[5]));
HalfAdder HA47 (.A(C5[5]), .B(PP5[6]), .Sum(S5[6]), .Carry(C5[6]));
HalfAdder HA48 (.A(C5[6]), .B(PP5[7]), .Sum(S5[7]), .Carry(C5[7]));
HalfAdder HA49 (.A(C5[7]), .B(PP5[8]), .Sum(S5[8]), .Carry(C5[8]));

//sign extending 9 bit to 12 bit//
/*
wire [11:0]SE1;
wire [11:0]SE2;
wire [11:0]SE3;
wire [11:0]SE5;
assign SE1 = {{3{S1[8]}}, S1[8:0]};
assign SE2 = {{3{S2[8]}}, S2[8:0]};
assign SE3 = {{3{S3[8]}}, S3[8:0]};
assign SE5 = {{3{S5[8]}}, S5[8:0]};

//appending zeros and adding thro cascading CLAs// 

assign Product[1:0]=SE1[1:0];
assign temp2={2'b0, SE1[11:2]};
CLA12Bit CLA1(.i1(temp2), .i2(SE2), .Output(temp3));
assign Product[3:2]=temp3[1:0];
assign temp14={2'b0, temp3[11:2]};
CLA12Bit CLA2(.i1(temp14), .i2(SE3), .Output(temp5));
assign Product[5:4]=temp5[1:0];
assign temp6={2'b0, temp5[11:2]};
CLA12Bit CLA3(.i1(temp6), .i2(SE5), .Output(temp9));
assign Product[15:6]=temp9[9:0];
*/

wire [14:0]SE1;
wire [12:0]SE2;
wire [10:0]SE3;
wire [8:0]SE5;
wire [12:0]temp2;
wire [12:0]temp3;
wire [10:0]temp5;
wire [10:0]temp6;
wire [8:0]temp9;
wire [9:0]temp14;

assign SE1 = {{6{S1[8]}}, S1[8:0]};
assign SE2 = {{4{S2[8]}}, S2[8:0]};
assign SE3 = {{2{S3[8]}}, S3[8:0]};
assign SE5 =  S5[8:0];
assign Product[1:0]=SE1[1:0];
assign temp2=SE1[14:2];
CLA13Bit CLA13(.i1(temp2), .i2(SE2), .Output(temp3));
assign Product[3:2]=temp3[1:0];
assign temp5[10:0]=temp3[12:2];
CLA11Bit CLA11(.i1(temp5), .i2(SE3), .Output(temp6));
assign Product[5:4]=temp6[1:0];
assign temp9=temp6[10:2];
CLA9Bit CLA9(.i1(temp9), .i2(SE5), .Output(temp14));
assign Product[15:6]=temp14[9:0];
endmodule

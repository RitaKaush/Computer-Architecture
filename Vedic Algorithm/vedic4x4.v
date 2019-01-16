`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:43 04/03/2016 
// Design Name: 
// Module Name:    vedic4x4 
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
module vedic4x4(
    input [3:0] i1,
    input [3:0] i2,
    output [7:0] Product
    );
wire [3:0] temp1 ;
wire [3:0] temp2 ;
wire [3:0] temp3 ;
wire [3:0] temp24 ;
wire [1:0] temp5 ;
wire [1:0] temp6 ;
wire [3:0] temp7 ;
wire [5:0] temp8 ;
wire [1:0] temp9 ;
wire [2:0] temp10 ;
wire [3:0] temp11 ;
wire [3:0] temp14 ;
wire temp12,temp13,temp15;

Vedic2x2 V1( .i1(i1[1:0]), .i2(i2[1:0]), .Product(temp1));
Vedic2x2 V2( .i1(i1[1:0]), .i2(i2[3:2]), .Product(temp2));
Vedic2x2 V3( .i1(i1[3:2]), .i2(i2[1:0]), .Product(temp3));
Vedic2x2 V4( .i1(i1[3:2]), .i2(i2[3:2]), .Product(temp24));

assign temp5=temp1[1:0];
assign Product[1:0]=temp5; 
assign temp6=temp1[3:2];
assign temp7[3:0]={2'b0, temp6}; 

CSA4x4 CS1( .i1(temp7), .i2(temp2), .i3(temp3), .Sum(temp8) );

assign temp9=temp8[1:0];
assign Product[3:2]=temp9;
assign temp10=temp8[4:2];
assign temp11={1'b0,temp10};

RCA4x4 RC1(.i1(temp11), .i2(temp24), .Sum(temp14)); 
assign Product[7:4]=temp14; 


endmodule


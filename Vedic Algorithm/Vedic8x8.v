`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:17:45 04/17/2016 
// Design Name: 
// Module Name:    Vedic8x8 
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
module Vedic8x8(
    input [7:0] i1,
    input [7:0] i2,
    output [15:0] Product
    );
wire [7:0] temp1 ;
wire [7:0] temp2 ;
wire [7:0] temp3 ;
wire [7:0] temp4 ;
wire [3:0] temp5 ;
wire [3:0] temp6 ;
wire [7:0] temp7 ;
wire [7:0] temp8 ;
wire [11:0] temp9 ;
wire [11:0] temp10 ;
wire [11:0] temp11 ;
wire [11:0] temp12 ;



vedic4x4 V1(.i1(i1[3:0]), .i2(i2[3:0]), .Product(temp1) );
vedic4x4 V2(.i1(i1[7:4]), .i2(i2[3:0]), .Product(temp2) );
vedic4x4 V3(.i1(i1[3:0]), .i2(i2[7:4]), .Product(temp3) );
vedic4x4 V4(.i1(i1[7:4]), .i2(i2[7:4]), .Product(temp4) );

assign temp5=temp1[3:0];
assign Product[3:0]=temp5;
assign temp6=temp1[7:4];
assign temp7={4'b0, temp6}; 
assign temp9={4'b0, temp3};
assign temp10={temp4, 4'b0}; 

RCA8x8 R1(.i1(temp7), .i2(temp2), .Sum(temp8));
RCA_12x12 R2(.i1(temp9),.i2(temp10), .Sum(temp11) );

assign temp12={4'b0, temp8}; 

RCA_12x12 R3(.i1(temp11),.i2(temp12), .Sum(Product[15:4]) );


endmodule

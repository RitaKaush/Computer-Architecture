`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:36:18 04/02/2016 
// Design Name: 
// Module Name:    CSA4x4 
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
module CSA4x4(
    input [3:0] i1,
    input [3:0] i2,
	 input [3:0] i3,
    output [5:0] Sum	 
    );
wire [3:0] w1;
wire [3:0] w2;
wire [4:0] w3;
wire [4:0] w4;
 
assign w1[3:0]=i1^i2^i3;
assign w2[3:0]=(i1 & i3) | (i2 & i3) | (i1 & 12);
assign w3[4:0]={w2,1'b0};
assign w4[4:0]={1'b0, w1};

RCA5x5 RCA1 (.i1(w3),.i2(w4),.Sum(Sum[4:0]),.Cout(Sum[5]));  

endmodule

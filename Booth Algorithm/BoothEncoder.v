`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:37 04/14/2016 
// Design Name: 
// Module Name:    BoothEncoder 
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
module BoothEncoder(
    input i0,
    input i1,
    input i2,
    output Single,
    output Double,
    output Negate
    );
wire temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9;

NOTgate N2(.A(i2), .Y(temp3));
NOTgate N1(.A(i1), .Y(temp2));
NOTgate N0(.A(i0), .Y(temp1));
XORgate_2Input X1(.A(i0), .B(i1), .Y(temp4));
NANDgate_3Input NA1(.A(i0), .B(i1), .C(temp3), .Y(temp5));
NANDgate_3Input NA2(.A(temp1), .B(temp2), .C(i2), .Y(temp6));
NOTgate N3(.A(temp4), .Y(temp7));
NOTgate N4(.A(temp7), .Y(Single));
NANDgate_2Input NA3(.A(temp5), .B(temp6), .Y(temp8));
NOTgate N5(.A(temp8), .Y(temp9));
NOTgate N6(.A(temp9), .Y(Double));
NOTgate N7(.A(temp3), .Y(Negate)); 
 


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:06:36 04/16/2016 
// Design Name: 
// Module Name:    BoothDecoder 
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
module BoothDecoder(
    input SNGL,
    input DBL,
    input NEG,
    input Multpd1,
    input Multpd2,
    output PartProd
    );

wire temp1,temp2,temp3; 

NANDgate_2Input NA1(.A(SNGL), .B(Multpd2), .Y(temp1)); 
NANDgate_2Input NA2(.A(DBL), .B(Multpd1), .Y(temp2));
NANDgate_2Input NA3(.A(temp1), .B(temp2), .Y(temp3));
XORgate_2Input X1(.A(temp3), .B(NEG), .Y(PartProd));

endmodule

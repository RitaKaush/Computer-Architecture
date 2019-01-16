`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:04:27 05/07/2016 
// Design Name: 
// Module Name:    WallaceTreeMultpr8x8 
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
module WallaceTreeMultpr8x8(
    input [7:0] A,
    input [7:0] B,
    output [15:0] Product
    );
assign temp1=A[0]&B[0];
assign temp2=A[1]&B[0];
assign temp3=A[0]&B[1];
assign temp4=A[2]&B[0];
assign temp5=A[1]&B[1];
assign temp6=A[0]&B[2];
assign temp7=A[3]&B[0];
assign temp8=A[2]&B[1];
assign temp9=A[1]&B[2];
assign temp10=A[0]&B[3];
assign temp11=A[0]&B[4];
 assign temp12=A[4]&B[0];
 assign temp13=A[3]&B[1];
 assign temp14=A[2]&B[2];
 assign temp15=A[1]&B[3];
 assign temp16=A[0]&B[5];
 assign temp17=A[5]&B[0];
 assign temp18=A[4]&B[1];
 assign temp19=A[1]&B[4];
 assign temp20=A[2]&B[3];
 assign temp21=A[3]&B[2];
 assign temp22=A[3]&B[3];
 assign temp23=A[2]&B[4];
 assign temp24=A[4]&B[2];
 assign temp25=A[1]&B[5];
 assign temp26=A[5]&B[1];
 assign temp27=A[6]&B[0];
 assign temp28=A[0]&B[6];
 assign temp29=A[4]&B[3];
 assign temp30=A[3]&B[4];
 assign temp31=A[2]&B[5];
 assign temp32=A[5]&B[2];
 assign temp33=A[1]&B[6];
 assign temp34=A[6]&B[1];
 assign temp35=A[7]&B[0];
 assign temp36=A[0]&B[7];
 assign temp37=A[6]&B[2];
 assign temp38=A[2]&B[6];
 assign temp39=A[5]&B[3];
 assign temp40=A[3]&B[5];
 assign temp41=A[1]&B[7];
 assign temp42=A[7]&B[1];
 assign temp43=A[4]&B[4];
 assign temp44=A[4]&B[5];
 assign temp45=A[5]&B[4];
 assign temp46=A[3]&B[6];
 assign temp47=A[6]&B[3];
 assign temp48=A[2]&B[7];
 assign temp49=A[7]&B[2];
 assign temp50=A[5]&B[5];
 assign temp51=A[4]&B[6];
 assign temp52=A[6]&B[4];
 assign temp53=A[3]&B[7];
 assign temp54=A[7]&B[3];
 assign temp55=A[6]&B[5];
 assign temp56=A[5]&B[6];
 assign temp57=A[4]&B[7];
 assign temp58=A[7]&B[4];
 assign temp59=A[6]&B[6];
 assign temp60=A[5]&B[7];
 assign temp61=A[7]&B[5];
 assign temp62=A[6]&B[7];
 assign temp63=A[7]&B[6];
 assign temp64=A[7]&B[7];
 
 wire s432,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12;
 wire c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41;
 wire r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r32;
 wire s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s64,s65,s66,s67,s68,s69,s70,s71,s72;
 wire c432,c42,c43,c44,c45,c46,c47,c48,c49,c50,c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,c61,c62,c63,c64,c65,c66,c67,c68,c69,c70,c71,c72;



assign Product[0]=temp1;

//Level 1//
HalfAdder HA1(.A(temp2), .B(temp3), .Sum(s1),.Cout(c1));
FullAdder FA1(.A(temp4), .B(temp5), .Cin(temp6), .Sum(s2), .Cout(c2));
FullAdder FA2(.A(temp7), .B(temp8), .Cin(temp9), .Sum(s3), .Cout(c3));
FullAdder FA3(.A(temp11), .B(temp12), .Cin(temp13), .Sum(s4), .Cout(c4));
HalfAdder HA2(.A(temp14), .B(temp15), .Sum(s5),.Cout(c5));
FullAdder FA4(.A(temp16), .B(temp17), .Cin(temp18), .Sum(s6), .Cout(c6));
FullAdder FA5(.A(temp19), .B(temp20), .Cin(temp21), .Sum(s7), .Cout(c7));
FullAdder FA6(.A(temp22), .B(temp23), .Cin(temp24), .Sum(s8), .Cout(c8));
FullAdder FA7(.A(temp25), .B(temp26), .Cin(temp27), .Sum(s9), .Cout(c9));
FullAdder FA8(.A(temp29), .B(temp30), .Cin(temp31), .Sum(s10), .Cout(c10));
FullAdder FA9(.A(temp32), .B(temp33), .Cin(temp34), .Sum(s11), .Cout(c11));
HalfAdder HA3(.A(temp35), .B(temp36), .Sum(s12),.Cout(c12));
FullAdder FA10(.A(temp37), .B(temp38), .Cin(temp39), .Sum(s13), .Cout(c13));
FullAdder FA11(.A(temp40), .B(temp41), .Cin(temp42), .Sum(s14), .Cout(c14));
FullAdder FA12(.A(temp44), .B(temp45), .Cin(temp46), .Sum(s15), .Cout(c15));
FullAdder FA13(.A(temp47), .B(temp48), .Cin(temp49), .Sum(s16), .Cout(c16));
FullAdder FA14(.A(temp50), .B(temp51), .Cin(temp52), .Sum(s17), .Cout(c17));
HalfAdder HA4(.A(temp53), .B(temp54), .Sum(s18),.Cout(c18));
FullAdder FA15(.A(temp55), .B(temp56), .Cin(temp57), .Sum(s19), .Cout(c19));
FullAdder FA16(.A(temp59), .B(temp60), .Cin(temp61), .Sum(s20), .Cout(c20));
HalfAdder HA5(.A(temp62), .B(temp63), .Sum(s21),.Cout(c21));



assign Product[1]=s1;

//Level 2//
HalfAdder HA6(.A(c1), .B(s2), .Sum(s22),.Cout(c22));
FullAdder FA17(.A(temp10), .B(s3), .Cin(c2), .Sum(s23), .Cout(c23));
FullAdder FA18(.A(s4), .B(s5), .Cin(c3), .Sum(s24), .Cout(c24));
FullAdder FA19(.A(c5), .B(s6), .Cin(c4), .Sum(s25), .Cout(c25));
FullAdder FA20(.A(c7), .B(s8), .Cin(c6), .Sum(s26), .Cout(c26));
FullAdder FA21(.A(c9), .B(s10), .Cin(c8), .Sum(s27), .Cout(c27));
FullAdder FA22(.A(c12), .B(s13), .Cin(c11), .Sum(s28), .Cout(c28));
FullAdder FA23(.A(c14), .B(s15), .Cin(c13), .Sum(s29), .Cout(c29));
FullAdder FA24(.A(c16), .B(s17), .Cin(c15), .Sum(s30), .Cout(c30));
FullAdder FA25(.A(c18), .B(s19), .Cin(c17), .Sum(s31), .Cout(c31));
HalfAdder HA7(.A(c19), .B(s20), .Sum(s32),.Cout(c32));
HalfAdder HA8(.A(s21), .B(c20), .Sum(s33),.Cout(c33));
ORgate_2IP R1(.A(c21), .B(c33), .Y(r1));
HalfAdder HA9(.A(temp64), .B(r1), .Sum(s34),.Cout(c34));

assign Product[2]=s22;

//Level 3//
HalfAdder HA10(.A(c22), .B(s23), .Sum(s35),.Cout(c35));
HalfAdder HA11(.A(c23), .B(s24), .Sum(s36),.Cout(c36));
FullAdder FA26(.A(s25), .B(s7), .Cin(c24), .Sum(s37), .Cout(c37));
FullAdder FA27(.A(s26), .B(s9), .Cin(c25), .Sum(s38), .Cout(c38));
FullAdder FA28(.A(s27), .B(s11), .Cin(s12), .Sum(s39), .Cout(c39));
FullAdder FA29(.A(s14), .B(s28), .Cin(c10), .Sum(s40), .Cout(c40));
FullAdder FA30(.A(s29), .B(s16), .Cin(c28), .Sum(s41), .Cout(c41));
FullAdder FA31(.A(s30), .B(s18), .Cin(c29), .Sum(s42), .Cout(c42));
FullAdder FA32(.A(s31), .B(temp58), .Cin(c30), .Sum(s43), .Cout(c43));
HalfAdder HA12(.A(c31), .B(s32), .Sum(s432),.Cout(c432));
ORgate_2IP R2(.A(c432), .B(c32), .Y(r2));
HalfAdder HA13(.A(s33), .B(r2), .Sum(s44),.Cout(c44));

assign Product[3]=s35;

//Level 4//
HalfAdder HA14(.A(c35), .B(s36), .Sum(s45),.Cout(c45));
ORgate_2IP R3(.A(c45), .B(c36), .Y(r3));
HalfAdder HA15(.A(r3), .B(s37), .Sum(s46),.Cout(c46));
FullAdder FA33(.A(s38), .B(temp28), .Cin(c37), .Sum(s47), .Cout(c47));
FullAdder FA34(.A(c26), .B(s39), .Cin(c38), .Sum(s48), .Cout(c48));
FullAdder FA35(.A(temp43), .B(s40), .Cin(c27), .Sum(s49), .Cout(c49));
HalfAdder HA16(.A(c40), .B(s41), .Sum(s50),.Cout(c50));
HalfAdder HA17(.A(c41), .B(s42), .Sum(s51),.Cout(c51));
HalfAdder HA18(.A(c42), .B(s43), .Sum(s52),.Cout(c52));
HalfAdder HA19(.A(c43), .B(s432), .Sum(s53),.Cout(c53));

assign Product[4]=s45;
assign Product[5]=s46;

//Level 5//
HalfAdder HA21(.A(c46), .B(s47), .Sum(s54),.Cout(c54));
HalfAdder HA22(.A(c47), .B(s48), .Sum(s55),.Cout(c55));
FullAdder FA36(.A(c39), .B(s49), .Cin(c48), .Sum(s56), .Cout(c56));
HalfAdder HA23(.A(c49), .B(s50), .Sum(s57),.Cout(c57));
ORgate_2IP R4(.A(c57), .B(c50), .Y(r32));
HalfAdder HA24(.A(r32), .B(s51), .Sum(s58),.Cout(c58));
ORgate_2IP R5(.A(c58), .B(c51), .Y(r4));
HalfAdder HA25(.A(r4), .B(s52), .Sum(s59),.Cout(c59));
ORgate_2IP R6(.A(c59), .B(c52), .Y(r5));
HalfAdder HA26(.A(r5), .B(s53), .Sum(s60),.Cout(c60));
ORgate_2IP R7(.A(c53), .B(c60), .Y(r6));
HalfAdder HA27(.A(r6), .B(s44), .Sum(s61),.Cout(c61));
ORgate_2IP R8(.A(c61), .B(c44), .Y(r7));
HalfAdder HA20(.A(s34), .B(r7), .Sum(s62),.Cout(c62));

assign Product[6]=s54;


//Level 6//
HalfAdder HA28(.A(c54), .B(s55), .Sum(s63),.Cout(c63));
ORgate_2IP R9(.A(c55), .B(c63), .Y(r8));
HalfAdder HA281(.A(r8), .B(s56), .Sum(s64),.Cout(c64));
HalfAdder HA30(.A(c56), .B(s57), .Sum(s65),.Cout(c65));

assign Product[7]=s63;
assign Product[8]=s64;

//Level 7//
HalfAdder HA31(.A(c64), .B(s65), .Sum(s66),.Cout(c66));
ORgate_2IP OR10(.A(c66), .B(c65), .Y(r9));
HalfAdder HA32(.A(r9), .B(s58), .Sum(s67),.Cout(c67));


assign Product[9]=s66;
assign Product[10]=s67;

//Level 8//
HalfAdder HA33(.A(c67), .B(s59), .Sum(s68),.Cout(c68));

assign Product[11]=s68;

//Level 9//
HalfAdder HA34(.A(c68), .B(s60), .Sum(s69),.Cout(c69));
HalfAdder HA35(.A(c69), .B(s61), .Sum(s70),.Cout(c70));
HalfAdder HA36(.A(c70), .B(s62), .Sum(s71),.Cout(c71));
ORgate_3IP OR11(.A(c71), .B(c62), .C(c34), .Y(r10));

assign Product[12]=s69;
assign Product[13]=s70;
assign Product[14]=s71;
assign Product[15]=r10;


endmodule

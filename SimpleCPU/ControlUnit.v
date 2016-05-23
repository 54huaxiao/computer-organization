`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:02:34 03/19/2016 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
    input [5:0] operationCode,
    input zero,
    output ALUSrcB,
    output ALUM2Reg,
    output RegWre,
    output InsMemRW,
    output DataMemRW,
    output ExtSel,
    output PCSrc,
    output RegOut,
    output PCWre,
    output [2:0] ALUFlag
    );
	 wire [2:0] tempflag;
    //first we new some new wire to recod the type of the oreration
	 wire addop, subop, oriop, andop, orop, moveop, swop, lwop, beop, haltop;
	// add is 000000
	assign addop  = ~operationCode[5] & ~operationCode[4] & ~operationCode[3] & ~operationCode[2] & ~operationCode[1] & ~operationCode[0];
	//sub is 000001
	assign subop  =  ~operationCode[5] & ~operationCode[4] & ~operationCode[3] & ~operationCode[2] & ~operationCode[1] & operationCode[0];
	//ori is 010000
	assign oriop  =  ~operationCode[5] & operationCode[4] & ~operationCode[3] & ~operationCode[2] & ~operationCode[1] & ~operationCode[0];
	//and is 010001
	assign andop  =  ~operationCode[5] & operationCode[4] & ~operationCode[3] & ~operationCode[2] & ~operationCode[1] & operationCode[0];
	// or is 010010
	assign orop   =  ~operationCode[5] & operationCode[4] & ~operationCode[3] & ~operationCode[2] & operationCode[1] & ~operationCode[0];
	//move is 100000
	assign moveop =   operationCode[5] & ~operationCode[4] & ~operationCode[3] & ~operationCode[2] & ~operationCode[1] & ~operationCode[0];
	//sw is 100110
	assign swop   =   operationCode[5] & ~operationCode[4] & ~operationCode[3] & operationCode[2] & operationCode[1] & ~operationCode[0];
	//lw is 100111
	assign lwop   =   operationCode[5] & ~operationCode[4] & ~operationCode[3] & operationCode[2] & operationCode[1] & operationCode[0];
	//beq is 110000
	assign beqop  =   operationCode[5] & operationCode[4] & ~operationCode[3] & ~operationCode[2] & ~operationCode[1] & ~operationCode[0];
	//halt is 111111
	assign haltop =   operationCode[5] & operationCode[4] & operationCode[3] & operationCode[2] & operationCode[1] & operationCode[0];
	
	//根据实验报告表一的数据，可得
	assign ALUSrcB=oriop | swop | lwop;
	assign ALUM2Reg=lwop;
	assign RegWre=addop | subop | oriop | andop | orop | moveop | lwop;
	//直接设为0
	assign InsMemRW=0;
	assign DataMemRW=swop;
	assign PCSrc=beqop & zero;
	assign RegOut= addop | subop | andop | orop | moveop;
	assign PCWre=~haltop;
	
	assign tempflag[2]=andop; 
	assign tempflag[1]=oriop | orop;
	assign tempflag[0]=subop | oriop | orop | beqop;
	assign ALUFlag = tempflag;
	assign ExtSel=swop | lwop | beqop;
endmodule

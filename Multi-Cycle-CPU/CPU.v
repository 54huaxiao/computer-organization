`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:29 05/07/2016 
// Design Name: 
// Module Name:    CPU 
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
module CPU(clk, reset, initPC,
			  test_decode, test_zero, test_RegWre, test_PCWre, test_IRWre, test_ALUSrcB,
			  test_ALUOp, test_ALUM2Reg, test_RegOut, test_DataMemRw,test_PCSrc, test_ExtSel,
			  test_InsMemRW, test_WrRegData, test_SAExt, test_state,test_next_state, PCout);
	input clk, reset;
	input [31:0] initPC;
	
	
	wire [5:0] decode;
	wire zero, RegWre,PCWre,ALUSrcB,ALUM2Reg,DataMemRw,ExtSel, InsMemRW, IRWre, WrRegData, SAExt;
	wire [1:0] PCSrc;
	wire [1:0] RegOut;
	wire [2:0] ALUOp;
	wire [2:0] state, next_state;
	
	//////////////////////////////////////////////////////////////
	/////////////////////TEST OUTPUT//////////////////////////////
	output [5:0] test_decode;
	output test_zero, test_RegWre,test_PCWre,test_ALUSrcB,test_ALUM2Reg,test_DataMemRw,
			 test_ExtSel, test_InsMemRW, test_IRWre, test_WrRegData, test_SAExt;
	output [1:0] test_PCSrc;
	output [1:0] test_RegOut;
	output [2:0] test_ALUOp;
	output [2:0] test_state;
	output [2:0] test_next_state;
	output [31:0]PCout;
	assign test_decode = decode;
	assign test_zero = zero;
	assign test_RegWre = RegWre;
	assign test_PCWre = PCWre;
	assign test_IRWre = IRWre;
	assign test_ALUSrcB = ALUSrcB;
	assign test_ALUOp = ALUOp;
	assign test_ALUM2Reg = ALUM2Reg;
	assign test_RegOut = RegOut;
	assign test_DataMemRw = DataMemRw;
	assign test_PCSrc = PCSrc;
	assign test_ExtSel = ExtSel;
	assign test_InsMemRW = InsMemRW;
	assign test_WrRegData = WrRegData;
	assign test_state = state;
	assign test_next_state = next_state;
	assign test_SAExt = SAExt;
	//////////////////////////////////////////////////////////////
	
	
	CU _CU(decode, clk, reset, zero, RegWre, PCWre, IRWre, ALUSrcB, ALUOp, ALUM2Reg, RegOut, DataMemRw,
     PCSrc, ExtSel, InsMemRW, WrRegData, SAExt, state, next_state);
	
	DataPath _DataPath(decode, clk, reset, zero, RegWre, PCWre, IRWre, ALUSrcB, ALUOp, ALUM2Reg, RegOut, DataMemRw,
     PCSrc, ExtSel, InsMemRW, WrRegData, SAExt, initPC, PCout);
	
	
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:05 03/19/2016 
// Design Name: 
// Module Name:    Cpu 
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
module Cpu(
    input click,
    output ALUSrcB,
    output ALUM2Reg,
    output RegWre,
    output InsMemRW,
    output DataMemRW,
    output ExtSel,
    output PCSrc,
    output RegOut,
    output PCWre,
    output zero,
    output [2:0] ALUFlag,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rd,
    //output [4:0] r_in,
    output reg[31:0] PC_out,
    output [31:0] PC,
    output [31:0] instruction,
    output [31:0] readData1,
    output [31:0] readData2,
    output [31:0] write_data,
    output [31:0] Alu_b,
    output [31:0] result,
    output [31:0] DataOut,
    output [31:0] next
    );


	reg reset;
	 
	wire [5:0] operationCode;
	wire [15:0] immediate_16;
	wire [31:0] immediate_32;
	
	initial begin
		PC_out = 32'h00000004;
		reset = 0;
	end
	//get the PC
	PC pc(PC_out, click, reset, PCWre, PC);
	//get the instruction by the PC
	InstructionSave instructionsave(PC, InsMemRW, instruction);
	//get the perationCode, rs, rd by the instruction
	assign operationCode = instruction[31:26];
	assign rs = instruction[25:21];
	assign rt = instruction[20:16];
	assign rd = instruction[15:11];
	assign immediate_16 = instruction[15:0];
	
	//as we get the operationcode, we set it to the control unit
	ControlUnit controlunit(operationCode, zero, ALUSrcB, ALUM2Reg, RegWre, InsMemRW, DataMemRW, ExtSel, PCSrc, RegOut, PCWre, ALUFlag);

	//compute the readData1 and readDate2
	RegisterFile registerfile(click, RegWre, rs, rt, rd, RegOut, write_data, readData1, readData2);
	//extend the immediate to 32bit
	Extend extend(immediate_16, ExtSel, immediate_32);

	ALU alu(readData1, readData2, immediate_32, ALUSrcB, ALUFlag, zero, result);
	
	DataSaver datasaver(result, readData2, DataMemRW, ALUM2Reg, write_data);

	//this is for get the next pc
	NextPc nextpc(PC, immediate_32, PCSrc, next);
	always@(*) begin
		PC_out = next;
	end

endmodule

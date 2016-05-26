`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:27:57 05/07/2016 
// Design Name: 
// Module Name:    DataPath 
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
module DataPath(decode, clk, reset, zero, RegWre, PCWre, IRWre, ALUSrcB, ALUOp, ALUM2Reg, RegOut, DataMemRw,
     PCSrc, ExtSel, InsMemRW, WrRegData, SAExt, initPC, PCout);
	input clk;
	input reset;
	output [5:0] decode;
	input RegWre,PCWre,zero,ALUSrcB,ALUM2Reg,DataMemRw,ExtSel, InsMemRW, IRWre, WrRegData, SAExt;
	input [1:0] PCSrc;
	input [1:0] RegOut;
	input [2:0] ALUOp;
	input [31:0] initPC;
	
	//parameter
	parameter word_size = 32;
	parameter zero32 = 32'h0000;
	// PC
	wire [word_size-1:0] PCin; 
	wire [word_size-1:0] PCout;
	output [word_size-1:0] PCout;
	// Instruction Memory
	wire [word_size-1:0] IMout;
	wire [word_size-1:0] IMin;
	
	
	// Instruction Register
	wire [word_size-1:0] IRout;
	

	// Data Memory
	wire [word_size-1:0] DMout;
	// Memory Data Register
	wire [word_size-1:0] MDRout;
	wire [word_size-1:0] MDRin;
	// Sign/Zero Extension
	wire [word_size-1:0] immZE, immSE, saSAE;

	// Reg File
	wire [4:0] write_address;
	wire [word_size-1:0] write_data;
	wire [word_size-1:0] read_data_1, read_data_2;

	// A and B outputs
	wire [word_size-1:0] Aout, Bout;
	
	// extend
	wire [word_size-1:0] top_extend_wire;
	wire [word_size-1:0] origin_extend_wire;

	// ALU
	wire [word_size-1:0]	sourceB;
	wire [word_size-1:0] ALU_wire;
	wire zero;

	// ALUOut
	wire [word_size-1:0] ALUOut_wire;

	// ~~~~~~~~~~~~~~~~~~~ ASSIGNMENTS ~~~~~~~~~~~~~~~~~~~ //
	wire [15:0] immediate;
	wire [4:0] rs, rt, rd, sa;
	wire [25:0] j_address;
	assign decode = IRout[31:26];
	assign immediate = IRout[15:0];
	assign rs = IRout[25:21];
	assign rt = IRout[20:16];
	assign rd = IRout[15:11];
	assign sa = IRout[10:6];
	assign j_address[25:0] = IRout[25:0];

	// ~~~~~~~~~~~~~~~~~~~ MEMORY ~~~~~~~~~~~~~~~~~~~ //

	// INSTRUCTION MEM
	IMem	IM(PCout, IMout, IMin, InsMemRW);
	
	// DATA MEM
	DMem	DM(ALUOut_wire, DMout, Bout, DataMemRw, clk);

	

	// Reg File
	// rna, rnb:  the address
	// d: write data
	// qa, qb: read data, used to output
	// clk: clock
	// clrn: signal for reset the register file, when 0
	// wn: address to write the register
	// we: enable write to register
	//rna,rnb,d,wn,we,clk,clrn,qa,qb
	RegFile		RF(rs, rt, write_data, write_address, RegWre,
						clk, 1'b1, read_data_1, read_data_2);
	

	// ~~~~~~~~~~~~~~~~~~~ INTERNAL REGISTERS ~~~~~~~~~~~~~~~~~~~ //

	// INSTRUCTION REGISTER
	holding_reg IR(IRout, IMout, IRWre, clk, reset, zero32);

	// A and B
	holding_reg	A(Aout, read_data_1, 1'b1, clk, reset, zero32);
	holding_reg B(Bout, read_data_2, 1'b1, clk, reset, zero32);

	// ALUOut Register
	holding_reg	ALUOut(ALUOut_wire, ALU_wire, 1'b1, clk, reset, zero32);

	// MEM DATA REGISTER
	holding_reg MDR(MDRout, MDRin, 1'b1, clk, reset);

	// ~~~~~~~~~~~~~~~~~~~ EXTENDERS ~~~~~~~~~~~~~~~~~~~ //

	// ZE(imm) and SE(imm)
	zero_extend	ZE(immediate, immZE);
	sign_extend SE(immediate, immSE);
	sa_extend   SAE(sa, saSAE);
	// extend out
	mux_1bit extend_mux(origin_extend_wire, immZE, immSE, ExtSel);
	mux_1bit sa_extend_mux(top_extend_wire, origin_extend_wire, saSAE,  SAExt);
	// ~~~~~~~~~~~~~~~~~~~ MULTIPLEXERS ~~~~~~~~~~~~~~~~~~~ //

	// Reg File inputs
	read_mux	read_sel_mux(write_address, 5'b11111, rt, rd, RegOut); 
	mux_1bit write_data_mux(write_data,PCout+4, MDRout,  WrRegData);
	
	
	
	

	// ALU inputs
	mux_1bit ALUSrcB_mux(sourceB, Bout, top_extend_wire, ALUSrcB);

	// ALUM2Reg mux
	mux_1bit ALUM2Reg_mux(MDRin, ALU_wire, DMout, ALUM2Reg);

	wire [31:0] jump_address;
	assign jump_address[31:28] = PCout[31:28];
	assign jump_address[27:2] = j_address[25:0];
	assign jump_address[1:0] = 2'b00;
	//PC source mux
	mux_2bit	PC_mux(PCin,
						 PCout+4,       // simple pc + 4
						 PCout+4+(immSE<<2), // pc + 4 + beq
						 read_data_1,   // pc = ra
						 jump_address, // pc = j_address
						 PCSrc);

	// PC
	holding_reg	PC(PCout, PCin, PCWre, clk, reset, initPC);

	// ~~~~~~~~~~~~~~~~~~~ MAIN ALU ~~~~~~~~~~~~~~~~~~~ //

	// ALU
	ALU	mainALU(ALU_wire, zero, Aout, sourceB, ALUOp);
endmodule

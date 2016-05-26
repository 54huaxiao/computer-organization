`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:35 05/07/2016 
// Design Name: 
// Module Name:    CU 
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
module CU(decode, clk, reset, zero, RegWre, PCWre, IRWre, ALUSrcB, ALUOp, ALUM2Reg, RegOut, DataMemRw,
     PCSrc, ExtSel, InsMemRW, WrRegData, SAExt , state, next_state);
	input clk;
	input reset;
	input [5:0] decode;
	input zero;
	output reg RegWre,PCWre,IRWre,ALUSrcB,ALUM2Reg,DataMemRw,ExtSel, InsMemRW, WrRegData, SAExt;
	
	output reg [1:0] PCSrc;
	output reg [1:0] RegOut;
	output reg [2:0] ALUOp;
	output reg [2:0] state;
	output reg [2:0] next_state;
	parameter [2:0] sif   = 3'b000,
						 sid   = 3'b001,
						 sexe1 = 3'b110,
						 sexe2 = 3'b101,
						 sexe3 = 3'b010,
						 smem  = 3'b011,
						 swb1  = 3'b111,
						 swb2  = 3'b100;
	parameter [5:0] op_add  = 6'b000000,
						 op_sub  = 6'b000001,
						 op_addi = 6'b000010,
						 op_or   = 6'b010000,
						 op_and  = 6'b010001,
						 op_ori  = 6'b010010,
						 op_sll  = 6'b011000,
						 op_move = 6'b100000,
						 op_slt  = 6'b100111,
						 op_sw   = 6'b110000,
						 op_lw   = 6'b110001,
						 op_beq  = 6'b110100,
						 op_j    = 6'b111000,
						 op_jr   = 6'b111001,
						 op_jal  = 6'b111010,
						 op_halt = 6'b111111;
	
	always @(posedge clk) begin
		PCWre = 0;      // write the pc
		IRWre = 0;      // write the IR
		PCSrc = 2'b00;  // 00: pc+4, 01: pc=4+beq, 10: pc=rs, 11: pc=j_address
		ExtSel = 0;     // signed extend
		SAExt = 0;      // sa extend
		ALUSrcB = 0;    // 0: reg2  , 1: extend
		ALUOp = 3'b000; // add
		DataMemRw = 0;  // mem write
		ALUM2Reg = 0;   // 0: alu to reg, 1: mem to reg  		
		RegOut = 2'b10; // 00: pc+4 => ra, 01: rt, 10: rd 
		RegWre = 0;     // write the register
		WrRegData = 0;  // the data selevtor to the register
		InsMemRW = 0;   // insMem  write
		state = next_state;
		if (reset) begin
			// we need not PCWre because the reset will set the initPC
			IRWre <= 1;
			next_state <= sif;
		end else begin
			case (state)
				sif: begin
					next_state <= sid;
					IRWre <= 1;
				end
				sid: begin
					case (decode)
						op_add : begin next_state <= sexe1; end
						op_sub : begin next_state <= sexe1; end
						op_addi: begin next_state <= sexe1; ExtSel <= 1; end
						op_or  : begin next_state <= sexe1; end
						op_and : begin next_state <= sexe1; end
						op_ori : begin next_state <= sexe1; ExtSel <= 1; end
						op_move: begin next_state <= sexe1; end
						op_slt : begin next_state <= sexe1; end
						op_sll : begin next_state <= sexe1; end
						op_beq : begin next_state <= sexe2; ExtSel <= 1; end
						op_sw  : begin next_state <= sexe3; ExtSel <= 1; end
						op_lw  : begin next_state <= sexe3; ExtSel <= 1; end
						op_j   : begin next_state <= sif; PCWre <= 1; PCSrc <= 2'b11; end
						op_jal : begin next_state <= sif; PCWre <= 1; PCSrc <= 2'b11; RegOut =2'b00; RegWre <= 1; end
						op_jr  : begin next_state <= sif; PCWre <= 1; PCSrc <= 2'b10; end
						op_halt: begin next_state <= sif; end
					endcase
				end
				sexe1: begin
					next_state <= swb1;
					WrRegData <= 1;
					case (decode)
						op_add :begin ALUOp = 3'b000; end
						op_sub :begin ALUOp = 3'b001; end
						op_addi:begin ALUOp = 3'b000; ALUSrcB = 1; end
						op_or  :begin ALUOp = 3'b101; end
						op_and :begin ALUOp = 3'b110; end
						op_ori :begin ALUOp = 3'b101; ALUSrcB = 1; end
						op_move:begin ALUOp = 3'b000; end
						op_slt :begin ALUOp = 3'b010; end
						op_sll :begin ALUOp = 3'b100; ALUSrcB = 1; SAExt <= 1; end
					endcase
				end
				sexe2: begin
					// just beq
					next_state <= sif;
					ALUOp <= 3'b001;
					PCWre <= 1;
					#1;
					if (zero == 1) begin
						PCSrc <= 2'b01;
					end else begin
						PCSrc <= 2'b00;
					end
					//PCSrc = zero? 2'b01 : 2'b00;
				end
				sexe3: begin
					case (decode)
						op_sw  : begin next_state <= smem; ALUOp = 3'b000; ALUSrcB = 1; end	
						op_lw  : begin next_state <= smem; ALUOp = 3'b000; ALUSrcB = 1; end
					endcase
				end
				smem: begin
					case (decode)
						op_sw  : begin next_state <= sif; DataMemRw <= 1; PCWre <= 1; end
						op_lw  : begin next_state <= swb2; ALUM2Reg <= 1; end
					endcase
				end
				swb1: begin
					// default PCsrc = 2'b00
					next_state <= sif;
					PCWre <= 1;
					WrRegData <= 1;
					RegWre <= 1;
					case (decode)
						op_add : begin RegOut <= 2'b10; end
						op_sub : begin RegOut <= 2'b10; end
						op_addi: begin RegOut <= 2'b01; end
						op_or  : begin RegOut <= 2'b10; end
						op_and : begin RegOut <= 2'b10; end
						op_ori : begin RegOut <= 2'b01; end
						op_move: begin RegOut <= 2'b10; end
						op_slt : begin RegOut <= 2'b10; end
						op_sll : begin RegOut <= 2'b10; end
					endcase
				end
				swb2: begin
					// only the lw
					next_state <= sif;
					PCWre <= 1;
					WrRegData <= 1;
					RegWre <= 1;
					RegOut <= 2'b01;
				end
			endcase
		end
	end

endmodule

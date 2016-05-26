`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:10:32 05/07/2016
// Design Name:   CPU
// Module Name:   E:/MC-CPU/CPUTest.v
// Project Name:  MC-CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPUTest;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] initPC;

	// Outputs
	wire [5:0] test_decode;
	wire test_zero;
	wire test_RegWre;
	wire test_PCWre;
	wire test_IRWre;
	wire test_ALUSrcB;
	wire [2:0] test_ALUOp;
	wire test_ALUM2Reg;
	wire [1:0] test_RegOut;
	wire test_DataMemRw;
	wire [1:0] test_PCSrc;
	wire test_ExtSel;
	wire test_InsMemRW;
	wire test_WrRegData;
	wire test_SAExt;
	wire [2:0] test_state, test_next_state;
	wire [31:0] PCout;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.clk(clk), 
		.reset(reset), 
		.initPC(initPC), 
		.test_decode(test_decode), 
		.test_zero(test_zero), 
		.test_RegWre(test_RegWre), 
		.test_PCWre(test_PCWre), 
		.test_IRWre(test_IRWre), 
		.test_ALUSrcB(test_ALUSrcB), 
		.test_ALUOp(test_ALUOp), 
		.test_ALUM2Reg(test_ALUM2Reg), 
		.test_RegOut(test_RegOut), 
		.test_DataMemRw(test_DataMemRw), 
		.test_PCSrc(test_PCSrc), 
		.test_ExtSel(test_ExtSel), 
		.test_InsMemRW(test_InsMemRW), 
		.test_WrRegData(test_WrRegData), 
		.test_SAExt(test_SAExt),
		.test_state(test_state),
		.test_next_state(test_next_state),
		.PCout(PCout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		initPC = 0;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 1;
		#10;
		reset = 0;
		
		#2000 $stop;
		// Add stimulus here

	end
   always begin
		#5 clk = ~clk;
	end
endmodule


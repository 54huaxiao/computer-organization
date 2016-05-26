`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:01 05/07/2016 
// Design Name: 
// Module Name:    DMem 
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
module DMem(
     DAddr,
     DataOut,
     DataIn,
	  RW,
	  clk
    );
	input clk;
	input RW;
	input [31:0]DAddr;
	input [31:0]DataIn;
	output [31:0]DataOut;
	//input clk;
	reg 	[7:0] 	data_memory [20:0];
	initial begin
		data_memory[0] =  8'b00000000;
		data_memory[1] =  8'b00000000;
		data_memory[2] =  8'b00000000;
		data_memory[3] =  8'b00000000;
		data_memory[4] =  8'b00000000;
		data_memory[5] =  8'b00000000;
		data_memory[6] =  8'b00000000;
		data_memory[7] =  8'b00000000;
		data_memory[8] =  8'b00000000;
		data_memory[9] =  8'b00000000;
		data_memory[10] = 8'b00000000;
		data_memory[11] = 8'b00000000;
		data_memory[12] = 8'b00000000;
		data_memory[13] = 8'b00000000;
		data_memory[14] = 8'b00000000;
		data_memory[15] = 8'b00000000;
		data_memory[16] = 8'b00000000;
		data_memory[17] = 8'b00000000;
		data_memory[18] = 8'b00000000;
		data_memory[19] = 8'b00000000;
		data_memory[20] = 8'b00000000;
	end
	
	
	assign DataOut = (RW == 0)? {data_memory[DAddr+3],data_memory[DAddr+2],data_memory[DAddr+1],data_memory[DAddr]}: 0; // read
	//always@(RW or DataIn or DAddr) begin
	always@(negedge clk) begin
		if ((DAddr != 0) && (RW == 1) && (DataIn != 0)) begin// write
			data_memory[DAddr] <= DataIn[7:0];
			data_memory[DAddr+1] <= DataIn[15:8];
			data_memory[DAddr+2] <= DataIn[23:16];
			data_memory[DAddr+3] <= DataIn[31:24];
		end
	end
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:50 03/19/2016 
// Design Name: 
// Module Name:    DataSaver 
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
module DataSaver(
    input [31:0] result,
    input [31:0] readData2,
    input DataMemRW,
    input ALUM2Reg,
    output [31:0] write_data
    );

	reg [31:0] DataMem [511:0];
	reg [31:0] DataOut;
	
	always@ ( result or DataMemRW ) begin
		if ( DataMemRW == 0 )
			DataOut = DataMem[result];
		else
			DataMem[result] = readData2;
	end
   
	assign write_data = ( ALUM2Reg == 0 )? result : DataOut;

endmodule

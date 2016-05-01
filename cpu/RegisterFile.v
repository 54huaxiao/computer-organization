`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:53 03/19/2016 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(
    input click,
    input RegWre,
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] rd,
    input RegOut,
    input [31:0] write_data,
    output [31:0] readData1,
    output [31:0] readData2
    );
    
	 wire [4:0] rin;
    assign rin = ( RegOut == 0 )? rt : rd;
	 
	 reg [31:0] registers [31:0];
	 initial begin
		$readmemb( "registerFile.txt", registers, 0, 31 );
	 end
	 
	 assign readData1 = registers[rs];		
	 assign readData2 = registers[rt];
	
	 always@( negedge click or write_data or rin) begin
		if ( (rin != 0) & (RegWre == 1) ) begin
			registers[rin] = write_data;
		end
	 end
	 
endmodule

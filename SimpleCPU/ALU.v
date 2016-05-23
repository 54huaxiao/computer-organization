`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:59 03/19/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] readData1,
    input [31:0] readData2,
    input [31:0] immediate_32,
    input ALUSrcB,
    input [2:0] ALUFlag,
    output zero,
    output reg[31:0] result
    );
	 
    wire [31:0] alub;
    assign alub = ( ALUSrcB == 0 )? readData2 : immediate_32;
	 
    always@( readData1 or alub or ALUFlag ) begin
	   $display("flag: %d", ALUFlag);
		case( ALUFlag )
			3'b000: begin
				result = readData1 + alub;
				//$display("add");
			end
			3'b001: begin
				result = readData1 - alub;
				//$display("sub");
			end
			3'b011: begin
				result = readData1 | alub;
				//$display("or");
				//$display("the result is %d", result);
			end
			3'b100: begin
				result = readData1 & alub;
				//$display("and");
			end
		endcase 

		$display("flag: %d", ALUFlag);
		$display("in1: %d", readData1);
		$display("in2: %d", alub);
		$display("ALUresult: %d", result);
		$display("zero: %d", zero);
	end
	assign zero = (result == 0) ? 1 : 0;
	 
endmodule

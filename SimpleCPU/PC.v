`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:41 03/19/2016 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [31:0] PC_out,
    input click,
    input reset,
    input PCWre,
    output reg[31:0] PC
    );

always@ ( posedge click ) begin
			if (PCWre == 0)
				PC <= PC;
			else
				PC <= PC_out;
end


endmodule

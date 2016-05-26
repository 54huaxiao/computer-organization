`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:58:41 05/07/2016 
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
//  ALU
module ALU(output_data, zero, sourceA, sourceB, ALUSel);

parameter word_size = 32;

// inputs
input [word_size-1:0] sourceA, sourceB;
input [2:0] ALUSel; 

// outputs
output reg [word_size-1:0] output_data;
output reg zero;

// if any input changes, update output
always @(sourceA, sourceB, ALUSel) begin
	// operation depends on ALUSel input
	case (ALUSel)
		3'b000: output_data = sourceA + sourceB;
		3'b001: begin
				output_data = sourceA - sourceB;
					if ((sourceA - sourceB) == 0) begin
						zero = 1;
					end
					else begin
						zero = 0;
					end
		end
		3'b010: output_data = ($signed(sourceA) < $signed(sourceB))? 1 : 0;
		3'b011: output_data = (sourceA >> sourceB);
		3'b100: output_data = (sourceA << sourceB);
		3'b101: output_data = sourceA | sourceB;
		4'b110: output_data = sourceA & sourceB;
		4'b111: output_data = sourceA ^ sourceB;
		default: output_data = 0;
	endcase
end

endmodule


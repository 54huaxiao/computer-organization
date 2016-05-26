`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:06:49 05/07/2016 
// Design Name: 
// Module Name:    read_mux 
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
// Register 2 read select multiplexer
module read_mux(output_data, input_data0, input_data1, input_data2, select);

parameter word_size = 5;

// inputs
input [1:0] select;
input [word_size-1:0] input_data0, input_data1, input_data2;

// output
output reg [word_size-1:0] output_data;

// select the input
always @(select or input_data0 or input_data1 or input_data2) begin
	case (select)
		2'b00: output_data <= input_data0;
		2'b01: output_data <= input_data1;
		2'b10: output_data <= input_data2;
		default: output_data <= 0;
	endcase
end

endmodule


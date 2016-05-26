`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:24:13 05/08/2016 
// Design Name: 
// Module Name:    sa_extend 
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
module sa_extend(input_data, output_data);

// parameters
parameter word_size = 32;
parameter sa_size = 5;

// input and output
input [sa_size-1:0] input_data;
output [word_size-1:0] output_data;

// output assignment
assign output_data = $unsigned(input_data);

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:53 05/07/2016 
// Design Name: 
// Module Name:    RegFile 
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
// rna, rnb:  the address
// d: write data
// qa, qb: read data, used to output
// clk: clock
// clrn: signal for reset the register file, when 0
// wn: address to write the register
// we: enable write to register
module RegFile (rna,rnb,d,wn,we,clk,clrn,qa,qb);
	input 	[4:0]	rna,rnb,wn;
	input 	[31:0] 	d;
	input		we,clk,clrn;
	output 	[31:0] 	qa,qb;
	reg 	[31:0] 	register [0:31]; // r0 - r31
	integer i;
	assign qa = (rna == 0)? 0 : register[rna]; // read
	assign qb = (rnb == 0)? 0 : register[rnb]; // read
	
	initial begin
		for (i=0; i<32; i=i+1)
				register[i] <= 0;
	end
	
	always @(negedge clk or negedge clrn) begin
		if (clrn == 0) begin // reset
			for (i=1; i<32; i=i+1)
				register[i] <= 0;
		end else begin
			if ((wn != 0) && (we == 1)) // write
			register[wn] <= d;
		end
	end
endmodule

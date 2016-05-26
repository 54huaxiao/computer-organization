`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:04:44 05/07/2016 
// Design Name: 
// Module Name:    IMem 
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
	module IMem(
     IAddr,
     IDataOut,
     IDataIn,
     RW
    );
	input [31:0] IAddr,IDataIn;
	input RW;
	output [31:0] IDataOut;
	reg 	[7:0] 	ins_memory [700:0];
	reg [31:0] count;
	//assign IDataOut = (RW != 1)? {{ins_memory[IAddr+3]},{ins_memory[IAddr+2]},{ins_memory[IAddr+1]},{ins_memory[IAddr]}}: 0; // read
	assign IDataOut[7:0] = ins_memory[IAddr];
	assign IDataOut[15:8] = ins_memory[IAddr+1];
	assign IDataOut[23:16] = ins_memory[IAddr+2];
	assign IDataOut[31:24] = ins_memory[IAddr+3];	
	initial begin
		count = 0;
		// j 11100000 00000000 00000000 00000010
		// jump to address 8
		ins_memory[0] = 8'b00000010;
		ins_memory[1] = 8'b00000000;
		ins_memory[2] = 8'b00000000;
		ins_memory[3] = 8'b11100000;
		// halt, but we expect it will be ignore
		ins_memory[4] = 8'b00000010;
		ins_memory[5] = 8'b00000000;
		ins_memory[6] = 8'b00000010;
		ins_memory[7] = 8'b11111111;
		//addi 000010 00000 00001 0000000000000001
		//r1 = 1;
		//32'b00001000 00000001 00000000 00000001;
		ins_memory[8] = 8'b00000001;
		ins_memory[9] = 8'b00000000;
		ins_memory[10] = 8'b00000001;
		ins_memory[11] = 8'b00001000;
		// jal 11101000 00000000 00000000 00100000   //go to 10000000 = 2^7 = 128
		ins_memory[12] = 8'b00100000;
		ins_memory[13] = 8'b00000000;
		ins_memory[14] = 8'b00000000;
		ins_memory[15] = 8'b11101000;
		
		// and 010001 00111 00001 00010 00000000000
		// and r2 = r7 & r1     //r2 = 1
		// ins_[5] = 32'b01000100 11100001 00010000 00000000
		ins_memory[16] = 8'b00000000;
		ins_memory[17] = 8'b00010000;
		ins_memory[18] = 8'b11100001;
		ins_memory[19] = 8'b01000100;
		
		// move 100000 00111 00000 01000 00000000000
		// and r8 = r7
		// 32'b10000000 11100000 01000000 00000000
		ins_memory[20] = 8'b00000000;
		ins_memory[21] = 8'b01000000;
		ins_memory[22] = 8'b11100000;
		ins_memory[23] = 8'b10000000;
		
		// sw 110000 00000 01000 0000000000000100
		// mem[4] = r8 //r8 = 1111..11000..0011
		// 32'b11000000 00001000 00000000 00000100
		ins_memory[24] = 8'b00000100;
		ins_memory[25] = 8'b00000000;
		ins_memory[26] = 8'b00001000;
		ins_memory[27] = 8'b11000000;
		// lw 110001 00000 01001 0000000000000100
		// r9 = mem[4] //mem[4] = 1111..11000..0011
		// 32'b11000100 00001001 00000000 00000100
		ins_memory[28] = 8'b00000100;
		ins_memory[29] = 8'b00000000;
		ins_memory[30] = 8'b00001001;
		ins_memory[31] = 8'b11000100;
		
		// sub 000001 00011 00010 00011 00000000000
		// sub r3=r3-r2;  -1 = 0 - 1; 
		// 32'b00000100 01100010 00011000 00000000;
		ins_memory[32] = 8'b00000000;
		ins_memory[33] = 8'b00011000;
		ins_memory[34] = 8'b01100010;
		ins_memory[35] = 8'b00000100;
				
		// sll r2 r2 1   // r2 = r2 << 1
		// 011000 00010 00000 00010 00001 000000
		// 32'b01100000 01000000 00010000 01000000
		ins_memory[36] = 8'b01000000;
		ins_memory[37] = 8'b00010000;
		ins_memory[38] = 8'b01000000;
		ins_memory[39] = 8'b01100000;
		
		// now r1 == 1, we left shift the r2(0..0010) until greater than the r7(00.0100000000000). need 12 times
		// slt r4 r2 r7 //  if r2 < r7 then r4 = 1 else r4 = 0
		// 100111 00010 00111 00100 00000000000
		// 32'b10011100 01000111 00100000 00000000
		ins_memory[40] = 8'b00000000;
		ins_memory[41] = 8'b00100000;
		ins_memory[42] = 8'b01000111;
		ins_memory[43] = 8'b10011100;
		
		// if r1 == r4 then goto back to sll(36) instruction
		// beq 110100 00001 00100 11111111 11111101
		// 32'b11010000 00100100 11111111 11111101
		ins_memory[44] = 8'b11111101;
		ins_memory[45] = 8'b11111111;
		ins_memory[46] = 8'b00100100;
		ins_memory[47] = 8'b11010000;
		
		// add 000000 00001 00010 00100 00000000000
		// 32'b00000000 00100010 00100000 00000000
		// add r4 = r1 + r2 // 000..00100...01 = 1 + 000.00100...00
		ins_memory[48] = 8'b00000000;
		ins_memory[49] = 8'b00100000;
		ins_memory[50] = 8'b00100010;
		ins_memory[51] = 8'b00000000;
		
		// halt
		ins_memory[52] = 8'b00000000;
		ins_memory[53] = 8'b00100000;
		ins_memory[54] = 8'b01100010;
		ins_memory[55] = 8'b11111111;
		
		// function used by jal
		// ori 010010 00101 00100 0000100000000000
		// r5 = r4 | 0000100000000000  //r4 = 0, r5 = 00..0000100000000000
		// 32'b01001000 10000101 00001000 00000000
		ins_memory[128] = 8'b00000000;
		ins_memory[129] = 8'b00001000;
		ins_memory[130] = 8'b10000101;
		ins_memory[131] = 8'b01001000;
		
		// or 010000 00101 00001 00111 00000000000
		// or r7 = r5 | r1     //r5=00..0000100000000000, r1=1, r7 = 00..0000100000000001
		// 32'b01000000 10100001 00111000 00000000
		ins_memory[132] = 8'b00000000;
		ins_memory[133] = 8'b00111000;
		ins_memory[134] = 8'b10100001;
		ins_memory[135] = 8'b01000000;
		
		// jr r31 111001 11111 00000 0000000000000000
		// 32'b11100111 11100000 00000000 00000000
		ins_memory[136] = 8'b00000000;
		ins_memory[137] = 8'b00000000;
		ins_memory[138] = 8'b11100000;
		ins_memory[139] = 8'b11100111;
		
	end
	
	always@(RW or IAddr) begin
		count = count + 1;
		if ((IAddr != 0) && (RW == 1) && (IDataIn != 0)) begin// write
			ins_memory[IAddr] <= IDataIn[7:0];
			ins_memory[IAddr+1] <= IDataIn[15:8];
			ins_memory[IAddr+2] <= IDataIn[23:16];
			ins_memory[IAddr+3] <= IDataIn[31:24];
		end
	end
endmodule
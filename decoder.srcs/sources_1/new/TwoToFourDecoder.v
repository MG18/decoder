`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2023 21:42:00
// Design Name: 
// Module Name: TwoToFourDecoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TwoToFourDecoder(input [1:0] in, output [3:0] AN);

wire w0, w1, w2, w3;

nand one(AN[0], in[0], in[1]);

not a1(w0, in[0]);
nand two(AN[1], w0, in[1]);

not b1(w1, in[1]);
nand three(AN[2], in[0], w1);

not a2(w2, in[0]);
not b2(w3, in[1]);
nand four(AN[3], w2, w3);

endmodule

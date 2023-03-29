`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2023 14:32:04
// Design Name: 
// Module Name: Fullmodule
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


module Fullmodule(input [3:0] a, input [3:0] b, output [4:0] s, output [6:0] D);
wire [3:0] w0;
wire co;

FourBitAdder(a, b, w0, co);
assign s[4] = co;
decoder(w0, D); 

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 14:17:08
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(input a, input b, input cin, output s, output co);

wire xorTo, andToOr1, andToOr2;

xor a_b(xorTo, a, b);
and a_b2(andToOr1, a,b);
xor cinAB(s, xorTo, cin);
and cinAB2(andToOr2, cin, xorTo);
or cinAB3(co, andToOr2, andToOr1);

    
endmodule

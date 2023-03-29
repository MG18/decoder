`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2023 13:30:06
// Design Name: 
// Module Name: decoder
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


module decoder(input [4:0] s, output reg [6:0] d);

always @* 
begin

case(s)
            4'h0: d[6:0] = 7'b1000000;    // digit 0
            4'h1: d[6:0] = 7'b1111001;    // digit 1
            4'h2: d[6:0] = 7'b0100100;    // digit 2
            4'h3: d[6:0] = 7'b0110000;    // digit 3
            4'h4: d[6:0] = 7'b0011001;    // digit 4
            4'h5: d[6:0] = 7'b0010010;    // digit 5
            4'h6: d[6:0] = 7'b0000010;    // digit 6
            4'h7: d[6:0] = 7'b1111000;    // digit 7
            4'h8: d[6:0] = 7'b0000000;    // digit 8
            4'h9: d[6:0] = 7'b0010000;    // digit 9
            4'ha: d[6:0] = 7'b0001000;    // digit A
            4'hb: d[6:0] = 7'b0000011;    // digit B
            4'hc: d[6:0] = 7'b1000110;    // digit C
            4'hd: d[6:0] = 7'b0100001;    // digit D
            4'he: d[6:0] = 7'b0000110;    // digit E
            default: d[6:0] = 7'b0001110; // digit F
endcase
end

endmodule

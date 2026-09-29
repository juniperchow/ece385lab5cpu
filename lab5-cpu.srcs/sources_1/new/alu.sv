`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2026 11:35:22 PM
// Design Name: 
// Module Name: alu
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

// LC-3 ALU module: 
// K       Out
// 00      ADD
// 01      AND
// 10      NOT
// 11      A 

module alu(input [15:0] A_In, B_In, 
           input [1:0] K, 
           output logic [15:0] out);
    always_comb begin
        case(K)
            2'b00: out = A_In + B_In; 
            2'b01: out = A_In & B_In; 
            2'b10: out = ~A_In; 
            2'b11: out = A_In; 
        endcase 
    end 
endmodule
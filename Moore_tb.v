`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2023 01:58:39 PM
// Design Name: 
// Module Name: Moore_tb
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


module Moore_tb();
    reg P1,P2;
    reg clk;
    reg reset;
    // Outputs
    wire z;
    // Instantiate the Unit Under Test (UUT)
    Moore uut (
        .P1(P1), 
        .P2(P2),
        .clk(clk), 
        .reset(reset), 
        .z(z)
    );
    initial
        begin
            clk = 1'b0;
            reset = 1'b1;
            #10 reset = 1'b0;
        end

    always #5 clk = ~clk;  

    initial begin
        #10 P2 = 0; P1 = 1;
        #10 P1 = 1; P2 = 0;
        #10 P2 = 1; P1 = 0;
        #10 P1 = 0; P2 = 1;
        
        #10 P2 = 0; P1 = 1;
        #10 P1 = 1; P2 = 0;
        #10 P2 = 1; P1 = 0;
        #10 P1 = 0; P2 = 1;
        #10 $finish;
    end

endmodule

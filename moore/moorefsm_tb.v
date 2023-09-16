`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 14:11:50
// Design Name: 
// Module Name: moorefsm_tb
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



    
    module moorefsm_tb();
    reg in;
    reg clk;
    reg rst;
    wire out;
     moorefsm uut(
      .in(in),
      .clk(clk),
      .rst(rst),
      .out(out)
    );
    
    initial begin 
    in=0;
    clk=0;
    rst=0;
    #10;
     rst=1;
     #10;
     rst=0;
     in=0;
     #50;
     in=1;
     #20;
     in=0;
     #20;
     in=1;
     #20;
     end
     always #10 clk=~clk;
    
    
    
     
    endmodule



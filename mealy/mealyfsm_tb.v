`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 13:03:53
// Design Name: 
// Module Name: mealyfsm_tb
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


module mealyfsm_tb();
reg in;
reg clk;
reg rst;
wire out;
measly_fsm uut(
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
 #10;
 in=1;
 #10;
 in=0;
 #10;
 in=1;
 #10;
 end
 always #5 clk=~clk;



 
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 12:50:46
// Design Name: 
// Module Name: measly_fsm
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


module measly_fsm(
  input in,
  input clk,
  input rst,
  output reg out
    );
    reg[1:0] cst;
    reg[1:0] nst;
    
    parameter [1:0]s0=2'b00;
    parameter [1:0]s1=2'b01;
    parameter [1:0]s2=2'b10;
    
    always@(posedge clk)
    begin
    if(rst) begin
    out=1'b0;
    cst=s0;
    nst=s0; end
    else
      begin
      cst=nst;
      
      case(nst)
      
    s0:if(in) begin
    out=1'b0;
    nst=s1;end
    else begin
    out =1'b0;
    nst=s0;end  
    
    
     s1:if(in) begin
       out=1'b0;
       nst=s1;end
       else begin
       out =1'b0;
       nst=s2;end  
       
        s2:if(in) begin
          out=1'b1;
          nst=s1;end
          else begin
          out =1'b0;
          nst=s0;end  
          
          endcase
          end
           end
         
    
    
    
endmodule

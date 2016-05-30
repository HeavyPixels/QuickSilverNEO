`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:14:11 02/12/2015 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
    input clk100,
	 //input rst,
	 input hsync,
	 input vsync,
    input [9:0] Pixel,
    input [9:0] Line,
    output nextLine,
	 output nextFrame
    );
	
reg [9:0] Pixel_1;
reg [9:0] Line_1;

reg nextFrame = 1;
reg nextLine = 1;

//assign nextFrame = nextFrame_r | rst;
//assign nextLine = nextLine_r | rst;
	
always@(posedge clk100)
begin
	Line_1 <= Line;
	nextFrame <= (Line==481) & (Line_1==480);
	Pixel_1 <= Pixel;
	nextLine <= (Pixel==641) & (Pixel_1==640) & (Line < 480);
end

endmodule

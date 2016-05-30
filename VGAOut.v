`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:06:44 02/10/2015 
// Design Name: 
// Module Name:    VGAOut 
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
module VGAOut(
    input clk100,
    input [7:0] PxData,
    output [10:0] PxAddr,
    output reg [2:0] R,
    output reg [2:0] G,
    output reg [1:0] B,
    output reg hsync,
    output reg vsync,
    output [9:0] Pixel,
    output [9:0] Line
    );
reg [11:0] xcount = 0;
reg  [9:0] ycount = 0;

assign Pixel = xcount[11:2];
assign Line = ycount[9:0];

assign PxAddr = {ycount[0], xcount[11:2]};

//Counter
always@(posedge clk100)
begin
	if(xcount < 3199)
		xcount <= xcount + 1;	
	else
	begin
		xcount <= 0;
		if(ycount < 524)
			ycount <= ycount + 1;
		else
			ycount <= 0;
	end
end

//Decoder
always@*
begin
	if (Line==490 || Line==491)
		vsync <= 0;
	else
		vsync <= 1;
  
	if (Pixel>=656 && Pixel<=751)
		hsync <= 0;
	else
		hsync <= 1;
  
	if (Line<=479 && Pixel<=639)
	begin
		R <= PxData[7:5];
		G <= PxData[4:2];
		B <= PxData[1:0];
	end
	else
	begin
		R <= 0;
		G <= 0;
		B <= 0;		
	end
end

endmodule

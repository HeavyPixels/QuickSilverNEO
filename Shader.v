`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:15:25 02/11/2015 
// Design Name: 
// Module Name:    Shader 
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
module Shader(
    input clk100,
    output [10:0] Shader_UV_Addr,
    input [31:0] UV_Shader_Data,
    output [10:0] Shader_Px_Addr,
    output [7:0] Shader_Px_Data,
    output reg Shader_Px_we,
    input nextLine,
	 input nextFrame
    );

reg [9:0] uv_x=0;
reg [9:0] px_x=0;
reg [1:0] lineOffset=0;

wire [11:0] r; wire [11:0] g; wire [7:0] b;
wire [12:0] dr; wire [12:0] dg; wire [8:0] db;

assign Shader_UV_Addr = {lineOffset[0], uv_x};
assign Shader_Px_Addr = {lineOffset[0], px_x};

assign r = UV_Shader_Data[31:20];
assign g = UV_Shader_Data[19:8];
assign b = UV_Shader_Data[7:0]; 

wire [3:0] bayer = {px_x[0] ^ lineOffset[0], lineOffset[0], lineOffset[1] ^ px_x[1], lineOffset[1]};

assign dr = r + (bayer<<5);
assign dg = g + (bayer<<5);
assign db = b + (bayer<<2);
assign Shader_Px_Data = {dr[12]?3'h7:dr[11:9],dg[12]?3'h7:dg[11:9],db[8]?2'h3:db[7:6]};
	 
always@(posedge clk100)
begin
	if(nextFrame)
	begin
		uv_x <= 0;
		px_x <= 'h3FF;
		Shader_Px_we <= 0;
		lineOffset <= 0;
	end
	else if(nextLine)
	begin
		uv_x <= 0;
		px_x <= 'h3FF;
		Shader_Px_we <= 0;
		lineOffset <= lineOffset + 1;
	end
	else
	begin
		if(uv_x <= 640)
		begin
			uv_x <= uv_x+1;
			px_x <= px_x+1;
			Shader_Px_we <= 1;
		end
		else
		begin
			Shader_Px_we <= 0;
		end
	end
end
endmodule

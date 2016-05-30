`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:12 02/11/2015 
// Design Name: 
// Module Name:    UVBufferStub 
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
module UVBufferStub(
    input clk100,
    input [10:0] Shader_UV_Addr,
    output [31:0] UV_Shader_Data,
    input [9:0] Line
    );

reg [11:0] R;
reg [11:0] G;
reg  [7:0] B;

assign UV_Shader_Data = {R,G,B};

always@(posedge clk100)
begin
	R <= {~(Line[8:0]), 3'b00};
	G <= {Shader_UV_Addr[8:0], 3'b000};
	B <= ~(Shader_UV_Addr[8:1]);
end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:44 08/27/2015 
// Design Name: 
// Module Name:    TriangleFIFOController 
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
module TriangleFIFOController(
    input clk100,
	 input nextFrame,
    input [223:0] CalcLine_TriangleFIFO_WriteData,
    input CalcLine_TriangleFIFO_push,
    input [223:0] PreCalc_TriangleFIFO_WriteData,
    input PreCalc_TriangleFIFO_push,
    output PreCalc_TriangleFIFO_wait,
    output reg [223:0] TriangleFIFO_WriteData,
    output reg TriangleFIFO_push,
    input TriangleFIFO_full,
    input TriangleFIFO_prog_full
    );
	 
reg [223:0] Buf1;
reg         Buf1_full = 0;
reg [223:0] Buf2;
reg         Buf2_full = 0;

reg PreCalc_active;
reg CalcLine_active;

assign PreCalc_TriangleFIFO_wait = Buf1_full || Buf2_full || TriangleFIFO_prog_full;

always@(posedge clk100)
begin
	if(nextFrame)
	begin
		Buf1 <= 0;
		Buf1_full <= 0;
		Buf2 <= 0;
		Buf2_full <= 0;
		TriangleFIFO_push <= 0;
		TriangleFIFO_WriteData <= 0;
		PreCalc_active <= 0;
		CalcLine_active <= 0;
	end
	else if(CalcLine_active)
	begin
		if(CalcLine_TriangleFIFO_push)
		begin
			TriangleFIFO_push <= 1;
			TriangleFIFO_WriteData <= CalcLine_TriangleFIFO_WriteData;
			CalcLine_active <= 0;
		end
		else
		begin
			TriangleFIFO_push <= 0;
			TriangleFIFO_WriteData <= 0;
		end			
		if(PreCalc_TriangleFIFO_push && !Buf1_full)
		begin
			Buf1 <= PreCalc_TriangleFIFO_WriteData;
			Buf1_full <= 1;
		end
		else if(PreCalc_TriangleFIFO_push && !Buf2_full)
		begin
			Buf2 <= PreCalc_TriangleFIFO_WriteData;
			Buf2_full <= 1;
		end
	end
	else if(PreCalc_active)
	begin
		if(PreCalc_TriangleFIFO_push)
		begin
			TriangleFIFO_push <= 1;
			TriangleFIFO_WriteData <= PreCalc_TriangleFIFO_WriteData;
			PreCalc_active <= 0;
		end
		else
		begin
			TriangleFIFO_push <= 0;
			TriangleFIFO_WriteData <= 0;
		end	
		if(CalcLine_TriangleFIFO_push && !Buf1_full)
		begin
			Buf1 <= CalcLine_TriangleFIFO_WriteData;
			Buf1_full <= 1;
		end
		else if(CalcLine_TriangleFIFO_push && !Buf2_full)
		begin
			Buf2 <= CalcLine_TriangleFIFO_WriteData;
			Buf2_full <= 1;
		end
	end
	else if(Buf1_full)
	begin
		TriangleFIFO_push <= 1;
		TriangleFIFO_WriteData <= Buf1;
		if(CalcLine_TriangleFIFO_push && !Buf2_full)
		begin
			Buf1 <= CalcLine_TriangleFIFO_WriteData;
			Buf1_full <= 1;
		end
		else if(CalcLine_TriangleFIFO_push && Buf2_full)
		begin
			Buf1 <= Buf2;
			Buf1_full <= 1;
			Buf2 <= CalcLine_TriangleFIFO_WriteData;
			Buf2_full <= 1;
		end
		else if(PreCalc_TriangleFIFO_push && !Buf2_full)
		begin
			Buf1 <= PreCalc_TriangleFIFO_WriteData;
			Buf1_full <= 1;
		end
		else if(PreCalc_TriangleFIFO_push && Buf2_full)
		begin
			Buf1 <= Buf2;
			Buf1_full <= 1;
			Buf2 <= PreCalc_TriangleFIFO_WriteData;
			Buf2_full <= 1;
		end
		else
		begin
			Buf1 <= Buf2;
			Buf1_full <= Buf2_full;
			Buf2 <= 0;
			Buf2_full <= 0;
		end
	end
	else if(CalcLine_TriangleFIFO_push)
	begin
		TriangleFIFO_push <= 1;
		TriangleFIFO_WriteData <= CalcLine_TriangleFIFO_WriteData;
		if(PreCalc_TriangleFIFO_push && !Buf1_full)
		begin
			Buf1 <= PreCalc_TriangleFIFO_WriteData;
			Buf1_full <= 1;
		end
		else if(PreCalc_TriangleFIFO_push && !Buf2_full)
		begin
			Buf2 <= PreCalc_TriangleFIFO_WriteData;
			Buf2_full <= 1;
		end
		CalcLine_active <= 1;
	end
	else if(PreCalc_TriangleFIFO_push)
	begin
		TriangleFIFO_push <= 1;
		TriangleFIFO_WriteData <= PreCalc_TriangleFIFO_WriteData;
		PreCalc_active <= 1;
	end
	else
	begin
		TriangleFIFO_push <= 0;
		TriangleFIFO_WriteData <= 0;
	end
end


endmodule

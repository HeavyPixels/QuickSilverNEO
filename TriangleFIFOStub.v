`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:59:04 02/20/2015 
// Design Name: 
// Module Name:    TriangleFIFOStub 
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
module TriangleFIFOStub(
    input clk100,
    output [223:0] CalcLine_TriangleFIFO_ReadData,
    input CalcLine_TriangleFIFO_pop,
    output CalcLine_TriangleFIFO_empty,
    input [223:0] CalcLine_TriangleFIFO_WriteData,
    input CalcLine_TriangleFIFO_push,
	 input nextFrame
    );

//assign {X1_in, X2_in, Xmid_in, Mlong_in, Mtop_in, Mbottom_in,
//        Ycurr_in, Ymid_in, Yend_in, Z1_in, MZ_in, NZ_in} = CalcLine_TriangleFIFO_ReadData[222:0];
//assign {R1_in, MR_in, NR_in, G1_in, MG_in, NG_in,
//        B1_in, MB_in, NB_in} = CalcLine_TriangleFIFO_ReadData[191:0];
//                    {      X1_in,     X2_in,     Xmid_in, Mlong_in,   Mtop_in,    Mbottom_in, Ycurr_in,Ymid_in, Yend_in, Z1_in,  MZ_in, NZ_in}
reg [223:0] TriBuf1 = {1'h0, 20'h4B000, 20'h4B000, 10'h258, 21'h1FFDF3, 21'h000423, 21'h1FEC00, 10'h00A, 10'h12C, 10'h190, 26'h10, 27'h0, 27'h0};
//                    {       R1_in,      MR_in, NR_in, G1_in, MG_in, NG_in, B1_in, MB_in, NB_in}
reg [223:0] TriBuf2 = {32'h0, 22'h3FF000, 23'h0, 23'h0, 22'h0, 23'h0, 23'h0, 18'h0, 19'h0, 19'h0};
//reg [414:0] TriBuf = {20'h4B000, 20'h4B000, 10'h258, 21'h1FFDF3, 21'h000423, 21'h1FEC00, 10'h00A, 10'h12C, 10'h190, 26'h10, 27'h0, 27'h0, 22'h3FF000, 23'h0, 23'h0, 22'h0, 23'h0, 23'h0, 18'h0, 19'h0, 19'h0};
reg empty1 = 0;
reg empty2 = 0;

assign CalcLine_TriangleFIFO_ReadData = TriBuf1;
assign CalcLine_TriangleFIFO_empty = empty1;

always@(posedge clk100)
begin
	if(nextFrame)
	begin
		TriBuf1 <= {1'h0, 20'h4B000, 20'h4B000, 10'h258, 21'h1FFDF3, 21'h000423, 21'h1FEC00, 10'h00A, 10'h12C, 10'h190, 26'h10, 27'h0, 27'h0};
		TriBuf2 <= {32'h0, 22'h3FF000, 23'h0, 23'h0, 22'h0, 23'h0, 23'h0, 18'h0, 19'h0, 19'h0};
		//TriBuf <= {20'h4B000, 20'h4B000, 10'h258, 21'h1FFDF3, 21'h000423, 21'h1FEC00, 10'h00A, 10'h12C, 10'h190, 26'h10, 27'h0, 27'h0, 22'h3FF000, 23'h0, 23'h0, 22'h0, 23'h0, 23'h0, 18'h0, 19'h0, 19'h0};
		empty1 <= 0;
		//empty2 <= 0;
	end
	else if(CalcLine_TriangleFIFO_pop)
	begin
		//CalcLine_TriangleFIFO_ReadData <= TriBuf1;
		TriBuf1 <= TriBuf2;
		TriBuf2 <= 0;
		empty1 <= empty2;
		empty2 <= 1;
	end
	else if(CalcLine_TriangleFIFO_push)
	begin
		TriBuf1 <= TriBuf2;
		TriBuf2 <= CalcLine_TriangleFIFO_WriteData;
		empty1 <= empty2;
		empty2 <= 0;
	end
end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:39 08/27/2015 
// Design Name: 
// Module Name:    TestTriangle 
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

module TestTriangle#(parameter SIZE=8'd108)(
    input clk100,
    input nextFrame,
    output reg [7:0] index,
    input VertexBuffer_PreCalc_pop,
    output reg VertexBuffer_PreCalc_empty,
	 output [7:0] count,
	 input [7:0] sin,
	 input [223:0] testdata,
	 output [223:0] VertexBuffer_PreCalc_ReadData
    );
	 
reg [7:0] count = 0;
reg [1:0] multsel = 0;
reg signed [19:0] mult;
reg signed [7:0] sinbuf;
reg signed [11:0] x1;
reg signed [11:0] x2;
reg signed [11:0] x3;
reg [11:0] x1_o;
reg [11:0] x2_o;
reg [11:0] x3_o;
assign VertexBuffer_PreCalc_ReadData = {8'h00, x1_o, x2_o, x3_o, testdata[179:0]};

always@(posedge clk100)
begin
	multsel <= multsel + 1;
	sinbuf <= sin;
	x1 <= testdata[215:204] - 1280;
   x2 <= testdata[203:192] - 1280;
   x3 <= testdata[191:180] - 1280;
	case(multsel)
		0: begin
			mult = x1 * sinbuf;
			x1_o <= mult[18:7] + 1280;
		end
		1: begin
			mult = x2 * sinbuf;
			x2_o <= mult[18:7] + 1280;
		end
		2: begin
			mult = x3 * sinbuf;
			x3_o <= mult[18:7] + 1280;
		end
	endcase
end
		

always@(posedge clk100)
begin
	if(nextFrame)
	begin
		count <= count + 1;
		index <= 0;
		VertexBuffer_PreCalc_empty <= 0;
	end
	else
	begin
		if(VertexBuffer_PreCalc_pop)
		begin
			if(index < SIZE) index <= index + 1;
		end
		VertexBuffer_PreCalc_empty <= (index == SIZE);
	end
end

endmodule

/*
module TestTriangle(
    input clk100,
    input nextFrame,
    output reg [223:0] PreCalc_TriangleFIFO_WriteData,
    output reg PreCalc_TriangleFIFO_push,
    input PreCalc_TriangleFIFO_wait
    );
	 
parameter RESET=2'd0, PUSH1=2'd1, PUSH2=2'd2, DONE=2'd3;
reg [1:0] State=0;
reg [1:0] Next;

always@(posedge clk100)
begin
	State <= Next;
end

//Next State decoder
always@*
begin
	if(nextFrame)
		Next = RESET;
	else
	case(State)
		RESET:
		begin
			if(PreCalc_TriangleFIFO_wait)
				Next = RESET;
			else
				Next = PUSH1;
		end
		PUSH1:
			Next = PUSH2;
		PUSH2:
			Next = DONE;
		DONE:
			Next = DONE;
		default:
			Next = DONE;
	endcase
end

//Registered Output decoder
always@(posedge clk100)
begin
	if(nextFrame)
	begin
		 PreCalc_TriangleFIFO_push <= 0;
		 PreCalc_TriangleFIFO_WriteData <= 0;
	end
	else
	case(Next)
		PUSH1:
		begin
			PreCalc_TriangleFIFO_push <= 1;
			PreCalc_TriangleFIFO_WriteData <= {1'h0, 20'h4B000, 20'h4B000, 10'h258, 21'h1FFDF3, 21'h000423, 21'h1FEC00, 10'h00A, 10'h12C, 10'h190, 26'h10, 27'h0, 27'h0};
		end
		PUSH2:
		begin
			PreCalc_TriangleFIFO_push <= 1;
			PreCalc_TriangleFIFO_WriteData <= {32'h0, 22'h3FF000, 23'h0, 23'h0, 22'h0, 23'h0, 23'h0, 18'h0, 19'h0, 19'h0};
		end
		default:
		begin
			PreCalc_TriangleFIFO_push <= 0;
		   PreCalc_TriangleFIFO_WriteData <= 0;
		end
	endcase
end

endmodule
*/
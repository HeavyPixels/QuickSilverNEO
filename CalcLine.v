`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:11 02/19/2015 
// Design Name: 
// Module Name:    CalcLine 
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
module CalcLine(
    input clk100,
    input [223:0] CalcLine_TriangleFIFO_ReadData,
    output reg CalcLine_TriangleFIFO_pop,
	 input  CalcLine_TriangleFIFO_empty,
    output reg [223:0] CalcLine_TriangleFIFO_WriteData,
    output reg CalcLine_TriangleFIFO_push,
    output [9:0] X1,
    output [9:0] X2,
    output [25:0] Z1,
    output [26:0] NZ,
    output [21:0] R1,
    output [22:0] NR,
    output [21:0] G1,
    output [22:0] NG,
    output [17:0] B1,
    output [18:0] NB,
    output reg lineStart,
    input lineDone,
	 input nextFrame,
    input nextLine
    );
	 
parameter WAIT=3'd0, POP1=3'd1, POP2=3'd2, DECIDE=3'd3, NOPUSH=3'd4, PUSH1=3'd5, PUSH2=3'd6;
reg [2:0] State=0;
reg line_active;

reg [19:0] X1_r;     
reg [19:0] X2_r;     
reg  [9:0] Xmid_r;   
reg [20:0] Mlong_r;  
reg [20:0] Mtop_r;   
reg [20:0] Mbottom_r;
reg  [9:0] Ycurr_r;  
reg  [9:0] Ymid_r;   
reg  [9:0] Yend_r;   
reg [25:0] Z1_r;     
reg [26:0] MZ_r;     
reg [26:0] NZ_r;     
reg [21:0] R1_r;     
reg [22:0] MR_r;     
reg [22:0] NR_r;     
reg [21:0] G1_r;     
reg [22:0] MG_r;     
reg [22:0] NG_r;     
reg [17:0] B1_r;     
reg [18:0] MB_r;     
reg [18:0] NB_r;     

reg  [9:0] Ycounter;

reg [19:0] X1_out;
reg [19:0] X2_out;
reg  [9:0] Ycurr_out;  
reg [25:0] Z1_out;    
reg [21:0] R1_out;     
reg [21:0] G1_out;    
reg [17:0] B1_out;   
reg [26:0] Z1_sum;    
reg [22:0] R1_sum;     
reg [22:0] G1_sum;    
reg [18:0] B1_sum;   

assign X1 = X1_r[19:10];
assign X2 = X2_r[19:10];
assign Z1 = Z1_r;
assign NZ = NZ_r;
assign R1 = R1_r;
assign NR = NR_r;
assign G1 = G1_r;
assign NG = NG_r;
assign B1 = B1_r;
assign NB = NB_r;

always@(posedge clk100)
begin
	X1_out <= X1_r + Mlong_r;
	X2_out <= (Ycurr_out < Ymid_r) ? X2_r + Mtop_r
	        : (Ycurr_out == Ymid_r) ? {Xmid_r, 10'h0}
			  : X2_r + Mbottom_r;
	Ycurr_out <= Ycurr_r + 1;
	Z1_sum = Z1_r + MZ_r;
	Z1_out <= Z1_sum[26]?{26{~MZ_r[26]}}:Z1_sum[25:0];
	R1_sum = R1_r + MR_r;
	R1_out <= R1_sum[22]?{22{~MR_r[22]}}:R1_sum[21:0];
	G1_sum = G1_r + MG_r;
	G1_out <= G1_sum[22]?{22{~MG_r[22]}}:G1_sum[21:0];
	B1_sum = B1_r + MB_r;
	B1_out <= B1_sum[18]?{18{~MB_r[18]}}:B1_sum[17:0];
end

//Decoding
//assign {X1_in, X2_in, Xmid_in, Mlong_in, Mtop_in, Mbottom_in,
//        Ycurr_in, Ymid_in, Yend_in, Z1_in, MZ_in, NZ_in} = CalcLine_TriangleFIFO_ReadData[222:0];
//assign {R1_in, MR_in, NR_in, G1_in, MG_in, NG_in,
//        B1_in, MB_in, NB_in} = CalcLine_TriangleFIFO_ReadData[191:0];

//reg [414:0] TriBuf;// = {20'h4B000, 20'h4B000, 10'h258, 21'h1FFDF3, 21'h000423, 21'h1FEC00, 10'h00A, 10'h12C, 10'h190, 26'h10, 27'h0, 27'h0, 22'h3FF000, 23'h0, 23'h0, 22'h0, 23'h0, 23'h0, 18'h0, 19'h0, 19'h0};
//reg [414:0] BufData;


//Next State decoder
always@(posedge clk100)
begin
	if(nextFrame)
	begin
		State <= WAIT;
		Ycounter <= 0;
	end
	else
	begin
		if(nextLine)
			Ycounter <= Ycounter + 1;
		case(State)
			WAIT:
			begin
				if(lineDone && !CalcLine_TriangleFIFO_empty)
					State <= POP1;
				else
					State <= WAIT;
			end
			POP1:
			begin
				{X1_r, X2_r, Xmid_r, Mlong_r, Mtop_r, Mbottom_r,
				Ycurr_r, Ymid_r, Yend_r, Z1_r, MZ_r, NZ_r} <= CalcLine_TriangleFIFO_ReadData[222:0];
				State <= POP2;
			end
			POP2:
			begin
				{R1_r, MR_r, NR_r, G1_r, MG_r, NG_r,
				B1_r, MB_r, NB_r} <= CalcLine_TriangleFIFO_ReadData[191:0];
				State <= DECIDE;
			end
			DECIDE:
			begin
				line_active <= (Ycurr_r <= Ycounter) && (Ycurr_r < Yend_r);
				
				if(Ycurr_r >= Yend_r)
					State <= NOPUSH;
				else
					State <= PUSH1;
			end
			NOPUSH:
			begin
				State <= WAIT;
			end
			PUSH1:
			begin
				State <= PUSH2;
			end
			PUSH2:
			begin
				/*if(lineDone && !CalcLine_TriangleFIFO_empty)
					Next = POP1;
				else*/
				State <= WAIT;
			end
			default:
				State <= WAIT;
		endcase
	end
end


//Output decoder
always@*
begin
	if(nextFrame)
	begin
		CalcLine_TriangleFIFO_pop <= 0;
		CalcLine_TriangleFIFO_push <= 0;
		CalcLine_TriangleFIFO_WriteData <= 0;
		lineStart <= 0;
	end
	else
	begin
		CalcLine_TriangleFIFO_pop <= 0;
		CalcLine_TriangleFIFO_push <= 0;
		CalcLine_TriangleFIFO_WriteData <= 0;
		lineStart <= 0;
		case(State)
			POP1: 
			begin
				CalcLine_TriangleFIFO_pop <= 1;
			end
			POP2:
			begin
				CalcLine_TriangleFIFO_pop <= 1;
			end
			NOPUSH:
			begin		
				lineStart <= line_active && (X1_r != X2_r);
			end
			PUSH1:
			begin
				CalcLine_TriangleFIFO_push <= 1;
				lineStart <= line_active && (X1_r != X2_r);
				if(line_active)
				begin
					CalcLine_TriangleFIFO_WriteData <= {X1_out, X2_out, Xmid_r, Mlong_r, Mtop_r, Mbottom_r,
																Ycurr_out, Ymid_r, Yend_r, Z1_out, MZ_r, NZ_r};
				end
				else
				begin
					CalcLine_TriangleFIFO_WriteData <= {X1_r, X2_r, Xmid_r, Mlong_r, Mtop_r, Mbottom_r,
																Ycurr_r, Ymid_r, Yend_r, Z1_r, MZ_r, NZ_r};
				end				
			end
			PUSH2:
			begin
				CalcLine_TriangleFIFO_push <= 1;
				if(line_active)
				begin
					CalcLine_TriangleFIFO_WriteData <= {R1_out, MR_r, NR_r, G1_out, MG_r, NG_r,
																	B1_out, MB_r, NB_r};
				end
				else
				begin
					CalcLine_TriangleFIFO_WriteData <= {R1_r, MR_r, NR_r, G1_r, MG_r, NG_r,
																	B1_r, MB_r, NB_r};
				end
			end
		endcase
	end
end	

endmodule

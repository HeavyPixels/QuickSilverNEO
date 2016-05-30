`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:14:08 02/12/2015 
// Design Name: 
// Module Name:    DrawLine 
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
module DrawLine(
    input clk100,
    input [9:0] X1,  //unsigned
    input [9:0] X2,  //unsigned
    input [25:0] Z1, //unsigned
    input signed [26:0] NZ, //  signed
    input [21:0] R1, //unsigned
    input signed [22:0] NR, //  signed
    input [21:0] G1, //unsigned
    input signed [22:0] NG, //  signed
    input [17:0] B1, //unsigned
    input signed [18:0] NB, //  signed
    input lineStart,
    output lineDone,
    output [10:0] DrawLine_UV_Addr,
    output reg [31:0] DrawLine_UV_Data,
    output reg DrawLine_UV_we,
    output [9:0] DrawLine_Z_ReadAddr,
    input [16:0] DrawLine_Z_ReadData,
    output [9:0] DrawLine_Z_WriteAddr,
    output reg [16:0] DrawLine_Z_WriteData,
    output reg DrawLine_Z_we,
	 input nextLine,
	 input nextFrame
    );

reg  [9:0] Xdraw;
reg  [9:0] Xbuf;
reg  [9:0] Xzbuf;
reg  [9:0] Xend;
reg [25:0] Z_r;
reg [26:0] NZ_r;
reg [21:0] R_r;
reg [22:0] NR_r;
reg [21:0] G_r;
reg [22:0] NG_r;
reg [17:0] B_r;
reg [18:0] NB_r;
reg        busyZbuf = 0;
reg        busyBuf = 0;
reg        busyDraw = 0;
reg        linePolarity = 1;
reg        dir;

// Temp variables
reg [26:0] Z;
reg [22:0] R;
reg [22:0] G;
reg [18:0] B;

assign DrawLine_Z_ReadAddr = Xzbuf;
assign DrawLine_Z_WriteAddr = Xdraw;
assign DrawLine_UV_Addr = {linePolarity, Xdraw};
assign lineDone = ~busyZbuf;

always@(posedge clk100)
begin
	if(nextFrame)
	begin
		linePolarity <= 1;
	end
	else if(nextLine)
	begin
		linePolarity <= ~linePolarity;
	end
		
	if(busyZbuf)
	begin
		if(dir)
		begin
			Xzbuf <= Xzbuf + 1;
			if(Xzbuf + 1 >= Xend)
			begin
				busyZbuf <= 0;
			end
		end
		else
		begin
			Xzbuf <= Xzbuf - 1;
			if(Xzbuf - 1 <= Xend)
			begin
				busyZbuf <= 0;
			end
		end
	end
	else if(lineStart)
	begin
		if(X1<X2)
		begin
			Xzbuf <= X1;
			Xend <= X2;
			Z_r <= Z1;
			NZ_r <= NZ;
			R_r <= R1;
			NR_r <= NR;
			G_r <= G1;
			NG_r <= NG;
			B_r <= B1;
			NB_r <= NB;
			busyZbuf <= 1;
			dir = 1;
		end
		else		
		begin
			Xzbuf <= X1;
			Xend <= X2;
			Z_r <= Z1;
			NZ_r <= -NZ;
			R_r <= R1;
			NR_r <= -NR;
			G_r <= G1;
			NG_r <= -NG;
			B_r <= B1;
			NB_r <= -NB;
			busyZbuf <= 1;
			dir = 0;
		end
	end
	
	busyBuf <= busyZbuf;
	busyDraw <= busyBuf;
	Xbuf <= Xzbuf;
	Xdraw <= Xbuf;
	
	if(busyDraw)
	begin
		if((DrawLine_Z_ReadData[16] != linePolarity) || (DrawLine_Z_ReadData[15:0] > Z_r))
		begin
			DrawLine_UV_we <= 1;
			DrawLine_Z_we <= 1;
		end
		else
		begin
			DrawLine_UV_we <= 0;
			DrawLine_Z_we <= 0;
		end
		DrawLine_UV_Data <= { R_r[21:10], G_r[21:10], B_r[17:10]};
		DrawLine_Z_WriteData <= {linePolarity, Z_r[25:10]};
		
		Z = Z_r + NZ_r;
		Z_r <= Z[26]?{26{~NZ_r[26]}}:Z[25:0];
		R = R_r + NR_r;
		R_r <= R[22]?{22{~NR_r[22]}}:R[21:0];
		G = G_r + NG_r;
		G_r <= G[22]?{22{~NG_r[22]}}:G[21:0];
		B = B_r + NB_r;
		B_r <= B[18]?{18{~NB_r[18]}}:B[17:0];
	end
	else
	begin
		DrawLine_UV_we <= 0;
		DrawLine_Z_we <= 0;
	end
end

endmodule

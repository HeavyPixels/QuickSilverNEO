`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:53 02/10/2015 
// Design Name:    QuickSilverNEO
// Module Name:    QuickSilverNEO 
// Project Name:   QuickSilverNEO
// Target Devices: Nexys2-1200
// Tool versions: 
// Description:    Top level for QuickSilver NEO.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module QuickSilverNEO(
   input clk,
   /*output MemOE,
   output MemWR,
   output RamAdv,
   output RamCS,
   output RamClk,
   output RamCRE,
   output RamLB,
   output RamUB,
   input RamWait,
   output FlashRp,
   output FlashCS,*/
   output [23:1] MemAdr,
   inout [15:0] MemDB,
   output [2:0] vgaRed,
   output [2:0] vgaGreen,
   output [1:0] vgaBlue,
   output Hsync,
   output Vsync
   );
	
	wire clk50;
	wire clk75;
	wire clk100;
	wire clkLock;
	
	wire        nextLine;
	wire        nextFrame;
	/*
	wire [31:0] BucketWriteFIFO_WriteData;
	wire BucketWriteFIFO_push;
	wire BucketWriteFIFO_full;
	wire [31:0] BucketWriteFIFO_ReadData;
	wire BucketWriteFIFO_pop;
	wire BucketWriteFIFO_empty;

	wire [31:0] BucketReadReq_WriteData;
	wire BucketReadReq_push;
	wire BucketReadReq_full;
	wire [31:0] BucketReadReq_ReadData;
	wire BucketReadReq_pop;
	wire BucketReadReq_empty;
	
	wire [31:0] BucketReadFIFO_WriteData;
	wire BucketReadFIFO_push;
	wire BucketReadFIFO_full;
	wire [31:0] BucketReadFIFO_ReadData;
	wire BucketReadFIFO_pop;
	wire BucketReadFIFO_empty;

	wire [31:0] TextureWriteFIFO_WriteData;
	wire TextureWriteFIFO_push;
	wire TextureWriteFIFO_full;
	wire [31:0] TextureWriteFIFO_ReadData;
	wire TextureWriteFIFO_pop;
	wire TextureWriteFIFO_empty;

	wire [31:0] TextureReadReq_WriteData;
	wire TextureReadReq_push;
	wire TextureReadReq_full;
	wire [31:0] TextureReadReq_ReadData;
	wire TextureReadReq_pop;
	wire TextureReadReq_empty;

	wire [31:0] TextureReadFIFO_WriteData;
	wire TextureReadFIFO_push;
	wire TextureReadFIFO_full;
	wire [31:0] TextureReadFIFO_ReadData;
	wire TextureReadFIFO_pop;
	wire TextureReadFIFO_empty;
	*/
	wire [223:0] VertexBuffer_PreCalc_ReadData;
	wire         VertexBuffer_PreCalc_pop;
	wire         VertexBuffer_PreCalc_empty;
	
	wire [223:0] PreCalc_TriangleFIFO_WriteData;
	wire         PreCalc_TriangleFIFO_push;
	wire         PreCalc_TriangleFIFO_wait;
	
	wire [223:0] TriangleFIFO_WriteData;
	wire         TriangleFIFO_push;	
	wire         TriangleFIFO_full;
	wire         TriangleFIFO_prog_full;
	
	wire [223:0] CalcLine_TriangleFIFO_ReadData;
	wire         CalcLine_TriangleFIFO_pop;
	wire         CalcLine_TriangleFIFO_empty;
	wire [223:0] CalcLine_TriangleFIFO_WriteData;
	wire         CalcLine_TriangleFIFO_push;
	wire  [9:0] X1;
	wire  [9:0] X2;
	wire [25:0] Z1;
	wire [26:0] NZ;
	wire [21:0] R1;
	wire [22:0] NR;
	wire [21:0] G1;
	wire [22:0] NG;
	wire [17:0] B1;
	wire [18:0] NB;
	
	wire        lineStart;
	wire        lineDone;
	wire [10:0] DrawLine_UV_Addr;
	wire [31:0] DrawLine_UV_Data;
	wire        DrawLine_UV_we;
	wire  [9:0] DrawLine_Z_ReadAddr;
	wire [16:0] DrawLine_Z_ReadData;
	wire  [9:0] DrawLine_Z_WriteAddr;
	wire [16:0] DrawLine_Z_WriteData;
	wire        DrawLine_Z_we;
	
	wire [10:0] Shader_UV_Addr;
	wire [31:0] UV_Shader_Data;
	wire [10:0] Shader_Px_Addr;
	wire  [7:0] Shader_Px_Data;
	wire        Shader_Px_we;
	
	wire [10:0] VGA_Px_Addr;
	wire  [7:0] Px_VGA_Data;
	wire  [9:0] Pixel;
	wire  [9:0] Line;
	
	//Clock Manager
	ClockManager clockmanager (
		.CLKIN_IN(clk),
		//.CLKIN_IBUFG_OUT(CLKIN_IBUFG_OUT), 
		.CLK0_OUT(clk50), 
		.CLKFX_OUT(clk75), 
		.CLK2X_OUT(clk100), 
		.LOCKED_OUT(clkLock)
   );

	//Controller -*
	Controller controller (
		.clk100(clk100), 
		//.rst(~clkLock),
		.hsync(Hsync), 
		.vsync(Vsync), 
		.Pixel(Pixel), 
		.Line(Line), 
		.nextLine(nextLine), 
		.nextFrame(nextFrame)
   );
	
	//USB Interface ->
	
	//Command Processing ->
	
	//Data Cache ->
	/*
	//Memory Controller
	MemController memcontroller (
    .clk75(clk75), 
    .rst(rst), 
    .BucketWriteFIFO_ReadData(BucketWriteFIFO_ReadData), 
    .BucketWriteFIFO_pop(BucketWriteFIFO_pop), 
    .BucketWriteFIFO_empty(BucketWriteFIFO_empty), 
    .BucketReadReq_ReadData(BucketReadReq_ReadData), 
    .BucketReadReq_pop(BucketReadReq_pop), 
    .BucketReadReq_empty(BucketReadReq_empty), 
    .BucketReadFIFO_WriteData(BucketReadFIFO_WriteData), 
    .BucketReadFIFO_push(BucketReadFIFO_push), 
    .BucketReadFIFO_full(BucketReadFIFO_full), 
    .TextureWriteFIFO_ReadData(TextureWriteFIFO_ReadData), 
    .TextureWriteFIFO_pop(TextureWriteFIFO_pop), 
    .TextureWriteFIFO_empty(TextureWriteFIFO_empty), 
    .TextureReadReq_ReadData(TextureReadReq_ReadData), 
    .TextureReadReq_pop(TextureReadReq_pop), 
    .TextureReadReq_empty(TextureReadReq_empty), 
    .TextureReadFIFO_WriteData(TextureReadFIFO_WriteData), 
    .TextureReadFIFO_push(TextureReadFIFO_push), 
    .TextureReadFIFO_full(TextureReadFIFO_full), 
    .MemOE_n(MemOE_n), 
    .MemWR_n(MemWR_n), 
    .RamAdv_n(RamAdv_n), 
    .RamCS_n(RamCS_n), 
    .RamClk(RamClk), 
    .RamCRE(RamCRE), 
    .RamLB_n(RamLB_n), 
    .RamUB_n(RamUB_n), 
    .RamWait(RamWait), 
    .FlashRp_n(FlashRp_n), 
    .FlashCS_n(FlashCS_n), 
    .MemAdr(MemAdr), 
    .MemDB(MemDB)
    );
	*/
	wire [7:0] index;
	wire [223:0] testdata;
	wire [7:0] sindex;
	wire [7:0] sin;
	
	TestMesh testmesh (
	.clka(clk100), // input clka
	.addra(index), // input [7 : 0] addra
	.douta(testdata) // output [223 : 0] douta
	);
	
	SLUT slut (
    .a(sindex), // input [7 : 0] a
    .spo(sin) // output [7 : 0] spo
   );

	//-> Triangle Cache ->
	TestTriangle testtriangle (
    .clk100(clk100), 
    .nextFrame(nextFrame), 
    .index(index), 
    .VertexBuffer_PreCalc_pop(VertexBuffer_PreCalc_pop), 
    .VertexBuffer_PreCalc_empty(VertexBuffer_PreCalc_empty),
	 .count(sindex),
	 .sin(sin),
	 .testdata(testdata),
	 .VertexBuffer_PreCalc_ReadData(VertexBuffer_PreCalc_ReadData)
    );
	 
	/*FIFO_512x32b bucketreadfifo (
	 .rst(~clkLock), // input rst
    .wr_clk(clk75), // input wr_clk
    .rd_clk(clk100), // input rd_clk
    .din(BucketReadFIFO_WriteData), // input [31 : 0] din
    .wr_en(BucketReadFIFO_push), // input wr_en
    .rd_en(BucketReadFIFO_pop), // input rd_en
    .dout(BucketReadFIFO_ReadData), // output [31 : 0] dout
    .full(BucketReadFIFO_full), // output full
    .empty(BucketReadFIFO_empty) // output empty
    );*/
	
	
	//PreCalc ->
	PreCalc precalc (
    .clk100(clk100), 
    .nextFrame(nextFrame), 
    .VertexBuffer_PreCalc_ReadData(VertexBuffer_PreCalc_ReadData), 
    .VertexBuffer_PreCalc_pop(VertexBuffer_PreCalc_pop), 
    .VertexBuffer_PreCalc_empty(VertexBuffer_PreCalc_empty), 
    .PreCalc_TriangleFIFO_WriteData(PreCalc_TriangleFIFO_WriteData), 
    .PreCalc_TriangleFIFO_push(PreCalc_TriangleFIFO_push), 
    .PreCalc_TriangleFIFO_wait(PreCalc_TriangleFIFO_wait)
    );
	
	//Triangle FIFO ->
	TriangleFIFOController trianglefifocontroller (
    .clk100(clk100), 
    .nextFrame(nextFrame), 
    .CalcLine_TriangleFIFO_WriteData(CalcLine_TriangleFIFO_WriteData), 
    .CalcLine_TriangleFIFO_push(CalcLine_TriangleFIFO_push), 
    .PreCalc_TriangleFIFO_WriteData(PreCalc_TriangleFIFO_WriteData), 
    .PreCalc_TriangleFIFO_push(PreCalc_TriangleFIFO_push), 
    .PreCalc_TriangleFIFO_wait(PreCalc_TriangleFIFO_wait), 
    .TriangleFIFO_WriteData(TriangleFIFO_WriteData), 
    .TriangleFIFO_push(TriangleFIFO_push), 
    .TriangleFIFO_full(TriangleFIFO_full), 
    .TriangleFIFO_prog_full(TriangleFIFO_prog_full)
    );
	 
	TriangleFIFO trianglefifo (
		.clk(clk100), // input clk
		.rst(nextFrame), // input rst
		.din(TriangleFIFO_WriteData), // input [223 : 0] din
		.wr_en(TriangleFIFO_push), // input wr_en
		.rd_en(CalcLine_TriangleFIFO_pop), // input rd_en
		.dout(CalcLine_TriangleFIFO_ReadData), // output [223 : 0] dout
		.full(TriangleFIFO_full), // output full
		.empty(CalcLine_TriangleFIFO_empty), // output empty
		.prog_full(TriangleFIFO_prog_full) // output prog_full
	);

	/*TriangleFIFOStub trianglefifostub (
		.clk100(clk100), 
		.CalcLine_TriangleFIFO_ReadData(CalcLine_TriangleFIFO_ReadData), 
		.CalcLine_TriangleFIFO_pop(CalcLine_TriangleFIFO_pop), 
		.CalcLine_TriangleFIFO_empty(CalcLine_TriangleFIFO_empty), 
		.CalcLine_TriangleFIFO_WriteData(CalcLine_TriangleFIFO_WriteData), 
		.CalcLine_TriangleFIFO_push(CalcLine_TriangleFIFO_push), 
		.nextFrame(nextFrame)
   );*/
	
	//<- CalcLine ->
	CalcLine calcline (
    .clk100(clk100), 
    .CalcLine_TriangleFIFO_ReadData(CalcLine_TriangleFIFO_ReadData), 
    .CalcLine_TriangleFIFO_pop(CalcLine_TriangleFIFO_pop), 
    .CalcLine_TriangleFIFO_empty(CalcLine_TriangleFIFO_empty), 
    .CalcLine_TriangleFIFO_WriteData(CalcLine_TriangleFIFO_WriteData), 
    .CalcLine_TriangleFIFO_push(CalcLine_TriangleFIFO_push), 
    .X1(X1), 
    .X2(X2), 
    .Z1(Z1), 
    .NZ(NZ), 
    .R1(R1), 
    .NR(NR), 
    .G1(G1), 
    .NG(NG), 
    .B1(B1), 
    .NB(NB), 
    .lineStart(lineStart), 
    .lineDone(lineDone), 
	 .nextFrame(nextFrame),
    .nextLine(nextLine)
    );
	
	//DrawLine ->
	/*always@ (posedge clk100)
	begin
		lineStart <= lineDone;
	end*/
	
	DrawLine drawline (
		.clk100(clk100), 
		.X1(X1), 
		.X2(X2), 
		.Z1(Z1), 
		.NZ(NZ), 
		.R1(R1), 
		.NR(NR), 
		.G1(G1), 
		.NG(NG), 
		.B1(B1), 
		.NB(NB), 
		.lineStart(lineStart), 
		.lineDone(lineDone), 
		.DrawLine_UV_Addr(DrawLine_UV_Addr), 
		.DrawLine_UV_Data(DrawLine_UV_Data), 
		.DrawLine_UV_we(DrawLine_UV_we), 
		.DrawLine_Z_ReadAddr(DrawLine_Z_ReadAddr), 
		.DrawLine_Z_ReadData(DrawLine_Z_ReadData), 
		.DrawLine_Z_WriteAddr(DrawLine_Z_WriteAddr), 
		.DrawLine_Z_WriteData(DrawLine_Z_WriteData), 
		.DrawLine_Z_we(DrawLine_Z_we), 
		.nextLine(nextLine), 
		.nextFrame(nextFrame)
   );
	
	//<- Z-Buffer
	ZBuffer zbuffer (
		.clka(clk100), // input clka
		.wea(DrawLine_Z_we), // input [0 : 0] wea
		.addra(DrawLine_Z_WriteAddr), // input [9 : 0] addra
		.dina(DrawLine_Z_WriteData), // input [16 : 0] dina
		.clkb(clk100), // input clkb
		.addrb(DrawLine_Z_ReadAddr), // input [9 : 0] addrb
		.doutb(DrawLine_Z_ReadData) // output [16 : 0] doutb
	);
	 
	//UV-Buffer ->	
	UVBuffer uvbuffer (
		.clka(clk100), // input clka
		.wea(DrawLine_UV_we), // input [0 : 0] wea
		.addra(DrawLine_UV_Addr), // input [10 : 0] addra
		.dina(DrawLine_UV_Data), // input [31 : 0] dina
		.clkb(clk100), // input clkb
		.web(1'b1),
		.addrb(Shader_UV_Addr), // input [10 : 0] addrb
		.dinb(32'h00000000),
		.doutb(UV_Shader_Data) // output [31 : 0] doutb
	);
	
	/*UVBufferStub uvbufferstub (
		.clk100(clk100), 
		.Shader_UV_Addr(Shader_UV_Addr), 
		.UV_Shader_Data(UV_Shader_Data), 
		.Line(Line)
   );*/

	//Shader ->	
	Shader shader (
		.clk100(clk100), 
		.Shader_UV_Addr(Shader_UV_Addr), 
		.UV_Shader_Data(UV_Shader_Data), 
		.Shader_Px_Addr(Shader_Px_Addr), 
		.Shader_Px_Data(Shader_Px_Data), 
		.Shader_Px_we(Shader_Px_we), 
		.nextLine(nextLine),
		.nextFrame(nextFrame)
   );
	
	//Px-Buffer ->	
	PixelBuffer pixelbuffer (
		.clka(clk100), // input clka
		.wea(Shader_Px_we), // input [0 : 0] wea
		.addra(Shader_Px_Addr), // input [10 : 0] addra
		.dina(Shader_Px_Data), // input [7 : 0] dina
		.clkb(clk100), // input clkb
		.addrb(VGA_Px_Addr), // input [10 : 0] addrb
		.doutb(Px_VGA_Data) // output [7 : 0] doutb
	);

	//VGA-Out	 
	VGAOut vgaout (
		.clk100(clk100),
      .PxData(Px_VGA_Data),
      .PxAddr(VGA_Px_Addr),
      .R(vgaRed),
		.G(vgaGreen),
      .B(vgaBlue),
      .hsync(Hsync),
      .vsync(Vsync),
      .Pixel(Pixel),
		.Line(Line)
	);
	/*
	HighColourTest highcolourtest (
		.clk100(clk100),
      .R(vgaRed),
		.G(vgaGreen),
      .B(vgaBlue),
      .hsync(Hsync),
      .vsync(Vsync),
      .Pixel(Pixel),
		.Line(Line)
	);*/
					  
endmodule

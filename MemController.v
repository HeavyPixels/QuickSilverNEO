`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:47 02/16/2016 
// Design Name: 
// Module Name:    MemController 
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
module MemController(
    input clk75,
    input rst,
	 input [31:0] BucketWriteFIFO_ReadData,
	 output BucketWriteFIFO_pop,
	 input BucketWriteFIFO_empty,
	 input [31:0] BucketReadReq_ReadData,
	 output BucketReadReq_pop,
	 input BucketReadReq_empty,
	 output [31:0] BucketReadFIFO_WriteData,
	 output BucketReadFIFO_push,
	 input BucketReadFIFO_full,
	 input [31:0] TextureWriteFIFO_ReadData,
	 output TextureWriteFIFO_pop,
	 input TextureWriteFIFO_empty,
	 input [31:0] TextureReadReq_ReadData,
	 output TextureReadReq_pop,
	 input TextureReadReq_empty,
	 output [31:0] TextureReadFIFO_WriteData,
	 output TextureReadFIFO_push,
	 input TextureReadFIFO_full,
	 output reg MemOE_n, //Output Enable. Active Low
    output reg MemWR_n, //Write Enable. Active Low
    output reg RamAdv_n, //Address Valid. Active Low
    output reg RamCS_n, //Chip Enable. Active Low
    output RamClk, //Memory Clock
    output reg RamCRE, //Control Register Enable. Active High
    output RamLB_n, //Lower Byte Enable. Active Low
    output RamUB_n, //Upper Byte Enable. Active Low
    input RamWait, //Wait. Active High
    output FlashRp_n, //Reset. Active Low.
    output FlashCS_n, //Chip Enable. Active Low.
    output reg [22:0] MemAdr,
    inout [15:0] MemDB
    );


assign RamLB_n = 0; //Always use 16-bit
assign RamUB_n = 0; //Always use 16-bit
assign FlashRp_n = 0; //Keep Flash in low-power mode
assign FlashCS_n = 1; //Keep Flash disabled

reg MemDB_hw;
reg MemDB_oe;
assign MemDB = MemDB_oe ? (sel_r[0] ? (MemDB_hw ? BucketWriteFIFO_ReadData[31:16] : BucketWriteFIFO_ReadData[15:0]) :
                           sel_r[2] ? (MemDB_hw ? TextureWriteFIFO_ReadData[31:16] : TextureWriteFIFO_ReadData[15:0]) :
									16'hZZZZ) :
                          16'hZZZZ;

//Required to do Async Read after BCR Config, as recommended by datasheet
reg clkEnable = 0;
assign RamClk = clkEnable ? clk75 : 0;

//Combining
reg [3:0] sel;
reg [3:0] sel_r;
reg [3:0] pop;
assign BucketWriteFIFO_pop = pop[0];
assign BucketReadReq_pop = pop[1];
assign TextureWriteFIFO_pop = pop[2];
assign TextureReadReq_pop = pop[3];

reg [3:0] push;
reg [3:0] push_r;
assign BucketReadFIFO_push = push_r[1];
assign TextureReadFIFO_push = push_r[3];

reg [31:0] data;
reg data_wr;
assign BucketReadFIFO_WriteData = data;
assign TextureReadFIFO_WriteData = data;


//Init counter. We count to 16384. At 75MHz that's 218us, a bit more than the
// required 150us startup time of the RAM.
reg [13:0] Count = 0;
parameter INIT      = 3'b000,
			 WR_SETUP  = 3'b001,
			 WR_WAIT   = 3'b010,
			 WR_ACTIVE = 3'b011,
          READY     = 3'b100,
			 RD_SETUP  = 3'b101,
			 RD_WAIT   = 3'b110,
			 RD_ACTIVE = 3'b111;
reg [2:0] State = INIT;
reg [2:0] Next;

reg [7:0] AccessCount;
reg dec;
reg [22:0] Address;
reg [3:0] load;
// 0: BucketWrite
// 1: BucketRead
// 2: TextureWrite
// 3: TextureRead

//BCR - Bus Configuration Register:
// Bits | Value
//======+==============
//22-20 | 000 (Reserved)
//19-18 |  10 (Select BCR)
//17-16 |  00 (Reserved)
//   15 |   0 (Operating Mode: Synchronous Burst)
//   14 |   0 (Initial Latency: Variable) (We could do fixed if it makes the controller simpler)
//13-11 | 011 (Latency Config: Code 3) (For Fixed latency we would need at least code 5)
//   10 |   1 (WAIT Polarity: Active HIGH)
//    9 |   0 (Reserved)
//    8 |   1 (WAIT Configuration: One data cycle before delay)
//  6-7 |  00 (Reserved)
//  5-4 |  01 (Drive Strength: 1/2)
//    3 |   1 (Burst wrap: No)
//  2-0 | 111 (Burst Length: Continuous)
parameter BCR_SETUP = 23'b000_10_00_0_0_011_1_0_1_00_01_1_111;

always@(posedge clk75)
begin
	if(rst)
	begin
		Count <= 0;
		State <= INIT;
	end
	else
	begin
		Count <= Count + 1;
		State <= Next;
	end
	
	if(load[0])
		AccessCount <= BucketWriteFIFO_ReadData[30:24];
	else if(load[1])
		AccessCount <= BucketReadReq_ReadData[30:24];
	else if(load[2])
		AccessCount <= TextureWriteFIFO_ReadData[30:24];
	else if(load[3])
		AccessCount <= TextureReadReq_ReadData[30:24];
	else if(dec)
		AccessCount <= AccessCount - 1;
		
	if(load[0])
		Address <= BucketWriteFIFO_ReadData[22:0];
	else if(load[1])
		Address <= BucketReadReq_ReadData[22:0];
	else if(load[2])
		Address <= TextureWriteFIFO_ReadData[22:0];
	else if(load[3])
		Address <= TextureReadReq_ReadData[22:0];
		
	if(sel != 0)
		sel_r <= sel;
	
	push_r <= push;
	
	if(data_wr)
	begin
		if(MemDB_hw)
			data[31:16] <= MemDB;
		else
			data[15:0] <= MemDB;
	end
end

always@*
begin
	case(State)
		INIT:
		begin
			clkEnable = 0;
			MemDB_oe = 0;
			load = 0;
			pop = 0;
			push = 0;
			dec = 0;
			data_wr = 0;
			if(Count < 14'h3FF2) //Wait for startup
			begin
				MemAdr=BCR_SETUP;
				RamCRE=0; RamAdv_n=1; RamCS_n=1; MemOE_n=1; MemWR_n=1;
				Next = INIT;
			end
			else if(Count == 14'h3FF2) //BCR Address setup
			begin
				MemAdr=BCR_SETUP;
				RamCRE=0; RamAdv_n=1; RamCS_n=1; MemOE_n=1; MemWR_n=1;
				Next = INIT;
			end
			else if(Count == 14'h3FF3) //BCR Address valid
			begin
				MemAdr=BCR_SETUP;
				RamCRE=1; RamAdv_n=0; RamCS_n=0; MemOE_n=1; MemWR_n=1;
				Next = INIT;
			end
			else if(Count == 14'h3FF4) //BCR Address hold
			begin
				MemAdr=BCR_SETUP;
				RamCRE=1; RamAdv_n=1; RamCS_n=0; MemOE_n=1; MemWR_n=1;
				Next = INIT;
			end
			else if(Count <= 14'h3FF8) //BCR Write enable
			begin
				MemAdr=BCR_SETUP;
				RamCRE=0; RamAdv_n=1; RamCS_n=0; MemOE_n=1; MemWR_n=0;
				Next = INIT;
			end
			else if(Count == 14'h3FF9) //BCR finish, Read Address setup
			begin
				MemAdr=23'h0;
				RamCRE=0; RamAdv_n=1; RamCS_n=1; MemOE_n=1; MemWR_n=1;
				Next = INIT;
			end
			else if(Count <= 14'h3FFE) //Read operation
			begin
				MemAdr=23'h0;
				RamCRE=0; RamAdv_n=0; RamCS_n=0; MemOE_n=0; MemWR_n=1;
				Next = INIT;
			end
			else if(Count == 14'h3FFF) //Read finish
			begin
				MemAdr=23'h0;
				RamCRE=0; RamAdv_n=0; RamCS_n=1; MemOE_n=1; MemWR_n=1;
				Next = READY;
			end
		end
		READY:
		begin
			clkEnable = 1;
			MemAdr=23'h70FFEE;
			MemDB_oe = 0;
			RamCRE=0; RamAdv_n=1; RamCS_n=1; MemOE_n=1; MemWR_n=1;
			push = 0;
			dec = 0;
			data_wr = 0;
			if(!TextureReadReq_empty)
			begin
				load = 4'b1000;
				pop = 4'b1000;
				sel = 4'b1000;
				Next = RD_SETUP;
			end
			else
			if(!BucketReadReq_empty)
			begin
				load = 4'b0010;
				pop = 4'b0010;
				sel = 4'b0010;
				Next = RD_SETUP;
			end
			else
			if(!BucketWriteFIFO_empty)
			begin
				load = 4'b0001;
				pop = 4'b0001;
				sel = 4'b0001;
				Next = WR_SETUP;
			end
			else
			if(!TextureWriteFIFO_empty)
			begin
				load = 4'b0100;
				pop = 4'b0100;
				sel = 4'b0100;
				Next = WR_SETUP;
			end
			else
			begin
				load = 0;
				pop = 0;
				sel = 0;
				Next = READY;
			end
		end
		WR_SETUP:
		begin
			clkEnable = 1;
			MemAdr=Address;
			MemDB_oe = 0;
			RamCRE=0; RamAdv_n=0; RamCS_n=0; MemOE_n=1; MemWR_n=0;
			pop = 0;
			load = 0;
			sel = 0;
			push = 0;
			dec = 0;
			data_wr = 0;
			Next = WR_WAIT;
		end
		WR_WAIT:
		begin
			clkEnable = 1;
			MemAdr=Address;
			MemDB_oe = 0;
			RamCRE=0; RamAdv_n=1; RamCS_n=0; MemOE_n=1; MemWR_n=0;
			pop = 0;
			load = 0;
			sel = 0;
			push = 0;
			dec = 0;
			data_wr = 0;
			if(RamWait)
				Next = WR_WAIT;
			else
				Next = WR_ACTIVE;
		end
		WR_ACTIVE:
		begin
			clkEnable = 1;
			MemAdr=Address;
			if(AccessCount[0])
			begin
				MemDB_hw = 0;
				pop = sel_r;
			end
			else
			begin
				MemDB_hw = 1;
				pop = 0;
			end
			MemDB_oe = 1;
			RamCRE=0; RamAdv_n=1; RamCS_n=0; MemOE_n=1; MemWR_n=0;
			load = 0;
			sel = 0;
			push = 0;
			dec = 1;
			data_wr = 0;
			if(AccessCount[7:1]==0)
				Next = READY;
			else if(RamWait)
				Next = WR_WAIT;
			else
				Next = WR_ACTIVE;
		end
		RD_SETUP:
		begin
			clkEnable = 1;
			MemAdr=Address;
			MemDB_oe = 0;
			RamCRE=0; RamAdv_n=0; RamCS_n=0; MemOE_n=0; MemWR_n=1;
			pop = 0;
			load = 0;
			sel = 0;
			push = 0;
			dec = 0;
			data_wr = 0;
			Next = RD_WAIT;
		end
		RD_WAIT:
		begin
			clkEnable = 1;
			MemAdr=Address;
			MemDB_oe = 0;
			RamCRE=0; RamAdv_n=1; RamCS_n=0; MemOE_n=0; MemWR_n=1;
			pop = 0;
			load = 0;
			sel = 0;
			push = 0;
			dec = 0;
			data_wr = 0;
			if(RamWait)
				Next = RD_WAIT;
			else
				Next = RD_ACTIVE;
		end
		RD_ACTIVE:
		begin
			clkEnable = 1;
			MemAdr=Address;
			if(AccessCount[0])
			begin
				MemDB_hw = 0;
				data_wr = 1;
				push = sel_r;
			end
			else
			begin
				MemDB_hw = 1;
				data_wr = 1;
				push = 0;
			end
			MemDB_oe = 0;
			RamCRE=0; RamAdv_n=1; RamCS_n=0; MemOE_n=0; MemWR_n=1;
			pop = 0;
			load = 0;
			sel = 0;
			dec = 1;
			if(AccessCount[7:1]==0)
				Next = READY;
			else if(RamWait)
				Next = RD_WAIT;
			else
				Next = RD_ACTIVE;
		end
	endcase
end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:49 08/29/2015 
// Design Name: 
// Module Name:    PreCalc 
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
module PreCalc(
    input clk100,
    input nextFrame,
    input [223:0] VertexBuffer_PreCalc_ReadData,
    output VertexBuffer_PreCalc_pop,
    input VertexBuffer_PreCalc_empty,
    output reg [223:0] PreCalc_TriangleFIFO_WriteData,
    output reg PreCalc_TriangleFIFO_push,
    input PreCalc_TriangleFIFO_wait
    );
	 
parameter SEL_Q =4'h0,
			 SEL_M1=4'h1,
			 SEL_M2=4'h2,
			 SEL_M3=4'h3,
			 SEL_MZ=4'h4,
			 SEL_MR=4'h5,
			 SEL_MG=4'h6,
			 SEL_MB=4'h7,
			 SEL_NZ=4'h8,
			 SEL_NR=4'h9,
			 SEL_NG=4'hA,
			 SEL_NB=4'hB;
parameter SEL_QX=3'h0,
			 SEL_QZ=3'h1,
			 SEL_QR=3'h2,
			 SEL_QG=3'h3,
			 SEL_QB=3'h4;

reg signed [16:0] dividend;
reg signed [12:0] divisor;
wire signed [16:0] rawquotient;
wire signed [16:0] quotient;
wire signed [10:0] fractional;

reg signed [16:0] mult;
wire signed [37:0] product;

reg [11:0] x1[0:4];
reg [11:0] x2[0:4];
reg [11:0] x3[0:4];
reg [11:0] y1[0:4];
reg [11:0] y2[0:4];
reg [11:0] y3[0:4];
reg [15:0] z1[0:4];
reg [15:0] z2[0:4];
reg [15:0] z3[0:4];
reg [11:0] r1[0:4];
reg [11:0] r2[0:4];
reg [11:0] r3[0:4];
reg [11:0] g1[0:4];
reg [11:0] g2[0:4];
reg [11:0] g3[0:4];
reg  [7:0] b1[0:4];
reg  [7:0] b2[0:4];
reg  [7:0] b3[0:4];

reg signed [20:0] Q[0:1];      reg load_Q;
reg signed [20:0] m1[0:2];     reg load_m1;
reg signed [20:0] m2[0:2];     reg load_m2;
reg signed [20:0] m3[0:2];     reg load_m3;
reg signed [26:0] mz[0:2];     reg load_mz;
reg signed [22:0] mr[0:2];     reg load_mr;
reg signed [22:0] mg[0:2];     reg load_mg;
reg signed [18:0] mb[0:2];     reg load_mb;
reg signed [26:0] nz[0:1];     reg load_nz;
reg signed [22:0] nr[0:1];     reg load_nr;
reg signed [22:0] ng[0:1];     reg load_ng;
reg signed [18:0] nb[0:1];     reg load_nb;
reg signed [16:0] QMultX;      reg load_QMultX;
reg signed [16:0] QMultZ;      reg load_QMultZ;
reg signed [16:0] QMultR;      reg load_QMultR;
reg signed [16:0] QMultG;      reg load_QMultG;
reg signed [16:0] QMultB;      reg load_QMultB;

reg [3:0] div_sel;
reg [2:0] mult_sel;

reg [3:0] state;

reg pop;
reg push1;
reg push2;

reg empty[0:4];

//wires for sorting
wire [11:0] ya;
wire [11:0] yb;
wire [11:0] yc;

wire [2:0] sort_sel;

assign ya = VertexBuffer_PreCalc_ReadData[179:168];
assign yb = VertexBuffer_PreCalc_ReadData[167:156];
assign yc = VertexBuffer_PreCalc_ReadData[155:144];

assign sort_sel = {ya<=yb,ya<=yc,yb<=yc};

assign VertexBuffer_PreCalc_pop = pop & ~PreCalc_TriangleFIFO_wait;

//input fifo
always@(posedge clk100)
begin
	if(nextFrame)
	begin
		empty[0]<=1; empty[1]<=1; empty[2]<=1; empty[3]<=1; empty[4]<=1;
	end
	else if(pop)
	begin
		empty[0]<=VertexBuffer_PreCalc_empty | PreCalc_TriangleFIFO_wait;
		empty[1]<=empty[0]; empty[2]<=empty[1]; empty[3]<=empty[2]; empty[4]<=empty[3];
		case(sort_sel)
			'b111:
			begin
				x1[0]<=VertexBuffer_PreCalc_ReadData[215:204]; 
				x2[0]<=VertexBuffer_PreCalc_ReadData[203:192]; 
				x3[0]<=VertexBuffer_PreCalc_ReadData[191:180]; 
				y1[0]<=VertexBuffer_PreCalc_ReadData[179:168]; 
				y2[0]<=VertexBuffer_PreCalc_ReadData[167:156]; 
				y3[0]<=VertexBuffer_PreCalc_ReadData[155:144]; 
				z1[0]<=VertexBuffer_PreCalc_ReadData[143:128]; 
				z2[0]<=VertexBuffer_PreCalc_ReadData[127:112]; 
				z3[0]<=VertexBuffer_PreCalc_ReadData[111: 96]; 
				r1[0]<=VertexBuffer_PreCalc_ReadData[ 95: 84]; 
				r2[0]<=VertexBuffer_PreCalc_ReadData[ 83: 72]; 
				r3[0]<=VertexBuffer_PreCalc_ReadData[ 71: 60]; 
				g1[0]<=VertexBuffer_PreCalc_ReadData[ 59: 48]; 
				g2[0]<=VertexBuffer_PreCalc_ReadData[ 47: 36]; 
				g3[0]<=VertexBuffer_PreCalc_ReadData[ 35: 24]; 
				b1[0]<=VertexBuffer_PreCalc_ReadData[ 23: 16]; 
				b2[0]<=VertexBuffer_PreCalc_ReadData[ 15:  8]; 
				b3[0]<=VertexBuffer_PreCalc_ReadData[  7:  0];
			end
			'b110:
			begin
				x1[0]<=VertexBuffer_PreCalc_ReadData[215:204]; 
				x3[0]<=VertexBuffer_PreCalc_ReadData[203:192]; 
				x2[0]<=VertexBuffer_PreCalc_ReadData[191:180]; 
				y1[0]<=VertexBuffer_PreCalc_ReadData[179:168]; 
				y3[0]<=VertexBuffer_PreCalc_ReadData[167:156]; 
				y2[0]<=VertexBuffer_PreCalc_ReadData[155:144]; 
				z1[0]<=VertexBuffer_PreCalc_ReadData[143:128]; 
				z3[0]<=VertexBuffer_PreCalc_ReadData[127:112]; 
				z2[0]<=VertexBuffer_PreCalc_ReadData[111: 96]; 
				r1[0]<=VertexBuffer_PreCalc_ReadData[ 95: 84]; 
				r3[0]<=VertexBuffer_PreCalc_ReadData[ 83: 72]; 
				r2[0]<=VertexBuffer_PreCalc_ReadData[ 71: 60]; 
				g1[0]<=VertexBuffer_PreCalc_ReadData[ 59: 48]; 
				g3[0]<=VertexBuffer_PreCalc_ReadData[ 47: 36]; 
				g2[0]<=VertexBuffer_PreCalc_ReadData[ 35: 24]; 
				b1[0]<=VertexBuffer_PreCalc_ReadData[ 23: 16]; 
				b3[0]<=VertexBuffer_PreCalc_ReadData[ 15:  8]; 
				b2[0]<=VertexBuffer_PreCalc_ReadData[  7:  0];
			end
			'b011:
			begin
				x2[0]<=VertexBuffer_PreCalc_ReadData[215:204]; 
				x1[0]<=VertexBuffer_PreCalc_ReadData[203:192]; 
				x3[0]<=VertexBuffer_PreCalc_ReadData[191:180]; 
				y2[0]<=VertexBuffer_PreCalc_ReadData[179:168]; 
				y1[0]<=VertexBuffer_PreCalc_ReadData[167:156]; 
				y3[0]<=VertexBuffer_PreCalc_ReadData[155:144]; 
				z2[0]<=VertexBuffer_PreCalc_ReadData[143:128]; 
				z1[0]<=VertexBuffer_PreCalc_ReadData[127:112]; 
				z3[0]<=VertexBuffer_PreCalc_ReadData[111: 96]; 
				r2[0]<=VertexBuffer_PreCalc_ReadData[ 95: 84]; 
				r1[0]<=VertexBuffer_PreCalc_ReadData[ 83: 72]; 
				r3[0]<=VertexBuffer_PreCalc_ReadData[ 71: 60]; 
				g2[0]<=VertexBuffer_PreCalc_ReadData[ 59: 48]; 
				g1[0]<=VertexBuffer_PreCalc_ReadData[ 47: 36]; 
				g3[0]<=VertexBuffer_PreCalc_ReadData[ 35: 24]; 
				b2[0]<=VertexBuffer_PreCalc_ReadData[ 23: 16]; 
				b1[0]<=VertexBuffer_PreCalc_ReadData[ 15:  8]; 
				b3[0]<=VertexBuffer_PreCalc_ReadData[  7:  0];
			end
			'b001:
			begin
				x2[0]<=VertexBuffer_PreCalc_ReadData[215:204]; 
				x3[0]<=VertexBuffer_PreCalc_ReadData[203:192]; 
				x1[0]<=VertexBuffer_PreCalc_ReadData[191:180]; 
				y2[0]<=VertexBuffer_PreCalc_ReadData[179:168]; 
				y3[0]<=VertexBuffer_PreCalc_ReadData[167:156]; 
				y1[0]<=VertexBuffer_PreCalc_ReadData[155:144]; 
				z2[0]<=VertexBuffer_PreCalc_ReadData[143:128]; 
				z3[0]<=VertexBuffer_PreCalc_ReadData[127:112]; 
				z1[0]<=VertexBuffer_PreCalc_ReadData[111: 96]; 
				r2[0]<=VertexBuffer_PreCalc_ReadData[ 95: 84]; 
				r3[0]<=VertexBuffer_PreCalc_ReadData[ 83: 72]; 
				r1[0]<=VertexBuffer_PreCalc_ReadData[ 71: 60]; 
				g2[0]<=VertexBuffer_PreCalc_ReadData[ 59: 48]; 
				g3[0]<=VertexBuffer_PreCalc_ReadData[ 47: 36]; 
				g1[0]<=VertexBuffer_PreCalc_ReadData[ 35: 24]; 
				b2[0]<=VertexBuffer_PreCalc_ReadData[ 23: 16]; 
				b3[0]<=VertexBuffer_PreCalc_ReadData[ 15:  8]; 
				b1[0]<=VertexBuffer_PreCalc_ReadData[  7:  0];
			end
			'b100:
			begin
				x3[0]<=VertexBuffer_PreCalc_ReadData[215:204]; 
				x1[0]<=VertexBuffer_PreCalc_ReadData[203:192]; 
				x2[0]<=VertexBuffer_PreCalc_ReadData[191:180]; 
				y3[0]<=VertexBuffer_PreCalc_ReadData[179:168]; 
				y1[0]<=VertexBuffer_PreCalc_ReadData[167:156]; 
				y2[0]<=VertexBuffer_PreCalc_ReadData[155:144]; 
				z3[0]<=VertexBuffer_PreCalc_ReadData[143:128]; 
				z1[0]<=VertexBuffer_PreCalc_ReadData[127:112]; 
				z2[0]<=VertexBuffer_PreCalc_ReadData[111: 96]; 
				r3[0]<=VertexBuffer_PreCalc_ReadData[ 95: 84]; 
				r1[0]<=VertexBuffer_PreCalc_ReadData[ 83: 72]; 
				r2[0]<=VertexBuffer_PreCalc_ReadData[ 71: 60]; 
				g3[0]<=VertexBuffer_PreCalc_ReadData[ 59: 48]; 
				g1[0]<=VertexBuffer_PreCalc_ReadData[ 47: 36]; 
				g2[0]<=VertexBuffer_PreCalc_ReadData[ 35: 24]; 
				b3[0]<=VertexBuffer_PreCalc_ReadData[ 23: 16]; 
				b1[0]<=VertexBuffer_PreCalc_ReadData[ 15:  8]; 
				b2[0]<=VertexBuffer_PreCalc_ReadData[  7:  0];
			end
			'b000:
			begin
				x3[0]<=VertexBuffer_PreCalc_ReadData[215:204]; 
				x2[0]<=VertexBuffer_PreCalc_ReadData[203:192]; 
				x1[0]<=VertexBuffer_PreCalc_ReadData[191:180]; 
				y3[0]<=VertexBuffer_PreCalc_ReadData[179:168]; 
				y2[0]<=VertexBuffer_PreCalc_ReadData[167:156]; 
				y1[0]<=VertexBuffer_PreCalc_ReadData[155:144]; 
				z3[0]<=VertexBuffer_PreCalc_ReadData[143:128]; 
				z2[0]<=VertexBuffer_PreCalc_ReadData[127:112]; 
				z1[0]<=VertexBuffer_PreCalc_ReadData[111: 96]; 
				r3[0]<=VertexBuffer_PreCalc_ReadData[ 95: 84]; 
				r2[0]<=VertexBuffer_PreCalc_ReadData[ 83: 72]; 
				r1[0]<=VertexBuffer_PreCalc_ReadData[ 71: 60]; 
				g3[0]<=VertexBuffer_PreCalc_ReadData[ 59: 48]; 
				g2[0]<=VertexBuffer_PreCalc_ReadData[ 47: 36]; 
				g1[0]<=VertexBuffer_PreCalc_ReadData[ 35: 24]; 
				b3[0]<=VertexBuffer_PreCalc_ReadData[ 23: 16]; 
				b2[0]<=VertexBuffer_PreCalc_ReadData[ 15:  8]; 
				b1[0]<=VertexBuffer_PreCalc_ReadData[  7:  0];
			end
		endcase
		
		x1[1]<=x1[0]; x1[2]<=x1[1]; x1[3]<=x1[2]; x1[4]<=x1[3];
		x2[1]<=x2[0]; x2[2]<=x2[1]; x2[3]<=x2[2]; x2[4]<=x2[3];
		x3[1]<=x3[0]; x3[2]<=x3[1]; x3[3]<=x3[2]; x3[4]<=x3[3];
		y1[1]<=y1[0]; y1[2]<=y1[1]; y1[3]<=y1[2]; y1[4]<=y1[3];
		y2[1]<=y2[0]; y2[2]<=y2[1]; y2[3]<=y2[2]; y2[4]<=y2[3];
		y3[1]<=y3[0]; y3[2]<=y3[1]; y3[3]<=y3[2]; y3[4]<=y3[3];
		z1[1]<=z1[0]; z1[2]<=z1[1]; z1[3]<=z1[2]; z1[4]<=z1[3];
		z2[1]<=z2[0]; z2[2]<=z2[1]; z2[3]<=z2[2]; z2[4]<=z2[3];
		z3[1]<=z3[0]; z3[2]<=z3[1]; z3[3]<=z3[2]; z3[4]<=z3[3];
		r1[1]<=r1[0]; r1[2]<=r1[1]; r1[3]<=r1[2]; r1[4]<=r1[3];
		r2[1]<=r2[0]; r2[2]<=r2[1]; r2[3]<=r2[2]; r2[4]<=r2[3];
		r3[1]<=r3[0]; r3[2]<=r3[1]; r3[3]<=r3[2]; r3[4]<=r3[3];
		g1[1]<=g1[0]; g1[2]<=g1[1]; g1[3]<=g1[2]; g1[4]<=g1[3];
		g2[1]<=g2[0]; g2[2]<=g2[1]; g2[3]<=g2[2]; g2[4]<=g2[3];
		g3[1]<=g3[0]; g3[2]<=g3[1]; g3[3]<=g3[2]; g3[4]<=g3[3];
		b1[1]<=b1[0]; b1[2]<=b1[1]; b1[3]<=b1[2]; b1[4]<=b1[3];
		b2[1]<=b2[0]; b2[2]<=b2[1]; b2[3]<=b2[2]; b2[4]<=b2[3];
		b3[1]<=b3[0]; b3[2]<=b3[1]; b3[3]<=b3[2]; b3[4]<=b3[3];
	end
end

//output buffer
always@(posedge clk100)
begin
	if(push1)
	begin
		PreCalc_TriangleFIFO_WriteData <= {x1[4],8'h0,x1[4],8'h0,x2[4][11:2],m1[2],m2[2],m3[2],y1[4][11:2],y2[4][11:2],y3[4][11:2],z1[4],10'h0,mz[2],nz[0]};
		PreCalc_TriangleFIFO_push <= !empty[4];
	end
	else if(push2)
	begin
		PreCalc_TriangleFIFO_WriteData <= {r1[4],10'h0,mr[2],nr[0],g1[4],10'h0,mg[2],ng[0],b1[4],10'h0,mb[2],nb[0]};
		PreCalc_TriangleFIFO_push <= !empty[4];
	end
	else
		PreCalc_TriangleFIFO_push <= 0;
//		X1_in, X2_in, Xmid_in, Mlong_in, Mtop_in, Mbottom_in,
//        Ycurr_in, Ymid_in, Yend_in, Z1_in, MZ_in, NZ_in} = CalcLine_TriangleFIFO_ReadData[222:0];
//assign {R1_in, MR_in, NR_in, G1_in, MG_in, NG_in,
//        B1_in, MB_in, NB_in} = CalcLine_TriangleFIFO_ReadData[191:0];
end


//controller
always@*
begin
	pop = 0;
	div_sel = 0;
	load_Q = 0;
	load_m1 = 0;
	load_m2 = 0;
	load_m3 = 0;
	load_mz = 0;
	load_mr = 0;
	load_mg = 0;
	load_mb = 0;
	load_nz = 0;
	load_nr = 0;
	load_ng = 0;
	load_nb = 0;
	mult_sel = 0;
	load_QMultX = 0;
	load_QMultZ = 0;
	load_QMultR = 0;
	load_QMultG = 0;
	load_QMultB = 0;
	push1 = 0;
	push2 = 0;	
	case(state)
		'h0:
		begin
			pop = 1;
			push2 = 1;
		end
		/*'h1:
		begin
		end
		'h2:
		begin
		end*/
		'h3:
		begin
			div_sel = SEL_Q;
			load_Q = 1;
		end
		'h4:
		begin
			div_sel = SEL_M1;
			load_m1 = 1;
		end
		'h5:
		begin
			div_sel = SEL_M2;
			load_m2 = 1;
			mult_sel = SEL_QX;
		end
		'h6:
		begin
			div_sel = SEL_M3;
			load_m3 = 1;
			mult_sel = SEL_QZ;
		end
		'h7:
		begin
			div_sel = SEL_MZ;
			load_mz = 1;
			mult_sel = SEL_QR;
			load_QMultX = 1;
		end
		'h8:
		begin
			div_sel = SEL_MR;
			load_mr = 1;
			mult_sel = SEL_QG;
			load_QMultZ = 1;
		end
		'h9:
		begin
			div_sel = SEL_MG;
			load_mg = 1;
			mult_sel = SEL_QB;
			load_QMultR = 1;
		end
		'hA:
		begin
			div_sel = SEL_MB;
			load_mb = 1;
			load_QMultG = 1;
		end
		'hB:
		begin
			div_sel = SEL_NZ;
			load_nz = 1;
			load_QMultB = 1;
		end
		'hC:
		begin
			div_sel = SEL_NR;
			load_nr = 1;
		end
		'hD:
		begin
			div_sel = SEL_NG;
			load_ng = 1;
		end
		'hE:
		begin
			div_sel = SEL_NB;
			load_nb = 1;
		end
		'hF:
		begin
			push1 = 1;
		end
	endcase
end

//state counter
always@(posedge clk100)
begin
	if(nextFrame)
		state <= 0;
	else
		state <= state + 1;
end

//subtractions
reg signed [16:0] y3y1;
reg signed [16:0] y3y1_s;
reg signed [16:0] y2y1;
reg signed [16:0] y3y2;
reg signed [16:0] x3x1;
reg signed [16:0] x2x1;
reg signed [16:0] x3x2;
reg signed [16:0] z3z1;
reg signed [16:0] r3r1;
reg signed [16:0] g3g1;
reg signed [16:0] b3b1;
reg signed [16:0] x2Qxx1;
reg signed [16:0] z2Qzz1;
reg signed [16:0] r2Qrr1;
reg signed [16:0] g2Qgg1;
reg signed [16:0] b2Qbb1;
reg signed [16:0] x3x1_2;
reg signed [16:0] z3z1_2;
reg signed [16:0] r3r1_2;
reg signed [16:0] g3g1_2;
reg signed [16:0] b3b1_2;

always@(posedge clk100)
begin
	y3y1   = (y3[0]-y1[0]);
	y3y1_s = y3[0][11:2]-y1[0][11:2];
	y2y1   = (y2[0]-y1[0]);
	y3y2   = (y3[0]-y2[0]);
	x3x1   = (x3[0]-x1[0]);
	x2x1   = (x2[0]-x1[0]);
	x3x2   = (x3[0]-x2[0]);
	z3z1   = (z3[0]-z1[0]);
	r3r1   = (r3[0]-r1[0]);
	g3g1   = (g3[0]-g1[0]);
	b3b1   = (b3[0]-b1[0]);
	x2Qxx1 = (-QMultX-x1[2])+x2[2];
	z2Qzz1 = (-QMultZ-z1[2])+z2[2];
	r2Qrr1 = (-QMultR-r1[2])+r2[2];
	g2Qgg1 = (-QMultG-g1[2])+g2[2];
	b2Qbb1 = (-QMultB-b1[2])+b2[2];
	x3x1_2 = (x3[2]-x1[2]);
	z3z1_2 = (z3[2]-z1[2]);
	r3r1_2 = (r3[2]-r1[2]);
	g3g1_2 = (g3[2]-g1[2]);
	b3b1_2 = (b3[2]-b1[2]);	
end

//dividend mux
always@*
begin
	case(div_sel)
		SEL_Q : dividend = y2y1;
		SEL_M1: dividend = x3x1;
		SEL_M2: dividend = x2x1;
		SEL_M3: dividend = x3x2;
		SEL_MZ: dividend = z3z1;
		SEL_MR: dividend = r3r1;
		SEL_MG: dividend = g3g1;
		SEL_MB: dividend = b3b1;
		SEL_NZ: dividend = z2Qzz1;
		SEL_NR: dividend = r2Qrr1;
		SEL_NG: dividend = g2Qgg1;
		SEL_NB: dividend = b2Qbb1;
		default: dividend = 0;
	endcase
end
//divisor mux
always@*
begin
	case(div_sel)
		SEL_Q : divisor = y3y1;
		SEL_M1: divisor = y3y1;
		SEL_M2: divisor = y2y1;
		SEL_M3: divisor = y3y2;
		SEL_MZ: divisor = y3y1_s;
		SEL_MR: divisor = y3y1_s;
		SEL_MG: divisor = y3y1_s;
		SEL_MB: divisor = y3y1_s;
		SEL_NZ: divisor = {x2Qxx1[13],x2Qxx1[13:2]};//(x2[2]-QMultX-x1[2]);
		SEL_NR: divisor = {x2Qxx1[13],x2Qxx1[13:2]};//(x2[2]-QMultX-x1[2]);
		SEL_NG: divisor = {x2Qxx1[13],x2Qxx1[13:2]};//(x2[2]-QMultX-x1[2]);
		SEL_NB: divisor = {x2Qxx1[13],x2Qxx1[13:2]};//(x2[2]-QMultX-x1[2]);
		default: divisor = 0;
	endcase
end
//quotient demux
always@(posedge clk100)
begin
	if(load_Q)
	begin
		Q[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; Q[1]<=Q[0];
	end
	if(load_m1)
	begin
		m1[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; m1[1]<=m1[0]; m1[2]<=m1[1];
	end
	if(load_m2)
	begin
		m2[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; m2[1]<=m2[0]; m2[2]<=m2[1];
	end
	if(load_m3)
	begin
		m3[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; m3[1]<=m3[0]; m3[2]<=m3[1];
	end
	if(load_mz)
	begin
		mz[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; mz[1]<=mz[0]; mz[2]<=mz[1];
	end
	if(load_mr)
	begin
		mr[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; mr[1]<=mr[0]; mr[2]<=mr[1];
	end
	if(load_mg)
	begin
		mg[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; mg[1]<=mg[0]; mg[2]<=mg[1];
	end
	if(load_mb)
	begin
		mb[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; mb[1]<=mb[0]; mb[2]<=mb[1];
	end
	if(load_nz)
	begin
		nz[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; nz[1]<=nz[0];
	end
	if(load_nr)
	begin
		nr[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; nr[1]<=nr[0];
	end
	if(load_ng)
	begin
		ng[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; ng[1]<=ng[0];
	end
	if(load_nb)
	begin
		nb[0]<=(quotient[16:0]<<10) + {{17{fractional[9]}},fractional[9:0]}; nb[1]<=nb[0];
	end
end



//multiplier mux
always@*
begin
	case(mult_sel)
		SEL_QX: mult = x3x1_2;
		SEL_QZ: mult = z3z1_2;
		SEL_QR: mult = r3r1_2;
		SEL_QG: mult = g3g1_2;
		SEL_QB: mult = b3b1_2;
		default: mult = 0;
	endcase
end
//product demux
always@(posedge clk100)
begin
	//As Q is in s.10.10 format, we discard fractional part in the lower 10 bits
	if(load_QMultX)
	begin
		QMultX<=product[26:10];// QMultX[1]<=QMultX[0]; QMultX[2]<=QMultX[1]; QMultX[3]<=QMultX[2];
	end
	if(load_QMultZ)
	begin
		QMultZ<=product[26:10];// QMultZ[1]<=QMultZ[0]; QMultZ[2]<=QMultZ[1]; QMultZ[3]<=QMultZ[2];
	end
	if(load_QMultR)
	begin
		QMultR<=product[26:10];// QMultR[1]<=QMultR[0]; QMultR[2]<=QMultR[1]; QMultR[3]<=QMultR[2];
	end
	if(load_QMultG)
	begin
		QMultG<=product[26:10];// QMultG[1]<=QMultG[0]; QMultG[2]<=QMultG[1]; QMultG[3]<=QMultG[2];
	end
	if(load_QMultB)
	begin
		QMultB<=product[26:10];// QMultB[1]<=QMultB[0]; QMultB[2]<=QMultB[1]; QMultB[3]<=QMultB[2];
	end
end
	
	 
PreCalcDiv precalcdiv (
	.clk(clk100), // input clk
	//.rfd(rfd), // output rfd
	.dividend(dividend), // input [16 : 0] dividend
	.divisor(divisor), // input [12 : 0] divisor
	.quotient(quotient), // output [16 : 0] quotient
	.fractional(fractional)); // output [10 : 0] fractional

//sign extension
//assign quotient = (rawquotient==0 && fractional[10]) ? 17'h1FFFF : rawquotient;
	
PreCalcMult precalcmult (
   .clk(clk100), // input clk
   .a(Q[0]), // input [20 : 0] a
   .b(mult), // input [16 : 0] b
   .p(product) // output [37 : 0] p
);


endmodule

////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: PreCalcMult.v
// /___/   /\     Timestamp: Thu May 26 23:28:07 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/s061996/OneDrive/QuickSilver/QuickSilverNEO/QuickSilverNEO/ipcore_dir/tmp/_cg/PreCalcMult.ngc C:/Users/s061996/OneDrive/QuickSilver/QuickSilverNEO/QuickSilverNEO/ipcore_dir/tmp/_cg/PreCalcMult.v 
// Device	: 3s1200efg320-4
// Input file	: C:/Users/s061996/OneDrive/QuickSilver/QuickSilverNEO/QuickSilverNEO/ipcore_dir/tmp/_cg/PreCalcMult.ngc
// Output file	: C:/Users/s061996/OneDrive/QuickSilver/QuickSilverNEO/QuickSilverNEO/ipcore_dir/tmp/_cg/PreCalcMult.v
// # of Modules	: 1
// Design Name	: PreCalcMult
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module PreCalcMult (
  clk, p, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  output [37 : 0] p;
  input [20 : 0] a;
  input [16 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig0000016e ;
  wire \blk00000001/sig0000016d ;
  wire \blk00000001/sig0000016c ;
  wire \blk00000001/sig0000016b ;
  wire \blk00000001/sig0000016a ;
  wire \blk00000001/sig00000169 ;
  wire \blk00000001/sig00000168 ;
  wire \blk00000001/sig00000167 ;
  wire \blk00000001/sig00000166 ;
  wire \blk00000001/sig00000165 ;
  wire \blk00000001/sig00000164 ;
  wire \blk00000001/sig00000163 ;
  wire \blk00000001/sig00000162 ;
  wire \blk00000001/sig00000161 ;
  wire \blk00000001/sig00000160 ;
  wire \blk00000001/sig0000015f ;
  wire \blk00000001/sig0000015e ;
  wire \blk00000001/sig0000015d ;
  wire \blk00000001/sig0000015c ;
  wire \blk00000001/sig0000015b ;
  wire \blk00000001/sig0000015a ;
  wire \blk00000001/sig00000159 ;
  wire \blk00000001/sig00000158 ;
  wire \blk00000001/sig00000157 ;
  wire \blk00000001/sig00000156 ;
  wire \blk00000001/sig00000155 ;
  wire \blk00000001/sig00000154 ;
  wire \blk00000001/sig00000153 ;
  wire \blk00000001/sig00000152 ;
  wire \blk00000001/sig00000151 ;
  wire \blk00000001/sig00000150 ;
  wire \blk00000001/sig0000014f ;
  wire \blk00000001/sig0000014e ;
  wire \blk00000001/sig0000014d ;
  wire \blk00000001/sig0000014c ;
  wire \blk00000001/sig0000014b ;
  wire \blk00000001/sig0000014a ;
  wire \blk00000001/sig00000149 ;
  wire \blk00000001/sig00000148 ;
  wire \blk00000001/sig00000147 ;
  wire \blk00000001/sig00000146 ;
  wire \blk00000001/sig00000145 ;
  wire \blk00000001/sig00000144 ;
  wire \blk00000001/sig00000143 ;
  wire \blk00000001/sig00000142 ;
  wire \blk00000001/sig00000141 ;
  wire \blk00000001/sig00000140 ;
  wire \blk00000001/sig0000013f ;
  wire \blk00000001/sig0000013e ;
  wire \blk00000001/sig0000013d ;
  wire \blk00000001/sig0000013c ;
  wire \blk00000001/sig0000013b ;
  wire \blk00000001/sig0000013a ;
  wire \blk00000001/sig00000139 ;
  wire \blk00000001/sig00000138 ;
  wire \blk00000001/sig00000137 ;
  wire \blk00000001/sig00000136 ;
  wire \blk00000001/sig00000135 ;
  wire \blk00000001/sig00000134 ;
  wire \blk00000001/sig00000133 ;
  wire \blk00000001/sig00000132 ;
  wire \blk00000001/sig00000131 ;
  wire \blk00000001/sig00000130 ;
  wire \blk00000001/sig0000012f ;
  wire \blk00000001/sig0000012e ;
  wire \blk00000001/sig0000012d ;
  wire \blk00000001/sig0000012c ;
  wire \blk00000001/sig0000012b ;
  wire \blk00000001/sig0000012a ;
  wire \blk00000001/sig00000129 ;
  wire \blk00000001/sig00000128 ;
  wire \blk00000001/sig00000127 ;
  wire \blk00000001/sig00000126 ;
  wire \blk00000001/sig00000125 ;
  wire \blk00000001/sig00000124 ;
  wire \blk00000001/sig00000123 ;
  wire \blk00000001/sig00000122 ;
  wire \blk00000001/sig00000121 ;
  wire \blk00000001/sig00000120 ;
  wire \blk00000001/sig0000011f ;
  wire \blk00000001/sig0000011e ;
  wire \blk00000001/sig0000011d ;
  wire \blk00000001/sig0000011c ;
  wire \blk00000001/sig0000011b ;
  wire \blk00000001/sig0000011a ;
  wire \blk00000001/sig00000119 ;
  wire \blk00000001/sig00000118 ;
  wire \blk00000001/sig00000117 ;
  wire \blk00000001/sig00000116 ;
  wire \blk00000001/sig00000115 ;
  wire \blk00000001/sig00000114 ;
  wire \blk00000001/sig00000113 ;
  wire \blk00000001/sig00000112 ;
  wire \blk00000001/sig00000111 ;
  wire \blk00000001/sig00000110 ;
  wire \blk00000001/sig0000010f ;
  wire \blk00000001/sig0000010e ;
  wire \blk00000001/sig0000010d ;
  wire \blk00000001/sig0000010c ;
  wire \blk00000001/sig0000010b ;
  wire \blk00000001/sig0000010a ;
  wire \blk00000001/sig00000109 ;
  wire \blk00000001/sig00000108 ;
  wire \blk00000001/sig00000107 ;
  wire \blk00000001/sig00000106 ;
  wire \blk00000001/sig00000105 ;
  wire \blk00000001/sig00000104 ;
  wire \blk00000001/sig00000103 ;
  wire \blk00000001/sig00000102 ;
  wire \blk00000001/sig00000101 ;
  wire \blk00000001/sig00000100 ;
  wire \blk00000001/sig000000ff ;
  wire \blk00000001/sig000000fe ;
  wire \blk00000001/sig000000fd ;
  wire \blk00000001/sig000000fc ;
  wire \blk00000001/sig000000fb ;
  wire \blk00000001/sig000000fa ;
  wire \blk00000001/sig000000f9 ;
  wire \blk00000001/sig000000f8 ;
  wire \blk00000001/sig000000f7 ;
  wire \blk00000001/sig000000f6 ;
  wire \blk00000001/sig000000f5 ;
  wire \blk00000001/sig000000f4 ;
  wire \blk00000001/sig000000f3 ;
  wire \blk00000001/sig000000f2 ;
  wire \blk00000001/sig000000f1 ;
  wire \blk00000001/sig000000f0 ;
  wire \blk00000001/sig000000ef ;
  wire \blk00000001/sig000000ee ;
  wire \blk00000001/sig000000ed ;
  wire \blk00000001/sig000000ec ;
  wire \blk00000001/sig000000eb ;
  wire \blk00000001/sig000000ea ;
  wire \blk00000001/sig000000e9 ;
  wire \blk00000001/sig000000e8 ;
  wire \blk00000001/sig000000e7 ;
  wire \blk00000001/sig000000e6 ;
  wire \blk00000001/sig000000e5 ;
  wire \blk00000001/sig000000e4 ;
  wire \blk00000001/sig000000e3 ;
  wire \blk00000001/sig000000e2 ;
  wire \blk00000001/sig000000e1 ;
  wire \blk00000001/sig000000e0 ;
  wire \blk00000001/sig000000df ;
  wire \blk00000001/sig000000de ;
  wire \blk00000001/sig000000dd ;
  wire \blk00000001/sig000000dc ;
  wire \blk00000001/sig000000db ;
  wire \blk00000001/sig000000da ;
  wire \blk00000001/sig000000d9 ;
  wire \blk00000001/sig000000d8 ;
  wire \blk00000001/sig000000d7 ;
  wire \blk00000001/sig000000d6 ;
  wire \blk00000001/sig000000d5 ;
  wire \blk00000001/sig000000d4 ;
  wire \blk00000001/sig000000d3 ;
  wire \blk00000001/sig000000d2 ;
  wire \blk00000001/sig000000d1 ;
  wire \blk00000001/sig000000d0 ;
  wire \blk00000001/sig000000cf ;
  wire \blk00000001/sig000000ce ;
  wire \blk00000001/sig000000cd ;
  wire \blk00000001/sig000000cc ;
  wire \blk00000001/sig000000cb ;
  wire \blk00000001/sig000000ca ;
  wire \blk00000001/sig000000c9 ;
  wire \blk00000001/sig000000c8 ;
  wire \blk00000001/sig000000c7 ;
  wire \blk00000001/sig000000c6 ;
  wire \blk00000001/sig000000c5 ;
  wire \blk00000001/sig000000c4 ;
  wire \blk00000001/sig000000c3 ;
  wire \blk00000001/sig000000c2 ;
  wire \blk00000001/sig000000c1 ;
  wire \blk00000001/sig000000c0 ;
  wire \blk00000001/sig000000bf ;
  wire \blk00000001/sig000000be ;
  wire \blk00000001/sig000000bd ;
  wire \blk00000001/sig000000bc ;
  wire \blk00000001/sig000000bb ;
  wire \blk00000001/sig000000ba ;
  wire \blk00000001/sig000000b9 ;
  wire \blk00000001/sig000000b8 ;
  wire \blk00000001/sig000000b7 ;
  wire \blk00000001/sig000000b6 ;
  wire \blk00000001/sig000000b5 ;
  wire \blk00000001/sig000000b4 ;
  wire \blk00000001/sig000000b3 ;
  wire \blk00000001/sig000000b2 ;
  wire \blk00000001/sig000000b1 ;
  wire \blk00000001/sig000000b0 ;
  wire \blk00000001/sig000000af ;
  wire \blk00000001/sig000000ae ;
  wire \blk00000001/sig000000ad ;
  wire \blk00000001/sig000000ac ;
  wire \blk00000001/sig000000ab ;
  wire \blk00000001/sig000000aa ;
  wire \blk00000001/sig000000a9 ;
  wire \blk00000001/sig000000a8 ;
  wire \blk00000001/sig000000a7 ;
  wire \blk00000001/sig000000a6 ;
  wire \blk00000001/sig000000a5 ;
  wire \blk00000001/sig000000a4 ;
  wire \blk00000001/sig000000a3 ;
  wire \blk00000001/sig000000a2 ;
  wire \blk00000001/sig000000a1 ;
  wire \blk00000001/sig000000a0 ;
  wire \blk00000001/sig0000009f ;
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig0000009d ;
  wire \blk00000001/sig0000009c ;
  wire \blk00000001/sig0000009b ;
  wire \blk00000001/sig0000009a ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig00000096 ;
  wire \blk00000001/sig00000095 ;
  wire \blk00000001/sig00000094 ;
  wire \blk00000001/sig00000093 ;
  wire \blk00000001/sig00000092 ;
  wire \blk00000001/sig00000091 ;
  wire \blk00000001/sig00000090 ;
  wire \blk00000001/sig0000008f ;
  wire \blk00000001/sig0000008e ;
  wire \blk00000001/sig0000008d ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig00000081 ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
  wire \blk00000001/sig00000079 ;
  wire \blk00000001/sig00000078 ;
  wire \blk00000001/sig00000077 ;
  wire \blk00000001/sig00000076 ;
  wire \blk00000001/sig00000075 ;
  wire \blk00000001/sig00000074 ;
  wire \blk00000001/sig00000073 ;
  wire \blk00000001/sig00000072 ;
  wire \blk00000001/sig00000071 ;
  wire \blk00000001/sig00000070 ;
  wire \blk00000001/sig0000006f ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire \blk00000001/sig00000029 ;
  wire \blk00000001/sig00000028 ;
  wire \NLW_blk00000001/blk00000027_P<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000027_BCOUT<0>_UNCONNECTED ;
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk0000014c  (
    .I0(b[16]),
    .I1(\blk00000001/sig0000012f ),
    .I2(a[0]),
    .O(\blk00000001/sig000000e4 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk0000014b  (
    .I0(b[16]),
    .I1(\blk00000001/sig0000012e ),
    .I2(a[0]),
    .O(\blk00000001/sig000000e3 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk0000014a  (
    .I0(b[16]),
    .I1(\blk00000001/sig0000012d ),
    .I2(a[0]),
    .O(\blk00000001/sig000000e2 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk00000149  (
    .I0(b[16]),
    .I1(\blk00000001/sig0000012c ),
    .I2(a[0]),
    .O(\blk00000001/sig000000e1 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk00000148  (
    .I0(b[15]),
    .I1(\blk00000001/sig0000012b ),
    .I2(a[0]),
    .O(\blk00000001/sig000000e0 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk00000147  (
    .I0(b[14]),
    .I1(\blk00000001/sig0000012a ),
    .I2(a[0]),
    .O(\blk00000001/sig000000df )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk00000146  (
    .I0(b[13]),
    .I1(\blk00000001/sig00000129 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000de )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk00000145  (
    .I0(b[12]),
    .I1(\blk00000001/sig00000128 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000dd )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk00000144  (
    .I0(b[11]),
    .I1(\blk00000001/sig00000127 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000dc )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk00000143  (
    .I0(b[10]),
    .I1(\blk00000001/sig00000138 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000ed )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk00000142  (
    .I0(b[9]),
    .I1(\blk00000001/sig00000137 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000ec )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk00000141  (
    .I0(b[8]),
    .I1(\blk00000001/sig00000136 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000eb )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk00000140  (
    .I0(b[7]),
    .I1(\blk00000001/sig00000135 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000ea )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk0000013f  (
    .I0(b[6]),
    .I1(\blk00000001/sig00000134 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000e9 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk0000013e  (
    .I0(b[5]),
    .I1(\blk00000001/sig00000133 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000e8 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk0000013d  (
    .I0(b[4]),
    .I1(\blk00000001/sig00000132 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000e7 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk0000013c  (
    .I0(b[3]),
    .I1(\blk00000001/sig00000131 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000e6 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk0000013b  (
    .I0(b[2]),
    .I1(\blk00000001/sig00000130 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000e5 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000001/blk0000013a  (
    .I0(b[1]),
    .I1(\blk00000001/sig00000126 ),
    .I2(a[0]),
    .O(\blk00000001/sig000000db )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk00000139  (
    .I0(b[0]),
    .I1(a[1]),
    .O(\blk00000001/sig000000ee )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk00000138  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[0]),
    .I3(b[1]),
    .O(\blk00000001/sig000000ef )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk00000137  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[1]),
    .I3(b[2]),
    .O(\blk00000001/sig000000f0 )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk00000136  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[2]),
    .I3(b[3]),
    .O(\blk00000001/sig000000f9 )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk00000135  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[3]),
    .I3(b[4]),
    .O(\blk00000001/sig000000fa )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk00000134  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[4]),
    .I3(b[5]),
    .O(\blk00000001/sig000000fb )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk00000133  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[5]),
    .I3(b[6]),
    .O(\blk00000001/sig000000fc )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk00000132  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[6]),
    .I3(b[7]),
    .O(\blk00000001/sig000000fd )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk00000131  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[7]),
    .I3(b[8]),
    .O(\blk00000001/sig000000fe )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk00000130  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[8]),
    .I3(b[9]),
    .O(\blk00000001/sig000000ff )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk0000012f  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[9]),
    .I3(b[10]),
    .O(\blk00000001/sig00000100 )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk0000012e  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[10]),
    .I3(b[11]),
    .O(\blk00000001/sig000000f1 )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk0000012d  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[11]),
    .I3(b[12]),
    .O(\blk00000001/sig000000f2 )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk0000012c  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[12]),
    .I3(b[13]),
    .O(\blk00000001/sig000000f3 )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk0000012b  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[13]),
    .I3(b[14]),
    .O(\blk00000001/sig000000f4 )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk0000012a  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[14]),
    .I3(b[15]),
    .O(\blk00000001/sig000000f5 )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \blk00000001/blk00000129  (
    .I0(a[1]),
    .I1(a[2]),
    .I2(b[15]),
    .I3(b[16]),
    .O(\blk00000001/sig000000f6 )
  );
  LUT3 #(
    .INIT ( 8'h48 ))
  \blk00000001/blk00000128  (
    .I0(a[1]),
    .I1(b[16]),
    .I2(a[2]),
    .O(\blk00000001/sig000000f7 )
  );
  LUT3 #(
    .INIT ( 8'h48 ))
  \blk00000001/blk00000127  (
    .I0(a[1]),
    .I1(b[16]),
    .I2(a[2]),
    .O(\blk00000001/sig000000f8 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk00000126  (
    .I0(b[0]),
    .I1(a[0]),
    .O(\blk00000001/sig00000125 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000125  (
    .C(clk),
    .D(\blk00000001/sig0000006f ),
    .Q(p[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000124  (
    .C(clk),
    .D(\blk00000001/sig0000007a ),
    .Q(p[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000123  (
    .C(clk),
    .D(\blk00000001/sig00000085 ),
    .Q(p[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000122  (
    .C(clk),
    .D(\blk00000001/sig0000008b ),
    .Q(p[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000121  (
    .C(clk),
    .D(\blk00000001/sig0000008c ),
    .Q(p[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000120  (
    .C(clk),
    .D(\blk00000001/sig0000008d ),
    .Q(p[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011f  (
    .C(clk),
    .D(\blk00000001/sig0000008e ),
    .Q(p[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011e  (
    .C(clk),
    .D(\blk00000001/sig0000008f ),
    .Q(p[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011d  (
    .C(clk),
    .D(\blk00000001/sig00000090 ),
    .Q(p[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011c  (
    .C(clk),
    .D(\blk00000001/sig00000091 ),
    .Q(p[12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011b  (
    .C(clk),
    .D(\blk00000001/sig00000070 ),
    .Q(p[13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000011a  (
    .C(clk),
    .D(\blk00000001/sig00000071 ),
    .Q(p[14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000119  (
    .C(clk),
    .D(\blk00000001/sig00000072 ),
    .Q(p[15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000118  (
    .C(clk),
    .D(\blk00000001/sig00000073 ),
    .Q(p[16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000117  (
    .C(clk),
    .D(\blk00000001/sig00000074 ),
    .Q(p[17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000116  (
    .C(clk),
    .D(\blk00000001/sig00000075 ),
    .Q(p[18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000115  (
    .C(clk),
    .D(\blk00000001/sig00000076 ),
    .Q(p[19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000114  (
    .C(clk),
    .D(\blk00000001/sig00000077 ),
    .Q(p[20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000113  (
    .C(clk),
    .D(\blk00000001/sig00000078 ),
    .Q(p[21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000112  (
    .C(clk),
    .D(\blk00000001/sig00000079 ),
    .Q(p[22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000111  (
    .C(clk),
    .D(\blk00000001/sig0000007b ),
    .Q(p[23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000110  (
    .C(clk),
    .D(\blk00000001/sig0000007c ),
    .Q(p[24])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010f  (
    .C(clk),
    .D(\blk00000001/sig0000007d ),
    .Q(p[25])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010e  (
    .C(clk),
    .D(\blk00000001/sig0000007e ),
    .Q(p[26])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010d  (
    .C(clk),
    .D(\blk00000001/sig0000007f ),
    .Q(p[27])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010c  (
    .C(clk),
    .D(\blk00000001/sig00000080 ),
    .Q(p[28])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010b  (
    .C(clk),
    .D(\blk00000001/sig00000081 ),
    .Q(p[29])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010a  (
    .C(clk),
    .D(\blk00000001/sig00000082 ),
    .Q(p[30])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000109  (
    .C(clk),
    .D(\blk00000001/sig00000083 ),
    .Q(p[31])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000108  (
    .C(clk),
    .D(\blk00000001/sig00000084 ),
    .Q(p[32])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000107  (
    .C(clk),
    .D(\blk00000001/sig00000086 ),
    .Q(p[33])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000106  (
    .C(clk),
    .D(\blk00000001/sig00000087 ),
    .Q(p[34])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000105  (
    .C(clk),
    .D(\blk00000001/sig00000088 ),
    .Q(p[35])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000104  (
    .C(clk),
    .D(\blk00000001/sig00000089 ),
    .Q(p[36])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000103  (
    .C(clk),
    .D(\blk00000001/sig0000008a ),
    .Q(p[37])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000102  (
    .I0(\blk00000001/sig000000a6 ),
    .I1(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig0000004c )
  );
  MUXCY   \blk00000001/blk00000101  (
    .CI(\blk00000001/sig00000028 ),
    .DI(\blk00000001/sig000000a6 ),
    .S(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig0000002a )
  );
  XORCY   \blk00000001/blk00000100  (
    .CI(\blk00000001/sig00000028 ),
    .LI(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig0000006f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ff  (
    .I0(\blk00000001/sig000000b1 ),
    .I1(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig00000057 )
  );
  MUXCY   \blk00000001/blk000000fe  (
    .CI(\blk00000001/sig0000002a ),
    .DI(\blk00000001/sig000000b1 ),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000035 )
  );
  XORCY   \blk00000001/blk000000fd  (
    .CI(\blk00000001/sig0000002a ),
    .LI(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000007a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000fc  (
    .I0(\blk00000001/sig000000bc ),
    .I1(\blk00000001/sig000000a1 ),
    .O(\blk00000001/sig00000062 )
  );
  MUXCY   \blk00000001/blk000000fb  (
    .CI(\blk00000001/sig00000035 ),
    .DI(\blk00000001/sig000000bc ),
    .S(\blk00000001/sig00000062 ),
    .O(\blk00000001/sig00000040 )
  );
  XORCY   \blk00000001/blk000000fa  (
    .CI(\blk00000001/sig00000035 ),
    .LI(\blk00000001/sig00000062 ),
    .O(\blk00000001/sig00000085 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f9  (
    .I0(\blk00000001/sig000000c2 ),
    .I1(\blk00000001/sig000000a2 ),
    .O(\blk00000001/sig00000068 )
  );
  MUXCY   \blk00000001/blk000000f8  (
    .CI(\blk00000001/sig00000040 ),
    .DI(\blk00000001/sig000000c2 ),
    .S(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig00000045 )
  );
  XORCY   \blk00000001/blk000000f7  (
    .CI(\blk00000001/sig00000040 ),
    .LI(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig0000008b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f6  (
    .I0(\blk00000001/sig000000c3 ),
    .I1(\blk00000001/sig000000a3 ),
    .O(\blk00000001/sig00000069 )
  );
  MUXCY   \blk00000001/blk000000f5  (
    .CI(\blk00000001/sig00000045 ),
    .DI(\blk00000001/sig000000c3 ),
    .S(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk000000f4  (
    .CI(\blk00000001/sig00000045 ),
    .LI(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig0000008c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f3  (
    .I0(\blk00000001/sig000000c4 ),
    .I1(\blk00000001/sig000000a4 ),
    .O(\blk00000001/sig0000006a )
  );
  MUXCY   \blk00000001/blk000000f2  (
    .CI(\blk00000001/sig00000046 ),
    .DI(\blk00000001/sig000000c4 ),
    .S(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig00000047 )
  );
  XORCY   \blk00000001/blk000000f1  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig0000008d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f0  (
    .I0(\blk00000001/sig000000c5 ),
    .I1(\blk00000001/sig000000a5 ),
    .O(\blk00000001/sig0000006b )
  );
  MUXCY   \blk00000001/blk000000ef  (
    .CI(\blk00000001/sig00000047 ),
    .DI(\blk00000001/sig000000c5 ),
    .S(\blk00000001/sig0000006b ),
    .O(\blk00000001/sig00000048 )
  );
  XORCY   \blk00000001/blk000000ee  (
    .CI(\blk00000001/sig00000047 ),
    .LI(\blk00000001/sig0000006b ),
    .O(\blk00000001/sig0000008e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ed  (
    .I0(\blk00000001/sig000000c6 ),
    .I1(\blk00000001/sig00000093 ),
    .O(\blk00000001/sig0000006c )
  );
  MUXCY   \blk00000001/blk000000ec  (
    .CI(\blk00000001/sig00000048 ),
    .DI(\blk00000001/sig000000c6 ),
    .S(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig00000049 )
  );
  XORCY   \blk00000001/blk000000eb  (
    .CI(\blk00000001/sig00000048 ),
    .LI(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig0000008f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ea  (
    .I0(\blk00000001/sig000000c7 ),
    .I1(\blk00000001/sig00000094 ),
    .O(\blk00000001/sig0000006d )
  );
  MUXCY   \blk00000001/blk000000e9  (
    .CI(\blk00000001/sig00000049 ),
    .DI(\blk00000001/sig000000c7 ),
    .S(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig0000004a )
  );
  XORCY   \blk00000001/blk000000e8  (
    .CI(\blk00000001/sig00000049 ),
    .LI(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig00000090 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e7  (
    .I0(\blk00000001/sig000000c8 ),
    .I1(\blk00000001/sig00000095 ),
    .O(\blk00000001/sig0000006e )
  );
  MUXCY   \blk00000001/blk000000e6  (
    .CI(\blk00000001/sig0000004a ),
    .DI(\blk00000001/sig000000c8 ),
    .S(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig0000004b )
  );
  XORCY   \blk00000001/blk000000e5  (
    .CI(\blk00000001/sig0000004a ),
    .LI(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000091 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e4  (
    .I0(\blk00000001/sig000000a7 ),
    .I1(\blk00000001/sig00000096 ),
    .O(\blk00000001/sig0000004d )
  );
  MUXCY   \blk00000001/blk000000e3  (
    .CI(\blk00000001/sig0000004b ),
    .DI(\blk00000001/sig000000a7 ),
    .S(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig0000002b )
  );
  XORCY   \blk00000001/blk000000e2  (
    .CI(\blk00000001/sig0000004b ),
    .LI(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig00000070 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e1  (
    .I0(\blk00000001/sig000000a8 ),
    .I1(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000004e )
  );
  MUXCY   \blk00000001/blk000000e0  (
    .CI(\blk00000001/sig0000002b ),
    .DI(\blk00000001/sig000000a8 ),
    .S(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig0000002c )
  );
  XORCY   \blk00000001/blk000000df  (
    .CI(\blk00000001/sig0000002b ),
    .LI(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig00000071 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000de  (
    .I0(\blk00000001/sig000000a9 ),
    .I1(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig0000004f )
  );
  MUXCY   \blk00000001/blk000000dd  (
    .CI(\blk00000001/sig0000002c ),
    .DI(\blk00000001/sig000000a9 ),
    .S(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig0000002d )
  );
  XORCY   \blk00000001/blk000000dc  (
    .CI(\blk00000001/sig0000002c ),
    .LI(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig00000072 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000db  (
    .I0(\blk00000001/sig000000aa ),
    .I1(\blk00000001/sig00000099 ),
    .O(\blk00000001/sig00000050 )
  );
  MUXCY   \blk00000001/blk000000da  (
    .CI(\blk00000001/sig0000002d ),
    .DI(\blk00000001/sig000000aa ),
    .S(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig0000002e )
  );
  XORCY   \blk00000001/blk000000d9  (
    .CI(\blk00000001/sig0000002d ),
    .LI(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig00000073 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d8  (
    .I0(\blk00000001/sig000000ab ),
    .I1(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig00000051 )
  );
  MUXCY   \blk00000001/blk000000d7  (
    .CI(\blk00000001/sig0000002e ),
    .DI(\blk00000001/sig000000ab ),
    .S(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig0000002f )
  );
  XORCY   \blk00000001/blk000000d6  (
    .CI(\blk00000001/sig0000002e ),
    .LI(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig00000074 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d5  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig00000052 )
  );
  MUXCY   \blk00000001/blk000000d4  (
    .CI(\blk00000001/sig0000002f ),
    .DI(\blk00000001/sig000000ac ),
    .S(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig00000030 )
  );
  XORCY   \blk00000001/blk000000d3  (
    .CI(\blk00000001/sig0000002f ),
    .LI(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig00000075 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d2  (
    .I0(\blk00000001/sig000000ad ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000053 )
  );
  MUXCY   \blk00000001/blk000000d1  (
    .CI(\blk00000001/sig00000030 ),
    .DI(\blk00000001/sig000000ad ),
    .S(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig00000031 )
  );
  XORCY   \blk00000001/blk000000d0  (
    .CI(\blk00000001/sig00000030 ),
    .LI(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig00000076 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000cf  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000054 )
  );
  MUXCY   \blk00000001/blk000000ce  (
    .CI(\blk00000001/sig00000031 ),
    .DI(\blk00000001/sig000000ae ),
    .S(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig00000032 )
  );
  XORCY   \blk00000001/blk000000cd  (
    .CI(\blk00000001/sig00000031 ),
    .LI(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig00000077 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000cc  (
    .I0(\blk00000001/sig000000af ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000055 )
  );
  MUXCY   \blk00000001/blk000000cb  (
    .CI(\blk00000001/sig00000032 ),
    .DI(\blk00000001/sig000000af ),
    .S(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000033 )
  );
  XORCY   \blk00000001/blk000000ca  (
    .CI(\blk00000001/sig00000032 ),
    .LI(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000078 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c9  (
    .I0(\blk00000001/sig000000b0 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000056 )
  );
  MUXCY   \blk00000001/blk000000c8  (
    .CI(\blk00000001/sig00000033 ),
    .DI(\blk00000001/sig000000b0 ),
    .S(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000034 )
  );
  XORCY   \blk00000001/blk000000c7  (
    .CI(\blk00000001/sig00000033 ),
    .LI(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000079 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c6  (
    .I0(\blk00000001/sig000000b2 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000058 )
  );
  MUXCY   \blk00000001/blk000000c5  (
    .CI(\blk00000001/sig00000034 ),
    .DI(\blk00000001/sig000000b2 ),
    .S(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig00000036 )
  );
  XORCY   \blk00000001/blk000000c4  (
    .CI(\blk00000001/sig00000034 ),
    .LI(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig0000007b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c3  (
    .I0(\blk00000001/sig000000b3 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000059 )
  );
  MUXCY   \blk00000001/blk000000c2  (
    .CI(\blk00000001/sig00000036 ),
    .DI(\blk00000001/sig000000b3 ),
    .S(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig00000037 )
  );
  XORCY   \blk00000001/blk000000c1  (
    .CI(\blk00000001/sig00000036 ),
    .LI(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig0000007c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000c0  (
    .I0(\blk00000001/sig000000b4 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig0000005a )
  );
  MUXCY   \blk00000001/blk000000bf  (
    .CI(\blk00000001/sig00000037 ),
    .DI(\blk00000001/sig000000b4 ),
    .S(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000038 )
  );
  XORCY   \blk00000001/blk000000be  (
    .CI(\blk00000001/sig00000037 ),
    .LI(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig0000007d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000bd  (
    .I0(\blk00000001/sig000000b5 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig0000005b )
  );
  MUXCY   \blk00000001/blk000000bc  (
    .CI(\blk00000001/sig00000038 ),
    .DI(\blk00000001/sig000000b5 ),
    .S(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000039 )
  );
  XORCY   \blk00000001/blk000000bb  (
    .CI(\blk00000001/sig00000038 ),
    .LI(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig0000007e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ba  (
    .I0(\blk00000001/sig000000b6 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig0000005c )
  );
  MUXCY   \blk00000001/blk000000b9  (
    .CI(\blk00000001/sig00000039 ),
    .DI(\blk00000001/sig000000b6 ),
    .S(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig0000003a )
  );
  XORCY   \blk00000001/blk000000b8  (
    .CI(\blk00000001/sig00000039 ),
    .LI(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig0000007f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b7  (
    .I0(\blk00000001/sig000000b7 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig0000005d )
  );
  MUXCY   \blk00000001/blk000000b6  (
    .CI(\blk00000001/sig0000003a ),
    .DI(\blk00000001/sig000000b7 ),
    .S(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig0000003b )
  );
  XORCY   \blk00000001/blk000000b5  (
    .CI(\blk00000001/sig0000003a ),
    .LI(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000080 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b4  (
    .I0(\blk00000001/sig000000b8 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig0000005e )
  );
  MUXCY   \blk00000001/blk000000b3  (
    .CI(\blk00000001/sig0000003b ),
    .DI(\blk00000001/sig000000b8 ),
    .S(\blk00000001/sig0000005e ),
    .O(\blk00000001/sig0000003c )
  );
  XORCY   \blk00000001/blk000000b2  (
    .CI(\blk00000001/sig0000003b ),
    .LI(\blk00000001/sig0000005e ),
    .O(\blk00000001/sig00000081 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b1  (
    .I0(\blk00000001/sig000000b9 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig0000005f )
  );
  MUXCY   \blk00000001/blk000000b0  (
    .CI(\blk00000001/sig0000003c ),
    .DI(\blk00000001/sig000000b9 ),
    .S(\blk00000001/sig0000005f ),
    .O(\blk00000001/sig0000003d )
  );
  XORCY   \blk00000001/blk000000af  (
    .CI(\blk00000001/sig0000003c ),
    .LI(\blk00000001/sig0000005f ),
    .O(\blk00000001/sig00000082 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ae  (
    .I0(\blk00000001/sig000000ba ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000060 )
  );
  MUXCY   \blk00000001/blk000000ad  (
    .CI(\blk00000001/sig0000003d ),
    .DI(\blk00000001/sig000000ba ),
    .S(\blk00000001/sig00000060 ),
    .O(\blk00000001/sig0000003e )
  );
  XORCY   \blk00000001/blk000000ac  (
    .CI(\blk00000001/sig0000003d ),
    .LI(\blk00000001/sig00000060 ),
    .O(\blk00000001/sig00000083 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ab  (
    .I0(\blk00000001/sig000000bb ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000061 )
  );
  MUXCY   \blk00000001/blk000000aa  (
    .CI(\blk00000001/sig0000003e ),
    .DI(\blk00000001/sig000000bb ),
    .S(\blk00000001/sig00000061 ),
    .O(\blk00000001/sig0000003f )
  );
  XORCY   \blk00000001/blk000000a9  (
    .CI(\blk00000001/sig0000003e ),
    .LI(\blk00000001/sig00000061 ),
    .O(\blk00000001/sig00000084 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000a8  (
    .I0(\blk00000001/sig000000bd ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000063 )
  );
  MUXCY   \blk00000001/blk000000a7  (
    .CI(\blk00000001/sig0000003f ),
    .DI(\blk00000001/sig000000bd ),
    .S(\blk00000001/sig00000063 ),
    .O(\blk00000001/sig00000041 )
  );
  XORCY   \blk00000001/blk000000a6  (
    .CI(\blk00000001/sig0000003f ),
    .LI(\blk00000001/sig00000063 ),
    .O(\blk00000001/sig00000086 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000a5  (
    .I0(\blk00000001/sig000000be ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000064 )
  );
  MUXCY   \blk00000001/blk000000a4  (
    .CI(\blk00000001/sig00000041 ),
    .DI(\blk00000001/sig000000be ),
    .S(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig00000042 )
  );
  XORCY   \blk00000001/blk000000a3  (
    .CI(\blk00000001/sig00000041 ),
    .LI(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig00000087 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000a2  (
    .I0(\blk00000001/sig000000bf ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000065 )
  );
  MUXCY   \blk00000001/blk000000a1  (
    .CI(\blk00000001/sig00000042 ),
    .DI(\blk00000001/sig000000bf ),
    .S(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig00000043 )
  );
  XORCY   \blk00000001/blk000000a0  (
    .CI(\blk00000001/sig00000042 ),
    .LI(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig00000088 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000009f  (
    .I0(\blk00000001/sig000000c0 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000066 )
  );
  MUXCY   \blk00000001/blk0000009e  (
    .CI(\blk00000001/sig00000043 ),
    .DI(\blk00000001/sig000000c0 ),
    .S(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig00000044 )
  );
  XORCY   \blk00000001/blk0000009d  (
    .CI(\blk00000001/sig00000043 ),
    .LI(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig00000089 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000009c  (
    .I0(\blk00000001/sig000000c1 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig00000067 )
  );
  XORCY   \blk00000001/blk0000009b  (
    .CI(\blk00000001/sig00000044 ),
    .LI(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig0000008a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000009a  (
    .C(clk),
    .D(\blk00000001/sig0000009e ),
    .Q(p[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000099  (
    .C(clk),
    .D(\blk00000001/sig0000009d ),
    .Q(p[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000098  (
    .C(clk),
    .D(\blk00000001/sig00000092 ),
    .Q(p[0])
  );
  XORCY   \blk00000001/blk00000097  (
    .CI(\blk00000001/sig0000011b ),
    .LI(\blk00000001/sig000000f8 ),
    .O(\blk00000001/sig0000012f )
  );
  XORCY   \blk00000001/blk00000096  (
    .CI(\blk00000001/sig0000011a ),
    .LI(\blk00000001/sig000000f7 ),
    .O(\blk00000001/sig0000012e )
  );
  MUXCY   \blk00000001/blk00000095  (
    .CI(\blk00000001/sig0000011a ),
    .DI(\blk00000001/sig0000010a ),
    .S(\blk00000001/sig000000f7 ),
    .O(\blk00000001/sig0000011b )
  );
  MULT_AND   \blk00000001/blk00000094  (
    .I0(a[2]),
    .I1(b[16]),
    .LO(\blk00000001/sig0000010a )
  );
  XORCY   \blk00000001/blk00000093  (
    .CI(\blk00000001/sig00000119 ),
    .LI(\blk00000001/sig000000f6 ),
    .O(\blk00000001/sig0000012d )
  );
  MUXCY   \blk00000001/blk00000092  (
    .CI(\blk00000001/sig00000119 ),
    .DI(\blk00000001/sig00000109 ),
    .S(\blk00000001/sig000000f6 ),
    .O(\blk00000001/sig0000011a )
  );
  MULT_AND   \blk00000001/blk00000091  (
    .I0(a[2]),
    .I1(b[15]),
    .LO(\blk00000001/sig00000109 )
  );
  XORCY   \blk00000001/blk00000090  (
    .CI(\blk00000001/sig00000118 ),
    .LI(\blk00000001/sig000000f5 ),
    .O(\blk00000001/sig0000012c )
  );
  MUXCY   \blk00000001/blk0000008f  (
    .CI(\blk00000001/sig00000118 ),
    .DI(\blk00000001/sig00000108 ),
    .S(\blk00000001/sig000000f5 ),
    .O(\blk00000001/sig00000119 )
  );
  MULT_AND   \blk00000001/blk0000008e  (
    .I0(a[2]),
    .I1(b[14]),
    .LO(\blk00000001/sig00000108 )
  );
  XORCY   \blk00000001/blk0000008d  (
    .CI(\blk00000001/sig00000117 ),
    .LI(\blk00000001/sig000000f4 ),
    .O(\blk00000001/sig0000012b )
  );
  MUXCY   \blk00000001/blk0000008c  (
    .CI(\blk00000001/sig00000117 ),
    .DI(\blk00000001/sig00000107 ),
    .S(\blk00000001/sig000000f4 ),
    .O(\blk00000001/sig00000118 )
  );
  MULT_AND   \blk00000001/blk0000008b  (
    .I0(a[2]),
    .I1(b[13]),
    .LO(\blk00000001/sig00000107 )
  );
  XORCY   \blk00000001/blk0000008a  (
    .CI(\blk00000001/sig00000116 ),
    .LI(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig0000012a )
  );
  MUXCY   \blk00000001/blk00000089  (
    .CI(\blk00000001/sig00000116 ),
    .DI(\blk00000001/sig00000106 ),
    .S(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000117 )
  );
  MULT_AND   \blk00000001/blk00000088  (
    .I0(a[2]),
    .I1(b[12]),
    .LO(\blk00000001/sig00000106 )
  );
  XORCY   \blk00000001/blk00000087  (
    .CI(\blk00000001/sig00000115 ),
    .LI(\blk00000001/sig000000f2 ),
    .O(\blk00000001/sig00000129 )
  );
  MUXCY   \blk00000001/blk00000086  (
    .CI(\blk00000001/sig00000115 ),
    .DI(\blk00000001/sig00000105 ),
    .S(\blk00000001/sig000000f2 ),
    .O(\blk00000001/sig00000116 )
  );
  MULT_AND   \blk00000001/blk00000085  (
    .I0(a[2]),
    .I1(b[11]),
    .LO(\blk00000001/sig00000105 )
  );
  XORCY   \blk00000001/blk00000084  (
    .CI(\blk00000001/sig00000114 ),
    .LI(\blk00000001/sig000000f1 ),
    .O(\blk00000001/sig00000128 )
  );
  MUXCY   \blk00000001/blk00000083  (
    .CI(\blk00000001/sig00000114 ),
    .DI(\blk00000001/sig00000104 ),
    .S(\blk00000001/sig000000f1 ),
    .O(\blk00000001/sig00000115 )
  );
  MULT_AND   \blk00000001/blk00000082  (
    .I0(a[2]),
    .I1(b[10]),
    .LO(\blk00000001/sig00000104 )
  );
  XORCY   \blk00000001/blk00000081  (
    .CI(\blk00000001/sig00000124 ),
    .LI(\blk00000001/sig00000100 ),
    .O(\blk00000001/sig00000127 )
  );
  MUXCY   \blk00000001/blk00000080  (
    .CI(\blk00000001/sig00000124 ),
    .DI(\blk00000001/sig00000112 ),
    .S(\blk00000001/sig00000100 ),
    .O(\blk00000001/sig00000114 )
  );
  MULT_AND   \blk00000001/blk0000007f  (
    .I0(a[2]),
    .I1(b[9]),
    .LO(\blk00000001/sig00000112 )
  );
  XORCY   \blk00000001/blk0000007e  (
    .CI(\blk00000001/sig00000123 ),
    .LI(\blk00000001/sig000000ff ),
    .O(\blk00000001/sig00000138 )
  );
  MUXCY   \blk00000001/blk0000007d  (
    .CI(\blk00000001/sig00000123 ),
    .DI(\blk00000001/sig00000111 ),
    .S(\blk00000001/sig000000ff ),
    .O(\blk00000001/sig00000124 )
  );
  MULT_AND   \blk00000001/blk0000007c  (
    .I0(a[2]),
    .I1(b[8]),
    .LO(\blk00000001/sig00000111 )
  );
  XORCY   \blk00000001/blk0000007b  (
    .CI(\blk00000001/sig00000122 ),
    .LI(\blk00000001/sig000000fe ),
    .O(\blk00000001/sig00000137 )
  );
  MUXCY   \blk00000001/blk0000007a  (
    .CI(\blk00000001/sig00000122 ),
    .DI(\blk00000001/sig00000110 ),
    .S(\blk00000001/sig000000fe ),
    .O(\blk00000001/sig00000123 )
  );
  MULT_AND   \blk00000001/blk00000079  (
    .I0(a[2]),
    .I1(b[7]),
    .LO(\blk00000001/sig00000110 )
  );
  XORCY   \blk00000001/blk00000078  (
    .CI(\blk00000001/sig00000121 ),
    .LI(\blk00000001/sig000000fd ),
    .O(\blk00000001/sig00000136 )
  );
  MUXCY   \blk00000001/blk00000077  (
    .CI(\blk00000001/sig00000121 ),
    .DI(\blk00000001/sig0000010f ),
    .S(\blk00000001/sig000000fd ),
    .O(\blk00000001/sig00000122 )
  );
  MULT_AND   \blk00000001/blk00000076  (
    .I0(a[2]),
    .I1(b[6]),
    .LO(\blk00000001/sig0000010f )
  );
  XORCY   \blk00000001/blk00000075  (
    .CI(\blk00000001/sig00000120 ),
    .LI(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig00000135 )
  );
  MUXCY   \blk00000001/blk00000074  (
    .CI(\blk00000001/sig00000120 ),
    .DI(\blk00000001/sig0000010e ),
    .S(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig00000121 )
  );
  MULT_AND   \blk00000001/blk00000073  (
    .I0(a[2]),
    .I1(b[5]),
    .LO(\blk00000001/sig0000010e )
  );
  XORCY   \blk00000001/blk00000072  (
    .CI(\blk00000001/sig0000011f ),
    .LI(\blk00000001/sig000000fb ),
    .O(\blk00000001/sig00000134 )
  );
  MUXCY   \blk00000001/blk00000071  (
    .CI(\blk00000001/sig0000011f ),
    .DI(\blk00000001/sig0000010d ),
    .S(\blk00000001/sig000000fb ),
    .O(\blk00000001/sig00000120 )
  );
  MULT_AND   \blk00000001/blk00000070  (
    .I0(a[2]),
    .I1(b[4]),
    .LO(\blk00000001/sig0000010d )
  );
  XORCY   \blk00000001/blk0000006f  (
    .CI(\blk00000001/sig0000011e ),
    .LI(\blk00000001/sig000000fa ),
    .O(\blk00000001/sig00000133 )
  );
  MUXCY   \blk00000001/blk0000006e  (
    .CI(\blk00000001/sig0000011e ),
    .DI(\blk00000001/sig0000010c ),
    .S(\blk00000001/sig000000fa ),
    .O(\blk00000001/sig0000011f )
  );
  MULT_AND   \blk00000001/blk0000006d  (
    .I0(a[2]),
    .I1(b[3]),
    .LO(\blk00000001/sig0000010c )
  );
  XORCY   \blk00000001/blk0000006c  (
    .CI(\blk00000001/sig0000011d ),
    .LI(\blk00000001/sig000000f9 ),
    .O(\blk00000001/sig00000132 )
  );
  MUXCY   \blk00000001/blk0000006b  (
    .CI(\blk00000001/sig0000011d ),
    .DI(\blk00000001/sig0000010b ),
    .S(\blk00000001/sig000000f9 ),
    .O(\blk00000001/sig0000011e )
  );
  MULT_AND   \blk00000001/blk0000006a  (
    .I0(a[2]),
    .I1(b[2]),
    .LO(\blk00000001/sig0000010b )
  );
  XORCY   \blk00000001/blk00000069  (
    .CI(\blk00000001/sig0000011c ),
    .LI(\blk00000001/sig000000f0 ),
    .O(\blk00000001/sig00000131 )
  );
  MUXCY   \blk00000001/blk00000068  (
    .CI(\blk00000001/sig0000011c ),
    .DI(\blk00000001/sig00000103 ),
    .S(\blk00000001/sig000000f0 ),
    .O(\blk00000001/sig0000011d )
  );
  MULT_AND   \blk00000001/blk00000067  (
    .I0(a[2]),
    .I1(b[1]),
    .LO(\blk00000001/sig00000103 )
  );
  XORCY   \blk00000001/blk00000066  (
    .CI(\blk00000001/sig00000113 ),
    .LI(\blk00000001/sig000000ef ),
    .O(\blk00000001/sig00000130 )
  );
  MUXCY   \blk00000001/blk00000065  (
    .CI(\blk00000001/sig00000113 ),
    .DI(\blk00000001/sig00000102 ),
    .S(\blk00000001/sig000000ef ),
    .O(\blk00000001/sig0000011c )
  );
  MULT_AND   \blk00000001/blk00000064  (
    .I0(a[2]),
    .I1(b[0]),
    .LO(\blk00000001/sig00000102 )
  );
  XORCY   \blk00000001/blk00000063  (
    .CI(\blk00000001/sig00000028 ),
    .LI(\blk00000001/sig000000ee ),
    .O(\blk00000001/sig00000126 )
  );
  MUXCY   \blk00000001/blk00000062  (
    .CI(\blk00000001/sig00000028 ),
    .DI(\blk00000001/sig00000101 ),
    .S(\blk00000001/sig000000ee ),
    .O(\blk00000001/sig00000113 )
  );
  MULT_AND   \blk00000001/blk00000061  (
    .I0(a[1]),
    .I1(b[0]),
    .LO(\blk00000001/sig00000101 )
  );
  XORCY   \blk00000001/blk00000060  (
    .CI(\blk00000001/sig000000d1 ),
    .LI(\blk00000001/sig000000e4 ),
    .O(\blk00000001/sig00000142 )
  );
  XORCY   \blk00000001/blk0000005f  (
    .CI(\blk00000001/sig000000d0 ),
    .LI(\blk00000001/sig000000e3 ),
    .O(\blk00000001/sig00000141 )
  );
  MUXCY   \blk00000001/blk0000005e  (
    .CI(\blk00000001/sig000000d0 ),
    .DI(\blk00000001/sig0000012e ),
    .S(\blk00000001/sig000000e3 ),
    .O(\blk00000001/sig000000d1 )
  );
  XORCY   \blk00000001/blk0000005d  (
    .CI(\blk00000001/sig000000cf ),
    .LI(\blk00000001/sig000000e2 ),
    .O(\blk00000001/sig00000140 )
  );
  MUXCY   \blk00000001/blk0000005c  (
    .CI(\blk00000001/sig000000cf ),
    .DI(\blk00000001/sig0000012d ),
    .S(\blk00000001/sig000000e2 ),
    .O(\blk00000001/sig000000d0 )
  );
  XORCY   \blk00000001/blk0000005b  (
    .CI(\blk00000001/sig000000ce ),
    .LI(\blk00000001/sig000000e1 ),
    .O(\blk00000001/sig0000013f )
  );
  MUXCY   \blk00000001/blk0000005a  (
    .CI(\blk00000001/sig000000ce ),
    .DI(\blk00000001/sig0000012c ),
    .S(\blk00000001/sig000000e1 ),
    .O(\blk00000001/sig000000cf )
  );
  XORCY   \blk00000001/blk00000059  (
    .CI(\blk00000001/sig000000cd ),
    .LI(\blk00000001/sig000000e0 ),
    .O(\blk00000001/sig0000013e )
  );
  MUXCY   \blk00000001/blk00000058  (
    .CI(\blk00000001/sig000000cd ),
    .DI(\blk00000001/sig0000012b ),
    .S(\blk00000001/sig000000e0 ),
    .O(\blk00000001/sig000000ce )
  );
  XORCY   \blk00000001/blk00000057  (
    .CI(\blk00000001/sig000000cc ),
    .LI(\blk00000001/sig000000df ),
    .O(\blk00000001/sig0000013d )
  );
  MUXCY   \blk00000001/blk00000056  (
    .CI(\blk00000001/sig000000cc ),
    .DI(\blk00000001/sig0000012a ),
    .S(\blk00000001/sig000000df ),
    .O(\blk00000001/sig000000cd )
  );
  XORCY   \blk00000001/blk00000055  (
    .CI(\blk00000001/sig000000cb ),
    .LI(\blk00000001/sig000000de ),
    .O(\blk00000001/sig0000013c )
  );
  MUXCY   \blk00000001/blk00000054  (
    .CI(\blk00000001/sig000000cb ),
    .DI(\blk00000001/sig00000129 ),
    .S(\blk00000001/sig000000de ),
    .O(\blk00000001/sig000000cc )
  );
  XORCY   \blk00000001/blk00000053  (
    .CI(\blk00000001/sig000000ca ),
    .LI(\blk00000001/sig000000dd ),
    .O(\blk00000001/sig0000013b )
  );
  MUXCY   \blk00000001/blk00000052  (
    .CI(\blk00000001/sig000000ca ),
    .DI(\blk00000001/sig00000128 ),
    .S(\blk00000001/sig000000dd ),
    .O(\blk00000001/sig000000cb )
  );
  XORCY   \blk00000001/blk00000051  (
    .CI(\blk00000001/sig000000da ),
    .LI(\blk00000001/sig000000dc ),
    .O(\blk00000001/sig0000013a )
  );
  MUXCY   \blk00000001/blk00000050  (
    .CI(\blk00000001/sig000000da ),
    .DI(\blk00000001/sig00000127 ),
    .S(\blk00000001/sig000000dc ),
    .O(\blk00000001/sig000000ca )
  );
  XORCY   \blk00000001/blk0000004f  (
    .CI(\blk00000001/sig000000d9 ),
    .LI(\blk00000001/sig000000ed ),
    .O(\blk00000001/sig00000139 )
  );
  MUXCY   \blk00000001/blk0000004e  (
    .CI(\blk00000001/sig000000d9 ),
    .DI(\blk00000001/sig00000138 ),
    .S(\blk00000001/sig000000ed ),
    .O(\blk00000001/sig000000da )
  );
  XORCY   \blk00000001/blk0000004d  (
    .CI(\blk00000001/sig000000d8 ),
    .LI(\blk00000001/sig000000ec ),
    .O(\blk00000001/sig0000014b )
  );
  MUXCY   \blk00000001/blk0000004c  (
    .CI(\blk00000001/sig000000d8 ),
    .DI(\blk00000001/sig00000137 ),
    .S(\blk00000001/sig000000ec ),
    .O(\blk00000001/sig000000d9 )
  );
  XORCY   \blk00000001/blk0000004b  (
    .CI(\blk00000001/sig000000d7 ),
    .LI(\blk00000001/sig000000eb ),
    .O(\blk00000001/sig0000014a )
  );
  MUXCY   \blk00000001/blk0000004a  (
    .CI(\blk00000001/sig000000d7 ),
    .DI(\blk00000001/sig00000136 ),
    .S(\blk00000001/sig000000eb ),
    .O(\blk00000001/sig000000d8 )
  );
  XORCY   \blk00000001/blk00000049  (
    .CI(\blk00000001/sig000000d6 ),
    .LI(\blk00000001/sig000000ea ),
    .O(\blk00000001/sig00000149 )
  );
  MUXCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig000000d6 ),
    .DI(\blk00000001/sig00000135 ),
    .S(\blk00000001/sig000000ea ),
    .O(\blk00000001/sig000000d7 )
  );
  XORCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig000000d5 ),
    .LI(\blk00000001/sig000000e9 ),
    .O(\blk00000001/sig00000148 )
  );
  MUXCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig000000d5 ),
    .DI(\blk00000001/sig00000134 ),
    .S(\blk00000001/sig000000e9 ),
    .O(\blk00000001/sig000000d6 )
  );
  XORCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig000000d4 ),
    .LI(\blk00000001/sig000000e8 ),
    .O(\blk00000001/sig00000147 )
  );
  MUXCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig000000d4 ),
    .DI(\blk00000001/sig00000133 ),
    .S(\blk00000001/sig000000e8 ),
    .O(\blk00000001/sig000000d5 )
  );
  XORCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig000000d3 ),
    .LI(\blk00000001/sig000000e7 ),
    .O(\blk00000001/sig00000146 )
  );
  MUXCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig000000d3 ),
    .DI(\blk00000001/sig00000132 ),
    .S(\blk00000001/sig000000e7 ),
    .O(\blk00000001/sig000000d4 )
  );
  XORCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig000000d2 ),
    .LI(\blk00000001/sig000000e6 ),
    .O(\blk00000001/sig00000145 )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig000000d2 ),
    .DI(\blk00000001/sig00000131 ),
    .S(\blk00000001/sig000000e6 ),
    .O(\blk00000001/sig000000d3 )
  );
  XORCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig000000c9 ),
    .LI(\blk00000001/sig000000e5 ),
    .O(\blk00000001/sig00000144 )
  );
  MUXCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig000000c9 ),
    .DI(\blk00000001/sig00000130 ),
    .S(\blk00000001/sig000000e5 ),
    .O(\blk00000001/sig000000d2 )
  );
  XORCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig00000028 ),
    .LI(\blk00000001/sig000000db ),
    .O(\blk00000001/sig00000143 )
  );
  MUXCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig00000028 ),
    .DI(\blk00000001/sig00000126 ),
    .S(\blk00000001/sig000000db ),
    .O(\blk00000001/sig000000c9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003b  (
    .C(clk),
    .D(\blk00000001/sig00000142 ),
    .Q(\blk00000001/sig0000009c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003a  (
    .C(clk),
    .D(\blk00000001/sig00000141 ),
    .Q(\blk00000001/sig0000009b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000039  (
    .C(clk),
    .D(\blk00000001/sig00000140 ),
    .Q(\blk00000001/sig0000009a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000038  (
    .C(clk),
    .D(\blk00000001/sig0000013f ),
    .Q(\blk00000001/sig00000099 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000037  (
    .C(clk),
    .D(\blk00000001/sig0000013e ),
    .Q(\blk00000001/sig00000098 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000036  (
    .C(clk),
    .D(\blk00000001/sig0000013d ),
    .Q(\blk00000001/sig00000097 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000035  (
    .C(clk),
    .D(\blk00000001/sig0000013c ),
    .Q(\blk00000001/sig00000096 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000034  (
    .C(clk),
    .D(\blk00000001/sig0000013b ),
    .Q(\blk00000001/sig00000095 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000033  (
    .C(clk),
    .D(\blk00000001/sig0000013a ),
    .Q(\blk00000001/sig00000094 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000032  (
    .C(clk),
    .D(\blk00000001/sig00000139 ),
    .Q(\blk00000001/sig00000093 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000031  (
    .C(clk),
    .D(\blk00000001/sig0000014b ),
    .Q(\blk00000001/sig000000a5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000030  (
    .C(clk),
    .D(\blk00000001/sig0000014a ),
    .Q(\blk00000001/sig000000a4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002f  (
    .C(clk),
    .D(\blk00000001/sig00000149 ),
    .Q(\blk00000001/sig000000a3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e  (
    .C(clk),
    .D(\blk00000001/sig00000148 ),
    .Q(\blk00000001/sig000000a2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002d  (
    .C(clk),
    .D(\blk00000001/sig00000147 ),
    .Q(\blk00000001/sig000000a1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002c  (
    .C(clk),
    .D(\blk00000001/sig00000146 ),
    .Q(\blk00000001/sig000000a0 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002b  (
    .C(clk),
    .D(\blk00000001/sig00000145 ),
    .Q(\blk00000001/sig0000009f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002a  (
    .C(clk),
    .D(\blk00000001/sig00000144 ),
    .Q(\blk00000001/sig0000009e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000029  (
    .C(clk),
    .D(\blk00000001/sig00000143 ),
    .Q(\blk00000001/sig0000009d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000028  (
    .C(clk),
    .D(\blk00000001/sig00000125 ),
    .Q(\blk00000001/sig00000092 )
  );
  MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .PREG ( 0 ))
  \blk00000001/blk00000027  (
    .CEA(\blk00000001/sig00000029 ),
    .CEB(\blk00000001/sig00000029 ),
    .CEP(\blk00000001/sig00000029 ),
    .CLK(clk),
    .RSTA(\blk00000001/sig00000028 ),
    .RSTB(\blk00000001/sig00000028 ),
    .RSTP(\blk00000001/sig00000028 ),
    .A({a[20], a[19], a[18], a[17], a[16], a[15], a[14], a[13], a[12], a[11], a[10], a[9], a[8], a[7], a[6], a[5], a[4], a[3]}),
    .B({b[16], b[16], b[15], b[14], b[13], b[12], b[11], b[10], b[9], b[8], b[7], b[6], b[5], b[4], b[3], b[2], b[1], b[0]}),
    .BCIN({\blk00000001/sig00000028 , \blk00000001/sig00000028 , \blk00000001/sig00000028 , \blk00000001/sig00000028 , \blk00000001/sig00000028 , 
\blk00000001/sig00000028 , \blk00000001/sig00000028 , \blk00000001/sig00000028 , \blk00000001/sig00000028 , \blk00000001/sig00000028 , 
\blk00000001/sig00000028 , \blk00000001/sig00000028 , \blk00000001/sig00000028 , \blk00000001/sig00000028 , \blk00000001/sig00000028 , 
\blk00000001/sig00000028 , \blk00000001/sig00000028 , \blk00000001/sig00000028 }),
    .P({\blk00000001/sig00000167 , \NLW_blk00000001/blk00000027_P<34>_UNCONNECTED , \blk00000001/sig00000166 , \blk00000001/sig00000165 , 
\blk00000001/sig00000164 , \blk00000001/sig00000163 , \blk00000001/sig00000161 , \blk00000001/sig00000160 , \blk00000001/sig0000015f , 
\blk00000001/sig0000015e , \blk00000001/sig0000015d , \blk00000001/sig0000015c , \blk00000001/sig0000015b , \blk00000001/sig0000015a , 
\blk00000001/sig00000159 , \blk00000001/sig00000158 , \blk00000001/sig00000156 , \blk00000001/sig00000155 , \blk00000001/sig00000154 , 
\blk00000001/sig00000153 , \blk00000001/sig00000152 , \blk00000001/sig00000151 , \blk00000001/sig00000150 , \blk00000001/sig0000014f , 
\blk00000001/sig0000014e , \blk00000001/sig0000014d , \blk00000001/sig0000016e , \blk00000001/sig0000016d , \blk00000001/sig0000016c , 
\blk00000001/sig0000016b , \blk00000001/sig0000016a , \blk00000001/sig00000169 , \blk00000001/sig00000168 , \blk00000001/sig00000162 , 
\blk00000001/sig00000157 , \blk00000001/sig0000014c }),
    .BCOUT({\NLW_blk00000001/blk00000027_BCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000027_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000027_BCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000027_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000027_BCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000027_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000027_BCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000027_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000027_BCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000027_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000027_BCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000027_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000027_BCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000027_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000027_BCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000027_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000027_BCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000027_BCOUT<0>_UNCONNECTED })
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .D(\blk00000001/sig00000167 ),
    .Q(\blk00000001/sig000000c1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .D(\blk00000001/sig00000166 ),
    .Q(\blk00000001/sig000000c0 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .D(\blk00000001/sig00000165 ),
    .Q(\blk00000001/sig000000bf )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .D(\blk00000001/sig00000164 ),
    .Q(\blk00000001/sig000000be )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .D(\blk00000001/sig00000163 ),
    .Q(\blk00000001/sig000000bd )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .D(\blk00000001/sig00000161 ),
    .Q(\blk00000001/sig000000bb )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .D(\blk00000001/sig00000160 ),
    .Q(\blk00000001/sig000000ba )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .D(\blk00000001/sig0000015f ),
    .Q(\blk00000001/sig000000b9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .D(\blk00000001/sig0000015e ),
    .Q(\blk00000001/sig000000b8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .D(\blk00000001/sig0000015d ),
    .Q(\blk00000001/sig000000b7 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .D(\blk00000001/sig0000015c ),
    .Q(\blk00000001/sig000000b6 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .D(\blk00000001/sig0000015b ),
    .Q(\blk00000001/sig000000b5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .D(\blk00000001/sig0000015a ),
    .Q(\blk00000001/sig000000b4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .D(\blk00000001/sig00000159 ),
    .Q(\blk00000001/sig000000b3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(clk),
    .D(\blk00000001/sig00000158 ),
    .Q(\blk00000001/sig000000b2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(clk),
    .D(\blk00000001/sig00000156 ),
    .Q(\blk00000001/sig000000b0 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(clk),
    .D(\blk00000001/sig00000155 ),
    .Q(\blk00000001/sig000000af )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000015  (
    .C(clk),
    .D(\blk00000001/sig00000154 ),
    .Q(\blk00000001/sig000000ae )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000014  (
    .C(clk),
    .D(\blk00000001/sig00000153 ),
    .Q(\blk00000001/sig000000ad )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000013  (
    .C(clk),
    .D(\blk00000001/sig00000152 ),
    .Q(\blk00000001/sig000000ac )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000012  (
    .C(clk),
    .D(\blk00000001/sig00000151 ),
    .Q(\blk00000001/sig000000ab )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000011  (
    .C(clk),
    .D(\blk00000001/sig00000150 ),
    .Q(\blk00000001/sig000000aa )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000010  (
    .C(clk),
    .D(\blk00000001/sig0000014f ),
    .Q(\blk00000001/sig000000a9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000f  (
    .C(clk),
    .D(\blk00000001/sig0000014e ),
    .Q(\blk00000001/sig000000a8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000e  (
    .C(clk),
    .D(\blk00000001/sig0000014d ),
    .Q(\blk00000001/sig000000a7 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000d  (
    .C(clk),
    .D(\blk00000001/sig0000016e ),
    .Q(\blk00000001/sig000000c8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000c  (
    .C(clk),
    .D(\blk00000001/sig0000016d ),
    .Q(\blk00000001/sig000000c7 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(clk),
    .D(\blk00000001/sig0000016c ),
    .Q(\blk00000001/sig000000c6 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(clk),
    .D(\blk00000001/sig0000016b ),
    .Q(\blk00000001/sig000000c5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(clk),
    .D(\blk00000001/sig0000016a ),
    .Q(\blk00000001/sig000000c4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(clk),
    .D(\blk00000001/sig00000169 ),
    .Q(\blk00000001/sig000000c3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .D(\blk00000001/sig00000168 ),
    .Q(\blk00000001/sig000000c2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .D(\blk00000001/sig00000162 ),
    .Q(\blk00000001/sig000000bc )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .D(\blk00000001/sig00000157 ),
    .Q(\blk00000001/sig000000b1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .D(\blk00000001/sig0000014c ),
    .Q(\blk00000001/sig000000a6 )
  );
  VCC   \blk00000001/blk00000003  (
    .P(\blk00000001/sig00000029 )
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000028 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on

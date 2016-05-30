`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:24:49 05/20/2015
// Design Name:   QuickSilverNEO
// Module Name:   C:/Users/s061996/OneDrive/QuickSilver/QuickSilverNEO/QuickSilverNEO/TopLevelTest.v
// Project Name:  QuickSilverNEO
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: QuickSilverNEO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TopLevelTest;

	// Inputs
	reg clk;

	// Outputs
	wire [2:0] vgaRed;
	wire [2:0] vgaGreen;
	wire [1:0] vgaBlue;
	wire Hsync;
	wire Vsync;

	// Instantiate the Unit Under Test (UUT)
	QuickSilverNEO uut (
		.clk(clk), 
		.vgaRed(vgaRed), 
		.vgaGreen(vgaGreen), 
		.vgaBlue(vgaBlue), 
		.Hsync(Hsync), 
		.Vsync(Vsync)
	);
	
	always begin
		#10 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


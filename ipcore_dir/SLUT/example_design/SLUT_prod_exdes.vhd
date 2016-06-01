

--------------------------------------------------------------------------------
--
-- Distributed Memory Generator v6.3 Core - Top-level core wrapper
--
--------------------------------------------------------------------------------
--
-- (c) Copyright 2009 - 2010 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
--------------------------------------------------------------------------------
--
--
-- Description:
--   This is the actual DMG core wrapper.
--
--------------------------------------------------------------------------------
-- Library Declarations
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library unisim;
use unisim.vcomponents.all;

--------------------------------------------------------------------------------
-- Entity Declaration
--------------------------------------------------------------------------------
entity SLUT_exdes is
  PORT (
      A          : IN  STD_LOGIC_VECTOR(8-1-(4*0*boolean'pos(8>4)) downto 0)
                 := (OTHERS => '0');
      D          : IN  STD_LOGIC_VECTOR(8-1 downto 0)                := (OTHERS => '0');
      DPRA       : IN  STD_LOGIC_VECTOR(8-1 downto 0)           := (OTHERS => '0');
      SPRA       : IN  STD_LOGIC_VECTOR(8-1 downto 0)           := (OTHERS => '0');
      CLK        : IN  STD_LOGIC                                                := '0';
      WE         : IN  STD_LOGIC                                                := '0';
      I_CE       : IN  STD_LOGIC                                                := '1';
      QSPO_CE    : IN  STD_LOGIC                                                := '1';
      QDPO_CE    : IN  STD_LOGIC                                                := '1';
      QDPO_CLK   : IN  STD_LOGIC                                                := '0';
      QSPO_RST   : IN  STD_LOGIC                                                := '0';
      QDPO_RST   : IN  STD_LOGIC                                                := '0';
      QSPO_SRST  : IN  STD_LOGIC                                                := '0';
      QDPO_SRST  : IN  STD_LOGIC                                                := '0';
      SPO        : OUT STD_LOGIC_VECTOR(8-1 downto 0);
      DPO        : OUT STD_LOGIC_VECTOR(8-1 downto 0);
      QSPO       : OUT STD_LOGIC_VECTOR(8-1 downto 0);
      QDPO       : OUT STD_LOGIC_VECTOR(8-1 downto 0)
      );

end SLUT_exdes;



architecture xilinx of SLUT_exdes is

    
  component SLUT is
  PORT (

      SPO                     : OUT STD_LOGIC_VECTOR(8-1 downto 0);
      A                       : IN  STD_LOGIC_VECTOR(8-1-(4*0*boolean'pos(8>4)) downto 0)
                              := (OTHERS => '0')

);
  end component;


begin

  dmg0 : SLUT
    port map (

      SPO                     => SPO,
      A                       => A

      );




end xilinx;

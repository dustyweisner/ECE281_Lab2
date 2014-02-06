--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Dusty Weisner
--
-- Create Date:   16:25:27 02/05/2014
-- Design Name:   N/A
-- Module Name:   C:/Users/C16Dustin.Weisner/Documents/Xilinx/CE2/CE2.vhd
-- Project Name:  CE2
-- Target Device:  N/A
-- Tool versions:  N/A
-- Description:   Awesome
-- 
-- VHDL Test Bench Created by ISE for module: Decoder_Structural
-- 
-- Dependencies: N/A
-- 
-- Revision: N/A
-- Revision 0.01 - File Created
-- Additional Comments: N/A
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CE2 IS
END CE2;
 
ARCHITECTURE behavior OF CE2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder_Structural
    PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         EN : IN  std_logic;
         Y0 : OUT  std_logic;
         Y1 : OUT  std_logic;
         Y2 : OUT  std_logic;
         Y3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal EN : std_logic := '0';

 	--Outputs
   signal Y0 : std_logic;
   signal Y1 : std_logic;
   signal Y2 : std_logic;
   signal Y3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder_Structural PORT MAP (
          I0 => I0,
          I1 => I1,
          EN => EN,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
     -- First line of truth table
		EN <= '0';
		I1 <= '0';
		I0 <= '0';
		wait for 100 ns;	

		-- Second line of truth table
		EN <= '0';
		I1 <= '0';
		I0 <= '1';
		wait for 100 ns;	

		-- Third line of truth table
		EN <= '0';
		I1 <= '1';
		I0 <= '0';
		wait for 100 ns;

		-- Fourth line of truth table
		EN <= '0';
		I1 <= '1';
		I0 <= '1';
		wait for 100 ns;

		-- Fifth line of truth table
		EN <= '1';
		I1 <= '0';
		I0 <= '0';
		wait for 100 ns;	

		-- Sixth line of truth table
		EN <= '1';
		I1 <= '0';
		I0 <= '1';
		wait for 100 ns;	

		-- Seventh line of truth table
		EN <= '1';
		I1 <= '1';
		I0 <= '0';
		wait for 100 ns;

		-- Eighth line of truth table
		EN <= '1';
		I1 <= '1';
		I0 <= '1';
		wait for 100 ns;
		wait;

   end process;

END;

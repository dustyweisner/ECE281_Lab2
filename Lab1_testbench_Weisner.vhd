--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Dustin Weisner
--
-- Create Date:   03:14:23 01/23/2014
-- Design Name:   Lab1_testbench
-- Module Name:   C:/Users/C16Dustin.Weisner/Documents/Xilinx/Lab1/Lab1_testbench_Weisner.vhd
-- Project Name:  Lab1
-- Target Device: Nexys 2
-- Tool versions:  N/A
-- Description:   N/A
-- 
-- VHDL Test Bench Created by ISE for module: Lab1_Weisner
-- 
-- Dependencies:N/A
-- 
-- Revision:N/A
-- Revision 0.01 - File Created
-- Additional Comments:N/A
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
 
ENTITY Lab1_testbench_Weisner IS
END Lab1_testbench_Weisner;
 
ARCHITECTURE behavior OF Lab1_testbench_Weisner IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab1_Weisner
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         X : OUT  std_logic;
         Y : OUT  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal X : std_logic;
   signal Y : std_logic;
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab1_Weisner PORT MAP (
          A => A,
          B => B,
          C => C,
          X => X,
          Y => Y,
          Z => Z
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
       -- First line of truth table
                A <= '0';
                B <= '0';
                C <= '0';
                wait for 100 ns;        
                
                -- Second line of truth table
                A <= '0';
                B <= '0';
                C <= '1';
                wait for 100 ns;        
                
                -- Third line of truth table
                A <= '0';
                B <= '1';
                C <= '0';
                wait for 100 ns;
                
                -- Fourth line of truth table
                A <= '0';
                B <= '1';
                C <= '1';
                wait for 100 ns;
                
                -- Fifth line of truth table
                A <= '1';
                B <= '0';
                C <= '0';
                wait for 100 ns;        
                
                -- Sixth line of truth table
                A <= '1';
                B <= '0';
                C <= '1';
                wait for 100 ns;        
                
                -- Seventh line of truth table
                A <= '1';
                B <= '1';
                C <= '0';
                wait for 100 ns;
                
                -- Eighth line of truth table
                A <= '1';
                B <= '1';
                C <= '1';
                wait for 100 ns;

 

      wait;
   end process;

END;

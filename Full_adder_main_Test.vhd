--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:43:02 02/13/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Dustin.Weisner/Documents/Xilinx/Lab2/Full_adder_main_Test.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DCW_add_sub
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
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
USE ieee.numeric_std.ALL;
 
ENTITY Full_adder_main_Test IS
END Full_adder_main_Test;
 
ARCHITECTURE behavior OF Full_adder_main_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DCW_add_sub
    PORT(
         Ain : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic_vector(3 downto 0);
         Sum : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DCW_add_sub PORT MAP (
          Ain => Ain,
          Bin => Bin,
          Sum => Sum
        );

   
 

   -- Stimulus process
   stim_proc: process
  variable i,j:   integer;
    begin
        for i in 0 to 15 loop
            for j in 0 to 15 loop
                Ain <= std_logic_vector(to_unsigned(i,4)); 
                Bin <= std_logic_vector(to_unsigned(j,4));
                wait for 10 ns;     -- so we can view waveform display
            end loop;
        end loop;

      wait;
   end process;

END;

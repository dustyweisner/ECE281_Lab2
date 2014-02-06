----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Dusty WEisner
-- 
-- Create Date:    08:37:27 02/01/2014 
-- Design Name: N/A
-- Module Name:    inverter - Behavioral 
-- Project Name: N/A
-- Target Devices: N/A
-- Tool versions: N/A
-- Description: N/A
--
-- Dependencies: N/A
--
-- Revision: N/A
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity inverter is
    Port ( I : in  STD_LOGIC;
           O : out  STD_LOGIC);
end inverter;

architecture Behavioral of inverter is

begin
O <= not I;


end Behavioral;


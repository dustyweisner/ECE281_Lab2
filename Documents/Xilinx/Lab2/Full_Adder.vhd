----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Dusty Weisner
-- 
-- Create Date:    13:09:51 02/10/2014 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
-- Project Name: Lab 2
-- Target Devices: Nexys
-- Tool versions: N/A
-- Description: N/A
--
-- Dependencies: N/A
--
-- Revision: N/A
-- Revision 0.01 - File Created
-- Additional Comments: N/A
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

entity Full_Adder is
    Port ( Ain : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is
signal A_NOT: STD_LOGIC;
signal B_NOT: STD_LOGIC;
signal C_NOT: STD_LOGIC;

begin

A_NOT <= not Ain;
B_NOT <= not Bin;
C_NOT <= not Cin;

Sum <= (A_NOT and B_NOT and Cin) or (A_NOT and Bin and C_NOT) or (Ain and Bin and Cin) or (Ain and B_NOT and C_NOT);
Cout <= (Ain and Bin) or (Bin and Cin) or (Ain and Cin);

end Behavioral;


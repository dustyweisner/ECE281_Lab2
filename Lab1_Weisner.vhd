----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Dustin Weisner
-- 
-- Create Date:    02:38:10 01/23/2014 
-- Design Name: Lab 1
-- Module Name:    Lab1_Weisner - Behavioral 
-- Project Name: Lab 1
-- Target Devices: Nexys 2
-- Tool versions: N/A
-- Description: Defines logic behavior
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

entity Lab1_Weisner is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_Weisner;

architecture Behavioral of Lab1_Weisner is


signal A_NOT, B_NOT, C_NOT : STD_LOGIC;

begin

A_NOT <= not A;
B_NOT <= not B;
C_NOT <= not C;
X <= (A_NOT and B) or (A_NOT and C) or (A and B_NOT and C_NOT);
Y <= (B and C_NOT) or (B_NOT and C);
Z <= C;


end Behavioral;


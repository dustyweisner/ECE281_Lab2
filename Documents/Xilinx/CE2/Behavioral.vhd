-- Engineer: Dusty Weisner
-- 
-- Create Date:    21:56:06 02/05/2014 
-- Design Name: CE2 Behavioral
-- Module Name:    CE2 - Behavioral 
-- Project Name: Decoder Behavioral
-- Target Devices: N/A
-- Tool versions: N/A
-- Description: Awesome stuff
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

entity CE2 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end CE2;

architecture Behavioral of CE2 is

signal I0_Not, I1_Not: STD_LOGIC;

begin
I0_Not <= not I0;
I1_Not <= not I1;

Y0 <= I0_Not and I1_Not and EN;
Y1 <= I0 and I1_Not and EN;
Y2 <= I0_Not and I1 and EN;
Y3 <= I0 and I1 and EN;

end Behavioral;


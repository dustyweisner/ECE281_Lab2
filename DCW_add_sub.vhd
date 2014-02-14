----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Dusty WEisner
-- 
-- Create Date:    09:59:59 02/13/2014 
-- Design Name: Lab2-DCW
-- Module Name:    Four_Adder_B - Structural 
-- Project Name: Lab2_DCW
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DCW_add_sub is
    Port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC_VECTOR (3 downto 0);
			  Push : in STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
			  Overflow : out STD_LOGIC);
end DCW_add_sub;

architecture Structural of DCW_add_sub is

COMPONENT Full_Adder
    PORT(
         Ain : in  STD_LOGIC;
			Bin : in  STD_LOGIC;
			Cin : in  STD_LOGIC;
			Cout : out  STD_LOGIC;
			Xout : out  STD_LOGIC
        );
    END COMPONENT;
signal carry: std_logic_vector (3 downto 0);
signal TwosBin: std_logic_vector (3 downto 0);
signal TwosSub: std_logic_vector (3 downto 0);

begin

TwosSub <= Bin;

TwosBin <= TwosSub when Push = '0' else
Std_logic_vector(signed(not TwosSub)+1) when Push = '1';

Bit0: component Full_Adder
port map (Ain => Ain(0),
	 	 Bin => TwosBin(0),
		 Cin => '0',
		 Cout=> carry(0),
		 Xout=> Sum(0)
		 );
		 
Bit1: component Full_Adder
port map (Ain => Ain(1),
	 	 Bin => TwosBin(1),
		 Cin => carry(0),
		 Cout=> carry(1),
		 Xout=> Sum(1)
		 );
		 
Bit2: component Full_Adder
port map (Ain => Ain(2),
	 	 Bin => TwosBin(2),
		 Cin => carry(1),
		 Cout=> carry(2),
		 Xout=> Sum(2)
		 );
		 
Bit3: component Full_Adder
port map (Ain => Ain(3),
	 	 Bin => TwosBin(3),
		 Cin => carry(2),
		 Cout => carry(3),
		 Xout => Sum(3)
		 );
		 
		 --nex line added
Overflow <= carry(3) xor carry(2);


end Structural;



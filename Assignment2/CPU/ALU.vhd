----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	Subhajit Das
-- 
-- Create Date:    10:50:27 11/24/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
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

entity ALU is
    Port ( a : in  SIGNED (7 downto 0);
           b : in  SIGNED (7 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           o : out  SIGNED (7 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
process(a, b, sel) 
begin
	case sel is
	 when "000" => 
	 o<= a + b; --addition 
	 when "001" => 
	 o<= a - b; --subtraction 
	 when "010" => 
	 o<= a - 1; --sub 1 
	 when "011" => 
	 o<= a + 1; --add 1 
	 when "100" => 
	 o<= a and b; --AND gate 
	 when "101" => 
	 o<= a or b; --OR gate 
	 when "110" => 
	 o<= not a ; --NOT gate 
	 when "111" => 
	 o<= a xor b; --XOR gate 
	 when others =>
	 NULL;
	end case; 
end process; 

end Behavioral;


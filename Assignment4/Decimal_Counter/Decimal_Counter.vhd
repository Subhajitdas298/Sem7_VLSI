----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	Subhajit Das
-- 
-- Create Date:    06:34:51 11/18/2018 
-- Design Name: 
-- Module Name:    Decimal_Counter - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- For arithmatic
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decimal_Counter is
    Port ( clk : in  STD_LOGIC;
           digit : out  STD_LOGIC_VECTOR (3 downto 0) := "0000");
end Decimal_Counter;

architecture Behavioral of Decimal_Counter is

begin

	process(clk)
	variable count : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	begin
		if(clk'event and clk='1') then
			if(count="1001") then
				count := "0000";
			else
				count := (count + 1);
			end if;
			digit <= count;
		end if;
	end process;

end Behavioral;


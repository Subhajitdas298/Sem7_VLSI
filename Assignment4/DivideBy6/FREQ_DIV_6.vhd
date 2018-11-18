----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:01:05 11/18/2018 
-- Design Name: 
-- Module Name:    FREQ_DIV_6 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity FREQ_DIV_6 is
    Port ( clk : in  STD_LOGIC := '0';
           o : out  STD_LOGIC := '0');
end FREQ_DIV_6;

architecture Behavioral of FREQ_DIV_6 is
signal count : unsigned(2 downto 0) := "000";
begin
	
	process(clk)
	begin
		if(rising_edge(clk)) then
			count <= count + 1;
			if(count = "011") then
				o <= '1';
			elsif(count = "110") then
				count <= "001";
				o <= '0';
			end if;
		end if;
		
	end process;
				

end Behavioral;


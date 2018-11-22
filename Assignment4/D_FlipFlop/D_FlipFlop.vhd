----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	Subhajit Das
-- 
-- Create Date:    05:32:14 11/18/2018 
-- Design Name: 
-- Module Name:    D_FlipFlop - Behavioral 
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

entity D_FlipFlop is
    Port ( d : in  STD_LOGIC := '0';
           q : out  STD_LOGIC := '0';
           clk : in  STD_LOGIC := '0';
           rst : in  STD_LOGIC := '0');
end D_FlipFlop;

architecture Behavioral of D_FlipFlop is

begin
	
	process(clk, rst)
	begin
		if(rst='1') then
			q <= '0';
		elsif (clk'event) and (clk = '1') then
			q <= d;
		end if;
	end process;

end Behavioral;


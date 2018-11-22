----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	Subhajit Das
-- 
-- Create Date:    10:00:26 11/18/2018 
-- Design Name: 
-- Module Name:    SR_4 - Behavioral 
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

-- For shift
use IEEE.NUMERIC_STD.ALL;

entity SR_4 is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC);
end SR_4;

architecture Behavioral of SR_4 is

signal temp : unsigned (3 downto 0) := "0000";

begin

	process(clk, d, rst, temp)
	begin
	q <= temp(3);
	if(rst = '1') then
		temp <= "0000";
	elsif(rising_edge(clk)) then
		temp <= temp(2 downto 0) & d;
	end if;
	
	end process;

end Behavioral;


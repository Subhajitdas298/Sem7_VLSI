----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:59:18 11/17/2018 
-- Design Name: 
-- Module Name:    MUX8x1 - Structural 
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

entity MUX8x1 is
    Port ( i0 : in  STD_LOGIC;
			  i1 : in  STD_LOGIC;
			  i2 : in  STD_LOGIC;
			  i3 : in  STD_LOGIC;
			  i4 : in  STD_LOGIC;
			  i5 : in  STD_LOGIC;
			  i6 : in  STD_LOGIC;
			  i7 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
			  s1 : in  STD_LOGIC;
			  s2 : in  STD_LOGIC;
           o : out  STD_LOGIC);
end MUX8x1;

architecture Structural of MUX8x1 is

component MUX2x1 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;
signal l : STD_LOGIC_VECTOR (5 downto 0);

begin
	-- stage one. four mux for inputs
	mux0 : MUX2x1 port map(i0 => i0, i1 => i1, s => s0, o => l(0));
	mux1 : MUX2x1 port map(i0 => i2, i1 => i3, s => s0, o => l(1));
	mux2 : MUX2x1 port map(i0 => i4, i1 => i5, s => s0, o => l(2));
	mux3 : MUX2x1 port map(i0 => i6, i1 => i7, s => s0, o => l(3));
	
	-- second stage
	mux4 : MUX2x1 port map(i0 => l(0), i1 => l(1), s => s1, o => l(4));
	mux5 : MUX2x1 port map(i0 => l(2), i1 => l(3), s => s1, o => l(5));
	
	-- final stage
	mux6 : MUX2x1 port map(i0 => l(4), i1 => l(5), s => s2, o => o);

end Structural;


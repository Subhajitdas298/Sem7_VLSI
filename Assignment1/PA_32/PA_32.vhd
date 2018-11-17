----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:43 11/17/2018 
-- Design Name: 
-- Module Name:    PA_32 - Structural 
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

entity PA_32 is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (31 downto 0);
           cout : out  STD_LOGIC);
end PA_32;

architecture Structural of PA_32 is

component PA_4 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end component;
signal carries : STD_LOGIC_VECTOR (8 downto 0);

begin
carries(0) <= cin;
FOR_GEN: for i in 0 to 7 generate
	pa:PA_4 port map( a((4*i + 3) downto 4*i), 
							b((4*i + 3) downto 4*i), 
							carries(i),
							sum((4*i + 3) downto 4*i),
							carries(i+1)
							);
end generate FOR_GEN;
cout <= carries(8);

end Structural;


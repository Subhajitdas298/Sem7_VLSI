----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	Subhajit Das
-- 
-- Create Date:    17:54:38 11/17/2018 
-- Design Name: 
-- Module Name:    PA_4 - Structural 
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
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PA_4 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end PA_4;

architecture Structural of PA_4 is

component FULL_ADDER is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal c : STD_LOGIC_VECTOR(3 downto 0);

begin
FA_1 : FULL_ADDER port map(a(0), b(0), cin, sum(0), c(0));
FA_2 : FULL_ADDER port map(a(1), b(1), c(0), sum(1), c(1));
FA_3 : FULL_ADDER port map(a(2), b(2), c(1), sum(2), c(2));
FA_4 : FULL_ADDER port map(a(3), b(3), c(2), sum(3), c(3));
cout <= c(3);

end Structural;


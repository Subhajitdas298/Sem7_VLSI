----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:35 11/24/2018 
-- Design Name: 
-- Module Name:    PAL_FULL_ADDER - Structural 
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

entity PAL_FULL_ADDER is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end PAL_FULL_ADDER;

architecture Structural of PAL_FULL_ADDER is

component OR4 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

component AND3 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

signal not_a, not_b, not_cin : STD_LOGIC;
signal l: STD_LOGIC_VECTOR(7 downto 0);

begin
not_a <= not a;
not_b <= not b;
not_cin <= not cin;

AND3_1: AND3 port map(not_a, not_b, cin, l(0));
AND3_2: AND3 port map(not_a, b, not_cin, l(1));
AND3_3: AND3 port map(a, not_b, not_cin, l(2));
AND3_4: AND3 port map(a, b, cin, l(3));

AND3_5: AND3 port map(not_a, b, cin, l(4));
AND3_6: AND3 port map(a, not_b, cin, l(5));
AND3_7: AND3 port map(a, b, not_cin, l(6));
AND3_8: AND3 port map(a, b, cin, l(7));

-- fixed ORs
OR4_1: OR4 port map(l(0), l(1), l(2), l(3), s);
OR4_2: OR4 port map(l(4), l(5), l(6), l(7), cout);

end Structural;


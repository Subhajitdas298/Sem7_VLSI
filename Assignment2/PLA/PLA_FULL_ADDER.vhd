----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:21:52 11/24/2018 
-- Design Name: 
-- Module Name:    PLA_FULL_ADDER - Structural 
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

entity PLA_FULL_ADDER is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end PLA_FULL_ADDER;

architecture Structural of PLA_FULL_ADDER is

component AND2 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

component AND3 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

component OR3 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

component OR4 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
			  d : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

signal l1, l2, l3, l4, l5, l6, l7 : STD_LOGIC;
signal not_a, not_b, not_cin : STD_LOGIC;

begin
not_a <= not a;
not_b <= not b;
not_cin <= not cin;

AND3_1: AND3 port map(not_a, not_b, cin, l1);
AND3_2: AND3 port map(not_a, b, not_cin, l2);
AND3_3: AND3 port map(a, not_b, not_cin, l3);
AND3_4: AND3 port map(a, b, cin, l4);

AND2_1: AND2 port map(b, cin, l5);
AND2_2: AND2 port map(a, cin, l6);
AND2_3: AND2 port map(a, b, l7);

OR4_1: OR4 port map(l1, l2, l3, l4, s);
OR3_1: OR3 port map(l5, l6, l7, cout);

end Structural;


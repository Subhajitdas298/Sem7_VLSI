----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	Subhajit Das
-- 
-- Create Date:    17:08:29 11/24/2018 
-- Design Name: 
-- Module Name:    PROM_FULL_ADDER - Structural 
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

entity PROM_FULL_ADDER is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end PROM_FULL_ADDER;

architecture Structural of PROM_FULL_ADDER is

component DECODER3_8 is
    Port ( i : in  STD_LOGIC_VECTOR (2 downto 0);
           o : out  STD_LOGIC_VECTOR (7 downto 0));
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

signal dec_in: STD_LOGIC_VECTOR(2 downto 0);
signal dec_out: STD_LOGIC_VECTOR(7 DOWNTO 0);

begin
dec_in(0) <= a;
dec_in(1) <= b;
dec_in(2) <= cin;

DECODER_1: DECODER3_8 port map(dec_in, dec_out);

OR4_1: OR4 port map(dec_out(1), dec_out(2), dec_out(4), dec_out(7), s);
OR4_2: OR4 port map(dec_out(3), dec_out(5), dec_out(6), dec_out(7), cout);

end Structural;


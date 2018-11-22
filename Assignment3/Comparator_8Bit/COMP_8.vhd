----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	Subhajit Das
-- 
-- Create Date:    10:37:50 11/18/2018 
-- Design Name: 
-- Module Name:    COMP_8 - Dataflow 
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

-- For logical op
use IEEE.NUMERIC_STD.ALL;

entity COMP_8 is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           sel : in  STD_LOGIC;
           x1 : out  STD_LOGIC;
           x2 : out  STD_LOGIC;
           x3 : out  STD_LOGIC);
end COMP_8;


architecture Dataflow of COMP_8 is
signal a_int, b_int : integer;
begin
a_int <= to_integer(signed(a)) when(sel='1') else to_integer(unsigned(a));
b_int <= to_integer(signed(b)) when(sel='1') else to_integer(unsigned(b));

x1 <= '1' when(a_int > b_int) else '0';
x2 <= '1' when(a_int = b_int) else '0';
x3 <= '1' when(a_int < b_int) else '0';

end Dataflow;


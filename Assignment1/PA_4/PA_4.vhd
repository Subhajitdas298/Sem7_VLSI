----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	Subhajit Das
-- 
-- Create Date:    17:54:38 11/17/2018 
-- Design Name: 
-- Module Name:    PA_4 - Behavioral 
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

-- for multibit addition
use ieee.std_logic_unsigned.all;

entity PA_4 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end PA_4;

architecture Dataflow of PA_4 is

signal temp_sum, c_add : STD_LOGIC_VECTOR(4 downto 0);

begin
c_add <= "00001" when (cin = '1') else "00000";
temp_sum <= (('0' & a) + ('0' & b)) + c_add;

sum <= temp_sum(3 downto 0);
cout <= temp_sum(4);

end Dataflow;


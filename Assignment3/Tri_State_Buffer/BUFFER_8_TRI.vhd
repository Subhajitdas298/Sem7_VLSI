----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	Subhajit Das
-- 
-- Create Date:    09:46:49 11/18/2018 
-- Design Name: 
-- Module Name:    BUFFER_8_3 - Dataflow 
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

entity BUFFER_8_3 is
    Port ( input : in  STD_LOGIC_VECTOR (7 downto 0);
           enable_inv : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end BUFFER_8_3;

architecture Dataflow of BUFFER_8_3 is

begin
output <= input when(enable_inv = '0') else "ZZZZZZZZ";

end Dataflow;


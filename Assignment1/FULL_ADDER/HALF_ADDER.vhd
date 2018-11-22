----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	Subhajit Das
-- 
-- Create Date:    17:34:01 11/17/2018 
-- Design Name: 
-- Module Name:    HALF_ADDER - Behavioral 
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

entity HALF_ADDER is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end HALF_ADDER;

architecture Dataflow of HALF_ADDER is

begin
sum <= a xor b;
carry <= a and b;

end Dataflow;


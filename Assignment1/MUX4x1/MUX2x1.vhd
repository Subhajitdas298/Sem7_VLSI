----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:22:31 11/17/2018 
-- Design Name: 
-- Module Name:    MUX2x1 - Dataflow 
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

entity MUX2x1 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           o : out  STD_LOGIC);
end MUX2x1;

architecture Dataflow of MUX2x1 is

begin
o <= ((not s) and i0) or (s and i1);

end Dataflow;


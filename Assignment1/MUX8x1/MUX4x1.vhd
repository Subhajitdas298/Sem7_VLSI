----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:35:26 11/17/2018 
-- Design Name: 
-- Module Name:    MUX4x1 - Structural 
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

entity MUX4x1 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           o : out  STD_LOGIC);
end MUX4x1;

architecture Structural of MUX4x1 is

component MUX2x1 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;
signal l0, l1 : STD_LOGIC;

begin
mux1:MUX2x1 port map(i0=>i0, i1=>i1, s=>s0, o=>l0);
mux2:MUX2x1 port map(i0=>i2, i1=>i3, s=>s0, o=>l1);
mux3:MUX2x1 port map(i0=>l0, i1=>l1, s=>s1, o=>o);

end Structural;


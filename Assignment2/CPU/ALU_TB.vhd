--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:10:37 11/24/2018
-- Design Name:   
-- Module Name:   /home/ise/VLSI/Assignment2/CPU/ALU_TB.vhd
-- Project Name:  CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY ALU_TB IS
END ALU_TB;
 
ARCHITECTURE behavior OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         a : IN  signed(7 downto 0);
         b : IN  signed(7 downto 0);
         sel : IN  std_logic_vector(2 downto 0);
         o : OUT  signed(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : signed(7 downto 0) := (others => '0');
   signal b : signed(7 downto 0) := (others => '0');
   signal sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal o : signed(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          a => a,
          b => b,
          sel => sel,
          o => o
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		 a <= "10011001";
		 b <= "11110000";
		 
		 sel <= "000";
		 wait for 100 ns;
		 sel <= "001";
		 wait for 100 ns;
		 sel <= "010";
		 wait for 100 ns;
		 sel <= "011";
		 wait for 100 ns;
		 sel <= "100";
		 wait for 100 ns;
		 sel <= "101";
		 wait for 100 ns;
		 sel <= "110";
		 wait for 100 ns;
		 sel <= "111";
       wait;
   end process;

END;

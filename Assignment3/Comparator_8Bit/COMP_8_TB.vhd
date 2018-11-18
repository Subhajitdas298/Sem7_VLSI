--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:02:44 11/18/2018
-- Design Name:   
-- Module Name:   /home/ise/VLSI/Assignment3/Comparator_8Bit/COMP_8_TB.vhd
-- Project Name:  Comparator_8Bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: COMP_8
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
--USE ieee.numeric_std.ALL;
 
ENTITY COMP_8_TB IS
END COMP_8_TB;
 
ARCHITECTURE behavior OF COMP_8_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT COMP_8
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         sel : IN  std_logic;
         x1 : OUT  std_logic;
         x2 : OUT  std_logic;
         x3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal x1 : std_logic;
   signal x2 : std_logic;
   signal x3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant wait_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: COMP_8 PORT MAP (
          a => a,
          b => b,
          sel => sel,
          x1 => x1,
          x2 => x2,
          x3 => x3
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
		
		a <= "11000000";
		b <= "11000000";
		sel <= '0';
		wait for wait_period;
		
		a <= "11000000";
		b <= "11000000";
		sel <= '1';
		wait for wait_period;
		
		a <= "01000000";
		b <= "01100000";
		sel <= '0';
		wait for wait_period;
		
		a <= "11000000";
		b <= "01000000";
		sel <= '0';
		wait for wait_period;
		
		a <= "11000000";
		b <= "01000000";
		sel <= '1';
		wait for wait_period;

      wait;
   end process;

END;

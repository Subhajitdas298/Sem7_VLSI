--------------------------------------------------------------------------------
-- Company: 
-- Engineer:	Subhajit Das
--
-- Create Date:   19:22:13 11/17/2018
-- Design Name:   
-- Module Name:   /home/ise/VLSI/Assignment 1/PA_32/PA_32_TB.vhd
-- Project Name:  PA_32
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PA_32
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
 
ENTITY PA_32_TB IS
END PA_32_TB;
 
ARCHITECTURE behavior OF PA_32_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PA_32
    PORT(
         a : IN  std_logic_vector(31 downto 0);
         b : IN  std_logic_vector(31 downto 0);
         cin : IN  std_logic;
         sum : OUT  std_logic_vector(31 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(31 downto 0);
   signal b : std_logic_vector(31 downto 0);
   signal cin : std_logic;

 	--Outputs
   signal sum : std_logic_vector(31 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
-- 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PA_32 PORT MAP (
          a => a,
          b => b,
          cin => cin,
          sum => sum,
          cout => cout
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;

      -- insert stimulus here 
		
		a <= "10101100000111111010110000011111";
		b <= "10101100110100111010110000011111";
		cin <= '1';
		wait for 10 ns;
		
		a <= "10111100000111111010110000011111";
		b <= "10101100110000111010110000011111";
		cin <= '0';
		wait for 10 ns;
		
		a <= "00000000000000000000000000000000";
		b <= "00000000000000000000000000000000";
		cin <= '0';
		wait for 10 ns;

      wait;
   end process;

END;

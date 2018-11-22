--------------------------------------------------------------------------------
-- Company: 
-- Engineer:	Subhajit Das
--
-- Create Date:   17:46:20 11/17/2018
-- Design Name:   
-- Module Name:   /home/ise/VLSI/Assignment 1/FULL_ADDER/FULL_ADDER_TB.vhd
-- Project Name:  FULL_ADDER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FULL_ADDER
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
 
ENTITY FULL_ADDER_TB IS
END FULL_ADDER_TB;
 
ARCHITECTURE behavior OF FULL_ADDER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FULL_ADDER
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         sum : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic;
   signal b : std_logic;
   signal cin : std_logic;

 	--Outputs
   signal sum : std_logic;
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FULL_ADDER PORT MAP (
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
		for i in std_logic range '0' to '1' loop
			a <= i;
			for j in std_logic range '0' to '1' loop
				b <= j;
				for k in std_logic range '0' to '1' loop
					cin <= k;
					wait for 10 ns;
				end loop;
			end loop;
		end loop;

      wait;
   end process;

END;

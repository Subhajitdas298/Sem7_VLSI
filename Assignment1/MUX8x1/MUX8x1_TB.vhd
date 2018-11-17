--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:16:33 11/17/2018
-- Design Name:   
-- Module Name:   /home/ise/VLSI/Assignment 1/MUX8x1/MUX8x1_TB.vhd
-- Project Name:  MUX8x1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX8x1
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
 
ENTITY MUX8x1_TB IS
END MUX8x1_TB;
 
ARCHITECTURE behavior OF MUX8x1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX8x1
    PORT(
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         i2 : IN  std_logic;
         i3 : IN  std_logic;
         i4 : IN  std_logic;
         i5 : IN  std_logic;
         i6 : IN  std_logic;
         i7 : IN  std_logic;
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         s2 : IN  std_logic;
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '1';
   signal i2 : std_logic := '0';
   signal i3 : std_logic := '1';
   signal i4 : std_logic := '1';
   signal i5 : std_logic := '0';
   signal i6 : std_logic := '1';
   signal i7 : std_logic := '0';
   signal s0 : std_logic;
   signal s1 : std_logic;
   signal s2 : std_logic;

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX8x1 PORT MAP (
          i0 => i0,
          i1 => i1,
          i2 => i2,
          i3 => i3,
          i4 => i4,
          i5 => i5,
          i6 => i6,
          i7 => i7,
          s0 => s0,
          s1 => s1,
          s2 => s2,
          o => o
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

--      wait for <clock>_period*10;

      -- insert stimulus here 
		for i in std_logic range '0' to '1' loop
			s0 <= i;
			
			for j in std_logic range '0' to '1' loop
				s1 <= j;
				
				for k in std_logic range '0' to '1' loop
					s2 <= k;
					
					wait for 10 ns;
				end loop;
				
			end loop;
			
		end loop;

      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:	Subhajit Das
--
-- Create Date:   09:54:05 11/18/2018
-- Design Name:   
-- Module Name:   /home/ise/VLSI/Assignment3/Tri_State_Buffer/BUFFER_8_3_TB.vhd
-- Project Name:  Tri_State_Buffer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BUFFER_8_3
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
 
ENTITY BUFFER_8_3_TB IS
END BUFFER_8_3_TB;
 
ARCHITECTURE behavior OF BUFFER_8_3_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BUFFER_8_3
    PORT(
         input : IN  std_logic_vector(7 downto 0);
         enable_inv : IN  std_logic;
         output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');
   signal enable_inv : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BUFFER_8_3 PORT MAP (
          input => input,
          enable_inv => enable_inv,
          output => output
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
		input <= "10110110";
		enable_inv <= '0';
		wait for 10 ns;
		
		input <= "10110110";
		enable_inv <= '1';
		wait for 10 ns;
		
		input <= "10110000";
		wait for 10 ns;
		
		enable_inv <= '0';
		wait for 10 ns;
		
		input <= "00000000";
		enable_inv <= '1';
		wait for 10 ns;
		
      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:	Subhajit Das
--
-- Create Date:   10:13:29 11/18/2018
-- Design Name:   
-- Module Name:   /home/ise/VLSI/Assignment3/Shift_Register_4Bit/SR_4_TB.vhd
-- Project Name:  Shift_Register_4Bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SR_4
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
 
ENTITY SR_4_TB IS
END SR_4_TB;
 
ARCHITECTURE behavior OF SR_4_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SR_4
    PORT(
         d : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SR_4 PORT MAP (
          d => d,
          clk => clk,
          rst => rst,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
      -- insert stimulus here 
		
		rst <= '0';
		d <= '1';
		wait for clk_period*2;
		
		d <= '0';
		wait for clk_period*2;
		
		d <= '1';
		wait for clk_period*10;
		
		rst <= '1';
		wait for clk_period*1;
		rst <= '0';
		
		d <= '1';
		wait for clk_period*2;
		
      wait;
   end process;

END;

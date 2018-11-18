--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:09:16 11/18/2018
-- Design Name:   
-- Module Name:   /home/ise/VLSI/Assignment4/D_FlipFlop/D_FlipFlop_TB.vhd
-- Project Name:  D_FlipFlop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_FlipFlop
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
 
ENTITY D_FlipFlop_TB IS
END D_FlipFlop_TB;
 
ARCHITECTURE behavior OF D_FlipFlop_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT D_FlipFlop
    PORT(
         d : IN  std_logic;
         q : OUT  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
	 
   --Inputs
   signal d : std_logic;
   signal clk : std_logic;
   signal rst : std_logic;

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_FlipFlop PORT MAP (
          d => d,
          q => q,
          clk => clk,
          rst => rst
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
		d <= '0';
		rst <= '0';
		wait for clk_period*5;
		d <= '1';
		wait for clk_period*5;
		rst <= '1';
		wait for clk_period*2;
		rst <= '0';
		wait for clk_period*2;

      wait;
   end process;

END;

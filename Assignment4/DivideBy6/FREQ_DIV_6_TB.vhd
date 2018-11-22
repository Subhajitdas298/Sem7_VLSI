--------------------------------------------------------------------------------
-- Company: 
-- Engineer:	Subhajit Das
--
-- Create Date:   07:33:40 11/18/2018
-- Design Name:   
-- Module Name:   /home/ise/VLSI/Assignment4/DivideBy6/FREQ_DIV_6_TB.vhd
-- Project Name:  DivideBy6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FREQ_DIV_6
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
 
ENTITY FREQ_DIV_6_TB IS
END FREQ_DIV_6_TB;
 
ARCHITECTURE behavior OF FREQ_DIV_6_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FREQ_DIV_6
    PORT(
         clk : IN  std_logic;
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal o : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FREQ_DIV_6 PORT MAP (
          clk => clk,
          o => o
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

END;

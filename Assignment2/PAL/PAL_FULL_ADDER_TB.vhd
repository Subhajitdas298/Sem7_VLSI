--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:14:33 11/24/2018
-- Design Name:   
-- Module Name:   /home/ise/VLSI/Assignment2/PAL/PAL_FULL_ADDER_TB.vhd
-- Project Name:  PAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PAL_FULL_ADDER
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
 
ENTITY PAL_FULL_ADDER_TB IS
END PAL_FULL_ADDER_TB;
 
ARCHITECTURE behavior OF PAL_FULL_ADDER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PAL_FULL_ADDER
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         s : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PAL_FULL_ADDER PORT MAP (
          a => a,
          b => b,
          cin => cin,
          s => s,
          cout => cout
        );
 

    -- Stimulus process
   stim_proc: process
	variable temp : std_logic_vector(2 downto 0) := "000";
   begin		
		stloop: for i in 0 to 7 loop
			temp := std_logic_vector(to_unsigned(i, 3));
			a <= temp(0);
			b <= temp(1);
			cin <= temp(2);
			wait for 10 ns;
		end loop;
		
		wait;
   end process;

END;

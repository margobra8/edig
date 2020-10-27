--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:30:00 11/14/2019
-- Design Name:   
-- Module Name:   /home/ise/Shared_Xilinx/Colab_2019-2020/Entrega3/full_system_tb.vhd
-- Project Name:  Entrega3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_system
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
 
ENTITY full_system_tb IS
END full_system_tb;
 
ARCHITECTURE behavior OF full_system_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_system
    PORT(
         num_in : IN  std_logic_vector(3 downto 0);
         key_push : IN  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic;
         door_access : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal num_in : std_logic_vector(3 downto 0) := (others => '0');
   signal key_push : std_logic := '0';
   signal rst : std_logic := '1';
   signal clk : std_logic := '0';

 	--Outputs
   signal door_access : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ms;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_system PORT MAP (
          num_in => num_in,
          key_push => key_push,
          rst => rst,
          clk => clk,
          door_access => door_access
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
	variable	studentCode	: integer;
   begin	

		studentCode:= 393; --XXXX PUT YOUR STUDENT CODE HERE!!!
		
      -- hold reset state for 100 ns.
		rst <= '1';
      wait for 100 ms;	
		if (door_access/= '0') then report "[ERROR]"; end if;
		rst <= '0';
		
		if (((studentCode) mod 2) = 0) then
			wait for 100 ms;
			key_push <= '1';
			num_in <= "0101";
			wait for 100 ms;
			if (door_access/= '0') then report "[ERROR]"; end if;
			key_push <= '0';
		
			wait for 100 ms;
			key_push <= '1';
			num_in <= "0110";
			wait for 100 ms;
			if (door_access/= '0') then report "[ERROR]"; end if;
			key_push <= '0';
			
			wait for 100 ms;
			key_push <= '1';
			num_in <= "0000";
			wait for 100 ms;
			if (door_access/= '0') then report "[ERROR]"; end if;
			key_push <= '0';
			
			wait for 100 ms;
			key_push <= '1';
			num_in <= "0101";
			wait for 100 ms;
			key_push <= '0';
			wait for 100 ms;
			if (door_access/= '1') then report "[ERROR]"; end if;
			wait for 900 ms;
			if (door_access/= '1') then report "[ERROR]"; end if;
			wait for 100 ms;
			if (door_access/= '0') then report "[ERROR]"; end if;
			wait for 400 ms;
			if (door_access/= '0') then report "[ERROR]"; end if;
		else
			wait for 100 ms;
			key_push <= '1';
			num_in <= "0001";
			wait for 100 ms;
			if (door_access/= '0') then report "[ERROR]"; end if;
			key_push <= '0';
		
			wait for 100 ms;
			key_push <= '1';
			num_in <= "0011";
			wait for 100 ms;
			if (door_access/= '0') then report "[ERROR]"; end if;
			key_push <= '0';
			
			wait for 100 ms;
			key_push <= '1';
			num_in <= "1001";
			wait for 100 ms;
			if (door_access/= '0') then report "[ERROR]"; end if;
			key_push <= '0';
			
			wait for 100 ms;
			key_push <= '1';
			num_in <= "0111";
			wait for 100 ms;
			key_push <= '0';
			wait for 100 ms;
			if (door_access/= '1') then report "[ERROR]"; end if;
			wait for 1400 ms;
			if (door_access/= '1') then report "[ERROR]"; end if;
			wait for 100 ms;
			if (door_access/= '0') then report "[ERROR]"; end if;
			wait for 400 ms;
			if (door_access/= '0') then report "[ERROR]"; end if;		
		end if;

    
      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:21:49 11/15/2019
-- Design Name:   
-- Module Name:   /home/ise/Shared_Xilinx/Colab_2019-2020/Entrega4/alarm_system_tb.vhd
-- Project Name:  Entrega4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alarm_system
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
--use STD.textio.all;
--use ieee.std_logic_textio.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alarm_system_tb IS
END alarm_system_tb;
 
ARCHITECTURE behavior OF alarm_system_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alarm_system
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         pulse : IN  std_logic;
         light_out : OUT  std_logic;
         alarm_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal pulse : std_logic := '0';

 	--Outputs
   signal light_out : std_logic;
   signal alarm_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 500000000 ns;
 
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alarm_system PORT MAP (
          clk => clk,
          rst => rst,
          pulse => pulse,
          light_out => light_out,
          alarm_out => alarm_out
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
	
		studentCode := 393; --INTRODUCE AQUI TU CODIGO DE ALUMNO
      -- hold reset state for 100 ns.
		if (((studentCode/10) mod 2) = 0) then
			rst <= '0';   
		else
			rst <= '1'; 
		end if;
      wait for clk_period*2;
		
		if (light_out /= '0') then report "[ERROR]"; end if;		
		if (alarm_out /= '0') then report "[ERROR]"; end if;		
		if (((studentCode/10) mod 2) = 0) then
			rst <= '1';   
		else
			rst <= '0'; 
		end if;
		wait for clk_period;	
		
		pulse <= '1';
		wait for clk_period;
		
		if (light_out /= '1') then report "[ERROR]"; end if;		
		if (alarm_out /= '0') then report "[ERROR]"; end if;				
		pulse <= '0';
		wait for clk_period;	
		
		if (light_out /= '0') then report "[ERROR]"; end if;		
		if (alarm_out /= '0') then report "[ERROR]"; end if;
		wait for clk_period;	
		
		if (light_out /= '1') then report "[ERROR]"; end if;		
		if (alarm_out /= '0') then report "[ERROR]"; end if;
		wait for clk_period;	
		
		if (light_out /= '0') then report "[ERROR]"; end if;		
		if (alarm_out /= '0') then report "[ERROR]"; end if;
		wait for clk_period;
		
		if (light_out /= '1') then report "[ERROR]"; end if;		
		if (alarm_out /= '0') then report "[ERROR]"; end if;
		wait for clk_period;
		
		if (light_out /= '0') then report "[ERROR]"; end if;		
		if (alarm_out /= '0') then report "[ERROR]"; end if;
		wait for clk_period;
		pulse <= '1';
		wait for clk_period;	
		pulse <= '0';
		if (light_out /= '1') then report "[ERROR]"; end if;		
		if (alarm_out /= '1') then report "[ERROR]"; end if;
		
		if ((studentCode mod 2) = 0) then
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '0') then report "[ERROR]"; end if;
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '1') then report "[ERROR]"; end if;
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '0') then report "[ERROR]"; end if;
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '1') then report "[ERROR]"; end if;
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '0') then report "[ERROR]"; end if;
			  wait for clk_period;  
		else
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '1') then report "[ERROR]"; end if;
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '1') then report "[ERROR]"; end if;
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '0') then report "[ERROR]"; end if;
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '0') then report "[ERROR]"; end if;
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '0') then report "[ERROR]"; end if;
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '1') then report "[ERROR]"; end if;
			  wait for clk_period;
			  
			  if (light_out /= '1') then report "[ERROR]"; end if;		
			  if (alarm_out /= '1') then report "[ERROR]"; end if;
			  wait for clk_period;
			
		end if;
		
		pulse <= '1';
		wait for clk_period;	
		pulse <= '0';
		if (light_out /= '0') then report "[ERROR]"; end if;		
		if (alarm_out /= '0') then report "[ERROR]"; end if;

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

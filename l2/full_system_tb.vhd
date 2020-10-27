-- Author: Marcos Gomez Bracamonte (marcos.gomezb@alumnos.upm.es)
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY full_system_tb IS
END full_system_tb;
 
ARCHITECTURE behavior OF full_system_tb IS 
 
    COMPONENT full_system
    PORT(
         access_code : IN  std_logic_vector(7 downto 0);
         door_code : IN  std_logic_vector(2 downto 0);
         door_out : OUT  std_logic_vector(7 downto 0);
         error : OUT  std_logic);
    END COMPONENT;
    

   
   signal access_code : std_logic_vector(7 downto 0) := (others => '0');
   signal door_code : std_logic_vector(2 downto 0) := (others => '0');
   signal door_out : std_logic_vector(7 downto 0);
   signal error : std_logic;
 
BEGIN
 

   uut: full_system PORT MAP (
          access_code => access_code,
          door_code => door_code,
          door_out => door_out,
          error => error);


   -- Simulation process
   stim_proc: process
   begin		
      
		access_code <= "00000000";
		door_code <= "000";
      wait for 5 ns;
		
		access_code <= "00000000";
		door_code <= "000";
      wait for 5 ns;
		
		access_code <= "00000001";
		door_code <= "000";
      wait for 5 ns;
		
		access_code <= "00000011";
		door_code <= "111";
      wait for 5 ns;
		
		access_code <= "00001010";
		door_code <= "010";
      wait for 5 ns;
		
		access_code <= "00001010";
		door_code <= "101";
      wait for 5 ns;
		 
		access_code <= "00001010";
		door_code <= "111";
      wait for 5 ns;
		
		access_code <= "01001010";
		door_code <= "010";
      wait for 5 ns;
		
		access_code <= "01001010";
		door_code <= "001";
      wait for 5 ns;
		
		access_code <= "01001010";
		door_code <= "000";
      wait for 5 ns;
		
   end process;

END;

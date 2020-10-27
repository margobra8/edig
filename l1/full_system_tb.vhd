LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY full_system_tb IS
END full_system_tb;
 
ARCHITECTURE behavior OF full_system_tb IS 
 
    COMPONENT full_system
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         CTL : IN  std_logic;
			C : IN  std_logic_vector(2 downto 0);
         OUT0 : out  STD_LOGIC;
         OUT1 : out  STD_LOGIC
        );
    END COMPONENT;
    
   signal A : std_logic_vector(1 downto 0);
   signal B : std_logic_vector(1 downto 0);
   signal CTL : std_logic;
   signal C : std_logic_vector(2 downto 0);
   signal OUT0 : std_logic;
	signal OUT1 : std_logic;
 
BEGIN

   uut: full_system PORT MAP (
          A => A,
          B => B,
          CTL => CTL,
			 C => C,
          OUT0 => OUT0,
			 OUT1 => OUT1
        );
		  
	A <= "00",
			"01" after 60 ns,
			"11" after 120 ns,
			"10" after 180 ns;
			
	B <= "00",
			"01" after 60 ns,
			"11" after 120 ns,
			"10" after 180 ns;
		  
	CTL <= '0', 
			'1' after 30 ns,
			'0' after 60 ns,
			'1' after 90 ns,
			'0' after 120 ns,
			'1' after 150 ns,
			'0' after 180 ns,
			'1' after 210 ns;		
			
			
	C <= "110", 
			"010" after 20 ns,
			"000" after 40 ns,
			"110" after 60 ns, 
			"010" after 80 ns,
			"000" after 100 ns,
			"110" after 120 ns,
			"010" after 140 ns,
			"000" after 160 ns;

END;
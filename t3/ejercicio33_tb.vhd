LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ejercicio33_tb IS
END ejercicio33_tb;

ARCHITECTURE behavior OF ejercicio33_tb IS 
  
    COMPONENT ejercicio33
    Port ( I_0 : in  STD_LOGIC;
           I_1 : in  STD_LOGIC;
           C : in  STD_LOGIC;
           F : out  STD_LOGIC);
    END COMPONENT;
    

   --Seales que conectaremos a nuestras entradas
   
	signal concat : std_logic_vector (2 downto 0);

 	--Seales que conectaremos a nuestra salida
   
	signal F : std_logic := '0';
	
   
   
BEGIN
 
	-- Conectamos estructuralmente a nuestra unidad
	
   uut: ejercicio33 PORT MAP (
          I_0 => concat(0) ,
          I_1=> concat(1) ,
          C => concat(2) ,
          F => F
        );
		  
-- asignamos valores sucesivos a la seal de salida del test bench y entrada a nuestra entidad
   concat <= "000", "001" after 20 ns,"010" after 40 ns,"011" after 60 ns,"100" after 80 ns;
 
END behavior;

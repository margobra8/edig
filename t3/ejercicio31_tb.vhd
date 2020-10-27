LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ejercicio31_tb IS
END ejercicio31_tb;
 
ARCHITECTURE behavior OF ejercicio31_tb IS 
  
    COMPONENT ejercicio31
    PORT(
         P : IN  std_logic;
         L : IN  std_logic;
         C : IN  std_logic;
         A : OUT  std_logic
        );
    END COMPONENT;
    

   --Seales que conectaremos a nuestras entradas
   
	signal concat : std_logic_vector (0 to 2);

 	--Seales que conectaremos a nuestra salida
   
	signal B : std_logic;
	
   
   
BEGIN
 
	-- Conectamos estructuralmente a nuestra unidad
	
   uut: ejercicio31 PORT MAP (
          P => concat(0) ,
          L => concat(1) ,
          C => concat(2) ,
          A => B
        );
		  
-- asignamos valores sucesivos a la seal de salida del test bench y entrada a nuestra entidad
   concat <= "000", "001" after 20 ns,"010" after 40 ns,"011" after 60 ns,"100" after 80 ns;
 
END behavior;

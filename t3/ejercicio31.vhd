library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ejercicio31 is
    Port ( P : in  STD_LOGIC;
           L : in  STD_LOGIC;
           C : in  STD_LOGIC;
           A : out  STD_LOGIC);
end ejercicio31;

architecture Behavioral of ejercicio31 is

-- declaramos los componentes que vamos a usar 
	component AAND2
              port (in1, in2: in STD_LOGIC;
                    o: out STD_LOGIC);
	end component;
  
	component OOR2
             port (in1, in2: in STD_LOGIC;
                    out1: out STD_LOGIC);
	end component;
  
	component NOT1
              port (in1: in STD_LOGIC;
                    out1: out STD_LOGIC);
	end component;
	
  -- declaracion de las seales que usaremos para interconectar los mdulos
	signal DOOR_NOT, SBELT_NOT, B1, B2: STD_LOGIC;
     
begin 
  -- Conexin de los componentes
	U0: NOT1 port map (in1 => P, 
							out1 => DOOR_NOT);
	U1: NOT1 port map (in1 => C, 
							out1 => SBELT_NOT);
	U2: AAND2 port map (in1 => L, 
							 in2 => DOOR_NOT, 
							 o => B1);
	U3: AAND2 port map (in1 => L, 
							  in2 => SBELT_NOT,
								o => B2);
	U4: OOR2  port map (in1 => B1,
								in2 => B2, 
								out1 => A);
 
end Behavioral;




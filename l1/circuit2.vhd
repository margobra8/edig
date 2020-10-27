library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circuit2 is
	Port ( D0 : in STD_LOGIC;
	D1 : in STD_LOGIC;
	E0 : in STD_LOGIC;
	OUT0 : out STD_LOGIC);
end circuit2;

architecture Behavioral of circuit2 is
	signal Y, Z: std_logic;
begin
	Y <= (not (D0 or D1));
	Z <= E0 xor Y;
	OUT0 <= D0 and Z;
end Behavioral;


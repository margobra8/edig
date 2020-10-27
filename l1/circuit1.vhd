library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circuit1 is
	Port ( C0 : in STD_LOGIC;
	C1 : in STD_LOGIC;
	C2 : in STD_LOGIC;
	E0 : out STD_LOGIC;
	E1 : out STD_LOGIC);
end circuit1;

architecture Behavioral of circuit1 is
	signal A: std_logic;
begin
	A <= C0 or C1 or C2;
	E0 <= C0 xor A;
	E1 <= C2 xor A;
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer is
	Port (A : in STD_LOGIC_VECTOR (1 downto 0);
			B : in STD_LOGIC_VECTOR (1 downto 0);
			CTL : in STD_LOGIC;
			D : out STD_LOGIC_VECTOR (1 downto 0));
end multiplexer;

architecture Behavioral of multiplexer is
	
begin
	with CTL select D <=
			A when '0',
			B when others;
end Behavioral;


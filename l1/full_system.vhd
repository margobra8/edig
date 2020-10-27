library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_system is
	Port (A : in STD_LOGIC_VECTOR (1 downto 0);
			B : in STD_LOGIC_VECTOR (1 downto 0);
			CTL : in STD_LOGIC;
			C : in STD_LOGIC_VECTOR (2 downto 0);
			OUT0 : out STD_LOGIC;
			OUT1 : out STD_LOGIC);
end full_system;

architecture Behavioral of full_system is

component circuit1 is
	Port ( C0 : in STD_LOGIC;
	C1 : in STD_LOGIC;
	C2 : in STD_LOGIC;
	E0 : out STD_LOGIC;
	E1 : out STD_LOGIC);
end component;

component circuit2 is
	Port ( D0 : in STD_LOGIC;
	D1 : in STD_LOGIC;
	E0 : in STD_LOGIC;
	OUT0 : out STD_LOGIC);
end component;

component multiplexer is
	Port (A : in STD_LOGIC_VECTOR (1 downto 0);
			B : in STD_LOGIC_VECTOR (1 downto 0);
			CTL : in STD_LOGIC;
			D : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal SNMUX : std_logic_vector(1 downto 0);
signal SN1 : std_logic;

begin

U0: multiplexer port map (A => A, B => B, CTL => CTL, D => SNMUX);
U1: circuit1 port map (C0 => C(0), C1 => C(1), C2 => C(2), E0 => SN1, E1 => OUT1);
U2: circuit2 port map (D0 => SNMUX(0), D1 => SNMUX(1), E0 => SN1, OUT0 => OUT0);

end Behavioral;


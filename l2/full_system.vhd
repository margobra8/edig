library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_system is
Port (access_code: in STD_LOGIC_VECTOR (7 downto 0);
		door_code: in STD_LOGIC_VECTOR (2 downto 0);
		door_out: out STD_LOGIC_VECTOR (7 downto 0);
		error: out STD_LOGIC);
end full_system;


architecture Behavioural of full_system is

component encoder
	Port (enc_in : in STD_LOGIC_VECTOR (7 downto 0);
			enc_out: out STD_LOGIC_VECTOR (2 downto 0));
end component;

component div_mult
	Port (group_in : in STD_LOGIC_VECTOR (2 downto 0);
			group_out : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component sum
	Port (s1 : in STD_LOGIC_VECTOR (2 downto 0);
			s2 : in STD_LOGIC_VECTOR (2 downto 0);
			sum_out : out STD_LOGIC_VECTOR (2 downto 0);
			sum_cout : out STD_LOGIC);
end component;

component decoder
Port (dec_in : in STD_LOGIC_VECTOR (2 downto 0);
		en : in STD_LOGIC;
		dec_out : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal india, masala, kolkata: std_logic_vector(2 downto 0);
signal tikka, not_tikka: std_logic;


begin

U0: encoder port map (enc_in => access_code, enc_out => india);

U1: div_mult port map (group_in => india, group_out => masala);

U2: sum port map (s1 => masala, s2 => door_code, sum_out => kolkata, sum_cout => tikka);

not_tikka <= not tikka;
error <= tikka;

U3: decoder port map (dec_in => door_code, en => not_tikka, dec_out => door_out);

end Behavioural;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sum is
	Port (s1 : in STD_LOGIC_VECTOR (2 downto 0);
			s2 : in STD_LOGIC_VECTOR (2 downto 0);
			sum_out : out STD_LOGIC_VECTOR (2 downto 0);
			sum_cout : out STD_LOGIC);
end sum;

architecture Behavioural of sum is

component f_adder is
	Port (sum_a : in STD_LOGIC;
			sum_b : in STD_LOGIC;
			cin : in STD_LOGIC;
			sum : out STD_LOGIC;
			cout : out STD_LOGIC);
end component;

signal cout0, cout1: std_logic;

begin
FA0: f_adder port map (sum_a => s1(0),
					sum_b => s2(0),
					cin => '0',
					sum => sum_out(0),
					cout => cout0);
					
FA1: f_adder port map (sum_a => s1(1),
					sum_b => s2(1),
					cin => cout0,
					sum => sum_out(1),
					cout => cout1);
					
FA2: f_adder port map (sum_a => s1(2),
					sum_b => s2(2),
					cin => cout1,
					sum => sum_out(2),
					cout => sum_cout);

end Behavioural;


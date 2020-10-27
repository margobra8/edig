library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity div_mult is
	Port (group_in : in STD_LOGIC_VECTOR (2 downto 0);
			group_out : out STD_LOGIC_VECTOR (2 downto 0));
end div_mult;


architecture Behavioural of div_mult is

signal foo: std_logic_vector(2 downto 0);

begin

foo <= group_in(2 downto 1) & '0';
group_out <= foo or "001";

end Behavioural;
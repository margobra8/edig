library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
	Port (num_0 : in STD_LOGIC_VECTOR (3 downto 0);
			num_1 : in STD_LOGIC_VECTOR (3 downto 0);
			num_2 : in STD_LOGIC_VECTOR (3 downto 0);
			num_3 : in STD_LOGIC_VECTOR (3 downto 0);
			cmp_out : out STD_LOGIC);
end comparator;

architecture rtl of comparator is

begin
	process (num_0, num_1, num_2, num_3)
	begin
		cmp_out <= '0';
		if (num_0 = "0001" and num_1 = "0011" and num_2 = "1001" and num_3 = "0111") then
			cmp_out <= '1';
		end if;
	end process;



end rtl;


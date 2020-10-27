library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop_d is
Port (D : in STD_LOGIC;
		Q : out STD_LOGIC;
		clk : in STD_LOGIC;
		rst : in STD_LOGIC);
end flipflop_d;

architecture rtl of flipflop_d is
begin
	process (clk, rst)
	begin
		if (rst = '1') then
			Q <= '0';
		elsif(clk'event and clk = '1') then
			Q <= D;
		end if;
	end process;

end rtl;


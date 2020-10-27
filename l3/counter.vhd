library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity counter is
Port (ctr1 : in STD_LOGIC;
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		timeout : out STD_LOGIC);
end counter;

architecture rtl of counter is
signal r_next, r_act : unsigned(3 downto 0);

	
begin

process (ctr1, r_act)
	begin
		if (ctr1 = '1') then
			r_next <= r_act + 1;
		else
			r_next <= (others => '0');
		end if;
end process;
  
process (clk, r_next, rst)
	begin
		if (rst = '1') then
			r_act <= "0000";
		elsif (clk'event and clk = '1') then
			r_act <= r_next;
		end if;
	end process;

process (r_act)
	begin
		if (r_act = "1111") then
			timeout <= '1';
		else
			timeout <= '0';
		end if;
	end process;

end rtl;


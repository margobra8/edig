library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity shift_register is
	Port (serial_in : in STD_LOGIC_VECTOR (3 downto 0);
			en : in STD_LOGIC;
			rst: in STD_LOGIC;
			clk : in STD_LOGIC;
			num_0 : out STD_LOGIC_VECTOR (3 downto 0);
			num_1 : out STD_LOGIC_VECTOR (3 downto 0);
			num_2 : out STD_LOGIC_VECTOR (3 downto 0);
			num_3 : out STD_LOGIC_VECTOR (3 downto 0));
end shift_register;

architecture rtl of shift_register is

signal aux_3, aux_2, aux_1, aux_0: std_logic_vector(3 downto 0);

	begin
	process (clk, rst, en)
		begin
		if (rst = '1') then
			aux_3 <= "0000";
			aux_2 <= "0000";
			aux_1 <= "0000";
			aux_0 <= "0000";
		elsif (en = '1' and clk'event and clk = '1') then
			aux_0 <= aux_1;
			aux_1 <= aux_2;
			aux_2 <= aux_3;
			aux_3 <= serial_in;
		end if;
	end process;
	
	num_3 <= aux_3;
	num_2 <= aux_2;
	num_1 <= aux_1;
	num_0 <= aux_0;

end rtl;


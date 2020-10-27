library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder is
	Port (enc_in : in STD_LOGIC_VECTOR (7 downto 0);
			enc_out: out STD_LOGIC_VECTOR (2 downto 0));
end encoder;


architecture Behavioural of encoder is

begin

enc_out <=  "111" when (enc_in(7)='1') else
				"110" when (enc_in(6)='1') else
				"101" when (enc_in(5)='1') else
				"100" when (enc_in(4)='1') else
				"011" when (enc_in(3)='1') else
				"010" when (enc_in(2)='1') else
				"001" when (enc_in(1)='1') else
				"000";
				
end Behavioural;
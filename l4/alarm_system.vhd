----------------------------------------------------------------------------------
-- Engineer: Marcos Gomez Bracamonte marcos.gomezb@alumnos.upm.es
-- Create Date:    19:44:40 01/07/2020

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alarm_system is
	Port (clk : in STD_LOGIC;
			rst : in STD_LOGIC;
			pulse : in STD_LOGIC;
			light_out : out STD_LOGIC;
			alarm_out : out STD_LOGIC);
end alarm_system;

architecture rtl of alarm_system is

	type state_class is (A, B0, B1, C0, C1, C2, C3, C4, C5);
	signal current_state: state_class := A;
	signal next_state: state_class := A;
	
begin

	-- state memory
	process (clk)
		begin
		if (clk='1' and clk'event) then
			if (rst = '1') then -- rst active at a high level
				current_state <= A;
			else
				current_state <= next_state;
			end if;
		end if;
	end process;
	
	-- nsl
	process(current_state, pulse)
		begin
		case current_state is
			when A =>
				if (pulse = '1') then
					next_state <= B0;
				else
					next_state <= A;
				end if;
				
			when B0 =>
				if (pulse = '1') then
					next_state <= C0;
				else
					next_state <= B1;
				end if;
			
			when B1 =>
				if (pulse = '1') then
					next_state <= C0;
				else
					next_state <= B0;
				end if;
				
			when C0 =>
				if (pulse = '1') then
					next_state <= A;
				else
					next_state <= C1;
				end if;
				
			when C1 =>
				if (pulse = '1') then
					next_state <= A;
				else
					next_state <= C2;
				end if;
				
			when C2 =>
				if (pulse = '1') then
					next_state <= A;
				else
					next_state <= C3;
				end if;
			
			when C3 =>
				if (pulse = '1') then
					next_state <= A;
				else
					next_state <= C4;
				end if;
				
			when C4 =>
				if (pulse = '1') then
					next_state <= A;
				else
					next_state <= C5;
				end if;
			
			when C5 =>
				if (pulse = '1') then
					next_state <= A;
				else
					next_state <= C0;
				end if;
			
			when others =>
				next_state <= A;
				
		end case;
	end process;
	
	-- Output combinational
	process(current_state)
		begin
		case current_state is
			when B0 =>
				light_out <= '1';
				alarm_out <= '0';

			when C0 =>
				light_out <= '1';
				alarm_out <= '1';

			when C1 =>
				light_out <= '1';
				alarm_out <= '1';

			when C2 =>
				light_out <= '1';
				alarm_out <= '1';

			when C3 =>
				light_out <= '1';
				alarm_out <= '0';

			when C4 =>
				light_out <= '1';
				alarm_out <= '0';

			when C5 =>
				light_out <= '1';
				alarm_out <= '0';

			when others =>
				light_out <= '0';
				alarm_out <= '0';
		end case;
	end process;
	

end rtl;

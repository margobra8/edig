library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_system is
Port (num_in : in STD_LOGIC_VECTOR (3 downto 0);
		key_push : in STD_LOGIC;
		rst : in STD_LOGIC;
		clk : in STD_LOGIC;
		door_access : out STD_LOGIC);
end full_system;



architecture rtl of full_system is

signal ack, com_out, tmr_out, tsr : std_logic;
signal tmp_3, tmp_2, tmp_1, tmp_0 : std_logic_vector(3 downto 0);


component flipflop_d is
Port (D : in STD_LOGIC;
		Q : out STD_LOGIC;
		clk : in STD_LOGIC;
		rst : in STD_LOGIC);
end component;

component shift_register is
	Port (serial_in : in STD_LOGIC_VECTOR (3 downto 0);
			en : in STD_LOGIC;
			rst: in STD_LOGIC;
			clk : in STD_LOGIC;
			num_0 : out STD_LOGIC_VECTOR (3 downto 0);
			num_1 : out STD_LOGIC_VECTOR (3 downto 0);
			num_2 : out STD_LOGIC_VECTOR (3 downto 0);
			num_3 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component comparator is
	Port (num_0 : in STD_LOGIC_VECTOR (3 downto 0);
			num_1 : in STD_LOGIC_VECTOR (3 downto 0);
			num_2 : in STD_LOGIC_VECTOR (3 downto 0);
			num_3 : in STD_LOGIC_VECTOR (3 downto 0);
			cmp_out : out STD_LOGIC);
end component;

component counter is
Port (ctr1 : in STD_LOGIC;
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		timeout : out STD_LOGIC);
end component;

begin

Z0: flipflop_d port map(D => key_push, rst => rst, clk => clk, Q => ack);
Z1: shift_register port map(serial_in => num_in, en => ack, clk => clk, rst => tsr, num_3 => tmp_3, num_2 => tmp_2, num_1 => tmp_1, num_0 => tmp_0);
Z2: comparator port map(num_3 => tmp_3, num_2 => tmp_2, num_1 => tmp_1, num_0 => tmp_0, cmp_out => com_out);
Z3: counter port map(ctr1 => com_out, clk => clk, rst => rst, timeout => tmr_out);

tsr <= rst or tmr_out;
door_access <= com_out;

end rtl;


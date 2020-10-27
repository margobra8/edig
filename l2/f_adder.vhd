library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity f_adder is
	Port (sum_a : in STD_LOGIC;
			sum_b : in STD_LOGIC;
			cin : in STD_LOGIC;
			sum : out STD_LOGIC;
			cout : out STD_LOGIC);
end f_adder;

architecture Behavioural of f_adder is

begin

sum <= sum_a xor sum_b xor cin;
cout <= (sum_a and sum_b) or (sum_a and cin) or (sum_b and cin);

end Behavioural;
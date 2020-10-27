
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY f_adder_tb IS
END f_adder_tb;
 
ARCHITECTURE behavior OF f_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT f_adder
    PORT(
         sum_a : IN  std_logic;
         sum_b : IN  std_logic;
         cin : IN  std_logic;
         sum : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sum_a : std_logic := '0';
   signal sum_b : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal cout : std_logic;
 
BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
 uut: f_adder PORT MAP (
	sum_a => sum_a,
	sum_b => sum_b,
	cin => cin,
	sum => sum,
	cout => cout);
 
 -- Stimulus process
 stim_proc: process
	 begin
	 -- hold reset state for 100 ns.
	 wait for 100 ns;
	 
	 -- insert stimulus here
	 sum_a <= '1';
	 sum_b <= '0';
	 cin <= '0';
	 wait for 10 ns;
	 
	 sum_a <= '0';
	 sum_b <= '1';
	 cin <= '0';
	 wait for 10 ns;

	 sum_a <= '1';
	 sum_b <= '1';
	 cin <= '0';
	 wait for 10 ns;

	 sum_a <= '0';
	 sum_b <= '0';
	 cin <= '1';
	 wait for 10 ns;
	 
	 sum_a <= '1';
	 sum_b <= '0';
	 cin <= '1';
	 wait for 10 ns;
	 
	 sum_a <= '0';
	 sum_b <= '1';
	 cin <= '1';
	 wait for 10 ns;
	 
	 sum_a <= '1';
	 sum_b <= '1';
	 cin <= '1';
	 wait for 10 ns;

	 end process;
	 
END;


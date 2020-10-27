
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY div_mult_tb IS
END div_mult_tb;
 
ARCHITECTURE behavior OF div_mult_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT div_mult
    PORT(
         group_in : IN  std_logic_vector(2 downto 0);
         group_out : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal group_in : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal group_out : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 	-- Instantiate the Unit Under Test (UUT)
   uut: div_mult PORT MAP (
          group_in => group_in,
          group_out => group_out);

tst_p: process
   begin
		 group_in<="000";
       wait for 100 ns;
       group_in<="001";
       wait for 100 ns;
       group_in<="010";
       wait for 100 ns;
       group_in<="011";
       wait for 100 ns;
       group_in<="100";
       wait for 100 ns;
       group_in<="101";
       wait for 100 ns;
       group_in<="110";
       wait for 100 ns;
       group_in<="111";
		 wait for 100 ns;
    end process;

END;

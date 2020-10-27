
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sum_tb IS
END sum_tb;
 
ARCHITECTURE behavior OF sum_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sum
    PORT(
         s1 : IN  std_logic_vector(2 downto 0);
         s2 : IN  std_logic_vector(2 downto 0);
         sum_out : OUT  std_logic_vector(2 downto 0);
         sum_cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal s1 : std_logic_vector(2 downto 0) := (others => '0');
   signal s2 : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal sum_out : std_logic_vector(2 downto 0);
   signal sum_cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sum PORT MAP (
          s1 => s1,
          s2 => s2,
          sum_out => sum_out,
          sum_cout => sum_cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		 s1<="010";
		 s2<="001";
       wait for 100 ns;
       s1<="010";
		 s2<="110";
       wait for 100 ns;
		 s1<="000";
		 s2<="000";
       wait for 100 ns;
		 s1<="000";
		 s2<="000";
       wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;

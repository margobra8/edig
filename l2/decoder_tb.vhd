
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY decoder_tb IS
END decoder_tb;
 
ARCHITECTURE behavior OF decoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         dec_in : IN  std_logic_vector(2 downto 0);
         en : IN  std_logic;
         dec_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal dec_in : std_logic_vector(2 downto 0) := (others => '0');
   signal en : std_logic := '0';

 	--Outputs
   signal dec_out : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          dec_in => dec_in,
          en => en,
          dec_out => dec_out
        );

   -- Stimulus process
   stim_proc: process
   begin	
		 dec_in<="000";
		 en <='1';
       wait for 100 ns;
       dec_in<="001";
		 en <='1';
       wait for 100 ns;
       dec_in<="010";
		 en <='1';
       wait for 100 ns;
       dec_in<="011";
		 en <='1';
       wait for 100 ns;
       dec_in<="100";
		 en <='1';
       wait for 100 ns;
       dec_in<="101";
		 en <='1';
       wait for 100 ns;
       dec_in<="110";
		 en <='1';
       wait for 100 ns;
       dec_in<="111";
		 en <='1';
       wait for 100 ns;
		 dec_in<="111";
		 en <='0';
       wait for 100 ns;

   end process;

END;


--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY encoder_tb IS
END encoder_tb;
 
ARCHITECTURE behavior OF encoder_tb IS 
 
    COMPONENT encoder
    PORT(
         enc_in : IN  std_logic_vector(7 downto 0);
         enc_out : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    


   signal enc_in_signal : std_logic_vector(7 downto 0);
   signal enc_out_signal : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder PORT MAP (
          enc_in => enc_in_signal,
          enc_out => enc_out_signal);

tst_p: process
   begin
		 enc_in_signal<="00000000";
       wait for 100 ns;
       enc_in_signal<="00000001";
       wait for 100 ns;
       enc_in_signal<="00000010";
       wait for 100 ns;
       enc_in_signal<="00000100";
       wait for 100 ns;
       enc_in_signal<="00001000";
       wait for 100 ns;
       enc_in_signal<="00010000";
       wait for 100 ns;
       enc_in_signal<="00100000";
       wait for 100 ns;
       enc_in_signal<="01000000";
       wait for 100 ns;
       enc_in_signal<="10000000";
       wait for 100 ns;
    end process;
 

END;

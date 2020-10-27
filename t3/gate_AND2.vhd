

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity AAND2 is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           o : out  STD_LOGIC);
end AAND2;

architecture Behavioral of AAND2 is

begin

o <= in1 and in2;
end Behavioral;

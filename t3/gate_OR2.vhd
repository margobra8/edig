

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity oor2 is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           out1 : out  STD_LOGIC);
end oor2;

architecture Behavioral of oor2 is

begin
 
 out1 <= in1 or in2;

end Behavioral;

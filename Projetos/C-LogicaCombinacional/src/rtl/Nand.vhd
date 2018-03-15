library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_z01 is
port(
a : in std_logic;
b : in std_logic;
q : out std_logic
);
end nand_z01;

architecture rtl of nand_z01 is
begin

q <= not (a and b);

end rtl;
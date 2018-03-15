library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMux8Way is
	port (
			a:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q0:  out STD_LOGIC;
			q1:  out STD_LOGIC;
			q2:  out STD_LOGIC;
			q3:  out STD_LOGIC;
			q4:  out STD_LOGIC;
			q5:  out STD_LOGIC;
			q6:  out STD_LOGIC;
			q7:  out STD_LOGIC);
end entity;

architecture rtl of DMux8Way is

begin

if sel = "000" a <= q0 else sel = "001" a <= q1 else sel = "010" a <= q2 else sel = "011" a <= q3 else sel = "100" a <= q4 else sel = "101" a <= q5 else sel = "110" a <= q6 else a <= q7;

end rtl;

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

a <= q0 when sel = "000";
a <= q1 when sel = "001";
a <= q2 when sel = "010";
a <= q3 when sel = "011";
a <= q4 when sel = "100";
a <= q5 when sel = "101";
a <= q6 when sel = "110";
a <= q7 when sel = "111";



end rtl;

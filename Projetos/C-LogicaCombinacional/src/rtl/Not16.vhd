library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Not16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0));
<<<<<<< HEAD
end Not16;

architecture rtl of Not16 is
begin
	q <= not (a);
=======
end entity;

architecture rtl of Not16 is
begin
	q <= not a
>>>>>>> ca80f5a25357ab1f1da242de5173559d2de2bdae
end rtl;
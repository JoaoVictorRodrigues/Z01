library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8Way16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			c:   in  STD_LOGIC_VECTOR(15 downto 0);
			d:   in  STD_LOGIC_VECTOR(15 downto 0);
			e:   in  STD_LOGIC_VECTOR(15 downto 0);
			f:   in  STD_LOGIC_VECTOR(15 downto 0);
			g:   in  STD_LOGIC_VECTOR(15 downto 0);
			h:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0));
end entity;

architecture rtl of Mux8Way16 is
begin
	if (sel = 000) then
      Z <= a;
  elsif (sel = 001) then
      Z <= b;
  elsif (sel = 010) then
      Z <= c;
  elsif (sel = 011) then
      Z <= d;
  elsif (sel = 100) then
      Z <= e;
  elsif (sel = 101) then
      Z <= f;
  elsif (sel = 110) then
      Z <= g;
  else then
      Z <= h;
  end if;
end Behavioral;
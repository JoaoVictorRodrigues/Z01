library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DMux8Way is
    Port ( p : in std_logic;
           q : out std_logic_vector(7 downto 0);
           r : in std_logic_vector(2 downto 0));
end DMux8Way;

architecture demux18 of DMux8Way is

begin
process(p,r)
begin
case r is
when "000"=>
q(0)<=p;
when "001"=>
q(1)<=p;
when "010"=>
q(2)<=p;
when "011"=>
q(3)<=p;
when "100"=>
q(4)<=p;
when "101"=>
q(5)<=p;
when "110"=>
q(6)<=p;
when others=>
q(7)<=p;
end case;
end process;
end demux18;

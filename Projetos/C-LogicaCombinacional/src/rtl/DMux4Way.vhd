library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DMux4Way is
    Port ( p : in std_logic;
           q : out std_logic_vector(3 downto 0);
           r : in std_logic_vector(1 downto 0));
end DMux4Way;

architecture demux14 of DMux4Way is

begin
process(p,r)
begin
case r is
when "00"=>
q(0)<=p;
when "01"=>
q(1)<=p;
when "10"=>
q(2)<=p;
when others=>
q(3)<=p;
end case;
end process;
end demux14;

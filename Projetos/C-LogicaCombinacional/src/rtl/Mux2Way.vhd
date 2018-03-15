library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all

entity mux2Way is
    Port ( x : in std_logic_vector(1 downto 0);
           s : in std_logic_vector(1 downto 0);
           y : out std_logic);
end mux2Way;

architecture mux of mux2Way is

begin
  process(x,s)
  begin
  if(s="0")then
    y<=x(0);
  end if ;
  end process ;
end mux;

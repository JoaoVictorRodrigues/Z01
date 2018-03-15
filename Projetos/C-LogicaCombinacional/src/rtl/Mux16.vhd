library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Mux16 is
    port (
            a:   in  STD_LOGIC;
            b:   in  STD_LOGIC;
            c:   in  STD_LOGIC;
            d:   in  STD_LOGIC;
      		e:   in  STD_LOGIC;
            f:   in  STD_LOGIC;
            g:   in  STD_LOGIC;
            h:   in  STD_LOGIC;
      		i:   in  STD_LOGIC;
            j:   in  STD_LOGIC;
            k:   in  STD_LOGIC;
            l:   in  STD_LOGIC;
     		 m:   in  STD_LOGIC;
            n:   in  STD_LOGIC;
            o:   in  STD_LOGIC;
            p:   in  STD_LOGIC;
            sel: in  STD_LOGIC_VECTOR(15 downto 0);
            q:   out STD_LOGIC);
end Mux16;
architecture rtl of Mux16 is
begin
q   <=  a when sel = "0000" else
        b when sel = "0001" else
        c when sel = "0010" else
        d when sel = "0011" else
        e when sel = "0100" else
        f when sel = "0101" else
        g when sel = "0110" else
        h when sel = "0111" else
        i when sel = "1000" else
	    j when sel = "1001" else
        k when sel = "1010" else
        l when sel = "1011" else
        m when sel = "1100" else
        n when sel = "1101" else
        o when sel = "1110" else
        p;
end rtl;
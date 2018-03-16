LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_BIT.ALL;
2
ENTITY BarrelShifter8 IS
PORT(clk, il, ir : IN BIT;
s: IN BIT_VECTOR(1 DOWNTO 0);
i : IN BIT_VECTOR(3 DOWNTO 0);
q : OUT BIT_VECTOR(3 DOWNTO 0));
END BarrelShifter8;
ARCHITECTURE beh1 OF BarrelShifter8 IS
SIGNAL qtmp : BIT_VECTOR(3 DOWNTO 0);
BEGIN
              PROCESS(clk)
              BEGIN
IF (clk = '1' AND clk'EVENT) THEN
   CASE s IS
WHEN "00" => qtmp <= qtmp;
WHEN "01" => qtmp <= i;
WHEN "10" => qtmp<=qtmp(2 DOWNTO 0) & ir;
WHEN "11" => qtmp<=il & qtmp(3 DOWNTO 1);
    WHEN OTHERS => NULL;
   END CASE;
  END IF;
              END              PROCESS;
              q              <=              qtmp;
END beh1;

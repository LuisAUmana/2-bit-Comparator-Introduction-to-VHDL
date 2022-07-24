library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity comparator2BitStructural is
    Port ( a : in STD_LOGIC_VECTOR(1 downto 0);
           b : in STD_LOGIC_VECTOR(1 downto 0);
           eq : out STD_LOGIC);
end comparator2BitStructural;
architecture Behavioral of comparator2BitStructural is
 signal s0, s1: std_logic; 
begin
  eq_bit0: entity work.comparator1Bit
    port map (a=>a(0), b=>b(0), eq=>s0);
  eq_bit1: entity work.comparator1Bit
    port map (a=>a(1), b=>b(1), eq=>s1);
  eq <= s0 and s1;
end Behavioral;

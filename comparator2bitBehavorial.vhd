library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity comparator2bitBehavorial is
    Port ( a : in STD_LOGIC_VECTOR(1 downto 0);
           b : in STD_LOGIC_VECTOR(1 downto 0);
           eq : out STD_LOGIC);
end comparator2bitBehavorial;
architecture Behavioral of comparator2bitBehavorial is
begin
process(a,b)
  begin 
    if (a(0)=b(0)) and (a(1)=b(1)) then
      eq <= '1';
    else
      eq<='0';
    end if;      
  end process;
end Behavioral;

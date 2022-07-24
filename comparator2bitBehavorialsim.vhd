library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity comparator2bitBehavorialsim is
-- Port ( ); 
end comparator2bitBehavorialsim;
architecture Behavioral of comparator2bitBehavorialsim is
 signal a : std_logic_vector(1 downto 0); 
 signal b : std_logic_vector(1 downto 0); 
 signal eq : std_logic; 
begin 
p0:entity work.comparator2bitBehavorial(Behavioral) port map(a=>a,b=>b,eq=>eq); 
process 
begin 
    A <= "00"; 
    B <= "00"; 
    wait for 20ns; 
    A <= "00"; 
    B <= "01"; 
    wait for 20ns; 
    A <= "00"; 
    B <= "10"; 
    wait for 20ns; 
    A <= "00"; 
    B <= "11"; 
    wait for 20ns; 
    
    A <= "01"; 
    B <= "00"; 
    wait for 20ns; 
    A <= "01"; 
    B <= "01"; 
    wait for 20ns; 
    A <= "01"; 
    B <= "10"; 
    wait for 20ns; 
    A <= "01"; 
    B <= "11"; 
    wait for 20ns; 
    
    A <= "10"; 
    B <= "00"; 
    wait for 20ns; 
    A <= "10"; 
    B <= "01"; 
    wait for 20ns; 
    A <= "10"; 
    B <= "10"; 
    wait for 20ns; 
    A <= "10"; 
    B <= "11"; 
    wait for 20ns; 
    
    A <= "11"; 
    B <= "00"; 
    wait for 20ns; 
    A <= "11"; 
    B <= "01"; 
    wait for 20ns; 
    A <= "11"; 
    B <= "10"; 
    wait for 20ns; 
    A <= "11"; 
    B <= "11"; 
    wait for 20ns; 
  end process;
end Behavioral;

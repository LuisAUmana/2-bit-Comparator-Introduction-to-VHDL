library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity comparator2bitDataflow is
Port ( a : in STD_LOGIC_VECTOR(1 downto 0);
b : in STD_LOGIC_VECTOR(1 downto 0);
eq : out STD_LOGIC);
end comparator2bitDataflow;

architecture Behavioral of comparator2bitDataflow is
signal s0, s1, s2, s3: std_logic;

begin
s0 <= (not a(1)) and (not a(0)) and (not b(1)) and (not b(0));
s1 <= (not a(1)) and a(0) and (not b(1)) and b(0);
s2 <= a(1) and (not a(0)) and b(1) and (not b(0));
s3 <= a(1) and a(0) and b(1) and b(0);
eq <= s0 or s1 or s2 or s3;
end Behavioral;

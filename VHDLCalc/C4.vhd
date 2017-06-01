library ieee;
use ieee.std_logic_1164.all;

entity C4 is
generic (N: natural := 8);
port( 
	A: in std_logic_vector((N-1) downto 0);
	Clock_50,RST: in std_logic;
	F: out std_logic_vector((N-1) downto 0)
);
end C4;

architecture c4_estr of C4 is --left bit shifter
	signal signalshift: std_logic_vector((N-1) downto 0);
begin
	process(clock_50,RST)
	begin
		if rst = '0' then
			signalshift <= (others => '0');
		elsif (rising_edge(clock_50)) then
			signalshift((N-2) downto 0) <= A((N-1) downto 1);
			signalshift(N-1) <= '0';
		end if;
	end process;
	F <= signalshift;
end c4_estr;
library ieee;
use ieee.std_logic_1164.all;

entity C3 is
generic (N: natural := 8);
port( 
	A: in std_logic_vector((N-1) downto 0);
	Clock_50,RST: in std_logic;
	F: out std_logic_vector((N-1) downto 0)
);
end C3;

architecture c3_estr of C3 is --left bit shifter
	signal signalshift: std_logic_vector((N-1) downto 0);
begin
	process(clock_50,RST)
	begin
		if rst = '0' then
			signalshift <= (others => '0');
		elsif (rising_edge(clock_50)) then
			signalshift((N-1) downto 1) <= A((N-2) downto 0);
			signalshift(0) <= '0';
		end if;
	end process;
	F <= signalshift;
end c3_estr;
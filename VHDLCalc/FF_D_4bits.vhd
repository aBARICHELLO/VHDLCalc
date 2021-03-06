library ieee;
use ieee.std_logic_1164.all;

-- Flip Flop D with Reset and Enable(4bits).
entity FF_D_4bits is
port( CLK,RST,EN: in std_logic;
		D: in std_logic_vector(3 downto 0);
		Q: out std_logic_vector(3 downto 0)
		);
end FF_D_4bits;

architecture bhv of FF_D_4bits is
begin
	process(CLK,RST,D)
	begin
		if RST = '0' then
			Q <= "0000";
		elsif(CLK'event and CLK = '1')then
			if EN = '1' then
				Q <= D;
			end if;
		end if;
	end process;
end bhv;
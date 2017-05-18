library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FSM_Conta is
	port(
		contagem: out std_logic_vector(3 downto 0);
		CLOCK_50: in std_logic;
		reset: in std_logic
	);
end;
	
architecture bhv of FSM_Conta is
		type STATES is (E0 ,E1,E2,E3,E4);
		signal EA,PE: STATES;
		signal C50: std_logic;
		signal contador: std_logic_vector(27 downto 0);
		
	begin
		P1:process(CLOCK_50,reset)
		begin
			if reset = '0' then
				EA <= E0;
				contador <= x"0000000";
			elsif CLOCK_50'event and CLOCK_50= '0' then
				if C50 = '1' then
					EA <= PE;
				end if;
				contador <= contador + 1;
				if contador = x"2FAF07F" then
					contador <= x"0000000";
					C50 <='1';
				else
					C50 <='0';
				end if;
			end if;
		end process;
		
		P2: process(EA)
		begin
			case EA is
				when E0 =>
					contagem <= "0001";
					PE <= E1;
				when E1 =>
					contagem <= "0010";
					PE <= E2;
				when E2 =>
					contagem <= "0011";
					PE <= E3;
				when E3 =>
					contagem <= "0100";
					PE <= E4;
				when E4 =>
					contagem <= "0101";
					PE <= E0;
			end case;
		end process;
	end bhv;
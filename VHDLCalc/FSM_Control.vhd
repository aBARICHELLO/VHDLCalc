library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FSM_Control is
port( 
	clock_50,reset,Enter: in std_logic;
	Operation			  : in stD_logic_vector(2 downto 0);
	Selection 			  : out std_logic_vector(1 downto 0);
	Enable_1,Enable_2	  : out std_logic
);
end FSM_Control;

architecture bhv of FSM_Control is
type STATES is (S0,S1,S2,S3,S4,S5,S6,S7);
signal CS,NS: STATES; --CS = CURRENT STATE, NS = NEXT STATE
signal clock: std_logic;
signal reset: std_logic;

begin
	clock <= clock_50;
	reset <= reset;

	--FSM with 2 processes.
	P1: process(clock, reset) --clock
	begin
		if reset = '0' then
			CS <= S0;
		elsif clock_50'event and clock_50 = '0' then
			CS <= NS;
		end if;
	end process;

	P2: process(CS, Enter) --state
	begin
		case EA is
			when S0 =>
				if Enter = '1' then
					NS <= S0;
				else
					NS <= S1;
				end if;
				
			when S1 =>
				if Enter = '1' then
					NS <= S2;
				else
					NS <= S1;
				end if;
				
			when S2 =>
				case Operation is
					when Operation => "00";
						NS <= S3;
					when Operation => "01";
						NS <= S4;
					when Operation => "10";
						NS <= S5;
					when Operation => "11";
						NS <= S6;
				end case;
			
			when S3 =>
			
			when S4 =>
			
			when S5 =>
			
			when S6 =>
			
			when S7 =>

		end case;
	end process;
	
	P3: process(CS) --output
	begin
		case state is
			when S1 => 
				Enable_1 <= '0';
				Enable_2 <= '0';
			when S2 =>
			
		end case;
	end process;
end;
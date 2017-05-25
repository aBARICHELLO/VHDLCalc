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
signal rst: std_logic;

begin
	clock <= clock_50;
	rst <= reset;

	--FSM with 3 processes.
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
		case CS is
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
					when "00" => 
						NS <= S3;
						
					when "01" => 
						NS <= S4;
						
					when "10" =>
						NS <= S5;
						
					when "11" => 
						NS <= S6;
						
				end case;
			
			when S3 =>
				if Enter = '1' then
					NS <= S3;
				else
					NS <= S7;
				end if;
				
			when S4 =>
				if Enter = '1' then
					NS <= S4;
				else
					NS <= S7;
				end if;
				
			when S5 =>
				if Enter = '1' then
					NS <= S5;
				else
					NS <= S7;
				end if;
				
			when S6 =>
			
			
			when S7 =>
				if Enter = '1' then
					NS <= S7;
				else
					NS <= S0;
				end if;
			
		end case;
	end process;
	
	P3: process(CS) --output
	begin
		case CS is
			when S0 => 
				Enable_1 <= '0';
				Enable_2 <= '0';
			when S1 =>
				Enable_1 <= '1';
				Enable_2 <= '0';
			when S2 =>
				Enable_1 <= '0';
				Enable_2 <= '0';
			when S3 =>
				Selection <= "00";
			when S4 =>
				Selection <= "01";
			when S5 =>
				Selection <= "10";
			when S6 =>
				Enable_1 <= '0';
				Enable_2 <= '1';
				Selection <= "11";
			when S7 =>
				Enable_1 <= '0';
				Enable_2 <= '1';
		end case;
	end process;
end bhv;
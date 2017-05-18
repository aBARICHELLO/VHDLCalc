library ieee;
use ieee.std_logic_1164.all;
entity topo is
	port(
		KEY: in std_logic_vector(1 downto 0);
		LEDR: out std_logic_vector(3 downto 0);
		HEX0: out std_logic_vector(6 downto 0)
		
	);
end topo;

architecture topo_bhv of topo is
	signal F : std_logic_vector(3 downto 0);
	
	component FSM_Conta
		port(
			contagem: out std_logic_vector(3 downto 0);
			CLOCK_manual: in std_logic;
			reset: in std_logic
		);
	end component;
	
	component Decod7Seg
		port(
			C:  in std_logic_vector(3 downto 0);
			F:  out std_logic_vector(6 downto 0)
		);
	end component;

Begin
	L0: FSM_Conta port map (F,KEY(1),KEY(0));
	L1: Decod7Seg port map (F,HEX0);
	LEDR <= F;
end topo_bhv;
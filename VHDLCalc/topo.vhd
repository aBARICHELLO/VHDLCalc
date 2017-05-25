library ieee;
use ieee.std_logic_1164.all;
entity topo is
port(SW: IN STD_LOGIC_VECTOR(9 downto 0);
	HEX0: out std_logic_vector(6 downto 0);
	KEY: in std_logic_vector(1 downto 0);
	CLOCK_50: in std_logic;
	LEDR: OUT STD_LOGIC_VECTOR(9 downto 0)
);
end topo;

architecture topo_estru of topo is
	signal F,F1,F2,F3,F4,G : std_logic_vector(3 downto 0);
	signal Fsm_to_mux: std_logic_vector(1 downto 0);
	signal enable1,enable2: std_logic;
	signal out8bits: std_logic_vector(7 downto 0);
	
component FSM_Control 
port( 
	clock_50,reset,Enter: in std_logic;
	Operation			  : in stD_logic_vector(2 downto 0);
	Selection 			  : out std_logic_vector(1 downto 0);
	Enable_1,Enable_2  : out std_logic
);
end component;

component FF_D_8bits 
port( 
	CLK,RST,EN: in std_logic;
	D: in std_logic_vector(7 downto 0);
	Q: out std_logic_vector(7 downto 0)
);
end component;


component C1 
port( 
	A: in std_logic_vector(7 downto 0);
	B: in std_logic_vector(7 downto 0);
	F: out std_logic_vector(7 downto 0)
);
end component;

component C2 
port(
	A: in std_logic_vector(7 downto 0);
	B: in std_logic_vector(7 downto 0);
	F: out std_logic_vector(7 downto 0)
);
end component;

component C3 
port(
	A: in std_logic_vector(7 downto 0);
	B: in std_logic_vector(7 downto 0);
	F: out std_logic_vector(7 downto 0)
);
end component;

component C4

port(
	A: in std_logic_vector(7 downto 0);
	F: out std_logic_vector(7 downto 0)
);
end component;

component mux4x1
port(
	w,x,y,z: in std_logic_vector(3 downto 0);
	s: in std_logic_vector(1 downto 0);
	m: out std_logic_vector(3 downto 0)
);
end component;

component FF_D_4bits
port( 
	CLK,RST,EN: in std_logic;
	D: in std_logic_vector(3 downto 0);
	Q: out std_logic_vector(3 downto 0)
);
end component;

component Decod7Seg
port(
	C:  in std_logic_vector(3 downto 0);
   F:  out std_logic_vector(6 downto 0)
);
end component;

begin
--fix numbers.
L0: FSM_Control port map (CLOCK_50, KEY(0), KEY(1),SW(9 downto 8), fsm_to_mux, enable1, enable2);
L1: FF_D_4bits port map (CLOCK_50, KEY(0), enable1, SW(9 downto 0), out8bits); --New register.
L2: C1 port map (SW(3 downto 0),SW(7 downto 4),F1);
L3: C2 port map (SW(3 downto 0),SW(7 downto 4),F2);
L4: C3 port map (SW(3 downto 0),SW(7 downto 4),F3);
L5: C4 port map (SW(3 downto 0),F4);
L6: mux4x1 port map (F1,F2,F3,F4, Fsm_to_mux, F); --MUX
L7: FF_D_4bits port map(CLOCK_50,KEY(0),KEY(1),F,G); --Flip Flops
L8: FF_D_4bits port map(CLOCK_50,KEY(0),KEY(1),F,LEDR(3 downto 0));
L9: Decod7Seg port map (G,HEX0);

end topo_estru; --t
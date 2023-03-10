library ieee;
use ieee.std_logic_1164.all;

entity prelab3 is

end prelab3;

architecture test of prelab3 is

component led_driver is 
	port( SW : in std_logic_vector(3 downto 0);
			Hex0 : out std_logic_vector(6 downto 0));
	end component;
	
	signal sw_in : std_logic_vector(3 downto 0);
	signal led_out :  std_logic_vector(6 downto 0);

begin

driver : led_driver port map( sw_in, led_out);


sw_in <= "0000" after 20  ns ,
			"0001" after 40 ns ,
			"0010" after 60 ns ,
			"0011" after 80 ns ,
			"0100" after 100 ns ,
			"0101" after 120 ns ,
			"0110" after 140 ns ,
			"0111" after 160 ns ,
			"1000" after 180 ns ,
			"1001" after 200 ns ,
			"1010" after 220 ns ,
			"1011" after 240 ns ,
			"1100" after 260 ns ,
			"1101" after 280 ns ,
			"1110" after 300 ns ,
			"1111" after 320 ns ,
			"0000" after 340 ns;

end test;
library ieee;
use ieee.std_logic_1164.all;

entity two_sev_segs is
 port( SW : std_logic_vector(9 downto 0);
	Hex0, Hex1 : out std_logic_vector(6 downto 0));
end two_sev_segs;

architecture internal_details of two_sev_segs is

component seg_driver
	port( switch : in std_logic_vector(3 downto 0);
			sev_seg : out std_logic_vector(6 downto 0));
end component;

--signal Hex0 : std_logic_vector(6 downto 0);
--signal Hex1 : std_logic_vector(6 downto 0);
signal sw1 : std_logic_vector(3 downto 0);
signal sw2 : std_logic_vector(3 downto 0);
begin

sw1 <= SW(3) & SW(2) & SW(1) & SW(0);
sw2 <= SW(7) & SW(6) & SW(5) & SW(4);
r_seg : seg_driver port map(sw1, Hex0);
l_seg : seg_driver port map(sw2, Hex1);

end internal_details;


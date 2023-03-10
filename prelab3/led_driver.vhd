library ieee;
use ieee.std_logic_1164.all;

entity led_driver is 
	port( SW : in std_logic_vector(3 downto 0);
			Hex0 : out std_logic_vector(6 downto 0));
end led_driver;

architecture logic of led_driver is

begin

Hex0(0) <= (not SW(3) and not SW(2) and not SW(1) and SW(0)) OR
			 (SW(3) and SW(2) and not SW(1) and SW(0)) OR
			 (SW(3) and not SW(2) and SW(1) and SW(0)) OR
			 (NOT SW(3)  AND SW(2) AND NOT SW(1) AND NOT SW(0)) ;

Hex0(1) <= (SW(2) and SW(1) and not SW(0)) OR
				(SW(3) and SW(1) and SW(0)) OR
				(SW(3) and SW(2) and SW(1) ) OR
				(not SW(3)  and SW(2)  and not SW(1) and SW(0) ) OR
				(SW(3)  and SW(2) and not SW(1)  and not SW(0));
				
Hex0(2) <= (SW(3) AND SW(2) and not SW(1) and not SW(0)) OR 
				(not SW(3) and not SW(2)  and SW(1) and not SW(0)) OR
				(SW(3) and SW(2) and SW(1)) ;
				
Hex0(3) <= (NOT SW(3) AND NOT SW(2) AND NOT SW(1) AND SW(0) ) OR
			(NOT SW(3) AND SW(2) AND NOT SW(1) AND NOT SW(0) ) OR 
			( SW(2) AND SW(1) AND SW(0) ) OR 
			(SW(3) AND NOT SW(2) AND SW(1) AND NOT SW(0) ) ;
			

Hex0(4) <= (NOT SW(3) AND SW(0) ) OR
		(NOT SW(3) AND SW(2) AND NOT SW(1)) OR 
		(SW(3) AND NOT SW(2) AND NOT SW(1) AND SW(0)) ;
		

Hex0(5) <= (NOT SW(3) AND NOT SW(2) AND SW(0) ) OR
		(NOT SW(3) AND NOT SW(2) AND SW(1)) OR 
		(NOT SW(3) AND SW(1) AND SW(0) ) OR
		( SW(3) AND SW(2)  AND NOT SW(1) AND SW(0) ) ;
		
Hex0(6) <= (NOT SW(3)  AND NOT SW(2) AND NOT SW(1) ) OR
	(NOT SW(3) AND SW(2) AND SW(1) AND SW(0) ) OR
	(SW(3) AND SW(2) AND NOT SW(1) AND NOT SW(0)); 
					 
end logic;
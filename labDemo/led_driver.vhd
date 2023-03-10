library ieee;
use ieee.std_logic_1164.all;

entity seg_driver is 
	port( switch : in std_logic_vector(3 downto 0);
			sev_seg : out std_logic_vector(6 downto 0));
end led_driver;

architecture logic of seg_driver is

begin

sev_seg(0) <= (not switch(3) and not switch(2) and not switch(1) and switch(0)) OR
			 (switch(3) and switch(2) and not switch(1) and switch(0)) OR
			 (switch(3) and not switch(2) and switch(1) and switch(0)) OR
			 (NOT switch(3)  AND switch(2) AND NOT switch(1) AND NOT switch(0)) ;

sev_seg(1) <= (switch(2) and switch(1) and not switch(0)) OR
				(switch(3) and switch(1) and switch(0)) OR
				(switch(3) and switch(2) and switch(1) ) OR
				(not switch(3)  and switch(2)  and not switch(1) and switch(0) ) OR
				(switch(3)  and switch(2) and not switch(1)  and not switch(0));
				
sev_seg(2) <= (switch(3) AND switch(2) and not switch(1) and not switch(0)) OR 
				(not switch(3) and not switch(2)  and switch(1) and not switch(0)) OR
				(switch(3) and switch(2) and switch(1)) ;
				
sev_seg(3) <= (NOT switch(3) AND NOT switch(2) AND NOT switch(1) AND switch(0) ) OR
			(NOT switch(3) AND switch(2) AND NOT switch(1) AND NOT switch(0) ) OR 
			( switch(2) AND switch(1) AND switch(0) ) OR 
			(switch(3) AND NOT switch(2) AND switch(1) AND NOT switch(0) ) ;
			

sev_seg(4) <= (NOT switch(3) AND switch(0) ) OR
		(NOT switch(3) AND switch(2) AND NOT switch(1)) OR 
		(switch(3) AND NOT switch(2) AND NOT switch(1) AND switch(0)) ;
		

sev_seg(5) <= (NOT switch(3) AND NOT switch(2) AND switch(0) ) OR
		(NOT switch(3) AND NOT switch(2) AND switch(1)) OR 
		(NOT switch(3) AND switch(1) AND switch(0) ) OR
		( switch(3) AND switch(2)  AND NOT switch(1) AND switch(0) ) ;
		
sev_seg(6) <= (NOT switch(3)  AND NOT switch(2) AND NOT switch(1) ) OR
	(NOT switch(3) AND switch(2) AND switch(1) AND switch(0) ) OR
	(switch(3) AND switch(2) AND NOT switch(1) AND NOT switch(0)); 
					 
end logic;
LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY prelab1 IS
PORT(SW : IN STD_LOGIC_VECTOR(9 downto 0) ;
		LEDR : OUT STD_LOGIC_VECTOR(9 downto 0));
END prelab1;
ARCHITECTURE LogicFunction OF prelab1 IS
BEGIN
LEDR(0) <= (SW(0) AND NOT SW(1)) OR (NOT SW(0) AND SW(1)) ;
END LogicFunction ;
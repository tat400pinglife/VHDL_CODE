LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY encoder_8to3 IS 
	PORT
	(
		Y3 :  IN  STD_LOGIC;
		Y4 :  IN  STD_LOGIC;
		Y5 :  IN  STD_LOGIC;
		Y6 :  IN  STD_LOGIC;
		Y7 :  IN  STD_LOGIC;
		Y0 :  IN  STD_LOGIC;
		Y1 :  IN  STD_LOGIC;
		Y2 :  IN  STD_LOGIC;
		A2 :  OUT  STD_LOGIC;
		A1 :  OUT  STD_LOGIC;
		A0 :  OUT  STD_LOGIC;
		V :  OUT  STD_LOGIC
	);
END encoder_8to3;

ARCHITECTURE logic OF encoder_8to3 IS
begin
	process (y0, y1, y2, y3, y4, y5, y6, y7)
	begin
		if (y7 = '1') then a2<='1'; a1<='1'; a0<='1'; v<='1';
		elsif (y6 = '1') then a2<='1'; a1<='1'; a0<='0'; v<='1';
		elsif (y5 = '1') then a2<='1'; a1<='0'; a0<='1'; v<='1';
		elsif (y4 = '1') then a2<='1'; a1<='0'; a0<='0'; v<='1';
		elsif (y3 = '1') then a2<='0'; a1<='1'; a0<='1'; v<='1';
		elsif (y2 = '1') then a2<='0'; a1<='1'; a0<='0'; v<='1';
		elsif (y1 = '1') then a2<='0'; a1<='0'; a0<='1'; v<='1';
		elsif (y0 = '1') then a2<='0'; a1<='0'; a0<='0'; v<='1';
		else a2<='0'; a1<='0'; a0<='0'; v<='0';
		end if;
	end process;

END logic;
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY decoder_3to8 IS 
	PORT
	(
		Y0 :  out  STD_LOGIC;
		Y1 :  out  STD_LOGIC;
		Y2 :  out  STD_LOGIC;
		Y3 :  out  STD_LOGIC;
		Y4 :  out  STD_LOGIC;
		Y5 :  out  STD_LOGIC;
		Y6 :  out  STD_LOGIC;
		Y7 :  out  STD_LOGIC;
		A0 :  in  STD_LOGIC;
		A1 :  in  STD_LOGIC;
		A2 :  in  STD_LOGIC
	);
END decoder_3to8;

ARCHITECTURE logic OF decoder_3to8 IS
begin
process (A0, A1, A2)
begin
    Y0 <= '0';
    Y1 <= '0';
    Y2 <= '0';
    Y3 <= '0';
    Y4 <= '0';
    Y5 <= '0';
    Y6 <= '0';
    Y7 <= '0';

    if (A0 = '0' and A1 = '0' and A2 = '0') then 
        Y0 <= '1';
    elsif (A0 = '0' and A1 = '0' and A2 = '1') then 
        Y1 <= '1';
    elsif (A0 = '0' and A1 = '1' and A2 = '0') then 
        Y2 <= '1';
    elsif (A0 = '0' and A1 = '1' and A2 = '1') then 
        Y3 <= '1';
    elsif (A0 = '1' and A1 = '0' and A2 = '0') then 
        Y4 <= '1';
    elsif (A0 = '1' and A1 = '0' and A2 = '1') then 
        Y5 <= '1';
    elsif (A0 = '1' and A1 = '1' and A2 = '0') then 
        Y6 <= '1';
    else 
        Y7 <= '1';
    end if;
end process;

END logic;
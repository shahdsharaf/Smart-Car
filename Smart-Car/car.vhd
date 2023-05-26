LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY car IS
PORT (lane , obstacle : IN STD_LOGIC ;
      motor1 , motor2 : OUT STD_LOGIC;
      segmenta , segmentl , segmente , segmentr , segmentt : OUT STD_LOGIC_VECTOR(1 TO 7)

);
END car;


ARCHITECTURE Behavior OF car IS
BEGIN
PROCESS (lane , obstacle)
BEGIN
IF obstacle = '0' AND lane = '0' THEN
motor1<= '0';
motor2<= '0';
segmenta <= "0000010";
segmentl <= "1110001";
segmente <= "0110000";
segmentr <= "1111010";
segmentt <= "1110000";
ELSIF obstacle = '0' THEN
motor1<= '0';
motor2<= '0';
segmenta <= "1111111";
segmentl <= "1111111";
segmente <= "1111111";
segmentr <= "1111111";
segmentt <= "1111111";
ELSIF lane = '0' THEN
motor1<= '1';
motor2<= '1';
segmenta <= "0000010";
segmentl <= "1110001";
segmente <= "0110000";
segmentr <= "1111010";
segmentt <= "1110000";
ELSE
motor1<= '1';
motor2<= '1';
segmenta <= "1111111";
segmentl <= "1111111";
segmente <= "1111111";
segmentr <= "1111111";
segmentt <= "1111111";
END IF;
END PROCESS;
END Behavior;
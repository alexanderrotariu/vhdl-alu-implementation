----------------------------------------------------------------------------------
-- Company: SUNY ALBANY
-- Engineer: Alexander Rotariu
-- Module Name: DE_2 - Behavioral
-- Project Name: 4-bit 74LS381 ALU VHDL
-- Target Devices: BASYS3 DIGILENT
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DE_2 is
    Port (--SEL : in unsigned (2 downto 0);  
          --A : in unsigned (3 downto 0);

          --SWITCHES AND LEDS
          S0: in STD_LOGIC; --SW 12
          S1: in STD_LOGIC; --SW 13
          S2: in STD_LOGIC; --SW 14
          carryin: in STD_LOGIC; --SW 15 
          A0: in  STD_LOGIC; --SW 11 
          A1: in  STD_LOGIC; --SW 10
          A2: in  STD_LOGIC; --SW 9
          A3: in STD_LOGIC;  --SW 8
          B0: in STD_LOGIC; --SW 4
          B1: in STD_LOGIC; --SW 5
          B2: in STD_LOGIC; --SW 6
          B3: in STD_LOGIC; --SW 7
          
          --LEDS
          F0: out STD_LOGIC; --LED 1
          F1: out STD_LOGIC; --LED 2
          F2: out STD_LOGIC; --LED 3
          F3: out STD_LOGIC; --LED 4
          COUT: out STD_LOGIC --LED 0
          );
          
          
          --B : in unsigned (3 downto 0);
          --cin : in unsigned(0 downto 0);
          --F : out unsigned (3 downto 0);
          --cout: out unsigned (0 downto 0));
end DE_2;

architecture Behavioral of DE_2 is
    
--type operation is (clear, minus, plus, bOr, bXor, bAnd);     
     
--signal opSel : unsigned (2 downto 0);
     
     
--signal clear : unsigned (2 downto 0) := "000";
--signal minus : unsigned (2 downto 0) := "010";
--signal plus : unsigned (2 downto 0) := "011";
--signal bOr : unsigned (2 downto 0) := "100";
--signal bXor : unsigned (2 downto 0) := "101";
--signal bAnd : unsigned (2 downto 0) := "110";
     
signal temp: unsigned (4 downto 0) := "00000";

signal A : unsigned (3 downto 0);
signal B : unsigned (3 downto 0);
signal SEL : unsigned (2 downto 0);
signal cin : unsigned (0 downto 0);

begin

signalConcat: process(S0, S1, S2, carryin, A0, A1, A2, A3, B0, B1, B2, B3) is
begin
    SEL <= ""&S2&S1&S0;
    
    A <= ""&A3&A2&A1&A0;
    B <= ""&B3&B2&B1&B0;
    
    cin <= ""&carryin;
    
end process; 

--4 BIT ALU    
fourBitALU:process(A,B, cin, SEL, temp) is 
begin
    case (SEL) is
    --clear
        when "000" =>
            F0 <= '0';
            F1 <= '0';
            F2 <= '0';
            F3 <= '0';
            cout <= '0';
            
            --F <= "0000";
            --cout <= "0";
            
    --minus 
        when "010" => 
        if cin = "0" then 
            temp <= ((('0' & a) - ('0' & b)) - "00001");
            --F <= temp(3 downto 0);
            
            f0 <= temp(0);
            f1 <= temp(1);
            f2 <= temp(2);
            f3 <= temp(3);
            cout <= temp(4);
            --cout(0) <= temp(4);
             
        elsif cin = "1" then
            temp <= (('0' & a) - ('0' & b));
            --F <= temp(3 downto 0);
            f0 <= temp(0);
            f1 <= temp(1);
            f2 <= temp(2);
            f3 <= temp(3);
            cout <= temp(4);
            --cout(0) <= temp(4);
       end if;
    --plus
        when "011" =>
            temp <= (('0' & b) + (('0' & a) + ('0' & cin)));
            --F <= temp(3 downto 0);
            f0 <= temp(0);
            f1 <= temp(1);
            f2 <= temp(2);
            f3 <= temp(3);
            cout <= temp(4);
            --cout(0) <= temp(4);

    --or
        when "100" =>
            temp <= ('0'&A OR '0'&B);
            f0 <= temp(0);
            f1 <= temp(1);
            f2 <= temp(2);
            f3 <= temp(3);
            cout <= temp(4);
            
            
    --xor
        when "101" =>
            temp <= ('0'&A XOR '0'&B);
            f0 <= temp(0);
            f1 <= temp(1);
            f2 <= temp(2);
            f3 <= temp(3);
            cout <= temp(4);
    --and
        when "110" =>
            temp <= ('0'&A AND '0'&B);
            f0 <= temp(0);
            f1 <= temp(1);
            f2 <= temp(2);
            f3 <= temp(3);
            cout <= temp(4);
            
    --ALL HIGH
        when "111" =>
            --F <= "1111";
            --cout <= "1";
            f0 <= '1';
            f1 <= '1';
            f2 <= '1';
            f3 <= '1';
            
            cout <= '1';
            
        when others => null;
    
    end case;
end process;
        

end Behavioral;

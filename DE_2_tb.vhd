library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity DE_2_tb is
end;

architecture bench of DE_2_tb is

  component DE_2
      Port (
            S0: in STD_LOGIC;
            S1: in STD_LOGIC;
            S2: in STD_LOGIC;
            carryin: in STD_LOGIC;  
            A0: in  STD_LOGIC;
            A1: in  STD_LOGIC;
            A2: in  STD_LOGIC;
            A3: in STD_LOGIC;
            B0: in STD_LOGIC;
            B1: in STD_LOGIC;
            B2: in STD_LOGIC;
            B3: in STD_LOGIC;
            F0: out STD_LOGIC;
            F1: out STD_LOGIC;
            F2: out STD_LOGIC;
            F3: out STD_LOGIC;
            COUT: out STD_LOGIC
            );
  end component;

  signal S0: STD_LOGIC;
  signal S1: STD_LOGIC;
  signal S2: STD_LOGIC;
  signal carryin: STD_LOGIC;
  signal A0: STD_LOGIC;
  signal A1: STD_LOGIC;
  signal A2: STD_LOGIC;
  signal A3: STD_LOGIC;
  signal B0: STD_LOGIC;
  signal B1: STD_LOGIC;
  signal B2: STD_LOGIC;
  signal B3: STD_LOGIC;
  signal F0: STD_LOGIC;
  signal F1: STD_LOGIC;
  signal F2: STD_LOGIC;
  signal F3: STD_LOGIC;
  signal COUT: STD_LOGIC ;

begin

  uut: DE_2 port map ( S0      => S0,
                       S1      => S1,
                       S2      => S2,
                       carryin => carryin,
                       A0      => A0,
                       A1      => A1,
                       A2      => A2,
                       A3      => A3,
                       B0      => B0,
                       B1      => B1,
                       B2      => B2,
                       B3      => B3,
                       F0      => F0,
                       F1      => F1,
                       F2      => F2,
                       F3      => F3,
                       COUT    => COUT );

  stimulus: process
  begin
  
    -- Put initialisation code here
    wait for 1 ns;
    S0 <= '0';
    S1 <= '0';
    S2 <= '0';
    carryin <= '0';
    
    A0 <= '0';
    A1 <= '0';
    A2 <= '0';
    A3 <= '0';
    B0 <= '0';
    B1 <= '0';
    B2 <= '0';
    B3 <= '0';
    
    wait for 100 ns;
    S0 <= '0';
    S1 <= '1';
    S2 <= '1';
    carryin <= '0';
    
    A0 <= '0';
    A1 <= '0';
    A2 <= '0';
    A3 <= '0';
    B0 <= '0';
    B1 <= '0';
    B2 <= '0';
    B3 <= '0';

    wait for 100 ns;
    S0 <= '0';
    S1 <= '1';
    S2 <= '1';
    carryin <= '0';
    
    A0 <= '0';
    A1 <= '0';
    A2 <= '0';
    A3 <= '0';
    B0 <= '1';
    B1 <= '1';
    B2 <= '1';
    B3 <= '1';
    
    wait for 100 ns;
    S0 <= '0';
    S1 <= '1';
    S2 <= '1';
    carryin <= '0';
    
    A0 <= '1';
    A1 <= '1';
    A2 <= '1';
    A3 <= '1';
    B0 <= '0';
    B1 <= '0';
    B2 <= '0';
    B3 <= '0';

    wait for 100 ns;
    S0 <= '0';
    S1 <= '1';
    S2 <= '1';
    carryin <= '0';
    
    A0 <= '1';
    A1 <= '1';
    A2 <= '1';
    A3 <= '1';
    B0 <= '1';
    B1 <= '1';
    B2 <= '1';
    B3 <= '1';
    
    wait for 100 ns;
    S0 <= '0';
    S1 <= '1';
    S2 <= '1';
    carryin <= '1';
    
    A0 <= '0';
    A1 <= '0';
    A2 <= '0';
    A3 <= '0';
    B0 <= '0';
    B1 <= '0';
    B2 <= '0';
    B3 <= '0';

    wait for 100 ns;
    S0 <= '0';
    S1 <= '1';
    S2 <= '1';
    carryin <= '1';
    
    A0 <= '0';
    A1 <= '0';
    A2 <= '0';
    A3 <= '0';
    B0 <= '1';
    B1 <= '1';
    B2 <= '1';
    B3 <= '1';
    
    wait for 100 ns;
    S0 <= '0';
    S1 <= '1';
    S2 <= '1';
    carryin <= '1';
    
    A0 <= '1';
    A1 <= '1';
    A2 <= '1';
    A3 <= '1';
    B0 <= '0';
    B1 <= '0';
    B2 <= '0';
    B3 <= '0';

    wait for 100 ns;
    S0 <= '0';
    S1 <= '1';
    S2 <= '1';
    carryin <= '1';
    
    A0 <= '1';
    A1 <= '1';
    A2 <= '1';
    A3 <= '1';
    B0 <= '1';
    B1 <= '1';
    B2 <= '1';
    B3 <= '1';
    
-- Put test bench stimulus code here

wait;
end process;


end;

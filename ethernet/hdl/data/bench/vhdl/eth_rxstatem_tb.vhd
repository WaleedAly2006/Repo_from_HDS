--
--  Copyright (c) 1994-1999 Escalade Corporation. All rights reserved.
--
-- Escalade auto-generated top level test bench for eth_rxstatem
-- Author:  oliviera
-- Time:    Thu Dec 05 17:12:35 2002

-- Vector File:  F:\TRAINING\AE-TRAINING-Q1-03\ethernetNew\ethernet\rtl\vhdl\eth_rxstatem_tb.toc
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;


entity eth_rxstatem_tb is
  -- no ports at top level
end eth_rxstatem_tb;

architecture struct of eth_rxstatem_tb is
  component eth_rxstatem
    port (
      MRxCLK : in std_logic;
      Reset : in std_logic;
      MRxDV : in std_logic;
      ByteCntEq0 : in std_logic;
      ByteCntGreat2 : in std_logic;
      Transmitting : in std_logic;
      MRxDEqD : in std_logic;
      MRxDEq5 : in std_logic;
      IFGCounterEq24 : in std_logic;
      ByteCntMaxFrame : in std_logic;
      StateData : out std_logic_vector(1 downto 0);
      StateIdle : out std_logic;
      StateDrop : out std_logic;
      StatePreamble : out std_logic;
      StateSFD : out std_logic
    );
  end component;
  
  constant finish_time : time := 5225 ns;
  
  -- for u0:eth_rxstatem use entity work.eth_rxstatem(rtl);
  
  signal MRxCLK : std_logic;
  signal Reset : std_logic;
  signal MRxDV : std_logic;
  signal ByteCntEq0 : std_logic;
  signal ByteCntGreat2 : std_logic;
  signal Transmitting : std_logic;
  signal MRxDEqD : std_logic;
  signal MRxDEq5 : std_logic;
  signal IFGCounterEq24 : std_logic;
  signal ByteCntMaxFrame : std_logic;
  signal StateData : std_logic_vector(1 downto 0);
  signal StateIdle : std_logic;
  signal StateDrop : std_logic;
  signal StatePreamble : std_logic;
  signal StateSFD : std_logic;
begin
  -- instance to eth_rxstatem
  u0: eth_rxstatem port map(
    MRxCLK => MRxCLK,
    Reset => Reset,
    MRxDV => MRxDV,
    ByteCntEq0 => ByteCntEq0,
    ByteCntGreat2 => ByteCntGreat2,
    Transmitting => Transmitting,
    MRxDEqD => MRxDEqD,
    MRxDEq5 => MRxDEq5,
    IFGCounterEq24 => IFGCounterEq24,
    ByteCntMaxFrame => ByteCntMaxFrame,
    StateData => StateData,
    StateIdle => StateIdle,
    StateDrop => StateDrop,
    StatePreamble => StatePreamble,
    StateSFD => StateSFD);
process
begin
-- Pulse Stimulus Generator
  Reset <= '0';
  wait for 40 ns;
  Reset <= '1';
  wait for 260 ns;
  Reset <= '0';
  wait for 4725 ns;
  Reset <= '1';
wait;
end process;

-- Clock Stimulus Generator
process
begin
    MRxCLK <= '0';
  loop
    wait for 25 ns;
    MRxCLK <= '1';
    wait for 50 ns;
    MRxCLK <= '0';
    wait for 25 ns;
    MRxCLK <= '0';
  end loop;
wait;
end process;

-- time-ordered stimulus vector section
process
begin
  MRxDV <= '1';
  ByteCntEq0 <= '0';
  ByteCntGreat2 <= '0';
  Transmitting <= '1';
  MRxDEq5 <= '0';
  MRxDEqD <= '1';
  IFGCounterEq24 <= '0';
  ByteCntMaxFrame <= '0';
  wait for 100 ns;
  ByteCntEq0 <= '1';
  Transmitting <= '0';
  wait for 100 ns;
  MRxDV <= '0';
  ByteCntGreat2 <= '1';
  Transmitting <= '1';
  MRxDEq5 <= '1';
  ByteCntMaxFrame <= '1';
  wait for 100 ns;
  ByteCntEq0 <= '0';
  Transmitting <= '0';
  MRxDEq5 <= '0';
  MRxDEqD <= '0';
  wait for 100 ns;
  MRxDV <= '1';
  ByteCntGreat2 <= '0';
  MRxDEqD <= '1';
  IFGCounterEq24 <= '1';
  wait for 100 ns;
  MRxDV <= '0';
  ByteCntGreat2 <= '1';
  Transmitting <= '1';
  ByteCntMaxFrame <= '0';
  wait for 100 ns;
  ByteCntEq0 <= '1';
  Transmitting <= '0';
  MRxDEq5 <= '1';
  MRxDEqD <= '0';
  ByteCntMaxFrame <= '1';
  wait for 100 ns;
  Transmitting <= '1';
  MRxDEq5 <= '0';
  MRxDEqD <= '1';
  IFGCounterEq24 <= '0';
  wait for 100 ns;
  ByteCntGreat2 <= '0';
  Transmitting <= '0';
  MRxDEq5 <= '1';
  MRxDEqD <= '0';
  IFGCounterEq24 <= '1';
  ByteCntMaxFrame <= '0';
  wait for 100 ns;
  ByteCntEq0 <= '0';
  IFGCounterEq24 <= '0';
  ByteCntMaxFrame <= '1';
  wait for 100 ns;
  MRxDV <= '1';
  Transmitting <= '1';
  MRxDEq5 <= '0';
  IFGCounterEq24 <= '1';
  ByteCntMaxFrame <= '0';
  wait for 100 ns;
  Transmitting <= '0';
  MRxDEq5 <= '1';
  MRxDEqD <= '1';
  ByteCntMaxFrame <= '1';
  wait for 200 ns;
  ByteCntEq0 <= '1';
  Transmitting <= '1';
  IFGCounterEq24 <= '0';
  wait for 100 ns;
  ByteCntEq0 <= '0';
  MRxDEq5 <= '0';
  IFGCounterEq24 <= '1';
  wait for 100 ns;
  ByteCntEq0 <= '1';
  wait for 100 ns;
  Transmitting <= '0';
  MRxDEq5 <= '1';
  IFGCounterEq24 <= '0';
  wait for 100 ns;
  MRxDV <= '0';
  ByteCntGreat2 <= '1';
  MRxDEq5 <= '0';
  wait for 100 ns;
  MRxDV <= '1';
  ByteCntGreat2 <= '0';
  Transmitting <= '1';
  MRxDEq5 <= '1';
  MRxDEqD <= '0';
  IFGCounterEq24 <= '1';
  wait for 100 ns;
  MRxDV <= '0';
  ByteCntEq0 <= '0';
  ByteCntGreat2 <= '1';
  MRxDEqD <= '1';
  IFGCounterEq24 <= '0';
  ByteCntMaxFrame <= '0';
  wait for 100 ns;
  MRxDV <= '1';
  ByteCntEq0 <= '1';
  Transmitting <= '0';
  MRxDEq5 <= '0';
  MRxDEqD <= '0';
  ByteCntMaxFrame <= '1';
  wait for 100 ns;
  MRxDV <= '0';
  ByteCntEq0 <= '0';
  Transmitting <= '1';
  ByteCntMaxFrame <= '0';
  wait for 100 ns;
  ByteCntEq0 <= '1';
  MRxDEq5 <= '1';
  MRxDEqD <= '1';
  wait for 100 ns;
  MRxDV <= '1';
  ByteCntEq0 <= '0';
  ByteCntGreat2 <= '0';
  MRxDEqD <= '0';
  ByteCntMaxFrame <= '1';
  wait for 100 ns;
  MRxDV <= '0';
  ByteCntGreat2 <= '1';
  Transmitting <= '0';
  MRxDEq5 <= '0';
  MRxDEqD <= '1';
  ByteCntMaxFrame <= '0';
  wait for 100 ns;
  ByteCntEq0 <= '1';
  Transmitting <= '1';
  MRxDEq5 <= '1';
  MRxDEqD <= '0';
  IFGCounterEq24 <= '1';
  wait for 100 ns;
  MRxDV <= '1';
  ByteCntEq0 <= '0';
  MRxDEq5 <= '0';
  IFGCounterEq24 <= '0';
  wait for 100 ns;
  MRxDV <= '0';
  MRxDEq5 <= '1';
  wait for 100 ns;
  ByteCntEq0 <= '1';
  Transmitting <= '0';
  MRxDEq5 <= '0';
  wait for 100 ns;
  MRxDV <= '1';
  MRxDEq5 <= '1';
  MRxDEqD <= '1';
  ByteCntMaxFrame <= '1';
  wait for 100 ns;
  MRxDEq5 <= '0';
  MRxDEqD <= '0';
  IFGCounterEq24 <= '1';
  ByteCntMaxFrame <= '0';
  wait for 100 ns;
  MRxDV <= '0';
  Transmitting <= '1';
  MRxDEq5 <= '1';
  ByteCntMaxFrame <= '1';
  wait for 100 ns;
  MRxDV <= '1';
  ByteCntGreat2 <= '0';
  Transmitting <= '0';
  MRxDEqD <= '1';
  IFGCounterEq24 <= '0';
  wait for 100 ns;
  MRxDV <= '0';
  MRxDEqD <= '0';
  ByteCntMaxFrame <= '0';
  wait for 100 ns;
  MRxDV <= '1';
  ByteCntEq0 <= '0';
  ByteCntGreat2 <= '1';
  Transmitting <= '1';
  MRxDEq5 <= '0';
  IFGCounterEq24 <= '1';
  wait for 100 ns;
  MRxDV <= '0';
  ByteCntGreat2 <= '0';
  ByteCntMaxFrame <= '1';
  wait for 100 ns;
  MRxDV <= '1';
  ByteCntEq0 <= '1';
  Transmitting <= '0';
  ByteCntMaxFrame <= '0';
  wait for 100 ns;
  Transmitting <= '1';
  MRxDEq5 <= '1';
  MRxDEqD <= '1';
  IFGCounterEq24 <= '0';
  ByteCntMaxFrame <= '1';
  wait for 100 ns;
  MRxDEq5 <= '0';
  MRxDEqD <= '0';
  wait for 100 ns;
  MRxDV <= '0';
  ByteCntGreat2 <= '1';
  Transmitting <= '0';
  MRxDEqD <= '1';
  wait for 100 ns;
  MRxDV <= '1';
  Transmitting <= '1';
  MRxDEq5 <= '1';
  MRxDEqD <= '0';
  ByteCntMaxFrame <= '0';
  wait for 100 ns;
  ByteCntGreat2 <= '0';
  Transmitting <= '0';
  MRxDEq5 <= '0';
  wait for 100 ns;
  MRxDV <= '0';
  Transmitting <= '1';
  MRxDEq5 <= '1';
  IFGCounterEq24 <= '1';
  wait for 100 ns;
  MRxDV <= '1';
  ByteCntEq0 <= '0';
  ByteCntGreat2 <= '1';
  MRxDEqD <= '1';
  wait for 100 ns;
  ByteCntGreat2 <= '0';
  MRxDEq5 <= '0';
  MRxDEqD <= '0';
  IFGCounterEq24 <= '0';
  wait for 100 ns;
  MRxDV <= '0';
  MRxDEq5 <= '1';
  MRxDEqD <= '1';
  wait for 100 ns;
  MRxDV <= '1';
  ByteCntGreat2 <= '1';
  Transmitting <= '0';
  MRxDEq5 <= '0';
  wait for 100 ns;
  ByteCntEq0 <= '1';
  Transmitting <= '1';
  MRxDEq5 <= '1';
  MRxDEqD <= '0';
  wait for 100 ns;
  ByteCntEq0 <= '0';
  IFGCounterEq24 <= '1';
  wait for 100 ns;
  MRxDV <= '0';
  Transmitting <= '0';
  ByteCntMaxFrame <= '1';
wait;
end process;

finish : process
  begin
    wait for finish_time;
    assert false report "**** Simulation Finished ! *****" severity failure ;
  end process;
end struct;

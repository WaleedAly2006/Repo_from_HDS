LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY eth_rxstatem IS
    PORT (
        MRxClk           : IN     std_logic;
        Reset            : IN     std_logic;
        MRxDV            : IN     std_logic;
        ByteCntEq0       : IN     std_logic;
        ByteCntGreat2    : IN     std_logic;
        MRxDEq5          : IN     std_logic;
        Transmitting     : IN     std_logic;
        MRxDEqD          : IN     std_logic;
        IFGCounterEq24   : IN     std_logic;
        ByteCntMaxFrame  : IN     std_logic;
        StateData        : OUT    std_logic_vector(1 downto 0);
        StateIdle        : OUT    std_logic;
        StateDrop        : OUT    std_logic;
        StatePreamble    : OUT    std_logic;
        StateSFD         : OUT    std_logic
    );                  
END eth_rxstatem;

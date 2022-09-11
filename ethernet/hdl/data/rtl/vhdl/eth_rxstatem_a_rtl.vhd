
ARCHITECTURE rtl OF eth_rxstatem IS
    TYPE StateType IS (sData0, sData1, sIdle, sDrop, sPreamble, sSFD);
    SIGNAL currentState, nextState : StateType;
BEGIN
    COMB : PROCESS(currentState, MRxCLK, Reset, MRxDV, ByteCntEq0, ByteCntGreat2, 
                   MRxDEq5, Transmitting, MRxDEqD, IFGCounterEq24, ByteCntMaxFrame)
    BEGIN
        CASE (currentState) IS
            WHEN sData0 =>
                IF (MRxDV = '0') THEN
                    nextState <= sIdle;
                 ELSIF (MRxDV = '1' AND ByteCntMaxFrame = '0') THEN
                     nextState <= sData1;
                 ELSIF (MRxDV = '1' AND ByteCntMaxFrame = '1') THEN
                     nextState <= sDrop;
                 END IF;
                StateData(1) <= '0';
                StateData(0) <= '1';
                StateSFD <= '0';
            WHEN sData1 =>
                IF (MRxDV = '0') THEN
                    nextState <= sIdle;
                ELSIF (MRxDV = '1') THEN 
                    nextState <= sData0;
                END IF;
                StateData(1) <= '1';
                StateData(0) <= '0';
            WHEN sIdle =>
                IF (MRxDV= '1' AND MRxDEq5 = '0' AND Transmitting = '0') THEN
                    nextState <= sPreamble;
                ELSIF (MRxDV = '1' AND MRxDEq5 = '1' AND Transmitting = '0') THEN
                    nextState <= sSFD;
                ELSIF (MRxDV = '1' AND Transmitting = '1') THEN 
                    nextState <= sDrop;
                END IF;
                StateData(1) <= '0';
                StateData(0) <= '0';
                StateIdle <= '1';
                StateDrop <= '0';
                StatePreamble <= '0';
                StateSFD <= '0';
            WHEN sDrop =>
                IF (MRxDV = '0') THEN
                    nextState <= sIdle;
                END IF;
                StateData(1) <= '0';
                StateData(0) <= '0';
                StateIdle <= '0';
                StateDrop <= '1';
                StatePreamble <= '0';
                StateSFD <= '0';
            WHEN sPreamble =>
                IF (MRxDV = '0') THEN
                    nextState <= sIdle;
                ELSIF (MRxDV = '1' AND MRxDEq5 = '1') THEN
                    nextState <= sSFD;
                END IF;
                StateIdle <= '0';
                StatePreamble <= '1';
                StateSFD <= '0';
            WHEN sSFD =>
                IF (MRxDV = '0') THEN
                    nextState <= sIdle;
                ELSIF (MRxDV= '1' AND MRxDEqD = '1' AND IFGCounterEq24 = '1') THEN
                    nextState <= sData0;
                ELSIF (MRxDV= '1' AND MRxDEqD = '1' AND IFGCounterEq24 = '0') THEN
                    nextState <= sDrop;
                END IF;  
                StateIdle <= '0';
                StatePreamble <= '0';
                StateSFD <= '1';   
             WHEN OTHERS =>
                 StateData(1) <= '0';
                 StateData(0) <= '0';
                 StateIdle <= '0';
                 StateDrop <= '0';
                 StatePreamble <= '0';
                 StateSFD <= '0'; 
                 nextState <= sDrop;
        END CASE;   
    END PROCESS;   
    
    SEQ : PROCESS(MRxCLK, Reset)
    BEGIN
        -- Asynchronous Reset
        IF (Reset = '1') THEN
            currentState <= sDrop;
        ELSIF rising_edge(MRxCLK) THEN
            currentState <= nextState;

        END IF;   
    END PROCESS;                          
END rtl;

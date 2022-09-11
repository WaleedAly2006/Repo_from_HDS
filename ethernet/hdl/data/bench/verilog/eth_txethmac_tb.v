//`include "eth_phy_defines.v"
`include "tb_eth_defines.v"
//`include "wb_model_defines.v"

module eth_txethmac_tb (
   MTxD,               
   MTxEn,                    
   MTxErr,   
   TxDone,   
   TxRetry,   
   TxAbort,     
   TxUsedData,    
   WillTransmit,        
   ResetCollision,     
   RetryCnt,        
   StartTxDone,
   StartTxAbort,
   MaxCollisionOccured,
   LateCollision,
   StartDefer,
   StatePreamble,
   StateData
);


output [3:0] MTxD;              // Transmit nibble (to PHY)
output MTxEn;                   // Transmit enable (to PHY)
output MTxErr;                  // Transmit error (to PHY)
output TxDone;                  // Transmit packet done (to RISC)
output TxRetry;                 // Transmit packet retry (to RISC)
output TxAbort;                 // Transmit packet abort (to RISC)
output TxUsedData;              // Transmit packet used data (to RISC)
output WillTransmit;            // Will transmit (to RxEthMAC)
output ResetCollision;          // Reset Collision (for synchronizing collision)
output [3:0] RetryCnt;          // Latched Retry Counter for tx status purposes
output StartTxDone;
output StartTxAbort;
output MaxCollisionOccured;
output LateCollision;
output StartDefer;
output StatePreamble;
output [1:0] StateData;


wire  MTxClk;                   // Transmit clock (from PHY)
wire  Reset;                    // Reset
wire  TxStartFrm;               // Transmit packet start frame
wire  TxEndFrm;                 // Transmit packet end frame
wire  TxUnderRun;               // Transmit packet under-run
wire  [7:0] TxData;             // Transmit packet data byte
wire  CarrierSense;             // Carrier sense (synchronized)
wire  Collision;                // Collision (synchronized)
wire  Pad;                      // Pad enable (from register)
wire  CrcEn;                    // Crc enable (from register)
wire  FullD;                    // Full duplex (from register)
wire  HugEn;                    // Huge packets enable (from register)
wire  DlyCrcEn;                 // Delayed Crc enabled (from register)
wire  [15:0] MinFL;             // Minimum frame length (from register)
wire  [15:0] MaxFL;             // Maximum frame length (from register)
wire  [6:0] IPGT;               // Back to back transmit inter packet gap parameter (from register)
wire  [6:0] IPGR1;              // Non back to back transmit inter packet gap parameter IPGR1 (from register)
wire  [6:0] IPGR2;              // Non back to back transmit inter packet gap parameter IPGR2 (from register)
wire  [5:0] CollValid;          // Valid collision window (from register)
wire  [3:0] MaxRet;             // Maximum retry number (from register)
wire  NoBckof;                  // No backoff (from register)
wire  ExDfrEn;                  // Excessive defferal enable (from register)
endmodule


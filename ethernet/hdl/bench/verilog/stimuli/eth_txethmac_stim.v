module eth_txethmac_stim (MTxClk, Reset, TxStartFrm, TxEndFrm, TxUnderRun, TxData, CarrierSense, 
                     Collision, Pad, CrcEn, FullD, HugEn, DlyCrcEn, MinFL, MaxFL, IPGT, 
                     IPGR1, IPGR2, CollValid, MaxRet, NoBckof, ExDfrEn
                    );

output MTxClk;                   // Transmit clock (from PHY)
output Reset;                    // Reset
output TxStartFrm;               // Transmit packet start frame
output TxEndFrm;                 // Transmit packet end frame
output TxUnderRun;               // Transmit packet under-run
output [7:0] TxData;             // Transmit packet data byte
output CarrierSense;             // Carrier sense (synchronized)
output Collision;                // Collision (synchronized)
output Pad;                      // Pad enable (from register)
output CrcEn;                    // Crc enable (from register)
output FullD;                    // Full duplex (from register)
output HugEn;                    // Huge packets enable (from register)
output DlyCrcEn;                 // Delayed Crc enabled (from register)
output [15:0] MinFL;             // Minimum frame length (from register)
output [15:0] MaxFL;             // Maximum frame length (from register)
output [6:0] IPGT;               // Back to back transmit inter packet gap parameter (from register)
output [6:0] IPGR1;              // Non back to back transmit inter packet gap parameter IPGR1 (from register)
output [6:0] IPGR2;              // Non back to back transmit inter packet gap parameter IPGR2 (from register)
output [5:0] CollValid;          // Valid collision window (from register)
output [3:0] MaxRet;             // Maximum retry number (from register)
output NoBckof;                  // No backoff (from register)
output ExDfrEn;                  // Excessive defferal enable (from register)

reg MTxClk;                   // Transmit clock (from PHY)
reg Reset;                    // Reset
reg TxStartFrm;               // Transmit packet start frame
reg TxEndFrm;                 // Transmit packet end frame
reg TxUnderRun;               // Transmit packet under-run
reg [7:0] TxData;             // Transmit packet data byte
reg CarrierSense;             // Carrier sense (synchronized)
reg Collision;                // Collision (synchronized)
reg Pad;                      // Pad enable (from register)
reg CrcEn;                    // Crc enable (from register)
reg FullD;                    // Full duplex (from register)
reg HugEn;                    // Huge packets enable (from register)
reg DlyCrcEn;                 // Delayed Crc enabled (from register)
reg [15:0] MinFL;             // Minimum frame length (from register)
reg [15:0] MaxFL;             // Maximum frame length (from register)
reg [6:0] IPGT;               // Back to back transmit inter packet gap parameter (from register)
reg [6:0] IPGR1;              // Non back to back transmit inter packet gap parameter IPGR1 (from register)
reg [6:0] IPGR2;              // Non back to back transmit inter packet gap parameter IPGR2 (from register)
reg [5:0] CollValid;          // Valid collision window (from register)
reg [3:0] MaxRet;             // Maximum retry number (from register)
reg NoBckof;                  // No backoff (from register)
reg ExDfrEn;                  // Excessive defferal enable (from register)




parameter CLK_400NS_PERIOD = 400;  // 2.5 Mhz Clock Frequency

//
// Clock - Period defined by CLK_PERIOD
//
initial 
begin
    MTxClk = 1'b0;
    forever #(CLK_400NS_PERIOD/2) MTxClk = ~MTxClk;
end
    
//
// Reset Pulse generator
//

initial 
begin
  Reset = 1;
  #423 Reset = 0;
  #20624	Reset = 1;
  #20	Reset = 0;
  #250	Reset = 1;
  #20	Reset = 0;    
end


initial
begin
	CarrierSense = 1'bx;
	Collision = 1'bx;
	CollValid[5:0] = 6'bxxxxxx;
	CrcEn = 1'bx;
	DlyCrcEn = 1'bx;
	ExDfrEn = 1'bx;
	FullD = 1'bx;
	HugEn = 1'bx;
	IPGR1[6:0] = 7'bxxxxxxx;
	IPGR2[6:0] = 7'bxxxxxxx;
	IPGT[6:0] = 7'bxxxxxxx;
	MaxFL[15:0] = 16'bxxxxxxxxxxxxxxxx;
	MaxRet[3:0] = 4'bxxxx;
	MinFL[15:0] = 16'bxxxxxxxxxxxxxxxx;
	NoBckof = 1'bx;
	Pad = 1'bx;
	Reset = 1;
	TxData[7:0] = 8'bxxxxxxxx;
	TxEndFrm = 1'bx;
	TxStartFrm = 1'bx;
	TxUnderRun = 1'bx;
  #1	CarrierSense = 0;
	Collision = 0;
	CollValid[5:0] = 6'b111111;
	CrcEn = 1;
	DlyCrcEn = 0;
	ExDfrEn = 0;
	FullD = 0;
	HugEn = 0;
	IPGR1[6:0] = 7'b0001100;
	IPGR2[6:0] = 7'b0010010;
	IPGT[6:0] = 7'b0010010;
	MaxFL[15:0] = 16'b0000011000000000;
	MaxRet[3:0] = 4'b1111;
	MinFL[15:0] = 16'b0000000001000000;
	NoBckof = 0;
	Pad = 1;
	TxData[7:0] = 8'b00000000;
	TxEndFrm = 0;
	TxStartFrm = 0;
	TxUnderRun = 0;
  #69	FullD = 1;
  #2122	TxData[7:0] = 8'b00000001;
	TxStartFrm = 1;
  #13200	TxData[7:0] = 8'b10000000;
	TxStartFrm = 0;
  #800	TxData[7:0] = 8'b11000010;
  #800	TxData[7:0] = 8'b00000000;
  #1600	TxData[7:0] = 8'b00000001;
  #800	TxData[7:0] = 8'b00000000;
  #800	TxData[7:0] = 8'b00000001;
  #800	TxData[7:0] = 8'b00000010;
  #800	TxData[7:0] = 8'b00000011;
  #800	TxData[7:0] = 8'b00000100;
  #800	TxData[7:0] = 8'b00000101;
  #800	TxData[7:0] = 8'b10001000;
  #800	TxData[7:0] = 8'b00001000;
  #800	TxData[7:0] = 8'b00000000;
  #800	TxData[7:0] = 8'b00000001;
  #800	TxData[7:0] = 8'b00010001;
  #800	TxEndFrm = 1;
  #38000	TxData[7:0] = 8'b00000000;
	TxEndFrm = 0;
  #6000	TxData[7:0] = 8'b00000001;
	TxStartFrm = 1;
  #9200	TxData[7:0] = 8'b10000000;
	TxStartFrm = 0;
  #800	TxData[7:0] = 8'b11000010;
  #800	TxData[7:0] = 8'b00000000;
  #1600	TxData[7:0] = 8'b00000001;
  #800	TxData[7:0] = 8'b00000000;
  #800	TxData[7:0] = 8'b00000001;
  #800	TxData[7:0] = 8'b00000010;
  #800	TxData[7:0] = 8'b00000011;
  #800	TxData[7:0] = 8'b00000100;
  #800	TxData[7:0] = 8'b00000101;
  #800	TxData[7:0] = 8'b00001000;
  #800	TxData[7:0] = 8'b00000000;
  #800	TxData[7:0] = 8'b00000001;
  #800	TxData[7:0] = 8'b00100010;
  #800	TxEndFrm = 1;
  #38000	TxData[7:0] = 8'b00000000;
	TxEndFrm = 0;
  #4000 $stop;
end

endmodule

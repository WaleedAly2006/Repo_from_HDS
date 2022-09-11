//////////////////////////////////////////////////////////////////////
////                                                              ////
////  File name: eth_phy_defines.v                                ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/ethmac/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Tadej Markovic, tadej@opencores.org                   ////
////                                                              ////
////  All additional information is available in the README.txt   ////
////  file.                                                       ////
////                                                              ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2002,  Authors                                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: eth_phy_defines.v,v $
// Revision 1.2  2002/09/13 12:29:14  mohor
// Headers changed.
//
// Revision 1.1  2002/09/13 11:57:20  mohor
// New testbench. Thanks to Tadej M - "The Spammer".
//
//
//

// Address of PHY device (LXT971A)
`define ETH_PHY_ADDR                 5'h01

// LED/Configuration pins on PHY device - see the specification, page 26, table 8
// Initial set of bits 13, 12 and 8 of Control Register
`define LED_CFG1                     1'b0
`define LED_CFG2                     1'b0
`define LED_CFG3                     1'b1

// Supported speeds and physical ports - see the specification, page 67, table 41
// Set bits 15 to 9 of Status Register
`define SUPPORTED_SPEED_AND_PORT     7'h3F

// Extended status register (address 15)
// Set bit 8 of Status Register
`define EXTENDED_STATUS              1'b0

// Default status bits - see the specification, page 67, table 41
// Set bits 6 to 0 of Status Register
`define DEFAULT_STATUS               7'h09

// PHY ID 1 number - see the specification, page 68, table 42
// Set bits of Phy Id Register 1
`define PHY_ID1                      16'h0013

// PHY ID 2 number - see the specification, page 68, table 43
// Set bits 15 to 10 of Phy Id Register 2
`define PHY_ID2                      6'h1E

// Manufacturer MODEL number - see the specification, page 68, table 43
// Set bits 9 to 4 of Phy Id Register 2
`define MAN_MODEL_NUM                6'h0E

// Manufacturer REVISION number - see the specification, page 68, table 43
// Set bits 3 to 0 of Phy Id Register 2
`define MAN_REVISION_NUM             4'h2


//////////////////////////////////////////////////////////////////////
////                                                              ////
////  tb_eth_defines.v                                            ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/ethmac/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Igor Mohor (igorM@opencores.org)                      ////
////                                                              ////
////  All additional information is available in the Readme.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2001, 2002 Authors                             ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: tb_eth_defines.v,v $
// Revision 1.10  2002/11/19 20:27:46  mohor
// Temp version.
//
// Revision 1.9  2002/10/09 13:16:51  tadejm
// Just back-up; not completed testbench and some testcases are not
// wotking properly yet.
//
// Revision 1.8  2002/09/13 18:41:45  mohor
// Rearanged testcases
//
// Revision 1.7  2002/09/13 12:29:14  mohor
// Headers changed.
//
// Revision 1.6  2002/09/13 11:57:20  mohor
// New testbench. Thanks to Tadej M - "The Spammer".
//
// Revision 1.3  2002/07/19 13:57:53  mohor
// Testing environment also includes traffic cop, memory interface and host
// interface.
//
// Revision 1.2  2002/05/03 10:22:17  mohor
// TX_BUF_BASE changed.
//
// Revision 1.1  2002/03/19 12:53:54  mohor
// Some defines that are used in testbench only were moved to tb_eth_defines.v
// file.
//
//
//
//



//`define VERBOSE                       // if log files of device modules are written

`define MULTICAST_XFR          0
`define UNICAST_XFR            1
`define BROADCAST_XFR          2
`define UNICAST_WRONG_XFR      3

`define ETH_BASE              32'hd0000000
`define ETH_WIDTH             32'h800
`define MEMORY_BASE           32'h2000
`define MEMORY_WIDTH          32'h10000
`define TX_BUF_BASE           `MEMORY_BASE
`define RX_BUF_BASE           `MEMORY_BASE + 32'h8000
`define TX_BD_BASE            `ETH_BASE + 32'h00000400
`define RX_BD_BASE            `ETH_BASE + 32'h00000600

`define M1_ADDRESSED_S1 ( (m1_wb_adr_i >= `ETH_BASE)    & (m1_wb_adr_i < (`ETH_BASE    + `ETH_WIDTH   )) )
`define M1_ADDRESSED_S2 ( (m1_wb_adr_i >= `MEMORY_BASE) & (m1_wb_adr_i < (`MEMORY_BASE + `MEMORY_WIDTH)) )
`define M2_ADDRESSED_S1 ( (m2_wb_adr_i >= `ETH_BASE)    & (m2_wb_adr_i < (`ETH_BASE    + `ETH_WIDTH   )) )
`define M2_ADDRESSED_S2 ( (m2_wb_adr_i >= `MEMORY_BASE) & (m2_wb_adr_i < (`MEMORY_BASE + `MEMORY_WIDTH)) )



/* Tx BD */
`define ETH_TX_BD_READY    32'h8000 /* Tx BD Ready */
`define ETH_TX_BD_IRQ      32'h4000 /* Tx BD IRQ Enable */
`define ETH_TX_BD_WRAP     32'h2000 /* Tx BD Wrap (last BD) */
`define ETH_TX_BD_PAD      32'h1000 /* Tx BD Pad Enable */
`define ETH_TX_BD_CRC      32'h0800 /* Tx BD CRC Enable */

`define ETH_TX_BD_UNDERRUN 32'h0100 /* Tx BD Underrun Status */
`define ETH_TX_BD_RETRY    32'h00F0 /* Tx BD Retry Status */
`define ETH_TX_BD_RETLIM   32'h0008 /* Tx BD Retransmission Limit Status */
`define ETH_TX_BD_LATECOL  32'h0004 /* Tx BD Late Collision Status */
`define ETH_TX_BD_DEFER    32'h0002 /* Tx BD Defer Status */
`define ETH_TX_BD_CARRIER  32'h0001 /* Tx BD Carrier Sense Lost Status */

/* Rx BD */
`define ETH_RX_BD_EMPTY    32'h8000 /* Rx BD Empty */
`define ETH_RX_BD_IRQ      32'h4000 /* Rx BD IRQ Enable */
`define ETH_RX_BD_WRAP     32'h2000 /* Rx BD Wrap (last BD) */

`define ETH_RX_BD_MISS     32'h0080 /* Rx BD Miss Status */
`define ETH_RX_BD_OVERRUN  32'h0040 /* Rx BD Overrun Status */
`define ETH_RX_BD_INVSIMB  32'h0020 /* Rx BD Invalid Symbol Status */
`define ETH_RX_BD_DRIBBLE  32'h0010 /* Rx BD Dribble Nibble Status */
`define ETH_RX_BD_TOOLONG  32'h0008 /* Rx BD Too Long Status */
`define ETH_RX_BD_SHORT    32'h0004 /* Rx BD Too Short Frame Status */
`define ETH_RX_BD_CRCERR   32'h0002 /* Rx BD CRC Error Status */
`define ETH_RX_BD_LATECOL  32'h0001 /* Rx BD Late Collision Status */



/* Register space */
`define ETH_MODER      `ETH_BASE + 32'h00	/* Mode Register */
`define ETH_INT        `ETH_BASE + 32'h04	/* Interrupt Source Register */
`define ETH_INT_MASK   `ETH_BASE + 32'h08 /* Interrupt Mask Register */
`define ETH_IPGT       `ETH_BASE + 32'h0C /* Back to Bak Inter Packet Gap Register */
`define ETH_IPGR1      `ETH_BASE + 32'h10 /* Non Back to Back Inter Packet Gap Register 1 */
`define ETH_IPGR2      `ETH_BASE + 32'h14 /* Non Back to Back Inter Packet Gap Register 2 */
`define ETH_PACKETLEN  `ETH_BASE + 32'h18 /* Packet Length Register (min. and max.) */
`define ETH_COLLCONF   `ETH_BASE + 32'h1C /* Collision and Retry Configuration Register */
`define ETH_TX_BD_NUM  `ETH_BASE + 32'h20 /* Transmit Buffer Descriptor Number Register */
`define ETH_CTRLMODER  `ETH_BASE + 32'h24 /* Control Module Mode Register */
`define ETH_MIIMODER   `ETH_BASE + 32'h28 /* MII Mode Register */
`define ETH_MIICOMMAND `ETH_BASE + 32'h2C /* MII Command Register */
`define ETH_MIIADDRESS `ETH_BASE + 32'h30 /* MII Address Register */
`define ETH_MIITX_DATA `ETH_BASE + 32'h34 /* MII Transmit Data Register */
`define ETH_MIIRX_DATA `ETH_BASE + 32'h38 /* MII Receive Data Register */
`define ETH_MIISTATUS  `ETH_BASE + 32'h3C /* MII Status Register */
`define ETH_MAC_ADDR0  `ETH_BASE + 32'h40 /* MAC Individual Address Register 0 */
`define ETH_MAC_ADDR1  `ETH_BASE + 32'h44 /* MAC Individual Address Register 1 */
`define ETH_HASH_ADDR0 `ETH_BASE + 32'h48 /* Hash Register 0 */
`define ETH_HASH_ADDR1 `ETH_BASE + 32'h4C /* Hash Register 1 */
`define ETH_TX_CTRL    `ETH_BASE + 32'h50 /* Tx Control Register */


/* MODER Register */
`define ETH_MODER_RXEN     32'h00000001 /* Receive Enable  */
`define ETH_MODER_TXEN     32'h00000002 /* Transmit Enable */
`define ETH_MODER_NOPRE    32'h00000004 /* No Preamble  */
`define ETH_MODER_BRO      32'h00000008 /* Reject Broadcast */
`define ETH_MODER_IAM      32'h00000010 /* Use Individual Hash */
`define ETH_MODER_PRO      32'h00000020 /* Promiscuous (receive all) */
`define ETH_MODER_IFG      32'h00000040 /* Min. IFG not required */
`define ETH_MODER_LOOPBCK  32'h00000080 /* Loop Back */
`define ETH_MODER_NOBCKOF  32'h00000100 /* No Backoff */
`define ETH_MODER_EXDFREN  32'h00000200 /* Excess Defer */
`define ETH_MODER_FULLD    32'h00000400 /* Full Duplex */
`define ETH_MODER_RST      32'h00000800 /* Reset MAC */
`define ETH_MODER_DLYCRCEN 32'h00001000 /* Delayed CRC Enable */
`define ETH_MODER_CRCEN    32'h00002000 /* CRC Enable */
`define ETH_MODER_HUGEN    32'h00004000 /* Huge Enable */
`define ETH_MODER_PAD      32'h00008000 /* Pad Enable */
`define ETH_MODER_RECSMALL 32'h00010000 /* Receive Small */

/* Interrupt Source Register */
`define ETH_INT_TXB        32'h00000001 /* Transmit Buffer IRQ */
`define ETH_INT_TXE        32'h00000002 /* Transmit Error IRQ */
`define ETH_INT_RXB        32'h00000004 /* Receive Buffer IRQ */
`define ETH_INT_RXE        32'h00000008 /* Receive Error IRQ */
`define ETH_INT_BUSY       32'h00000010 /* Busy IRQ */
`define ETH_INT_TXC        32'h00000020 /* Transmit Control Frame IRQ */
`define ETH_INT_RXC        32'h00000040 /* Received Control Frame IRQ */

/* Interrupt Mask Register */
`define ETH_INT_MASK_TXB   32'h00000001 /* Transmit Buffer IRQ Mask */
`define ETH_INT_MASK_TXE   32'h00000002 /* Transmit Error IRQ Mask */
`define ETH_INT_MASK_RXF   32'h00000004 /* Receive Frame IRQ Mask */
`define ETH_INT_MASK_RXE   32'h00000008 /* Receive Error IRQ Mask */
`define ETH_INT_MASK_BUSY  32'h00000010 /* Busy IRQ Mask */
`define ETH_INT_MASK_TXC   32'h00000020 /* Transmit Control Frame IRQ Mask */
`define ETH_INT_MASK_RXC   32'h00000040 /* Received Control Frame IRQ Mask */

/* Control Module Mode Register */
`define ETH_CTRLMODER_PASSALL 32'h00000001 /* Pass Control Frames */
`define ETH_CTRLMODER_RXFLOW  32'h00000002 /* Receive Control Flow Enable */
`define ETH_CTRLMODER_TXFLOW  32'h00000004 /* Transmit Control Flow Enable */

/* MII Mode Register */
`define ETH_MIIMODER_CLKDIV   32'h000000FF /* Clock Divider */
`define ETH_MIIMODER_NOPRE    32'h00000100 /* No Preamble */
`define ETH_MIIMODER_RST      32'h00000200 /* MIIM Reset */

/* MII Command Register */
`define ETH_MIICOMMAND_SCANSTAT  32'h00000001 /* Scan Status */
`define ETH_MIICOMMAND_RSTAT     32'h00000002 /* Read Status */
`define ETH_MIICOMMAND_WCTRLDATA 32'h00000004 /* Write Control Data */

/* MII Address Register */
`define ETH_MIIADDRESS_FIAD 32'h0000001F /* PHY Address */
`define ETH_MIIADDRESS_RGAD 32'h00001F00 /* RGAD Address */

/* MII Status Register */
`define ETH_MIISTATUS_LINKFAIL    0 /* Link Fail bit */
`define ETH_MIISTATUS_BUSY        1 /* MII Busy bit */
`define ETH_MIISTATUS_NVALID      2 /* Data in MII Status Register is invalid bit */

/* TX Control Register */
`define ETH_TX_CTRL_TXPAUSERQ     32'h10000 /* Send PAUSE request */


`define TIME $display("  Time: %0t", $time)

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  File name "wb_model_defines.v"                              ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/ethmac/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Miha Dolenc (mihad@opencores.org)                     ////
////                                                              ////
////  All additional information is available in the README.pdf   ////
////  file.                                                       ////
////                                                              ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2002 Authors                                   ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: wb_model_defines.v,v $
// Revision 1.2  2002/09/13 12:29:14  mohor
// Headers changed.
//
//
//
//

// WISHBONE frequency in GHz
`define WB_FREQ 0.100

// memory frequency in GHz
`define MEM_FREQ 0.100

// setup and hold time definitions for WISHBONE - used in BFMs for signal generation
`define Tsetup 4
`define Thold  1

// how many clock cycles should model wait for design's response - integer 32 bit value
`define WAIT_FOR_RESPONSE 1023

// maximum number of transactions allowed in single call to block or cab transfer routines
`define MAX_BLK_SIZE  1024

// maximum retry terminations allowed for WISHBONE master to repeat an access
`define WB_TB_MAX_RTY 0


// some common types and defines
`define WB_ADDR_WIDTH 32
`define WB_DATA_WIDTH 32
`define WB_SEL_WIDTH `WB_DATA_WIDTH/8
`define WB_TAG_WIDTH 1
`define WB_ADDR_TYPE [(`WB_ADDR_WIDTH - 1):0]
`define WB_DATA_TYPE [(`WB_DATA_WIDTH - 1):0]
`define WB_SEL_TYPE  [(`WB_SEL_WIDTH  - 1):0]
`define WB_TAG_TYPE  [(`WB_TAG_WIDTH  - 1):0]

// read cycle stimulus - consists of:
//    - address field - which address read will be performed from
//    - sel field     - what byte select value should be
//    - tag field     - what tag values should be put on the bus
`define READ_STIM_TYPE [(`WB_ADDR_WIDTH + `WB_SEL_WIDTH + `WB_TAG_WIDTH - 1):0]
`define READ_STIM_LENGTH (`WB_ADDR_WIDTH + `WB_SEL_WIDTH + `WB_TAG_WIDTH)
`define READ_ADDRESS  [(`WB_ADDR_WIDTH - 1):0]
`define READ_SEL      [(`WB_ADDR_WIDTH + `WB_SEL_WIDTH - 1):`WB_ADDR_WIDTH]
`define READ_TAG_STIM [(`WB_ADDR_WIDTH + `WB_SEL_WIDTH + `WB_TAG_WIDTH - 1):(`WB_ADDR_WIDTH + `WB_SEL_WIDTH)]

// read cycle return type consists of:
//    - read data field
//    - tag field received from WISHBONE
//    - wishbone slave response fields - ACK, ERR and RTY
//    - test bench error indicator (when testcase has not used wb master model properly)
//    - how much data was actually transfered
`define READ_RETURN_TYPE [(32 + 4 + `WB_DATA_WIDTH + `WB_TAG_WIDTH - 1):0]
`define READ_DATA        [(32 + `WB_DATA_WIDTH + 4 - 1):32 + 4]
`define READ_TAG_RET     [(32 + 4 + `WB_DATA_WIDTH + `WB_TAG_WIDTH - 1):(`WB_DATA_WIDTH + 32 + 4)]
`define READ_RETURN_LENGTH (32 + 4 + `WB_DATA_WIDTH + `WB_TAG_WIDTH - 1)

// write cycle stimulus type consists of
//    - address field
//    - data field
//    - sel field
//    - tag field
`define WRITE_STIM_TYPE [(`WB_ADDR_WIDTH + `WB_DATA_WIDTH + `WB_SEL_WIDTH + `WB_TAG_WIDTH - 1):0]
`define WRITE_ADDRESS       [(`WB_ADDR_WIDTH - 1):0]
`define WRITE_DATA          [(`WB_ADDR_WIDTH + `WB_DATA_WIDTH - 1):`WB_ADDR_WIDTH]
`define WRITE_SEL           [(`WB_ADDR_WIDTH + `WB_DATA_WIDTH + `WB_SEL_WIDTH - 1):(`WB_ADDR_WIDTH + `WB_DATA_WIDTH)]
`define WRITE_TAG_STIM      [(`WB_ADDR_WIDTH + `WB_DATA_WIDTH + `WB_SEL_WIDTH + `WB_TAG_WIDTH - 1):(`WB_ADDR_WIDTH + `WB_DATA_WIDTH + `WB_SEL_WIDTH)]

// length of WRITE_STIMULUS
`define WRITE_STIM_LENGTH (`WB_ADDR_WIDTH + `WB_DATA_WIDTH + `WB_SEL_WIDTH + `WB_TAG_WIDTH)

// write cycle return type consists of:
//    - test bench error indicator (when testcase has not used wb master model properly)
//    - wishbone slave response fields - ACK, ERR and RTY
//    - tag field received from WISHBONE
//    - how much data was actually transfered
`define WRITE_RETURN_TYPE [(32 + 4 + `WB_TAG_WIDTH - 1):0]
`define WRITE_TAG_RET     [(32 + 4 + `WB_TAG_WIDTH - 1):32 + 4]

// this four fields are common to both read and write routines return values
`define TB_ERROR_BIT [0]
`define CYC_ACK [1]
`define CYC_RTY [2]
`define CYC_ERR [3]
`define CYC_RESPONSE [3:1]
`define CYC_ACTUAL_TRANSFER [35:4]

// block transfer flags
`define WB_TRANSFER_FLAGS [41:0]
// consists of:
// - number of transfer cycles to perform
// - flag that enables retry termination handling - if disabled, block transfer routines will return on any termination other than acknowledge
// - flag indicating CAB transfer is to be performed - ignored by all single transfer routines
// - number of initial wait states to insert
// - number of subsequent wait states to insert
`define WB_TRANSFER_SIZE     [41:10]
`define WB_TRANSFER_AUTO_RTY [8]
`define WB_TRANSFER_CAB      [9]
`define INIT_WAITS           [3:0]
`define SUBSEQ_WAITS         [7:4]

// wb slave response
`define ACK_RESPONSE  3'b100
`define ERR_RESPONSE  3'b010
`define RTY_RESPONSE  3'b001
`define NO_RESPONSE   3'b000

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_host.v                                                  ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/ethmac/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Igor Mohor (igorM@opencores.org)                      ////
////                                                              ////
////  All additional information is avaliable in the Readme.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2001, 2002 Authors                             ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: eth_host.v,v $
// Revision 1.1  2002/07/19 13:57:53  mohor
// Testing environment also includes traffic cop, memory interface and host
// interface.
//
//
//
//
//

`include "timescale.v"

module eth_host
(
  // WISHBONE common
  wb_clk_i, wb_rst_i, 
  
  // WISHBONE master
  wb_adr_o, wb_sel_o, wb_we_o, wb_dat_i, wb_dat_o, wb_cyc_o, wb_stb_o, wb_ack_i, wb_err_i
);

parameter Tp=1;

input         wb_clk_i, wb_rst_i;

input  [31:0] wb_dat_i;
input         wb_ack_i, wb_err_i;

output [31:0] wb_adr_o, wb_dat_o;
output  [3:0] wb_sel_o;
output        wb_cyc_o, wb_stb_o, wb_we_o;

reg    [31:0] wb_adr_o, wb_dat_o;
reg     [3:0] wb_sel_o;
reg           wb_cyc_o, wb_stb_o, wb_we_o;

integer host_log;

// Reset pulse
initial
begin
  host_log = $fopen("eth_host.log");
end


task wb_write;

  input  [31:0] addr;
  input   [3:0] sel;
  input  [31:0] data;

  begin
    @ (posedge wb_clk_i);   // Sync. with clock
    #1;
    wb_adr_o = addr;
    wb_dat_o = data;
    wb_sel_o = sel;
    wb_cyc_o = 1;
    wb_stb_o = 1;
    wb_we_o  = 1;
  
    wait(wb_ack_i | wb_err_i);
    $fdisplay(host_log, "(%0t)(%m)wb_write (0x%0x) = 0x%0x", $time, wb_adr_o, wb_dat_o);
    @ (posedge wb_clk_i);   // Sync. with clock
    #1;
    wb_adr_o = 'hx;
    wb_dat_o = 'hx;
    wb_sel_o = 'hx;
    wb_cyc_o = 0;
    wb_stb_o = 0;
    wb_we_o  = 'hx;
  end
endtask


task wb_read;

  input  [31:0] addr;
  input   [3:0] sel;
  output [31:0] data;

  begin
    @ (posedge wb_clk_i);   // Sync. with clock
    #1;
    wb_adr_o = addr;
    wb_sel_o = sel;
    wb_cyc_o = 1;
    wb_stb_o = 1;
    wb_we_o  = 0;
  
    wait(wb_ack_i | wb_err_i);
    @ (posedge wb_clk_i);   // Sync. with clock
    data = wb_dat_i;
    $fdisplay(host_log, "(%0t)(%m)wb_read (0x%0x) = 0x%0x", $time, wb_adr_o, wb_dat_i);
    #1;
    wb_adr_o = 'hx;
    wb_sel_o = 'hx;
    wb_cyc_o = 0;
    wb_stb_o = 0;
    wb_we_o  = 'hx;
  end
endtask



endmodule

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_memory2001.v                                            ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/ethmac/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Igor Mohor (igorM@opencores.org)                      ////
////                                                              ////
////  All additional information is avaliable in the Readme.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2001, 2002 Authors                             ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: eth_memory.v,v $
// Revision 1.1  2002/07/19 13:57:53  mohor
// Testing environment also includes traffic cop, memory interface and host
// interface.
//
//
//
//



`include "timescale.v"


`define AW 16
`define NBYTE 4

//
// verilog 2001 coding style : ANSI C style port definition
//

module eth_memory ( input         wb_clk_i, 
                    input         wb_rst_i,
                    input  [31:0] wb_adr_i, 
                    input  [31:0] wb_dat_i,
                    input   [3:0] wb_sel_i,
                    input         wb_we_i, 
                    input         wb_cyc_i, 
                    input         wb_stb_i,
                    output reg    wb_ack_o = 0,    // verilog 2001 : direct initialization
                    output reg    wb_err_o = 0,    // verilog 2001 : direct initialization
                    output reg[31:0] wb_dat_o = 0 );
                    
//
// verilog 2001 coding style : Bidimensional array
// verilog 2001 coding style : Power operator
//           
         
reg     [7:0] memory [0:`NBYTE-1][0:2**`AW-1];


parameter Tp = 1;

integer memory_log;

initial
begin
  memory_log = $fopen("eth_memory.log");
end


always @ (posedge wb_clk_i)
begin
  if(wb_cyc_i & wb_stb_i)
    begin
      repeat(1) @ (posedge wb_clk_i);     // Waiting 3 clock cycles before ack is set
        begin                             // (you can add some random function here)
          #1;
          wb_ack_o = 1'b1;
          if(~wb_we_i)
            begin
              if(wb_adr_i[1:0] == 2'b00)       // word access
                begin
                  wb_dat_o[31:24] = memory[3][wb_adr_i[17:2]];
                  wb_dat_o[23:16] = memory[2][wb_adr_i[17:2]];
                  wb_dat_o[15:08] = memory[1][wb_adr_i[17:2]];
                  wb_dat_o[07:00] = memory[0][wb_adr_i[17:2]];
                end
              else if(wb_adr_i[1:0] == 2'b10)       // half access
                begin
                  wb_dat_o[31:24] = 0;
                  wb_dat_o[23:16] = 0;
                  wb_dat_o[15:08] = memory[1][wb_adr_i[17:2]];
                  wb_dat_o[07:00] = memory[0][wb_adr_i[17:2]];
                end
              else if(wb_adr_i[1:0] == 2'b01)       // byte access
                begin
                  wb_dat_o[31:24] = 0;
                  wb_dat_o[23:16] = memory[2][wb_adr_i[17:2]];
                  wb_dat_o[15:08] = 0;
                  wb_dat_o[07:00] = 0;
                end
              else if(wb_adr_i[1:0] == 2'b11)       // byte access
                begin
                  wb_dat_o[31:24] = 0;
                  wb_dat_o[23:16] = 0;
                  wb_dat_o[15:08] = 0;
                  wb_dat_o[07:00] = memory[0][wb_adr_i[17:2]];
                end

              $fdisplay(memory_log, "(%0t)(%m)wb_read (0x%0x) = 0x%0x", $time, wb_adr_i, wb_dat_o);
            end
          else
            begin
              $fdisplay(memory_log, "(%0t)(%m)wb_write (0x%0x) = 0x%0x", $time, wb_adr_i, wb_dat_i);
              if(wb_sel_i[0])
                memory[0][wb_adr_i[17:2]] = wb_dat_i[7:0];
              if(wb_sel_i[1])
                memory[1][wb_adr_i[17:2]] = wb_dat_i[15:8];
              if(wb_sel_i[2])
                memory[2][wb_adr_i[17:2]] = wb_dat_i[23:16];
              if(wb_sel_i[3])
                memory[3][wb_adr_i[17:2]] = wb_dat_i[31:24];
            end
        end
      @ (posedge wb_clk_i);
      wb_ack_o <=#Tp 1'b0;
    end
end


endmodule

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  File name: eth_phy.v                                        ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/ethmac/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Tadej Markovic, tadej@opencores.org                   ////
////                                                              ////
////  All additional information is available in the README.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2002  Authors                                  ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: eth_phy.v,v $
// Revision 1.7  2002/10/18 13:58:22  tadejm
// Some code changed due to bug fixes.
//
// Revision 1.6  2002/10/09 13:16:51  tadejm
// Just back-up; not completed testbench and some testcases are not
// wotking properly yet.
//
// Revision 1.5  2002/09/18 17:55:08  tadej
// Bug repaired in eth_phy device
//
// Revision 1.3  2002/09/13 14:50:15  mohor
// Bug in MIIM fixed.
//
// Revision 1.2  2002/09/13 12:29:14  mohor
// Headers changed.
//
// Revision 1.1  2002/09/13 11:57:20  mohor
// New testbench. Thanks to Tadej M - "The Spammer".
//
//
//

`include "timescale.v"
module eth_phy // This PHY model simulate simplified Intel LXT971A PHY
(
        // COMMON
        m_rst_n_i,

        // MAC TX
        mtx_clk_o,
        mtxd_i,
        mtxen_i,
        mtxerr_i,

        // MAC RX
        mrx_clk_o,
        mrxd_o,
        mrxdv_o,
        mrxerr_o,

        mcoll_o,
        mcrs_o,

        // MIIM
        mdc_i,
        md_io,

        // SYSTEM
        phy_log
);

//////////////////////////////////////////////////////////////////////
//
// Input/output signals
//
//////////////////////////////////////////////////////////////////////

// MAC miscellaneous signals
input           m_rst_n_i;
// MAC TX signals
output          mtx_clk_o;
input   [3:0]   mtxd_i;
input           mtxen_i;
input           mtxerr_i;
// MAC RX signals
output          mrx_clk_o;
output  [3:0]   mrxd_o;
output          mrxdv_o;
output          mrxerr_o;
// MAC common signals
output          mcoll_o;
output          mcrs_o;
// MAC management signals
input           mdc_i;
inout           md_io;
// SYSTEM
input   [31:0]  phy_log;


//////////////////////////////////////////////////////////////////////
//
// PHY management (MIIM) REGISTER definitions
//
//////////////////////////////////////////////////////////////////////
//
//   Supported registers:
//
// Addr | Register Name
//--------------------------------------------------------------------
//   0  | Control reg.     |
//   1  | Status reg. #1   |--> normal operation
//   2  | PHY ID reg. 1    |
//   3  | PHY ID reg. 2    |
//----------------------
// Addr | Data MEMORY      |-->  for testing
//
//--------------------------------------------------------------------
//
// Control register
reg            control_bit15; // self clearing bit
reg    [14:10] control_bit14_10;
reg            control_bit9; // self clearing bit
reg    [8:0]   control_bit8_0;
// Status register
wire   [15:9]  status_bit15_9 = `SUPPORTED_SPEED_AND_PORT;
wire           status_bit8    = `EXTENDED_STATUS;
wire           status_bit7    = 1'b0; // reserved
reg    [6:0]   status_bit6_0;
// PHY ID register 1
wire   [15:0]  phy_id1        = `PHY_ID1;
// PHY ID register 2
wire   [15:0]  phy_id2        = {`PHY_ID2, `MAN_MODEL_NUM, `MAN_REVISION_NUM};
//--------------------------------------------------------------------
//
// Data MEMORY
reg    [15:0]  data_mem [0:31]; // 32 locations of 16-bit data width
//
//////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////
//
// PHY clocks - RX & TX
//
//////////////////////////////////////////////////////////////////////

reg       mtx_clk_o;
reg       mrx_clk_o;

// random generator for a RX period when link is down
real      rx_link_down_halfperiod;

always@(status_bit6_0[2])
begin
  if (!status_bit6_0[2]) // Link is down
  begin
    #1 rx_link_down_halfperiod = ({$random} % 243) + 13;
    `ifdef VERBOSE
    #1 $fdisplay(phy_log, "   (%0t)(%m)MAC RX clock is %f MHz while ethernet link is down!", 
                 $time, (1000/(rx_link_down_halfperiod*2)) );
    `endif
  end
end

`ifdef VERBOSE
always@(status_bit6_0[2])
begin
  if (!status_bit6_0[2]) // Link is down
    #1 $fdisplay(phy_log, "   (%0t)(%m)Ethernet link is down!", $time);
  else
    #1 $fdisplay(phy_log, "   (%0t)(%m)Ethernet link is up!", $time);
end
`endif

// speed selection signal eth_speed: 1'b1 - 100 Mbps, 1'b0 - 10 Mbps
wire      eth_speed;

assign eth_speed = ( (control_bit14_10[13]) && !((`LED_CFG1) && (`LED_CFG2)) );

`ifdef VERBOSE
always@(eth_speed)
begin
  if (eth_speed)
    #1 $fdisplay(phy_log, "   (%0t)(%m)PHY configured to 100 Mbps!", $time);
  else
    #1 $fdisplay(phy_log, "   (%0t)(%m)PHY configured tp 10 Mbps!", $time);
end
`endif

// different clock calculation between RX and TX, so that there is alsways a litle difference
always
begin
  mtx_clk_o = 0;
  #7;
  forever
  begin
    if (eth_speed) // 100 Mbps - 25 MHz, 40 ns
    begin
      #20 mtx_clk_o = ~mtx_clk_o;
    end
    else // 10 Mbps - 2.5 MHz, 400 ns
    begin
      #200 mtx_clk_o = ~mtx_clk_o;
    end
  end
end

always
begin
  mrx_clk_o = 1;
  #3;
  forever
  begin
    if (status_bit6_0[2]) // Link is UP
    begin
      if (eth_speed) // 100 Mbps - 25 MHz, 40 ns
      begin
        //#(((1/0.025001)/2)) 
        #19.99 mrx_clk_o = ~mrx_clk_o; // period is calculated from frequency in GHz
      end
      else // 10 Mbps - 2.5 MHz, 400 ns
      begin
        //#(((1/0.0024999)/2)) 
        #200.01 mrx_clk_o = ~mrx_clk_o; // period is calculated from frequency in GHz
      end
    end
    else // Link is down
    begin
      #(rx_link_down_halfperiod) mrx_clk_o = ~mrx_clk_o; // random frequency between 2 MHz and 40 MHz
    end
  end
end

//////////////////////////////////////////////////////////////////////
//
// PHY management (MIIM) interface
//
//////////////////////////////////////////////////////////////////////
reg             respond_to_all_phy_addr; // PHY will respond to all phy addresses
reg             no_preamble; // PHY responds to frames without preamble

integer         md_transfer_cnt; // counter countes the value of whole data transfer
reg             md_transfer_cnt_reset; // for reseting the counter
reg             md_io_reg; // registered input
reg             md_io_output; // registered output
reg             md_io_rd_wr;  // op-code latched (read or write)
reg             md_io_enable; // output enable
reg     [4:0]   phy_address; // address of PHY device
reg     [4:0]   reg_address; // address of a register
reg             md_get_phy_address; // for shifting PHY address in
reg             md_get_reg_address; // for shifting register address in
reg     [15:0]  reg_data_in; // data to be written in a register
reg             md_get_reg_data_in; // for shifting data in
reg             md_put_reg_data_in; // for storing data into a selected register
reg     [15:0]  reg_data_out; // data to be read from a register
reg             md_put_reg_data_out; // for registering data from a selected register

wire    [15:0]  register_bus_in; // data bus to a selected register
reg     [15:0]  register_bus_out; // data bus from a selected register

initial
begin
  md_io_enable = 1'b0;
  respond_to_all_phy_addr = 1'b0;
  no_preamble = 1'b0;
end

// tristate output
assign #1 md_io = (m_rst_n_i && md_io_enable) ? md_io_output : 1'bz ;

// registering input
always@(posedge mdc_i or negedge m_rst_n_i)
begin
  if (!m_rst_n_i)
    md_io_reg <= #1 0;
  else
    md_io_reg <= #1 md_io;
end

// getting (shifting) PHY address, Register address and Data in
// putting Data out and shifting
always@(posedge mdc_i or negedge m_rst_n_i)
begin
  if (!m_rst_n_i)
  begin
    phy_address <= 0;
    reg_address <= 0;
    reg_data_in <= 0;
    reg_data_out <= 0;
    md_io_output <= 0;
  end
  else
  begin
    if (md_get_phy_address)
    begin
      phy_address[4:1] <= phy_address[3:0]; // correct address is `ETH_PHY_ADDR
      phy_address[0]   <= md_io;
    end
    if (md_get_reg_address)
    begin
      reg_address[4:1] <= reg_address[3:0];
      reg_address[0]   <= md_io;
    end
    if (md_get_reg_data_in)
    begin
      reg_data_in[15:1] <= reg_data_in[14:0];
      reg_data_in[0]    <= md_io;
    end
    if (md_put_reg_data_out)
    begin
      reg_data_out <= register_bus_out;
    end
    if (md_io_enable)
    begin
      md_io_output       <= reg_data_out[15];
      reg_data_out[15:1] <= reg_data_out[14:0];
      reg_data_out[0]    <= 1'b0;
    end
  end
end

assign #1 register_bus_in = reg_data_in; // md_put_reg_data_in - allows writing to a selected register

// counter for transfer to and from MIIM
always@(posedge mdc_i or negedge m_rst_n_i)
begin
  if (!m_rst_n_i)
  begin
    if (no_preamble)
      md_transfer_cnt <= 33;
    else
      md_transfer_cnt <= 1;
  end
  else
  begin
    if (md_transfer_cnt_reset)
    begin
      if (no_preamble)
        md_transfer_cnt <= 33;
      else
        md_transfer_cnt <= 1;
    end
    else if (md_transfer_cnt < 64)
    begin
      md_transfer_cnt <= md_transfer_cnt + 1'b1;
    end
    else
    begin
      if (no_preamble)
        md_transfer_cnt <= 33;
      else
        md_transfer_cnt <= 1;
    end
  end
end

// MIIM transfer control
always@(m_rst_n_i or md_transfer_cnt or md_io_reg or md_io_rd_wr or 
        phy_address or respond_to_all_phy_addr or no_preamble)
begin
  #1;
  while ((m_rst_n_i) && (md_transfer_cnt <= 64))
  begin
    // reset the signal - put registered data in the register (when write)
    // check preamble
    if (md_transfer_cnt < 33)
    begin
      #4 md_put_reg_data_in = 1'b0;
      if (md_io_reg !== 1'b1)
      begin
        #1 md_transfer_cnt_reset = 1'b1;
      end
      else
      begin
        #1 md_transfer_cnt_reset = 1'b0;
      end
    end

    // check start bits
    else if (md_transfer_cnt == 33)
    begin
      if (no_preamble)
      begin
        #4 md_put_reg_data_in = 1'b0;
        if (md_io_reg === 1'b0)
        begin
          #1 md_transfer_cnt_reset = 1'b0;
        end
        else
        begin
          #1 md_transfer_cnt_reset = 1'b1;
          //if ((md_io_reg !== 1'bz) && (md_io_reg !== 1'b1))
          if (md_io_reg !== 1'bz)
          begin
            // ERROR - start !
            `ifdef VERBOSE
            $fdisplay(phy_log, "*E (%0t)(%m)MIIM - wrong first start bit (without preamble)", $time);
            `endif
            #10 $stop;
          end
        end
      end
      else // with preamble
      begin
        #4 ;
        `ifdef VERBOSE
        $fdisplay(phy_log, "   (%0t)(%m)MIIM - 32-bit preamble received", $time);
        `endif
        // check start bit only if md_transfer_cnt_reset is inactive, because if
        // preamble suppression was changed start bit should not be checked
        if ((md_io_reg !== 1'b0) && (md_transfer_cnt_reset == 1'b0))
        begin
          // ERROR - start !
          `ifdef VERBOSE
          $fdisplay(phy_log, "*E (%0t)(%m)MIIM - wrong first start bit", $time);
          `endif
          #10 $stop;
        end
      end
    end

    else if (md_transfer_cnt == 34)
    begin
      #4;
      if (md_io_reg !== 1'b1)
      begin
        // ERROR - start !
        #1;
        `ifdef VERBOSE
        if (no_preamble)
          $fdisplay(phy_log, "*E (%0t)(%m)MIIM - wrong second start bit (without preamble)", $time);
        else
          $fdisplay(phy_log, "*E (%0t)(%m)MIIM - wrong second start bit", $time);
        `endif
        #10 $stop;
      end
      else
      begin
        `ifdef VERBOSE
        if (no_preamble)
          #1 $fdisplay(phy_log, "   (%0t)(%m)MIIM - 2 start bits received (without preamble)", $time);
        else
          #1 $fdisplay(phy_log, "   (%0t)(%m)MIIM - 2 start bits received", $time);
        `endif
      end
    end

    // register the op-code (rd / wr)
    else if (md_transfer_cnt == 35)
    begin
      #4;
      if (md_io_reg === 1'b1)
      begin
        #1 md_io_rd_wr = 1'b1;
      end
      else 
      begin
        #1 md_io_rd_wr = 1'b0;
      end
    end

    else if (md_transfer_cnt == 36)
    begin
      #4;
      if ((md_io_reg === 1'b0) && (md_io_rd_wr == 1'b1))
      begin
        #1 md_io_rd_wr = 1'b1; // reading from PHY registers
        `ifdef VERBOSE
        $fdisplay(phy_log, "   (%0t)(%m)MIIM - op-code for READING from registers", $time);
        `endif
      end
      else if ((md_io_reg === 1'b1) && (md_io_rd_wr == 1'b0))
      begin
        #1 md_io_rd_wr = 1'b0; // writing to PHY registers
        `ifdef VERBOSE
        $fdisplay(phy_log, "   (%0t)(%m)MIIM - op-code for WRITING to registers", $time);
        `endif
      end
      else
      begin
        // ERROR - wrong opcode !
        `ifdef VERBOSE
        #1 $fdisplay(phy_log, "*E (%0t)(%m)MIIM - wrong OP-CODE", $time);
        `endif
        #10 $stop;
      end
    // set the signal - get PHY address
      begin
        #1 md_get_phy_address = 1'b1;
      end
    end

    // reset the signal - get PHY address
    else if (md_transfer_cnt == 41)
    begin
      #4 md_get_phy_address = 1'b0;
    // set the signal - get register address
      #1 md_get_reg_address = 1'b1;
    end

    // reset the signal - get register address
    // set the signal - put register data to output register
    else if (md_transfer_cnt == 46)
    begin
      #4 md_get_reg_address = 1'b0;
      #1 md_put_reg_data_out = 1'b1;
    end

    // reset the signal - put register data to output register
    // set the signal - enable md_io as output when read
    else if (md_transfer_cnt == 47)
    begin
      #4 md_put_reg_data_out = 1'b0;
      if (md_io_rd_wr) //read
      begin
        if (md_io_reg !== 1'bz)
        begin
          // ERROR - turn around !
          `ifdef VERBOSE
          #1 $fdisplay(phy_log, "*E (%0t)(%m)MIIM - wrong turn-around cycle before reading data out", $time);
          `endif
          #10 $stop;
        end
        if ((phy_address === `ETH_PHY_ADDR) || respond_to_all_phy_addr) // check the PHY address
        begin
          #1 md_io_enable = 1'b1;
          `ifdef VERBOSE
          $fdisplay(phy_log, "   (%0t)(%m)MIIM - received correct PHY ADDRESS: %x", $time, phy_address);
          `endif
        end
        else
        begin
          `ifdef VERBOSE
          #1 $fdisplay(phy_log, "*W (%0t)(%m)MIIM - received different PHY ADDRESS: %x", $time, phy_address);
          `endif
        end
      end
      else // write
      begin
        #1 md_io_enable = 1'b0;
    // check turn around cycle when write on clock 47
        if (md_io_reg !== 1'b1) 
        begin
          // ERROR - turn around !
          `ifdef VERBOSE
          #1 $fdisplay(phy_log, "*E (%0t)(%m)MIIM - wrong 1. turn-around cycle before writing data in", 
                       $time);
          `endif
          #10 $stop;
        end
      end
    end

    // set the signal - get register data in when write
    else if (md_transfer_cnt == 48)
    begin
      #4;
      if (!md_io_rd_wr) // write
      begin
        #1 md_get_reg_data_in = 1'b1;
    // check turn around cycle when write on clock 48
        if (md_io_reg !== 1'b0)
        begin
          // ERROR - turn around !
          `ifdef VERBOSE
          #1 $fdisplay(phy_log, "*E (%0t)(%m)MIIM - wrong 2. turn-around cycle before writing data in", 
                       $time);
          `endif
          #10 $stop;
        end
      end
      else // read
      begin
        #1 md_get_reg_data_in = 1'b0;
      end
    end

    // reset the signal - enable md_io as output when read
    // reset the signal - get register data in when write
    // set the signal - put registered data in the register when write
    else if (md_transfer_cnt == 64)
    begin
      #1 md_io_enable = 1'b0;
      #4 md_get_reg_data_in = 1'b0;
      if (!md_io_rd_wr) // write
      begin
        if ((phy_address === `ETH_PHY_ADDR) || respond_to_all_phy_addr) // check the PHY address
        begin
          #1 md_put_reg_data_in = 1'b1;
          `ifdef VERBOSE
          $fdisplay(phy_log, "   (%0t)(%m)MIIM - received correct PHY ADDRESS: %x", $time, phy_address);
          $fdisplay(phy_log, "   (%0t)(%m)MIIM - WRITING to register %x COMPLETED!", $time, reg_address);
          `endif
        end
        else
        begin
          `ifdef VERBOSE
          #1 $fdisplay(phy_log, "*W (%0t)(%m)MIIM - received different PHY ADDRESS: %x", $time, phy_address);
          $fdisplay(phy_log, "*W (%0t)(%m)MIIM - NO WRITING to register %x !", $time, reg_address);
          `endif
        end
      end
      else // read
      begin
        `ifdef VERBOSE
        if ((phy_address === `ETH_PHY_ADDR) || respond_to_all_phy_addr) // check the PHY address
          #1 $fdisplay(phy_log, "   (%0t)(%m)MIIM - READING from register %x COMPLETED!", 
                       $time, reg_address);
        else
          #1 $fdisplay(phy_log, "*W (%0t)(%m)MIIM - NO READING from register %x !", $time, reg_address);
        `endif
      end
    end

    // wait for one clock period
    @(posedge mdc_i)
      #1;
  end 
end

//====================================================================
//
// PHY management (MIIM) REGISTERS
//
//====================================================================
//
//   Supported registers (normal operation):
//
// Addr | Register Name 
//--------------------------------------------------------------------
//   0  | Control reg.  
//   1  | Status reg. #1 
//   2  | PHY ID reg. 1 
//   3  | PHY ID reg. 2 
//----------------------
// Addr | Data MEMORY      |-->  for testing
//
//--------------------------------------------------------------------
//
// Control register
//  reg            control_bit15; // self clearing bit
//  reg    [14:10] control_bit14_10;
//  reg            control_bit9; // self clearing bit
//  reg    [8:0]   control_bit8_0;
// Status register
//  wire   [15:9]  status_bit15_9 = `SUPPORTED_SPEED_AND_PORT;
//  wire           status_bit8    = `EXTENDED_STATUS;
//  wire           status_bit7    = 1'b0; // reserved
//  reg    [6:0]   status_bit6_0  = `DEFAULT_STATUS;
// PHY ID register 1
//  wire   [15:0]  phy_id1        = `PHY_ID1;
// PHY ID register 2
//  wire   [15:0]  phy_id2        = {`PHY_ID2, `MAN_MODEL_NUM, `MAN_REVISION_NUM};
//--------------------------------------------------------------------
//
// Data MEMORY
//  reg    [15:0]  data_mem [0:31]; // 32 locations of 16-bit data width
//
//====================================================================

//////////////////////////////////////////////////////////////////////
//
// PHY management (MIIM) REGISTER control
//
//////////////////////////////////////////////////////////////////////

// wholy writable registers for walking ONE's on data, phy and reg. addresses
reg     registers_addr_data_test_operation;

// Non writable status registers
always
begin
  #1 status_bit6_0[6] = no_preamble;
  status_bit6_0[5] = 1'b0;
  status_bit6_0[3] = 1'b1;
  status_bit6_0[0] = 1'b1;
end
always@(posedge mrx_clk_o)
begin
  status_bit6_0[4] <= #1 1'b0;
  status_bit6_0[1] <= #1 1'b0;
end
initial
begin
  status_bit6_0[2] = 1'b1;
  registers_addr_data_test_operation = 0;
end

// Reading from a selected registers
always@(reg_address or registers_addr_data_test_operation or md_put_reg_data_out or
        control_bit15 or control_bit14_10 or control_bit9 or control_bit8_0 or 
        status_bit15_9 or status_bit8 or status_bit7 or status_bit6_0 or
        phy_id1 or phy_id2)
begin
  if (registers_addr_data_test_operation) // test operation
  begin
    if (md_put_reg_data_out) // read enable
    begin
      register_bus_out = #1 data_mem[reg_address];
    end
  end
  else // normal operation
  begin
    if (md_put_reg_data_out) // read enable
    begin
      case (reg_address)
      5'h0:    register_bus_out = #1 {control_bit15, control_bit14_10, control_bit9, control_bit8_0};
      5'h1:    register_bus_out = #1 {status_bit15_9, status_bit8, status_bit7, status_bit6_0};
      5'h2:    register_bus_out = #1 phy_id1;
      5'h3:    register_bus_out = #1 phy_id2;
      default: register_bus_out = #1 16'hDEAD;
      endcase
    end
  end
end

// Self clear control signals
reg    self_clear_d0;
reg    self_clear_d1;
reg    self_clear_d2;
reg    self_clear_d3;
// Self clearing control
always@(posedge mdc_i or negedge m_rst_n_i)
begin
  if (!m_rst_n_i)
  begin
    self_clear_d0    <= #1 0;
    self_clear_d1    <= #1 0;
    self_clear_d2    <= #1 0;
    self_clear_d3    <= #1 0;
  end
  else
  begin
    self_clear_d0    <= #1 md_put_reg_data_in;
    self_clear_d1    <= #1 self_clear_d0;
    self_clear_d2    <= #1 self_clear_d1;
    self_clear_d3    <= #1 self_clear_d2;
  end
end

// Writing to a selected register
always@(posedge mdc_i or negedge m_rst_n_i)
begin
  if ((!m_rst_n_i) || (control_bit15))
  begin
    if (!registers_addr_data_test_operation) // normal operation
    begin
      control_bit15    <= #1 0;
      control_bit14_10 <= #1 {1'b0, (`LED_CFG1 || `LED_CFG2), `LED_CFG1, 2'b0};
      control_bit9     <= #1 0;
      control_bit8_0   <= #1 {`LED_CFG3, 8'b0};
    end
  end
  else
  begin
    if (registers_addr_data_test_operation) // test operation
    begin
      if (md_put_reg_data_in)
      begin
        data_mem[reg_address] <= #1 register_bus_in[15:0];
      end
    end
    else // normal operation
    begin
      // bits that are normaly written
      if (md_put_reg_data_in)
      begin
        case (reg_address)
        5'h0: 
        begin
          control_bit14_10 <= #1 register_bus_in[14:10];
          control_bit8_0   <= #1 register_bus_in[8:0];
        end
        default:
        begin
        end
        endcase
      end
      // self cleared bits written
      if ((md_put_reg_data_in) && (reg_address == 5'h0))
      begin
        control_bit15 <= #1 register_bus_in[15];
        control_bit9  <= #1 register_bus_in[9];
      end
      else if (self_clear_d3) // self cleared bits cleared
      begin
        control_bit15 <= #1 1'b0;
        control_bit9  <= #1 1'b0;
      end
    end
  end
end

//////////////////////////////////////////////////////////////////////
//
// PHY <-> MAC control (RX and TX clocks are at the begining)
//
//////////////////////////////////////////////////////////////////////

// CARRIER SENSE & COLLISION

// MAC common signals
reg             mcoll_o;
reg             mcrs_o;
// Internal signals controling Carrier sense & Collision
  // MAC common signals generated when appropriate transfer
reg             mcrs_rx;
reg             mcrs_tx;
  // delayed mtxen_i signal for generating delayed tx carrier sense
reg             mtxen_d;
  // collision signal set or rest within task for controling collision
reg             task_mcoll;
  // carrier sense signal set or rest within task for controling carrier sense
reg             task_mcrs;
reg             task_mcrs_lost;
  // do not generate collision in half duplex - not normal operation
reg             no_collision_in_half_duplex;
  // generate collision in full-duplex mode also - not normal operation
reg             collision_in_full_duplex;
  // do not generate carrier sense in half duplex mode - not normal operation
reg             no_carrier_sense_in_tx_half_duplex;
reg             no_carrier_sense_in_rx_half_duplex;
  // generate carrier sense during TX in full-duplex mode also - not normal operation
reg             carrier_sense_in_tx_full_duplex;
  // do not generate carrier sense during RX in full-duplex mode - not normal operation
reg             no_carrier_sense_in_rx_full_duplex;
  // on RX: delay after carrier sense signal; on TX: carrier sense delayed (delay is one clock period)
reg             real_carrier_sense;

initial
begin
  mcrs_rx = 0;
  mcrs_tx = 0;
  task_mcoll = 0;
  task_mcrs = 0;
  task_mcrs_lost = 0;
  no_collision_in_half_duplex = 0;
  collision_in_full_duplex = 0;
  no_carrier_sense_in_tx_half_duplex = 0;
  no_carrier_sense_in_rx_half_duplex = 0;
  carrier_sense_in_tx_full_duplex = 0;
  no_carrier_sense_in_rx_full_duplex = 0;
  real_carrier_sense = 0;
end

// Collision
always@(m_rst_n_i or control_bit8_0 or collision_in_full_duplex or 
        mcrs_rx or mcrs_tx or task_mcoll or no_collision_in_half_duplex
        )
begin
  if (!m_rst_n_i)
    mcoll_o = 0;
  else
  begin
    if (control_bit8_0[8]) // full duplex
    begin
      if (collision_in_full_duplex) // collision is usually not asserted in full duplex
      begin
        mcoll_o = ((mcrs_rx && mcrs_tx) || task_mcoll);
        `ifdef VERBOSE
        if (mcrs_rx && mcrs_tx)
          $fdisplay(phy_log, "   (%0t)(%m) Collision set in FullDuplex!", $time);
        if (task_mcoll)
          $fdisplay(phy_log, "   (%0t)(%m) Collision set in FullDuplex from TASK!", $time);
        `endif
      end
      else
      begin
        mcoll_o = task_mcoll;
        `ifdef VERBOSE
        if (task_mcoll)
          $fdisplay(phy_log, "   (%0t)(%m) Collision set in FullDuplex from TASK!", $time);
        `endif
      end
    end
    else // half duplex
    begin
      mcoll_o = ((mcrs_rx && mcrs_tx && !no_collision_in_half_duplex) || 
                  task_mcoll);
      `ifdef VERBOSE
      if (mcrs_rx && mcrs_tx)
        $fdisplay(phy_log, "   (%0t)(%m) Collision set in HalfDuplex!", $time);
      if (task_mcoll)
        $fdisplay(phy_log, "   (%0t)(%m) Collision set in HalfDuplex from TASK!", $time);
      `endif
    end
  end
end

// Carrier sense
always@(m_rst_n_i or control_bit8_0 or carrier_sense_in_tx_full_duplex or
        no_carrier_sense_in_rx_full_duplex or
        no_carrier_sense_in_tx_half_duplex or 
        no_carrier_sense_in_rx_half_duplex or 
        mcrs_rx or mcrs_tx or task_mcrs or task_mcrs_lost
        )
begin
  if (!m_rst_n_i)
    mcrs_o = 0;
  else
  begin
    if (control_bit8_0[8]) // full duplex
    begin
      if (carrier_sense_in_tx_full_duplex) // carrier sense is usually not asserted during TX in full duplex
        mcrs_o = ((mcrs_rx && !no_carrier_sense_in_rx_full_duplex) || 
                   mcrs_tx || task_mcrs) && !task_mcrs_lost;
      else
        mcrs_o = ((mcrs_rx && !no_carrier_sense_in_rx_full_duplex) || 
                   task_mcrs) && !task_mcrs_lost;
    end
    else // half duplex
    begin
      mcrs_o = ((mcrs_rx && !no_carrier_sense_in_rx_half_duplex) || 
                (mcrs_tx && !no_carrier_sense_in_tx_half_duplex) || 
                 task_mcrs) && !task_mcrs_lost;
    end
  end
end

// MAC TX CONTROL (RECEIVING AT PHY)

// storage memory for TX data received from MAC
reg     [7:0]  tx_mem [0:4194303]; // 4194304 locations (22 address lines) of 8-bit data width
reg    [31:0]  tx_mem_addr_in; // address for storing to TX memory
reg     [7:0]  tx_mem_data_in; // data for storing to TX memory
reg    [31:0]  tx_cnt; // counts nibbles

// control data of a TX packet for upper layer of testbench
reg            tx_preamble_ok;
reg            tx_sfd_ok;
// if there is a drible nibble, then tx packet is not byte aligned!
reg            tx_byte_aligned_ok;
// complete length of TX packet (Bytes) received (without preamble and SFD)
reg    [31:0]  tx_len;
// complete length of TX packet (Bytes) received (without preamble and SFD) untill MTxErr signal was set first
reg    [31:0]  tx_len_err;

// TX control
always@(posedge mtx_clk_o)
begin
  // storing data and basic checking of frame
  if (!m_rst_n_i)
  begin
    tx_cnt <= 0;
    tx_preamble_ok <= 0;
    tx_sfd_ok <= 0;
    tx_len <= 0;
    tx_len_err <= 0;
  end
  else
  begin
    if (!mtxen_i)
    begin
      tx_cnt <= 0;
    end
    else
    begin
      // tx nibble counter
      tx_cnt <= tx_cnt + 1;
      // set initial values and check first preamble nibble
      if (tx_cnt == 0)
      begin
        `ifdef VERBOSE
        $fdisplay(phy_log, "   (%0t)(%m) TX frame started with tx_en set!", $time);
        `endif
        if (mtxd_i == 4'h5)
          tx_preamble_ok <= 1;
        else
          tx_preamble_ok <= 0;
        tx_sfd_ok <= 0;
        tx_byte_aligned_ok <= 0;
        tx_len <= 0;
        tx_len_err <= 0;
//        tx_mem_addr_in <= 0;
      end

      // check preamble
      if ((tx_cnt > 0) && (tx_cnt <= 13))
      begin
        if ((tx_preamble_ok != 1) || (mtxd_i != 4'h5))
          tx_preamble_ok <= 0;
      end
      // check SFD
      if (tx_cnt == 14)
      begin
        `ifdef VERBOSE
        if (tx_preamble_ok == 1)
          $fdisplay(phy_log, "   (%0t)(%m) TX frame preamble OK!", $time);
        else
          $fdisplay(phy_log, "*E (%0t)(%m) TX frame preamble NOT OK!", $time);
        `endif
        if (mtxd_i == 4'h5)
          tx_sfd_ok <= 1;
        else
          tx_sfd_ok <= 0;
      end
      if (tx_cnt == 15)
      begin
        if ((tx_sfd_ok != 1) || (mtxd_i != 4'hD))
          tx_sfd_ok <= 0;
      end

      // control for storing addresses, type/length, data and FCS to TX memory
      if (tx_cnt > 15)
      begin
        if (tx_cnt == 16)
        begin
          `ifdef VERBOSE
          if (tx_sfd_ok == 1)
            $fdisplay(phy_log, "   (%0t)(%m) TX frame SFD OK!", $time);
          else
            $fdisplay(phy_log, "*E (%0t)(%m) TX frame SFD NOT OK!", $time);
          `endif
        end

        if (tx_cnt[0] == 0)
        begin
          tx_mem_data_in[3:0] <= mtxd_i; // storing LSB nibble
          tx_byte_aligned_ok <= 0; // if transfer will stop after this, then there was drible nibble
        end
        else
        begin
          tx_mem[tx_mem_addr_in[21:0]] <= {mtxd_i, tx_mem_data_in[3:0]}; // storing data into tx memory
          tx_len <= tx_len + 1; // enlarge byte length counter
          tx_byte_aligned_ok <= 1; // if transfer will stop after this, then transfer is byte alligned
          tx_mem_addr_in <= tx_mem_addr_in + 1'b1;
        end

        if (mtxerr_i)
          tx_len_err <= tx_len;
      end
    end
  end

  // generating CARRIER SENSE for TX with or without delay
  if (!m_rst_n_i)
  begin
    mcrs_tx <= 0;
    mtxen_d <= 0;
  end
  else
  begin
    if (!real_carrier_sense)
    begin
      mtxen_d <= mtxen_i;
      mcrs_tx <= mtxen_i;
    end
    else
    begin
      mtxen_d <= mtxen_i;
      mcrs_tx <= mtxen_d;
    end
  end
end

`ifdef VERBOSE
reg             frame_started;

initial
begin
  frame_started = 0;
end
always@(posedge mtxen_i)
begin
  frame_started <= 1;
end
always@(negedge mtxen_i)
begin
  if (frame_started)
  begin
    $fdisplay(phy_log, "   (%0t)(%m) TX frame ended with tx_en reset!", $time);
    frame_started <= 0;
  end
end

always@(posedge mrxerr_o)
begin
  $fdisplay(phy_log, "   (%0t)(%m) RX frame ERROR signal was set!", $time);
end
`endif

//////////////////////////////////////////////////////////////////////
// 
// Tasks for PHY <-> MAC transactions
// 
//////////////////////////////////////////////////////////////////////

initial
begin
  tx_mem_addr_in = 0;
end

// setting the address of tx_mem, to set the starting point of tx packet
task set_tx_mem_addr;
  input [31:0] tx_mem_address;
begin
  #1 tx_mem_addr_in = tx_mem_address;
end
endtask // set_tx_mem_addr

// storage memory for RX data to be transmited to MAC
reg     [7:0]  rx_mem [0:4194303]; // 4194304 locations (22 address lines) of 8-bit data width

// MAC RX signals
reg     [3:0]   mrxd_o;
reg             mrxdv_o;
reg             mrxerr_o;

initial
begin
  mrxd_o = 0;
  mrxdv_o = 0;
  mrxerr_o = 0;
  mcrs_rx = 0;
end

task send_rx_packet;
  input  [(8*8)-1:0] preamble_data; // preamble data to be sent - correct is 64'h0055_5555_5555_5555
  input   [3:0] preamble_len; // length of preamble in bytes - max is 4'h8, correct is 4'h7 
  input   [7:0] sfd_data; // SFD data to be sent - correct is 8'hD5
  input  [31:0] start_addr; // start address
  input  [31:0] len; // length of frame in Bytes (without preamble and SFD)
  input         plus_drible_nibble; // if length is longer for one nibble
  integer       rx_cnt;
  reg    [31:0] rx_mem_addr_in; // address for reading from RX memory       
  reg     [7:0] rx_mem_data_out; // data for reading from RX memory
begin
      @(posedge mrx_clk_o);
      // generating CARRIER SENSE for TX with or without delay
      if (real_carrier_sense)
        #1 mcrs_rx = 1;
      else
        #1 mcrs_rx = 0;
      @(posedge mrx_clk_o);
      #1 mcrs_rx = 1;
      #1 mrxdv_o = 1;
      `ifdef VERBOSE
      $fdisplay(phy_log, "   (%0t)(%m) RX frame started with rx_dv set!", $time);
      `endif
      // set initial rx memory address
      rx_mem_addr_in = start_addr;
    
      // send preamble
      for (rx_cnt = 0; (rx_cnt < (preamble_len << 1)) && (rx_cnt < 16); rx_cnt = rx_cnt + 1)
      begin
        #1 mrxd_o = preamble_data[3:0];
        #1 preamble_data = preamble_data >> 4;
        @(posedge mrx_clk_o);
      end
    
      // send SFD
      for (rx_cnt = 0; rx_cnt < 2; rx_cnt = rx_cnt + 1)
      begin
        #1 mrxd_o = sfd_data[3:0];
        #1 sfd_data = sfd_data >> 4;
        @(posedge mrx_clk_o);
      end
      `ifdef VERBOSE
      $fdisplay(phy_log, "   (%0t)(%m) RX frame preamble and SFD sent!", $time);
      `endif
      // send packet's addresses, type/length, data and FCS
      for (rx_cnt = 0; rx_cnt < len; rx_cnt = rx_cnt + 1)
      begin
        #1;
        rx_mem_data_out = rx_mem[rx_mem_addr_in[21:0]];
        mrxd_o = rx_mem_data_out[3:0];
        @(posedge mrx_clk_o);
        #1;
        mrxd_o = rx_mem_data_out[7:4];
        rx_mem_addr_in = rx_mem_addr_in + 1;
        @(posedge mrx_clk_o);
        #1;
      end
      if (plus_drible_nibble)
      begin
        rx_mem_data_out = rx_mem[rx_mem_addr_in[21:0]];
        mrxd_o = rx_mem_data_out[3:0];
        @(posedge mrx_clk_o);
      end
      `ifdef VERBOSE
      $fdisplay(phy_log, "   (%0t)(%m) RX frame addresses, type/length, data and FCS sent!", $time);
      `endif
      #1 mcrs_rx = 0;
      #1 mrxdv_o = 0;
      @(posedge mrx_clk_o);
      `ifdef VERBOSE
      $fdisplay(phy_log, "   (%0t)(%m) RX frame ended with rx_dv reset!", $time);
      `endif
end
endtask // send_rx_packet



task GetDataOnMRxD;
  input [15:0] Len;
  input [31:0] TransferType;
  integer tt;

  begin
    @ (posedge mrx_clk_o);
    #1 mrxdv_o=1'b1;

    for(tt=0; tt<15; tt=tt+1)
    begin
      mrxd_o=4'h5;              // preamble
      @ (posedge mrx_clk_o);
      #1;
    end

    mrxd_o=4'hd;                // SFD

    for(tt=1; tt<(Len+1); tt=tt+1)
    begin
      @ (posedge mrx_clk_o);
      #1;
      if(TransferType == `UNICAST_XFR && tt == 1)
        mrxd_o = 4'h0;   // Unicast transfer
      else if(TransferType == `BROADCAST_XFR && tt < 7)
        mrxd_o = 4'hf;
      else
        mrxd_o = tt[3:0]; // Multicast transfer

      @ (posedge mrx_clk_o);
      #1;

      if(TransferType == `BROADCAST_XFR && tt == 6)
        mrxd_o = 4'he;
      else

      if(TransferType == `BROADCAST_XFR && tt < 7)
        mrxd_o = 4'hf;
      else
        mrxd_o = tt[7:4];
    end

    @ (posedge mrx_clk_o);
    #1;
    mrxdv_o = 1'b0;
  end
endtask // GetDataOnMRxD


//////////////////////////////////////////////////////////////////////
//
// Tastks for controling PHY statuses and rx error
//
//////////////////////////////////////////////////////////////////////

// Link control tasks
task link_up_down;
  input   test_op;
begin
  #1 status_bit6_0[2] = test_op; // 1 - link up; 0 - link down
end
endtask

// RX error
task rx_err;
  input   test_op;
begin
  #1 mrxerr_o = test_op; // 1 - RX error set; 0 - RX error reset
end
endtask

//////////////////////////////////////////////////////////////////////
//
// Tastks for controling PHY carrier sense and collision
//
//////////////////////////////////////////////////////////////////////

// Collision
task collision;
  input   test_op;
begin
  #1 task_mcoll = test_op;
end
endtask

// Carrier sense
task carrier_sense;
  input   test_op;
begin
  #1 task_mcrs = test_op;
end
endtask

// Carrier sense lost - higher priority than Carrier sense task
task carrier_sense_lost;
  input   test_op;
begin
  #1 task_mcrs_lost = test_op;
end
endtask

// No collision detection in half duplex
task no_collision_hd_detect;
  input   test_op;
begin
  #1 no_collision_in_half_duplex = test_op;
end
endtask

// Collision detection in full duplex also
task collision_fd_detect;
  input   test_op;
begin
  #1 collision_in_full_duplex = test_op;
end
endtask

// No carrier sense detection at TX in half duplex
task no_carrier_sense_tx_hd_detect;
  input   test_op;
begin
  #1 no_carrier_sense_in_tx_half_duplex = test_op;
end
endtask

// No carrier sense detection at RX in half duplex
task no_carrier_sense_rx_hd_detect;
  input   test_op;
begin
  #1 no_carrier_sense_in_rx_half_duplex = test_op;
end
endtask

// Carrier sense detection at TX in full duplex also
task carrier_sense_tx_fd_detect;
  input   test_op;
begin
  #1 carrier_sense_in_tx_full_duplex = test_op;
end
endtask

// No carrier sense detection at RX in full duplex
task no_carrier_sense_rx_fd_detect;
  input   test_op;
begin
  #1 no_carrier_sense_in_rx_full_duplex = test_op;
end
endtask

// Set real delay on carrier sense signal (and therefor collision signal)
task carrier_sense_real_delay;
  input   test_op;
begin
  #1 real_carrier_sense = test_op;
end
endtask

//////////////////////////////////////////////////////////////////////
//
// Tastks for controling PHY management test operation
//
//////////////////////////////////////////////////////////////////////

// Set registers to test operation and respond to all phy addresses
task test_regs;
  input   test_op;
begin
  #1 registers_addr_data_test_operation = test_op;
  respond_to_all_phy_addr = test_op;
end
endtask

// Clears data memory for testing the MII
task clear_test_regs;
  integer i;
begin
  for (i = 0; i < 32; i = i + 1)
  begin
    #1 data_mem[i] = 16'h0;
  end
end
endtask

// Accept frames with preamble suppresed
task preamble_suppresed;
  input   test_op;
begin
  #1 no_preamble = test_op;
  md_transfer_cnt_reset = 1'b1;
  @(posedge mdc_i);
  #1 md_transfer_cnt_reset = 1'b0;
end
endtask





endmodule

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  tb_cop.v                                                    ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/??????/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Igor Mohor (igorM@opencores.org)                      ////
////                                                              ////
////  All additional information is avaliable in the Readme.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2001, 2002 Authors                             ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: tb_cop.v,v $
// Revision 1.1  2002/07/19 13:57:53  mohor
// Testing environment also includes traffic cop, memory interface and host
// interface.
//
//
//
//



`include "timescale.v"

module tb_cop();


parameter Tp = 1;


reg         wb_clk_o;
reg         wb_rst_o;


// WISHBONE master 1 (input)
reg  [31:0] m1_wb_adr_o;
reg   [3:0] m1_wb_sel_o;
reg         m1_wb_we_o;
wire [31:0] m1_wb_dat_i;
reg  [31:0] m1_wb_dat_o;
reg         m1_wb_cyc_o;
reg         m1_wb_stb_o;
wire        m1_wb_ack_i;
wire        m1_wb_err_i;

// WISHBONE master 2 (input)
reg  [31:0] m2_wb_adr_o;
reg   [3:0] m2_wb_sel_o;
reg         m2_wb_we_o;
wire [31:0] m2_wb_dat_i;
reg  [31:0] m2_wb_dat_o;
reg         m2_wb_cyc_o;
reg         m2_wb_stb_o;
wire        m2_wb_ack_i;
wire        m2_wb_err_i;

// WISHBONE slave 1 (output)
wire [31:0] s1_wb_adr_i;
wire  [3:0] s1_wb_sel_i;
wire        s1_wb_we_i;
reg  [31:0] s1_wb_dat_o;
wire [31:0] s1_wb_dat_i;
wire        s1_wb_cyc_i;
wire        s1_wb_stb_i;
reg         s1_wb_ack_o;
reg         s1_wb_err_o;

// WISHBONE slave 2 (output)
wire [31:0] s2_wb_adr_i;
wire  [3:0] s2_wb_sel_i;
wire        s2_wb_we_i;
reg  [31:0] s2_wb_dat_o;
wire [31:0] s2_wb_dat_i;
wire        s2_wb_cyc_i;
wire        s2_wb_stb_i;
reg         s2_wb_ack_o;
reg         s2_wb_err_o;


reg         Wishbone1Busy;
reg         Wishbone2Busy;

reg         StartTB;

eth_cop i_eth_cop
(
  // WISHBONE common
  .wb_clk_i(wb_clk_o), .wb_rst_i(wb_rst_o), 

  // WISHBONE MASTER 1
  .m1_wb_adr_i(m1_wb_adr_o), .m1_wb_sel_i(m1_wb_sel_o), .m1_wb_we_i (m1_wb_we_o),  .m1_wb_dat_o(m1_wb_dat_i), 
  .m1_wb_dat_i(m1_wb_dat_o), .m1_wb_cyc_i(m1_wb_cyc_o), .m1_wb_stb_i(m1_wb_stb_o), .m1_wb_ack_o(m1_wb_ack_i), 
  .m1_wb_err_o(m1_wb_err_i), 

  // WISHBONE MASTER 2
  .m2_wb_adr_i(m2_wb_adr_o), .m2_wb_sel_i(m2_wb_sel_o), .m2_wb_we_i (m2_wb_we_o),  .m2_wb_dat_o(m2_wb_dat_i), 
  .m2_wb_dat_i(m2_wb_dat_o), .m2_wb_cyc_i(m2_wb_cyc_o), .m2_wb_stb_i(m2_wb_stb_o), .m2_wb_ack_o(m2_wb_ack_i), 
  .m2_wb_err_o(m2_wb_err_i), 

  // WISHBONE slave 1
 	.s1_wb_adr_o(s1_wb_adr_i), .s1_wb_sel_o(s1_wb_sel_i), .s1_wb_we_o (s1_wb_we_i),  .s1_wb_cyc_o(s1_wb_cyc_i), 
 	.s1_wb_stb_o(s1_wb_stb_i), .s1_wb_ack_i(s1_wb_ack_o), .s1_wb_err_i(s1_wb_err_o), .s1_wb_dat_i(s1_wb_dat_o),
 	.s1_wb_dat_o(s1_wb_dat_i), 
 	
  // WISHBONE slave 2
 	.s2_wb_adr_o(s2_wb_adr_i), .s2_wb_sel_o(s2_wb_sel_i), .s2_wb_we_o (s2_wb_we_i),  .s2_wb_cyc_o(s2_wb_cyc_i), 
 	.s2_wb_stb_o(s2_wb_stb_i), .s2_wb_ack_i(s2_wb_ack_o), .s2_wb_err_i(s2_wb_err_o), .s2_wb_dat_i(s2_wb_dat_o),
 	.s2_wb_dat_o(s2_wb_dat_i)
);

/*
s1_wb_adr_i   m_wb_adr_i
s1_wb_sel_i   m_wb_sel_i
s1_wb_we_i    m_wb_we_i 
s1_wb_dat_o   m_wb_dat_o
s1_wb_dat_i   m_wb_dat_i
s1_wb_cyc_i   m_wb_cyc_i
s1_wb_stb_i   m_wb_stb_i
s1_wb_ack_o   m_wb_ack_o
s1_wb_err_o   m_wb_err_o
*/



initial
begin
  s1_wb_ack_o = 0;
  s1_wb_err_o = 0;
  s1_wb_dat_o = 0;
  s2_wb_ack_o = 0;
  s2_wb_err_o = 0;
  s2_wb_dat_o = 0;

// WISHBONE master 1 (input)
  m1_wb_adr_o = 0;
  m1_wb_sel_o = 0;
  m1_wb_we_o  = 0;
  m1_wb_dat_o = 0;
  m1_wb_cyc_o = 0;
  m1_wb_stb_o = 0;

  // WISHBONE master 2 (input)
  m2_wb_adr_o = 0;
  m2_wb_sel_o = 0;
  m2_wb_we_o  = 0;
  m2_wb_dat_o = 0;
  m2_wb_cyc_o = 0;
  m2_wb_stb_o = 0;

  Wishbone1Busy = 1'b0;
  Wishbone2Busy = 1'b0;
end


// Reset pulse
initial
begin
  wb_rst_o =  1'b1;
  #100 wb_rst_o =  1'b0;
  #100 StartTB  =  1'b1;
end



// Generating WB_CLK_I clock
always
begin
  wb_clk_o = 0;
  forever #15 wb_clk_o = ~wb_clk_o;  // 2*15 ns -> 33.3 MHz    
end


integer seed_wb1, seed_wb2;
integer jj, kk;
initial
begin
  seed_wb1 = 0;
  seed_wb2 = 5;
end




initial
begin
  wait(StartTB);  // Start of testbench
  
  fork
  
  begin
    for(jj=0; jj<100; jj=jj+1)
    begin
      if(seed_wb1[3:0]<4)
        begin
          $display("(%0t) m1 write to eth start  (Data = Addr = 0x%0x)", $time, {21'h1a0000, seed_wb1[10:0]}); //0xd0000xxx
          Wishbone1Write({21'h1a0000, seed_wb1[10:0]}, {21'h1a0000, seed_wb1[10:0]});
        end
      else
      if(seed_wb1[3:0]<=7 && seed_wb1[3:0]>=4)
        begin
          $display("(%0t) m1 read to eth start  (Addr = 0x%0x)", $time, {21'h1a0000, seed_wb1[10:0]});
          Wishbone1Read({21'h1a0000, seed_wb1[10:0]});
        end
      else
      if(seed_wb1[3:0]<=11 && seed_wb1[3:0]>=8)
        begin
          $display("(%0t) m1 write to memory start  (Data = Addr = 0x%0x)", $time, {21'h000040, seed_wb1[10:0]}); //0x00020xxx
          Wishbone1Write({21'h1a0000, seed_wb1[10:0]}, {21'h000040, seed_wb1[10:0]});
        end
      else
      if(seed_wb1[3:0]>=12)
        begin
          $display("(%0t) m1 read to memory start  (Addr = 0x%0x)", $time, {21'h000040, seed_wb1[10:0]});
          Wishbone1Read({21'h000040, seed_wb1[10:0]});
        end
      
      #1 seed_wb1 = $random(seed_wb1);
      $display("seed_wb1[4:0] = 0x%0x", seed_wb1[4:0]);
      repeat(seed_wb1[4:0])   @ (posedge wb_clk_o);
    end
  end
  

  begin
    for(kk=0; kk<100; kk=kk+1)
    begin
      if(seed_wb2[3:0]<4)
        begin
          $display("(%0t) m2 write to eth start  (Data = Addr = 0x%0x)", $time, {21'h1a0000, seed_wb2[10:0]}); //0xd0000xxx
          Wishbone2Write({21'h1a0000, seed_wb2[10:0]}, {21'h1a0000, seed_wb2[10:0]});
        end
      else
      if(seed_wb2[3:0]<=7 && seed_wb2[3:0]>=4)
        begin
          $display("(%0t) m2 read to eth start  (Addr = 0x%0x)", $time, {21'h1a0000, seed_wb2[10:0]});
          Wishbone2Read({21'h1a0000, seed_wb2[10:0]});
        end
      else
      if(seed_wb2[3:0]<=11 && seed_wb2[3:0]>=8)
        begin
          $display("(%0t) m2 write to memory start  (Data = Addr = 0x%0x)", $time, {21'h000040, seed_wb2[10:0]}); //0x00020xxx
          Wishbone2Write({21'h1a0000, seed_wb2[10:0]}, {21'h000040, seed_wb2[10:0]});
        end
      else
      if(seed_wb2[3:0]>=12)
        begin
          $display("(%0t) m2 read to memory start  (Addr = 0x%0x)", $time, {21'h000040, seed_wb2[10:0]});
          Wishbone2Read({21'h000040, seed_wb2[10:0]});
        end
      
      #1 seed_wb2 = $random(seed_wb2);
      $display("seed_wb2[4:0] = 0x%0x", seed_wb2[4:0]);
      repeat(seed_wb2[4:0])   @ (posedge wb_clk_o);
    end
  end
  



  join    

  #10000 $stop;
end







task Wishbone1Write;
  input [31:0] Data;
  input [31:0] Address;
  integer ii;

  begin
    wait (~Wishbone1Busy);
    Wishbone1Busy = 1;
    @ (posedge wb_clk_o);
    #1;
    m1_wb_adr_o = Address;
    m1_wb_dat_o = Data;
    m1_wb_we_o  = 1'b1;
    m1_wb_cyc_o = 1'b1;
    m1_wb_stb_o = 1'b1;
    m1_wb_sel_o = 4'hf;

    wait(m1_wb_ack_i | m1_wb_err_i);   // waiting for acknowledge response

    // Writing information about the access to the screen
    @ (posedge wb_clk_o);
    if(m1_wb_ack_i)
      $display("(%0t) Master1 write cycle finished ok(Data: 0x%0x, Addr: 0x%0x)", $time, Data, Address);
    else
      $display("(%0t) Master1 write cycle finished with error(Data: 0x%0x, Addr: 0x%0x)", $time, Data, Address);

    #1;
    m1_wb_adr_o = 32'hx;
    m1_wb_dat_o = 32'hx;
    m1_wb_we_o  = 1'bx;
    m1_wb_cyc_o = 1'b0;
    m1_wb_stb_o = 1'b0;
    m1_wb_sel_o = 4'hx;
    #5 Wishbone1Busy = 0;
  end
endtask


task Wishbone1Read;
  input [31:0] Address;
  reg   [31:0] Data;
  integer ii;

  begin
    wait (~Wishbone1Busy);
    Wishbone1Busy = 1;
    @ (posedge wb_clk_o);
    #1;
    m1_wb_adr_o = Address;
    m1_wb_we_o  = 1'b0;
    m1_wb_cyc_o = 1'b1;
    m1_wb_stb_o = 1'b1;
    m1_wb_sel_o = 4'hf;

    wait(m1_wb_ack_i | m1_wb_err_i);   // waiting for acknowledge response
    Data = m1_wb_dat_i;

    // Writing information about the access to the screen
    @ (posedge wb_clk_o);
    if(m1_wb_ack_i)
      $display("(%0t) Master1 read cycle finished ok(Data: 0x%0x, Addr: 0x%0x)", $time, Data, Address);
    else
      $display("(%0t) Master1 read cycle finished with error(Data: 0x%0x, Addr: 0x%0x)", $time, Data, Address);

    #1;
    m1_wb_adr_o = 32'hx;
    m1_wb_dat_o = 32'hx;
    m1_wb_we_o  = 1'bx;
    m1_wb_cyc_o = 1'b0;
    m1_wb_stb_o = 1'b0;
    m1_wb_sel_o = 4'hx;
    #5 Wishbone1Busy = 0;
  end
endtask



task Wishbone2Write;
  input [31:0] Data;
  input [31:0] Address;
  integer ii;

  begin
    wait (~Wishbone2Busy);
    Wishbone2Busy = 1;
    @ (posedge wb_clk_o);
    #1;
    m2_wb_adr_o = Address;
    m2_wb_dat_o = Data;
    m2_wb_we_o  = 1'b1;
    m2_wb_cyc_o = 1'b1;
    m2_wb_stb_o = 1'b1;
    m2_wb_sel_o = 4'hf;

    wait(m2_wb_ack_i | m2_wb_err_i);   // waiting for acknowledge response

    // Writing information about the access to the screen
    @ (posedge wb_clk_o);
    if(m2_wb_ack_i)
      $display("(%0t) Master2 write cycle finished ok(Data: 0x%0x, Addr: 0x%0x)", $time, Data, Address);
    else
      $display("(%0t) Master2 write cycle finished with error(Data: 0x%0x, Addr: 0x%0x)", $time, Data, Address);

    #1;
    m2_wb_adr_o = 32'hx;
    m2_wb_dat_o = 32'hx;
    m2_wb_we_o  = 1'bx;
    m2_wb_cyc_o = 1'b0;
    m2_wb_stb_o = 1'b0;
    m2_wb_sel_o = 4'hx;
    #5 Wishbone2Busy = 0;
  end
endtask


task Wishbone2Read;
  input [31:0] Address;
  reg   [31:0] Data;
  integer ii;

  begin
    wait (~Wishbone2Busy);
    Wishbone2Busy = 1;
    @ (posedge wb_clk_o);
    #1;
    m2_wb_adr_o = Address;
    m2_wb_we_o  = 1'b0;
    m2_wb_cyc_o = 1'b1;
    m2_wb_stb_o = 1'b1;
    m2_wb_sel_o = 4'hf;

    wait(m2_wb_ack_i | m2_wb_err_i);   // waiting for acknowledge response
    Data = m2_wb_dat_i;

    // Writing information about the access to the screen
    @ (posedge wb_clk_o);
    if(m2_wb_ack_i)
      $display("(%0t) Master2 read cycle finished ok(Data: 0x%0x, Addr: 0x%0x)", $time, Data, Address);
    else
      $display("(%0t) Master2 read cycle finished with error(Data: 0x%0x, Addr: 0x%0x)", $time, Data, Address);

    #1;
    m2_wb_adr_o = 32'hx;
    m2_wb_dat_o = 32'hx;
    m2_wb_we_o  = 1'bx;
    m2_wb_cyc_o = 1'b0;
    m2_wb_stb_o = 1'b0;
    m2_wb_sel_o = 4'hx;
    #5 Wishbone2Busy = 0;
  end
endtask








integer seed_ack_s1, seed_ack_s2;
integer cnt_s1, cnt_s2;
initial
begin
  seed_ack_s1 = 1;
  cnt_s1      = 1;
  seed_ack_s2 = 2;
  cnt_s2      = 32'h88888888;
end

// Response from slave 1
always @ (posedge wb_clk_o or posedge wb_rst_o)
begin
  #1 seed_ack_s1 = $random(seed_ack_s1);
  
  wait(s1_wb_cyc_i & s1_wb_stb_i);
  
  s1_wb_dat_o = cnt_s1;
  repeat(seed_ack_s1[3:0])   @ (posedge wb_clk_o);
  
  #Tp s1_wb_ack_o = 1'b1;

  if(~s1_wb_we_i)
    cnt_s1=cnt_s1+1;

  @ (posedge wb_clk_o);
  #Tp s1_wb_ack_o = 1'b0;
end

// Response from slave 2
always @ (posedge wb_clk_o or posedge wb_rst_o)
begin
  #1 seed_ack_s2 = $random(seed_ack_s2);
  
  wait(s2_wb_cyc_i & s2_wb_stb_i);
  
  s2_wb_dat_o = cnt_s2;
  repeat(seed_ack_s2[3:0])   @ (posedge wb_clk_o);
  
  #Tp s2_wb_ack_o = 1'b1;

  if(~s1_wb_we_i)
    cnt_s2=cnt_s2+1;

  @ (posedge wb_clk_o);
  #Tp s2_wb_ack_o = 1'b0;
end

endmodule

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  tb_ethernet_with_cop.v                                      ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/ethmac/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Igor Mohor (igorM@opencores.org)                      ////
////                                                              ////
////  All additional information is avaliable in the Readme.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2001, 2002 Authors                             ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: tb_ethernet_with_cop.v,v $
// Revision 1.3  2002/10/18 17:03:34  tadejm
// Changed BIST scan signals.
//
// Revision 1.2  2002/10/11 13:29:28  mohor
// Bist signals added.
//
// Revision 1.1  2002/09/18 16:40:40  mohor
// Simple testbench that includes eth_cop, eth_host and eth_memory modules.
// This testbench is used for testing the whole environment. Use tb_ethernet
// testbench for testing just the ethernet MAC core (many tests).
//
//
//
//



`include "timescale.v"

module tb_ethernet_with_cop();


parameter Tp = 1;


reg           wb_clk_o;
reg           wb_rst_o;

reg           mtx_clk;
reg           mrx_clk;

wire   [3:0]  MTxD;
wire          MTxEn;
wire          MTxErr;

reg    [3:0]  MRxD;     // This goes to PHY
reg           MRxDV;    // This goes to PHY
reg           MRxErr;   // This goes to PHY
reg           MColl;    // This goes to PHY
reg           MCrs;     // This goes to PHY

wire          Mdi_I;
wire          Mdo_O;
wire          Mdo_OE;
wire          Mdc_O;

integer tx_log;
integer rx_log;

reg StartTB;

`ifdef ETH_XILINX_RAMB4
  reg gsr;
`endif


integer packet_ready_cnt, send_packet_cnt;


// Ethernet Slave Interface signals
wire [31:0] eth_sl_wb_adr_i, eth_sl_wb_dat_o, eth_sl_wb_dat_i;
wire  [3:0] eth_sl_wb_sel_i;
wire        eth_sl_wb_we_i, eth_sl_wb_cyc_i, eth_sl_wb_stb_i, eth_sl_wb_ack_o, eth_sl_wb_err_o;

// Memory Slave Interface signals
wire [31:0] mem_sl_wb_adr_i, mem_sl_wb_dat_o, mem_sl_wb_dat_i;
wire  [3:0] mem_sl_wb_sel_i;
wire        mem_sl_wb_we_i, mem_sl_wb_cyc_i, mem_sl_wb_stb_i, mem_sl_wb_ack_o, mem_sl_wb_err_o;

// Ethernet Master Interface signals
wire [31:0] eth_ma_wb_adr_o, eth_ma_wb_dat_i, eth_ma_wb_dat_o;
wire  [3:0] eth_ma_wb_sel_o;
wire        eth_ma_wb_we_o, eth_ma_wb_cyc_o, eth_ma_wb_stb_o, eth_ma_wb_ack_i, eth_ma_wb_err_i;

`ifdef ETH_WISHBONE_B3
wire  [2:0] eth_ma_wb_cti_o;
wire  [1:0] eth_ma_wb_bte_o;
`endif


// Host Master Interface signals
wire [31:0] host_ma_wb_adr_o, host_ma_wb_dat_i, host_ma_wb_dat_o;
wire  [3:0] host_ma_wb_sel_o;
wire        host_ma_wb_we_o, host_ma_wb_cyc_o, host_ma_wb_stb_o, host_ma_wb_ack_i, host_ma_wb_err_i;



eth_cop i_eth_cop
(
  // WISHBONE common
  .wb_clk_i(wb_clk_o), .wb_rst_i(wb_rst_o), 

  // WISHBONE MASTER 1  Ethernet Master Interface is connected here
  .m1_wb_adr_i(eth_ma_wb_adr_o),  .m1_wb_sel_i(eth_ma_wb_sel_o),  .m1_wb_we_i (eth_ma_wb_we_o), 
  .m1_wb_dat_o(eth_ma_wb_dat_i),  .m1_wb_dat_i(eth_ma_wb_dat_o),  .m1_wb_cyc_i(eth_ma_wb_cyc_o), 
  .m1_wb_stb_i(eth_ma_wb_stb_o),  .m1_wb_ack_o(eth_ma_wb_ack_i),  .m1_wb_err_o(eth_ma_wb_err_i), 

  // WISHBONE MASTER 2  Host Interface is connected here
  .m2_wb_adr_i(host_ma_wb_adr_o), .m2_wb_sel_i(host_ma_wb_sel_o), .m2_wb_we_i (host_ma_wb_we_o), 
  .m2_wb_dat_o(host_ma_wb_dat_i), .m2_wb_dat_i(host_ma_wb_dat_o), .m2_wb_cyc_i(host_ma_wb_cyc_o), 
  .m2_wb_stb_i(host_ma_wb_stb_o), .m2_wb_ack_o(host_ma_wb_ack_i), .m2_wb_err_o(host_ma_wb_err_i), 

  // WISHBONE slave 1   Ethernet Slave Interface is connected here
 	.s1_wb_adr_o(eth_sl_wb_adr_i),  .s1_wb_sel_o(eth_sl_wb_sel_i),  .s1_wb_we_o (eth_sl_wb_we_i), 
 	.s1_wb_cyc_o(eth_sl_wb_cyc_i),  .s1_wb_stb_o(eth_sl_wb_stb_i),  .s1_wb_ack_i(eth_sl_wb_ack_o), 
 	.s1_wb_err_i(eth_sl_wb_err_o),  .s1_wb_dat_i(eth_sl_wb_dat_o),  .s1_wb_dat_o(eth_sl_wb_dat_i), 

  // WISHBONE slave 2   Memory Interface is connected here
 	.s2_wb_adr_o(mem_sl_wb_adr_i),  .s2_wb_sel_o(mem_sl_wb_sel_i),  .s2_wb_we_o (mem_sl_wb_we_i), 
 	.s2_wb_cyc_o(mem_sl_wb_cyc_i),  .s2_wb_stb_o(mem_sl_wb_stb_i),  .s2_wb_ack_i(mem_sl_wb_ack_o), 
 	.s2_wb_err_i(mem_sl_wb_err_o),  .s2_wb_dat_i(mem_sl_wb_dat_o),  .s2_wb_dat_o(mem_sl_wb_dat_i)
);




// Connecting Ethernet top module
eth_top ethtop
(
  // WISHBONE common
  .wb_clk_i(wb_clk_o),              .wb_rst_i(wb_rst_o), 

  // WISHBONE slave
 	.wb_adr_i(eth_sl_wb_adr_i[11:2]), .wb_sel_i(eth_sl_wb_sel_i),   .wb_we_i(eth_sl_wb_we_i), 
 	.wb_cyc_i(eth_sl_wb_cyc_i),       .wb_stb_i(eth_sl_wb_stb_i),   .wb_ack_o(eth_sl_wb_ack_o), 
 	.wb_err_o(eth_sl_wb_err_o),       .wb_dat_i(eth_sl_wb_dat_i),   .wb_dat_o(eth_sl_wb_dat_o), 
 	
  // WISHBONE master
  .m_wb_adr_o(eth_ma_wb_adr_o),     .m_wb_sel_o(eth_ma_wb_sel_o), .m_wb_we_o(eth_ma_wb_we_o), 
  .m_wb_dat_i(eth_ma_wb_dat_i),     .m_wb_dat_o(eth_ma_wb_dat_o), .m_wb_cyc_o(eth_ma_wb_cyc_o), 
  .m_wb_stb_o(eth_ma_wb_stb_o),     .m_wb_ack_i(eth_ma_wb_ack_i), .m_wb_err_i(eth_ma_wb_err_i), 

`ifdef ETH_WISHBONE_B3
  .m_wb_cti_o(eth_ma_wb_cti_o),     .m_wb_bte_o(eth_ma_wb_bte_o), 
`endif

  //TX
  .mtx_clk_pad_i(mtx_clk), .mtxd_pad_o(MTxD), .mtxen_pad_o(MTxEn), .mtxerr_pad_o(MTxErr),

  //RX
  .mrx_clk_pad_i(mrx_clk), .mrxd_pad_i(MRxD), .mrxdv_pad_i(MRxDV), .mrxerr_pad_i(MRxErr), 
  .mcoll_pad_i(MColl),    .mcrs_pad_i(MCrs), 
  
  // MIIM
  .mdc_pad_o(Mdc_O), .md_pad_i(Mdi_I), .md_pad_o(Mdo_O), .md_padoe_o(Mdo_OE),
  
  .int_o()

  // Bist
`ifdef ETH_BIST
  ,
  .scanb_rst      (1'b0),
  .scanb_clk      (1'b0),
  .scanb_si       (1'b0),
  .scanb_so       (),
  .scanb_en       (1'b0)
`endif
  
);



// Connecting Memory Interface Module
eth_memory i_eth_memory
(
  // WISHBONE common
 	.wb_clk_i(wb_clk_o),         .wb_rst_i(wb_rst_o), 

  // WISHBONE slave:   Memory Interface is connected here
 	.wb_adr_i(mem_sl_wb_adr_i),  .wb_sel_i(mem_sl_wb_sel_i),  .wb_we_i (mem_sl_wb_we_i), 
 	.wb_cyc_i(mem_sl_wb_cyc_i),  .wb_stb_i(mem_sl_wb_stb_i),  .wb_ack_o(mem_sl_wb_ack_o), 
 	.wb_err_o(mem_sl_wb_err_o),  .wb_dat_o(mem_sl_wb_dat_o),  .wb_dat_i(mem_sl_wb_dat_i)
);


// Connecting Host Interface
eth_host eth_host
(
  // WISHBONE common
  .wb_clk_i(wb_clk_o),         .wb_rst_i(wb_rst_o), 

  // WISHBONE master
  .wb_adr_o(host_ma_wb_adr_o), .wb_sel_o(host_ma_wb_sel_o), .wb_we_o (host_ma_wb_we_o), 
  .wb_dat_i(host_ma_wb_dat_i), .wb_dat_o(host_ma_wb_dat_o), .wb_cyc_o(host_ma_wb_cyc_o), 
  .wb_stb_o(host_ma_wb_stb_o), .wb_ack_i(host_ma_wb_ack_i), .wb_err_i(host_ma_wb_err_i)
);





// Reset pulse
initial
begin
  MCrs=0;                                     // This should come from PHY
  MColl=0;                                    // This should come from PHY
  MRxD=0;                                     // This should come from PHY
  MRxDV=0;                                    // This should come from PHY
  MRxErr=0;                                   // This should come from PHY
  packet_ready_cnt = 0;
  send_packet_cnt = 0;
  tx_log = $fopen("ethernet_tx.log");
  rx_log = $fopen("ethernet_rx.log");
  wb_rst_o =  1'b1;
`ifdef ETH_XILINX_RAMB4
  gsr           =  1'b0;
  #100 gsr      =  1'b1;
  #100 gsr      =  1'b0;
`endif
  #100 wb_rst_o =  1'b0;
  #100 StartTB  =  1'b1;
end

`ifdef ETH_XILINX_RAMB4
  assign glbl.GSR = gsr;
`endif



// Generating wb_clk_o clock
initial
begin
  wb_clk_o=0;
//  forever #20 wb_clk_o = ~wb_clk_o;  // 2*20 ns -> 25 MHz    
  forever #12.5 wb_clk_o = ~wb_clk_o;  // 2*12.5 ns -> 40 MHz    
end

// Generating mtx_clk clock
initial
begin
  mtx_clk=0;
  #3 forever #20 mtx_clk = ~mtx_clk;   // 2*20 ns -> 25 MHz
end

// Generating mrx_clk clock
initial
begin
  mrx_clk=0;
  #16 forever #20 mrx_clk = ~mrx_clk;   // 2*20 ns -> 25 MHz
end

reg [31:0] tmp;
initial
begin
  wait(StartTB);  // Start of testbench
  

  eth_host.wb_write(`ETH_MODER, 4'hf, 32'h0); // Reset OFF
  eth_host.wb_read(`ETH_MODER, 4'hf, tmp);
  eth_host.wb_write(`ETH_MAC_ADDR1, 4'hf, 32'h0002); // Set ETH_MAC_ADDR1 register
  eth_host.wb_write(`ETH_MAC_ADDR0, 4'hf, 32'h03040506); // Set ETH_MAC_ADDR0 register

  initialize_txbd(3);
  initialize_rxbd(4);

//  eth_host.wb_write(`ETH_MODER, 4'hf, `ETH_MODER_RXEN  | `ETH_MODER_TXEN | `ETH_MODER_PRO | 
//                                      `ETH_MODER_CRCEN | `ETH_MODER_PAD); // Set MODER register
//  eth_host.wb_write(`ETH_MODER, 4'hf, `ETH_MODER_RXEN  | `ETH_MODER_TXEN | 
//                                      `ETH_MODER_CRCEN | `ETH_MODER_PAD); // Set MODER register
//  eth_host.wb_write(`ETH_MODER, 4'hf, `ETH_MODER_RXEN  | `ETH_MODER_TXEN | `ETH_MODER_BRO | 
//                                      `ETH_MODER_CRCEN | `ETH_MODER_PAD); // Set MODER register
//  eth_host.wb_write(`ETH_MODER, 4'hf, `ETH_MODER_RXEN  | `ETH_MODER_TXEN | `ETH_MODER_PRO | 
//                                      `ETH_MODER_CRCEN | `ETH_MODER_PAD | `ETH_MODER_LOOPBCK); // Set MODER register
  eth_host.wb_write(`ETH_MODER, 4'hf, `ETH_MODER_RXEN  | `ETH_MODER_TXEN | `ETH_MODER_PRO | 
                                      `ETH_MODER_CRCEN | `ETH_MODER_PAD | `ETH_MODER_LOOPBCK | 
                                      `ETH_MODER_FULLD); // Set MODER register
  eth_host.wb_read(`ETH_MODER, 4'hf, tmp);

  set_packet(16'h364, 8'h1);
  set_packet(16'h234, 8'h11);
  send_packet;
  repeat (1000) @(posedge mrx_clk);   // Waiting for TxEthMac to finish transmit

//  repeat (10000) @(posedge wb_clk_o);   // Waiting for TxEthMac to finish transmit
  set_packet(16'h534, 8'h21);
//  set_packet(16'h34, 8'h31);

/*
  eth_host.wb_write(`ETH_CTRLMODER, 4'hf, 32'h4);   // Enable Tx Flow control
  eth_host.wb_write(`ETH_CTRLMODER, 4'hf, 32'h5);   // Enable Tx Flow control
  eth_host.wb_write(`ETH_TX_CTRL, 4'hf, 32'h10013); // Send Control frame with PAUSE_TV=0x0013
*/

  send_packet;
  repeat (1000) @(posedge mrx_clk);   // Waiting for TxEthMac to finish transmit
  send_packet;
  repeat (1000) @(posedge mrx_clk);   // Waiting for TxEthMac to finish transmit

/*
  send_packet;
*/


  repeat (10000) @(posedge wb_clk_o);   // Waiting for TxEthMac to finish transmit

/*
  GetDataOnMRxD(113, `UNICAST_XFR); // LengthRx bytes is comming on MRxD[3:0] signals

  repeat (10000) @(posedge wb_clk_o);   // Waiting for TxEthMac to finish transmit

  GetDataOnMRxD(500, `BROADCAST_XFR); // LengthRx bytes is comming on MRxD[3:0] signals

  repeat (1000) @(posedge mrx_clk);   // Waiting for TxEthMac to finish transmit


  GetDataOnMRxD(1200, `BROADCAST_XFR); // LengthRx bytes is comming on MRxD[3:0] signals


  GetDataOnMRxD(1000, `UNICAST_XFR); // LengthRx bytes is comming on MRxD[3:0] signals

  repeat (10000) @(posedge wb_clk_o);   // Waiting for TxEthMac to finish transmit
  
*/
  // Reading and printing interrupts
  eth_host.wb_read(`ETH_INT, 4'hf, tmp);
  $display("Print irq = 0x%0x", tmp);
  
  //Clearing all interrupts
  eth_host.wb_write(`ETH_INT, 4'hf, 32'h60);

  // Reading and printing interrupts
  eth_host.wb_read(`ETH_INT, 4'hf, tmp);
  $display("Print irq = 0x%0x", tmp);

  $display("\n\n End of simulation");
  $stop;



end
  

`ifdef ETH_WISHBONE_B3

integer single_cnt_tx, burst_cnt_tx, burst_cnt;
integer single_cnt_rx, burst_cnt_rx;

initial
begin
single_cnt_tx=0; burst_cnt_tx=0; burst_cnt=0;
single_cnt_rx=0; burst_cnt_rx=0;
end

// Single and burst cycle watcher
always @ (posedge wb_clk_o)
begin
  if(eth_ma_wb_ack_i) begin
    if(eth_ma_wb_cyc_o & eth_ma_wb_we_o & eth_ma_wb_cti_o==3'b000) begin
      if(burst_cnt!==0)
        $display("(%0t)(%m) ERROR !!!  burst_cnt should be 0 because this is a single access", $time);
      else
        single_cnt_rx=single_cnt_rx+1;
    end
    else if(eth_ma_wb_cyc_o & !eth_ma_wb_we_o & eth_ma_wb_cti_o==3'b000) begin
      if(burst_cnt!==0)
        $display("(%0t)(%m) ERROR !!!  burst_cnt should be 0 because this is a single access", $time);
      else
        single_cnt_tx=single_cnt_tx+1;
    end
    else if(eth_ma_wb_cyc_o & eth_ma_wb_cti_o==3'b010) begin // burst in progress
      burst_cnt=burst_cnt+1;
    end
    else if(eth_ma_wb_cyc_o & eth_ma_wb_we_o & eth_ma_wb_cti_o==3'b111 & burst_cnt==(`ETH_BURST_LENGTH-1)) begin
      burst_cnt_rx=burst_cnt_rx+1;
      burst_cnt=0;
    end
    else if(eth_ma_wb_cyc_o & !eth_ma_wb_we_o & eth_ma_wb_cti_o==3'b111 & burst_cnt==(`ETH_BURST_LENGTH-1)) begin
      burst_cnt_tx=burst_cnt_tx+1;
      burst_cnt=0;
    end
    else
      $display("(%0t)(%m) ERROR !!!  Unknown cycle type or sequence", $time);
  end
end
`endif  // ETH_WISHBONE_B3



task initialize_txbd;
  input [6:0] txbd_num;
  
  integer i;
  integer bd_status_addr, buf_addr, bd_ptr_addr;
  
  for(i=0; i<txbd_num; i=i+1) begin
    buf_addr = `TX_BUF_BASE + i * 32'h600;
    bd_status_addr = `TX_BD_BASE + i * 8;
    bd_ptr_addr = bd_status_addr + 4; 
    
    // Initializing BD - status
    if(i==txbd_num-1)
      eth_host.wb_write(bd_status_addr, 4'hf, 32'h00007800);    // last BD: + WRAP
    else
      eth_host.wb_write(bd_status_addr, 4'hf, 32'h00005800);    // IRQ + PAD + CRC

    eth_host.wb_write(bd_ptr_addr, 4'hf, buf_addr);             // Initializing BD - pointer
  end
endtask // initialize_txbd


task initialize_rxbd;
  input [6:0] rxbd_num;
  
  integer i;
  integer bd_status_addr, buf_addr, bd_ptr_addr;
  
  for(i=0; i<rxbd_num; i=i+1) begin
    buf_addr = `RX_BUF_BASE + i * 32'h600;
    bd_status_addr = `RX_BD_BASE + i * 8;
    bd_ptr_addr = bd_status_addr + 4; 
    
    // Initializing BD - status
    if(i==rxbd_num-1)
      eth_host.wb_write(bd_status_addr, 4'hf, 32'h0000e000);    // last BD: + WRAP
    else
      eth_host.wb_write(bd_status_addr, 4'hf, 32'h0000c000);    // IRQ + PAD + CRC

    eth_host.wb_write(bd_ptr_addr, 4'hf, buf_addr);             // Initializing BD - pointer
  end
endtask // initialize_rxbd


task set_packet;
  input  [15:0] len;
  input   [7:0] start_data;

  integer i, sd;
  integer bd_status_addr, bd_ptr_addr, buffer, bd;
  
  begin
    sd = start_data;
    bd_status_addr = `TX_BD_BASE + packet_ready_cnt * 8;
    bd_ptr_addr = bd_status_addr + 4; 
    
    // Reading BD + buffer pointer
    eth_host.wb_read(bd_status_addr, 4'hf, bd);
    eth_host.wb_read(bd_ptr_addr, 4'hf, buffer);

    while(bd & `ETH_TX_BD_READY) begin  // Buffer is ready. Don't touch !!!
      repeat(100) @(posedge wb_clk_o);
      i=i+1;
      eth_host.wb_read(bd_status_addr, 4'hf, bd);
      if(i>1000)  begin
        $display("(%0t)(%m)Waiting for TxBD ready to clear timeout", $time);
        $stop;
      end
    end

    // First write might not be word allign.
    if(buffer[1:0]==1)  begin
      eth_host.wb_write(buffer-1, 4'h7, {8'h0, sd[7:0], sd[7:0]+3'h1, sd[7:0]+3'h2});
      sd=sd+3;
      i=3;
    end
    else if(buffer[1:0]==2)  begin
      eth_host.wb_write(buffer-2, 4'h3, {16'h0, sd[7:0], sd[7:0]+3'h1});
      sd=sd+2;
      i=2;
    end      
    else if(buffer[1:0]==3)  begin
      eth_host.wb_write(buffer-3, 4'h1, {24'h0, sd[7:0]});
      sd=sd+1;
      i=1;
    end
    else
      i=0;


    for(i=i; i<len-4; i=i+4) begin   // Last 0-3 bytes are not written
      eth_host.wb_write(buffer+i, 4'hf, {sd[7:0], sd[7:0]+3'h1, sd[7:0]+3'h2, sd[7:0]+3'h3});
      sd=sd+4;
    end
    
    
    // Last word
    if(len-i==3)
      eth_host.wb_write(buffer+i, 4'he, {sd[7:0], sd[7:0]+3'h1, sd[7:0]+3'h2, 8'h0});
    else if(len-i==2)
      eth_host.wb_write(buffer+i, 4'hc, {sd[7:0], sd[7:0]+3'h1, 16'h0});
    else if(len-i==1)
      eth_host.wb_write(buffer+i, 4'h8, {sd[7:0], 24'h0});
    else if(len-i==4)
      eth_host.wb_write(buffer+i, 4'hf, {sd[7:0], sd[7:0]+3'h1, sd[7:0]+3'h2, sd[7:0]+3'h3});
    else
      $display("(%0t)(%m) ERROR", $time);
    

    // Checking WRAP bit
    if(bd & `ETH_TX_BD_WRAP)
      packet_ready_cnt = 0;
    else
      packet_ready_cnt = packet_ready_cnt+1;

    // Writing len to bd
    bd = bd | (len<<16);
    eth_host.wb_write(bd_status_addr, 4'hf, bd);
    
  end
endtask // set_packet


task send_packet;

  integer bd_status_addr, bd_ptr_addr, buffer, bd;
  
  begin
    bd_status_addr = `TX_BD_BASE + send_packet_cnt * 8;
    bd_ptr_addr = bd_status_addr + 4; 
    
    // Reading BD + buffer pointer
    eth_host.wb_read(bd_status_addr, 4'hf, bd);
    eth_host.wb_read(bd_ptr_addr, 4'hf, buffer);

    if(bd & `ETH_TX_BD_WRAP)
      send_packet_cnt=0;
    else
      send_packet_cnt=send_packet_cnt+1;

    // Setting ETH_TX_BD_READY bit
    bd = bd | `ETH_TX_BD_READY;
    eth_host.wb_write(bd_status_addr, 4'hf, bd);
  end


endtask // send_packet


task GetDataOnMRxD;
  input [15:0] Len;
  input [31:0] TransferType;
  integer tt;

  begin
    @ (posedge mrx_clk);
    #1MRxDV=1'b1;
    
    for(tt=0; tt<15; tt=tt+1)
      begin
        MRxD=4'h5;              // preamble
        @ (posedge mrx_clk);
        #1;
      end

    MRxD=4'hd;                // SFD
    
    for(tt=1; tt<(Len+1); tt=tt+1)
      begin
        @ (posedge mrx_clk);
        #1;
  	    if(TransferType == `UNICAST_XFR && tt == 1)
	        MRxD= 4'h0;   // Unicast transfer
	      else if(TransferType == `BROADCAST_XFR && tt < 7)
	        MRxD = 4'hf;
	      else
          MRxD=tt[3:0]; // Multicast transfer

        @ (posedge mrx_clk);
	      #1;
	      if(TransferType == `BROADCAST_XFR && tt < 7)
	        MRxD = 4'hf;
	      else
          MRxD=tt[7:4];
      end

    @ (posedge mrx_clk);
    #1;
    MRxDV=1'b0;
  end
endtask // GetDataOnMRxD


endmodule


//////////////////////////////////////////////////////////////////////
////                                                              ////
////  File name "wb_bus_mon.v"                                    ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/ethmac/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Miha Dolenc (mihad@opencores.org)                     ////
////                                                              ////
////  All additional information is available in the README.pdf   ////
////  file.                                                       ////
////                                                              ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2002 Authors                                   ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: wb_bus_mon.v,v $
// Revision 1.3  2002/10/09 13:16:51  tadejm
// Just back-up; not completed testbench and some testcases are not
// wotking properly yet.
//
// Revision 1.2  2002/09/13 12:29:14  mohor
// Headers changed.
//
// Revision 1.1  2002/09/13 11:57:20  mohor
// New testbench. Thanks to Tadej M - "The Spammer".
//
// Revision 1.1  2002/02/01 13:39:43  mihad
// Initial testbench import. Still under development
//
// Revision 1.1  2001/08/06 18:12:58  mihad
// Pocasi delamo kompletno zadevo
//
//

`include "timescale.v"

// WISHBONE bus monitor module - it connects to WISHBONE master signals and
// monitors for any illegal combinations appearing on the bus.
module WB_BUS_MON(
                    CLK_I,
                    RST_I,
	            ACK_I,
                    ADDR_O,
                    CYC_O,
                    DAT_I,
                    DAT_O,
                    ERR_I,
                    RTY_I,
                    SEL_O,
                    STB_O,
                    WE_O,
                    TAG_I,
                    TAG_O,
                    CAB_O,
                    log_file_desc
                  ) ;

input                           CLK_I  ;
input                           RST_I  ;
input                           ACK_I  ;
input   [(`WB_ADDR_WIDTH-1):0]  ADDR_O ;
input                           CYC_O  ;
input   [(`WB_DATA_WIDTH-1):0]  DAT_I  ;
input   [(`WB_DATA_WIDTH-1):0]  DAT_O  ;
input                           ERR_I  ;
input                           RTY_I  ;
input   [(`WB_SEL_WIDTH-1):0]   SEL_O  ;
input                           STB_O  ;
input                           WE_O   ;
input   [(`WB_TAG_WIDTH-1):0] TAG_I  ;
input   [(`WB_TAG_WIDTH-1):0] TAG_O  ;
input                           CAB_O  ;
input [31:0] log_file_desc ;

always@(posedge CLK_I or posedge RST_I)
begin
    if (RST_I)
    begin
        // when reset is applied, all control signals must be low
        if (CYC_O)
        begin
            $display("*E (%0t) CYC_O active under reset", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)CYC_O active under reset", $time) ;
        end
        if (STB_O)
        begin
            $display("*E (%0t) STB_O active under reset", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)STB_O active under reset", $time) ;
        end
        /*if (ACK_I)
            $display("ACK_I active under reset") ;*/
        if (ERR_I)
        begin
            $display("*E (%0t) ERR_I active under reset", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)ERR_I active under reset", $time) ;
        end
        if (RTY_I)
        begin
            $display("*E (%0t) RTY_I active under reset", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)RTY_I active under reset", $time) ;
        end
        if (CAB_O)
        begin
            $display("*E (%0t) CAB_O active under reset", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)CAB_O active under reset", $time) ;
        end
    end // reset
    else
    if (~CYC_O)
    begin
        // when cycle indicator is low, all control signals must be low
        if (STB_O)
        begin
            $display("*E (%0t) STB_O active without CYC_O being active", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)STB_O active without CYC_O being active", $time) ;
        end
        if (ACK_I)
        begin
            $display("*E (%0t) ACK_I active without CYC_O being active", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)ACK_I active without CYC_O being active", $time) ;
        end
        if (ERR_I)
        begin
            $display("*E (%0t) ERR_I active without CYC_O being active", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)ERR_I active without CYC_O being active", $time) ;
        end
        if (RTY_I)
        begin
            $display("*E (%0t) RTY_I active without CYC_O being active", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)RTY_I active without CYC_O being active", $time) ;
        end
        if (CAB_O)
        begin
            $display("*E (%0t) CAB_O active without CYC_O being active", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)CAB_O active without CYC_O being active", $time) ;
        end
    end // ~CYC_O
end

reg [`WB_DATA_WIDTH-1:0] previous_data ;
reg [`WB_ADDR_WIDTH-1:0] previous_address ;
reg [`WB_SEL_WIDTH-1:0] previous_sel ;
reg                     previous_stb ;
reg                     previous_ack ;
reg                     previous_err ;
reg                     previous_rty ;
reg                     previous_cyc ;
reg can_change ;

always@(posedge CLK_I or posedge RST_I)
begin
    if (RST_I)
    begin
        previous_stb <= 1'b0 ;
        previous_ack <= 1'b0 ;
        previous_err <= 1'b0 ;
        previous_rty <= 1'b0 ;
        previous_cyc <= 1'b0 ;
    end
    else
    begin
        previous_stb <= STB_O ;
        previous_ack <= ACK_I ;
        previous_err <= ERR_I ;
        previous_rty <= RTY_I ;
        previous_cyc <= CYC_O ;
    end
end

// cycle monitor
always@(posedge CLK_I)
begin
    if (CYC_O && ~RST_I) // cycle in progress
    begin
        if (STB_O)
        begin
            // check for two control signals active at same edge
            if ( ACK_I && RTY_I )
            begin
                $display("*E (%0t) ACK_I and RTY_I asserted at the same time during cycle", $time) ;
                $fdisplay(log_file_desc, "*E (%0t)(%m)ACK_I and RTY_I asserted at the same time during cycle", $time) ;
            end
            if ( ACK_I && ERR_I )
            begin
                $display("*E (%0t) ACK_I and ERR_I asserted at the same time during cycle", $time) ;
                $fdisplay(log_file_desc, "*E (%0t)(%m)ACK_I and ERR_I asserted at the same time during cycle", $time) ;
            end
            if ( RTY_I && ERR_I )
            begin
                $display("*E (%0t) RTY_I and ERR_I asserted at the same time during cycle", $time) ;
                $fdisplay(log_file_desc, "*E (%0t)(%m)RTY_I and ERR_I asserted at the same time during cycle", $time) ;
            end

            if ( can_change !== 1 )
            begin
                if ( ADDR_O !== previous_address )
                begin
                    $display("*E (%0t) WB bus monitor detected address change in the middle of the cycle!", $time) ;
                    $fdisplay(log_file_desc, "*E (%0t)(%m)WB bus monitor detected address change in the middle of the cycle!", $time) ;
                end

                if ( SEL_O !== previous_sel )
                begin
                    $display("*E (%0t) WB bus monitor detected select lines changed in the middle of the cycle!", $time) ;
                    $fdisplay(log_file_desc, "*E (%0t)(%m)WB bus monitor detected select lines changed in the middle of the cycle!", $time) ;
                end

                if ( (WE_O !== 0) && ( DAT_O !== previous_data ) )
                begin
                    $display("*E (%0t) WB bus monitor detected data lines changed in the middle of the cycle!", $time) ;
                    $fdisplay(log_file_desc, "*E (%0t)(%m)WB bus monitor detected data lines changed in the middle of the cycle!", $time) ;
                end
            end

            if ( ACK_I || RTY_I || ERR_I )
                can_change       = 1 ;
            else
            begin
                previous_data    = DAT_O ;
                previous_address = ADDR_O ;
                previous_sel     = SEL_O ;
                can_change = 0 ;
            end

        end // STB_O
        else
        begin //~STB_O
            // while STB_O is inactive, only ACK_I is allowed to be active
            if ( ERR_I )
            begin
                $display("*E (%0t) ERR_I asserted during cycle without STB_O", $time) ;
                $fdisplay(log_file_desc, "*E (%0t)(%m)ERR_I asserted during cycle without STB_O", $time) ;
            end
            if ( RTY_I )
            begin
                $display("*E (%0t) RTY_I asserted during cycle without STB_O", $time) ;
                $fdisplay(log_file_desc, "*E (%0t)(%m)RTY_I asserted during cycle without STB_O", $time) ;
            end

            if ((previous_ack !== 1) && (previous_err !== 1) && (previous_rty !== 1) && (previous_stb !== 0))
            begin
                $display("STB_O de-asserted without reception of slave response") ;
                $fdisplay(log_file_desc, "STB_O de-asserted without reception of slave response") ;
            end

            can_change = 1 ;
        end   // ~STB_O
    end // cycle in progress
    else if (!RST_I)
    begin
        // cycle not in progress anymore
        can_change = 1 ;
        if ((previous_ack !== 1) && (previous_err !== 1) && (previous_rty !== 1) && (previous_stb !== 0))
        begin
            $display("STB_O de-asserted without reception of slave response") ;
            $fdisplay(log_file_desc, "STB_O de-asserted without reception of slave response") ;
        end
    end
end // cycle monitor

// CAB_O monitor - CAB_O musn't change during one cycle
reg [1:0] first_cab_val ;
always@(posedge CLK_I or RST_I)
begin
    if ((CYC_O === 0) || RST_I)
        first_cab_val <= 2'b00 ;
    else
    begin
        // cycle in progress - is this first clock edge in a cycle ?
        if (first_cab_val[1] === 1'b0)
            first_cab_val <= {1'b1, CAB_O} ;
        else if ( first_cab_val[0] !== CAB_O )
        begin
            $display("*E (%0t) CAB_O value changed during cycle", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)CAB_O value changed during cycle", $time) ;
        end
    end
end // CAB_O monitor

// WE_O monitor for consecutive address bursts
reg [1:0] first_we_val ;
always@(posedge CLK_I or posedge RST_I)
begin
    if (~CYC_O || ~CAB_O || RST_I)
        first_we_val <= 2'b00 ;
    else
    if (STB_O)
    begin
        // cycle in progress - is this first clock edge in a cycle ?
        if (first_we_val[1] == 1'b0)
            first_we_val <= {1'b1, WE_O} ;
        else if ( first_we_val[0] != WE_O )
        begin
            $display("*E (%0t) WE_O value changed during CAB cycle", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)WE_O value changed during CAB cycle", $time) ;
        end
    end
end // CAB_O monitor

// address monitor for consecutive address bursts
reg [`WB_ADDR_WIDTH:0] address ;
always@(posedge CLK_I or posedge RST_I)
begin
    if (~CYC_O || ~CAB_O || RST_I)
        address <= {(`WB_ADDR_WIDTH + 1){1'b0}} ;
    else
    begin
        if (STB_O && ACK_I)
        begin
            if (address[`WB_ADDR_WIDTH] == 1'b0)
                address <= {1'b1, (ADDR_O + `WB_SEL_WIDTH)} ;
            else
            begin
                if ( address[(`WB_ADDR_WIDTH-1):0] != ADDR_O)
                begin
                    $display("*E (%0t) Consecutive address burst address incrementing incorrect", $time) ;
                    $fdisplay(log_file_desc, "*E (%0t)(%m)Consecutive address burst address incrementing incorrect", $time) ;
                end
                else
                    address <= {1'b1, (ADDR_O + `WB_SEL_WIDTH)} ;
            end
        end
    end
end // address monitor

// data monitor
always@(posedge CLK_I or posedge RST_I)
begin
    if (CYC_O && STB_O && ~RST_I)
    begin
        if ( ((^ADDR_O) !== 1'b1) && ((^ADDR_O) !== 1'b0) )
        begin
            $display("*E (%0t) Master provided invalid address and qualified it with STB_O", $time) ;
            $fdisplay(log_file_desc, "*E (%0t)(%m)Master provided invalid address and qualified it with STB_O", $time) ;
        end
        if ( WE_O )
        begin
            if (
                (SEL_O[0] && (((^DAT_O[7:0])   !== 1'b0) && ((^DAT_O[7:0])   !== 1'b1))) ||
                (SEL_O[1] && (((^DAT_O[15:8])  !== 1'b0) && ((^DAT_O[15:8])  !== 1'b1))) ||
                (SEL_O[2] && (((^DAT_O[23:16]) !== 1'b0) && ((^DAT_O[23:16]) !== 1'b1))) ||
                (SEL_O[3] && (((^DAT_O[31:24]) !== 1'b0) && ((^DAT_O[31:24]) !== 1'b1)))
               )
            begin
                $display("*E (%0t) Master provided invalid data during write and qualified it with STB_O", $time) ;
                $fdisplay(log_file_desc, "*E (%0t)(%m)Master provided invalid data during write and qualified it with STB_O", $time) ;
                $display("*E (%0t) Byte select value: SEL_O = %b, Data bus value: DAT_O =  %h ", $time, SEL_O, DAT_O) ;
                $fdisplay(log_file_desc, "*E (%0t)(%m)Byte select value: SEL_O = %b, Data bus value: DAT_O =  %h ", $time, SEL_O, DAT_O) ;
            end

        end
        else
        if (~WE_O && ACK_I)
        begin
            if (
                (SEL_O[0] && (((^DAT_I[7:0])   !== 1'b0) && ((^DAT_I[7:0])   !== 1'b1))) ||
                (SEL_O[1] && (((^DAT_I[15:8])  !== 1'b0) && ((^DAT_I[15:8])  !== 1'b1))) ||
                (SEL_O[2] && (((^DAT_I[23:16]) !== 1'b0) && ((^DAT_I[23:16]) !== 1'b1))) ||
                (SEL_O[3] && (((^DAT_I[31:24]) !== 1'b0) && ((^DAT_I[31:24]) !== 1'b1)))
               )
            begin
                $display("*E (%0t) Slave provided invalid data during read and qualified it with ACK_I", $time) ;
                $fdisplay(log_file_desc, "*E (%0t)(%m)Slave provided invalid data during read and qualified it with ACK_I", $time) ;
                $display("*E (%0t) Byte select value: SEL_O = %b, Data bus value: DAT_I =  %h ", $time, SEL_O, DAT_I) ;
                $fdisplay(log_file_desc, "*E (%0t)(%m)Byte select value: SEL_O = %b, Data bus value: DAT_I =  %h ", $time, SEL_O, DAT_I) ;
            end
        end
    end
end

initial
begin
    previous_data = 0 ;
    previous_address = 0 ;
    can_change = 1 ;
end
endmodule // BUS_MON


//////////////////////////////////////////////////////////////////////
////                                                              ////
////  File name "wb_master_behavioral.v"                          ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/ethmac/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Miha Dolenc (mihad@opencores.org)                     ////
////                                                              ////
////  All additional information is available in the Readme.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2002  Authors                                  ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: wb_master_behavioral.v,v $
// Revision 1.2  2002/09/13 12:29:14  mohor
// Headers changed.
//
// Revision 1.1  2002/09/13 11:57:20  mohor
// New testbench. Thanks to Tadej M - "The Spammer".
//
// Revision 1.1  2002/07/29 11:25:20  mihad
// Adding test bench for memory interface
//
// Revision 1.1  2002/02/01 13:39:43  mihad
// Initial testbench import. Still under development
//


`include "timescale.v"
module WB_MASTER_BEHAVIORAL
(
    CLK_I,
    RST_I,
    TAG_I,
    TAG_O,
    ACK_I,
    ADR_O,
    CYC_O,
    DAT_I,
    DAT_O,
    ERR_I,
    RTY_I,
    SEL_O,
    STB_O,
    WE_O,
    CAB_O
);

    input                    CLK_I;
    input                    RST_I;
    input    `WB_TAG_TYPE    TAG_I;
    output   `WB_TAG_TYPE    TAG_O;
    input                    ACK_I;
    output   `WB_ADDR_TYPE   ADR_O;
    output                   CYC_O;
    input    `WB_DATA_TYPE   DAT_I;
    output   `WB_DATA_TYPE   DAT_O;
    input                    ERR_I;
    input                    RTY_I;
    output   `WB_SEL_TYPE    SEL_O;
    output                   STB_O;
    output                   WE_O;
    output                   CAB_O;

// instantiate low level master module
WB_MASTER32 wbm_low_level
(
    .CLK_I(CLK_I),
    .RST_I(RST_I),
    .TAG_I(TAG_I),
    .TAG_O(TAG_O),
    .ACK_I(ACK_I),
    .ADR_O(ADR_O),
    .CYC_O(CYC_O),
    .DAT_I(DAT_I),
    .DAT_O(DAT_O),
    .ERR_I(ERR_I),
    .RTY_I(RTY_I),
    .SEL_O(SEL_O),
    .STB_O(STB_O),
    .WE_O(WE_O),
    .CAB_O(CAB_O)
) ;

// block read and write buffers definition
// single write buffer
reg `WRITE_STIM_TYPE  blk_write_data    [0:(`MAX_BLK_SIZE - 1)] ;
// read stimulus buffer - addresses, tags, selects etc.
reg `READ_STIM_TYPE   blk_read_data_in  [0:(`MAX_BLK_SIZE - 1)] ;
// read return buffer - data and tags received while performing block reads
reg `READ_RETURN_TYPE blk_read_data_out [0:(`MAX_BLK_SIZE - 1)] ;

// single write task
task wb_single_write ;
    input `WRITE_STIM_TYPE write_data ;
    input `WB_TRANSFER_FLAGS   write_flags ;
    inout `WRITE_RETURN_TYPE return ;
    reg in_use ;
    reg cab ;
    reg ok ;
    integer cyc_count ;
    integer rty_count ;
    reg retry ;
begin:main

    return`TB_ERROR_BIT = 1'b0 ;
    cab = 0 ;
    return`CYC_ACTUAL_TRANSFER = 0 ;
    rty_count = 0 ;

    // check if task was called before previous call finished
    if ( in_use === 1 )
    begin
        $display("*E, wb_single_write routine re-entered! Time %t ", $time) ;
        return`TB_ERROR_BIT = 1'b1 ;
        disable main ;
    end

    in_use = 1 ;

    retry = 1 ;

    while (retry === 1)
    begin
        // synchronize operation to clock
        @(posedge CLK_I) ;

        wbm_low_level.start_cycle(cab, 1'b1, ok) ;
        if ( ok !== 1 )
        begin
            $display("*E, Failed to initialize cycle! Routine wb_single_write, Time %t ", $time) ;
            return`TB_ERROR_BIT = 1'b1 ;
            disable main ;
        end

        // first insert initial wait states
        cyc_count = write_flags`INIT_WAITS ;
        while ( cyc_count > 0 )
        begin
            @(posedge CLK_I) ;
            cyc_count = cyc_count - 1 ;
        end

        wbm_low_level.wbm_write(write_data, return) ;

        if ( return`CYC_ERR === 0 && return`CYC_ACK === 0 && return`CYC_RTY === 1 && write_flags`WB_TRANSFER_AUTO_RTY === 1 && return`TB_ERROR_BIT === 0)
        begin
            if ( rty_count === `WB_TB_MAX_RTY )
            begin
                 $display("*E, maximum number of retries received - access will not be repeated anymore! Routine wb_single_write, Time %t ", $time) ;
                 retry = 0 ;
            end
            else
            begin
                retry     = 1 ;
                rty_count = rty_count + 1 ;
            end
        end
        else
            retry = 0 ;

        // if test bench error bit is set, there is no meaning in introducing subsequent wait states
        if ( return`TB_ERROR_BIT !== 0 )
        begin
            @(posedge CLK_I) ;
            wbm_low_level.end_cycle ;
            disable main ;
        end

        cyc_count = write_flags`SUBSEQ_WAITS ;
        while ( cyc_count > 0 )
        begin
            @(posedge CLK_I) ;
            cyc_count = cyc_count - 1 ;
        end

        wbm_low_level.end_cycle ;
    end

    in_use = 0 ;

end //main
endtask // wb_single_write

task wb_single_read ;
    input `READ_STIM_TYPE read_data ;
    input `WB_TRANSFER_FLAGS   read_flags ;
    inout `READ_RETURN_TYPE return ;
    reg in_use ;
    reg cab ;
    reg ok ;
    integer cyc_count ;
    integer rty_count ;
    reg retry ;
begin:main

    return`TB_ERROR_BIT = 1'b0 ;
    cab = 0 ;
    rty_count = 0 ;
    return`CYC_ACTUAL_TRANSFER = 0 ;

    // check if task was called before previous call finished
    if ( in_use === 1 )
    begin
        $display("*E, wb_single_read routine re-entered! Time %t ", $time) ;
        return`TB_ERROR_BIT = 1'b1 ;
        disable main ;
    end

    in_use = 1 ;

    retry = 1 ;

    while (retry === 1)
    begin
        // synchronize operation to clock
        @(posedge CLK_I) ;

        wbm_low_level.start_cycle(cab, 1'b0, ok) ;
        if ( ok !== 1 )
        begin
            $display("*E, Failed to initialize cycle! Routine wb_single_read, Time %t ", $time) ;
            return`TB_ERROR_BIT = 1'b1 ;
            disable main ;
        end

        // first insert initial wait states
        cyc_count = read_flags`INIT_WAITS ;
        while ( cyc_count > 0 )
        begin
            @(posedge CLK_I) ;
            cyc_count = cyc_count - 1 ;
        end

        wbm_low_level.wbm_read(read_data, return) ;

        if ( return`CYC_ERR === 0 && return`CYC_ACK === 0 && return`CYC_RTY === 1 && read_flags`WB_TRANSFER_AUTO_RTY === 1 && return`TB_ERROR_BIT === 0)
        begin
           if ( rty_count === `WB_TB_MAX_RTY )
            begin
                 $display("*E, maximum number of retries received - access will not be repeated anymore! Routine wb_single_read, Time %t ", $time) ;
                 retry = 0 ;
            end
            else
            begin
                retry     = 1 ;
                rty_count = rty_count + 1 ;
            end
        end
        else
        begin
            retry = 0 ;
        end

        // if test bench error bit is set, there is no meaning in introducing subsequent wait states
        if ( return`TB_ERROR_BIT !== 0 )
        begin
            @(posedge CLK_I) ;
            wbm_low_level.end_cycle ;
            disable main ;
        end

        cyc_count = read_flags`SUBSEQ_WAITS ;
        while ( cyc_count > 0 )
        begin
            @(posedge CLK_I) ;
            cyc_count = cyc_count - 1 ;
        end

        wbm_low_level.end_cycle ;
    end

    in_use = 0 ;

end //main
endtask // wb_single_read

task wb_RMW_read ;
    input `READ_STIM_TYPE read_data ;
    input `WB_TRANSFER_FLAGS   read_flags ;
    inout `READ_RETURN_TYPE return ;
    reg in_use ;
    reg cab ;
    reg ok ;
    integer cyc_count ;
    integer rty_count ;
    reg retry ;
begin:main

    return`TB_ERROR_BIT = 1'b0 ;
    cab = 0 ;
    rty_count = 0 ;
    return`CYC_ACTUAL_TRANSFER = 0 ;

    // check if task was called before previous call finished
    if ( in_use === 1 )
    begin
        $display("*E, wb_RMW_read routine re-entered! Time %t ", $time) ;
        return`TB_ERROR_BIT = 1'b1 ;
        disable main ;
    end

    in_use = 1 ;

    retry = 1 ;

    while (retry === 1)
    begin
        // synchronize operation to clock
        @(posedge CLK_I) ;

        wbm_low_level.start_cycle(cab, 1'b0, ok) ;
        if ( ok !== 1 )
        begin
            $display("*E, Failed to initialize cycle! Routine wb_RMW_read, Time %t ", $time) ;
            return`TB_ERROR_BIT = 1'b1 ;
            disable main ;
        end

        // first insert initial wait states
        cyc_count = read_flags`INIT_WAITS ;
        while ( cyc_count > 0 )
        begin
            @(posedge CLK_I) ;
            cyc_count = cyc_count - 1 ;
        end

        wbm_low_level.wbm_read(read_data, return) ;

        if ( return`CYC_ERR === 0 && return`CYC_ACK === 0 && return`CYC_RTY === 1 && read_flags`WB_TRANSFER_AUTO_RTY === 1 && return`TB_ERROR_BIT === 0)
        begin
           if ( rty_count === `WB_TB_MAX_RTY )
            begin
                 $display("*E, maximum number of retries received - access will not be repeated anymore! Routine wb_RMW_read, Time %t ", $time) ;
                 retry = 0 ;
            end
            else
            begin
                retry     = 1 ;
                rty_count = rty_count + 1 ;
            end
        end
        else
        begin
            retry = 0 ;
        end

        // if test bench error bit is set, there is no meaning in introducing subsequent wait states
        if ( return`TB_ERROR_BIT !== 0 )
        begin
            @(posedge CLK_I) ;
            wbm_low_level.end_cycle ;
            disable main ;
        end

        cyc_count = read_flags`SUBSEQ_WAITS ;
        while ( cyc_count > 0 )
        begin
            @(posedge CLK_I) ;
            cyc_count = cyc_count - 1 ;
        end

        if (retry === 1)
            wbm_low_level.end_cycle ;
        else
            wbm_low_level.modify_cycle ;
    end

    in_use = 0 ;

end //main
endtask // wb_RMW_read

task wb_RMW_write ;
    input `WRITE_STIM_TYPE write_data ;
    input `WB_TRANSFER_FLAGS   write_flags ;
    inout `WRITE_RETURN_TYPE return ;
    reg in_use ;
    reg cab ;
    reg ok ;
    integer cyc_count ;
    integer rty_count ;
    reg retry ;
begin:main

    return`TB_ERROR_BIT = 1'b0 ;
    cab = 0 ;
    return`CYC_ACTUAL_TRANSFER = 0 ;
    rty_count = 0 ;

    // check if task was called before previous call finished
    if ( in_use === 1 )
    begin
        $display("*E, wb_RMW_write routine re-entered! Time %t ", $time) ;
        return`TB_ERROR_BIT = 1'b1 ;
        disable main ;
    end

    in_use = 1 ;

    retry = 1 ;

    while (retry === 1)
    begin
        // synchronize operation to clock
        //@(posedge CLK_I) ;
        ok = 1 ;
        if (rty_count !== 0)
            wbm_low_level.start_cycle(cab, 1'b1, ok) ;

        if ( ok !== 1 )
        begin
            $display("*E, Failed to initialize cycle! Routine wb_single_write, Time %t ", $time) ;
            return`TB_ERROR_BIT = 1'b1 ;
            disable main ;
        end

        // first insert initial wait states
        cyc_count = write_flags`INIT_WAITS ;
        while ( cyc_count > 0 )
        begin
            @(posedge CLK_I) ;
            cyc_count = cyc_count - 1 ;
        end

        wbm_low_level.wbm_write(write_data, return) ;

        if ( return`CYC_ERR === 0 && return`CYC_ACK === 0 && return`CYC_RTY === 1 && write_flags`WB_TRANSFER_AUTO_RTY === 1 && return`TB_ERROR_BIT === 0)
        begin
            if ( rty_count === `WB_TB_MAX_RTY )
            begin
                 $display("*E, maximum number of retries received - access will not be repeated anymore! Routine wb_single_write, Time %t ", $time) ;
                 retry = 0 ;
            end
            else
            begin
                retry     = 1 ;
                rty_count = rty_count + 1 ;
            end
        end
        else
            retry = 0 ;

        // if test bench error bit is set, there is no meaning in introducing subsequent wait states
        if ( return`TB_ERROR_BIT !== 0 )
        begin
            @(posedge CLK_I) ;
            wbm_low_level.end_cycle ;
            disable main ;
        end

        cyc_count = write_flags`SUBSEQ_WAITS ;
        while ( cyc_count > 0 )
        begin
            @(posedge CLK_I) ;
            cyc_count = cyc_count - 1 ;
        end

        wbm_low_level.end_cycle ;
    end

    in_use = 0 ;

end //main
endtask // wb_RMW_write

task wb_block_write ;
    input  `WB_TRANSFER_FLAGS write_flags ;
    inout  `WRITE_RETURN_TYPE return ;

    reg in_use ;
    reg `WRITE_STIM_TYPE  current_write ;
    reg cab ;
    reg ok ;
    integer cyc_count ;
    integer rty_count ;
    reg end_blk ;
begin:main

    return`CYC_ACTUAL_TRANSFER = 0 ;
    rty_count = 0 ;

    // check if task was called before previous call finished
    if ( in_use === 1 )
    begin
        $display("*E, wb_block_write routine re-entered! Time %t ", $time) ;
        return`TB_ERROR_BIT = 1'b1 ;
        disable main ;
    end

    if (write_flags`WB_TRANSFER_SIZE > `MAX_BLK_SIZE)
    begin
        $display("*E, number of transfers passed to wb_block_write routine exceeds defined maximum transaction length! Time %t", $time) ;
        return`TB_ERROR_BIT = 1'b1 ;
        disable main ;
    end

    in_use = 1 ;
    @(posedge CLK_I) ;
    cab = write_flags`WB_TRANSFER_CAB ;
    wbm_low_level.start_cycle(cab, 1'b1, ok) ;
    if ( ok !== 1 )
    begin
        $display("*E, Failed to initialize cycle! Routine wb_block_write, Time %t ", $time) ;
        return`TB_ERROR_BIT = 1'b1 ;
        disable main ;
    end

    // insert initial wait states
    cyc_count = write_flags`INIT_WAITS ;
    while ( cyc_count > 0 )
    begin
        @(posedge CLK_I) ;
        cyc_count = cyc_count - 1 ;
    end

    end_blk = 0 ;
    while (end_blk === 0)
    begin
        // collect data for current data beat
        current_write = blk_write_data[return`CYC_ACTUAL_TRANSFER] ;
        wbm_low_level.wbm_write(current_write, return) ;

        // check result of write operation
        // check for severe test error
        if (return`TB_ERROR_BIT !== 0)
        begin
           @(posedge CLK_I) ;
           wbm_low_level.end_cycle ;
           disable main ;
        end

        // slave returned error or error signal had invalid value
        if (return`CYC_ERR !== 0)
            end_blk = 1 ;

        if (
            (return`CYC_RTY !== 0) && (return`CYC_RTY !== 1) ||
            (return`CYC_ACK !== 0) && (return`CYC_ACK !== 1) ||
            (return`CYC_ERR !== 0) && (return`CYC_ERR !== 1)
           )
        begin
            end_blk = 1 ;
            $display("*E, at least one slave response signal was invalid when cycle finished! Routine wb_block_write, Time %t ", $time) ;
            $display("ACK = %b \t RTY_O = %b \t ERR_O = %b \t", return`CYC_ACK, return`CYC_RTY, return`CYC_ERR) ;
        end

        if ((return`CYC_RTY === 1) && (write_flags`WB_TRANSFER_AUTO_RTY !== 1))
            end_blk = 1 ;

        if ((return`CYC_RTY === 1) && (write_flags`WB_TRANSFER_AUTO_RTY === 1))
        begin
            if ( rty_count === `WB_TB_MAX_RTY )
            begin
                 $display("*E, maximum number of retries received - access will not be repeated anymore! Routine wb_block_write, Time %t ", $time) ;
                 end_blk = 1 ;
            end
            else
            begin
                rty_count = rty_count + 1 ;
            end
        end
        else
            rty_count = 0 ;

        // check if slave responded at all
        if (return`CYC_RESPONSE === 0)
            end_blk = 1 ;

        // check if all intended data was transfered
        if (return`CYC_ACTUAL_TRANSFER === write_flags`WB_TRANSFER_SIZE)
            end_blk = 1 ;

        // insert subsequent wait cycles, if transfer is supposed to continue
        if ( end_blk === 0 )
        begin
            cyc_count = write_flags`SUBSEQ_WAITS ;
            while ( cyc_count > 0 )
            begin
                @(posedge CLK_I) ;
                cyc_count = cyc_count - 1 ;
            end
        end

        if ( (end_blk === 0) && (return`CYC_RTY === 1) )
        begin
            wbm_low_level.end_cycle ;
            @(posedge CLK_I) ;
            wbm_low_level.start_cycle(cab, 1'b1, ok) ;
            if ( ok !== 1 )
            begin
                $display("*E, Failed to initialize cycle! Routine wb_block_write, Time %t ", $time) ;
                return`TB_ERROR_BIT = 1'b1 ;
                end_blk = 1 ;
            end
        end
    end //while

    wbm_low_level.end_cycle ;
    in_use = 0 ;
end //main
endtask //wb_block_write

task wb_block_read ;
    input  `WB_TRANSFER_FLAGS      read_flags ;
    inout `READ_RETURN_TYPE       return ;

    reg in_use ;
    reg `READ_STIM_TYPE  current_read ;
    reg cab ;
    reg ok ;
    integer cyc_count ;
    integer rty_count ;
    reg end_blk ;
    integer transfered ;
begin:main

    return`CYC_ACTUAL_TRANSFER = 0 ;
    transfered = 0 ;
    rty_count = 0 ;

    // check if task was called before previous call finished
    if ( in_use === 1 )
    begin
        $display("*E, wb_block_read routine re-entered! Time %t ", $time) ;
        return`TB_ERROR_BIT = 1'b1 ;
        disable main ;
    end

    if (read_flags`WB_TRANSFER_SIZE > `MAX_BLK_SIZE)
    begin
        $display("*E, number of transfers passed to wb_block_read routine exceeds defined maximum transaction length! Time %t", $time) ;
        return`TB_ERROR_BIT = 1'b1 ;
        disable main ;
    end

    in_use = 1 ;
    @(posedge CLK_I) ;
    cab = read_flags`WB_TRANSFER_CAB ;

    wbm_low_level.start_cycle(cab, 1'b0, ok) ;

    if ( ok !== 1 )
    begin
        $display("*E, Failed to initialize cycle! Routine wb_block_read, Time %t ", $time) ;
        return`TB_ERROR_BIT = 1'b1 ;
        disable main ;
    end

    // insert initial wait states
    cyc_count = read_flags`INIT_WAITS ;
    while ( cyc_count > 0 )
    begin
        @(posedge CLK_I) ;
        cyc_count = cyc_count - 1 ;
    end

    end_blk = 0 ;
    while (end_blk === 0)
    begin
        // collect data for current data beat
        current_read = blk_read_data_in[return`CYC_ACTUAL_TRANSFER] ;

        wbm_low_level.wbm_read(current_read, return) ;

        if ( transfered !== return`CYC_ACTUAL_TRANSFER )
        begin
            blk_read_data_out[transfered] = return ;
            transfered = return`CYC_ACTUAL_TRANSFER ;
        end

        // check result of read operation
        // check for severe test error
        if (return`TB_ERROR_BIT !== 0)
        begin
           @(posedge CLK_I) ;
           wbm_low_level.end_cycle ;
           disable main ;
        end

        // slave returned error or error signal had invalid value
        if (return`CYC_ERR !== 0)
            end_blk = 1 ;

        if (
            (return`CYC_RTY !== 0) && (return`CYC_RTY !== 1) ||
            (return`CYC_ACK !== 0) && (return`CYC_ACK !== 1) ||
            (return`CYC_ERR !== 0) && (return`CYC_ERR !== 1)
           )
        begin
            end_blk = 1 ;
            $display("*E, at least one slave response signal was invalid when cycle finished! Routine wb_block_read, Time %t ", $time) ;
            $display("ACK = %b \t RTY_O = %b \t ERR_O = %b \t", return`CYC_ACK, return`CYC_RTY, return`CYC_ERR) ;
        end

        if ((return`CYC_RTY === 1) && (read_flags`WB_TRANSFER_AUTO_RTY !== 1))
            end_blk = 1 ;

        if ((return`CYC_RTY === 1) && (read_flags`WB_TRANSFER_AUTO_RTY === 1))
        begin
            if ( rty_count === `WB_TB_MAX_RTY )
            begin
                 $display("*E, maximum number of retries received - access will not be repeated anymore! Routine wb_block_read, Time %t ", $time) ;
                 end_blk = 1 ;
            end
            else
            begin
                rty_count = rty_count + 1 ;
            end
        end
        else
            rty_count = 0 ;

        // check if slave responded at all
        if (return`CYC_RESPONSE === 0)
            end_blk = 1 ;

        // check if all intended data was transfered
        if (return`CYC_ACTUAL_TRANSFER === read_flags`WB_TRANSFER_SIZE)
            end_blk = 1 ;

        // insert subsequent wait cycles, if transfer is supposed to continue
        if ( end_blk === 0 )
        begin
            cyc_count = read_flags`SUBSEQ_WAITS ;
            while ( cyc_count > 0 )
            begin
                @(posedge CLK_I) ;
                cyc_count = cyc_count - 1 ;
            end
        end

        if ( (end_blk === 0) && (return`CYC_RTY === 1) )
        begin
            wbm_low_level.end_cycle ;
            @(posedge CLK_I) ;
            wbm_low_level.start_cycle(cab, 1'b0, ok) ;
            if ( ok !== 1 )
            begin
                $display("*E, Failed to initialize cycle! Routine wb_block_read, Time %t ", $time) ;
                return`TB_ERROR_BIT = 1'b1 ;
                end_blk = 1 ;
            end
        end
    end //while

    wbm_low_level.end_cycle ;
    in_use = 0 ;
end //main
endtask //wb_block_read

endmodule

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  File name "wb_master32.v"                                   ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/ethmac/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Miha Dolenc (mihad@opencores.org)                     ////
////                                                              ////
////  All additional information is available in the README.pdf   ////
////  file.                                                       ////
////                                                              ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2002 Authors                                   ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: wb_master32.v,v $
// Revision 1.2  2002/09/13 12:29:14  mohor
// Headers changed.
//
// Revision 1.1  2002/09/13 11:57:20  mohor
// New testbench. Thanks to Tadej M - "The Spammer".
//
// Revision 1.1  2002/07/29 11:25:20  mihad
// Adding test bench for memory interface
//
// Revision 1.1  2002/02/01 13:39:43  mihad
// Initial testbench import. Still under development
//
//


`include "timescale.v"
module WB_MASTER32
(
    CLK_I,
    RST_I,
    TAG_I,
    TAG_O,
    ACK_I,
    ADR_O,
    CYC_O,
    DAT_I,
    DAT_O,
    ERR_I,
    RTY_I,
    SEL_O,
    STB_O,
    WE_O,
    CAB_O
);

    input	             CLK_I;
    input                    RST_I;
    input    `WB_TAG_TYPE    TAG_I;
    output   `WB_TAG_TYPE    TAG_O;
    input                    ACK_I;
    output   `WB_ADDR_TYPE   ADR_O;
    output                   CYC_O;
    input    `WB_DATA_TYPE   DAT_I;
    output   `WB_DATA_TYPE   DAT_O;
    input                    ERR_I;
    input                    RTY_I;
    output   `WB_SEL_TYPE    SEL_O;
    output                   STB_O;
    output                   WE_O;
    output                   CAB_O ;

    // period length
    real Tp ;

    reg    `WB_ADDR_TYPE   ADR_O;
    reg    `WB_SEL_TYPE    SEL_O;
    reg    `WB_TAG_TYPE    TAG_O;
    reg                    CYC_O;
    reg                    WE_O;
    reg    `WB_DATA_TYPE   DAT_O;
    reg                    CAB_O ;
    reg                    STB_O ;

    // variable used for indication on whether cycle was already started
    reg in_use ;

    // because of non-blocking assignments CYC_O is not sufficient indicator for cycle starting - this var is used in its place
    reg cycle_in_progress ;

    // same goes for CAB_O signal
    reg cab ;

    reg we ;

    task start_cycle ;
        input is_cab ;
        input write  ;
        output ok ;      // ok indicates to the caller that cycle was started succesfully - if not, caller must take appropriate action
    begin:main

        ok  = 1 ;

        // just check if valid value is provided for CAB_O signal (no x's or z's allowed)
        if ( (is_cab !== 1'b0) && (is_cab !== 1'b1) )
        begin
            $display("*E, invalid CAB value for cycle! Requested CAB_O value = %b, Time %t ", is_cab, $time) ;
            ok = 0 ;
            disable main ;
        end

        if ( (cycle_in_progress === 1) || (CYC_O === 1))
        begin
            // cycle was previously started - allow cycle to continue if CAB and WE values match
            $display("*W, cycle already in progress when start_cycle routine was called! Time %t ", $time) ;
            if ((CAB_O !== is_cab) || (WE_O !== write) )
            begin
                ok = 0 ;
                if ( is_cab === 1 )
                    $display("*E, cab cycle start attempted when non-cab cycle was in progress! Time %t", $time) ;
                else
                    $display("*E, non-cab cycle start attempted when cab cycle was in progress! Time %t", $time) ;

                if ( we === 1 )
                    $display("*E, write cycle start attempted when read cycle was in progress! Time %t", $time) ;
                else
                    $display("*E, read cycle start attempted when write cycle was in progress! Time %t", $time) ;

                disable main ;
            end
        end

        CYC_O <= #(Tp - `Tsetup) 1'b1 ;
        CAB_O <= #(Tp - `Tsetup) is_cab ;
        WE_O  <= #(Tp - `Tsetup) write ;

        // this non-blocking assignments are made to internal variables, so read and write tasks can be called immediately after cycle start task
        cycle_in_progress = 1'b1 ;
        cab               = is_cab ;
        we                = write ;
    end
    endtask //start_cycle

    task end_cycle ;
    begin
        if ( CYC_O !== 1'b1 )
            $display("*W, end_cycle routine called when CYC_O value was %b! Time %t ", CYC_O, $time) ;

        CYC_O <= #`Thold 1'b0 ;
        CAB_O <= #`Thold 1'b0 ;
        cycle_in_progress = 1'b0 ;
    end
    endtask //end_cycle

    task modify_cycle ;
    begin
        if ( CYC_O !== 1'b1 )
            $display("*W, modify_cycle routine called when CYC_O value was %b! Time %t ", CYC_O, $time) ;

        we = ~we ;
        WE_O <= #(Tp - `Tsetup) we ;
    end
    endtask //modify_cycle

    task wbm_read ;
        input  `READ_STIM_TYPE input_data ;
        inout `READ_RETURN_TYPE   output_data ;
        reg    `WB_ADDR_TYPE           address ;
        reg    `WB_DATA_TYPE           data ;
        reg    `WB_SEL_TYPE            sel ;
        reg    `WB_TAG_TYPE            tag ;
        integer                        num_of_cyc ;
    begin:main
        output_data`TB_ERROR_BIT = 1'b0 ;

        // check if task was called before previous call to read or write finished
        if ( in_use === 1 )
        begin
            $display("*E, wbm_read routine re-entered or called concurently with write routine! Time %t ", $time) ;
            output_data`TB_ERROR_BIT = 1'b1 ;
            disable main ;
        end

        if ( cycle_in_progress !== 1 )
        begin
            $display("*E, wbm_read routine called without start_cycle routine being called first! Time %t ", $time) ;
            output_data`TB_ERROR_BIT = 1'b1 ;
            disable main ;
        end

        if ( we !== 0 )
        begin
            $display("*E, wbm_read routine called after write cycle was started! Time %t ", $time) ;
            output_data`TB_ERROR_BIT = 1'b1 ;
            disable main ;
        end

        // this branch contains timing controls - claim the use of WISHBONE
        in_use = 1 ;

        num_of_cyc = `WAIT_FOR_RESPONSE ;

        // assign data outputs
        ADR_O      <= #(Tp - `Tsetup) input_data`READ_ADDRESS ;
        SEL_O      <= #(Tp - `Tsetup) input_data`READ_SEL ;
        TAG_O      <= #(Tp - `Tsetup) input_data`READ_TAG_STIM ;

        // assign control output
        STB_O      <= #(Tp - `Tsetup) 1'b1 ;

        output_data`CYC_ACK = 0 ;
        output_data`CYC_RTY = 0 ;
        output_data`CYC_ERR = 0 ;

        @(posedge CLK_I) ;
        output_data`CYC_ACK = ACK_I ;
        output_data`CYC_RTY = RTY_I ;
        output_data`CYC_ERR = ERR_I ;

        while ( (num_of_cyc > 0) && (output_data`CYC_RESPONSE === 0) )
        begin
	    @(posedge CLK_I) ;
	    output_data`CYC_ACK = ACK_I ;
	    output_data`CYC_RTY = RTY_I ;
	    output_data`CYC_ERR = ERR_I ;
	    num_of_cyc = num_of_cyc - 1 ;
	end

	output_data`READ_DATA    = DAT_I ;
	output_data`READ_TAG_RET = TAG_I ;

        if ( output_data`CYC_RESPONSE === 0 )
	begin

            $display("*W, Terminating read cycle because no response was received in %d cycles! Time %t ", `WAIT_FOR_RESPONSE, $time) ;
        end

        if ( output_data`CYC_ACK === 1 && output_data`CYC_RTY === 0 && output_data`CYC_ERR === 0 )
            output_data`CYC_ACTUAL_TRANSFER = output_data`CYC_ACTUAL_TRANSFER + 1 ;

        STB_O <= #`Thold 1'b0 ;
        ADR_O <= #`Thold {`WB_ADDR_WIDTH{1'bx}} ;
        SEL_O <= #`Thold {`WB_SEL_WIDTH{1'bx}} ;
        TAG_O <= #`Thold {`WB_TAG_WIDTH{1'bx}} ;

        in_use = 0 ;
    end
    endtask // wbm_read

    task wbm_write ;
        input  `WRITE_STIM_TYPE input_data ;
        inout  `WRITE_RETURN_TYPE   output_data ;
        reg    `WB_ADDR_TYPE        address ;
        reg    `WB_DATA_TYPE        data ;
        reg    `WB_SEL_TYPE         sel ;
        reg    `WB_TAG_TYPE         tag ;
        integer                     num_of_cyc ;
    begin:main
        output_data`TB_ERROR_BIT = 1'b0 ;

        // check if task was called before previous call to read or write finished
        if ( in_use === 1 )
        begin
            $display("*E, wbm_write routine re-entered or called concurently with read routine! Time %t ", $time) ;
            output_data`TB_ERROR_BIT = 1'b1 ;
            disable main ;
        end

        if ( cycle_in_progress !== 1 )
        begin
            $display("*E, wbm_write routine called without start_cycle routine being called first! Time %t ", $time) ;
            output_data`TB_ERROR_BIT = 1'b1 ;
            disable main ;
        end

        if ( we !== 1 )
        begin
            $display("*E, wbm_write routine after read cycle was started! Time %t ", $time) ;
            output_data`TB_ERROR_BIT = 1'b1 ;
            disable main ;
        end

        // this branch contains timing controls - claim the use of WISHBONE
        in_use = 1 ;

        num_of_cyc = `WAIT_FOR_RESPONSE ;

        ADR_O      <= #(Tp - `Tsetup) input_data`WRITE_ADDRESS ;
        DAT_O      <= #(Tp - `Tsetup) input_data`WRITE_DATA ;
        SEL_O      <= #(Tp - `Tsetup) input_data`WRITE_SEL ;
        TAG_O      <= #(Tp - `Tsetup) input_data`WRITE_TAG_STIM ;

        STB_O      <= #(Tp - `Tsetup) 1'b1 ;

        output_data`CYC_ACK = 0 ;
        output_data`CYC_RTY = 0 ;
        output_data`CYC_ERR = 0 ;

        @(posedge CLK_I) ;
        output_data`CYC_ACK = ACK_I ;
        output_data`CYC_RTY = RTY_I ;
        output_data`CYC_ERR = ERR_I ;

        while ( (num_of_cyc > 0) && (output_data`CYC_RESPONSE === 0) )
        begin
            @(posedge CLK_I) ;
            output_data`CYC_ACK = ACK_I ;
            output_data`CYC_RTY = RTY_I ;
            output_data`CYC_ERR = ERR_I ;
            num_of_cyc = num_of_cyc - 1 ;
        end

        output_data`WRITE_TAG_RET = TAG_I ;
        if ( output_data`CYC_RESPONSE === 0 )
        begin
            $display("*W, Terminating write cycle because no response was received in %d cycles! Time %t ", `WAIT_FOR_RESPONSE, $time) ;
        end

        if ( output_data`CYC_ACK === 1 && output_data`CYC_RTY === 0 && output_data`CYC_ERR === 0 )
            output_data`CYC_ACTUAL_TRANSFER = output_data`CYC_ACTUAL_TRANSFER + 1 ;

        ADR_O <= #`Thold {`WB_ADDR_WIDTH{1'bx}} ;
        DAT_O <= #`Thold {`WB_DATA_WIDTH{1'bx}} ;
        SEL_O <= #`Thold {`WB_SEL_WIDTH{1'bx}} ;
        TAG_O <= #`Thold {`WB_TAG_WIDTH{1'bx}} ;

        STB_O <= #`Thold 1'b0 ;

        in_use = 0 ;
    end
    endtask //wbm_write

    initial
    begin
        Tp = 1 / `WB_FREQ ;
        in_use = 0 ;
        cycle_in_progress = 0 ;
        cab = 0 ;
        ADR_O <= {`WB_ADDR_WIDTH{1'bx}} ;
        DAT_O <= {`WB_DATA_WIDTH{1'bx}} ;
        SEL_O <= {`WB_SEL_WIDTH{1'bx}} ;
        TAG_O <= {`WB_TAG_WIDTH{1'bx}} ;
        CYC_O <= 1'b0 ;
        STB_O <= 1'b0 ;
        CAB_O <= 1'b0 ;
        WE_O  <= 1'b0 ;
        if ( `Tsetup > Tp || `Thold >= Tp )
        begin
            $display("Either Tsetup or Thold values for WISHBONE BFMs are too large!") ;
            $stop ;
        end
    end

endmodule


//////////////////////////////////////////////////////////////////////
////                                                              ////
////  File name: wb_slave_behavioral.v                            ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/projects/ethmac/                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Tadej Markovic, tadej@opencores.org                   ////
////                                                              ////
////  All additional information is available in the README.txt   ////
////  file.                                                       ////
////                                                              ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2002 Tadej Markovic, tadej@opencores.org       ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: wb_slave_behavioral.v,v $
// Revision 1.2  2002/09/13 12:29:14  mohor
// Headers changed.
//
// Revision 1.1  2002/09/13 11:57:21  mohor
// New testbench. Thanks to Tadej M - "The Spammer".
//
// Revision 1.2  2002/03/06 09:10:56  mihad
// Added missing include statements
//
// Revision 1.1  2002/02/01 13:39:43  mihad
// Initial testbench import. Still under development
//
//

`include "timescale.v"

module WB_SLAVE_BEHAVIORAL
(
	CLK_I,
	RST_I,
	ACK_O,
	ADR_I,
	CYC_I,
	DAT_O,
	DAT_I,
	ERR_O,
	RTY_O,
	SEL_I,
	STB_I,
	WE_I,
	CAB_I
);

/*------------------------------------------------------------------------------------------------------
WISHBONE signals
------------------------------------------------------------------------------------------------------*/
input                   CLK_I;
input                   RST_I;
output                  ACK_O;
input   `WB_ADDR_TYPE   ADR_I;
input                   CYC_I;
output  `WB_DATA_TYPE   DAT_O;
input   `WB_DATA_TYPE   DAT_I;
output                  ERR_O;
output                  RTY_O;
input   `WB_SEL_TYPE    SEL_I;
input                   STB_I;
input                   WE_I;
input                   CAB_I;

reg     `WB_DATA_TYPE   DAT_O;

/*------------------------------------------------------------------------------------------------------
Asynchronous dual-port RAM signals for storing and fetching the data
------------------------------------------------------------------------------------------------------*/
//reg     `WB_DATA_TYPE wb_memory [0:16777215]; // WB memory - 24 addresses connected - 2 LSB not used
reg     `WB_DATA_TYPE wb_memory [0:1048575]; // WB memory - 20 addresses connected - 2 LSB not used
reg     `WB_DATA_TYPE mem_wr_data_out;
reg     `WB_DATA_TYPE mem_rd_data_in;

/*------------------------------------------------------------------------------------------------------
Maximum values for WAIT and RETRY counters and which response !!!
------------------------------------------------------------------------------------------------------*/
reg     [2:0]  a_e_r_resp; // tells with which cycle_termination_signal must wb_slave respond !
reg     [3:0]  wait_cyc;
reg     [7:0]  max_retry;

// assign registers to default state while in reset
always@(RST_I)
begin
  if (RST_I)
  begin
    a_e_r_resp <= 3'b000; // do not respond
    wait_cyc   <= 4'b0; // no wait cycles
    max_retry  <= 8'h0; // no retries
  end
end //reset

task cycle_response;
  input [2:0]  ack_err_rty_resp; // acknowledge, error or retry response input flags
  input [3:0]  wait_cycles; // if wait cycles before each data termination cycle (ack, err or rty)
  input [7:0]  retry_cycles; // noumber of retry cycles before acknowledge cycle
begin
  // assign values
  a_e_r_resp <= #1 ack_err_rty_resp;
  wait_cyc   <= #1 wait_cycles;
  max_retry  <= #1 retry_cycles;
end
endtask // cycle_response

/*------------------------------------------------------------------------------------------------------
Tasks for writing and reading to and from memory !!!
------------------------------------------------------------------------------------------------------*/
reg    `WB_ADDR_TYPE task_wr_adr_i;
reg    `WB_ADDR_TYPE task_rd_adr_i;
reg    `WB_DATA_TYPE task_dat_i;
reg    `WB_DATA_TYPE task_dat_o;
reg    `WB_SEL_TYPE  task_sel_i;
reg                  task_wr_data;
reg                  task_data_written;
reg    `WB_DATA_TYPE task_mem_wr_data;

// write to memory
task wr_mem;
  input  `WB_ADDR_TYPE adr_i;
  input  `WB_DATA_TYPE dat_i;
  input  `WB_SEL_TYPE  sel_i;
begin
  task_data_written = 0;
  task_wr_adr_i = adr_i;
  task_dat_i = dat_i;
  task_sel_i = sel_i;
  task_wr_data = 1;
  wait(task_data_written);
  task_wr_data = 0;
end
endtask

// read from memory
task rd_mem;
  input  `WB_ADDR_TYPE adr_i;
  output `WB_DATA_TYPE dat_o;
  input  `WB_SEL_TYPE  sel_i;
begin
  task_rd_adr_i = adr_i;
  task_sel_i = sel_i;
  #1;
  dat_o = task_dat_o;
end
endtask

/*------------------------------------------------------------------------------------------------------
Internal signals and logic
------------------------------------------------------------------------------------------------------*/
reg            calc_ack;
reg            calc_err;
reg            calc_rty;

reg     [7:0]  retry_cnt;
reg     [7:0]  retry_num;
reg            retry_expired;

// Retry counter
always@(posedge RST_I or posedge CLK_I)
begin
  if (RST_I)
    retry_cnt <= #1 8'h00;
  else
  begin
    if (calc_ack || calc_err)
      retry_cnt <= #1 8'h00;
    else if (calc_rty)
      retry_cnt <= #1 retry_num;
  end
end

always@(retry_cnt or max_retry)
begin
  if (retry_cnt < max_retry)
  begin
    retry_num = retry_cnt + 1'b1;
    retry_expired = 1'b0;
  end
  else
  begin
    retry_num = retry_cnt;
    retry_expired = 1'b1;
  end
end

reg     [3:0]  wait_cnt;
reg     [3:0]  wait_num;
reg            wait_expired;

// Wait counter
always@(posedge RST_I or posedge CLK_I)
begin
  if (RST_I)
    wait_cnt <= #1 4'h0;
  else
  begin
    if (wait_expired || ~STB_I)
      wait_cnt <= #1 4'h0;
    else
      wait_cnt <= #1 wait_num;
  end
end

always@(wait_cnt or wait_cyc or STB_I or a_e_r_resp or retry_expired)
begin
  if ((wait_cyc > 0) && (STB_I))
  begin
    if (wait_cnt < wait_cyc) // 4'h2)
    begin
      wait_num = wait_cnt + 1'b1;
      wait_expired = 1'b0;
      calc_ack = 1'b0;
      calc_err = 1'b0;
      calc_rty = 1'b0;
    end
    else
    begin
      wait_num = wait_cnt;
      wait_expired = 1'b1;
      if (a_e_r_resp == 3'b100)
      begin
        calc_ack = 1'b1;
        calc_err = 1'b0;
        calc_rty = 1'b0;
      end
      else
      if (a_e_r_resp == 3'b010)
      begin
        calc_ack = 1'b0;
        calc_err = 1'b1;
        calc_rty = 1'b0;
      end
      else
      if (a_e_r_resp == 3'b001)
      begin
        calc_err = 1'b0;
        if (retry_expired)
        begin
          calc_ack = 1'b1;
          calc_rty = 1'b0;
        end
        else
        begin
          calc_ack = 1'b0;
          calc_rty = 1'b1;
        end
      end
      else
      begin
        calc_ack = 1'b0;
        calc_err = 1'b0;
        calc_rty = 1'b0;
      end
    end
  end
  else
  if ((wait_cyc == 0) && (STB_I))
  begin
    wait_num = 2'h0;
    wait_expired = 1'b1;
    if (a_e_r_resp == 3'b100)
    begin
      calc_ack = 1'b1;
      calc_err = 1'b0;
      calc_rty = 1'b0;
    end
    else if (a_e_r_resp == 3'b010)
    begin
      calc_ack = 1'b0;
      calc_err = 1'b1;
      calc_rty = 1'b0;
    end
    else if (a_e_r_resp == 3'b001)
    begin
      calc_err = 1'b0;
      if (retry_expired)
      begin
        calc_ack = 1'b1;
        calc_rty = 1'b0;
      end
      else
      begin
        calc_ack = 1'b0;
        calc_rty = 1'b1;
      end
    end
    else
    begin
      calc_ack = 1'b0;
      calc_err = 1'b0;
      calc_rty = 1'b0;
    end
  end
  else
  begin
    wait_num = 2'h0;
    wait_expired = 1'b0;
    calc_ack = 1'b0;
    calc_err = 1'b0;
    calc_rty = 1'b0;
  end
end

wire rd_sel = (CYC_I && STB_I && ~WE_I);
wire wr_sel = (CYC_I && STB_I && WE_I);

// Generate cycle termination signals
assign ACK_O = calc_ack && STB_I;
assign ERR_O = calc_err && STB_I;
assign RTY_O = calc_rty && STB_I;

// Assign address to asynchronous memory
always@(RST_I or ADR_I)
begin
  if (RST_I) // this is added because at start of test bench we need address change in order to get data!
  begin
    #1 mem_rd_data_in = `WB_DATA_WIDTH'hxxxx_xxxx;
  end
  else
  begin
//    #1 mem_rd_data_in = wb_memory[ADR_I[25:2]];
    #1 mem_rd_data_in = wb_memory[ADR_I[21:2]];
  end
end

// Data input/output interface
always@(rd_sel or mem_rd_data_in or RST_I)
begin
  if (RST_I)
    DAT_O <=#1 `WB_DATA_WIDTH'hxxxx_xxxx;	// assign outputs to unknown state while in reset
  else if (rd_sel)
    DAT_O <=#1 mem_rd_data_in;
  else
    DAT_O <=#1 `WB_DATA_WIDTH'hxxxx_xxxx;
end


always@(RST_I or task_rd_adr_i)
begin
  if (RST_I)
    task_dat_o = `WB_DATA_WIDTH'hxxxx_xxxx;
  else
    task_dat_o = wb_memory[task_rd_adr_i[21:2]];
end
always@(CLK_I or wr_sel or task_wr_data or ADR_I or task_wr_adr_i or 
        mem_wr_data_out or DAT_I or task_mem_wr_data or task_dat_i or
        SEL_I or task_sel_i)
begin
  if (task_wr_data)
  begin
    task_mem_wr_data = wb_memory[task_wr_adr_i[21:2]];

    if (task_sel_i[3])
      task_mem_wr_data[31:24] = task_dat_i[31:24];
    if (task_sel_i[2])
      task_mem_wr_data[23:16] = task_dat_i[23:16];
    if (task_sel_i[1])
      task_mem_wr_data[15: 8] = task_dat_i[15: 8];
    if (task_sel_i[0])
      task_mem_wr_data[ 7: 0] = task_dat_i[ 7: 0];

    wb_memory[task_wr_adr_i[21:2]] = task_mem_wr_data; // write data
    task_data_written = 1;
  end
  else if (wr_sel && CLK_I)
  begin
//    mem_wr_data_out = wb_memory[ADR_I[25:2]]; // if no SEL_I is active, old value will be written
    mem_wr_data_out = wb_memory[ADR_I[21:2]]; // if no SEL_I is active, old value will be written

    if (SEL_I[3])
      mem_wr_data_out[31:24] = DAT_I[31:24];
    if (SEL_I[2])
      mem_wr_data_out[23:16] = DAT_I[23:16];
    if (SEL_I[1])
      mem_wr_data_out[15: 8] = DAT_I[15: 8];
    if (SEL_I[0])
      mem_wr_data_out[ 7: 0] = DAT_I[ 7: 0];

//    wb_memory[ADR_I[25:2]]  <= mem_wr_data_out; // write data
    wb_memory[ADR_I[21:2]]      = mem_wr_data_out; // write data
  end
end

endmodule

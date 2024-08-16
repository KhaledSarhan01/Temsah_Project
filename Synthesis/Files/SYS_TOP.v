/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Aug 17 01:13:14 2024
/////////////////////////////////////////////////////////////


module SYS_CONTRL_DATA_WIDTH8_ALU_FUNC_WIDTH4_RegFile_ADDR_WIDTH4 ( CLK, RST, 
        ALU_OUT, ALU_DATA_VALID, ALU_FUNC, ALU_EN, ALU_CLK_EN, RegFile_ADDRESS, 
        RegFile_WrEn, RegFile_RdEn, RegFile_WrData, RegFile_RdData, 
        RegFile_DATA_VAILD, RX_DATA_VALID, RX_DATA_IN, FIFO_WR, FIFO_FULL, 
        TX_DATA_OUT );
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUNC;
  output [3:0] RegFile_ADDRESS;
  output [7:0] RegFile_WrData;
  input [7:0] RegFile_RdData;
  input [7:0] RX_DATA_IN;
  output [7:0] TX_DATA_OUT;
  input CLK, RST, ALU_DATA_VALID, RegFile_DATA_VAILD, RX_DATA_VALID, FIFO_FULL;
  output ALU_EN, ALU_CLK_EN, RegFile_WrEn, RegFile_RdEn, FIFO_WR;
  wire   n128, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n13,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n124, n125, n126, n127;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [15:0] ALU_Result;

  DFFRQX2M \ALU_Result_reg[15]  ( .D(n95), .CK(CLK), .RN(n17), .Q(
        ALU_Result[15]) );
  DFFRQX2M \ALU_Result_reg[14]  ( .D(n96), .CK(CLK), .RN(n17), .Q(
        ALU_Result[14]) );
  DFFRQX2M \ALU_Result_reg[13]  ( .D(n97), .CK(CLK), .RN(n17), .Q(
        ALU_Result[13]) );
  DFFRQX2M \ALU_Result_reg[12]  ( .D(n98), .CK(CLK), .RN(n17), .Q(
        ALU_Result[12]) );
  DFFRQX2M \ALU_Result_reg[11]  ( .D(n99), .CK(CLK), .RN(n17), .Q(
        ALU_Result[11]) );
  DFFRQX2M \ALU_Result_reg[10]  ( .D(n100), .CK(CLK), .RN(n17), .Q(
        ALU_Result[10]) );
  DFFRQX2M \ALU_Result_reg[9]  ( .D(n101), .CK(CLK), .RN(n17), .Q(
        ALU_Result[9]) );
  DFFRQX2M \ALU_Result_reg[8]  ( .D(n102), .CK(CLK), .RN(n17), .Q(
        ALU_Result[8]) );
  DFFRQX2M \ALU_Result_reg[7]  ( .D(n103), .CK(CLK), .RN(n17), .Q(
        ALU_Result[7]) );
  DFFRQX2M \ALU_Result_reg[6]  ( .D(n104), .CK(CLK), .RN(n17), .Q(
        ALU_Result[6]) );
  DFFRQX2M \ALU_Result_reg[5]  ( .D(n105), .CK(CLK), .RN(n17), .Q(
        ALU_Result[5]) );
  DFFRQX2M \ALU_Result_reg[4]  ( .D(n106), .CK(CLK), .RN(n17), .Q(
        ALU_Result[4]) );
  DFFRQX2M \ALU_Result_reg[3]  ( .D(n107), .CK(CLK), .RN(n17), .Q(
        ALU_Result[3]) );
  DFFRQX2M \ALU_Result_reg[2]  ( .D(n108), .CK(CLK), .RN(n17), .Q(
        ALU_Result[2]) );
  DFFRQX2M \ALU_Result_reg[1]  ( .D(n109), .CK(CLK), .RN(n17), .Q(
        ALU_Result[1]) );
  DFFRQX2M \ALU_Result_reg[0]  ( .D(n110), .CK(CLK), .RN(n17), .Q(
        ALU_Result[0]) );
  DFFRX1M \RX_Data_Register_reg[7]  ( .D(n111), .CK(CLK), .RN(n16), .QN(n1) );
  DFFRX1M \RX_Data_Register_reg[6]  ( .D(n112), .CK(CLK), .RN(n16), .QN(n2) );
  DFFRX1M \RX_Data_Register_reg[5]  ( .D(n113), .CK(CLK), .RN(n16), .QN(n3) );
  DFFRX1M \RX_Data_Register_reg[4]  ( .D(n114), .CK(CLK), .RN(n16), .QN(n4) );
  DFFRX1M \RegFile_ADDR_Register_reg[0]  ( .D(n122), .CK(CLK), .RN(n16), .QN(
        n12) );
  DFFRX1M \RegFile_ADDR_Register_reg[2]  ( .D(n120), .CK(CLK), .RN(n16), .QN(
        n10) );
  DFFRX1M \RegFile_ADDR_Register_reg[3]  ( .D(n119), .CK(CLK), .RN(n16), .QN(
        n9) );
  DFFRX1M \RegFile_ADDR_Register_reg[1]  ( .D(n121), .CK(CLK), .RN(n16), .QN(
        n11) );
  DFFRX1M \RX_Data_Register_reg[0]  ( .D(n118), .CK(CLK), .RN(n16), .QN(n8) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(n17), .Q(
        current_state[3]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n18), .Q(
        current_state[1]) );
  DFFRX1M \RX_Data_Register_reg[3]  ( .D(n115), .CK(CLK), .RN(n16), .QN(n5) );
  DFFRX1M \RX_Data_Register_reg[2]  ( .D(n116), .CK(CLK), .RN(n16), .QN(n6) );
  DFFRX1M \RX_Data_Register_reg[1]  ( .D(n117), .CK(CLK), .RN(n16), .QN(n7) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n18), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(n19), .CK(CLK), .RN(n17), .Q(
        current_state[2]) );
  NOR2X2M U3 ( .A(n94), .B(n10), .Y(RegFile_ADDRESS[2]) );
  NOR2X4M U4 ( .A(n94), .B(n9), .Y(RegFile_ADDRESS[3]) );
  NOR2X2M U5 ( .A(n13), .B(n7), .Y(ALU_FUNC[1]) );
  NOR2X2M U6 ( .A(n13), .B(n5), .Y(ALU_FUNC[3]) );
  NOR2X2M U7 ( .A(n13), .B(n6), .Y(ALU_FUNC[2]) );
  INVX2M U8 ( .A(ALU_EN), .Y(n13) );
  CLKBUFX2M U9 ( .A(n128), .Y(ALU_EN) );
  CLKBUFX2M U10 ( .A(n128), .Y(n15) );
  INVX2M U11 ( .A(n40), .Y(RegFile_RdEn) );
  INVX2M U12 ( .A(n60), .Y(n20) );
  INVX2M U13 ( .A(n77), .Y(n27) );
  NOR3X2M U14 ( .A(n125), .B(n28), .C(n126), .Y(n128) );
  NOR2X2M U15 ( .A(n126), .B(n124), .Y(n93) );
  NAND2X2M U16 ( .A(n93), .B(n65), .Y(n79) );
  AND2X2M U17 ( .A(n91), .B(n79), .Y(n94) );
  INVX2M U18 ( .A(n33), .Y(n125) );
  AND3X2M U19 ( .A(n47), .B(n39), .C(n91), .Y(n92) );
  AOI211X2M U20 ( .A0(n56), .A1(n57), .B0(n49), .C0(n36), .Y(n55) );
  NOR2X2M U21 ( .A(n124), .B(n127), .Y(n76) );
  NAND2BX2M U22 ( .AN(n68), .B(n40), .Y(n66) );
  OAI22X1M U23 ( .A0(n13), .A1(n24), .B0(n20), .B1(n50), .Y(n48) );
  NOR2BX2M U24 ( .AN(n56), .B(n57), .Y(n60) );
  NAND2X2M U25 ( .A(n93), .B(n78), .Y(n40) );
  OAI211X2M U26 ( .A0(n20), .A1(n29), .B0(n30), .C0(n31), .Y(next_state[3]) );
  NOR3BX2M U27 ( .AN(n32), .B(n33), .C(n34), .Y(n31) );
  NAND2X2M U28 ( .A(n51), .B(n46), .Y(n77) );
  NOR2BX2M U29 ( .AN(n93), .B(n78), .Y(FIFO_WR) );
  NAND3X2M U30 ( .A(n28), .B(n126), .C(n76), .Y(n32) );
  NAND2BX2M U31 ( .AN(n34), .B(n91), .Y(RegFile_WrEn) );
  INVX2M U32 ( .A(n61), .Y(n25) );
  AND3X2M U33 ( .A(n13), .B(n41), .C(n42), .Y(n30) );
  AOI2BB1X2M U34 ( .A0N(n43), .A1N(n20), .B0(n25), .Y(n42) );
  AND3X2M U35 ( .A(n65), .B(n124), .C(n126), .Y(n56) );
  AND2X2M U36 ( .A(n32), .B(n41), .Y(n63) );
  NOR3X2M U37 ( .A(n127), .B(n93), .C(n28), .Y(ALU_CLK_EN) );
  CLKBUFX2M U38 ( .A(RST), .Y(n17) );
  CLKBUFX2M U39 ( .A(RST), .Y(n16) );
  CLKBUFX2M U40 ( .A(RST), .Y(n18) );
  NOR2X2M U41 ( .A(n28), .B(current_state[3]), .Y(n65) );
  NOR2X2M U42 ( .A(n127), .B(current_state[1]), .Y(n33) );
  INVX2M U43 ( .A(current_state[2]), .Y(n126) );
  INVX2M U44 ( .A(current_state[0]), .Y(n28) );
  NOR2X2M U45 ( .A(n13), .B(n8), .Y(ALU_FUNC[0]) );
  INVX2M U46 ( .A(current_state[1]), .Y(n124) );
  INVX2M U47 ( .A(current_state[3]), .Y(n127) );
  OAI21X2M U48 ( .A0(n94), .A1(n12), .B0(n39), .Y(RegFile_ADDRESS[0]) );
  NOR2X2M U49 ( .A(n94), .B(n11), .Y(RegFile_ADDRESS[1]) );
  OAI211X2M U50 ( .A0(current_state[0]), .A1(n125), .B0(n38), .C0(n63), .Y(n68) );
  OAI31X1M U51 ( .A0(n58), .A1(n20), .A2(n59), .B0(n51), .Y(n36) );
  NAND2X2M U52 ( .A(RX_DATA_IN[4]), .B(RX_DATA_IN[0]), .Y(n58) );
  AND3X2M U53 ( .A(n90), .B(n125), .C(current_state[2]), .Y(n80) );
  OAI21X2M U54 ( .A0(n28), .A1(n124), .B0(n127), .Y(n90) );
  NOR2X2M U55 ( .A(current_state[3]), .B(current_state[0]), .Y(n78) );
  NOR4X1M U56 ( .A(n21), .B(n22), .C(RX_DATA_IN[1]), .D(RX_DATA_IN[5]), .Y(n64) );
  NOR3X2M U57 ( .A(n28), .B(current_state[2]), .C(n127), .Y(n34) );
  OAI211X2M U58 ( .A0(n8), .A1(n79), .B0(n80), .C0(n89), .Y(TX_DATA_OUT[0]) );
  AOI22X1M U59 ( .A0(n25), .A1(ALU_Result[0]), .B0(n82), .B1(ALU_Result[8]), 
        .Y(n89) );
  OAI211X2M U60 ( .A0(n7), .A1(n79), .B0(n80), .C0(n88), .Y(TX_DATA_OUT[1]) );
  AOI22X1M U61 ( .A0(n25), .A1(ALU_Result[1]), .B0(n82), .B1(ALU_Result[9]), 
        .Y(n88) );
  OAI211X2M U62 ( .A0(n6), .A1(n79), .B0(n80), .C0(n87), .Y(TX_DATA_OUT[2]) );
  AOI22X1M U63 ( .A0(n25), .A1(ALU_Result[2]), .B0(n82), .B1(ALU_Result[10]), 
        .Y(n87) );
  OAI211X2M U64 ( .A0(n5), .A1(n79), .B0(n80), .C0(n86), .Y(TX_DATA_OUT[3]) );
  AOI22X1M U65 ( .A0(n25), .A1(ALU_Result[3]), .B0(n82), .B1(ALU_Result[11]), 
        .Y(n86) );
  OAI211X2M U66 ( .A0(n4), .A1(n79), .B0(n80), .C0(n85), .Y(TX_DATA_OUT[4]) );
  AOI22X1M U67 ( .A0(n25), .A1(ALU_Result[4]), .B0(n82), .B1(ALU_Result[12]), 
        .Y(n85) );
  OAI211X2M U68 ( .A0(n3), .A1(n79), .B0(n80), .C0(n84), .Y(TX_DATA_OUT[5]) );
  AOI22X1M U69 ( .A0(n25), .A1(ALU_Result[5]), .B0(n82), .B1(ALU_Result[13]), 
        .Y(n84) );
  OAI211X2M U70 ( .A0(n2), .A1(n79), .B0(n80), .C0(n83), .Y(TX_DATA_OUT[6]) );
  AOI22X1M U71 ( .A0(n25), .A1(ALU_Result[6]), .B0(n82), .B1(ALU_Result[14]), 
        .Y(n83) );
  OAI211X2M U72 ( .A0(n1), .A1(n79), .B0(n80), .C0(n81), .Y(TX_DATA_OUT[7]) );
  AOI22X1M U73 ( .A0(n25), .A1(ALU_Result[7]), .B0(n82), .B1(ALU_Result[15]), 
        .Y(n81) );
  NOR2X2M U74 ( .A(n92), .B(n8), .Y(RegFile_WrData[0]) );
  NOR2X2M U75 ( .A(n92), .B(n4), .Y(RegFile_WrData[4]) );
  NOR2X2M U76 ( .A(n92), .B(n3), .Y(RegFile_WrData[5]) );
  NOR2X2M U77 ( .A(n92), .B(n1), .Y(RegFile_WrData[7]) );
  NAND3BX2M U78 ( .AN(RX_DATA_IN[4]), .B(n23), .C(n64), .Y(n29) );
  NOR2X2M U79 ( .A(n92), .B(n2), .Y(RegFile_WrData[6]) );
  OAI22X1M U80 ( .A0(n27), .A1(n22), .B0(n77), .B1(n10), .Y(n120) );
  OAI22X1M U81 ( .A0(n27), .A1(n23), .B0(n77), .B1(n12), .Y(n122) );
  NOR2X2M U82 ( .A(n92), .B(n7), .Y(RegFile_WrData[1]) );
  NOR2X2M U83 ( .A(n92), .B(n6), .Y(RegFile_WrData[2]) );
  NOR2X2M U84 ( .A(n92), .B(n5), .Y(RegFile_WrData[3]) );
  OAI21X2M U85 ( .A0(RX_DATA_VALID), .A1(n38), .B0(n61), .Y(n49) );
  NAND3X2M U86 ( .A(current_state[2]), .B(n124), .C(n65), .Y(n51) );
  OAI21X2M U87 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n63), .Y(
        n62) );
  NAND3X2M U88 ( .A(current_state[2]), .B(n124), .C(n78), .Y(n91) );
  NAND3X2M U89 ( .A(n76), .B(n28), .C(current_state[2]), .Y(n61) );
  NAND4X2M U90 ( .A(RX_DATA_IN[5]), .B(RX_DATA_IN[1]), .C(n22), .D(n21), .Y(
        n59) );
  NAND3X2M U91 ( .A(current_state[1]), .B(n126), .C(n65), .Y(n38) );
  OAI2BB2X1M U92 ( .B0(n77), .B1(n11), .A0N(n77), .A1N(RX_DATA_IN[1]), .Y(n121) );
  OAI2BB2X1M U93 ( .B0(n77), .B1(n9), .A0N(n77), .A1N(RX_DATA_IN[3]), .Y(n119)
         );
  OAI21X2M U94 ( .A0(n66), .A1(n8), .B0(n75), .Y(n118) );
  AOI22X1M U95 ( .A0(RX_DATA_IN[0]), .A1(n68), .B0(RegFile_RdData[0]), .B1(
        RegFile_RdEn), .Y(n75) );
  OAI21X2M U96 ( .A0(n66), .A1(n7), .B0(n74), .Y(n117) );
  AOI22X1M U97 ( .A0(RX_DATA_IN[1]), .A1(n68), .B0(RegFile_RdData[1]), .B1(
        RegFile_RdEn), .Y(n74) );
  OAI21X2M U98 ( .A0(n66), .A1(n6), .B0(n73), .Y(n116) );
  AOI22X1M U99 ( .A0(RX_DATA_IN[2]), .A1(n68), .B0(RegFile_RdData[2]), .B1(
        RegFile_RdEn), .Y(n73) );
  OAI21X2M U100 ( .A0(n66), .A1(n5), .B0(n72), .Y(n115) );
  AOI22X1M U101 ( .A0(RX_DATA_IN[3]), .A1(n68), .B0(RegFile_RdData[3]), .B1(
        RegFile_RdEn), .Y(n72) );
  OAI21X2M U102 ( .A0(n66), .A1(n4), .B0(n71), .Y(n114) );
  AOI22X1M U103 ( .A0(RX_DATA_IN[4]), .A1(n68), .B0(RegFile_RdData[4]), .B1(
        RegFile_RdEn), .Y(n71) );
  OAI21X2M U104 ( .A0(n66), .A1(n3), .B0(n70), .Y(n113) );
  AOI22X1M U105 ( .A0(RX_DATA_IN[5]), .A1(n68), .B0(RegFile_RdData[5]), .B1(
        RegFile_RdEn), .Y(n70) );
  OAI21X2M U106 ( .A0(n66), .A1(n2), .B0(n69), .Y(n112) );
  AOI22X1M U107 ( .A0(RX_DATA_IN[6]), .A1(n68), .B0(RegFile_RdData[6]), .B1(
        RegFile_RdEn), .Y(n69) );
  OAI21X2M U108 ( .A0(n66), .A1(n1), .B0(n67), .Y(n111) );
  NAND3X2M U109 ( .A(current_state[1]), .B(n126), .C(n78), .Y(n46) );
  NAND3X2M U110 ( .A(current_state[0]), .B(n126), .C(n76), .Y(n39) );
  NAND3X2M U111 ( .A(RX_DATA_IN[0]), .B(n64), .C(RX_DATA_IN[4]), .Y(n43) );
  NAND2X2M U112 ( .A(RX_DATA_IN[7]), .B(RX_DATA_IN[3]), .Y(n57) );
  NAND2X2M U113 ( .A(n44), .B(n45), .Y(next_state[1]) );
  AND4X2M U114 ( .A(n46), .B(n32), .C(n40), .D(n47), .Y(n45) );
  AOI211X2M U115 ( .A0(n26), .A1(RX_DATA_VALID), .B0(n48), .C0(n49), .Y(n44)
         );
  INVX2M U116 ( .A(n51), .Y(n26) );
  NAND3X2M U117 ( .A(n33), .B(n28), .C(current_state[2]), .Y(n41) );
  AND2X2M U118 ( .A(n76), .B(current_state[0]), .Y(n82) );
  NAND3X2M U119 ( .A(current_state[0]), .B(n126), .C(n33), .Y(n47) );
  NAND4X2M U120 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(next_state[0]) );
  AOI22X1M U121 ( .A0(RX_DATA_VALID), .A1(n62), .B0(ALU_EN), .B1(n24), .Y(n54)
         );
  NAND3BX2M U122 ( .AN(FIFO_FULL), .B(RegFile_RdEn), .C(RegFile_DATA_VAILD), 
        .Y(n52) );
  NAND4X2M U123 ( .A(n60), .B(n50), .C(n43), .D(n29), .Y(n53) );
  INVX2M U124 ( .A(RX_DATA_IN[2]), .Y(n22) );
  OR3X2M U125 ( .A(n59), .B(RX_DATA_IN[0]), .C(RX_DATA_IN[4]), .Y(n50) );
  INVX2M U126 ( .A(RX_DATA_IN[6]), .Y(n21) );
  INVX2M U127 ( .A(n35), .Y(n19) );
  NOR3BX2M U128 ( .AN(n30), .B(n36), .C(n37), .Y(n35) );
  OAI2B11X2M U129 ( .A1N(RX_DATA_VALID), .A0(n38), .B0(n39), .C0(n40), .Y(n37)
         );
  AO22X1M U130 ( .A0(n13), .A1(ALU_Result[0]), .B0(ALU_OUT[0]), .B1(ALU_EN), 
        .Y(n110) );
  AO22X1M U131 ( .A0(n13), .A1(ALU_Result[1]), .B0(ALU_OUT[1]), .B1(n15), .Y(
        n109) );
  AO22X1M U132 ( .A0(n13), .A1(ALU_Result[2]), .B0(ALU_OUT[2]), .B1(n15), .Y(
        n108) );
  AO22X1M U133 ( .A0(n13), .A1(ALU_Result[3]), .B0(ALU_OUT[3]), .B1(n15), .Y(
        n107) );
  AO22X1M U134 ( .A0(n13), .A1(ALU_Result[4]), .B0(ALU_OUT[4]), .B1(n15), .Y(
        n106) );
  AO22X1M U135 ( .A0(n13), .A1(ALU_Result[5]), .B0(ALU_OUT[5]), .B1(n15), .Y(
        n105) );
  AO22X1M U136 ( .A0(n13), .A1(ALU_Result[6]), .B0(ALU_OUT[6]), .B1(n15), .Y(
        n104) );
  AO22X1M U137 ( .A0(n13), .A1(ALU_Result[7]), .B0(ALU_OUT[7]), .B1(n15), .Y(
        n103) );
  AO22X1M U138 ( .A0(n13), .A1(ALU_Result[8]), .B0(ALU_OUT[8]), .B1(n15), .Y(
        n102) );
  AO22X1M U139 ( .A0(n13), .A1(ALU_Result[9]), .B0(ALU_OUT[9]), .B1(n15), .Y(
        n101) );
  AO22X1M U140 ( .A0(n13), .A1(ALU_Result[10]), .B0(ALU_OUT[10]), .B1(n15), 
        .Y(n100) );
  AO22X1M U141 ( .A0(n13), .A1(ALU_Result[11]), .B0(ALU_OUT[11]), .B1(n15), 
        .Y(n99) );
  AO22X1M U142 ( .A0(n13), .A1(ALU_Result[12]), .B0(ALU_OUT[12]), .B1(n15), 
        .Y(n98) );
  AO22X1M U143 ( .A0(n13), .A1(ALU_Result[13]), .B0(ALU_OUT[13]), .B1(n15), 
        .Y(n97) );
  AO22X1M U144 ( .A0(n13), .A1(ALU_Result[14]), .B0(ALU_OUT[14]), .B1(n15), 
        .Y(n96) );
  AO22X1M U145 ( .A0(n13), .A1(ALU_Result[15]), .B0(ALU_OUT[15]), .B1(ALU_EN), 
        .Y(n95) );
  INVX2M U146 ( .A(RX_DATA_IN[0]), .Y(n23) );
  INVX2M U147 ( .A(ALU_DATA_VALID), .Y(n24) );
  AOI22X1M U148 ( .A0(RX_DATA_IN[7]), .A1(n68), .B0(RegFile_RdData[7]), .B1(
        RegFile_RdEn), .Y(n67) );
endmodule


module RegFile_DATA_WIDTH8_MEM_SIZE16_ADDR_WIDTH4 ( CLK, RST, WrData, RdData, 
        Address, WR_En, RD_EN, RdData_Vaild, REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  output [7:0] RdData;
  input [3:0] Address;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WR_En, RD_EN;
  output RdData_Vaild;
  wire   N10, N11, N12, N13, \Register[15][7] , \Register[15][6] ,
         \Register[15][5] , \Register[15][4] , \Register[15][3] ,
         \Register[15][2] , \Register[15][1] , \Register[15][0] ,
         \Register[14][7] , \Register[14][6] , \Register[14][5] ,
         \Register[14][4] , \Register[14][3] , \Register[14][2] ,
         \Register[14][1] , \Register[14][0] , \Register[13][7] ,
         \Register[13][6] , \Register[13][5] , \Register[13][4] ,
         \Register[13][3] , \Register[13][2] , \Register[13][1] ,
         \Register[13][0] , \Register[12][7] , \Register[12][6] ,
         \Register[12][5] , \Register[12][4] , \Register[12][3] ,
         \Register[12][2] , \Register[12][1] , \Register[12][0] ,
         \Register[11][7] , \Register[11][6] , \Register[11][5] ,
         \Register[11][4] , \Register[11][3] , \Register[11][2] ,
         \Register[11][1] , \Register[11][0] , \Register[10][7] ,
         \Register[10][6] , \Register[10][5] , \Register[10][4] ,
         \Register[10][3] , \Register[10][2] , \Register[10][1] ,
         \Register[10][0] , \Register[9][7] , \Register[9][6] ,
         \Register[9][5] , \Register[9][4] , \Register[9][3] ,
         \Register[9][2] , \Register[9][1] , \Register[9][0] ,
         \Register[8][7] , \Register[8][6] , \Register[8][5] ,
         \Register[8][4] , \Register[8][3] , \Register[8][2] ,
         \Register[8][1] , \Register[8][0] , \Register[7][7] ,
         \Register[7][6] , \Register[7][5] , \Register[7][4] ,
         \Register[7][3] , \Register[7][2] , \Register[7][1] ,
         \Register[7][0] , \Register[6][7] , \Register[6][6] ,
         \Register[6][5] , \Register[6][4] , \Register[6][3] ,
         \Register[6][2] , \Register[6][1] , \Register[6][0] ,
         \Register[5][7] , \Register[5][6] , \Register[5][5] ,
         \Register[5][4] , \Register[5][3] , \Register[5][2] ,
         \Register[5][1] , \Register[5][0] , \Register[4][7] ,
         \Register[4][6] , \Register[4][5] , \Register[4][4] ,
         \Register[4][3] , \Register[4][2] , \Register[4][1] ,
         \Register[4][0] , N35, N36, N37, N38, N39, N40, N41, N42, N59, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];

  DFFSQX2M \Register_reg[2][7]  ( .D(n72), .CK(CLK), .SN(RST), .Q(REG2[7]) );
  DFFSQX2M \Register_reg[2][0]  ( .D(n65), .CK(CLK), .SN(n224), .Q(REG2[0]) );
  DFFSQX2M \Register_reg[3][5]  ( .D(n78), .CK(CLK), .SN(RST), .Q(REG3[5]) );
  DFFRQX2M \Register_reg[2][6]  ( .D(n71), .CK(CLK), .RN(n220), .Q(REG2[6]) );
  DFFQX2M \RdData_reg[7]  ( .D(n48), .CK(CLK), .Q(RdData[7]) );
  DFFQX2M \RdData_reg[6]  ( .D(n47), .CK(CLK), .Q(RdData[6]) );
  DFFQX2M \RdData_reg[5]  ( .D(n46), .CK(CLK), .Q(RdData[5]) );
  DFFQX2M \RdData_reg[4]  ( .D(n45), .CK(CLK), .Q(RdData[4]) );
  DFFQX2M \RdData_reg[3]  ( .D(n44), .CK(CLK), .Q(RdData[3]) );
  DFFQX2M \RdData_reg[2]  ( .D(n43), .CK(CLK), .Q(RdData[2]) );
  DFFQX2M \RdData_reg[1]  ( .D(n42), .CK(CLK), .Q(RdData[1]) );
  DFFQX2M \RdData_reg[0]  ( .D(n41), .CK(CLK), .Q(RdData[0]) );
  DFFRQX2M RdData_Vaild_reg ( .D(N59), .CK(CLK), .RN(RST), .Q(RdData_Vaild) );
  DFFRQX2M \Register_reg[9][7]  ( .D(n128), .CK(CLK), .RN(n222), .Q(
        \Register[9][7] ) );
  DFFRQX2M \Register_reg[9][6]  ( .D(n127), .CK(CLK), .RN(n222), .Q(
        \Register[9][6] ) );
  DFFRQX2M \Register_reg[9][5]  ( .D(n126), .CK(CLK), .RN(n221), .Q(
        \Register[9][5] ) );
  DFFRQX2M \Register_reg[9][4]  ( .D(n125), .CK(CLK), .RN(n221), .Q(
        \Register[9][4] ) );
  DFFRQX2M \Register_reg[9][3]  ( .D(n124), .CK(CLK), .RN(n221), .Q(
        \Register[9][3] ) );
  DFFRQX2M \Register_reg[9][2]  ( .D(n123), .CK(CLK), .RN(n221), .Q(
        \Register[9][2] ) );
  DFFRQX2M \Register_reg[9][1]  ( .D(n122), .CK(CLK), .RN(n221), .Q(
        \Register[9][1] ) );
  DFFRQX2M \Register_reg[9][0]  ( .D(n121), .CK(CLK), .RN(n221), .Q(
        \Register[9][0] ) );
  DFFRQX2M \Register_reg[8][7]  ( .D(n120), .CK(CLK), .RN(n221), .Q(
        \Register[8][7] ) );
  DFFRQX2M \Register_reg[8][6]  ( .D(n119), .CK(CLK), .RN(n221), .Q(
        \Register[8][6] ) );
  DFFRQX2M \Register_reg[8][5]  ( .D(n118), .CK(CLK), .RN(n221), .Q(
        \Register[8][5] ) );
  DFFRQX2M \Register_reg[8][4]  ( .D(n117), .CK(CLK), .RN(n221), .Q(
        \Register[8][4] ) );
  DFFRQX2M \Register_reg[8][3]  ( .D(n116), .CK(CLK), .RN(n221), .Q(
        \Register[8][3] ) );
  DFFRQX2M \Register_reg[8][2]  ( .D(n115), .CK(CLK), .RN(n221), .Q(
        \Register[8][2] ) );
  DFFRQX2M \Register_reg[8][1]  ( .D(n114), .CK(CLK), .RN(n221), .Q(
        \Register[8][1] ) );
  DFFRQX2M \Register_reg[8][0]  ( .D(n113), .CK(CLK), .RN(n221), .Q(
        \Register[8][0] ) );
  DFFRQX2M \Register_reg[4][7]  ( .D(n88), .CK(CLK), .RN(n219), .Q(
        \Register[4][7] ) );
  DFFRQX2M \Register_reg[4][6]  ( .D(n87), .CK(CLK), .RN(n219), .Q(
        \Register[4][6] ) );
  DFFRQX2M \Register_reg[4][5]  ( .D(n86), .CK(CLK), .RN(n219), .Q(
        \Register[4][5] ) );
  DFFRQX2M \Register_reg[4][4]  ( .D(n85), .CK(CLK), .RN(n219), .Q(
        \Register[4][4] ) );
  DFFRQX2M \Register_reg[4][3]  ( .D(n84), .CK(CLK), .RN(n219), .Q(
        \Register[4][3] ) );
  DFFRQX2M \Register_reg[4][2]  ( .D(n83), .CK(CLK), .RN(n219), .Q(
        \Register[4][2] ) );
  DFFRQX2M \Register_reg[4][1]  ( .D(n82), .CK(CLK), .RN(n219), .Q(
        \Register[4][1] ) );
  DFFRQX2M \Register_reg[4][0]  ( .D(n81), .CK(CLK), .RN(n219), .Q(
        \Register[4][0] ) );
  DFFRQX2M \Register_reg[1][7]  ( .D(n64), .CK(CLK), .RN(n221), .Q(REG1[7]) );
  DFFRQX2M \Register_reg[1][5]  ( .D(n62), .CK(CLK), .RN(n223), .Q(REG1[5]) );
  DFFRQX2M \Register_reg[1][4]  ( .D(n61), .CK(CLK), .RN(n221), .Q(REG1[4]) );
  DFFRQX2M \Register_reg[1][3]  ( .D(n60), .CK(CLK), .RN(n222), .Q(REG1[3]) );
  DFFRQX2M \Register_reg[1][2]  ( .D(n59), .CK(CLK), .RN(n223), .Q(REG1[2]) );
  DFFRQX2M \Register_reg[1][1]  ( .D(n58), .CK(CLK), .RN(n230), .Q(REG1[1]) );
  DFFRQX2M \Register_reg[1][0]  ( .D(n57), .CK(CLK), .RN(RST), .Q(REG1[0]) );
  DFFRQX2M \Register_reg[0][7]  ( .D(n56), .CK(CLK), .RN(n222), .Q(REG0[7]) );
  DFFRQX2M \Register_reg[0][5]  ( .D(n54), .CK(CLK), .RN(n220), .Q(REG0[5]) );
  DFFRQX2M \Register_reg[0][4]  ( .D(n53), .CK(CLK), .RN(n221), .Q(REG0[4]) );
  DFFRQX2M \Register_reg[0][3]  ( .D(n52), .CK(CLK), .RN(n222), .Q(REG0[3]) );
  DFFRQX2M \Register_reg[0][2]  ( .D(n51), .CK(CLK), .RN(n223), .Q(REG0[2]) );
  DFFRQX2M \Register_reg[0][1]  ( .D(n50), .CK(CLK), .RN(n220), .Q(REG0[1]) );
  DFFRQX2M \Register_reg[0][0]  ( .D(n49), .CK(CLK), .RN(n221), .Q(REG0[0]) );
  DFFRQX2M \Register_reg[13][7]  ( .D(n160), .CK(CLK), .RN(n224), .Q(
        \Register[13][7] ) );
  DFFRQX2M \Register_reg[13][6]  ( .D(n159), .CK(CLK), .RN(n224), .Q(
        \Register[13][6] ) );
  DFFRQX2M \Register_reg[13][5]  ( .D(n158), .CK(CLK), .RN(n223), .Q(
        \Register[13][5] ) );
  DFFRQX2M \Register_reg[13][4]  ( .D(n157), .CK(CLK), .RN(n223), .Q(
        \Register[13][4] ) );
  DFFRQX2M \Register_reg[13][3]  ( .D(n156), .CK(CLK), .RN(n223), .Q(
        \Register[13][3] ) );
  DFFRQX2M \Register_reg[13][2]  ( .D(n155), .CK(CLK), .RN(n223), .Q(
        \Register[13][2] ) );
  DFFRQX2M \Register_reg[13][1]  ( .D(n154), .CK(CLK), .RN(n223), .Q(
        \Register[13][1] ) );
  DFFRQX2M \Register_reg[13][0]  ( .D(n153), .CK(CLK), .RN(n223), .Q(
        \Register[13][0] ) );
  DFFRQX2M \Register_reg[5][7]  ( .D(n96), .CK(CLK), .RN(n220), .Q(
        \Register[5][7] ) );
  DFFRQX2M \Register_reg[5][6]  ( .D(n95), .CK(CLK), .RN(n219), .Q(
        \Register[5][6] ) );
  DFFRQX2M \Register_reg[5][5]  ( .D(n94), .CK(CLK), .RN(n219), .Q(
        \Register[5][5] ) );
  DFFRQX2M \Register_reg[5][4]  ( .D(n93), .CK(CLK), .RN(n219), .Q(
        \Register[5][4] ) );
  DFFRQX2M \Register_reg[5][3]  ( .D(n92), .CK(CLK), .RN(n219), .Q(
        \Register[5][3] ) );
  DFFRQX2M \Register_reg[5][2]  ( .D(n91), .CK(CLK), .RN(n219), .Q(
        \Register[5][2] ) );
  DFFRQX2M \Register_reg[5][1]  ( .D(n90), .CK(CLK), .RN(n219), .Q(
        \Register[5][1] ) );
  DFFRQX2M \Register_reg[5][0]  ( .D(n89), .CK(CLK), .RN(n219), .Q(
        \Register[5][0] ) );
  DFFRQX2M \Register_reg[15][7]  ( .D(n176), .CK(CLK), .RN(n221), .Q(
        \Register[15][7] ) );
  DFFRQX2M \Register_reg[15][6]  ( .D(n175), .CK(CLK), .RN(n220), .Q(
        \Register[15][6] ) );
  DFFRQX2M \Register_reg[15][5]  ( .D(n174), .CK(CLK), .RN(n224), .Q(
        \Register[15][5] ) );
  DFFRQX2M \Register_reg[15][4]  ( .D(n173), .CK(CLK), .RN(n224), .Q(
        \Register[15][4] ) );
  DFFRQX2M \Register_reg[15][3]  ( .D(n172), .CK(CLK), .RN(n224), .Q(
        \Register[15][3] ) );
  DFFRQX2M \Register_reg[15][2]  ( .D(n171), .CK(CLK), .RN(n224), .Q(
        \Register[15][2] ) );
  DFFRQX2M \Register_reg[15][1]  ( .D(n170), .CK(CLK), .RN(n224), .Q(
        \Register[15][1] ) );
  DFFRQX2M \Register_reg[15][0]  ( .D(n169), .CK(CLK), .RN(n224), .Q(
        \Register[15][0] ) );
  DFFRQX2M \Register_reg[11][7]  ( .D(n144), .CK(CLK), .RN(n223), .Q(
        \Register[11][7] ) );
  DFFRQX2M \Register_reg[11][6]  ( .D(n143), .CK(CLK), .RN(n223), .Q(
        \Register[11][6] ) );
  DFFRQX2M \Register_reg[11][5]  ( .D(n142), .CK(CLK), .RN(n222), .Q(
        \Register[11][5] ) );
  DFFRQX2M \Register_reg[11][4]  ( .D(n141), .CK(CLK), .RN(n222), .Q(
        \Register[11][4] ) );
  DFFRQX2M \Register_reg[11][3]  ( .D(n140), .CK(CLK), .RN(n222), .Q(
        \Register[11][3] ) );
  DFFRQX2M \Register_reg[11][2]  ( .D(n139), .CK(CLK), .RN(n222), .Q(
        \Register[11][2] ) );
  DFFRQX2M \Register_reg[11][1]  ( .D(n138), .CK(CLK), .RN(n222), .Q(
        \Register[11][1] ) );
  DFFRQX2M \Register_reg[11][0]  ( .D(n137), .CK(CLK), .RN(n222), .Q(
        \Register[11][0] ) );
  DFFRQX2M \Register_reg[7][7]  ( .D(n112), .CK(CLK), .RN(n221), .Q(
        \Register[7][7] ) );
  DFFRQX2M \Register_reg[7][6]  ( .D(n111), .CK(CLK), .RN(n220), .Q(
        \Register[7][6] ) );
  DFFRQX2M \Register_reg[7][5]  ( .D(n110), .CK(CLK), .RN(n220), .Q(
        \Register[7][5] ) );
  DFFRQX2M \Register_reg[7][4]  ( .D(n109), .CK(CLK), .RN(n220), .Q(
        \Register[7][4] ) );
  DFFRQX2M \Register_reg[7][3]  ( .D(n108), .CK(CLK), .RN(n220), .Q(
        \Register[7][3] ) );
  DFFRQX2M \Register_reg[7][2]  ( .D(n107), .CK(CLK), .RN(n220), .Q(
        \Register[7][2] ) );
  DFFRQX2M \Register_reg[7][1]  ( .D(n106), .CK(CLK), .RN(n220), .Q(
        \Register[7][1] ) );
  DFFRQX2M \Register_reg[7][0]  ( .D(n105), .CK(CLK), .RN(n220), .Q(
        \Register[7][0] ) );
  DFFRQX2M \Register_reg[14][7]  ( .D(n168), .CK(CLK), .RN(n224), .Q(
        \Register[14][7] ) );
  DFFRQX2M \Register_reg[14][6]  ( .D(n167), .CK(CLK), .RN(n224), .Q(
        \Register[14][6] ) );
  DFFRQX2M \Register_reg[14][5]  ( .D(n166), .CK(CLK), .RN(n224), .Q(
        \Register[14][5] ) );
  DFFRQX2M \Register_reg[14][4]  ( .D(n165), .CK(CLK), .RN(n224), .Q(
        \Register[14][4] ) );
  DFFRQX2M \Register_reg[14][3]  ( .D(n164), .CK(CLK), .RN(n224), .Q(
        \Register[14][3] ) );
  DFFRQX2M \Register_reg[14][2]  ( .D(n163), .CK(CLK), .RN(n224), .Q(
        \Register[14][2] ) );
  DFFRQX2M \Register_reg[14][1]  ( .D(n162), .CK(CLK), .RN(n224), .Q(
        \Register[14][1] ) );
  DFFRQX2M \Register_reg[14][0]  ( .D(n161), .CK(CLK), .RN(n224), .Q(
        \Register[14][0] ) );
  DFFRQX2M \Register_reg[10][7]  ( .D(n136), .CK(CLK), .RN(n222), .Q(
        \Register[10][7] ) );
  DFFRQX2M \Register_reg[10][6]  ( .D(n135), .CK(CLK), .RN(n222), .Q(
        \Register[10][6] ) );
  DFFRQX2M \Register_reg[10][5]  ( .D(n134), .CK(CLK), .RN(n222), .Q(
        \Register[10][5] ) );
  DFFRQX2M \Register_reg[10][4]  ( .D(n133), .CK(CLK), .RN(n222), .Q(
        \Register[10][4] ) );
  DFFRQX2M \Register_reg[10][3]  ( .D(n132), .CK(CLK), .RN(n222), .Q(
        \Register[10][3] ) );
  DFFRQX2M \Register_reg[10][2]  ( .D(n131), .CK(CLK), .RN(n222), .Q(
        \Register[10][2] ) );
  DFFRQX2M \Register_reg[10][1]  ( .D(n130), .CK(CLK), .RN(n222), .Q(
        \Register[10][1] ) );
  DFFRQX2M \Register_reg[10][0]  ( .D(n129), .CK(CLK), .RN(n222), .Q(
        \Register[10][0] ) );
  DFFRQX2M \Register_reg[6][7]  ( .D(n104), .CK(CLK), .RN(n220), .Q(
        \Register[6][7] ) );
  DFFRQX2M \Register_reg[6][6]  ( .D(n103), .CK(CLK), .RN(n220), .Q(
        \Register[6][6] ) );
  DFFRQX2M \Register_reg[6][5]  ( .D(n102), .CK(CLK), .RN(n220), .Q(
        \Register[6][5] ) );
  DFFRQX2M \Register_reg[6][4]  ( .D(n101), .CK(CLK), .RN(n220), .Q(
        \Register[6][4] ) );
  DFFRQX2M \Register_reg[6][3]  ( .D(n100), .CK(CLK), .RN(n220), .Q(
        \Register[6][3] ) );
  DFFRQX2M \Register_reg[6][2]  ( .D(n99), .CK(CLK), .RN(n220), .Q(
        \Register[6][2] ) );
  DFFRQX2M \Register_reg[6][1]  ( .D(n98), .CK(CLK), .RN(n220), .Q(
        \Register[6][1] ) );
  DFFRQX2M \Register_reg[6][0]  ( .D(n97), .CK(CLK), .RN(n220), .Q(
        \Register[6][0] ) );
  DFFRQX2M \Register_reg[12][7]  ( .D(n152), .CK(CLK), .RN(n223), .Q(
        \Register[12][7] ) );
  DFFRQX2M \Register_reg[12][6]  ( .D(n151), .CK(CLK), .RN(n223), .Q(
        \Register[12][6] ) );
  DFFRQX2M \Register_reg[12][5]  ( .D(n150), .CK(CLK), .RN(n223), .Q(
        \Register[12][5] ) );
  DFFRQX2M \Register_reg[12][4]  ( .D(n149), .CK(CLK), .RN(n223), .Q(
        \Register[12][4] ) );
  DFFRQX2M \Register_reg[12][3]  ( .D(n148), .CK(CLK), .RN(n223), .Q(
        \Register[12][3] ) );
  DFFRQX2M \Register_reg[12][2]  ( .D(n147), .CK(CLK), .RN(n223), .Q(
        \Register[12][2] ) );
  DFFRQX2M \Register_reg[12][1]  ( .D(n146), .CK(CLK), .RN(n223), .Q(
        \Register[12][1] ) );
  DFFRQX2M \Register_reg[12][0]  ( .D(n145), .CK(CLK), .RN(n223), .Q(
        \Register[12][0] ) );
  DFFRQX2M \Register_reg[1][6]  ( .D(n63), .CK(CLK), .RN(n222), .Q(REG1[6]) );
  DFFRQX2M \Register_reg[3][0]  ( .D(n73), .CK(CLK), .RN(n220), .Q(REG3[0]) );
  DFFRQX2M \Register_reg[0][6]  ( .D(n55), .CK(CLK), .RN(n223), .Q(REG0[6]) );
  DFFRQX2M \Register_reg[3][6]  ( .D(n79), .CK(CLK), .RN(n221), .Q(REG3[6]) );
  DFFRQX2M \Register_reg[3][1]  ( .D(n74), .CK(CLK), .RN(n224), .Q(REG3[1]) );
  DFFRQX2M \Register_reg[3][4]  ( .D(n77), .CK(CLK), .RN(n222), .Q(REG3[4]) );
  DFFRQX2M \Register_reg[3][3]  ( .D(n76), .CK(CLK), .RN(n223), .Q(REG3[3]) );
  DFFRQX2M \Register_reg[3][2]  ( .D(n75), .CK(CLK), .RN(n219), .Q(REG3[2]) );
  DFFRQX2M \Register_reg[3][7]  ( .D(n80), .CK(CLK), .RN(n219), .Q(REG3[7]) );
  DFFRQX2M \Register_reg[2][1]  ( .D(n66), .CK(CLK), .RN(n220), .Q(REG2[1]) );
  DFFRQX2M \Register_reg[2][2]  ( .D(n67), .CK(CLK), .RN(n219), .Q(REG2[2]) );
  DFFRQX2M \Register_reg[2][5]  ( .D(n70), .CK(CLK), .RN(n221), .Q(REG2[5]) );
  DFFRQX2M \Register_reg[2][4]  ( .D(n69), .CK(CLK), .RN(n222), .Q(REG2[4]) );
  DFFRQX2M \Register_reg[2][3]  ( .D(n68), .CK(CLK), .RN(n223), .Q(REG2[3]) );
  NOR2BX2M U3 ( .AN(n39), .B(n217), .Y(n33) );
  NOR2BX2M U4 ( .AN(N12), .B(N11), .Y(n24) );
  NOR2BX2M U5 ( .AN(N12), .B(n218), .Y(n27) );
  NOR2BX2M U6 ( .AN(n28), .B(n217), .Y(n19) );
  NOR2X2M U7 ( .A(n218), .B(N12), .Y(n21) );
  NOR2X2M U8 ( .A(N11), .B(N12), .Y(n16) );
  INVX2M U9 ( .A(n231), .Y(n230) );
  INVX2M U10 ( .A(WrData[1]), .Y(n233) );
  INVX2M U11 ( .A(WrData[0]), .Y(n232) );
  INVX2M U12 ( .A(WrData[4]), .Y(n236) );
  INVX2M U13 ( .A(WrData[5]), .Y(n237) );
  INVX2M U14 ( .A(WrData[6]), .Y(n238) );
  INVX2M U15 ( .A(WrData[7]), .Y(n239) );
  INVX2M U16 ( .A(WrData[2]), .Y(n234) );
  INVX2M U17 ( .A(WrData[3]), .Y(n235) );
  INVX2M U18 ( .A(n228), .Y(n219) );
  INVX2M U19 ( .A(n227), .Y(n220) );
  INVX2M U20 ( .A(n227), .Y(n221) );
  INVX2M U21 ( .A(n226), .Y(n222) );
  INVX2M U22 ( .A(n226), .Y(n223) );
  NOR2BX2M U23 ( .AN(N59), .B(n12), .Y(n13) );
  OR2X2M U24 ( .A(n14), .B(n225), .Y(n12) );
  CLKBUFX2M U25 ( .A(n229), .Y(n228) );
  CLKBUFX2M U26 ( .A(n231), .Y(n227) );
  CLKBUFX2M U27 ( .A(n231), .Y(n226) );
  INVX2M U28 ( .A(n225), .Y(n224) );
  NOR2BX2M U29 ( .AN(n39), .B(N10), .Y(n31) );
  BUFX4M U30 ( .A(N10), .Y(n202) );
  BUFX4M U31 ( .A(N10), .Y(n203) );
  CLKBUFX2M U32 ( .A(n30), .Y(n211) );
  NAND2X2M U33 ( .A(n31), .B(n16), .Y(n30) );
  CLKBUFX2M U34 ( .A(n32), .Y(n210) );
  NAND2X2M U35 ( .A(n33), .B(n16), .Y(n32) );
  CLKBUFX2M U36 ( .A(n34), .Y(n209) );
  NAND2X2M U37 ( .A(n31), .B(n21), .Y(n34) );
  CLKBUFX2M U38 ( .A(n35), .Y(n208) );
  NAND2X2M U39 ( .A(n33), .B(n21), .Y(n35) );
  CLKBUFX2M U40 ( .A(n36), .Y(n207) );
  NAND2X2M U41 ( .A(n31), .B(n24), .Y(n36) );
  CLKBUFX2M U42 ( .A(n37), .Y(n206) );
  NAND2X2M U43 ( .A(n33), .B(n24), .Y(n37) );
  CLKBUFX2M U44 ( .A(n38), .Y(n205) );
  NAND2X2M U45 ( .A(n31), .B(n27), .Y(n38) );
  CLKBUFX2M U46 ( .A(n40), .Y(n204) );
  NAND2X2M U47 ( .A(n33), .B(n27), .Y(n40) );
  CLKBUFX2M U48 ( .A(N10), .Y(n201) );
  CLKBUFX2M U49 ( .A(N11), .Y(n199) );
  CLKBUFX2M U50 ( .A(N11), .Y(n200) );
  CLKBUFX2M U51 ( .A(N11), .Y(n198) );
  NOR2BX2M U52 ( .AN(n28), .B(N10), .Y(n17) );
  NAND2X2M U53 ( .A(n21), .B(n19), .Y(n22) );
  NAND2X2M U54 ( .A(n16), .B(n17), .Y(n15) );
  NAND2X2M U55 ( .A(n21), .B(n17), .Y(n20) );
  NOR2BX2M U56 ( .AN(WR_En), .B(RD_EN), .Y(n14) );
  CLKBUFX2M U57 ( .A(n23), .Y(n215) );
  NAND2X2M U58 ( .A(n24), .B(n17), .Y(n23) );
  CLKBUFX2M U59 ( .A(n25), .Y(n214) );
  NAND2X2M U60 ( .A(n24), .B(n19), .Y(n25) );
  CLKBUFX2M U61 ( .A(n26), .Y(n213) );
  NAND2X2M U62 ( .A(n27), .B(n17), .Y(n26) );
  CLKBUFX2M U63 ( .A(n29), .Y(n212) );
  NAND2X2M U64 ( .A(n27), .B(n19), .Y(n29) );
  NOR2BX2M U65 ( .AN(RD_EN), .B(WR_En), .Y(N59) );
  CLKBUFX2M U66 ( .A(n18), .Y(n216) );
  NAND2X2M U67 ( .A(n19), .B(n16), .Y(n18) );
  CLKBUFX2M U68 ( .A(n229), .Y(n225) );
  INVX2M U69 ( .A(n230), .Y(n229) );
  AND2X2M U70 ( .A(N13), .B(n14), .Y(n39) );
  NOR2BX2M U71 ( .AN(n14), .B(N13), .Y(n28) );
  INVX2M U72 ( .A(RST), .Y(n231) );
  OAI2BB2X1M U73 ( .B0(n232), .B1(n211), .A0N(\Register[8][0] ), .A1N(n211), 
        .Y(n113) );
  OAI2BB2X1M U74 ( .B0(n233), .B1(n211), .A0N(\Register[8][1] ), .A1N(n211), 
        .Y(n114) );
  OAI2BB2X1M U75 ( .B0(n234), .B1(n211), .A0N(\Register[8][2] ), .A1N(n211), 
        .Y(n115) );
  OAI2BB2X1M U76 ( .B0(n235), .B1(n211), .A0N(\Register[8][3] ), .A1N(n211), 
        .Y(n116) );
  OAI2BB2X1M U77 ( .B0(n236), .B1(n211), .A0N(\Register[8][4] ), .A1N(n211), 
        .Y(n117) );
  OAI2BB2X1M U78 ( .B0(n237), .B1(n211), .A0N(\Register[8][5] ), .A1N(n211), 
        .Y(n118) );
  OAI2BB2X1M U79 ( .B0(n238), .B1(n211), .A0N(\Register[8][6] ), .A1N(n211), 
        .Y(n119) );
  OAI2BB2X1M U80 ( .B0(n239), .B1(n211), .A0N(\Register[8][7] ), .A1N(n211), 
        .Y(n120) );
  OAI2BB2X1M U81 ( .B0(n232), .B1(n210), .A0N(\Register[9][0] ), .A1N(n210), 
        .Y(n121) );
  OAI2BB2X1M U82 ( .B0(n233), .B1(n210), .A0N(\Register[9][1] ), .A1N(n210), 
        .Y(n122) );
  OAI2BB2X1M U83 ( .B0(n234), .B1(n210), .A0N(\Register[9][2] ), .A1N(n210), 
        .Y(n123) );
  OAI2BB2X1M U84 ( .B0(n235), .B1(n210), .A0N(\Register[9][3] ), .A1N(n210), 
        .Y(n124) );
  OAI2BB2X1M U85 ( .B0(n236), .B1(n210), .A0N(\Register[9][4] ), .A1N(n210), 
        .Y(n125) );
  OAI2BB2X1M U86 ( .B0(n237), .B1(n210), .A0N(\Register[9][5] ), .A1N(n210), 
        .Y(n126) );
  OAI2BB2X1M U87 ( .B0(n238), .B1(n210), .A0N(\Register[9][6] ), .A1N(n210), 
        .Y(n127) );
  OAI2BB2X1M U88 ( .B0(n239), .B1(n210), .A0N(\Register[9][7] ), .A1N(n210), 
        .Y(n128) );
  OAI2BB2X1M U89 ( .B0(n232), .B1(n209), .A0N(\Register[10][0] ), .A1N(n209), 
        .Y(n129) );
  OAI2BB2X1M U90 ( .B0(n233), .B1(n209), .A0N(\Register[10][1] ), .A1N(n209), 
        .Y(n130) );
  OAI2BB2X1M U91 ( .B0(n234), .B1(n209), .A0N(\Register[10][2] ), .A1N(n209), 
        .Y(n131) );
  OAI2BB2X1M U92 ( .B0(n235), .B1(n209), .A0N(\Register[10][3] ), .A1N(n209), 
        .Y(n132) );
  OAI2BB2X1M U93 ( .B0(n236), .B1(n209), .A0N(\Register[10][4] ), .A1N(n209), 
        .Y(n133) );
  OAI2BB2X1M U94 ( .B0(n237), .B1(n209), .A0N(\Register[10][5] ), .A1N(n209), 
        .Y(n134) );
  OAI2BB2X1M U95 ( .B0(n238), .B1(n209), .A0N(\Register[10][6] ), .A1N(n209), 
        .Y(n135) );
  OAI2BB2X1M U96 ( .B0(n239), .B1(n209), .A0N(\Register[10][7] ), .A1N(n209), 
        .Y(n136) );
  OAI2BB2X1M U97 ( .B0(n232), .B1(n208), .A0N(\Register[11][0] ), .A1N(n208), 
        .Y(n137) );
  OAI2BB2X1M U98 ( .B0(n233), .B1(n208), .A0N(\Register[11][1] ), .A1N(n208), 
        .Y(n138) );
  OAI2BB2X1M U99 ( .B0(n234), .B1(n208), .A0N(\Register[11][2] ), .A1N(n208), 
        .Y(n139) );
  OAI2BB2X1M U100 ( .B0(n235), .B1(n208), .A0N(\Register[11][3] ), .A1N(n208), 
        .Y(n140) );
  OAI2BB2X1M U101 ( .B0(n236), .B1(n208), .A0N(\Register[11][4] ), .A1N(n208), 
        .Y(n141) );
  OAI2BB2X1M U102 ( .B0(n237), .B1(n208), .A0N(\Register[11][5] ), .A1N(n208), 
        .Y(n142) );
  OAI2BB2X1M U103 ( .B0(n238), .B1(n208), .A0N(\Register[11][6] ), .A1N(n208), 
        .Y(n143) );
  OAI2BB2X1M U104 ( .B0(n239), .B1(n208), .A0N(\Register[11][7] ), .A1N(n208), 
        .Y(n144) );
  OAI2BB2X1M U105 ( .B0(n232), .B1(n207), .A0N(\Register[12][0] ), .A1N(n207), 
        .Y(n145) );
  OAI2BB2X1M U106 ( .B0(n233), .B1(n207), .A0N(\Register[12][1] ), .A1N(n207), 
        .Y(n146) );
  OAI2BB2X1M U107 ( .B0(n234), .B1(n207), .A0N(\Register[12][2] ), .A1N(n207), 
        .Y(n147) );
  OAI2BB2X1M U108 ( .B0(n235), .B1(n207), .A0N(\Register[12][3] ), .A1N(n207), 
        .Y(n148) );
  OAI2BB2X1M U109 ( .B0(n236), .B1(n207), .A0N(\Register[12][4] ), .A1N(n207), 
        .Y(n149) );
  OAI2BB2X1M U110 ( .B0(n237), .B1(n207), .A0N(\Register[12][5] ), .A1N(n207), 
        .Y(n150) );
  OAI2BB2X1M U111 ( .B0(n238), .B1(n207), .A0N(\Register[12][6] ), .A1N(n207), 
        .Y(n151) );
  OAI2BB2X1M U112 ( .B0(n239), .B1(n207), .A0N(\Register[12][7] ), .A1N(n207), 
        .Y(n152) );
  OAI2BB2X1M U113 ( .B0(n232), .B1(n206), .A0N(\Register[13][0] ), .A1N(n206), 
        .Y(n153) );
  OAI2BB2X1M U114 ( .B0(n233), .B1(n206), .A0N(\Register[13][1] ), .A1N(n206), 
        .Y(n154) );
  OAI2BB2X1M U115 ( .B0(n234), .B1(n206), .A0N(\Register[13][2] ), .A1N(n206), 
        .Y(n155) );
  OAI2BB2X1M U116 ( .B0(n235), .B1(n206), .A0N(\Register[13][3] ), .A1N(n206), 
        .Y(n156) );
  OAI2BB2X1M U117 ( .B0(n236), .B1(n206), .A0N(\Register[13][4] ), .A1N(n206), 
        .Y(n157) );
  OAI2BB2X1M U118 ( .B0(n237), .B1(n206), .A0N(\Register[13][5] ), .A1N(n206), 
        .Y(n158) );
  OAI2BB2X1M U119 ( .B0(n238), .B1(n206), .A0N(\Register[13][6] ), .A1N(n206), 
        .Y(n159) );
  OAI2BB2X1M U120 ( .B0(n239), .B1(n206), .A0N(\Register[13][7] ), .A1N(n206), 
        .Y(n160) );
  OAI2BB2X1M U121 ( .B0(n232), .B1(n205), .A0N(\Register[14][0] ), .A1N(n205), 
        .Y(n161) );
  OAI2BB2X1M U122 ( .B0(n233), .B1(n205), .A0N(\Register[14][1] ), .A1N(n205), 
        .Y(n162) );
  OAI2BB2X1M U123 ( .B0(n234), .B1(n205), .A0N(\Register[14][2] ), .A1N(n205), 
        .Y(n163) );
  OAI2BB2X1M U124 ( .B0(n235), .B1(n205), .A0N(\Register[14][3] ), .A1N(n205), 
        .Y(n164) );
  OAI2BB2X1M U125 ( .B0(n236), .B1(n205), .A0N(\Register[14][4] ), .A1N(n205), 
        .Y(n165) );
  OAI2BB2X1M U126 ( .B0(n237), .B1(n205), .A0N(\Register[14][5] ), .A1N(n205), 
        .Y(n166) );
  OAI2BB2X1M U127 ( .B0(n238), .B1(n205), .A0N(\Register[14][6] ), .A1N(n205), 
        .Y(n167) );
  OAI2BB2X1M U128 ( .B0(n239), .B1(n205), .A0N(\Register[14][7] ), .A1N(n205), 
        .Y(n168) );
  OAI2BB2X1M U129 ( .B0(n232), .B1(n204), .A0N(\Register[15][0] ), .A1N(n204), 
        .Y(n169) );
  OAI2BB2X1M U130 ( .B0(n233), .B1(n204), .A0N(\Register[15][1] ), .A1N(n204), 
        .Y(n170) );
  OAI2BB2X1M U131 ( .B0(n234), .B1(n204), .A0N(\Register[15][2] ), .A1N(n204), 
        .Y(n171) );
  OAI2BB2X1M U132 ( .B0(n235), .B1(n204), .A0N(\Register[15][3] ), .A1N(n204), 
        .Y(n172) );
  OAI2BB2X1M U133 ( .B0(n236), .B1(n204), .A0N(\Register[15][4] ), .A1N(n204), 
        .Y(n173) );
  OAI2BB2X1M U134 ( .B0(n237), .B1(n204), .A0N(\Register[15][5] ), .A1N(n204), 
        .Y(n174) );
  OAI2BB2X1M U135 ( .B0(n238), .B1(n204), .A0N(\Register[15][6] ), .A1N(n204), 
        .Y(n175) );
  OAI2BB2X1M U136 ( .B0(n239), .B1(n204), .A0N(\Register[15][7] ), .A1N(n204), 
        .Y(n176) );
  AO22X1M U137 ( .A0(RdData[0]), .A1(n12), .B0(N42), .B1(n13), .Y(n41) );
  MX4X1M U138 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N13), .S1(N12), .Y(N42) );
  MX4X1M U139 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n201), 
        .S1(n198), .Y(n4) );
  MX4X1M U140 ( .A(\Register[8][0] ), .B(\Register[9][0] ), .C(
        \Register[10][0] ), .D(\Register[11][0] ), .S0(n201), .S1(n198), .Y(n2) );
  AO22X1M U141 ( .A0(RdData[1]), .A1(n12), .B0(N41), .B1(n13), .Y(n42) );
  MX4X1M U142 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N13), .S1(N12), .Y(N41) );
  MX4X1M U143 ( .A(\Register[8][1] ), .B(\Register[9][1] ), .C(
        \Register[10][1] ), .D(\Register[11][1] ), .S0(n201), .S1(n198), .Y(n6) );
  MX4X1M U144 ( .A(\Register[12][1] ), .B(\Register[13][1] ), .C(
        \Register[14][1] ), .D(\Register[15][1] ), .S0(n201), .S1(n198), .Y(n5) );
  AO22X1M U145 ( .A0(RdData[2]), .A1(n12), .B0(N40), .B1(n13), .Y(n43) );
  MX4X1M U146 ( .A(n177), .B(n10), .C(n11), .D(n9), .S0(N13), .S1(N12), .Y(N40) );
  MX4X1M U147 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n202), 
        .S1(n199), .Y(n177) );
  MX4X1M U148 ( .A(\Register[8][2] ), .B(\Register[9][2] ), .C(
        \Register[10][2] ), .D(\Register[11][2] ), .S0(n202), .S1(n199), .Y(
        n10) );
  AO22X1M U149 ( .A0(RdData[3]), .A1(n12), .B0(N39), .B1(n13), .Y(n44) );
  MX4X1M U150 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N13), .S1(N12), 
        .Y(N39) );
  MX4X1M U151 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n202), 
        .S1(n199), .Y(n181) );
  MX4X1M U152 ( .A(\Register[8][3] ), .B(\Register[9][3] ), .C(
        \Register[10][3] ), .D(\Register[11][3] ), .S0(n202), .S1(n199), .Y(
        n179) );
  AO22X1M U153 ( .A0(RdData[4]), .A1(n12), .B0(N38), .B1(n13), .Y(n45) );
  MX4X1M U154 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N13), .S1(N12), 
        .Y(N38) );
  MX4X1M U155 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n203), 
        .S1(n199), .Y(n185) );
  MX4X1M U156 ( .A(\Register[8][4] ), .B(\Register[9][4] ), .C(
        \Register[10][4] ), .D(\Register[11][4] ), .S0(n202), .S1(n199), .Y(
        n183) );
  AO22X1M U157 ( .A0(RdData[5]), .A1(n12), .B0(N37), .B1(n13), .Y(n46) );
  MX4X1M U158 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N13), .S1(N12), 
        .Y(N37) );
  MX4X1M U159 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n203), 
        .S1(n200), .Y(n189) );
  MX4X1M U160 ( .A(\Register[8][5] ), .B(\Register[9][5] ), .C(
        \Register[10][5] ), .D(\Register[11][5] ), .S0(n203), .S1(n200), .Y(
        n187) );
  AO22X1M U161 ( .A0(RdData[6]), .A1(n12), .B0(N36), .B1(n13), .Y(n47) );
  MX4X1M U162 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N13), .S1(N12), 
        .Y(N36) );
  MX4X1M U163 ( .A(\Register[8][6] ), .B(\Register[9][6] ), .C(
        \Register[10][6] ), .D(\Register[11][6] ), .S0(n203), .S1(n200), .Y(
        n191) );
  MX4X1M U164 ( .A(\Register[4][6] ), .B(\Register[5][6] ), .C(
        \Register[6][6] ), .D(\Register[7][6] ), .S0(n203), .S1(n200), .Y(n192) );
  AO22X1M U165 ( .A0(RdData[7]), .A1(n12), .B0(N35), .B1(n13), .Y(n48) );
  MX4X1M U166 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N13), .S1(N12), 
        .Y(N35) );
  MX4X1M U167 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n203), 
        .S1(n200), .Y(n197) );
  MX4X1M U168 ( .A(\Register[8][7] ), .B(\Register[9][7] ), .C(
        \Register[10][7] ), .D(\Register[11][7] ), .S0(n203), .S1(n200), .Y(
        n195) );
  MX4X1M U169 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n202), 
        .S1(n198), .Y(n8) );
  MX4X1M U170 ( .A(\Register[4][0] ), .B(\Register[5][0] ), .C(
        \Register[6][0] ), .D(\Register[7][0] ), .S0(n201), .S1(n198), .Y(n3)
         );
  MX4X1M U171 ( .A(\Register[4][1] ), .B(\Register[5][1] ), .C(
        \Register[6][1] ), .D(\Register[7][1] ), .S0(n202), .S1(n198), .Y(n7)
         );
  MX4X1M U172 ( .A(\Register[4][2] ), .B(\Register[5][2] ), .C(
        \Register[6][2] ), .D(\Register[7][2] ), .S0(n202), .S1(n199), .Y(n11)
         );
  MX4X1M U173 ( .A(\Register[4][3] ), .B(\Register[5][3] ), .C(
        \Register[6][3] ), .D(\Register[7][3] ), .S0(n202), .S1(n199), .Y(n180) );
  MX4X1M U174 ( .A(\Register[4][4] ), .B(\Register[5][4] ), .C(
        \Register[6][4] ), .D(\Register[7][4] ), .S0(n202), .S1(n199), .Y(n184) );
  MX4X1M U175 ( .A(\Register[4][5] ), .B(\Register[5][5] ), .C(
        \Register[6][5] ), .D(\Register[7][5] ), .S0(n203), .S1(n200), .Y(n188) );
  MX4X1M U176 ( .A(\Register[4][7] ), .B(\Register[5][7] ), .C(
        \Register[6][7] ), .D(\Register[7][7] ), .S0(n203), .S1(n200), .Y(n196) );
  MX4X1M U177 ( .A(\Register[12][0] ), .B(\Register[13][0] ), .C(
        \Register[14][0] ), .D(\Register[15][0] ), .S0(n201), .S1(n198), .Y(n1) );
  MX4X1M U178 ( .A(\Register[12][2] ), .B(\Register[13][2] ), .C(
        \Register[14][2] ), .D(\Register[15][2] ), .S0(n202), .S1(n199), .Y(n9) );
  MX4X1M U179 ( .A(\Register[12][3] ), .B(\Register[13][3] ), .C(
        \Register[14][3] ), .D(\Register[15][3] ), .S0(n202), .S1(n199), .Y(
        n178) );
  MX4X1M U180 ( .A(\Register[12][4] ), .B(\Register[13][4] ), .C(
        \Register[14][4] ), .D(\Register[15][4] ), .S0(n202), .S1(n199), .Y(
        n182) );
  MX4X1M U181 ( .A(\Register[12][5] ), .B(\Register[13][5] ), .C(
        \Register[14][5] ), .D(\Register[15][5] ), .S0(n203), .S1(n200), .Y(
        n186) );
  MX4X1M U182 ( .A(\Register[12][6] ), .B(\Register[13][6] ), .C(
        \Register[14][6] ), .D(\Register[15][6] ), .S0(n203), .S1(n200), .Y(
        n190) );
  MX4X1M U183 ( .A(\Register[12][7] ), .B(\Register[13][7] ), .C(
        \Register[14][7] ), .D(\Register[15][7] ), .S0(n203), .S1(n200), .Y(
        n194) );
  INVX2M U184 ( .A(N10), .Y(n217) );
  INVX2M U185 ( .A(N11), .Y(n218) );
  OAI2BB2X1M U186 ( .B0(n15), .B1(n232), .A0N(REG0[0]), .A1N(n15), .Y(n49) );
  OAI2BB2X1M U187 ( .B0(n15), .B1(n233), .A0N(REG0[1]), .A1N(n15), .Y(n50) );
  OAI2BB2X1M U188 ( .B0(n15), .B1(n234), .A0N(REG0[2]), .A1N(n15), .Y(n51) );
  OAI2BB2X1M U189 ( .B0(n15), .B1(n235), .A0N(REG0[3]), .A1N(n15), .Y(n52) );
  OAI2BB2X1M U190 ( .B0(n15), .B1(n236), .A0N(REG0[4]), .A1N(n15), .Y(n53) );
  OAI2BB2X1M U191 ( .B0(n15), .B1(n237), .A0N(REG0[5]), .A1N(n15), .Y(n54) );
  OAI2BB2X1M U192 ( .B0(n15), .B1(n238), .A0N(REG0[6]), .A1N(n15), .Y(n55) );
  OAI2BB2X1M U193 ( .B0(n15), .B1(n239), .A0N(REG0[7]), .A1N(n15), .Y(n56) );
  OAI2BB2X1M U194 ( .B0(n232), .B1(n22), .A0N(REG3[0]), .A1N(n22), .Y(n73) );
  OAI2BB2X1M U195 ( .B0(n233), .B1(n22), .A0N(REG3[1]), .A1N(n22), .Y(n74) );
  OAI2BB2X1M U196 ( .B0(n234), .B1(n22), .A0N(REG3[2]), .A1N(n22), .Y(n75) );
  OAI2BB2X1M U197 ( .B0(n235), .B1(n22), .A0N(REG3[3]), .A1N(n22), .Y(n76) );
  OAI2BB2X1M U198 ( .B0(n236), .B1(n22), .A0N(REG3[4]), .A1N(n22), .Y(n77) );
  OAI2BB2X1M U199 ( .B0(n238), .B1(n22), .A0N(REG3[6]), .A1N(n22), .Y(n79) );
  OAI2BB2X1M U200 ( .B0(n239), .B1(n22), .A0N(REG3[7]), .A1N(n22), .Y(n80) );
  OAI2BB2X1M U201 ( .B0(n233), .B1(n20), .A0N(REG2[1]), .A1N(n20), .Y(n66) );
  OAI2BB2X1M U202 ( .B0(n234), .B1(n20), .A0N(REG2[2]), .A1N(n20), .Y(n67) );
  OAI2BB2X1M U203 ( .B0(n235), .B1(n20), .A0N(REG2[3]), .A1N(n20), .Y(n68) );
  OAI2BB2X1M U204 ( .B0(n236), .B1(n20), .A0N(REG2[4]), .A1N(n20), .Y(n69) );
  OAI2BB2X1M U205 ( .B0(n237), .B1(n20), .A0N(REG2[5]), .A1N(n20), .Y(n70) );
  OAI2BB2X1M U206 ( .B0(n237), .B1(n22), .A0N(REG3[5]), .A1N(n22), .Y(n78) );
  OAI2BB2X1M U207 ( .B0(n232), .B1(n20), .A0N(REG2[0]), .A1N(n20), .Y(n65) );
  OAI2BB2X1M U208 ( .B0(n239), .B1(n20), .A0N(REG2[7]), .A1N(n20), .Y(n72) );
  OAI2BB2X1M U209 ( .B0(n232), .B1(n216), .A0N(REG1[0]), .A1N(n216), .Y(n57)
         );
  OAI2BB2X1M U210 ( .B0(n233), .B1(n216), .A0N(REG1[1]), .A1N(n216), .Y(n58)
         );
  OAI2BB2X1M U211 ( .B0(n234), .B1(n216), .A0N(REG1[2]), .A1N(n216), .Y(n59)
         );
  OAI2BB2X1M U212 ( .B0(n235), .B1(n216), .A0N(REG1[3]), .A1N(n216), .Y(n60)
         );
  OAI2BB2X1M U213 ( .B0(n236), .B1(n216), .A0N(REG1[4]), .A1N(n216), .Y(n61)
         );
  OAI2BB2X1M U214 ( .B0(n237), .B1(n216), .A0N(REG1[5]), .A1N(n216), .Y(n62)
         );
  OAI2BB2X1M U215 ( .B0(n238), .B1(n216), .A0N(REG1[6]), .A1N(n216), .Y(n63)
         );
  OAI2BB2X1M U216 ( .B0(n239), .B1(n216), .A0N(REG1[7]), .A1N(n216), .Y(n64)
         );
  OAI2BB2X1M U217 ( .B0(n232), .B1(n215), .A0N(\Register[4][0] ), .A1N(n215), 
        .Y(n81) );
  OAI2BB2X1M U218 ( .B0(n233), .B1(n215), .A0N(\Register[4][1] ), .A1N(n215), 
        .Y(n82) );
  OAI2BB2X1M U219 ( .B0(n234), .B1(n215), .A0N(\Register[4][2] ), .A1N(n215), 
        .Y(n83) );
  OAI2BB2X1M U220 ( .B0(n235), .B1(n215), .A0N(\Register[4][3] ), .A1N(n215), 
        .Y(n84) );
  OAI2BB2X1M U221 ( .B0(n236), .B1(n215), .A0N(\Register[4][4] ), .A1N(n215), 
        .Y(n85) );
  OAI2BB2X1M U222 ( .B0(n237), .B1(n215), .A0N(\Register[4][5] ), .A1N(n215), 
        .Y(n86) );
  OAI2BB2X1M U223 ( .B0(n238), .B1(n215), .A0N(\Register[4][6] ), .A1N(n215), 
        .Y(n87) );
  OAI2BB2X1M U224 ( .B0(n239), .B1(n215), .A0N(\Register[4][7] ), .A1N(n215), 
        .Y(n88) );
  OAI2BB2X1M U225 ( .B0(n232), .B1(n214), .A0N(\Register[5][0] ), .A1N(n214), 
        .Y(n89) );
  OAI2BB2X1M U226 ( .B0(n233), .B1(n214), .A0N(\Register[5][1] ), .A1N(n214), 
        .Y(n90) );
  OAI2BB2X1M U227 ( .B0(n234), .B1(n214), .A0N(\Register[5][2] ), .A1N(n214), 
        .Y(n91) );
  OAI2BB2X1M U228 ( .B0(n235), .B1(n214), .A0N(\Register[5][3] ), .A1N(n214), 
        .Y(n92) );
  OAI2BB2X1M U229 ( .B0(n236), .B1(n214), .A0N(\Register[5][4] ), .A1N(n214), 
        .Y(n93) );
  OAI2BB2X1M U230 ( .B0(n237), .B1(n214), .A0N(\Register[5][5] ), .A1N(n214), 
        .Y(n94) );
  OAI2BB2X1M U231 ( .B0(n238), .B1(n214), .A0N(\Register[5][6] ), .A1N(n214), 
        .Y(n95) );
  OAI2BB2X1M U232 ( .B0(n239), .B1(n214), .A0N(\Register[5][7] ), .A1N(n214), 
        .Y(n96) );
  OAI2BB2X1M U233 ( .B0(n232), .B1(n213), .A0N(\Register[6][0] ), .A1N(n213), 
        .Y(n97) );
  OAI2BB2X1M U234 ( .B0(n233), .B1(n213), .A0N(\Register[6][1] ), .A1N(n213), 
        .Y(n98) );
  OAI2BB2X1M U235 ( .B0(n234), .B1(n213), .A0N(\Register[6][2] ), .A1N(n213), 
        .Y(n99) );
  OAI2BB2X1M U236 ( .B0(n235), .B1(n213), .A0N(\Register[6][3] ), .A1N(n213), 
        .Y(n100) );
  OAI2BB2X1M U237 ( .B0(n236), .B1(n213), .A0N(\Register[6][4] ), .A1N(n213), 
        .Y(n101) );
  OAI2BB2X1M U238 ( .B0(n237), .B1(n213), .A0N(\Register[6][5] ), .A1N(n213), 
        .Y(n102) );
  OAI2BB2X1M U239 ( .B0(n238), .B1(n213), .A0N(\Register[6][6] ), .A1N(n213), 
        .Y(n103) );
  OAI2BB2X1M U240 ( .B0(n239), .B1(n213), .A0N(\Register[6][7] ), .A1N(n213), 
        .Y(n104) );
  OAI2BB2X1M U241 ( .B0(n232), .B1(n212), .A0N(\Register[7][0] ), .A1N(n212), 
        .Y(n105) );
  OAI2BB2X1M U242 ( .B0(n233), .B1(n212), .A0N(\Register[7][1] ), .A1N(n212), 
        .Y(n106) );
  OAI2BB2X1M U243 ( .B0(n234), .B1(n212), .A0N(\Register[7][2] ), .A1N(n212), 
        .Y(n107) );
  OAI2BB2X1M U244 ( .B0(n235), .B1(n212), .A0N(\Register[7][3] ), .A1N(n212), 
        .Y(n108) );
  OAI2BB2X1M U245 ( .B0(n236), .B1(n212), .A0N(\Register[7][4] ), .A1N(n212), 
        .Y(n109) );
  OAI2BB2X1M U246 ( .B0(n237), .B1(n212), .A0N(\Register[7][5] ), .A1N(n212), 
        .Y(n110) );
  OAI2BB2X1M U247 ( .B0(n238), .B1(n212), .A0N(\Register[7][6] ), .A1N(n212), 
        .Y(n111) );
  OAI2BB2X1M U248 ( .B0(n239), .B1(n212), .A0N(\Register[7][7] ), .A1N(n212), 
        .Y(n112) );
  OAI2BB2X1M U249 ( .B0(n238), .B1(n20), .A0N(REG2[6]), .A1N(n20), .Y(n71) );
  MX4X1M U250 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n203), 
        .S1(n200), .Y(n193) );
endmodule


module ALU_DATA_WIDTH8_FUNC_WIDTH4_DW_div_uns_0 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  INVX2M U2 ( .A(b[1]), .Y(n17) );
  XNOR2X2M U3 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  NAND2X2M U9 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U10 ( .A(a[0]), .Y(n10) );
  OR2X2M U11 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  NAND2X2M U12 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U13 ( .A(a[5]), .Y(n4) );
  INVX2M U14 ( .A(n18), .Y(n3) );
  NAND2X2M U15 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U16 ( .A(a[4]), .Y(n6) );
  INVX2M U17 ( .A(n18), .Y(n5) );
  NAND2X2M U18 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U19 ( .A(a[3]), .Y(n7) );
  NAND2X2M U20 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U21 ( .A(a[2]), .Y(n8) );
  NAND2X2M U22 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U23 ( .A(a[1]), .Y(n9) );
  NAND2X2M U24 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U25 ( .A(a[6]), .Y(n2) );
  INVX2M U26 ( .A(n18), .Y(n1) );
  XNOR2X2M U27 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U28 ( .A(b[5]), .Y(n13) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[4]), .Y(n14) );
  INVX2M U31 ( .A(b[3]), .Y(n15) );
  INVX2M U32 ( .A(b[6]), .Y(n12) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DATA_WIDTH8_FUNC_WIDTH4_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[0]), .Y(n9) );
  INVX2M U3 ( .A(B[6]), .Y(n3) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[5]), .Y(n4) );
  INVX2M U7 ( .A(B[7]), .Y(n2) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVXLM U11 ( .A(B[4]), .Y(n5) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DATA_WIDTH8_FUNC_WIDTH4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:1] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[0]), .B(n2), .Y(SUM[0]) );
  INVX2M U3 ( .A(A[0]), .Y(n2) );
endmodule


module ALU_DATA_WIDTH8_FUNC_WIDTH4_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  INVX2M U4 ( .A(n9), .Y(SUM[6]) );
  INVX2M U5 ( .A(A[6]), .Y(n9) );
  CLKBUFX2M U6 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X2M U7 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U8 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U9 ( .A(B[7]), .Y(n8) );
  CLKBUFX2M U10 ( .A(A[0]), .Y(SUM[0]) );
  CLKBUFX2M U11 ( .A(A[1]), .Y(SUM[1]) );
  CLKBUFX2M U12 ( .A(A[2]), .Y(SUM[2]) );
  CLKBUFX2M U13 ( .A(A[3]), .Y(SUM[3]) );
  CLKBUFX2M U14 ( .A(A[4]), .Y(SUM[4]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DATA_WIDTH8_FUNC_WIDTH4_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;

  ALU_DATA_WIDTH8_FUNC_WIDTH4_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, 
        n11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n9), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n8), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n7), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n6), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n3), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n5), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n4), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  AND2X2M U2 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKXOR2X2M U10 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U12 ( .A(\ab[0][7] ), .Y(n24) );
  INVX2M U13 ( .A(\ab[0][3] ), .Y(n20) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n22) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n21) );
  INVX2M U16 ( .A(\ab[0][6] ), .Y(n23) );
  AND2X2M U17 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n19) );
  XNOR2X2M U23 ( .A(\ab[1][1] ), .B(n19), .Y(\SUMB[1][1] ) );
  AND2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U25 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U26 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U27 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  CLKXOR2X2M U28 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U29 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U30 ( .A(\SUMB[7][1] ), .Y(n17) );
  INVX2M U31 ( .A(\ab[0][1] ), .Y(n18) );
  XNOR2X2M U32 ( .A(\ab[1][0] ), .B(n18), .Y(PRODUCT[1]) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n24), .Y(\SUMB[1][6] ) );
  XNOR2X2M U34 ( .A(\ab[1][4] ), .B(n22), .Y(\SUMB[1][4] ) );
  XNOR2X2M U35 ( .A(\ab[1][5] ), .B(n23), .Y(\SUMB[1][5] ) );
  XNOR2X2M U36 ( .A(\ab[1][2] ), .B(n20), .Y(\SUMB[1][2] ) );
  XNOR2X2M U37 ( .A(\ab[1][3] ), .B(n21), .Y(\SUMB[1][3] ) );
  INVX2M U38 ( .A(A[0]), .Y(n32) );
  INVX2M U39 ( .A(A[1]), .Y(n31) );
  INVX2M U40 ( .A(A[3]), .Y(n29) );
  INVX2M U41 ( .A(A[5]), .Y(n27) );
  INVX2M U42 ( .A(A[2]), .Y(n30) );
  INVX2M U43 ( .A(A[6]), .Y(n26) );
  INVX2M U44 ( .A(B[0]), .Y(n40) );
  INVX2M U45 ( .A(A[4]), .Y(n28) );
  INVX2M U46 ( .A(A[7]), .Y(n25) );
  INVX2M U47 ( .A(B[6]), .Y(n34) );
  INVX2M U48 ( .A(B[7]), .Y(n33) );
  INVX2M U49 ( .A(B[5]), .Y(n35) );
  INVX2M U50 ( .A(B[3]), .Y(n37) );
  INVX2M U51 ( .A(B[2]), .Y(n38) );
  INVX2M U52 ( .A(B[1]), .Y(n39) );
  INVXLM U53 ( .A(B[4]), .Y(n36) );
  NOR2X1M U55 ( .A(n25), .B(n33), .Y(\ab[7][7] ) );
  NOR2X1M U56 ( .A(n25), .B(n34), .Y(\ab[7][6] ) );
  NOR2X1M U57 ( .A(n25), .B(n35), .Y(\ab[7][5] ) );
  NOR2X1M U58 ( .A(n25), .B(n36), .Y(\ab[7][4] ) );
  NOR2X1M U59 ( .A(n25), .B(n37), .Y(\ab[7][3] ) );
  NOR2X1M U60 ( .A(n25), .B(n38), .Y(\ab[7][2] ) );
  NOR2X1M U61 ( .A(n25), .B(n39), .Y(\ab[7][1] ) );
  NOR2X1M U62 ( .A(n25), .B(n40), .Y(\ab[7][0] ) );
  NOR2X1M U63 ( .A(n33), .B(n26), .Y(\ab[6][7] ) );
  NOR2X1M U64 ( .A(n34), .B(n26), .Y(\ab[6][6] ) );
  NOR2X1M U65 ( .A(n35), .B(n26), .Y(\ab[6][5] ) );
  NOR2X1M U66 ( .A(n36), .B(n26), .Y(\ab[6][4] ) );
  NOR2X1M U67 ( .A(n37), .B(n26), .Y(\ab[6][3] ) );
  NOR2X1M U68 ( .A(n38), .B(n26), .Y(\ab[6][2] ) );
  NOR2X1M U69 ( .A(n39), .B(n26), .Y(\ab[6][1] ) );
  NOR2X1M U70 ( .A(n40), .B(n26), .Y(\ab[6][0] ) );
  NOR2X1M U71 ( .A(n33), .B(n27), .Y(\ab[5][7] ) );
  NOR2X1M U72 ( .A(n34), .B(n27), .Y(\ab[5][6] ) );
  NOR2X1M U73 ( .A(n35), .B(n27), .Y(\ab[5][5] ) );
  NOR2X1M U74 ( .A(n36), .B(n27), .Y(\ab[5][4] ) );
  NOR2X1M U75 ( .A(n37), .B(n27), .Y(\ab[5][3] ) );
  NOR2X1M U76 ( .A(n38), .B(n27), .Y(\ab[5][2] ) );
  NOR2X1M U77 ( .A(n39), .B(n27), .Y(\ab[5][1] ) );
  NOR2X1M U78 ( .A(n40), .B(n27), .Y(\ab[5][0] ) );
  NOR2X1M U79 ( .A(n33), .B(n28), .Y(\ab[4][7] ) );
  NOR2X1M U80 ( .A(n34), .B(n28), .Y(\ab[4][6] ) );
  NOR2X1M U81 ( .A(n35), .B(n28), .Y(\ab[4][5] ) );
  NOR2X1M U82 ( .A(n36), .B(n28), .Y(\ab[4][4] ) );
  NOR2X1M U83 ( .A(n37), .B(n28), .Y(\ab[4][3] ) );
  NOR2X1M U84 ( .A(n38), .B(n28), .Y(\ab[4][2] ) );
  NOR2X1M U85 ( .A(n39), .B(n28), .Y(\ab[4][1] ) );
  NOR2X1M U86 ( .A(n40), .B(n28), .Y(\ab[4][0] ) );
  NOR2X1M U87 ( .A(n33), .B(n29), .Y(\ab[3][7] ) );
  NOR2X1M U88 ( .A(n34), .B(n29), .Y(\ab[3][6] ) );
  NOR2X1M U89 ( .A(n35), .B(n29), .Y(\ab[3][5] ) );
  NOR2X1M U90 ( .A(n36), .B(n29), .Y(\ab[3][4] ) );
  NOR2X1M U91 ( .A(n37), .B(n29), .Y(\ab[3][3] ) );
  NOR2X1M U92 ( .A(n38), .B(n29), .Y(\ab[3][2] ) );
  NOR2X1M U93 ( .A(n39), .B(n29), .Y(\ab[3][1] ) );
  NOR2X1M U94 ( .A(n40), .B(n29), .Y(\ab[3][0] ) );
  NOR2X1M U95 ( .A(n33), .B(n30), .Y(\ab[2][7] ) );
  NOR2X1M U96 ( .A(n34), .B(n30), .Y(\ab[2][6] ) );
  NOR2X1M U97 ( .A(n35), .B(n30), .Y(\ab[2][5] ) );
  NOR2X1M U98 ( .A(n36), .B(n30), .Y(\ab[2][4] ) );
  NOR2X1M U99 ( .A(n37), .B(n30), .Y(\ab[2][3] ) );
  NOR2X1M U100 ( .A(n38), .B(n30), .Y(\ab[2][2] ) );
  NOR2X1M U101 ( .A(n39), .B(n30), .Y(\ab[2][1] ) );
  NOR2X1M U102 ( .A(n40), .B(n30), .Y(\ab[2][0] ) );
  NOR2X1M U103 ( .A(n33), .B(n31), .Y(\ab[1][7] ) );
  NOR2X1M U104 ( .A(n34), .B(n31), .Y(\ab[1][6] ) );
  NOR2X1M U105 ( .A(n35), .B(n31), .Y(\ab[1][5] ) );
  NOR2X1M U106 ( .A(n36), .B(n31), .Y(\ab[1][4] ) );
  NOR2X1M U107 ( .A(n37), .B(n31), .Y(\ab[1][3] ) );
  NOR2X1M U108 ( .A(n38), .B(n31), .Y(\ab[1][2] ) );
  NOR2X1M U109 ( .A(n39), .B(n31), .Y(\ab[1][1] ) );
  NOR2X1M U110 ( .A(n40), .B(n31), .Y(\ab[1][0] ) );
  NOR2X1M U111 ( .A(n33), .B(n32), .Y(\ab[0][7] ) );
  NOR2X1M U112 ( .A(n34), .B(n32), .Y(\ab[0][6] ) );
  NOR2X1M U113 ( .A(n35), .B(n32), .Y(\ab[0][5] ) );
  NOR2X1M U114 ( .A(n36), .B(n32), .Y(\ab[0][4] ) );
  NOR2X1M U115 ( .A(n37), .B(n32), .Y(\ab[0][3] ) );
  NOR2X1M U116 ( .A(n38), .B(n32), .Y(\ab[0][2] ) );
  NOR2X1M U117 ( .A(n39), .B(n32), .Y(\ab[0][1] ) );
  NOR2X1M U118 ( .A(n40), .B(n32), .Y(PRODUCT[0]) );
endmodule


module ALU_DATA_WIDTH8_FUNC_WIDTH4 ( CLK, RST, A, B, ALU_OUT, ALU_FUNC, Enable, 
        OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  output [15:0] ALU_OUT;
  input [3:0] ALU_FUNC;
  input CLK, RST, Enable;
  output OUT_VALID;
  wire   N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98,
         N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N151, N152, \VALID_REG[0] , N169, n9,
         n10, n11, n12, n13, n14, n16, n19, n20, n21, n22, n23, n25, n28, n29,
         n31, n32, n33, n34, n36, n37, n38, n40, n41, n42, n44, n45, n46, n47,
         n49, n51, n53, n54, n55, n57, n58, n59, n60, n63, n64, n65, n67, n68,
         n69, n70, n73, n74, n75, n77, n78, n79, n80, n83, n84, n85, n87, n88,
         n89, n90, n93, n94, n95, n97, n98, n99, n100, n103, n104, n105, n107,
         n108, n109, n110, n111, n113, n114, n116, n117, n118, n121, n122,
         n123, n124, n125, n126, n127, n128, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n3, n4, n5, n6, n7, n8, n15, n17, n18, n24,
         n26, n27, n30, n35, n39, n43, n48, n50, n52, n56, n61, n62, n66, n71,
         n72, n76, n81, n82, n86, n91, n92, n96, n101, n102, n106, n112, n115,
         n119, n120, n129, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174;
  wire   [7:0] ALU_OP_1;
  wire   [7:0] ALU_OP_2;
  wire   [15:0] ALU_OUT_REG;

  ALU_DATA_WIDTH8_FUNC_WIDTH4_DW_div_uns_0 div_40 ( .a({n26, n24, n18, n17, 
        n15, n8, n7, n6}), .b({ALU_OP_2[7:1], n5}), .quotient({N126, N125, 
        N124, N123, N122, N121, N120, N119}) );
  ALU_DATA_WIDTH8_FUNC_WIDTH4_DW01_sub_0 sub_38 ( .A({1'b0, n26, n24, n18, n17, 
        n15, n8, n7, n6}), .B({1'b0, ALU_OP_2[7:1], n5}), .CI(1'b0), .DIFF({
        N102, N101, N100, N99, N98, N97, N96, N95, N94}) );
  ALU_DATA_WIDTH8_FUNC_WIDTH4_DW01_add_0 add_37 ( .A({1'b0, n26, n24, n18, n17, 
        n15, n8, n7, n6}), .B({1'b0, ALU_OP_2[7:1], n5}), .CI(1'b0), .SUM({N93, 
        N92, N91, N90, N89, N88, N87, N86, N85}) );
  ALU_DATA_WIDTH8_FUNC_WIDTH4_DW02_mult_0 mult_39 ( .A({n26, n24, n18, n17, 
        n15, n8, n7, n6}), .B({ALU_OP_2[7:1], n5}), .TC(1'b0), .PRODUCT({N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, 
        N105, N104, N103}) );
  DFFRQX2M \ALU_OUT_REG_reg[15]  ( .D(n139), .CK(CLK), .RN(n50), .Q(
        ALU_OUT_REG[15]) );
  DFFRQX2M \ALU_OUT_REG_reg[14]  ( .D(n140), .CK(CLK), .RN(n50), .Q(
        ALU_OUT_REG[14]) );
  DFFRQX2M \ALU_OUT_REG_reg[13]  ( .D(n141), .CK(CLK), .RN(n50), .Q(
        ALU_OUT_REG[13]) );
  DFFRQX2M \ALU_OUT_REG_reg[12]  ( .D(n142), .CK(CLK), .RN(n50), .Q(
        ALU_OUT_REG[12]) );
  DFFRQX2M \ALU_OUT_REG_reg[11]  ( .D(n143), .CK(CLK), .RN(n50), .Q(
        ALU_OUT_REG[11]) );
  DFFRQX2M \ALU_OUT_REG_reg[10]  ( .D(n144), .CK(CLK), .RN(n50), .Q(
        ALU_OUT_REG[10]) );
  DFFRQX2M \ALU_OUT_REG_reg[9]  ( .D(n145), .CK(CLK), .RN(n50), .Q(
        ALU_OUT_REG[9]) );
  DFFRQX2M \ALU_OUT_REG_reg[7]  ( .D(n137), .CK(CLK), .RN(n52), .Q(
        ALU_OUT_REG[7]) );
  DFFRQX2M \ALU_OUT_REG_reg[6]  ( .D(n136), .CK(CLK), .RN(n52), .Q(
        ALU_OUT_REG[6]) );
  DFFRQX2M \ALU_OUT_REG_reg[5]  ( .D(n135), .CK(CLK), .RN(n52), .Q(
        ALU_OUT_REG[5]) );
  DFFRQX2M \ALU_OUT_REG_reg[4]  ( .D(n134), .CK(CLK), .RN(n52), .Q(
        ALU_OUT_REG[4]) );
  DFFRQX2M \ALU_OUT_REG_reg[3]  ( .D(n133), .CK(CLK), .RN(n52), .Q(
        ALU_OUT_REG[3]) );
  DFFRQX2M \ALU_OUT_REG_reg[2]  ( .D(n132), .CK(CLK), .RN(n52), .Q(
        ALU_OUT_REG[2]) );
  DFFRQX2M \ALU_OUT_REG_reg[1]  ( .D(n131), .CK(CLK), .RN(n52), .Q(
        ALU_OUT_REG[1]) );
  DFFRQX2M \ALU_OUT_REG_reg[0]  ( .D(n130), .CK(CLK), .RN(n52), .Q(
        ALU_OUT_REG[0]) );
  DFFRQX2M \ALU_OUT_REG_reg[8]  ( .D(n138), .CK(CLK), .RN(n50), .Q(
        ALU_OUT_REG[8]) );
  DFFRQX2M \VALID_REG_reg[0]  ( .D(N169), .CK(CLK), .RN(n52), .Q(
        \VALID_REG[0] ) );
  DFFRQX2M \ALU_OP_1_reg[2]  ( .D(A[2]), .CK(CLK), .RN(n48), .Q(ALU_OP_1[2])
         );
  DFFRQX2M \ALU_OP_1_reg[1]  ( .D(A[1]), .CK(CLK), .RN(n48), .Q(ALU_OP_1[1])
         );
  DFFRQX2M \ALU_OP_1_reg[0]  ( .D(A[0]), .CK(CLK), .RN(n48), .Q(ALU_OP_1[0])
         );
  DFFRQX2M \ALU_OP_1_reg[3]  ( .D(A[3]), .CK(CLK), .RN(n48), .Q(ALU_OP_1[3])
         );
  DFFRQX2M \ALU_OP_1_reg[4]  ( .D(A[4]), .CK(CLK), .RN(n48), .Q(ALU_OP_1[4])
         );
  DFFRQX2M \ALU_OP_1_reg[5]  ( .D(A[5]), .CK(CLK), .RN(n48), .Q(ALU_OP_1[5])
         );
  DFFRQX2M \ALU_OP_1_reg[7]  ( .D(A[7]), .CK(CLK), .RN(n48), .Q(ALU_OP_1[7])
         );
  DFFRQX2M \ALU_OP_1_reg[6]  ( .D(A[6]), .CK(CLK), .RN(n48), .Q(ALU_OP_1[6])
         );
  DFFRQX2M \ALU_OP_2_reg[0]  ( .D(B[0]), .CK(CLK), .RN(n50), .Q(ALU_OP_2[0])
         );
  DFFRQX2M \ALU_OP_2_reg[4]  ( .D(B[4]), .CK(CLK), .RN(n48), .Q(ALU_OP_2[4])
         );
  DFFRQX2M \ALU_OP_2_reg[1]  ( .D(B[1]), .CK(CLK), .RN(n50), .Q(ALU_OP_2[1])
         );
  DFFRQX2M \ALU_OP_2_reg[3]  ( .D(B[3]), .CK(CLK), .RN(n50), .Q(ALU_OP_2[3])
         );
  DFFRQX2M \ALU_OP_2_reg[2]  ( .D(B[2]), .CK(CLK), .RN(n50), .Q(ALU_OP_2[2])
         );
  DFFRQX2M \ALU_OP_2_reg[7]  ( .D(B[7]), .CK(CLK), .RN(n48), .Q(ALU_OP_2[7])
         );
  DFFRQX2M \ALU_OP_2_reg[5]  ( .D(B[5]), .CK(CLK), .RN(n48), .Q(ALU_OP_2[5])
         );
  DFFRQX2M \ALU_OP_2_reg[6]  ( .D(B[6]), .CK(CLK), .RN(n48), .Q(ALU_OP_2[6])
         );
  DFFRX1M \VALID_REG_reg[1]  ( .D(\VALID_REG[0] ), .CK(CLK), .RN(RST), .Q(
        OUT_VALID), .QN(n167) );
  NOR4X1M U3 ( .A(n113), .B(n173), .C(n35), .D(n27), .Y(n25) );
  NOR4X2M U4 ( .A(n172), .B(n171), .C(n35), .D(ALU_FUNC[1]), .Y(n19) );
  NOR4X1M U7 ( .A(n33), .B(n35), .C(n27), .D(ALU_FUNC[1]), .Y(n16) );
  CLKBUFX2M U8 ( .A(n21), .Y(n3) );
  CLKBUFX2M U9 ( .A(ALU_FUNC[0]), .Y(n30) );
  CLKBUFX2M U10 ( .A(ALU_OP_1[6]), .Y(n24) );
  CLKBUFX2M U11 ( .A(ALU_OP_2[0]), .Y(n5) );
  CLKBUFX2M U12 ( .A(ALU_OP_1[5]), .Y(n18) );
  CLKBUFX2M U13 ( .A(ALU_OP_1[4]), .Y(n17) );
  CLKBUFX2M U14 ( .A(ALU_OP_1[3]), .Y(n15) );
  CLKBUFX2M U15 ( .A(ALU_OP_1[2]), .Y(n8) );
  CLKBUFX2M U16 ( .A(ALU_OP_1[1]), .Y(n7) );
  CLKBUFX2M U17 ( .A(ALU_OP_1[0]), .Y(n6) );
  INVX2M U18 ( .A(n39), .Y(n35) );
  NAND2X2M U19 ( .A(n39), .B(n31), .Y(n51) );
  INVX2M U20 ( .A(n25), .Y(n169) );
  CLKBUFX2M U21 ( .A(Enable), .Y(n39) );
  INVX2M U22 ( .A(n28), .Y(n170) );
  CLKBUFX2M U23 ( .A(Enable), .Y(n43) );
  OAI21X2M U24 ( .A0(n38), .A1(n37), .B0(n43), .Y(n49) );
  OAI21BX1M U25 ( .A0(n173), .A1(n113), .B0N(n38), .Y(n31) );
  NAND3X2M U26 ( .A(n27), .B(n39), .C(n37), .Y(n28) );
  AOI21X2M U27 ( .A0(n16), .A1(n152), .B0(n170), .Y(n14) );
  INVX2M U28 ( .A(n16), .Y(n168) );
  INVX2M U29 ( .A(n30), .Y(n174) );
  CLKBUFX2M U30 ( .A(n20), .Y(n4) );
  NOR2BX2M U31 ( .AN(n111), .B(n173), .Y(n20) );
  OAI22X1M U32 ( .A0(n5), .A1(n22), .B0(n23), .B1(n174), .Y(n11) );
  AOI21X2M U33 ( .A0(n6), .A1(n16), .B0(n25), .Y(n22) );
  AOI22X1M U34 ( .A0(N119), .A1(n4), .B0(N94), .B1(n3), .Y(n23) );
  OR4X1M U35 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n130) );
  OAI22X1M U36 ( .A0(n43), .A1(n166), .B0(n6), .B1(n169), .Y(n10) );
  OAI22X1M U37 ( .A0(n30), .A1(n13), .B0(n14), .B1(n158), .Y(n12) );
  OAI22X1M U38 ( .A0(n152), .A1(n28), .B0(n29), .B1(n35), .Y(n9) );
  OAI22X1M U39 ( .A0(n46), .A1(n174), .B0(n30), .B1(n47), .Y(n45) );
  AOI222X1M U40 ( .A0(n8), .A1(n19), .B0(N104), .B1(n4), .C0(N86), .C1(n3), 
        .Y(n47) );
  AOI222X1M U41 ( .A0(n19), .A1(n6), .B0(N120), .B1(n4), .C0(N95), .C1(n3), 
        .Y(n46) );
  OAI22X1M U42 ( .A0(n59), .A1(n174), .B0(n30), .B1(n60), .Y(n58) );
  AOI222X1M U43 ( .A0(n15), .A1(n19), .B0(N105), .B1(n4), .C0(N87), .C1(n3), 
        .Y(n60) );
  AOI222X1M U44 ( .A0(n7), .A1(n19), .B0(N121), .B1(n4), .C0(N96), .C1(n3), 
        .Y(n59) );
  OAI22X1M U45 ( .A0(n69), .A1(n174), .B0(n30), .B1(n70), .Y(n68) );
  AOI222X1M U46 ( .A0(n17), .A1(n19), .B0(N106), .B1(n4), .C0(N88), .C1(n3), 
        .Y(n70) );
  AOI222X1M U47 ( .A0(n8), .A1(n19), .B0(N122), .B1(n4), .C0(N97), .C1(n3), 
        .Y(n69) );
  OAI22X1M U48 ( .A0(n79), .A1(n174), .B0(n30), .B1(n80), .Y(n78) );
  AOI222X1M U49 ( .A0(n18), .A1(n19), .B0(N107), .B1(n4), .C0(N89), .C1(n3), 
        .Y(n80) );
  AOI222X1M U50 ( .A0(n15), .A1(n19), .B0(N123), .B1(n4), .C0(N98), .C1(n3), 
        .Y(n79) );
  OAI22X1M U51 ( .A0(n89), .A1(n174), .B0(n30), .B1(n90), .Y(n88) );
  AOI222X1M U52 ( .A0(n24), .A1(n19), .B0(N108), .B1(n4), .C0(N90), .C1(n3), 
        .Y(n90) );
  AOI222X1M U53 ( .A0(n17), .A1(n19), .B0(N124), .B1(n4), .C0(N99), .C1(n3), 
        .Y(n89) );
  OAI22X1M U54 ( .A0(n99), .A1(n174), .B0(n30), .B1(n100), .Y(n98) );
  AOI222X1M U55 ( .A0(n18), .A1(n19), .B0(N125), .B1(n4), .C0(N100), .C1(n3), 
        .Y(n99) );
  AOI222X1M U56 ( .A0(n26), .A1(n19), .B0(N109), .B1(n4), .C0(N91), .C1(n3), 
        .Y(n100) );
  OAI22X1M U57 ( .A0(n109), .A1(n174), .B0(n30), .B1(n110), .Y(n108) );
  AOI222X1M U58 ( .A0(n24), .A1(n19), .B0(N126), .B1(n4), .C0(N101), .C1(n3), 
        .Y(n109) );
  AOI22X1M U59 ( .A0(N110), .A1(n4), .B0(N92), .B1(n3), .Y(n110) );
  AOI222X1M U60 ( .A0(n7), .A1(n19), .B0(N103), .B1(n4), .C0(N85), .C1(n3), 
        .Y(n13) );
  AOI31X2M U61 ( .A0(n152), .A1(n158), .A2(n31), .B0(n32), .Y(n29) );
  OAI31X1M U62 ( .A0(n33), .A1(n34), .A2(n173), .B0(n36), .Y(n32) );
  OAI211X2M U63 ( .A0(n37), .A1(n38), .B0(n6), .C0(n5), .Y(n36) );
  AOI22X1M U64 ( .A0(N151), .A1(n174), .B0(N152), .B1(n30), .Y(n34) );
  NOR3X2M U65 ( .A(n174), .B(ALU_FUNC[1]), .C(n33), .Y(n38) );
  OAI221X1M U66 ( .A0(n151), .A1(n49), .B0(n7), .B1(n168), .C0(n28), .Y(n44)
         );
  OAI221X1M U67 ( .A0(n120), .A1(n49), .B0(n8), .B1(n168), .C0(n28), .Y(n57)
         );
  OAI221X1M U68 ( .A0(n49), .A1(n129), .B0(n15), .B1(n168), .C0(n28), .Y(n67)
         );
  OAI221X1M U69 ( .A0(n49), .A1(n149), .B0(n18), .B1(n168), .C0(n28), .Y(n87)
         );
  OAI221X1M U70 ( .A0(n49), .A1(n148), .B0(n24), .B1(n168), .C0(n28), .Y(n97)
         );
  OAI221X1M U71 ( .A0(n49), .A1(n147), .B0(n26), .B1(n168), .C0(n28), .Y(n107)
         );
  OAI221X1M U72 ( .A0(n7), .A1(n51), .B0(n168), .B1(n151), .C0(n169), .Y(n42)
         );
  OAI221X1M U73 ( .A0(n8), .A1(n51), .B0(n168), .B1(n120), .C0(n169), .Y(n55)
         );
  OAI221X1M U74 ( .A0(n15), .A1(n51), .B0(n168), .B1(n129), .C0(n169), .Y(n65)
         );
  OAI221X1M U75 ( .A0(n18), .A1(n51), .B0(n168), .B1(n149), .C0(n169), .Y(n85)
         );
  OAI221X1M U76 ( .A0(n24), .A1(n51), .B0(n168), .B1(n148), .C0(n169), .Y(n95)
         );
  OAI221X1M U77 ( .A0(n26), .A1(n51), .B0(n168), .B1(n147), .C0(n169), .Y(n105) );
  OAI221X1M U78 ( .A0(n17), .A1(n51), .B0(n168), .B1(n150), .C0(n169), .Y(n75)
         );
  OAI221X1M U79 ( .A0(n49), .A1(n150), .B0(n17), .B1(n168), .C0(n28), .Y(n77)
         );
  NOR3X2M U80 ( .A(ALU_FUNC[2]), .B(ALU_FUNC[3]), .C(n35), .Y(n111) );
  NOR2X2M U81 ( .A(n113), .B(ALU_FUNC[1]), .Y(n37) );
  INVX2M U82 ( .A(ALU_FUNC[1]), .Y(n173) );
  NAND2X2M U83 ( .A(ALU_FUNC[3]), .B(n172), .Y(n33) );
  NAND2X2M U84 ( .A(ALU_FUNC[2]), .B(n171), .Y(n113) );
  INVX2M U85 ( .A(ALU_FUNC[3]), .Y(n171) );
  NAND2X2M U86 ( .A(n128), .B(n51), .Y(n118) );
  NAND3X2M U87 ( .A(n27), .B(n3), .C(N102), .Y(n128) );
  NOR2BX2M U88 ( .AN(n111), .B(ALU_FUNC[1]), .Y(n21) );
  CLKBUFX2M U89 ( .A(ALU_FUNC[0]), .Y(n27) );
  INVX2M U90 ( .A(ALU_FUNC[2]), .Y(n172) );
  INVX2M U91 ( .A(n8), .Y(n120) );
  NOR4X1M U92 ( .A(n173), .B(n35), .C(n27), .D(ALU_FUNC[3]), .Y(n114) );
  INVX2M U93 ( .A(n6), .Y(n152) );
  INVX2M U94 ( .A(n18), .Y(n149) );
  INVX2M U95 ( .A(n7), .Y(n151) );
  INVX2M U96 ( .A(n24), .Y(n148) );
  INVX2M U97 ( .A(n26), .Y(n147) );
  INVX2M U98 ( .A(n17), .Y(n150) );
  INVX2M U99 ( .A(n15), .Y(n129) );
  INVX2M U100 ( .A(n5), .Y(n158) );
  CLKBUFX2M U101 ( .A(RST), .Y(n50) );
  CLKBUFX2M U102 ( .A(RST), .Y(n48) );
  CLKBUFX2M U103 ( .A(RST), .Y(n52) );
  CLKBUFX2M U104 ( .A(ALU_OP_1[7]), .Y(n26) );
  OAI211X2M U105 ( .A0(n43), .A1(n165), .B0(n40), .C0(n41), .Y(n131) );
  AOI22X1M U106 ( .A0(n170), .A1(n7), .B0(n25), .B1(n151), .Y(n40) );
  AOI221XLM U107 ( .A0(n42), .A1(n157), .B0(ALU_OP_2[1]), .B1(n44), .C0(n45), 
        .Y(n41) );
  INVX2M U108 ( .A(ALU_OP_2[1]), .Y(n157) );
  OAI211X2M U109 ( .A0(n43), .A1(n164), .B0(n53), .C0(n54), .Y(n132) );
  AOI22X1M U110 ( .A0(n8), .A1(n170), .B0(n25), .B1(n120), .Y(n53) );
  AOI221XLM U111 ( .A0(n55), .A1(n156), .B0(ALU_OP_2[2]), .B1(n57), .C0(n58), 
        .Y(n54) );
  INVX2M U112 ( .A(ALU_OP_2[2]), .Y(n156) );
  OAI211X2M U113 ( .A0(n43), .A1(n163), .B0(n63), .C0(n64), .Y(n133) );
  AOI22X1M U114 ( .A0(n15), .A1(n170), .B0(n25), .B1(n129), .Y(n63) );
  AOI221XLM U115 ( .A0(n65), .A1(n155), .B0(ALU_OP_2[3]), .B1(n67), .C0(n68), 
        .Y(n64) );
  INVX2M U116 ( .A(ALU_OP_2[3]), .Y(n155) );
  INVX2M U117 ( .A(n126), .Y(n140) );
  AOI221XLM U118 ( .A0(N117), .A1(n114), .B0(ALU_OUT_REG[14]), .B1(n35), .C0(
        n118), .Y(n126) );
  INVX2M U119 ( .A(n127), .Y(n139) );
  AOI221XLM U120 ( .A0(N118), .A1(n114), .B0(ALU_OUT_REG[15]), .B1(n35), .C0(
        n118), .Y(n127) );
  OAI211X2M U121 ( .A0(n43), .A1(n162), .B0(n73), .C0(n74), .Y(n134) );
  AOI22X1M U122 ( .A0(n17), .A1(n170), .B0(n25), .B1(n150), .Y(n73) );
  INVX2M U123 ( .A(n123), .Y(n143) );
  AOI221XLM U124 ( .A0(N114), .A1(n114), .B0(ALU_OUT_REG[11]), .B1(n35), .C0(
        n118), .Y(n123) );
  INVX2M U125 ( .A(n125), .Y(n141) );
  AOI221XLM U126 ( .A0(N116), .A1(n114), .B0(ALU_OUT_REG[13]), .B1(n35), .C0(
        n118), .Y(n125) );
  OAI211X2M U127 ( .A0(n39), .A1(n159), .B0(n103), .C0(n104), .Y(n137) );
  AOI22X1M U128 ( .A0(n26), .A1(n170), .B0(n25), .B1(n147), .Y(n103) );
  AOI221XLM U129 ( .A0(n105), .A1(n153), .B0(ALU_OP_2[7]), .B1(n107), .C0(n108), .Y(n104) );
  INVX2M U130 ( .A(ALU_OP_2[7]), .Y(n153) );
  OAI211X2M U131 ( .A0(n43), .A1(n161), .B0(n83), .C0(n84), .Y(n135) );
  AOI22X1M U132 ( .A0(n18), .A1(n170), .B0(n25), .B1(n149), .Y(n83) );
  AOI221XLM U133 ( .A0(n85), .A1(n154), .B0(ALU_OP_2[5]), .B1(n87), .C0(n88), 
        .Y(n84) );
  INVX2M U134 ( .A(ALU_OP_2[5]), .Y(n154) );
  OAI211X2M U135 ( .A0(n39), .A1(n160), .B0(n93), .C0(n94), .Y(n136) );
  AOI22X1M U136 ( .A0(n24), .A1(n170), .B0(n25), .B1(n148), .Y(n93) );
  AOI221XLM U137 ( .A0(n95), .A1(n119), .B0(ALU_OP_2[6]), .B1(n97), .C0(n98), 
        .Y(n94) );
  INVX2M U138 ( .A(n121), .Y(n145) );
  AOI221XLM U139 ( .A0(N112), .A1(n114), .B0(ALU_OUT_REG[9]), .B1(n35), .C0(
        n118), .Y(n121) );
  INVX2M U140 ( .A(n122), .Y(n144) );
  AOI221XLM U141 ( .A0(N113), .A1(n114), .B0(ALU_OUT_REG[10]), .B1(n35), .C0(
        n118), .Y(n122) );
  INVX2M U142 ( .A(n124), .Y(n142) );
  AOI221XLM U143 ( .A0(N115), .A1(n114), .B0(ALU_OUT_REG[12]), .B1(n35), .C0(
        n118), .Y(n124) );
  INVX2M U144 ( .A(ALU_OP_2[6]), .Y(n119) );
  OAI2B11X2M U145 ( .A1N(n114), .A0(n146), .B0(n116), .C0(n117), .Y(n138) );
  AOI33X2M U146 ( .A0(n3), .A1(n174), .A2(N93), .B0(n19), .B1(n30), .B2(n26), 
        .Y(n116) );
  AOI21X2M U147 ( .A0(ALU_OUT_REG[8]), .A1(n35), .B0(n118), .Y(n117) );
  INVX2M U148 ( .A(N111), .Y(n146) );
  NOR2X2M U149 ( .A(\VALID_REG[0] ), .B(n35), .Y(N169) );
  NOR2X2M U150 ( .A(n166), .B(n167), .Y(ALU_OUT[0]) );
  NOR2X2M U151 ( .A(n165), .B(n167), .Y(ALU_OUT[1]) );
  NOR2X2M U152 ( .A(n164), .B(n167), .Y(ALU_OUT[2]) );
  NOR2X2M U153 ( .A(n163), .B(n167), .Y(ALU_OUT[3]) );
  NOR2X2M U154 ( .A(n162), .B(n167), .Y(ALU_OUT[4]) );
  NOR2X2M U155 ( .A(n161), .B(n167), .Y(ALU_OUT[5]) );
  NOR2X2M U156 ( .A(n160), .B(n167), .Y(ALU_OUT[6]) );
  NOR2X2M U157 ( .A(n159), .B(n167), .Y(ALU_OUT[7]) );
  NOR2BX2M U158 ( .AN(ALU_OUT_REG[8]), .B(n167), .Y(ALU_OUT[8]) );
  NOR2BX2M U159 ( .AN(ALU_OUT_REG[9]), .B(n167), .Y(ALU_OUT[9]) );
  NOR2BX2M U160 ( .AN(ALU_OUT_REG[10]), .B(n167), .Y(ALU_OUT[10]) );
  NOR2BX2M U161 ( .AN(ALU_OUT_REG[11]), .B(n167), .Y(ALU_OUT[11]) );
  NOR2BX2M U162 ( .AN(ALU_OUT_REG[12]), .B(n167), .Y(ALU_OUT[12]) );
  NOR2BX2M U163 ( .AN(ALU_OUT_REG[13]), .B(n167), .Y(ALU_OUT[13]) );
  NOR2BX2M U164 ( .AN(ALU_OUT_REG[14]), .B(n167), .Y(ALU_OUT[14]) );
  NOR2BX2M U165 ( .AN(ALU_OUT_REG[15]), .B(n167), .Y(ALU_OUT[15]) );
  INVX2M U166 ( .A(ALU_OUT_REG[1]), .Y(n165) );
  INVX2M U167 ( .A(ALU_OUT_REG[2]), .Y(n164) );
  INVX2M U168 ( .A(ALU_OUT_REG[3]), .Y(n163) );
  INVX2M U169 ( .A(ALU_OUT_REG[4]), .Y(n162) );
  INVX2M U170 ( .A(ALU_OUT_REG[5]), .Y(n161) );
  INVX2M U171 ( .A(ALU_OUT_REG[6]), .Y(n160) );
  INVX2M U172 ( .A(ALU_OUT_REG[7]), .Y(n159) );
  INVX2M U173 ( .A(ALU_OUT_REG[0]), .Y(n166) );
  AOI221XLM U174 ( .A0(n75), .A1(n115), .B0(ALU_OP_2[4]), .B1(n77), .C0(n78), 
        .Y(n74) );
  INVXLM U175 ( .A(ALU_OP_2[4]), .Y(n115) );
  NAND2BXLM U176 ( .AN(n17), .B(ALU_OP_2[4]), .Y(n82) );
  NOR2BX1M U177 ( .AN(n5), .B(n6), .Y(n56) );
  OAI2B2X1M U178 ( .A1N(n7), .A0(n56), .B0(ALU_OP_2[1]), .B1(n56), .Y(n61) );
  NAND2BX1M U179 ( .AN(n24), .B(ALU_OP_2[6]), .Y(n96) );
  CLKNAND2X2M U180 ( .A(ALU_OP_2[5]), .B(n149), .Y(n92) );
  NAND4X1M U181 ( .A(n61), .B(n96), .C(n92), .D(n82), .Y(n112) );
  CLKNAND2X2M U182 ( .A(ALU_OP_2[3]), .B(n129), .Y(n81) );
  CLKNAND2X2M U183 ( .A(ALU_OP_2[2]), .B(n120), .Y(n62) );
  CLKNAND2X2M U184 ( .A(n81), .B(n62), .Y(n106) );
  NOR2BX1M U185 ( .AN(ALU_OP_2[7]), .B(n26), .Y(n102) );
  NOR2BX1M U186 ( .AN(n6), .B(n5), .Y(n71) );
  OAI2BB1X1M U187 ( .A0N(n71), .A1N(n7), .B0(ALU_OP_2[1]), .Y(n66) );
  OAI211X1M U188 ( .A0(n7), .A1(n71), .B0(n66), .C0(n62), .Y(n72) );
  OAI221X1M U189 ( .A0(ALU_OP_2[2]), .A1(n120), .B0(ALU_OP_2[3]), .B1(n129), 
        .C0(n72), .Y(n76) );
  AOI32X1M U190 ( .A0(n82), .A1(n81), .A2(n76), .B0(n17), .B1(n115), .Y(n86)
         );
  OAI21X1M U191 ( .A0(ALU_OP_2[5]), .A1(n149), .B0(n86), .Y(n91) );
  AOI32X1M U192 ( .A0(n96), .A1(n92), .A2(n91), .B0(n24), .B1(n119), .Y(n101)
         );
  OAI2B2X1M U193 ( .A1N(n26), .A0(ALU_OP_2[7]), .B0(n102), .B1(n101), .Y(N152)
         );
  NOR4X1M U194 ( .A(n112), .B(n106), .C(N152), .D(n102), .Y(N151) );
endmodule


module serializer_Width8_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module serializer_Width8 ( clk, rst, parallel_in, ser_en, data_valid, 
        serial_out, ser_done );
  input [7:0] parallel_in;
  input clk, rst, ser_en, data_valid;
  output serial_out, ser_done;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n1;
  wire   [7:0] Counter;
  wire   [7:0] data_reg;

  serializer_Width8_DW01_inc_0 add_31 ( .A(Counter), .SUM({N15, N14, N13, N12, 
        N11, N10, N9, N8}) );
  DFFRQX2M \data_reg_reg[6]  ( .D(n17), .CK(clk), .RN(rst), .Q(data_reg[6]) );
  DFFRQX2M \data_reg_reg[5]  ( .D(n18), .CK(clk), .RN(rst), .Q(data_reg[5]) );
  DFFRQX2M \data_reg_reg[4]  ( .D(n19), .CK(clk), .RN(rst), .Q(data_reg[4]) );
  DFFRQX2M \data_reg_reg[3]  ( .D(n20), .CK(clk), .RN(rst), .Q(data_reg[3]) );
  DFFRQX2M \data_reg_reg[2]  ( .D(n21), .CK(clk), .RN(rst), .Q(data_reg[2]) );
  DFFRQX2M \data_reg_reg[1]  ( .D(n22), .CK(clk), .RN(rst), .Q(data_reg[1]) );
  DFFRQX2M \data_reg_reg[0]  ( .D(n23), .CK(clk), .RN(rst), .Q(data_reg[0]) );
  DFFRQX2M \data_reg_reg[7]  ( .D(n16), .CK(clk), .RN(rst), .Q(data_reg[7]) );
  DFFRQX2M \Counter_reg[0]  ( .D(n31), .CK(clk), .RN(rst), .Q(Counter[0]) );
  DFFRQX2M \Counter_reg[7]  ( .D(n30), .CK(clk), .RN(rst), .Q(Counter[7]) );
  DFFRQX2M \Counter_reg[3]  ( .D(n27), .CK(clk), .RN(rst), .Q(Counter[3]) );
  DFFRQX2M \Counter_reg[1]  ( .D(n29), .CK(clk), .RN(rst), .Q(Counter[1]) );
  DFFRQX2M \Counter_reg[2]  ( .D(n28), .CK(clk), .RN(rst), .Q(Counter[2]) );
  DFFRQX2M \Counter_reg[6]  ( .D(n24), .CK(clk), .RN(rst), .Q(Counter[6]) );
  DFFRQX2M \Counter_reg[4]  ( .D(n26), .CK(clk), .RN(rst), .Q(Counter[4]) );
  DFFRQX2M \Counter_reg[5]  ( .D(n25), .CK(clk), .RN(rst), .Q(Counter[5]) );
  DFFRQX2M serial_out_reg ( .D(n15), .CK(clk), .RN(rst), .Q(serial_out) );
  AND2X2M U3 ( .A(ser_en), .B(n12), .Y(n1) );
  NOR2X2M U4 ( .A(n4), .B(n1), .Y(n3) );
  NOR2BX2M U5 ( .AN(data_valid), .B(ser_en), .Y(n4) );
  NAND4BX1M U6 ( .AN(Counter[0]), .B(Counter[3]), .C(n13), .D(n14), .Y(n12) );
  NOR2X2M U7 ( .A(Counter[2]), .B(Counter[1]), .Y(n13) );
  NOR4X1M U8 ( .A(Counter[7]), .B(Counter[6]), .C(Counter[5]), .D(Counter[4]), 
        .Y(n14) );
  INVX2M U9 ( .A(n12), .Y(ser_done) );
  OAI2BB1X2M U10 ( .A0N(data_reg[0]), .A1N(n3), .B0(n11), .Y(n23) );
  AOI22X1M U11 ( .A0(parallel_in[0]), .A1(n4), .B0(data_reg[1]), .B1(n1), .Y(
        n11) );
  OAI2BB1X2M U12 ( .A0N(n3), .A1N(data_reg[1]), .B0(n10), .Y(n22) );
  AOI22X1M U13 ( .A0(parallel_in[1]), .A1(n4), .B0(data_reg[2]), .B1(n1), .Y(
        n10) );
  OAI2BB1X2M U14 ( .A0N(n3), .A1N(data_reg[2]), .B0(n9), .Y(n21) );
  AOI22X1M U15 ( .A0(parallel_in[2]), .A1(n4), .B0(data_reg[3]), .B1(n1), .Y(
        n9) );
  OAI2BB1X2M U16 ( .A0N(n3), .A1N(data_reg[3]), .B0(n8), .Y(n20) );
  AOI22X1M U17 ( .A0(parallel_in[3]), .A1(n4), .B0(data_reg[4]), .B1(n1), .Y(
        n8) );
  OAI2BB1X2M U18 ( .A0N(n3), .A1N(data_reg[4]), .B0(n7), .Y(n19) );
  AOI22X1M U19 ( .A0(parallel_in[4]), .A1(n4), .B0(data_reg[5]), .B1(n1), .Y(
        n7) );
  OAI2BB1X2M U20 ( .A0N(n3), .A1N(data_reg[5]), .B0(n6), .Y(n18) );
  AOI22X1M U21 ( .A0(parallel_in[5]), .A1(n4), .B0(data_reg[6]), .B1(n1), .Y(
        n6) );
  OAI2BB1X2M U22 ( .A0N(n3), .A1N(data_reg[6]), .B0(n5), .Y(n17) );
  AOI22X1M U23 ( .A0(parallel_in[6]), .A1(n4), .B0(data_reg[7]), .B1(n1), .Y(
        n5) );
  AO22X1M U24 ( .A0(n3), .A1(data_reg[7]), .B0(parallel_in[7]), .B1(n4), .Y(
        n16) );
  AO22X1M U25 ( .A0(n1), .A1(data_reg[0]), .B0(serial_out), .B1(n3), .Y(n15)
         );
  AO22X1M U26 ( .A0(n3), .A1(Counter[0]), .B0(N8), .B1(n1), .Y(n31) );
  AO22X1M U27 ( .A0(n3), .A1(Counter[6]), .B0(N14), .B1(n1), .Y(n24) );
  AO22X1M U28 ( .A0(n3), .A1(Counter[5]), .B0(N13), .B1(n1), .Y(n25) );
  AO22X1M U29 ( .A0(n3), .A1(Counter[4]), .B0(N12), .B1(n1), .Y(n26) );
  AO22X1M U30 ( .A0(Counter[3]), .A1(n3), .B0(N11), .B1(n1), .Y(n27) );
  AO22X1M U31 ( .A0(n3), .A1(Counter[2]), .B0(N10), .B1(n1), .Y(n28) );
  AO22X1M U32 ( .A0(n3), .A1(Counter[1]), .B0(N9), .B1(n1), .Y(n29) );
  AO22X1M U33 ( .A0(n3), .A1(Counter[7]), .B0(N15), .B1(n1), .Y(n30) );
endmodule


module Parity_calc_Width8 ( clk, rst, Data_valid, parity_type, in_data, 
        parity_bit );
  input [7:0] in_data;
  input clk, rst, Data_valid, parity_type;
  output parity_bit;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [7:0] internal_reg;

  DFFRQX2M \internal_reg_reg[5]  ( .D(n10), .CK(clk), .RN(rst), .Q(
        internal_reg[5]) );
  DFFRQX2M \internal_reg_reg[1]  ( .D(n6), .CK(clk), .RN(rst), .Q(
        internal_reg[1]) );
  DFFRQX2M \internal_reg_reg[4]  ( .D(n9), .CK(clk), .RN(rst), .Q(
        internal_reg[4]) );
  DFFRQX2M \internal_reg_reg[0]  ( .D(n5), .CK(clk), .RN(rst), .Q(
        internal_reg[0]) );
  DFFRQX2M \internal_reg_reg[6]  ( .D(n11), .CK(clk), .RN(rst), .Q(
        internal_reg[6]) );
  DFFRQX2M \internal_reg_reg[2]  ( .D(n7), .CK(clk), .RN(rst), .Q(
        internal_reg[2]) );
  DFFRQX2M \internal_reg_reg[7]  ( .D(n12), .CK(clk), .RN(rst), .Q(
        internal_reg[7]) );
  DFFRQX2M \internal_reg_reg[3]  ( .D(n8), .CK(clk), .RN(rst), .Q(
        internal_reg[3]) );
  XOR3XLM U2 ( .A(n1), .B(n2), .C(parity_type), .Y(parity_bit) );
  XOR3XLM U3 ( .A(internal_reg[5]), .B(internal_reg[4]), .C(n4), .Y(n1) );
  XOR3XLM U4 ( .A(internal_reg[1]), .B(internal_reg[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U5 ( .A(internal_reg[7]), .B(internal_reg[6]), .Y(n4) );
  CLKXOR2X2M U6 ( .A(internal_reg[3]), .B(internal_reg[2]), .Y(n3) );
  AO2B2X2M U7 ( .B0(in_data[0]), .B1(Data_valid), .A0(internal_reg[0]), .A1N(
        Data_valid), .Y(n5) );
  AO2B2X2M U8 ( .B0(in_data[1]), .B1(Data_valid), .A0(internal_reg[1]), .A1N(
        Data_valid), .Y(n6) );
  AO2B2X2M U9 ( .B0(in_data[2]), .B1(Data_valid), .A0(internal_reg[2]), .A1N(
        Data_valid), .Y(n7) );
  AO2B2X2M U10 ( .B0(in_data[3]), .B1(Data_valid), .A0(internal_reg[3]), .A1N(
        Data_valid), .Y(n8) );
  AO2B2X2M U11 ( .B0(in_data[4]), .B1(Data_valid), .A0(internal_reg[4]), .A1N(
        Data_valid), .Y(n9) );
  AO2B2X2M U12 ( .B0(in_data[5]), .B1(Data_valid), .A0(internal_reg[5]), .A1N(
        Data_valid), .Y(n10) );
  AO2B2X2M U13 ( .B0(in_data[6]), .B1(Data_valid), .A0(internal_reg[6]), .A1N(
        Data_valid), .Y(n11) );
  AO2B2X2M U14 ( .B0(in_data[7]), .B1(Data_valid), .A0(internal_reg[7]), .A1N(
        Data_valid), .Y(n12) );
endmodule


module FSM_controller ( clk, rst, Data_valid, ser_done, parity_enable, ser_en, 
        Mux_sel, Busy );
  output [2:0] Mux_sel;
  input clk, rst, Data_valid, ser_done, parity_enable;
  output ser_en, Busy;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n1, n2, n3, n4, n5, n6;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(n3), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFSX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .SN(rst), .Q(
        current_state[2]), .QN(n5) );
  NAND2X2M U3 ( .A(n6), .B(n5), .Y(n11) );
  NAND2X2M U4 ( .A(n13), .B(n14), .Y(Mux_sel[0]) );
  OAI21X2M U5 ( .A0(n11), .A1(n2), .B0(n13), .Y(ser_en) );
  NAND2BX2M U6 ( .AN(n7), .B(n8), .Y(next_state[2]) );
  AOI22X1M U7 ( .A0(current_state[0]), .A1(current_state[2]), .B0(n2), .B1(
        current_state[1]), .Y(n8) );
  OAI22X1M U8 ( .A0(current_state[0]), .A1(n11), .B0(n12), .B1(n5), .Y(
        Mux_sel[2]) );
  NOR2X2M U9 ( .A(current_state[0]), .B(current_state[1]), .Y(n12) );
  OAI211X2M U10 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n13), .C0(
        n8), .Y(Mux_sel[1]) );
  NAND3X2M U11 ( .A(current_state[0]), .B(n5), .C(current_state[1]), .Y(n13)
         );
  NAND3X2M U12 ( .A(n2), .B(n6), .C(current_state[2]), .Y(n14) );
  INVX2M U13 ( .A(current_state[0]), .Y(n2) );
  INVX2M U14 ( .A(current_state[1]), .Y(n6) );
  NOR2X2M U15 ( .A(parity_enable), .B(n9), .Y(n7) );
  NOR3X2M U16 ( .A(n2), .B(current_state[2]), .C(n7), .Y(next_state[1]) );
  NAND2X2M U17 ( .A(ser_done), .B(current_state[1]), .Y(n9) );
  OAI211X2M U18 ( .A0(current_state[2]), .A1(n6), .B0(n14), .C0(n1), .Y(Busy)
         );
  INVX2M U19 ( .A(ser_en), .Y(n1) );
  INVX2M U20 ( .A(n10), .Y(n3) );
  AOI32X1M U21 ( .A0(n9), .A1(n5), .A2(current_state[0]), .B0(Data_valid), 
        .B1(n4), .Y(n10) );
  INVX2M U22 ( .A(n11), .Y(n4) );
endmodule


module UART_Tx_Width8 ( CLK, rst, P_data, Data_valid, PAR_TYP, PAR_EN, Tx_out, 
        Busy );
  input [7:0] P_data;
  input CLK, rst, Data_valid, PAR_TYP, PAR_EN;
  output Tx_out, Busy;
  wire   Data_serial, Parity_bit, Ser_enable, Ser_done, n2, n3, n1, n4, n5;
  wire   [2:0] Mux_sel;

  serializer_Width8 ser_block ( .clk(CLK), .rst(n1), .parallel_in(P_data), 
        .ser_en(Ser_enable), .data_valid(Data_valid), .serial_out(Data_serial), 
        .ser_done(Ser_done) );
  Parity_calc_Width8 parity_block ( .clk(CLK), .rst(n1), .Data_valid(
        Data_valid), .parity_type(PAR_TYP), .in_data(P_data), .parity_bit(
        Parity_bit) );
  FSM_controller FSM_control_block ( .clk(CLK), .rst(n1), .Data_valid(
        Data_valid), .ser_done(Ser_done), .parity_enable(PAR_EN), .ser_en(
        Ser_enable), .Mux_sel(Mux_sel), .Busy(Busy) );
  INVX2M U3 ( .A(Mux_sel[0]), .Y(n5) );
  INVX4M U4 ( .A(n4), .Y(n1) );
  INVX2M U5 ( .A(rst), .Y(n4) );
  NAND2X2M U6 ( .A(n2), .B(n3), .Y(Tx_out) );
  OAI2B1X2M U7 ( .A1N(Mux_sel[1]), .A0(Data_serial), .B0(Mux_sel[0]), .Y(n3)
         );
  AOI31X2M U8 ( .A0(Mux_sel[1]), .A1(n5), .A2(Parity_bit), .B0(Mux_sel[2]), 
        .Y(n2) );
endmodule


module Sampling_Register ( clk, rst_n, BIT_COUNT, sample_one_bit, 
        sample_three_bit, PAR_EN, Data_valid, sampled_bit, Data_out, start_bit, 
        parity_bit, stop_bit );
  input [3:0] BIT_COUNT;
  output [7:0] Data_out;
  input clk, rst_n, sample_one_bit, sample_three_bit, PAR_EN, Data_valid,
         sampled_bit;
  output start_bit, parity_bit, stop_bit;
  wire   n3, n4, n5, n7, n9, n11, n13, n17, n19, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n1, n2, n6, n8, n10, n12, n14, n15, n16, n18,
         n20, n21, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53;
  wire   [10:1] sampled_data_register;

  DFFRHQX4M \sampled_data_register_reg[9]  ( .D(n31), .CK(clk), .RN(rst_n), 
        .Q(sampled_data_register[9]) );
  DFFRQX2M \sampled_data_register_reg[10]  ( .D(n32), .CK(clk), .RN(rst_n), 
        .Q(sampled_data_register[10]) );
  DFFRQX2M \sampled_data_register_reg[0]  ( .D(n22), .CK(clk), .RN(rst_n), .Q(
        start_bit) );
  DFFRQX2M \sampled_data_register_reg[4]  ( .D(n26), .CK(clk), .RN(rst_n), .Q(
        sampled_data_register[4]) );
  DFFRQX2M \sampled_data_register_reg[7]  ( .D(n29), .CK(clk), .RN(rst_n), .Q(
        sampled_data_register[7]) );
  DFFRQX2M \sampled_data_register_reg[5]  ( .D(n27), .CK(clk), .RN(rst_n), .Q(
        sampled_data_register[5]) );
  DFFRQX2M \sampled_data_register_reg[1]  ( .D(n23), .CK(clk), .RN(rst_n), .Q(
        sampled_data_register[1]) );
  DFFRQX2M \sampled_data_register_reg[6]  ( .D(n28), .CK(clk), .RN(rst_n), .Q(
        sampled_data_register[6]) );
  DFFRQX2M \sampled_data_register_reg[3]  ( .D(n25), .CK(clk), .RN(rst_n), .Q(
        sampled_data_register[3]) );
  DFFRQX2M \sampled_data_register_reg[2]  ( .D(n24), .CK(clk), .RN(rst_n), .Q(
        sampled_data_register[2]) );
  DFFRQX2M \sampled_data_register_reg[8]  ( .D(n30), .CK(clk), .RN(rst_n), .Q(
        sampled_data_register[8]) );
  INVX2M U2 ( .A(sampled_data_register[9]), .Y(n10) );
  AO22XLM U3 ( .A0(sampled_data_register[2]), .A1(n16), .B0(n20), .B1(n9), .Y(
        n24) );
  AO22XLM U4 ( .A0(sampled_data_register[1]), .A1(n14), .B0(n20), .B1(n7), .Y(
        n23) );
  AO22XLM U5 ( .A0(sampled_data_register[4]), .A1(n35), .B0(n44), .B1(n5), .Y(
        n26) );
  CLKINVX2M U6 ( .A(sampled_data_register[6]), .Y(n41) );
  CLKINVX2M U7 ( .A(sampled_data_register[2]), .Y(n18) );
  CLKINVX2M U8 ( .A(sampled_data_register[7]), .Y(n46) );
  INVX2M U9 ( .A(n13), .Y(n39) );
  NOR2BX2M U10 ( .AN(n11), .B(n52), .Y(n13) );
  OR2X2M U11 ( .A(sample_one_bit), .B(sample_three_bit), .Y(n17) );
  INVX2M U12 ( .A(n34), .Y(n44) );
  NAND2BX2M U13 ( .AN(n53), .B(n13), .Y(n34) );
  INVX2M U14 ( .A(n12), .Y(n20) );
  NAND2BX2M U15 ( .AN(n53), .B(n4), .Y(n12) );
  INVX2M U16 ( .A(n19), .Y(n47) );
  INVX2M U17 ( .A(n1), .Y(n48) );
  NAND2BX2M U18 ( .AN(n53), .B(n19), .Y(n1) );
  INVX2M U19 ( .A(n42), .Y(n43) );
  INVX2M U20 ( .A(sampled_data_register[3]), .Y(n33) );
  NOR2X4M U21 ( .A(n10), .B(n8), .Y(parity_bit) );
  INVX2M U22 ( .A(PAR_EN), .Y(n8) );
  INVX2M U23 ( .A(sampled_data_register[1]), .Y(n15) );
  INVX2M U24 ( .A(sampled_data_register[5]), .Y(n38) );
  INVX2M U25 ( .A(sampled_data_register[8]), .Y(n50) );
  INVX2M U26 ( .A(sampled_data_register[4]), .Y(n36) );
  NOR2BX2M U27 ( .AN(n11), .B(BIT_COUNT[2]), .Y(n4) );
  OAI2BB2X1M U28 ( .B0(n3), .B1(n53), .A0N(start_bit), .A1N(n3), .Y(n22) );
  NAND2X2M U29 ( .A(n4), .B(n5), .Y(n3) );
  NOR2BX2M U30 ( .AN(n17), .B(BIT_COUNT[3]), .Y(n11) );
  AND3X2M U31 ( .A(n17), .B(n52), .C(BIT_COUNT[3]), .Y(n19) );
  NAND2BX2M U32 ( .AN(n47), .B(n9), .Y(n6) );
  INVX2M U33 ( .A(sampled_bit), .Y(n53) );
  AO22XLM U34 ( .A0(sampled_data_register[8]), .A1(n49), .B0(n48), .B1(n5), 
        .Y(n30) );
  NAND2BX2M U35 ( .AN(n47), .B(n5), .Y(n49) );
  AO22XLM U36 ( .A0(sampled_data_register[6]), .A1(n40), .B0(n9), .B1(n44), 
        .Y(n28) );
  NAND2BX2M U37 ( .AN(n39), .B(n9), .Y(n40) );
  NAND2X2M U38 ( .A(n5), .B(n13), .Y(n35) );
  AO22XLM U39 ( .A0(sampled_data_register[7]), .A1(n45), .B0(n44), .B1(n43), 
        .Y(n29) );
  NAND2BX2M U40 ( .AN(n42), .B(n13), .Y(n45) );
  NAND2X2M U41 ( .A(n7), .B(n4), .Y(n14) );
  NAND2X2M U42 ( .A(n9), .B(n4), .Y(n16) );
  AO22XLM U43 ( .A0(sampled_data_register[3]), .A1(n21), .B0(n20), .B1(n43), 
        .Y(n25) );
  NAND2BX2M U44 ( .AN(n42), .B(n4), .Y(n21) );
  AO22XLM U45 ( .A0(sampled_data_register[5]), .A1(n37), .B0(n7), .B1(n44), 
        .Y(n27) );
  NAND2BX2M U46 ( .AN(n39), .B(n7), .Y(n37) );
  NAND2BX2M U47 ( .AN(n47), .B(n7), .Y(n2) );
  NOR2X2M U48 ( .A(BIT_COUNT[0]), .B(BIT_COUNT[1]), .Y(n5) );
  NOR2BX2M U49 ( .AN(BIT_COUNT[1]), .B(BIT_COUNT[0]), .Y(n9) );
  NOR2BX2M U50 ( .AN(BIT_COUNT[0]), .B(BIT_COUNT[1]), .Y(n7) );
  NAND2X2M U51 ( .A(BIT_COUNT[1]), .B(BIT_COUNT[0]), .Y(n42) );
  INVX2M U52 ( .A(BIT_COUNT[2]), .Y(n52) );
  AO22X1M U53 ( .A0(sampled_data_register[10]), .A1(n6), .B0(n9), .B1(n48), 
        .Y(n32) );
  NOR2X2M U54 ( .A(n51), .B(n50), .Y(Data_out[7]) );
  INVX8M U55 ( .A(Data_valid), .Y(n51) );
  NOR2X2M U56 ( .A(n51), .B(n38), .Y(Data_out[4]) );
  NOR2X2M U57 ( .A(n51), .B(n46), .Y(Data_out[6]) );
  NOR2X1M U58 ( .A(n51), .B(n41), .Y(Data_out[5]) );
  NOR2X2M U59 ( .A(n51), .B(n33), .Y(Data_out[2]) );
  NOR2X1M U60 ( .A(n51), .B(n18), .Y(Data_out[1]) );
  NOR2X1M U61 ( .A(n51), .B(n15), .Y(Data_out[0]) );
  NOR2X1M U62 ( .A(n51), .B(n36), .Y(Data_out[3]) );
  AO22XLM U63 ( .A0(sampled_data_register[9]), .A1(n2), .B0(n7), .B1(n48), .Y(
        n31) );
  MX2XLM U64 ( .A(sampled_data_register[9]), .B(sampled_data_register[10]), 
        .S0(PAR_EN), .Y(stop_bit) );
endmodule


module Configuration_block_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Configuration_block ( clk, rst_n, block_enable_word, error_flag_word, 
        BIT_TICK, sample_one_bit, sample_three_bit, Prescale, PAR_TYP, 
        start_bit, parity_bit, stop_bit, data_out );
  input [3:0] block_enable_word;
  output [2:0] error_flag_word;
  input [1:0] Prescale;
  input [7:0] data_out;
  input clk, rst_n, PAR_TYP, start_bit, parity_bit, stop_bit;
  output BIT_TICK, sample_one_bit, sample_three_bit;
  wire   N27, N28, N29, N30, N31, N32, N33, N34, N102, N103, N104, N105, N106,
         N107, N108, N109, n8, n9, n10, n11, n12, n13, n14, n15, n16, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n1, n2, n3, n4, n5, n6,
         n7, n17, n18, n19, n20, n21, n22;
  wire   [7:0] Edge_counter;

  Configuration_block_DW01_inc_0 r70 ( .A(Edge_counter), .SUM({N34, N33, N32, 
        N31, N30, N29, N28, N27}) );
  DFFRQX2M \Edge_counter_reg[7]  ( .D(N109), .CK(clk), .RN(rst_n), .Q(
        Edge_counter[7]) );
  DFFRQX2M \Edge_counter_reg[0]  ( .D(N102), .CK(clk), .RN(rst_n), .Q(
        Edge_counter[0]) );
  DFFRQX2M \Edge_counter_reg[2]  ( .D(N104), .CK(clk), .RN(rst_n), .Q(
        Edge_counter[2]) );
  DFFRQX2M \Edge_counter_reg[5]  ( .D(N107), .CK(clk), .RN(rst_n), .Q(
        Edge_counter[5]) );
  DFFRQX2M \Edge_counter_reg[1]  ( .D(N103), .CK(clk), .RN(rst_n), .Q(
        Edge_counter[1]) );
  DFFRQX2M \Edge_counter_reg[6]  ( .D(N108), .CK(clk), .RN(rst_n), .Q(
        Edge_counter[6]) );
  DFFRQX2M \Edge_counter_reg[4]  ( .D(N106), .CK(clk), .RN(rst_n), .Q(
        Edge_counter[4]) );
  DFFRQX2M \Edge_counter_reg[3]  ( .D(N105), .CK(clk), .RN(rst_n), .Q(
        Edge_counter[3]) );
  AND2X8M U3 ( .A(block_enable_word[1]), .B(n6), .Y(error_flag_word[1]) );
  NOR2BX2M U4 ( .AN(block_enable_word[0]), .B(stop_bit), .Y(error_flag_word[0]) );
  XOR2X2M U5 ( .A(data_out[5]), .B(data_out[6]), .Y(n1) );
  NAND2X2M U6 ( .A(block_enable_word[3]), .B(n24), .Y(n23) );
  INVX2M U7 ( .A(n13), .Y(n20) );
  NOR2X2M U8 ( .A(n22), .B(n21), .Y(n11) );
  NAND2X2M U9 ( .A(n21), .B(n22), .Y(n13) );
  XNOR3X2M U10 ( .A(n5), .B(n1), .C(n4), .Y(n6) );
  OAI2B11X2M U11 ( .A1N(n11), .A0(n28), .B0(n13), .C0(n32), .Y(BIT_TICK) );
  AOI22X1M U12 ( .A0(n17), .A1(n12), .B0(n25), .B1(n15), .Y(n32) );
  INVX2M U13 ( .A(n29), .Y(n17) );
  NOR2BX2M U14 ( .AN(N33), .B(n23), .Y(N108) );
  NOR2BX2M U15 ( .AN(N32), .B(n23), .Y(N107) );
  NOR2BX2M U16 ( .AN(N31), .B(n23), .Y(N106) );
  NOR2BX2M U17 ( .AN(N30), .B(n23), .Y(N105) );
  NOR2BX2M U18 ( .AN(N29), .B(n23), .Y(N104) );
  NOR2BX2M U19 ( .AN(N28), .B(n23), .Y(N103) );
  INVX2M U20 ( .A(n31), .Y(n7) );
  NOR2X2M U21 ( .A(n22), .B(Prescale[0]), .Y(n12) );
  NOR2X2M U22 ( .A(n21), .B(Prescale[1]), .Y(n15) );
  INVX2M U23 ( .A(Prescale[1]), .Y(n22) );
  INVX2M U24 ( .A(Prescale[0]), .Y(n21) );
  AND2X2M U25 ( .A(start_bit), .B(block_enable_word[2]), .Y(error_flag_word[2]) );
  AOI211X2M U26 ( .A0(n8), .A1(n9), .B0(n18), .C0(Edge_counter[2]), .Y(
        sample_three_bit) );
  NAND4X2M U27 ( .A(Edge_counter[3]), .B(Edge_counter[0]), .C(n12), .D(n19), 
        .Y(n8) );
  INVX2M U28 ( .A(n10), .Y(n18) );
  NAND4BBX1M U29 ( .AN(Edge_counter[0]), .BN(Edge_counter[3]), .C(
        Edge_counter[4]), .D(n11), .Y(n9) );
  NOR4BX1M U30 ( .AN(Edge_counter[0]), .B(Edge_counter[5]), .C(Edge_counter[6]), .D(Edge_counter[7]), .Y(n31) );
  NOR3BX2M U31 ( .AN(n33), .B(Edge_counter[3]), .C(Edge_counter[4]), .Y(n25)
         );
  NOR4X1M U32 ( .A(Edge_counter[1]), .B(Edge_counter[5]), .C(Edge_counter[6]), 
        .D(Edge_counter[7]), .Y(n10) );
  OAI2B11X2M U33 ( .A1N(n15), .A0(n25), .B0(n26), .C0(n27), .Y(n24) );
  OAI31X1M U34 ( .A0(n30), .A1(Edge_counter[1]), .A2(n7), .B0(n20), .Y(n26) );
  AOI22X1M U35 ( .A0(n11), .A1(n28), .B0(n12), .B1(n29), .Y(n27) );
  AND3X2M U36 ( .A(n31), .B(Edge_counter[2]), .C(Edge_counter[1]), .Y(n33) );
  NAND3X2M U37 ( .A(Edge_counter[3]), .B(n19), .C(n33), .Y(n29) );
  NAND3X2M U38 ( .A(Edge_counter[3]), .B(Edge_counter[4]), .C(n33), .Y(n28) );
  INVX2M U39 ( .A(Edge_counter[4]), .Y(n19) );
  NOR2BX2M U40 ( .AN(N34), .B(n23), .Y(N109) );
  NOR2BX2M U41 ( .AN(N27), .B(n23), .Y(N102) );
  NAND2X2M U42 ( .A(n13), .B(n14), .Y(sample_one_bit) );
  NAND4X2M U43 ( .A(n15), .B(n10), .C(Edge_counter[2]), .D(n16), .Y(n14) );
  NOR3X2M U44 ( .A(Edge_counter[0]), .B(Edge_counter[4]), .C(Edge_counter[3]), 
        .Y(n16) );
  OR3X2M U45 ( .A(Edge_counter[2]), .B(Edge_counter[3]), .C(Edge_counter[4]), 
        .Y(n30) );
  XNOR2X2M U46 ( .A(data_out[3]), .B(data_out[4]), .Y(n3) );
  XNOR2X2M U47 ( .A(n2), .B(data_out[2]), .Y(n5) );
  XNOR3X2M U48 ( .A(parity_bit), .B(PAR_TYP), .C(data_out[7]), .Y(n2) );
  XOR3X2M U49 ( .A(data_out[0]), .B(data_out[1]), .C(n3), .Y(n4) );
endmodule


module Sampler ( clk, rst_n, Serial_Data_IN, Sampled_Bit_OUT, sample_one_bit, 
        sample_three_bit, sampler_enable, start_bit_detector );
  input clk, rst_n, Serial_Data_IN, sample_one_bit, sample_three_bit,
         sampler_enable;
  output Sampled_Bit_OUT, start_bit_detector;
  wire   \Data_Storage[1] , n5, n6, n7, n8, n9, n1, n2, n3, n4;

  DFFSX1M \Data_Storage_reg[1]  ( .D(n8), .CK(clk), .SN(rst_n), .Q(
        \Data_Storage[1] ), .QN(n3) );
  DFFSX1M \Data_Storage_reg[2]  ( .D(n7), .CK(clk), .SN(rst_n), .QN(n4) );
  DFFSX1M \Data_Storage_reg[0]  ( .D(n9), .CK(clk), .SN(rst_n), .QN(n2) );
  INVX2M U2 ( .A(Serial_Data_IN), .Y(start_bit_detector) );
  OAI2B2X1M U3 ( .A1N(Serial_Data_IN), .A0(n1), .B0(sampler_enable), .B1(n2), 
        .Y(n9) );
  INVX2M U4 ( .A(sampler_enable), .Y(n1) );
  OAI2BB1X2M U5 ( .A0N(\Data_Storage[1] ), .A1N(sample_one_bit), .B0(n5), .Y(
        Sampled_Bit_OUT) );
  OAI21X2M U6 ( .A0(n6), .A1(\Data_Storage[1] ), .B0(sample_three_bit), .Y(n5)
         );
  AOI21X2M U7 ( .A0(n4), .A1(n2), .B0(sample_one_bit), .Y(n6) );
  OAI22X1M U8 ( .A0(sampler_enable), .A1(n3), .B0(n1), .B1(n2), .Y(n8) );
  OAI22X1M U9 ( .A0(sampler_enable), .A1(n4), .B0(n3), .B1(n1), .Y(n7) );
endmodule


module UART_Rx_Controller ( clk, rst_n, PAR_EN, Data_valid, block_enable_word, 
        error_flag_word, BIT_TICK, BIT_COUNT, start_bit_detector );
  output [3:0] block_enable_word;
  input [2:0] error_flag_word;
  output [3:0] BIT_COUNT;
  input clk, rst_n, PAR_EN, BIT_TICK, start_bit_detector;
  output Data_valid;
  wire   n57, n18, n24, n27, n28, n31, n32, n33, n34, n35, n37, n38, n39, n40,
         n41, n42, n48, n49, n50, n51, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n19, n20, n21, n22, n23, n25, n26,
         n29, n30, n36, n43, n44, n45, n46, n47, n52, n53, n54, n55, n56;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRHQX4M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst_n), 
        .Q(current_state[1]) );
  DFFRHQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst_n), 
        .Q(current_state[0]) );
  DFFRHQX4M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst_n), 
        .Q(current_state[2]) );
  DFFRQX2M \BIT_COUNT_reg_reg[1]  ( .D(n50), .CK(clk), .RN(rst_n), .Q(n57) );
  DFFRQX2M \BIT_COUNT_reg_reg[3]  ( .D(n48), .CK(clk), .RN(rst_n), .Q(
        BIT_COUNT[3]) );
  DFFRQX2M \BIT_COUNT_reg_reg[0]  ( .D(n51), .CK(clk), .RN(rst_n), .Q(
        BIT_COUNT[0]) );
  DFFRQX2M \BIT_COUNT_reg_reg[2]  ( .D(n49), .CK(clk), .RN(rst_n), .Q(
        BIT_COUNT[2]) );
  OA22XLM U3 ( .A0(n21), .A1(n20), .B0(n47), .B1(n36), .Y(n22) );
  CLKINVX4M U4 ( .A(n19), .Y(block_enable_word[1]) );
  INVX2M U5 ( .A(n42), .Y(n46) );
  NOR2X2M U6 ( .A(n46), .B(n30), .Y(n1) );
  CLKINVX2M U7 ( .A(n43), .Y(n5) );
  OAI2B11X2M U8 ( .A1N(n17), .A0(n16), .B0(n15), .C0(n23), .Y(next_state[0])
         );
  AOI32X1M U9 ( .A0(start_bit_detector), .A1(n31), .A2(n13), .B0(
        block_enable_word[2]), .B1(n12), .Y(n16) );
  INVX2M U10 ( .A(n29), .Y(n13) );
  AO21XLM U11 ( .A0(n10), .A1(block_enable_word[2]), .B0(n9), .Y(next_state[1]) );
  INVX2M U12 ( .A(n12), .Y(n10) );
  OAI31X1M U13 ( .A0(n18), .A1(n47), .A2(n21), .B0(n15), .Y(n9) );
  NOR3X2M U14 ( .A(n24), .B(n45), .C(n54), .Y(n28) );
  NOR3X2M U15 ( .A(n45), .B(BIT_COUNT[1]), .C(n24), .Y(n18) );
  INVX2M U16 ( .A(n18), .Y(n20) );
  INVX2M U17 ( .A(n47), .Y(n17) );
  INVX2M U18 ( .A(n8), .Y(n15) );
  NAND2BX2M U19 ( .AN(n27), .B(BIT_COUNT[1]), .Y(n6) );
  INVX2M U20 ( .A(n25), .Y(n7) );
  OAI21X2M U21 ( .A0(BIT_COUNT[1]), .A1(n42), .B0(n2), .Y(n41) );
  NAND2BX2M U22 ( .AN(n30), .B(BIT_TICK), .Y(n42) );
  NOR3X2M U23 ( .A(n55), .B(BIT_COUNT[1]), .C(n47), .Y(n34) );
  OAI32X1M U24 ( .A0(n38), .A1(n56), .A2(n39), .B0(n40), .B1(n55), .Y(n48) );
  NAND2X2M U25 ( .A(BIT_COUNT[1]), .B(n55), .Y(n38) );
  AOI21X2M U26 ( .A0(n46), .A1(n56), .B0(n41), .Y(n40) );
  NAND2X2M U27 ( .A(n26), .B(n29), .Y(n30) );
  INVX2M U28 ( .A(BIT_COUNT[1]), .Y(n54) );
  AOI21X2M U29 ( .A0(n46), .A1(n45), .B0(n1), .Y(n2) );
  INVX2M U30 ( .A(n27), .Y(n53) );
  CLKINVX2M U31 ( .A(n36), .Y(block_enable_word[0]) );
  NAND3X2M U32 ( .A(n56), .B(BIT_COUNT[3]), .C(n17), .Y(n24) );
  INVX2M U33 ( .A(n14), .Y(n23) );
  NOR3X2M U34 ( .A(n35), .B(n24), .C(n54), .Y(n32) );
  AOI31X2M U35 ( .A0(BIT_COUNT[2]), .A1(n53), .A2(n34), .B0(n28), .Y(n33) );
  NAND2X2M U36 ( .A(n28), .B(PAR_EN), .Y(n25) );
  OAI2B11X1M U37 ( .A1N(current_state[1]), .A0(current_state[2]), .B0(n43), 
        .C0(n36), .Y(block_enable_word[3]) );
  OR2X1M U38 ( .A(current_state[1]), .B(n11), .Y(n29) );
  OAI21X2M U39 ( .A0(PAR_EN), .A1(n45), .B0(n27), .Y(n35) );
  INVX2M U40 ( .A(BIT_COUNT[0]), .Y(n45) );
  OAI22X1M U41 ( .A0(n2), .A1(n54), .B0(n57), .B1(n39), .Y(n50) );
  NAND2X2M U42 ( .A(PAR_EN), .B(n45), .Y(n27) );
  OR2X1M U43 ( .A(current_state[0]), .B(current_state[2]), .Y(n11) );
  CLKBUFX2M U44 ( .A(n57), .Y(BIT_COUNT[1]) );
  NAND3BX2M U45 ( .AN(n45), .B(n37), .C(n17), .Y(n12) );
  NOR3X2M U46 ( .A(BIT_COUNT[1]), .B(BIT_COUNT[3]), .C(BIT_COUNT[2]), .Y(n37)
         );
  NAND2X2M U47 ( .A(n46), .B(BIT_COUNT[0]), .Y(n39) );
  INVX2M U48 ( .A(BIT_COUNT[2]), .Y(n56) );
  MX2X2M U49 ( .A(n46), .B(n1), .S0(BIT_COUNT[0]), .Y(n51) );
  INVX2M U50 ( .A(n4), .Y(block_enable_word[2]) );
  OAI32X1M U51 ( .A0(n39), .A1(BIT_COUNT[2]), .A2(n54), .B0(n52), .B1(n56), 
        .Y(n49) );
  INVX2M U52 ( .A(n41), .Y(n52) );
  NOR4X1M U53 ( .A(BIT_COUNT[0]), .B(BIT_COUNT[1]), .C(BIT_COUNT[2]), .D(
        BIT_COUNT[3]), .Y(n31) );
  INVX2M U54 ( .A(BIT_COUNT[3]), .Y(n55) );
  OAI33X2M U55 ( .A0(n7), .A1(n47), .A2(n19), .B0(n6), .B1(n24), .B2(n21), .Y(
        n8) );
  OAI32X1M U56 ( .A0(n32), .A1(n31), .A2(n26), .B0(n33), .B1(n36), .Y(n14) );
  OAI2B11X2M U57 ( .A1N(block_enable_word[1]), .A0(n25), .B0(n23), .C0(n22), 
        .Y(next_state[2]) );
  NAND2BX1M U58 ( .AN(current_state[2]), .B(current_state[0]), .Y(n43) );
  AND3X6M U59 ( .A(current_state[2]), .B(n44), .C(current_state[0]), .Y(
        Data_valid) );
  INVX4M U60 ( .A(current_state[1]), .Y(n44) );
  NAND2BX1M U61 ( .AN(n11), .B(current_state[1]), .Y(n21) );
  NAND3BXLM U62 ( .AN(current_state[1]), .B(current_state[2]), .C(
        current_state[0]), .Y(n26) );
  OR3X1M U63 ( .A(error_flag_word[1]), .B(error_flag_word[0]), .C(
        error_flag_word[2]), .Y(n47) );
  NAND2BX2M U64 ( .AN(current_state[1]), .B(n5), .Y(n4) );
  NAND2BX2M U65 ( .AN(n44), .B(n5), .Y(n19) );
  NAND3BXLM U66 ( .AN(current_state[0]), .B(current_state[2]), .C(n44), .Y(n36) );
endmodule


module UART_Rx_Width8 ( CLK, RST, RX_IN, PAR_TYP, PAR_EN, Prescale, P_DATA, 
        data_valid, Parity_Error, Stop_Error );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_TYP, PAR_EN;
  output data_valid, Parity_Error, Stop_Error;
  wire   sample_one_bit_UART_Rx, sample_three_bit_UART_Rx, sampled_bit_UART_Rx,
         start_bit_UART_Rx, parity_bit_UART_Rx, stop_bit_UART_Rx,
         \error_flag_word_UART_Rx[2] , Bit_TICK_UART_Rx,
         start_bit_detector_UART_Rx, n1, n2, n3, n4, n5, n6;
  wire   [3:0] BIT_COUNT_UART_Rx;
  wire   [3:0] block_enable_word_UART_Rx;
  wire   [1:0] Prescale_Select;

  Sampling_Register UART_Sampling_Register ( .clk(CLK), .rst_n(n5), 
        .BIT_COUNT(BIT_COUNT_UART_Rx), .sample_one_bit(sample_one_bit_UART_Rx), 
        .sample_three_bit(sample_three_bit_UART_Rx), .PAR_EN(PAR_EN), 
        .Data_valid(data_valid), .sampled_bit(sampled_bit_UART_Rx), .Data_out(
        P_DATA), .start_bit(start_bit_UART_Rx), .parity_bit(parity_bit_UART_Rx), .stop_bit(stop_bit_UART_Rx) );
  Configuration_block UART_Config_block ( .clk(CLK), .rst_n(n5), 
        .block_enable_word(block_enable_word_UART_Rx), .error_flag_word({
        \error_flag_word_UART_Rx[2] , Parity_Error, Stop_Error}), .BIT_TICK(
        Bit_TICK_UART_Rx), .sample_one_bit(sample_one_bit_UART_Rx), 
        .sample_three_bit(sample_three_bit_UART_Rx), .Prescale(Prescale_Select), .PAR_TYP(PAR_TYP), .start_bit(start_bit_UART_Rx), .parity_bit(
        parity_bit_UART_Rx), .stop_bit(stop_bit_UART_Rx), .data_out(P_DATA) );
  Sampler UART_Sampler ( .clk(CLK), .rst_n(n5), .Serial_Data_IN(RX_IN), 
        .Sampled_Bit_OUT(sampled_bit_UART_Rx), .sample_one_bit(
        sample_one_bit_UART_Rx), .sample_three_bit(sample_three_bit_UART_Rx), 
        .sampler_enable(block_enable_word_UART_Rx[3]), .start_bit_detector(
        start_bit_detector_UART_Rx) );
  UART_Rx_Controller UART_FSM_Controller ( .clk(CLK), .rst_n(n5), .PAR_EN(
        PAR_EN), .Data_valid(data_valid), .block_enable_word(
        block_enable_word_UART_Rx), .error_flag_word({
        \error_flag_word_UART_Rx[2] , Parity_Error, Stop_Error}), .BIT_TICK(
        Bit_TICK_UART_Rx), .BIT_COUNT(BIT_COUNT_UART_Rx), .start_bit_detector(
        start_bit_detector_UART_Rx) );
  INVX4M U3 ( .A(n6), .Y(n5) );
  INVX2M U4 ( .A(RST), .Y(n6) );
  OAI21X2M U5 ( .A0(n1), .A1(n2), .B0(n3), .Y(Prescale_Select[1]) );
  OAI21X2M U6 ( .A0(n1), .A1(n4), .B0(n3), .Y(Prescale_Select[0]) );
  NOR2X2M U7 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n3) );
  NOR4BX1M U8 ( .AN(Prescale[3]), .B(Prescale[5]), .C(Prescale[4]), .D(
        Prescale[0]), .Y(n2) );
  NOR4BX1M U9 ( .AN(Prescale[4]), .B(Prescale[5]), .C(Prescale[3]), .D(
        Prescale[0]), .Y(n4) );
  NOR4BX1M U10 ( .AN(Prescale[0]), .B(Prescale[3]), .C(Prescale[4]), .D(
        Prescale[5]), .Y(n1) );
endmodule


module UART_DATA_WIDTH8 ( TX_CLK, RX_CLK, UART_RST, RX_IN, TX_OUT, TX_DATA, 
        RX_DATA, PAR_EN, PAR_TYP, PRESCALE, TX_DATA_VALID, TX_BUSY, 
        RX_DATA_VALID, RX_PAR_ERROR, RX_STOP_ERROR );
  input [7:0] TX_DATA;
  output [7:0] RX_DATA;
  input [5:0] PRESCALE;
  input TX_CLK, RX_CLK, UART_RST, RX_IN, PAR_EN, PAR_TYP, TX_DATA_VALID;
  output TX_OUT, TX_BUSY, RX_DATA_VALID, RX_PAR_ERROR, RX_STOP_ERROR;
  wire   n1, n2;

  UART_Tx_Width8 UART_TX ( .CLK(TX_CLK), .rst(n1), .P_data(TX_DATA), 
        .Data_valid(TX_DATA_VALID), .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), 
        .Tx_out(TX_OUT), .Busy(TX_BUSY) );
  UART_Rx_Width8 UART_RX ( .CLK(RX_CLK), .RST(n1), .RX_IN(RX_IN), .PAR_TYP(
        PAR_TYP), .PAR_EN(PAR_EN), .Prescale(PRESCALE), .P_DATA(RX_DATA), 
        .data_valid(RX_DATA_VALID), .Parity_Error(RX_PAR_ERROR), .Stop_Error(
        RX_STOP_ERROR) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(UART_RST), .Y(n2) );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_GEN );
  input CLK, RST, LVL_SIG;
  output PULSE_GEN;
  wire   N1;

  DFFRQX2M PULSE_GEN_flipflop_reg ( .D(N1), .CK(CLK), .RN(RST), .Q(PULSE_GEN)
         );
  NOR2BX2M U3 ( .AN(LVL_SIG), .B(PULSE_GEN), .Y(N1) );
endmodule


module DUAL_RAM_DATA_WIDTH8_ADDR_WIDTH4_MEM_SIZE32 ( w_clk, w_rst, wclken, 
        wrdata, waddr, rdata, raddr );
  input [7:0] wrdata;
  input [3:0] waddr;
  output [7:0] rdata;
  input [3:0] raddr;
  input w_clk, w_rst, wclken;
  wire   N10, N11, N12, N13, \MEM[15][7] , \MEM[15][6] , \MEM[15][5] ,
         \MEM[15][4] , \MEM[15][3] , \MEM[15][2] , \MEM[15][1] , \MEM[15][0] ,
         \MEM[14][7] , \MEM[14][6] , \MEM[14][5] , \MEM[14][4] , \MEM[14][3] ,
         \MEM[14][2] , \MEM[14][1] , \MEM[14][0] , \MEM[13][7] , \MEM[13][6] ,
         \MEM[13][5] , \MEM[13][4] , \MEM[13][3] , \MEM[13][2] , \MEM[13][1] ,
         \MEM[13][0] , \MEM[12][7] , \MEM[12][6] , \MEM[12][5] , \MEM[12][4] ,
         \MEM[12][3] , \MEM[12][2] , \MEM[12][1] , \MEM[12][0] , \MEM[11][7] ,
         \MEM[11][6] , \MEM[11][5] , \MEM[11][4] , \MEM[11][3] , \MEM[11][2] ,
         \MEM[11][1] , \MEM[11][0] , \MEM[10][7] , \MEM[10][6] , \MEM[10][5] ,
         \MEM[10][4] , \MEM[10][3] , \MEM[10][2] , \MEM[10][1] , \MEM[10][0] ,
         \MEM[9][7] , \MEM[9][6] , \MEM[9][5] , \MEM[9][4] , \MEM[9][3] ,
         \MEM[9][2] , \MEM[9][1] , \MEM[9][0] , \MEM[8][7] , \MEM[8][6] ,
         \MEM[8][5] , \MEM[8][4] , \MEM[8][3] , \MEM[8][2] , \MEM[8][1] ,
         \MEM[8][0] , \MEM[7][7] , \MEM[7][6] , \MEM[7][5] , \MEM[7][4] ,
         \MEM[7][3] , \MEM[7][2] , \MEM[7][1] , \MEM[7][0] , \MEM[6][7] ,
         \MEM[6][6] , \MEM[6][5] , \MEM[6][4] , \MEM[6][3] , \MEM[6][2] ,
         \MEM[6][1] , \MEM[6][0] , \MEM[5][7] , \MEM[5][6] , \MEM[5][5] ,
         \MEM[5][4] , \MEM[5][3] , \MEM[5][2] , \MEM[5][1] , \MEM[5][0] ,
         \MEM[4][7] , \MEM[4][6] , \MEM[4][5] , \MEM[4][4] , \MEM[4][3] ,
         \MEM[4][2] , \MEM[4][1] , \MEM[4][0] , \MEM[3][7] , \MEM[3][6] ,
         \MEM[3][5] , \MEM[3][4] , \MEM[3][3] , \MEM[3][2] , \MEM[3][1] ,
         \MEM[3][0] , \MEM[2][7] , \MEM[2][6] , \MEM[2][5] , \MEM[2][4] ,
         \MEM[2][3] , \MEM[2][2] , \MEM[2][1] , \MEM[2][0] , \MEM[1][7] ,
         \MEM[1][6] , \MEM[1][5] , \MEM[1][4] , \MEM[1][3] , \MEM[1][2] ,
         \MEM[1][1] , \MEM[1][0] , \MEM[0][7] , \MEM[0][6] , \MEM[0][5] ,
         \MEM[0][4] , \MEM[0][3] , \MEM[0][2] , \MEM[0][1] , \MEM[0][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];
  assign N13 = raddr[3];

  DFFRQX2M \MEM_reg[13][7]  ( .D(n148), .CK(w_clk), .RN(n196), .Q(\MEM[13][7] ) );
  DFFRQX2M \MEM_reg[13][6]  ( .D(n147), .CK(w_clk), .RN(n196), .Q(\MEM[13][6] ) );
  DFFRQX2M \MEM_reg[13][5]  ( .D(n146), .CK(w_clk), .RN(n196), .Q(\MEM[13][5] ) );
  DFFRQX2M \MEM_reg[13][4]  ( .D(n145), .CK(w_clk), .RN(n196), .Q(\MEM[13][4] ) );
  DFFRQX2M \MEM_reg[13][3]  ( .D(n144), .CK(w_clk), .RN(n196), .Q(\MEM[13][3] ) );
  DFFRQX2M \MEM_reg[13][2]  ( .D(n143), .CK(w_clk), .RN(n196), .Q(\MEM[13][2] ) );
  DFFRQX2M \MEM_reg[13][1]  ( .D(n142), .CK(w_clk), .RN(n196), .Q(\MEM[13][1] ) );
  DFFRQX2M \MEM_reg[13][0]  ( .D(n141), .CK(w_clk), .RN(n196), .Q(\MEM[13][0] ) );
  DFFRQX2M \MEM_reg[9][7]  ( .D(n116), .CK(w_clk), .RN(n199), .Q(\MEM[9][7] )
         );
  DFFRQX2M \MEM_reg[9][6]  ( .D(n115), .CK(w_clk), .RN(n199), .Q(\MEM[9][6] )
         );
  DFFRQX2M \MEM_reg[9][5]  ( .D(n114), .CK(w_clk), .RN(n199), .Q(\MEM[9][5] )
         );
  DFFRQX2M \MEM_reg[9][4]  ( .D(n113), .CK(w_clk), .RN(n199), .Q(\MEM[9][4] )
         );
  DFFRQX2M \MEM_reg[9][3]  ( .D(n112), .CK(w_clk), .RN(n199), .Q(\MEM[9][3] )
         );
  DFFRQX2M \MEM_reg[9][2]  ( .D(n111), .CK(w_clk), .RN(n199), .Q(\MEM[9][2] )
         );
  DFFRQX2M \MEM_reg[9][1]  ( .D(n110), .CK(w_clk), .RN(n199), .Q(\MEM[9][1] )
         );
  DFFRQX2M \MEM_reg[9][0]  ( .D(n109), .CK(w_clk), .RN(n199), .Q(\MEM[9][0] )
         );
  DFFRQX2M \MEM_reg[5][7]  ( .D(n84), .CK(w_clk), .RN(n201), .Q(\MEM[5][7] )
         );
  DFFRQX2M \MEM_reg[5][6]  ( .D(n83), .CK(w_clk), .RN(n201), .Q(\MEM[5][6] )
         );
  DFFRQX2M \MEM_reg[5][5]  ( .D(n82), .CK(w_clk), .RN(n201), .Q(\MEM[5][5] )
         );
  DFFRQX2M \MEM_reg[5][4]  ( .D(n81), .CK(w_clk), .RN(n201), .Q(\MEM[5][4] )
         );
  DFFRQX2M \MEM_reg[5][3]  ( .D(n80), .CK(w_clk), .RN(n202), .Q(\MEM[5][3] )
         );
  DFFRQX2M \MEM_reg[5][2]  ( .D(n79), .CK(w_clk), .RN(n202), .Q(\MEM[5][2] )
         );
  DFFRQX2M \MEM_reg[5][1]  ( .D(n78), .CK(w_clk), .RN(n202), .Q(\MEM[5][1] )
         );
  DFFRQX2M \MEM_reg[5][0]  ( .D(n77), .CK(w_clk), .RN(n202), .Q(\MEM[5][0] )
         );
  DFFRQX2M \MEM_reg[1][7]  ( .D(n52), .CK(w_clk), .RN(n204), .Q(\MEM[1][7] )
         );
  DFFRQX2M \MEM_reg[1][6]  ( .D(n51), .CK(w_clk), .RN(n204), .Q(\MEM[1][6] )
         );
  DFFRQX2M \MEM_reg[1][5]  ( .D(n50), .CK(w_clk), .RN(n204), .Q(\MEM[1][5] )
         );
  DFFRQX2M \MEM_reg[1][4]  ( .D(n49), .CK(w_clk), .RN(n204), .Q(\MEM[1][4] )
         );
  DFFRQX2M \MEM_reg[1][3]  ( .D(n48), .CK(w_clk), .RN(n204), .Q(\MEM[1][3] )
         );
  DFFRQX2M \MEM_reg[1][2]  ( .D(n47), .CK(w_clk), .RN(n204), .Q(\MEM[1][2] )
         );
  DFFRQX2M \MEM_reg[1][1]  ( .D(n46), .CK(w_clk), .RN(n204), .Q(\MEM[1][1] )
         );
  DFFRQX2M \MEM_reg[1][0]  ( .D(n45), .CK(w_clk), .RN(n204), .Q(\MEM[1][0] )
         );
  DFFRQX2M \MEM_reg[15][7]  ( .D(n164), .CK(w_clk), .RN(n195), .Q(\MEM[15][7] ) );
  DFFRQX2M \MEM_reg[15][6]  ( .D(n163), .CK(w_clk), .RN(n195), .Q(\MEM[15][6] ) );
  DFFRQX2M \MEM_reg[15][5]  ( .D(n162), .CK(w_clk), .RN(n195), .Q(\MEM[15][5] ) );
  DFFRQX2M \MEM_reg[15][4]  ( .D(n161), .CK(w_clk), .RN(n195), .Q(\MEM[15][4] ) );
  DFFRQX2M \MEM_reg[15][3]  ( .D(n160), .CK(w_clk), .RN(n195), .Q(\MEM[15][3] ) );
  DFFRQX2M \MEM_reg[15][2]  ( .D(n159), .CK(w_clk), .RN(n195), .Q(\MEM[15][2] ) );
  DFFRQX2M \MEM_reg[15][1]  ( .D(n158), .CK(w_clk), .RN(n195), .Q(\MEM[15][1] ) );
  DFFRQX2M \MEM_reg[15][0]  ( .D(n157), .CK(w_clk), .RN(n195), .Q(\MEM[15][0] ) );
  DFFRQX2M \MEM_reg[11][7]  ( .D(n132), .CK(w_clk), .RN(n197), .Q(\MEM[11][7] ) );
  DFFRQX2M \MEM_reg[11][6]  ( .D(n131), .CK(w_clk), .RN(n197), .Q(\MEM[11][6] ) );
  DFFRQX2M \MEM_reg[11][5]  ( .D(n130), .CK(w_clk), .RN(n197), .Q(\MEM[11][5] ) );
  DFFRQX2M \MEM_reg[11][4]  ( .D(n129), .CK(w_clk), .RN(n197), .Q(\MEM[11][4] ) );
  DFFRQX2M \MEM_reg[11][3]  ( .D(n128), .CK(w_clk), .RN(n198), .Q(\MEM[11][3] ) );
  DFFRQX2M \MEM_reg[11][2]  ( .D(n127), .CK(w_clk), .RN(n198), .Q(\MEM[11][2] ) );
  DFFRQX2M \MEM_reg[11][1]  ( .D(n126), .CK(w_clk), .RN(n198), .Q(\MEM[11][1] ) );
  DFFRQX2M \MEM_reg[11][0]  ( .D(n125), .CK(w_clk), .RN(n198), .Q(\MEM[11][0] ) );
  DFFRQX2M \MEM_reg[7][7]  ( .D(n100), .CK(w_clk), .RN(n200), .Q(\MEM[7][7] )
         );
  DFFRQX2M \MEM_reg[7][6]  ( .D(n99), .CK(w_clk), .RN(n200), .Q(\MEM[7][6] )
         );
  DFFRQX2M \MEM_reg[7][5]  ( .D(n98), .CK(w_clk), .RN(n200), .Q(\MEM[7][5] )
         );
  DFFRQX2M \MEM_reg[7][4]  ( .D(n97), .CK(w_clk), .RN(n200), .Q(\MEM[7][4] )
         );
  DFFRQX2M \MEM_reg[7][3]  ( .D(n96), .CK(w_clk), .RN(n200), .Q(\MEM[7][3] )
         );
  DFFRQX2M \MEM_reg[7][2]  ( .D(n95), .CK(w_clk), .RN(n200), .Q(\MEM[7][2] )
         );
  DFFRQX2M \MEM_reg[7][1]  ( .D(n94), .CK(w_clk), .RN(n200), .Q(\MEM[7][1] )
         );
  DFFRQX2M \MEM_reg[7][0]  ( .D(n93), .CK(w_clk), .RN(n200), .Q(\MEM[7][0] )
         );
  DFFRQX2M \MEM_reg[3][7]  ( .D(n68), .CK(w_clk), .RN(n203), .Q(\MEM[3][7] )
         );
  DFFRQX2M \MEM_reg[3][6]  ( .D(n67), .CK(w_clk), .RN(n203), .Q(\MEM[3][6] )
         );
  DFFRQX2M \MEM_reg[3][5]  ( .D(n66), .CK(w_clk), .RN(n203), .Q(\MEM[3][5] )
         );
  DFFRQX2M \MEM_reg[3][4]  ( .D(n65), .CK(w_clk), .RN(n203), .Q(\MEM[3][4] )
         );
  DFFRQX2M \MEM_reg[3][3]  ( .D(n64), .CK(w_clk), .RN(n203), .Q(\MEM[3][3] )
         );
  DFFRQX2M \MEM_reg[3][2]  ( .D(n63), .CK(w_clk), .RN(n203), .Q(\MEM[3][2] )
         );
  DFFRQX2M \MEM_reg[3][1]  ( .D(n62), .CK(w_clk), .RN(n203), .Q(\MEM[3][1] )
         );
  DFFRQX2M \MEM_reg[3][0]  ( .D(n61), .CK(w_clk), .RN(n203), .Q(\MEM[3][0] )
         );
  DFFRQX2M \MEM_reg[14][7]  ( .D(n156), .CK(w_clk), .RN(n195), .Q(\MEM[14][7] ) );
  DFFRQX2M \MEM_reg[14][6]  ( .D(n155), .CK(w_clk), .RN(n195), .Q(\MEM[14][6] ) );
  DFFRQX2M \MEM_reg[14][5]  ( .D(n154), .CK(w_clk), .RN(n195), .Q(\MEM[14][5] ) );
  DFFRQX2M \MEM_reg[14][4]  ( .D(n153), .CK(w_clk), .RN(n195), .Q(\MEM[14][4] ) );
  DFFRQX2M \MEM_reg[14][3]  ( .D(n152), .CK(w_clk), .RN(n196), .Q(\MEM[14][3] ) );
  DFFRQX2M \MEM_reg[14][2]  ( .D(n151), .CK(w_clk), .RN(n196), .Q(\MEM[14][2] ) );
  DFFRQX2M \MEM_reg[14][1]  ( .D(n150), .CK(w_clk), .RN(n196), .Q(\MEM[14][1] ) );
  DFFRQX2M \MEM_reg[14][0]  ( .D(n149), .CK(w_clk), .RN(n196), .Q(\MEM[14][0] ) );
  DFFRQX2M \MEM_reg[10][7]  ( .D(n124), .CK(w_clk), .RN(n198), .Q(\MEM[10][7] ) );
  DFFRQX2M \MEM_reg[10][6]  ( .D(n123), .CK(w_clk), .RN(n198), .Q(\MEM[10][6] ) );
  DFFRQX2M \MEM_reg[10][5]  ( .D(n122), .CK(w_clk), .RN(n198), .Q(\MEM[10][5] ) );
  DFFRQX2M \MEM_reg[10][4]  ( .D(n121), .CK(w_clk), .RN(n198), .Q(\MEM[10][4] ) );
  DFFRQX2M \MEM_reg[10][3]  ( .D(n120), .CK(w_clk), .RN(n198), .Q(\MEM[10][3] ) );
  DFFRQX2M \MEM_reg[10][2]  ( .D(n119), .CK(w_clk), .RN(n198), .Q(\MEM[10][2] ) );
  DFFRQX2M \MEM_reg[10][1]  ( .D(n118), .CK(w_clk), .RN(n198), .Q(\MEM[10][1] ) );
  DFFRQX2M \MEM_reg[10][0]  ( .D(n117), .CK(w_clk), .RN(n198), .Q(\MEM[10][0] ) );
  DFFRQX2M \MEM_reg[6][7]  ( .D(n92), .CK(w_clk), .RN(n201), .Q(\MEM[6][7] )
         );
  DFFRQX2M \MEM_reg[6][6]  ( .D(n91), .CK(w_clk), .RN(n201), .Q(\MEM[6][6] )
         );
  DFFRQX2M \MEM_reg[6][5]  ( .D(n90), .CK(w_clk), .RN(n201), .Q(\MEM[6][5] )
         );
  DFFRQX2M \MEM_reg[6][4]  ( .D(n89), .CK(w_clk), .RN(n201), .Q(\MEM[6][4] )
         );
  DFFRQX2M \MEM_reg[6][3]  ( .D(n88), .CK(w_clk), .RN(n201), .Q(\MEM[6][3] )
         );
  DFFRQX2M \MEM_reg[6][2]  ( .D(n87), .CK(w_clk), .RN(n201), .Q(\MEM[6][2] )
         );
  DFFRQX2M \MEM_reg[6][1]  ( .D(n86), .CK(w_clk), .RN(n201), .Q(\MEM[6][1] )
         );
  DFFRQX2M \MEM_reg[6][0]  ( .D(n85), .CK(w_clk), .RN(n201), .Q(\MEM[6][0] )
         );
  DFFRQX2M \MEM_reg[2][7]  ( .D(n60), .CK(w_clk), .RN(n203), .Q(\MEM[2][7] )
         );
  DFFRQX2M \MEM_reg[2][6]  ( .D(n59), .CK(w_clk), .RN(n203), .Q(\MEM[2][6] )
         );
  DFFRQX2M \MEM_reg[2][5]  ( .D(n58), .CK(w_clk), .RN(n203), .Q(\MEM[2][5] )
         );
  DFFRQX2M \MEM_reg[2][4]  ( .D(n57), .CK(w_clk), .RN(n203), .Q(\MEM[2][4] )
         );
  DFFRQX2M \MEM_reg[2][3]  ( .D(n56), .CK(w_clk), .RN(n204), .Q(\MEM[2][3] )
         );
  DFFRQX2M \MEM_reg[2][2]  ( .D(n55), .CK(w_clk), .RN(n204), .Q(\MEM[2][2] )
         );
  DFFRQX2M \MEM_reg[2][1]  ( .D(n54), .CK(w_clk), .RN(n204), .Q(\MEM[2][1] )
         );
  DFFRQX2M \MEM_reg[2][0]  ( .D(n53), .CK(w_clk), .RN(n204), .Q(\MEM[2][0] )
         );
  DFFRQX2M \MEM_reg[12][7]  ( .D(n140), .CK(w_clk), .RN(n197), .Q(\MEM[12][7] ) );
  DFFRQX2M \MEM_reg[12][6]  ( .D(n139), .CK(w_clk), .RN(n197), .Q(\MEM[12][6] ) );
  DFFRQX2M \MEM_reg[12][5]  ( .D(n138), .CK(w_clk), .RN(n197), .Q(\MEM[12][5] ) );
  DFFRQX2M \MEM_reg[12][4]  ( .D(n137), .CK(w_clk), .RN(n197), .Q(\MEM[12][4] ) );
  DFFRQX2M \MEM_reg[12][3]  ( .D(n136), .CK(w_clk), .RN(n197), .Q(\MEM[12][3] ) );
  DFFRQX2M \MEM_reg[12][2]  ( .D(n135), .CK(w_clk), .RN(n197), .Q(\MEM[12][2] ) );
  DFFRQX2M \MEM_reg[12][1]  ( .D(n134), .CK(w_clk), .RN(n197), .Q(\MEM[12][1] ) );
  DFFRQX2M \MEM_reg[12][0]  ( .D(n133), .CK(w_clk), .RN(n197), .Q(\MEM[12][0] ) );
  DFFRQX2M \MEM_reg[8][7]  ( .D(n108), .CK(w_clk), .RN(n199), .Q(\MEM[8][7] )
         );
  DFFRQX2M \MEM_reg[8][6]  ( .D(n107), .CK(w_clk), .RN(n199), .Q(\MEM[8][6] )
         );
  DFFRQX2M \MEM_reg[8][5]  ( .D(n106), .CK(w_clk), .RN(n199), .Q(\MEM[8][5] )
         );
  DFFRQX2M \MEM_reg[8][4]  ( .D(n105), .CK(w_clk), .RN(n199), .Q(\MEM[8][4] )
         );
  DFFRQX2M \MEM_reg[8][3]  ( .D(n104), .CK(w_clk), .RN(n200), .Q(\MEM[8][3] )
         );
  DFFRQX2M \MEM_reg[8][2]  ( .D(n103), .CK(w_clk), .RN(n200), .Q(\MEM[8][2] )
         );
  DFFRQX2M \MEM_reg[8][1]  ( .D(n102), .CK(w_clk), .RN(n200), .Q(\MEM[8][1] )
         );
  DFFRQX2M \MEM_reg[8][0]  ( .D(n101), .CK(w_clk), .RN(n200), .Q(\MEM[8][0] )
         );
  DFFRQX2M \MEM_reg[4][7]  ( .D(n76), .CK(w_clk), .RN(n202), .Q(\MEM[4][7] )
         );
  DFFRQX2M \MEM_reg[4][6]  ( .D(n75), .CK(w_clk), .RN(n202), .Q(\MEM[4][6] )
         );
  DFFRQX2M \MEM_reg[4][5]  ( .D(n74), .CK(w_clk), .RN(n202), .Q(\MEM[4][5] )
         );
  DFFRQX2M \MEM_reg[4][4]  ( .D(n73), .CK(w_clk), .RN(n202), .Q(\MEM[4][4] )
         );
  DFFRQX2M \MEM_reg[4][3]  ( .D(n72), .CK(w_clk), .RN(n202), .Q(\MEM[4][3] )
         );
  DFFRQX2M \MEM_reg[4][2]  ( .D(n71), .CK(w_clk), .RN(n202), .Q(\MEM[4][2] )
         );
  DFFRQX2M \MEM_reg[4][1]  ( .D(n70), .CK(w_clk), .RN(n202), .Q(\MEM[4][1] )
         );
  DFFRQX2M \MEM_reg[4][0]  ( .D(n69), .CK(w_clk), .RN(n202), .Q(\MEM[4][0] )
         );
  DFFRQX2M \MEM_reg[0][7]  ( .D(n44), .CK(w_clk), .RN(n205), .Q(\MEM[0][7] )
         );
  DFFRQX2M \MEM_reg[0][6]  ( .D(n43), .CK(w_clk), .RN(n205), .Q(\MEM[0][6] )
         );
  DFFRQX2M \MEM_reg[0][5]  ( .D(n42), .CK(w_clk), .RN(n205), .Q(\MEM[0][5] )
         );
  DFFRQX2M \MEM_reg[0][4]  ( .D(n41), .CK(w_clk), .RN(n205), .Q(\MEM[0][4] )
         );
  DFFRQX2M \MEM_reg[0][3]  ( .D(n40), .CK(w_clk), .RN(n205), .Q(\MEM[0][3] )
         );
  DFFRQX2M \MEM_reg[0][2]  ( .D(n39), .CK(w_clk), .RN(n205), .Q(\MEM[0][2] )
         );
  DFFRQX2M \MEM_reg[0][1]  ( .D(n38), .CK(w_clk), .RN(n205), .Q(\MEM[0][1] )
         );
  DFFRQX2M \MEM_reg[0][0]  ( .D(n37), .CK(w_clk), .RN(n205), .Q(\MEM[0][0] )
         );
  NOR2X2M U4 ( .A(n211), .B(waddr[2]), .Y(n17) );
  NOR2X2M U5 ( .A(waddr[1]), .B(waddr[2]), .Y(n12) );
  CLKBUFX2M U6 ( .A(n206), .Y(n204) );
  CLKBUFX2M U7 ( .A(n206), .Y(n203) );
  CLKBUFX2M U8 ( .A(n207), .Y(n202) );
  CLKBUFX2M U9 ( .A(n207), .Y(n201) );
  CLKBUFX2M U10 ( .A(n207), .Y(n200) );
  CLKBUFX2M U11 ( .A(n208), .Y(n199) );
  CLKBUFX2M U12 ( .A(n208), .Y(n198) );
  CLKBUFX2M U13 ( .A(n208), .Y(n197) );
  CLKBUFX2M U14 ( .A(n209), .Y(n196) );
  CLKBUFX2M U15 ( .A(n209), .Y(n195) );
  CLKBUFX2M U16 ( .A(n206), .Y(n205) );
  CLKBUFX2M U17 ( .A(w_rst), .Y(n206) );
  CLKBUFX2M U18 ( .A(w_rst), .Y(n207) );
  CLKBUFX2M U19 ( .A(w_rst), .Y(n208) );
  CLKBUFX2M U20 ( .A(w_rst), .Y(n209) );
  NAND2X2M U21 ( .A(n17), .B(n13), .Y(n16) );
  NAND2X2M U22 ( .A(n17), .B(n15), .Y(n18) );
  NAND2X2M U23 ( .A(n15), .B(n12), .Y(n14) );
  NAND2X2M U24 ( .A(n27), .B(n12), .Y(n26) );
  NAND2X2M U25 ( .A(n29), .B(n12), .Y(n28) );
  NAND2X2M U26 ( .A(n27), .B(n17), .Y(n30) );
  NAND2X2M U27 ( .A(n29), .B(n17), .Y(n31) );
  NAND2X2M U28 ( .A(n12), .B(n13), .Y(n11) );
  NAND2X2M U29 ( .A(n20), .B(n13), .Y(n19) );
  NAND2X2M U30 ( .A(n20), .B(n15), .Y(n21) );
  NAND2X2M U31 ( .A(n23), .B(n13), .Y(n22) );
  NAND2X2M U32 ( .A(n23), .B(n15), .Y(n25) );
  NAND2X2M U33 ( .A(n27), .B(n20), .Y(n32) );
  NAND2X2M U34 ( .A(n29), .B(n20), .Y(n33) );
  NAND2X2M U35 ( .A(n27), .B(n23), .Y(n34) );
  NAND2X2M U36 ( .A(n29), .B(n23), .Y(n36) );
  AND2X2M U37 ( .A(n24), .B(n210), .Y(n13) );
  AND2X2M U38 ( .A(n35), .B(n210), .Y(n27) );
  BUFX4M U39 ( .A(n193), .Y(n191) );
  BUFX4M U40 ( .A(n193), .Y(n192) );
  CLKBUFX2M U41 ( .A(n193), .Y(n190) );
  CLKBUFX2M U42 ( .A(n194), .Y(n188) );
  CLKBUFX2M U43 ( .A(n194), .Y(n189) );
  CLKBUFX2M U44 ( .A(n194), .Y(n187) );
  INVX2M U45 ( .A(wrdata[0]), .Y(n219) );
  INVX2M U46 ( .A(wrdata[1]), .Y(n218) );
  INVX2M U47 ( .A(wrdata[2]), .Y(n217) );
  INVX2M U48 ( .A(wrdata[3]), .Y(n216) );
  INVX2M U49 ( .A(wrdata[4]), .Y(n215) );
  INVX2M U50 ( .A(wrdata[5]), .Y(n214) );
  INVX2M U51 ( .A(wrdata[6]), .Y(n213) );
  INVX2M U52 ( .A(wrdata[7]), .Y(n212) );
  OAI2BB2X1M U53 ( .B0(n11), .B1(n219), .A0N(\MEM[0][0] ), .A1N(n11), .Y(n37)
         );
  OAI2BB2X1M U54 ( .B0(n11), .B1(n218), .A0N(\MEM[0][1] ), .A1N(n11), .Y(n38)
         );
  OAI2BB2X1M U55 ( .B0(n11), .B1(n217), .A0N(\MEM[0][2] ), .A1N(n11), .Y(n39)
         );
  OAI2BB2X1M U56 ( .B0(n11), .B1(n216), .A0N(\MEM[0][3] ), .A1N(n11), .Y(n40)
         );
  OAI2BB2X1M U57 ( .B0(n11), .B1(n215), .A0N(\MEM[0][4] ), .A1N(n11), .Y(n41)
         );
  OAI2BB2X1M U58 ( .B0(n11), .B1(n214), .A0N(\MEM[0][5] ), .A1N(n11), .Y(n42)
         );
  OAI2BB2X1M U59 ( .B0(n11), .B1(n213), .A0N(\MEM[0][6] ), .A1N(n11), .Y(n43)
         );
  OAI2BB2X1M U60 ( .B0(n11), .B1(n212), .A0N(\MEM[0][7] ), .A1N(n11), .Y(n44)
         );
  OAI2BB2X1M U61 ( .B0(n219), .B1(n16), .A0N(\MEM[2][0] ), .A1N(n16), .Y(n53)
         );
  OAI2BB2X1M U62 ( .B0(n218), .B1(n16), .A0N(\MEM[2][1] ), .A1N(n16), .Y(n54)
         );
  OAI2BB2X1M U63 ( .B0(n217), .B1(n16), .A0N(\MEM[2][2] ), .A1N(n16), .Y(n55)
         );
  OAI2BB2X1M U64 ( .B0(n216), .B1(n16), .A0N(\MEM[2][3] ), .A1N(n16), .Y(n56)
         );
  OAI2BB2X1M U65 ( .B0(n215), .B1(n16), .A0N(\MEM[2][4] ), .A1N(n16), .Y(n57)
         );
  OAI2BB2X1M U66 ( .B0(n214), .B1(n16), .A0N(\MEM[2][5] ), .A1N(n16), .Y(n58)
         );
  OAI2BB2X1M U67 ( .B0(n213), .B1(n16), .A0N(\MEM[2][6] ), .A1N(n16), .Y(n59)
         );
  OAI2BB2X1M U68 ( .B0(n212), .B1(n16), .A0N(\MEM[2][7] ), .A1N(n16), .Y(n60)
         );
  OAI2BB2X1M U69 ( .B0(n219), .B1(n18), .A0N(\MEM[3][0] ), .A1N(n18), .Y(n61)
         );
  OAI2BB2X1M U70 ( .B0(n218), .B1(n18), .A0N(\MEM[3][1] ), .A1N(n18), .Y(n62)
         );
  OAI2BB2X1M U71 ( .B0(n217), .B1(n18), .A0N(\MEM[3][2] ), .A1N(n18), .Y(n63)
         );
  OAI2BB2X1M U72 ( .B0(n216), .B1(n18), .A0N(\MEM[3][3] ), .A1N(n18), .Y(n64)
         );
  OAI2BB2X1M U73 ( .B0(n215), .B1(n18), .A0N(\MEM[3][4] ), .A1N(n18), .Y(n65)
         );
  OAI2BB2X1M U74 ( .B0(n214), .B1(n18), .A0N(\MEM[3][5] ), .A1N(n18), .Y(n66)
         );
  OAI2BB2X1M U75 ( .B0(n213), .B1(n18), .A0N(\MEM[3][6] ), .A1N(n18), .Y(n67)
         );
  OAI2BB2X1M U76 ( .B0(n212), .B1(n18), .A0N(\MEM[3][7] ), .A1N(n18), .Y(n68)
         );
  OAI2BB2X1M U77 ( .B0(n219), .B1(n14), .A0N(\MEM[1][0] ), .A1N(n14), .Y(n45)
         );
  OAI2BB2X1M U78 ( .B0(n218), .B1(n14), .A0N(\MEM[1][1] ), .A1N(n14), .Y(n46)
         );
  OAI2BB2X1M U79 ( .B0(n217), .B1(n14), .A0N(\MEM[1][2] ), .A1N(n14), .Y(n47)
         );
  OAI2BB2X1M U80 ( .B0(n216), .B1(n14), .A0N(\MEM[1][3] ), .A1N(n14), .Y(n48)
         );
  OAI2BB2X1M U81 ( .B0(n215), .B1(n14), .A0N(\MEM[1][4] ), .A1N(n14), .Y(n49)
         );
  OAI2BB2X1M U82 ( .B0(n214), .B1(n14), .A0N(\MEM[1][5] ), .A1N(n14), .Y(n50)
         );
  OAI2BB2X1M U83 ( .B0(n213), .B1(n14), .A0N(\MEM[1][6] ), .A1N(n14), .Y(n51)
         );
  OAI2BB2X1M U84 ( .B0(n212), .B1(n14), .A0N(\MEM[1][7] ), .A1N(n14), .Y(n52)
         );
  OAI2BB2X1M U85 ( .B0(n219), .B1(n26), .A0N(\MEM[8][0] ), .A1N(n26), .Y(n101)
         );
  OAI2BB2X1M U86 ( .B0(n218), .B1(n26), .A0N(\MEM[8][1] ), .A1N(n26), .Y(n102)
         );
  OAI2BB2X1M U87 ( .B0(n217), .B1(n26), .A0N(\MEM[8][2] ), .A1N(n26), .Y(n103)
         );
  OAI2BB2X1M U88 ( .B0(n216), .B1(n26), .A0N(\MEM[8][3] ), .A1N(n26), .Y(n104)
         );
  OAI2BB2X1M U89 ( .B0(n215), .B1(n26), .A0N(\MEM[8][4] ), .A1N(n26), .Y(n105)
         );
  OAI2BB2X1M U90 ( .B0(n214), .B1(n26), .A0N(\MEM[8][5] ), .A1N(n26), .Y(n106)
         );
  OAI2BB2X1M U91 ( .B0(n213), .B1(n26), .A0N(\MEM[8][6] ), .A1N(n26), .Y(n107)
         );
  OAI2BB2X1M U92 ( .B0(n212), .B1(n26), .A0N(\MEM[8][7] ), .A1N(n26), .Y(n108)
         );
  OAI2BB2X1M U93 ( .B0(n219), .B1(n28), .A0N(\MEM[9][0] ), .A1N(n28), .Y(n109)
         );
  OAI2BB2X1M U94 ( .B0(n218), .B1(n28), .A0N(\MEM[9][1] ), .A1N(n28), .Y(n110)
         );
  OAI2BB2X1M U95 ( .B0(n217), .B1(n28), .A0N(\MEM[9][2] ), .A1N(n28), .Y(n111)
         );
  OAI2BB2X1M U96 ( .B0(n216), .B1(n28), .A0N(\MEM[9][3] ), .A1N(n28), .Y(n112)
         );
  OAI2BB2X1M U97 ( .B0(n215), .B1(n28), .A0N(\MEM[9][4] ), .A1N(n28), .Y(n113)
         );
  OAI2BB2X1M U98 ( .B0(n214), .B1(n28), .A0N(\MEM[9][5] ), .A1N(n28), .Y(n114)
         );
  OAI2BB2X1M U99 ( .B0(n213), .B1(n28), .A0N(\MEM[9][6] ), .A1N(n28), .Y(n115)
         );
  OAI2BB2X1M U100 ( .B0(n212), .B1(n28), .A0N(\MEM[9][7] ), .A1N(n28), .Y(n116) );
  OAI2BB2X1M U101 ( .B0(n219), .B1(n30), .A0N(\MEM[10][0] ), .A1N(n30), .Y(
        n117) );
  OAI2BB2X1M U102 ( .B0(n218), .B1(n30), .A0N(\MEM[10][1] ), .A1N(n30), .Y(
        n118) );
  OAI2BB2X1M U103 ( .B0(n217), .B1(n30), .A0N(\MEM[10][2] ), .A1N(n30), .Y(
        n119) );
  OAI2BB2X1M U104 ( .B0(n216), .B1(n30), .A0N(\MEM[10][3] ), .A1N(n30), .Y(
        n120) );
  OAI2BB2X1M U105 ( .B0(n215), .B1(n30), .A0N(\MEM[10][4] ), .A1N(n30), .Y(
        n121) );
  OAI2BB2X1M U106 ( .B0(n214), .B1(n30), .A0N(\MEM[10][5] ), .A1N(n30), .Y(
        n122) );
  OAI2BB2X1M U107 ( .B0(n213), .B1(n30), .A0N(\MEM[10][6] ), .A1N(n30), .Y(
        n123) );
  OAI2BB2X1M U108 ( .B0(n212), .B1(n30), .A0N(\MEM[10][7] ), .A1N(n30), .Y(
        n124) );
  OAI2BB2X1M U109 ( .B0(n219), .B1(n31), .A0N(\MEM[11][0] ), .A1N(n31), .Y(
        n125) );
  OAI2BB2X1M U110 ( .B0(n218), .B1(n31), .A0N(\MEM[11][1] ), .A1N(n31), .Y(
        n126) );
  OAI2BB2X1M U111 ( .B0(n217), .B1(n31), .A0N(\MEM[11][2] ), .A1N(n31), .Y(
        n127) );
  OAI2BB2X1M U112 ( .B0(n216), .B1(n31), .A0N(\MEM[11][3] ), .A1N(n31), .Y(
        n128) );
  OAI2BB2X1M U113 ( .B0(n215), .B1(n31), .A0N(\MEM[11][4] ), .A1N(n31), .Y(
        n129) );
  OAI2BB2X1M U114 ( .B0(n214), .B1(n31), .A0N(\MEM[11][5] ), .A1N(n31), .Y(
        n130) );
  OAI2BB2X1M U115 ( .B0(n213), .B1(n31), .A0N(\MEM[11][6] ), .A1N(n31), .Y(
        n131) );
  OAI2BB2X1M U116 ( .B0(n212), .B1(n31), .A0N(\MEM[11][7] ), .A1N(n31), .Y(
        n132) );
  OAI2BB2X1M U117 ( .B0(n219), .B1(n19), .A0N(\MEM[4][0] ), .A1N(n19), .Y(n69)
         );
  OAI2BB2X1M U118 ( .B0(n218), .B1(n19), .A0N(\MEM[4][1] ), .A1N(n19), .Y(n70)
         );
  OAI2BB2X1M U119 ( .B0(n217), .B1(n19), .A0N(\MEM[4][2] ), .A1N(n19), .Y(n71)
         );
  OAI2BB2X1M U120 ( .B0(n216), .B1(n19), .A0N(\MEM[4][3] ), .A1N(n19), .Y(n72)
         );
  OAI2BB2X1M U121 ( .B0(n215), .B1(n19), .A0N(\MEM[4][4] ), .A1N(n19), .Y(n73)
         );
  OAI2BB2X1M U122 ( .B0(n214), .B1(n19), .A0N(\MEM[4][5] ), .A1N(n19), .Y(n74)
         );
  OAI2BB2X1M U123 ( .B0(n213), .B1(n19), .A0N(\MEM[4][6] ), .A1N(n19), .Y(n75)
         );
  OAI2BB2X1M U124 ( .B0(n212), .B1(n19), .A0N(\MEM[4][7] ), .A1N(n19), .Y(n76)
         );
  OAI2BB2X1M U125 ( .B0(n219), .B1(n21), .A0N(\MEM[5][0] ), .A1N(n21), .Y(n77)
         );
  OAI2BB2X1M U126 ( .B0(n218), .B1(n21), .A0N(\MEM[5][1] ), .A1N(n21), .Y(n78)
         );
  OAI2BB2X1M U127 ( .B0(n217), .B1(n21), .A0N(\MEM[5][2] ), .A1N(n21), .Y(n79)
         );
  OAI2BB2X1M U128 ( .B0(n216), .B1(n21), .A0N(\MEM[5][3] ), .A1N(n21), .Y(n80)
         );
  OAI2BB2X1M U129 ( .B0(n215), .B1(n21), .A0N(\MEM[5][4] ), .A1N(n21), .Y(n81)
         );
  OAI2BB2X1M U130 ( .B0(n214), .B1(n21), .A0N(\MEM[5][5] ), .A1N(n21), .Y(n82)
         );
  OAI2BB2X1M U131 ( .B0(n213), .B1(n21), .A0N(\MEM[5][6] ), .A1N(n21), .Y(n83)
         );
  OAI2BB2X1M U132 ( .B0(n212), .B1(n21), .A0N(\MEM[5][7] ), .A1N(n21), .Y(n84)
         );
  OAI2BB2X1M U133 ( .B0(n219), .B1(n22), .A0N(\MEM[6][0] ), .A1N(n22), .Y(n85)
         );
  OAI2BB2X1M U134 ( .B0(n218), .B1(n22), .A0N(\MEM[6][1] ), .A1N(n22), .Y(n86)
         );
  OAI2BB2X1M U135 ( .B0(n217), .B1(n22), .A0N(\MEM[6][2] ), .A1N(n22), .Y(n87)
         );
  OAI2BB2X1M U136 ( .B0(n216), .B1(n22), .A0N(\MEM[6][3] ), .A1N(n22), .Y(n88)
         );
  OAI2BB2X1M U137 ( .B0(n215), .B1(n22), .A0N(\MEM[6][4] ), .A1N(n22), .Y(n89)
         );
  OAI2BB2X1M U138 ( .B0(n214), .B1(n22), .A0N(\MEM[6][5] ), .A1N(n22), .Y(n90)
         );
  OAI2BB2X1M U139 ( .B0(n213), .B1(n22), .A0N(\MEM[6][6] ), .A1N(n22), .Y(n91)
         );
  OAI2BB2X1M U140 ( .B0(n212), .B1(n22), .A0N(\MEM[6][7] ), .A1N(n22), .Y(n92)
         );
  OAI2BB2X1M U141 ( .B0(n219), .B1(n25), .A0N(\MEM[7][0] ), .A1N(n25), .Y(n93)
         );
  OAI2BB2X1M U142 ( .B0(n218), .B1(n25), .A0N(\MEM[7][1] ), .A1N(n25), .Y(n94)
         );
  OAI2BB2X1M U143 ( .B0(n217), .B1(n25), .A0N(\MEM[7][2] ), .A1N(n25), .Y(n95)
         );
  OAI2BB2X1M U144 ( .B0(n216), .B1(n25), .A0N(\MEM[7][3] ), .A1N(n25), .Y(n96)
         );
  OAI2BB2X1M U145 ( .B0(n215), .B1(n25), .A0N(\MEM[7][4] ), .A1N(n25), .Y(n97)
         );
  OAI2BB2X1M U146 ( .B0(n214), .B1(n25), .A0N(\MEM[7][5] ), .A1N(n25), .Y(n98)
         );
  OAI2BB2X1M U147 ( .B0(n213), .B1(n25), .A0N(\MEM[7][6] ), .A1N(n25), .Y(n99)
         );
  OAI2BB2X1M U148 ( .B0(n212), .B1(n25), .A0N(\MEM[7][7] ), .A1N(n25), .Y(n100) );
  OAI2BB2X1M U149 ( .B0(n219), .B1(n32), .A0N(\MEM[12][0] ), .A1N(n32), .Y(
        n133) );
  OAI2BB2X1M U150 ( .B0(n218), .B1(n32), .A0N(\MEM[12][1] ), .A1N(n32), .Y(
        n134) );
  OAI2BB2X1M U151 ( .B0(n217), .B1(n32), .A0N(\MEM[12][2] ), .A1N(n32), .Y(
        n135) );
  OAI2BB2X1M U152 ( .B0(n216), .B1(n32), .A0N(\MEM[12][3] ), .A1N(n32), .Y(
        n136) );
  OAI2BB2X1M U153 ( .B0(n215), .B1(n32), .A0N(\MEM[12][4] ), .A1N(n32), .Y(
        n137) );
  OAI2BB2X1M U154 ( .B0(n214), .B1(n32), .A0N(\MEM[12][5] ), .A1N(n32), .Y(
        n138) );
  OAI2BB2X1M U155 ( .B0(n213), .B1(n32), .A0N(\MEM[12][6] ), .A1N(n32), .Y(
        n139) );
  OAI2BB2X1M U156 ( .B0(n212), .B1(n32), .A0N(\MEM[12][7] ), .A1N(n32), .Y(
        n140) );
  OAI2BB2X1M U157 ( .B0(n219), .B1(n33), .A0N(\MEM[13][0] ), .A1N(n33), .Y(
        n141) );
  OAI2BB2X1M U158 ( .B0(n218), .B1(n33), .A0N(\MEM[13][1] ), .A1N(n33), .Y(
        n142) );
  OAI2BB2X1M U159 ( .B0(n217), .B1(n33), .A0N(\MEM[13][2] ), .A1N(n33), .Y(
        n143) );
  OAI2BB2X1M U160 ( .B0(n216), .B1(n33), .A0N(\MEM[13][3] ), .A1N(n33), .Y(
        n144) );
  OAI2BB2X1M U161 ( .B0(n215), .B1(n33), .A0N(\MEM[13][4] ), .A1N(n33), .Y(
        n145) );
  OAI2BB2X1M U162 ( .B0(n214), .B1(n33), .A0N(\MEM[13][5] ), .A1N(n33), .Y(
        n146) );
  OAI2BB2X1M U163 ( .B0(n213), .B1(n33), .A0N(\MEM[13][6] ), .A1N(n33), .Y(
        n147) );
  OAI2BB2X1M U164 ( .B0(n212), .B1(n33), .A0N(\MEM[13][7] ), .A1N(n33), .Y(
        n148) );
  OAI2BB2X1M U165 ( .B0(n219), .B1(n34), .A0N(\MEM[14][0] ), .A1N(n34), .Y(
        n149) );
  OAI2BB2X1M U166 ( .B0(n218), .B1(n34), .A0N(\MEM[14][1] ), .A1N(n34), .Y(
        n150) );
  OAI2BB2X1M U167 ( .B0(n217), .B1(n34), .A0N(\MEM[14][2] ), .A1N(n34), .Y(
        n151) );
  OAI2BB2X1M U168 ( .B0(n216), .B1(n34), .A0N(\MEM[14][3] ), .A1N(n34), .Y(
        n152) );
  OAI2BB2X1M U169 ( .B0(n215), .B1(n34), .A0N(\MEM[14][4] ), .A1N(n34), .Y(
        n153) );
  OAI2BB2X1M U170 ( .B0(n214), .B1(n34), .A0N(\MEM[14][5] ), .A1N(n34), .Y(
        n154) );
  OAI2BB2X1M U171 ( .B0(n213), .B1(n34), .A0N(\MEM[14][6] ), .A1N(n34), .Y(
        n155) );
  OAI2BB2X1M U172 ( .B0(n212), .B1(n34), .A0N(\MEM[14][7] ), .A1N(n34), .Y(
        n156) );
  OAI2BB2X1M U173 ( .B0(n219), .B1(n36), .A0N(\MEM[15][0] ), .A1N(n36), .Y(
        n157) );
  OAI2BB2X1M U174 ( .B0(n218), .B1(n36), .A0N(\MEM[15][1] ), .A1N(n36), .Y(
        n158) );
  OAI2BB2X1M U175 ( .B0(n217), .B1(n36), .A0N(\MEM[15][2] ), .A1N(n36), .Y(
        n159) );
  OAI2BB2X1M U176 ( .B0(n216), .B1(n36), .A0N(\MEM[15][3] ), .A1N(n36), .Y(
        n160) );
  OAI2BB2X1M U177 ( .B0(n215), .B1(n36), .A0N(\MEM[15][4] ), .A1N(n36), .Y(
        n161) );
  OAI2BB2X1M U178 ( .B0(n214), .B1(n36), .A0N(\MEM[15][5] ), .A1N(n36), .Y(
        n162) );
  OAI2BB2X1M U179 ( .B0(n213), .B1(n36), .A0N(\MEM[15][6] ), .A1N(n36), .Y(
        n163) );
  OAI2BB2X1M U180 ( .B0(n212), .B1(n36), .A0N(\MEM[15][7] ), .A1N(n36), .Y(
        n164) );
  AND2X2M U181 ( .A(waddr[2]), .B(n211), .Y(n20) );
  AND2X2M U182 ( .A(waddr[2]), .B(waddr[1]), .Y(n23) );
  AND2X2M U183 ( .A(n24), .B(waddr[0]), .Y(n15) );
  AND2X2M U184 ( .A(n35), .B(waddr[0]), .Y(n29) );
  NOR2BX2M U185 ( .AN(wclken), .B(waddr[3]), .Y(n24) );
  INVX2M U186 ( .A(waddr[1]), .Y(n211) );
  AND2X2M U187 ( .A(waddr[3]), .B(wclken), .Y(n35) );
  INVX2M U188 ( .A(waddr[0]), .Y(n210) );
  MX4X1M U189 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N13), .S1(N12), .Y(
        rdata[0]) );
  MX4X1M U190 ( .A(\MEM[8][0] ), .B(\MEM[9][0] ), .C(\MEM[10][0] ), .D(
        \MEM[11][0] ), .S0(n190), .S1(n187), .Y(n2) );
  MX4X1M U191 ( .A(\MEM[12][0] ), .B(\MEM[13][0] ), .C(\MEM[14][0] ), .D(
        \MEM[15][0] ), .S0(n190), .S1(n187), .Y(n1) );
  MX4X1M U192 ( .A(\MEM[4][0] ), .B(\MEM[5][0] ), .C(\MEM[6][0] ), .D(
        \MEM[7][0] ), .S0(n190), .S1(n187), .Y(n3) );
  MX4X1M U193 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N13), .S1(N12), .Y(
        rdata[1]) );
  MX4X1M U194 ( .A(\MEM[8][1] ), .B(\MEM[9][1] ), .C(\MEM[10][1] ), .D(
        \MEM[11][1] ), .S0(n190), .S1(n187), .Y(n6) );
  MX4X1M U195 ( .A(\MEM[12][1] ), .B(\MEM[13][1] ), .C(\MEM[14][1] ), .D(
        \MEM[15][1] ), .S0(n190), .S1(n187), .Y(n5) );
  MX4X1M U196 ( .A(\MEM[4][1] ), .B(\MEM[5][1] ), .C(\MEM[6][1] ), .D(
        \MEM[7][1] ), .S0(n191), .S1(n187), .Y(n7) );
  MX4X1M U197 ( .A(n166), .B(n10), .C(n165), .D(n9), .S0(N13), .S1(N12), .Y(
        rdata[2]) );
  MX4X1M U198 ( .A(\MEM[8][2] ), .B(\MEM[9][2] ), .C(\MEM[10][2] ), .D(
        \MEM[11][2] ), .S0(n191), .S1(n188), .Y(n10) );
  MX4X1M U199 ( .A(\MEM[12][2] ), .B(\MEM[13][2] ), .C(\MEM[14][2] ), .D(
        \MEM[15][2] ), .S0(n191), .S1(n188), .Y(n9) );
  MX4X1M U200 ( .A(\MEM[4][2] ), .B(\MEM[5][2] ), .C(\MEM[6][2] ), .D(
        \MEM[7][2] ), .S0(n191), .S1(n188), .Y(n165) );
  MX4X1M U201 ( .A(n170), .B(n168), .C(n169), .D(n167), .S0(N13), .S1(N12), 
        .Y(rdata[3]) );
  MX4X1M U202 ( .A(\MEM[8][3] ), .B(\MEM[9][3] ), .C(\MEM[10][3] ), .D(
        \MEM[11][3] ), .S0(n191), .S1(n188), .Y(n168) );
  MX4X1M U203 ( .A(\MEM[12][3] ), .B(\MEM[13][3] ), .C(\MEM[14][3] ), .D(
        \MEM[15][3] ), .S0(n191), .S1(n188), .Y(n167) );
  MX4X1M U204 ( .A(\MEM[4][3] ), .B(\MEM[5][3] ), .C(\MEM[6][3] ), .D(
        \MEM[7][3] ), .S0(n191), .S1(n188), .Y(n169) );
  MX4X1M U205 ( .A(n174), .B(n172), .C(n173), .D(n171), .S0(N13), .S1(N12), 
        .Y(rdata[4]) );
  MX4X1M U206 ( .A(\MEM[8][4] ), .B(\MEM[9][4] ), .C(\MEM[10][4] ), .D(
        \MEM[11][4] ), .S0(n191), .S1(n188), .Y(n172) );
  MX4X1M U207 ( .A(\MEM[12][4] ), .B(\MEM[13][4] ), .C(\MEM[14][4] ), .D(
        \MEM[15][4] ), .S0(n191), .S1(n188), .Y(n171) );
  MX4X1M U208 ( .A(\MEM[4][4] ), .B(\MEM[5][4] ), .C(\MEM[6][4] ), .D(
        \MEM[7][4] ), .S0(n191), .S1(n188), .Y(n173) );
  MX4X1M U209 ( .A(n178), .B(n176), .C(n177), .D(n175), .S0(N13), .S1(N12), 
        .Y(rdata[5]) );
  MX4X1M U210 ( .A(\MEM[8][5] ), .B(\MEM[9][5] ), .C(\MEM[10][5] ), .D(
        \MEM[11][5] ), .S0(n192), .S1(n189), .Y(n176) );
  MX4X1M U211 ( .A(\MEM[12][5] ), .B(\MEM[13][5] ), .C(\MEM[14][5] ), .D(
        \MEM[15][5] ), .S0(n192), .S1(n189), .Y(n175) );
  MX4X1M U212 ( .A(\MEM[4][5] ), .B(\MEM[5][5] ), .C(\MEM[6][5] ), .D(
        \MEM[7][5] ), .S0(n192), .S1(n189), .Y(n177) );
  MX4X1M U213 ( .A(n182), .B(n180), .C(n181), .D(n179), .S0(N13), .S1(N12), 
        .Y(rdata[6]) );
  MX4X1M U214 ( .A(\MEM[8][6] ), .B(\MEM[9][6] ), .C(\MEM[10][6] ), .D(
        \MEM[11][6] ), .S0(n192), .S1(n189), .Y(n180) );
  MX4X1M U215 ( .A(\MEM[12][6] ), .B(\MEM[13][6] ), .C(\MEM[14][6] ), .D(
        \MEM[15][6] ), .S0(n192), .S1(n189), .Y(n179) );
  MX4X1M U216 ( .A(\MEM[4][6] ), .B(\MEM[5][6] ), .C(\MEM[6][6] ), .D(
        \MEM[7][6] ), .S0(n192), .S1(n189), .Y(n181) );
  MX4X1M U217 ( .A(\MEM[0][0] ), .B(\MEM[1][0] ), .C(\MEM[2][0] ), .D(
        \MEM[3][0] ), .S0(n190), .S1(n187), .Y(n4) );
  MX4X1M U218 ( .A(\MEM[0][1] ), .B(\MEM[1][1] ), .C(\MEM[2][1] ), .D(
        \MEM[3][1] ), .S0(n191), .S1(n187), .Y(n8) );
  MX4X1M U219 ( .A(\MEM[0][2] ), .B(\MEM[1][2] ), .C(\MEM[2][2] ), .D(
        \MEM[3][2] ), .S0(n191), .S1(n188), .Y(n166) );
  MX4X1M U220 ( .A(\MEM[0][3] ), .B(\MEM[1][3] ), .C(\MEM[2][3] ), .D(
        \MEM[3][3] ), .S0(n191), .S1(n188), .Y(n170) );
  MX4X1M U221 ( .A(\MEM[0][4] ), .B(\MEM[1][4] ), .C(\MEM[2][4] ), .D(
        \MEM[3][4] ), .S0(n192), .S1(n188), .Y(n174) );
  MX4X1M U222 ( .A(\MEM[0][5] ), .B(\MEM[1][5] ), .C(\MEM[2][5] ), .D(
        \MEM[3][5] ), .S0(n192), .S1(n189), .Y(n178) );
  MX4X1M U223 ( .A(\MEM[0][6] ), .B(\MEM[1][6] ), .C(\MEM[2][6] ), .D(
        \MEM[3][6] ), .S0(n192), .S1(n189), .Y(n182) );
  MX4X1M U224 ( .A(\MEM[0][7] ), .B(\MEM[1][7] ), .C(\MEM[2][7] ), .D(
        \MEM[3][7] ), .S0(n192), .S1(n189), .Y(n186) );
  MX4X1M U225 ( .A(n186), .B(n184), .C(n185), .D(n183), .S0(N13), .S1(N12), 
        .Y(rdata[7]) );
  MX4X1M U226 ( .A(\MEM[8][7] ), .B(\MEM[9][7] ), .C(\MEM[10][7] ), .D(
        \MEM[11][7] ), .S0(n192), .S1(n189), .Y(n184) );
  MX4X1M U227 ( .A(\MEM[12][7] ), .B(\MEM[13][7] ), .C(\MEM[14][7] ), .D(
        \MEM[15][7] ), .S0(n192), .S1(n189), .Y(n183) );
  MX4X1M U228 ( .A(\MEM[4][7] ), .B(\MEM[5][7] ), .C(\MEM[6][7] ), .D(
        \MEM[7][7] ), .S0(n192), .S1(n189), .Y(n185) );
  CLKBUFX2M U229 ( .A(N11), .Y(n194) );
  CLKBUFX2M U230 ( .A(N10), .Y(n193) );
endmodule


module F_DATA_SYNC_BUS_WIDTH5_0 ( CLK, RST, Unsync_bus, sync_bus );
  input [4:0] Unsync_bus;
  output [4:0] sync_bus;
  input CLK, RST;

  wire   [4:0] synchronizer;

  DFFRQX2M \sync_bus_reg[0]  ( .D(synchronizer[0]), .CK(CLK), .RN(RST), .Q(
        sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(synchronizer[1]), .CK(CLK), .RN(RST), .Q(
        sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(synchronizer[4]), .CK(CLK), .RN(RST), .Q(
        sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(synchronizer[3]), .CK(CLK), .RN(RST), .Q(
        sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(synchronizer[2]), .CK(CLK), .RN(RST), .Q(
        sync_bus[2]) );
  DFFRQX2M \synchronizer_reg[3]  ( .D(Unsync_bus[3]), .CK(CLK), .RN(RST), .Q(
        synchronizer[3]) );
  DFFRQX2M \synchronizer_reg[2]  ( .D(Unsync_bus[2]), .CK(CLK), .RN(RST), .Q(
        synchronizer[2]) );
  DFFRQX2M \synchronizer_reg[1]  ( .D(Unsync_bus[1]), .CK(CLK), .RN(RST), .Q(
        synchronizer[1]) );
  DFFRQX2M \synchronizer_reg[0]  ( .D(Unsync_bus[0]), .CK(CLK), .RN(RST), .Q(
        synchronizer[0]) );
  DFFRQX2M \synchronizer_reg[4]  ( .D(Unsync_bus[4]), .CK(CLK), .RN(RST), .Q(
        synchronizer[4]) );
endmodule


module F_DATA_SYNC_BUS_WIDTH5_1 ( CLK, RST, Unsync_bus, sync_bus );
  input [4:0] Unsync_bus;
  output [4:0] sync_bus;
  input CLK, RST;

  wire   [4:0] synchronizer;

  DFFRQX2M \sync_bus_reg[0]  ( .D(synchronizer[0]), .CK(CLK), .RN(RST), .Q(
        sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(synchronizer[1]), .CK(CLK), .RN(RST), .Q(
        sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(synchronizer[4]), .CK(CLK), .RN(RST), .Q(
        sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(synchronizer[3]), .CK(CLK), .RN(RST), .Q(
        sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(synchronizer[2]), .CK(CLK), .RN(RST), .Q(
        sync_bus[2]) );
  DFFRQX2M \synchronizer_reg[4]  ( .D(Unsync_bus[4]), .CK(CLK), .RN(RST), .Q(
        synchronizer[4]) );
  DFFRQX2M \synchronizer_reg[3]  ( .D(Unsync_bus[3]), .CK(CLK), .RN(RST), .Q(
        synchronizer[3]) );
  DFFRQX2M \synchronizer_reg[2]  ( .D(Unsync_bus[2]), .CK(CLK), .RN(RST), .Q(
        synchronizer[2]) );
  DFFRQX2M \synchronizer_reg[1]  ( .D(Unsync_bus[1]), .CK(CLK), .RN(RST), .Q(
        synchronizer[1]) );
  DFFRQX2M \synchronizer_reg[0]  ( .D(Unsync_bus[0]), .CK(CLK), .RN(RST), .Q(
        synchronizer[0]) );
endmodule


module RD_CONTRL_ADDR_WIDTH4 ( r_clk, r_rst, rinc, rempty, w_ptr, r_ptr, raddr
 );
  input [4:0] w_ptr;
  output [4:0] r_ptr;
  output [3:0] raddr;
  input r_clk, r_rst, rinc;
  output rempty;
  wire   N1, N2, N3, N4, N5, N6, N7, \add_23/carry[4] , \add_23/carry[3] ,
         \add_23/carry[2] , \add_23/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8;

  DFFRQX2M \bn_ptr_reg[4]  ( .D(N6), .CK(r_clk), .RN(r_rst), .Q(r_ptr[4]) );
  DFFRQX2M \bn_ptr_reg[0]  ( .D(N2), .CK(r_clk), .RN(r_rst), .Q(raddr[0]) );
  DFFRQX2M \bn_ptr_reg[1]  ( .D(N3), .CK(r_clk), .RN(r_rst), .Q(raddr[1]) );
  DFFSQX2M empty_flag_reg ( .D(N7), .CK(r_clk), .SN(r_rst), .Q(rempty) );
  DFFRQX2M \bn_ptr_reg[2]  ( .D(N4), .CK(r_clk), .RN(r_rst), .Q(raddr[2]) );
  DFFRQX2M \bn_ptr_reg[3]  ( .D(N5), .CK(r_clk), .RN(r_rst), .Q(raddr[3]) );
  NOR2BX2M U3 ( .AN(rinc), .B(rempty), .Y(N1) );
  CLKXOR2X2M U4 ( .A(raddr[2]), .B(raddr[1]), .Y(r_ptr[1]) );
  CLKXOR2X2M U5 ( .A(raddr[1]), .B(raddr[0]), .Y(r_ptr[0]) );
  CLKXOR2X2M U6 ( .A(raddr[3]), .B(raddr[2]), .Y(r_ptr[2]) );
  CLKXOR2X2M U7 ( .A(raddr[3]), .B(r_ptr[4]), .Y(r_ptr[3]) );
  CLKXOR2X2M U8 ( .A(r_ptr[4]), .B(\add_23/carry[4] ), .Y(N6) );
  AND2X1M U9 ( .A(\add_23/carry[3] ), .B(raddr[3]), .Y(\add_23/carry[4] ) );
  CLKXOR2X2M U10 ( .A(raddr[3]), .B(\add_23/carry[3] ), .Y(N5) );
  AND2X1M U11 ( .A(\add_23/carry[2] ), .B(raddr[2]), .Y(\add_23/carry[3] ) );
  CLKXOR2X2M U12 ( .A(raddr[2]), .B(\add_23/carry[2] ), .Y(N4) );
  AND2X1M U13 ( .A(\add_23/carry[1] ), .B(raddr[1]), .Y(\add_23/carry[2] ) );
  CLKXOR2X2M U14 ( .A(raddr[1]), .B(\add_23/carry[1] ), .Y(N3) );
  AND2X1M U15 ( .A(raddr[0]), .B(N1), .Y(\add_23/carry[1] ) );
  CLKXOR2X2M U16 ( .A(N1), .B(raddr[0]), .Y(N2) );
  CLKXOR2X2M U17 ( .A(w_ptr[2]), .B(r_ptr[2]), .Y(n8) );
  NOR2BX1M U18 ( .AN(w_ptr[0]), .B(r_ptr[0]), .Y(n1) );
  OAI2B2X1M U19 ( .A1N(r_ptr[1]), .A0(n1), .B0(w_ptr[1]), .B1(n1), .Y(n4) );
  NOR2BX1M U20 ( .AN(r_ptr[0]), .B(w_ptr[0]), .Y(n2) );
  OAI2B2X1M U21 ( .A1N(w_ptr[1]), .A0(n2), .B0(r_ptr[1]), .B1(n2), .Y(n3) );
  CLKNAND2X2M U22 ( .A(n4), .B(n3), .Y(n7) );
  CLKXOR2X2M U23 ( .A(w_ptr[3]), .B(r_ptr[3]), .Y(n6) );
  CLKXOR2X2M U24 ( .A(w_ptr[4]), .B(r_ptr[4]), .Y(n5) );
  NOR4X1M U25 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(N7) );
endmodule


module WR_CONTRL_ADDR_WIDTH4 ( w_clk, w_rst, winc, wfull, w_ptr, r_ptr, waddr
 );
  output [4:0] w_ptr;
  input [4:0] r_ptr;
  output [3:0] waddr;
  input w_clk, w_rst, winc;
  output wfull;
  wire   N2, N3, N4, N5, N6, N9, \eq_34/A[3] , \eq_34/A[4] , \add_22/carry[4] ,
         \add_22/carry[3] , \add_22/carry[2] , \add_22/carry[1] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9;

  DFFRX1M \bn_ptr_reg[4]  ( .D(N5), .CK(w_clk), .RN(w_rst), .Q(w_ptr[4]), .QN(
        \eq_34/A[4] ) );
  DFFRQX2M full_flag_reg ( .D(N9), .CK(w_clk), .RN(w_rst), .Q(wfull) );
  DFFRQX2M \bn_ptr_reg[0]  ( .D(N6), .CK(w_clk), .RN(w_rst), .Q(waddr[0]) );
  DFFRQX2M \bn_ptr_reg[3]  ( .D(N4), .CK(w_clk), .RN(w_rst), .Q(waddr[3]) );
  DFFRQX2M \bn_ptr_reg[1]  ( .D(N2), .CK(w_clk), .RN(w_rst), .Q(waddr[1]) );
  DFFRQX2M \bn_ptr_reg[2]  ( .D(N3), .CK(w_clk), .RN(w_rst), .Q(waddr[2]) );
  INVX2M U3 ( .A(\eq_34/A[3] ), .Y(w_ptr[3]) );
  NOR2X2M U4 ( .A(n1), .B(wfull), .Y(N6) );
  XNOR2X2M U5 ( .A(winc), .B(waddr[0]), .Y(n1) );
  CLKXOR2X2M U6 ( .A(\eq_34/A[4] ), .B(waddr[3]), .Y(\eq_34/A[3] ) );
  CLKXOR2X2M U7 ( .A(waddr[2]), .B(waddr[1]), .Y(w_ptr[1]) );
  CLKXOR2X2M U8 ( .A(waddr[1]), .B(waddr[0]), .Y(w_ptr[0]) );
  CLKXOR2X2M U9 ( .A(waddr[3]), .B(waddr[2]), .Y(w_ptr[2]) );
  CLKXOR2X2M U10 ( .A(w_ptr[4]), .B(\add_22/carry[4] ), .Y(N5) );
  AND2X1M U11 ( .A(\add_22/carry[3] ), .B(waddr[3]), .Y(\add_22/carry[4] ) );
  CLKXOR2X2M U12 ( .A(waddr[3]), .B(\add_22/carry[3] ), .Y(N4) );
  AND2X1M U13 ( .A(\add_22/carry[2] ), .B(waddr[2]), .Y(\add_22/carry[3] ) );
  CLKXOR2X2M U14 ( .A(waddr[2]), .B(\add_22/carry[2] ), .Y(N3) );
  AND2X1M U15 ( .A(\add_22/carry[1] ), .B(waddr[1]), .Y(\add_22/carry[2] ) );
  CLKXOR2X2M U16 ( .A(waddr[1]), .B(\add_22/carry[1] ), .Y(N2) );
  AND2X1M U17 ( .A(waddr[0]), .B(winc), .Y(\add_22/carry[1] ) );
  CLKXOR2X2M U18 ( .A(r_ptr[2]), .B(w_ptr[2]), .Y(n9) );
  NOR2BX1M U19 ( .AN(r_ptr[0]), .B(w_ptr[0]), .Y(n2) );
  OAI2B2X1M U20 ( .A1N(w_ptr[1]), .A0(n2), .B0(r_ptr[1]), .B1(n2), .Y(n5) );
  NOR2BX1M U21 ( .AN(w_ptr[0]), .B(r_ptr[0]), .Y(n3) );
  OAI2B2X1M U22 ( .A1N(r_ptr[1]), .A0(n3), .B0(w_ptr[1]), .B1(n3), .Y(n4) );
  CLKNAND2X2M U23 ( .A(n5), .B(n4), .Y(n8) );
  CLKXOR2X2M U24 ( .A(r_ptr[3]), .B(\eq_34/A[3] ), .Y(n7) );
  CLKXOR2X2M U25 ( .A(r_ptr[4]), .B(\eq_34/A[4] ), .Y(n6) );
  NOR4X1M U26 ( .A(n9), .B(n8), .C(n7), .D(n6), .Y(N9) );
endmodule


module FIFO_DATA_WIDTH8_ADDR_WIDTH4_MEM_SIZE32 ( W_CLK, W_RST, W_INC, WR_DATA, 
        FULL, R_CLK, R_RST, R_INC, RD_DATA, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   Wr_CLK_En, n1, n2;
  wire   [3:0] Wr_ADDR;
  wire   [3:0] Rd_ADDR;
  wire   [4:0] unsync_rd_ptr;
  wire   [4:0] sync_rd_ptr;
  wire   [4:0] unsync_wr_ptr;
  wire   [4:0] sync_wr_ptr;

  DUAL_RAM_DATA_WIDTH8_ADDR_WIDTH4_MEM_SIZE32 FIFO_MEMORY ( .w_clk(W_CLK), 
        .w_rst(n1), .wclken(Wr_CLK_En), .wrdata(WR_DATA), .waddr(Wr_ADDR), 
        .rdata(RD_DATA), .raddr(Rd_ADDR) );
  F_DATA_SYNC_BUS_WIDTH5_0 SYNC_R2W ( .CLK(W_CLK), .RST(n1), .Unsync_bus(
        unsync_rd_ptr), .sync_bus(sync_rd_ptr) );
  F_DATA_SYNC_BUS_WIDTH5_1 SYNC_W2R ( .CLK(R_CLK), .RST(R_RST), .Unsync_bus(
        unsync_wr_ptr), .sync_bus(sync_wr_ptr) );
  RD_CONTRL_ADDR_WIDTH4 rptr_empty ( .r_clk(R_CLK), .r_rst(R_RST), .rinc(R_INC), .rempty(EMPTY), .w_ptr(sync_wr_ptr), .r_ptr(unsync_rd_ptr), .raddr(Rd_ADDR)
         );
  WR_CONTRL_ADDR_WIDTH4 wptr_full ( .w_clk(W_CLK), .w_rst(n1), .winc(W_INC), 
        .wfull(FULL), .w_ptr(unsync_wr_ptr), .r_ptr(sync_rd_ptr), .waddr(
        Wr_ADDR) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(W_RST), .Y(n2) );
  NOR2BX2M U3 ( .AN(W_INC), .B(FULL), .Y(Wr_CLK_En) );
endmodule


module CLK_GATE ( CLK, CLK_EN, GATED_CLK );
  input CLK, CLK_EN;
  output GATED_CLK;


  TLATNCAX2M LATCHED_CLK ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 ( CLK, RST, Unsync_bus, bus_enable, 
        sync_bus, enable_pulse );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse;
  wire   sync_bus_enable, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] synchronizer;

  DFFRQX2M \synchronizer_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        synchronizer[0]) );
  DFFRQX2M sync_bus_enable_reg ( .D(synchronizer[1]), .CK(CLK), .RN(RST), .Q(
        sync_bus_enable) );
  DFFRQX2M enable_pulse_flipflop_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(
        enable_pulse) );
  DFFRQX2M \synchronizer_reg[1]  ( .D(synchronizer[0]), .CK(CLK), .RN(RST), 
        .Q(synchronizer[1]) );
  DFFRQX2M \sync_bus_register_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(
        sync_bus[3]) );
  DFFRQX2M \sync_bus_register_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(
        sync_bus[6]) );
  DFFRQX2M \sync_bus_register_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(
        sync_bus[2]) );
  DFFRQX2M \sync_bus_register_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(
        sync_bus[4]) );
  DFFRQX2M \sync_bus_register_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(
        sync_bus[5]) );
  DFFRQX2M \sync_bus_register_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(
        sync_bus[1]) );
  DFFRQX2M \sync_bus_register_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(
        sync_bus[7]) );
  DFFRQX2M \sync_bus_register_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(
        sync_bus[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(sync_bus_enable), .B(synchronizer[1]), .Y(n1) );
  AO22XLM U5 ( .A0(Unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22XLM U6 ( .A0(Unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22XLM U7 ( .A0(Unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7)
         );
  AO22XLM U8 ( .A0(Unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8)
         );
  AO22X1M U9 ( .A0(Unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22XLM U10 ( .A0(Unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
  AO22XLM U11 ( .A0(Unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5) );
  AO22X1M U12 ( .A0(Unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2) );
endmodule


module ClkDiv_Width8_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_Width8 ( i_rst_n, i_ref_clk, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_rst_n, i_ref_clk, i_clk_en;
  output o_div_clk;
  wire   N0, N6, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, reg_div_clk, n17, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44;
  wire   [7:0] edge_count;

  ClkDiv_Width8_DW01_inc_0 add_31_aco ( .A({n8, n7, n6, n5, n4, n3, n2, n1}), 
        .SUM({N16, N15, N14, N13, N12, N11, N10, N9}) );
  DFFRQX2M reg_div_clk_reg ( .D(n17), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        reg_div_clk) );
  DFFRQX2M \edge_count_reg[7]  ( .D(N24), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[7]) );
  DFFRQX2M \edge_count_reg[6]  ( .D(N23), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[6]) );
  DFFRQX2M \edge_count_reg[5]  ( .D(N22), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[5]) );
  DFFRQX2M \edge_count_reg[4]  ( .D(N21), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[4]) );
  DFFRQX2M \edge_count_reg[3]  ( .D(N20), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[3]) );
  DFFRQX2M \edge_count_reg[2]  ( .D(N19), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[2]) );
  DFFRQX2M \edge_count_reg[1]  ( .D(N18), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[1]) );
  DFFRQX2M \edge_count_reg[0]  ( .D(N17), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[0]) );
  AND2X2M U3 ( .A(edge_count[0]), .B(N6), .Y(n1) );
  AND2X2M U4 ( .A(edge_count[1]), .B(N6), .Y(n2) );
  AND2X2M U5 ( .A(edge_count[2]), .B(N6), .Y(n3) );
  AND2X2M U6 ( .A(edge_count[3]), .B(N6), .Y(n4) );
  AND2X2M U7 ( .A(edge_count[4]), .B(N6), .Y(n5) );
  AND2X2M U8 ( .A(edge_count[5]), .B(N6), .Y(n6) );
  AND2X2M U9 ( .A(edge_count[6]), .B(N6), .Y(n7) );
  AND2X2M U10 ( .A(N6), .B(edge_count[7]), .Y(n8) );
  MX2X2M U11 ( .A(i_ref_clk), .B(reg_div_clk), .S0(N0), .Y(o_div_clk) );
  MX2X2M U12 ( .A(N6), .B(n9), .S0(reg_div_clk), .Y(n14) );
  OR2X2M U13 ( .A(n15), .B(n16), .Y(n9) );
  NOR2BX2M U14 ( .AN(i_clk_en), .B(n43), .Y(N0) );
  NAND2X2M U15 ( .A(n33), .B(n34), .Y(N6) );
  MXI2X1M U16 ( .A(n10), .B(n11), .S0(reg_div_clk), .Y(n17) );
  CLKNAND2X2M U17 ( .A(N0), .B(n11), .Y(n10) );
  OAI211X1M U18 ( .A0(n12), .A1(n13), .B0(N0), .C0(n14), .Y(n11) );
  NAND4X1M U19 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n16) );
  XNOR2X1M U20 ( .A(edge_count[3]), .B(i_div_ratio[4]), .Y(n21) );
  XNOR2X1M U21 ( .A(edge_count[4]), .B(i_div_ratio[5]), .Y(n20) );
  XNOR2X1M U22 ( .A(edge_count[5]), .B(i_div_ratio[6]), .Y(n19) );
  XNOR2X1M U23 ( .A(edge_count[6]), .B(i_div_ratio[7]), .Y(n18) );
  NAND4X1M U24 ( .A(n22), .B(n23), .C(n24), .D(n25), .Y(n15) );
  XNOR2X1M U25 ( .A(edge_count[0]), .B(i_div_ratio[1]), .Y(n24) );
  XNOR2X1M U26 ( .A(edge_count[1]), .B(i_div_ratio[2]), .Y(n23) );
  XNOR2X1M U27 ( .A(edge_count[2]), .B(i_div_ratio[3]), .Y(n22) );
  NAND4X1M U28 ( .A(n26), .B(n27), .C(n28), .D(n29), .Y(n13) );
  NAND4X1M U29 ( .A(n30), .B(n31), .C(n32), .D(n25), .Y(n12) );
  NOR4X1M U30 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n34) );
  XNOR2X1M U31 ( .A(i_div_ratio[3]), .B(n29), .Y(n38) );
  CLKINVX1M U32 ( .A(edge_count[3]), .Y(n29) );
  XNOR2X1M U33 ( .A(i_div_ratio[2]), .B(n28), .Y(n37) );
  CLKINVX1M U34 ( .A(edge_count[2]), .Y(n28) );
  XNOR2X1M U35 ( .A(i_div_ratio[1]), .B(n27), .Y(n36) );
  CLKINVX1M U36 ( .A(edge_count[1]), .Y(n27) );
  XNOR2X1M U37 ( .A(i_div_ratio[0]), .B(n26), .Y(n35) );
  CLKINVX1M U38 ( .A(edge_count[0]), .Y(n26) );
  NOR4X1M U39 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n33) );
  XNOR2X1M U40 ( .A(i_div_ratio[7]), .B(n25), .Y(n42) );
  CLKINVX1M U41 ( .A(edge_count[7]), .Y(n25) );
  XNOR2X1M U42 ( .A(i_div_ratio[6]), .B(n32), .Y(n41) );
  CLKINVX1M U43 ( .A(edge_count[6]), .Y(n32) );
  XNOR2X1M U44 ( .A(i_div_ratio[5]), .B(n31), .Y(n40) );
  CLKINVX1M U45 ( .A(edge_count[5]), .Y(n31) );
  XNOR2X1M U46 ( .A(i_div_ratio[4]), .B(n30), .Y(n39) );
  CLKINVX1M U47 ( .A(edge_count[4]), .Y(n30) );
  AND2X1M U48 ( .A(N16), .B(N0), .Y(N24) );
  AND2X1M U49 ( .A(N15), .B(N0), .Y(N23) );
  AND2X1M U50 ( .A(N14), .B(N0), .Y(N22) );
  AND2X1M U51 ( .A(N13), .B(N0), .Y(N21) );
  AND2X1M U52 ( .A(N12), .B(N0), .Y(N20) );
  AND2X1M U53 ( .A(N11), .B(N0), .Y(N19) );
  AND2X1M U54 ( .A(N10), .B(N0), .Y(N18) );
  AND2X1M U55 ( .A(N9), .B(N0), .Y(N17) );
  NOR4BX1M U56 ( .AN(n44), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n43) );
  NOR4X1M U57 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n44) );
endmodule


module ClkDiv_Width6 ( i_rst_n, i_ref_clk, i_clk_en, i_div_ratio, o_div_clk );
  input [5:0] i_div_ratio;
  input i_rst_n, i_ref_clk, i_clk_en;
  output o_div_clk;
  wire   N0, N6, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         reg_div_clk, n16, N34, \add_31_aco/carry[5] , \add_31_aco/carry[4] ,
         \add_31_aco/carry[3] , \add_31_aco/carry[2] ,
         \mult_add_31_aco/PROD_not[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28;
  wire   [5:0] edge_count;

  DFFRQX2M reg_div_clk_reg ( .D(n16), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        reg_div_clk) );
  DFFRQX2M \edge_count_reg[3]  ( .D(N18), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[3]) );
  DFFRQX2M \edge_count_reg[1]  ( .D(N16), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[1]) );
  DFFRQX2M \edge_count_reg[4]  ( .D(N19), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[4]) );
  DFFRQX2M \edge_count_reg[2]  ( .D(N17), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[2]) );
  DFFRQX2M \edge_count_reg[0]  ( .D(N15), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[0]) );
  DFFRQX2M \edge_count_reg[5]  ( .D(N20), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        edge_count[5]) );
  AND2X2M U3 ( .A(edge_count[1]), .B(N6), .Y(n1) );
  AND2X2M U4 ( .A(edge_count[2]), .B(N6), .Y(n2) );
  AND2X2M U5 ( .A(edge_count[3]), .B(N6), .Y(n3) );
  AND2X2M U6 ( .A(edge_count[4]), .B(N6), .Y(n4) );
  AND2X2M U7 ( .A(N6), .B(edge_count[5]), .Y(n5) );
  MX2X2M U8 ( .A(i_ref_clk), .B(reg_div_clk), .S0(N0), .Y(o_div_clk) );
  ADDHX1M U9 ( .A(n1), .B(N34), .CO(\add_31_aco/carry[2] ), .S(N10) );
  ADDHX1M U10 ( .A(n2), .B(\add_31_aco/carry[2] ), .CO(\add_31_aco/carry[3] ), 
        .S(N11) );
  ADDHX1M U11 ( .A(n3), .B(\add_31_aco/carry[3] ), .CO(\add_31_aco/carry[4] ), 
        .S(N12) );
  ADDHX1M U12 ( .A(n4), .B(\add_31_aco/carry[4] ), .CO(\add_31_aco/carry[5] ), 
        .S(N13) );
  CLKNAND2X2M U13 ( .A(edge_count[0]), .B(N6), .Y(
        \mult_add_31_aco/PROD_not[0] ) );
  CLKINVX1M U14 ( .A(\mult_add_31_aco/PROD_not[0] ), .Y(N34) );
  CLKXOR2X2M U15 ( .A(\add_31_aco/carry[5] ), .B(n5), .Y(N14) );
  MXI2X1M U16 ( .A(n6), .B(n7), .S0(reg_div_clk), .Y(n16) );
  CLKNAND2X2M U17 ( .A(N0), .B(n7), .Y(n6) );
  OAI211X1M U18 ( .A0(n8), .A1(n9), .B0(N0), .C0(n10), .Y(n7) );
  MXI2X1M U19 ( .A(n11), .B(n12), .S0(reg_div_clk), .Y(n10) );
  NOR4X1M U20 ( .A(n13), .B(n14), .C(edge_count[5]), .D(n15), .Y(n12) );
  CLKXOR2X2M U21 ( .A(i_div_ratio[1]), .B(edge_count[0]), .Y(n15) );
  CLKXOR2X2M U22 ( .A(i_div_ratio[5]), .B(edge_count[4]), .Y(n14) );
  NAND3X1M U23 ( .A(n17), .B(n18), .C(n19), .Y(n13) );
  XNOR2X1M U24 ( .A(edge_count[2]), .B(i_div_ratio[3]), .Y(n19) );
  XNOR2X1M U25 ( .A(edge_count[3]), .B(i_div_ratio[4]), .Y(n18) );
  XNOR2X1M U26 ( .A(edge_count[1]), .B(i_div_ratio[2]), .Y(n17) );
  CLKINVX1M U27 ( .A(N6), .Y(n11) );
  OR3X1M U28 ( .A(edge_count[0]), .B(edge_count[1]), .C(edge_count[2]), .Y(n9)
         );
  OR3X1M U29 ( .A(edge_count[4]), .B(edge_count[5]), .C(edge_count[3]), .Y(n8)
         );
  NAND4X1M U30 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(N6) );
  NOR3X1M U31 ( .A(n24), .B(n25), .C(n26), .Y(n23) );
  CLKXOR2X2M U32 ( .A(i_div_ratio[0]), .B(edge_count[0]), .Y(n26) );
  CLKXOR2X2M U33 ( .A(i_div_ratio[2]), .B(edge_count[2]), .Y(n25) );
  CLKXOR2X2M U34 ( .A(i_div_ratio[1]), .B(edge_count[1]), .Y(n24) );
  XNOR2X1M U35 ( .A(edge_count[4]), .B(i_div_ratio[4]), .Y(n22) );
  XNOR2X1M U36 ( .A(edge_count[5]), .B(i_div_ratio[5]), .Y(n21) );
  XNOR2X1M U37 ( .A(edge_count[3]), .B(i_div_ratio[3]), .Y(n20) );
  NOR2BX1M U38 ( .AN(N14), .B(n27), .Y(N20) );
  NOR2BX1M U39 ( .AN(N13), .B(n27), .Y(N19) );
  NOR2BX1M U40 ( .AN(N12), .B(n27), .Y(N18) );
  NOR2BX1M U41 ( .AN(N11), .B(n27), .Y(N17) );
  NOR2BX1M U42 ( .AN(N10), .B(n27), .Y(N16) );
  NOR2BX1M U43 ( .AN(\mult_add_31_aco/PROD_not[0] ), .B(n27), .Y(N15) );
  CLKINVX1M U44 ( .A(n27), .Y(N0) );
  OAI31X1M U45 ( .A0(n28), .A1(i_div_ratio[2]), .A2(i_div_ratio[1]), .B0(
        i_clk_en), .Y(n27) );
  OR3X1M U46 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[3]), .Y(
        n28) );
endmodule


module RST_SYNC_NUM_STAGES2_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \synchronizer[0] ;

  DFFRQX2M \synchronizer_reg[1]  ( .D(\synchronizer[0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  DFFRQX2M \synchronizer_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \synchronizer[0] ) );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \synchronizer[0] ;

  DFFRQX2M \synchronizer_reg[1]  ( .D(\synchronizer[0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  DFFRQX2M \synchronizer_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \synchronizer[0] ) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, PAR_ERROR, STOP_ERROR
 );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT, PAR_ERROR, STOP_ERROR;
  wire   n14, RST_SYNC_REF, ALU_OUT_VALID, ALU_EN, ALU_CLK_EN, RegFile_Wr_En,
         RegFile_Rd_En, RegFile_Data_Vaild, SYS_RX_DATA_VALID, F_WR_INC,
         F_FULL, ALU_CLK, TX_CLK, RX_CLK, RST_SYNC_UART, TX_BUSY,
         UART_RX_DATA_vaild, F_EMPTY, _1_net_, F_RD_INC, n1, n2, n3, n4, n5,
         n7, n8, n9, n10, n11, n12, n13;
  wire   [15:0] ALU_OUT;
  wire   [3:0] ALU_FUNC;
  wire   [3:0] RegFile_ADDR;
  wire   [7:0] RegFile_WORD_IN;
  wire   [7:0] RegFile_WORD_OUT;
  wire   [7:0] SYS_RX_DATA_IN;
  wire   [7:0] SYS_TX_DATA_OUT;
  wire   [7:0] ALU_Op1;
  wire   [7:0] ALU_Op2;
  wire   [7:0] UART_Config;
  wire   [7:0] ClkDiv_Config;
  wire   [7:0] UART_TX_IN;
  wire   [7:0] UART_RX_OUT;
  wire   [3:0] UART_RX_Prescale;

  SYS_CONTRL_DATA_WIDTH8_ALU_FUNC_WIDTH4_RegFile_ADDR_WIDTH4 System_Control ( 
        .CLK(REF_CLK), .RST(n12), .ALU_OUT(ALU_OUT), .ALU_DATA_VALID(
        ALU_OUT_VALID), .ALU_FUNC(ALU_FUNC), .ALU_EN(ALU_EN), .ALU_CLK_EN(
        ALU_CLK_EN), .RegFile_ADDRESS(RegFile_ADDR), .RegFile_WrEn(
        RegFile_Wr_En), .RegFile_RdEn(RegFile_Rd_En), .RegFile_WrData(
        RegFile_WORD_IN), .RegFile_RdData(RegFile_WORD_OUT), 
        .RegFile_DATA_VAILD(RegFile_Data_Vaild), .RX_DATA_VALID(
        SYS_RX_DATA_VALID), .RX_DATA_IN(SYS_RX_DATA_IN), .FIFO_WR(F_WR_INC), 
        .FIFO_FULL(F_FULL), .TX_DATA_OUT(SYS_TX_DATA_OUT) );
  RegFile_DATA_WIDTH8_MEM_SIZE16_ADDR_WIDTH4 U0_RegFile ( .CLK(REF_CLK), .RST(
        n12), .WrData(RegFile_WORD_IN), .RdData(RegFile_WORD_OUT), .Address({
        RegFile_ADDR[3:2], n11, n10}), .WR_En(RegFile_Wr_En), .RD_EN(
        RegFile_Rd_En), .RdData_Vaild(RegFile_Data_Vaild), .REG0(ALU_Op1), 
        .REG1(ALU_Op2), .REG2(UART_Config), .REG3(ClkDiv_Config) );
  ALU_DATA_WIDTH8_FUNC_WIDTH4 ALU ( .CLK(ALU_CLK), .RST(n12), .A(ALU_Op1), .B(
        ALU_Op2), .ALU_OUT(ALU_OUT), .ALU_FUNC(ALU_FUNC), .Enable(ALU_EN), 
        .OUT_VALID(ALU_OUT_VALID) );
  UART_DATA_WIDTH8 U0_UART ( .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), .UART_RST(n8), 
        .RX_IN(n7), .TX_OUT(TX_OUT), .TX_DATA(UART_TX_IN), .RX_DATA(
        UART_RX_OUT), .PAR_EN(UART_Config[0]), .PAR_TYP(UART_Config[1]), 
        .PRESCALE(UART_Config[7:2]), .TX_DATA_VALID(n1), .TX_BUSY(TX_BUSY), 
        .RX_DATA_VALID(UART_RX_DATA_vaild), .RX_PAR_ERROR(PAR_ERROR), 
        .RX_STOP_ERROR(n14) );
  PULSE_GEN TX_BUSY_GEN ( .CLK(TX_CLK), .RST(n8), .LVL_SIG(_1_net_), 
        .PULSE_GEN(F_RD_INC) );
  FIFO_DATA_WIDTH8_ADDR_WIDTH4_MEM_SIZE32 Async_FIFO ( .W_CLK(REF_CLK), 
        .W_RST(n12), .W_INC(F_WR_INC), .WR_DATA(SYS_TX_DATA_OUT), .FULL(F_FULL), .R_CLK(TX_CLK), .R_RST(n8), .R_INC(F_RD_INC), .RD_DATA(UART_TX_IN), .EMPTY(
        F_EMPTY) );
  CLK_GATE ALU_CLOCK ( .CLK(REF_CLK), .CLK_EN(ALU_CLK_EN), .GATED_CLK(ALU_CLK)
         );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 UART_RX_DATA_SYNC ( .CLK(REF_CLK), .RST(n12), .Unsync_bus(UART_RX_OUT), .bus_enable(UART_RX_DATA_vaild), .sync_bus(
        SYS_RX_DATA_IN), .enable_pulse(SYS_RX_DATA_VALID) );
  ClkDiv_Width8 UART_TX_Clock_Divider ( .i_rst_n(n8), .i_ref_clk(UART_CLK), 
        .i_clk_en(1'b1), .i_div_ratio(ClkDiv_Config), .o_div_clk(TX_CLK) );
  ClkDiv_Width6 UART_RX_Clock_Divider ( .i_rst_n(n8), .i_ref_clk(UART_CLK), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, UART_RX_Prescale}), 
        .o_div_clk(RX_CLK) );
  RST_SYNC_NUM_STAGES2_0 RST_SYNC_1 ( .RST(RST), .CLK(REF_CLK), .SYNC_RST(
        RST_SYNC_REF) );
  RST_SYNC_NUM_STAGES2_1 RST_SYNC_2 ( .RST(RST), .CLK(UART_CLK), .SYNC_RST(
        RST_SYNC_UART) );
  CLKBUFX12M U13 ( .A(n14), .Y(STOP_ERROR) );
  INVX2M U14 ( .A(n13), .Y(n12) );
  OAI31X1M U15 ( .A0(n5), .A1(n2), .A2(n4), .B0(n3), .Y(UART_RX_Prescale[0])
         );
  AND2X2M U16 ( .A(n3), .B(n5), .Y(UART_RX_Prescale[1]) );
  AND2X2M U17 ( .A(n3), .B(n4), .Y(UART_RX_Prescale[2]) );
  AND2X1M U18 ( .A(n2), .B(n3), .Y(UART_RX_Prescale[3]) );
  CLKBUFX2M U19 ( .A(RegFile_ADDR[0]), .Y(n10) );
  CLKBUFX2M U20 ( .A(RegFile_ADDR[1]), .Y(n11) );
  INVX2M U21 ( .A(RST_SYNC_REF), .Y(n13) );
  CLKBUFX2M U22 ( .A(RX_IN), .Y(n7) );
  INVX2M U23 ( .A(F_EMPTY), .Y(n1) );
  NOR2X2M U24 ( .A(TX_BUSY), .B(F_EMPTY), .Y(_1_net_) );
  NOR4BX1M U25 ( .AN(UART_Config[3]), .B(UART_Config[2]), .C(UART_Config[4]), 
        .D(UART_Config[5]), .Y(n4) );
  NOR4BX1M U26 ( .AN(UART_Config[4]), .B(UART_Config[2]), .C(UART_Config[3]), 
        .D(UART_Config[5]), .Y(n5) );
  NOR4BX1M U27 ( .AN(UART_Config[2]), .B(UART_Config[3]), .C(UART_Config[4]), 
        .D(UART_Config[5]), .Y(n2) );
  INVX4M U28 ( .A(n9), .Y(n8) );
  INVX2M U29 ( .A(RST_SYNC_UART), .Y(n9) );
  NOR4X1M U30 ( .A(UART_Config[1]), .B(UART_Config[0]), .C(UART_Config[7]), 
        .D(UART_Config[6]), .Y(n3) );
endmodule


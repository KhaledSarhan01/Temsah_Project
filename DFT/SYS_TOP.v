/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Aug 18 01:45:15 2024
/////////////////////////////////////////////////////////////


module SYS_CONTRL ( CLK, RST, ALU_OUT, ALU_DATA_VALID, ALU_FUNC, ALU_EN, 
        ALU_CLK_EN, RegFile_ADDRESS, RegFile_WrEn, RegFile_RdEn, 
        RegFile_WrData, RegFile_RdData, RegFile_DATA_VAILD, RX_DATA_VALID, 
        RX_DATA_IN, FIFO_WR, FIFO_FULL, TX_DATA_OUT );
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUNC;
  output [3:0] RegFile_ADDRESS;
  output [7:0] RegFile_WrData;
  input [7:0] RegFile_RdData;
  input [7:0] RX_DATA_IN;
  output [7:0] TX_DATA_OUT;
  input CLK, RST, ALU_DATA_VALID, RegFile_DATA_VAILD, RX_DATA_VALID, FIFO_FULL;
  output ALU_EN, ALU_CLK_EN, RegFile_WrEn, RegFile_RdEn, FIFO_WR;
  wire   n178, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n174, n175,
         n176, n177;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [15:0] ALU_Result;
  tri   CLK;
  tri   FIFO_WR;
  tri   FIFO_FULL;
  tri   [7:0] TX_DATA_OUT;

  SDFFRX1M RegFile_ADDR_Register_reg_2_ ( .D(n152), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(RST), .QN(n42) );
  SDFFRX1M RX_Data_Register_reg_7_ ( .D(n143), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .QN(n33) );
  SDFFRX1M RX_Data_Register_reg_6_ ( .D(n144), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .QN(n34) );
  SDFFRX1M RX_Data_Register_reg_5_ ( .D(n145), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .QN(n35) );
  SDFFRX1M RX_Data_Register_reg_4_ ( .D(n146), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .QN(n36) );
  SDFFRX1M RegFile_ADDR_Register_reg_0_ ( .D(n154), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(RST), .QN(n44) );
  SDFFRX1M RegFile_ADDR_Register_reg_1_ ( .D(n153), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(RST), .QN(n43) );
  SDFFRX1M RX_Data_Register_reg_3_ ( .D(n147), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .QN(n37) );
  SDFFRX1M RX_Data_Register_reg_2_ ( .D(n148), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .QN(n38) );
  SDFFRX1M RX_Data_Register_reg_1_ ( .D(n149), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .QN(n39) );
  SDFFRX1M RX_Data_Register_reg_0_ ( .D(n150), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .QN(n40) );
  SDFFRX1M RegFile_ADDR_Register_reg_3_ ( .D(n151), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(RST), .QN(n41) );
  SDFFRQX1M current_state_reg_1_ ( .D(next_state[1]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX1M ALU_Result_reg_7_ ( .D(n135), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_Result[7]) );
  SDFFRQX1M ALU_Result_reg_6_ ( .D(n136), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_Result[6]) );
  SDFFRQX1M ALU_Result_reg_5_ ( .D(n137), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_Result[5]) );
  SDFFRQX1M ALU_Result_reg_4_ ( .D(n138), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_Result[4]) );
  SDFFRQX1M ALU_Result_reg_3_ ( .D(n139), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_Result[3]) );
  SDFFRQX1M ALU_Result_reg_2_ ( .D(n140), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_Result[2]) );
  SDFFRQX1M ALU_Result_reg_1_ ( .D(n141), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_Result[1]) );
  SDFFRQX1M ALU_Result_reg_0_ ( .D(n142), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_Result[0]) );
  SDFFRQX1M ALU_Result_reg_15_ ( .D(n127), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_Result[15]) );
  SDFFRQX1M ALU_Result_reg_14_ ( .D(n128), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_Result[14]) );
  SDFFRQX1M ALU_Result_reg_13_ ( .D(n129), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_Result[13]) );
  SDFFRQX1M ALU_Result_reg_12_ ( .D(n130), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_Result[12]) );
  SDFFRQX1M ALU_Result_reg_11_ ( .D(n131), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_Result[11]) );
  SDFFRQX1M ALU_Result_reg_10_ ( .D(n132), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_Result[10]) );
  SDFFRQX1M ALU_Result_reg_9_ ( .D(n133), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_Result[9]) );
  SDFFRQX1M ALU_Result_reg_8_ ( .D(n134), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_Result[8]) );
  SDFFRQX1M current_state_reg_3_ ( .D(next_state[3]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(RST), .Q(current_state[3]) );
  SDFFRQX1M current_state_reg_0_ ( .D(next_state[0]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX1M current_state_reg_2_ ( .D(n163), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(current_state[2]) );
  NOR2X2M U56 ( .A(n162), .B(n37), .Y(ALU_FUNC[3]) );
  NOR2X2M U57 ( .A(n126), .B(n42), .Y(RegFile_ADDRESS[2]) );
  INVX2M U58 ( .A(ALU_EN), .Y(n162) );
  BUFX2M U59 ( .A(n178), .Y(ALU_EN) );
  INVX2M U60 ( .A(n92), .Y(n164) );
  BUFX2M U61 ( .A(n178), .Y(n161) );
  INVX2M U62 ( .A(n72), .Y(RegFile_RdEn) );
  INVX2M U63 ( .A(n109), .Y(n171) );
  NOR3X2M U64 ( .A(n175), .B(n172), .C(n176), .Y(n178) );
  NOR2X2M U65 ( .A(n176), .B(n174), .Y(n125) );
  NOR2X2M U66 ( .A(n174), .B(n177), .Y(n108) );
  NAND2X2M U67 ( .A(n125), .B(n97), .Y(n111) );
  AND2X2M U68 ( .A(n123), .B(n111), .Y(n126) );
  INVX2M U69 ( .A(n65), .Y(n175) );
  AND3X2M U70 ( .A(n79), .B(n71), .C(n123), .Y(n124) );
  AOI211X2M U71 ( .A0(n88), .A1(n89), .B0(n81), .C0(n68), .Y(n87) );
  NAND2BX2M U72 ( .AN(n100), .B(n72), .Y(n98) );
  OAI22X1M U73 ( .A0(n162), .A1(n168), .B0(n164), .B1(n82), .Y(n80) );
  NOR2BX2M U74 ( .AN(n88), .B(n89), .Y(n92) );
  NAND2X2M U75 ( .A(n125), .B(n110), .Y(n72) );
  OAI211X2M U76 ( .A0(n164), .A1(n61), .B0(n62), .C0(n63), .Y(next_state[3])
         );
  NOR3BX2M U77 ( .AN(n64), .B(n65), .C(n66), .Y(n63) );
  NAND2BX2M U78 ( .AN(n66), .B(n123), .Y(RegFile_WrEn) );
  NAND3X2M U79 ( .A(n172), .B(n176), .C(n108), .Y(n64) );
  AND3X2M U80 ( .A(n162), .B(n73), .C(n74), .Y(n62) );
  AOI2BB1X2M U81 ( .A0N(n75), .A1N(n164), .B0(n169), .Y(n74) );
  INVX2M U82 ( .A(n93), .Y(n169) );
  AND3X2M U83 ( .A(n97), .B(n174), .C(n176), .Y(n88) );
  AND2X2M U84 ( .A(n64), .B(n73), .Y(n95) );
  NAND2X2M U85 ( .A(n83), .B(n78), .Y(n109) );
  NOR3X2M U86 ( .A(n177), .B(n125), .C(n172), .Y(ALU_CLK_EN) );
  NOR2BX2M U87 ( .AN(n125), .B(n110), .Y(FIFO_WR) );
  NOR2X4M U88 ( .A(n126), .B(n41), .Y(RegFile_ADDRESS[3]) );
  NOR2X2M U89 ( .A(current_state[3]), .B(current_state[0]), .Y(n110) );
  NOR2X2M U90 ( .A(n177), .B(current_state[1]), .Y(n65) );
  NOR2X2M U91 ( .A(n172), .B(current_state[3]), .Y(n97) );
  NOR2X2M U92 ( .A(n162), .B(n39), .Y(ALU_FUNC[1]) );
  NOR2X2M U93 ( .A(n162), .B(n38), .Y(ALU_FUNC[2]) );
  INVX2M U94 ( .A(current_state[0]), .Y(n172) );
  INVX2M U95 ( .A(current_state[2]), .Y(n176) );
  NAND3X2M U96 ( .A(current_state[2]), .B(n174), .C(n110), .Y(n123) );
  INVX2M U97 ( .A(current_state[1]), .Y(n174) );
  NAND3X2M U98 ( .A(current_state[0]), .B(n176), .C(n108), .Y(n71) );
  INVX2M U99 ( .A(current_state[3]), .Y(n177) );
  NOR2X2M U100 ( .A(n162), .B(n40), .Y(ALU_FUNC[0]) );
  OAI21X2M U101 ( .A0(n126), .A1(n44), .B0(n71), .Y(RegFile_ADDRESS[0]) );
  NOR2X2M U102 ( .A(n126), .B(n43), .Y(RegFile_ADDRESS[1]) );
  OAI211X2M U103 ( .A0(current_state[0]), .A1(n175), .B0(n70), .C0(n95), .Y(
        n100) );
  INVX2M U104 ( .A(n67), .Y(n163) );
  NOR3BX2M U105 ( .AN(n62), .B(n68), .C(n69), .Y(n67) );
  OAI2B11X2M U106 ( .A1N(RX_DATA_VALID), .A0(n70), .B0(n71), .C0(n72), .Y(n69)
         );
  OAI31X1M U107 ( .A0(n90), .A1(n164), .A2(n91), .B0(n83), .Y(n68) );
  NAND2X2M U108 ( .A(RX_DATA_IN[4]), .B(RX_DATA_IN[0]), .Y(n90) );
  NOR2X2M U109 ( .A(n124), .B(n40), .Y(RegFile_WrData[0]) );
  NOR2X2M U110 ( .A(n124), .B(n39), .Y(RegFile_WrData[1]) );
  NOR2X2M U111 ( .A(n124), .B(n38), .Y(RegFile_WrData[2]) );
  NOR2X2M U112 ( .A(n124), .B(n37), .Y(RegFile_WrData[3]) );
  NOR2X2M U113 ( .A(n124), .B(n36), .Y(RegFile_WrData[4]) );
  NOR2X2M U114 ( .A(n124), .B(n35), .Y(RegFile_WrData[5]) );
  NOR2X2M U115 ( .A(n124), .B(n34), .Y(RegFile_WrData[6]) );
  NOR2X2M U116 ( .A(n124), .B(n33), .Y(RegFile_WrData[7]) );
  NOR3X2M U117 ( .A(n172), .B(current_state[2]), .C(n177), .Y(n66) );
  NAND3X2M U118 ( .A(n108), .B(n172), .C(current_state[2]), .Y(n93) );
  NAND3X2M U119 ( .A(current_state[1]), .B(n176), .C(n97), .Y(n70) );
  OAI21X2M U120 ( .A0(n98), .A1(n40), .B0(n107), .Y(n150) );
  AOI22X1M U121 ( .A0(RX_DATA_IN[0]), .A1(n100), .B0(RegFile_RdData[0]), .B1(
        RegFile_RdEn), .Y(n107) );
  OAI21X2M U122 ( .A0(n98), .A1(n39), .B0(n106), .Y(n149) );
  AOI22X1M U123 ( .A0(RX_DATA_IN[1]), .A1(n100), .B0(RegFile_RdData[1]), .B1(
        RegFile_RdEn), .Y(n106) );
  OAI21X2M U124 ( .A0(n98), .A1(n38), .B0(n105), .Y(n148) );
  AOI22X1M U125 ( .A0(RX_DATA_IN[2]), .A1(n100), .B0(RegFile_RdData[2]), .B1(
        RegFile_RdEn), .Y(n105) );
  OAI21X2M U126 ( .A0(n98), .A1(n37), .B0(n104), .Y(n147) );
  AOI22X1M U127 ( .A0(RX_DATA_IN[3]), .A1(n100), .B0(RegFile_RdData[3]), .B1(
        RegFile_RdEn), .Y(n104) );
  OAI21X2M U128 ( .A0(n98), .A1(n36), .B0(n103), .Y(n146) );
  AOI22X1M U129 ( .A0(RX_DATA_IN[4]), .A1(n100), .B0(RegFile_RdData[4]), .B1(
        RegFile_RdEn), .Y(n103) );
  OAI21X2M U130 ( .A0(n98), .A1(n35), .B0(n102), .Y(n145) );
  AOI22X1M U131 ( .A0(RX_DATA_IN[5]), .A1(n100), .B0(RegFile_RdData[5]), .B1(
        RegFile_RdEn), .Y(n102) );
  OAI21X2M U132 ( .A0(n98), .A1(n34), .B0(n101), .Y(n144) );
  AOI22X1M U133 ( .A0(RX_DATA_IN[6]), .A1(n100), .B0(RegFile_RdData[6]), .B1(
        RegFile_RdEn), .Y(n101) );
  OAI21X2M U134 ( .A0(n98), .A1(n33), .B0(n99), .Y(n143) );
  AOI22X1M U135 ( .A0(RX_DATA_IN[7]), .A1(n100), .B0(RegFile_RdData[7]), .B1(
        RegFile_RdEn), .Y(n99) );
  NAND3X2M U136 ( .A(current_state[0]), .B(n176), .C(n65), .Y(n79) );
  NAND2X2M U137 ( .A(n76), .B(n77), .Y(next_state[1]) );
  AND4X2M U138 ( .A(n78), .B(n64), .C(n72), .D(n79), .Y(n77) );
  AOI211X2M U139 ( .A0(n170), .A1(RX_DATA_VALID), .B0(n80), .C0(n81), .Y(n76)
         );
  INVX2M U140 ( .A(n83), .Y(n170) );
  NAND4X2M U141 ( .A(n84), .B(n85), .C(n86), .D(n87), .Y(next_state[0]) );
  NAND3BX2M U142 ( .AN(FIFO_FULL), .B(RegFile_RdEn), .C(RegFile_DATA_VAILD), 
        .Y(n84) );
  AOI22X1M U143 ( .A0(RX_DATA_VALID), .A1(n94), .B0(ALU_EN), .B1(n168), .Y(n86) );
  NAND4X2M U144 ( .A(n92), .B(n82), .C(n75), .D(n61), .Y(n85) );
  NAND3X2M U145 ( .A(n65), .B(n172), .C(current_state[2]), .Y(n73) );
  AO22X1M U146 ( .A0(n162), .A1(ALU_Result[0]), .B0(ALU_OUT[0]), .B1(ALU_EN), 
        .Y(n142) );
  AO22X1M U147 ( .A0(n162), .A1(ALU_Result[1]), .B0(ALU_OUT[1]), .B1(ALU_EN), 
        .Y(n141) );
  AO22X1M U148 ( .A0(n162), .A1(ALU_Result[2]), .B0(ALU_OUT[2]), .B1(n161), 
        .Y(n140) );
  AO22X1M U149 ( .A0(n162), .A1(ALU_Result[3]), .B0(ALU_OUT[3]), .B1(n161), 
        .Y(n139) );
  AO22X1M U150 ( .A0(n162), .A1(ALU_Result[4]), .B0(ALU_OUT[4]), .B1(n161), 
        .Y(n138) );
  AO22X1M U151 ( .A0(n162), .A1(ALU_Result[5]), .B0(ALU_OUT[5]), .B1(n161), 
        .Y(n137) );
  AO22X1M U152 ( .A0(n162), .A1(ALU_Result[6]), .B0(ALU_OUT[6]), .B1(n161), 
        .Y(n136) );
  AO22X1M U153 ( .A0(n162), .A1(ALU_Result[7]), .B0(ALU_OUT[7]), .B1(n161), 
        .Y(n135) );
  AO22X1M U154 ( .A0(n162), .A1(ALU_Result[8]), .B0(ALU_OUT[8]), .B1(n161), 
        .Y(n134) );
  AO22X1M U155 ( .A0(n162), .A1(ALU_Result[9]), .B0(ALU_OUT[9]), .B1(n161), 
        .Y(n133) );
  AO22X1M U156 ( .A0(n162), .A1(ALU_Result[10]), .B0(ALU_OUT[10]), .B1(n161), 
        .Y(n132) );
  AO22X1M U157 ( .A0(n162), .A1(ALU_Result[11]), .B0(ALU_OUT[11]), .B1(n161), 
        .Y(n131) );
  AO22X1M U158 ( .A0(n162), .A1(ALU_Result[12]), .B0(ALU_OUT[12]), .B1(n161), 
        .Y(n130) );
  AO22X1M U159 ( .A0(n162), .A1(ALU_Result[13]), .B0(ALU_OUT[13]), .B1(n161), 
        .Y(n129) );
  AO22X1M U160 ( .A0(n162), .A1(ALU_Result[14]), .B0(ALU_OUT[14]), .B1(n161), 
        .Y(n128) );
  AO22X1M U161 ( .A0(n162), .A1(ALU_Result[15]), .B0(ALU_OUT[15]), .B1(ALU_EN), 
        .Y(n127) );
  NOR4X1M U162 ( .A(n165), .B(n166), .C(RX_DATA_IN[1]), .D(RX_DATA_IN[5]), .Y(
        n96) );
  NAND3BX2M U163 ( .AN(RX_DATA_IN[4]), .B(n167), .C(n96), .Y(n61) );
  OAI22X1M U164 ( .A0(n171), .A1(n167), .B0(n109), .B1(n44), .Y(n154) );
  OAI22X1M U165 ( .A0(n171), .A1(n166), .B0(n109), .B1(n42), .Y(n152) );
  OAI21X2M U166 ( .A0(RX_DATA_VALID), .A1(n70), .B0(n93), .Y(n81) );
  NAND3X2M U167 ( .A(current_state[2]), .B(n174), .C(n97), .Y(n83) );
  OAI21X2M U168 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n95), .Y(
        n94) );
  NAND4X2M U169 ( .A(RX_DATA_IN[5]), .B(RX_DATA_IN[1]), .C(n166), .D(n165), 
        .Y(n91) );
  NAND3X2M U170 ( .A(current_state[1]), .B(n176), .C(n110), .Y(n78) );
  OAI2BB2X1M U171 ( .B0(n109), .B1(n43), .A0N(n109), .A1N(RX_DATA_IN[1]), .Y(
        n153) );
  OAI2BB2X1M U172 ( .B0(n109), .B1(n41), .A0N(n109), .A1N(RX_DATA_IN[3]), .Y(
        n151) );
  NAND3X2M U173 ( .A(RX_DATA_IN[0]), .B(n96), .C(RX_DATA_IN[4]), .Y(n75) );
  INVX2M U174 ( .A(RX_DATA_IN[2]), .Y(n166) );
  NAND2X2M U175 ( .A(RX_DATA_IN[7]), .B(RX_DATA_IN[3]), .Y(n89) );
  OR3X2M U176 ( .A(n91), .B(RX_DATA_IN[0]), .C(RX_DATA_IN[4]), .Y(n82) );
  INVX2M U177 ( .A(RX_DATA_IN[6]), .Y(n165) );
  INVX2M U178 ( .A(RX_DATA_IN[0]), .Y(n167) );
  INVX2M U179 ( .A(ALU_DATA_VALID), .Y(n168) );
  AOI211X2M U180 ( .A0(n177), .A1(n122), .B0(n65), .C0(n176), .Y(n112) );
  NAND2X2M U181 ( .A(current_state[0]), .B(current_state[1]), .Y(n122) );
  OAI211X2M U182 ( .A0(n40), .A1(n111), .B0(n112), .C0(n121), .Y(
        TX_DATA_OUT[0]) );
  AOI22X1M U183 ( .A0(n169), .A1(ALU_Result[0]), .B0(n114), .B1(ALU_Result[8]), 
        .Y(n121) );
  OAI211X2M U184 ( .A0(n39), .A1(n111), .B0(n112), .C0(n120), .Y(
        TX_DATA_OUT[1]) );
  AOI22X1M U185 ( .A0(n169), .A1(ALU_Result[1]), .B0(n114), .B1(ALU_Result[9]), 
        .Y(n120) );
  OAI211X2M U186 ( .A0(n38), .A1(n111), .B0(n112), .C0(n119), .Y(
        TX_DATA_OUT[2]) );
  AOI22X1M U187 ( .A0(n169), .A1(ALU_Result[2]), .B0(n114), .B1(ALU_Result[10]), .Y(n119) );
  OAI211X2M U188 ( .A0(n37), .A1(n111), .B0(n112), .C0(n118), .Y(
        TX_DATA_OUT[3]) );
  AOI22X1M U189 ( .A0(n169), .A1(ALU_Result[3]), .B0(n114), .B1(ALU_Result[11]), .Y(n118) );
  OAI211X2M U190 ( .A0(n36), .A1(n111), .B0(n112), .C0(n117), .Y(
        TX_DATA_OUT[4]) );
  AOI22X1M U191 ( .A0(n169), .A1(ALU_Result[4]), .B0(n114), .B1(ALU_Result[12]), .Y(n117) );
  OAI211X2M U192 ( .A0(n35), .A1(n111), .B0(n112), .C0(n116), .Y(
        TX_DATA_OUT[5]) );
  AOI22X1M U193 ( .A0(n169), .A1(ALU_Result[5]), .B0(n114), .B1(ALU_Result[13]), .Y(n116) );
  OAI211XLM U194 ( .A0(n34), .A1(n111), .B0(n112), .C0(n115), .Y(
        TX_DATA_OUT[6]) );
  AOI22X1M U195 ( .A0(n169), .A1(ALU_Result[6]), .B0(n114), .B1(ALU_Result[14]), .Y(n115) );
  OAI211XLM U196 ( .A0(n33), .A1(n111), .B0(n112), .C0(n113), .Y(
        TX_DATA_OUT[7]) );
  AOI22X1M U197 ( .A0(n169), .A1(ALU_Result[7]), .B0(n114), .B1(ALU_Result[15]), .Y(n113) );
  AND2X2M U198 ( .A(n108), .B(current_state[0]), .Y(n114) );
endmodule


module RegFile ( CLK, RST, WrData, RdData, Address, WR_En, RD_EN, RdData_Vaild, 
        REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  output [7:0] RdData;
  input [3:0] Address;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WR_En, RD_EN;
  output RdData_Vaild;
  wire   Register_15__7_, Register_15__6_, Register_15__5_, Register_15__4_,
         Register_15__3_, Register_15__2_, Register_15__1_, Register_15__0_,
         Register_14__7_, Register_14__6_, Register_14__5_, Register_14__4_,
         Register_14__3_, Register_14__2_, Register_14__1_, Register_14__0_,
         Register_13__7_, Register_13__6_, Register_13__5_, Register_13__4_,
         Register_13__3_, Register_13__2_, Register_13__1_, Register_13__0_,
         Register_12__7_, Register_12__6_, Register_12__5_, Register_12__4_,
         Register_12__3_, Register_12__2_, Register_12__1_, Register_12__0_,
         Register_11__7_, Register_11__6_, Register_11__5_, Register_11__4_,
         Register_11__3_, Register_11__2_, Register_11__1_, Register_11__0_,
         Register_10__7_, Register_10__6_, Register_10__5_, Register_10__4_,
         Register_10__3_, Register_10__2_, Register_10__1_, Register_10__0_,
         Register_9__7_, Register_9__6_, Register_9__5_, Register_9__4_,
         Register_9__3_, Register_9__2_, Register_9__1_, Register_9__0_,
         Register_8__7_, Register_8__6_, Register_8__5_, Register_8__4_,
         Register_8__3_, Register_8__2_, Register_8__1_, Register_8__0_,
         Register_7__7_, Register_7__6_, Register_7__5_, Register_7__4_,
         Register_7__3_, Register_7__2_, Register_7__1_, Register_7__0_,
         Register_6__7_, Register_6__6_, Register_6__5_, Register_6__4_,
         Register_6__3_, Register_6__2_, Register_6__1_, Register_6__0_,
         Register_5__7_, Register_5__6_, Register_5__5_, Register_5__4_,
         Register_5__3_, Register_5__2_, Register_5__1_, Register_5__0_,
         Register_4__7_, Register_4__6_, Register_4__5_, Register_4__4_,
         Register_4__3_, Register_4__2_, Register_4__1_, Register_4__0_, N35,
         N36, N37, N38, N39, N40, N41, N42, N59, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478;
  tri   CLK;

  SDFFQX2M RdData_reg_4_ ( .D(n182), .SI(1'b0), .SE(1'b0), .CK(CLK), .Q(
        RdData[4]) );
  SDFFQX2M RdData_reg_3_ ( .D(n181), .SI(1'b0), .SE(1'b0), .CK(CLK), .Q(
        RdData[3]) );
  SDFFQX2M RdData_reg_2_ ( .D(n180), .SI(1'b0), .SE(1'b0), .CK(CLK), .Q(
        RdData[2]) );
  SDFFQX2M RdData_reg_1_ ( .D(n179), .SI(1'b0), .SE(1'b0), .CK(CLK), .Q(
        RdData[1]) );
  SDFFSQX1M Register_reg_2__0_ ( .D(n202), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .SN(RST), .Q(REG2[0]) );
  SDFFSQX1M Register_reg_2__7_ ( .D(n209), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .SN(RST), .Q(REG2[7]) );
  SDFFRQX1M RdData_Vaild_reg ( .D(N59), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(RdData_Vaild) );
  SDFFRQX1M Register_reg_1__5_ ( .D(n199), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG1[5]) );
  SDFFRQX1M Register_reg_1__4_ ( .D(n198), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG1[4]) );
  SDFFRQX1M Register_reg_1__3_ ( .D(n197), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG1[3]) );
  SDFFRQX1M Register_reg_1__2_ ( .D(n196), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG1[2]) );
  SDFFRQX1M Register_reg_1__1_ ( .D(n195), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG1[1]) );
  SDFFRQX1M Register_reg_1__0_ ( .D(n194), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG1[0]) );
  SDFFRQX1M Register_reg_2__6_ ( .D(n208), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG2[6]) );
  SDFFRQX1M Register_reg_2__5_ ( .D(n207), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG2[5]) );
  SDFFRQX1M Register_reg_2__4_ ( .D(n206), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG2[4]) );
  SDFFRQX1M Register_reg_2__3_ ( .D(n205), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG2[3]) );
  SDFFRQX1M Register_reg_2__2_ ( .D(n204), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG2[2]) );
  SDFFRQX1M Register_reg_2__1_ ( .D(n203), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG2[1]) );
  SDFFRQX1M Register_reg_3__7_ ( .D(n217), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG3[7]) );
  SDFFRQX1M Register_reg_3__6_ ( .D(n216), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG3[6]) );
  SDFFRQX1M Register_reg_3__4_ ( .D(n214), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG3[4]) );
  SDFFRQX1M Register_reg_3__3_ ( .D(n213), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG3[3]) );
  SDFFRQX1M Register_reg_3__2_ ( .D(n212), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG3[2]) );
  SDFFRQX1M Register_reg_3__1_ ( .D(n211), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG3[1]) );
  SDFFRQX1M Register_reg_3__0_ ( .D(n210), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG3[0]) );
  SDFFRQX1M Register_reg_0__7_ ( .D(n193), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG0[7]) );
  SDFFRQX1M Register_reg_0__6_ ( .D(n192), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG0[6]) );
  SDFFRQX1M Register_reg_0__5_ ( .D(n191), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG0[5]) );
  SDFFRQX1M Register_reg_0__4_ ( .D(n190), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG0[4]) );
  SDFFRQX1M Register_reg_0__3_ ( .D(n189), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG0[3]) );
  SDFFRQX1M Register_reg_0__2_ ( .D(n188), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG0[2]) );
  SDFFRQX1M Register_reg_0__1_ ( .D(n187), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG0[1]) );
  SDFFRQX1M Register_reg_0__0_ ( .D(n186), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG0[0]) );
  SDFFRQX1M Register_reg_1__6_ ( .D(n200), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG1[6]) );
  SDFFRQX1M Register_reg_7__7_ ( .D(n249), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_7__7_) );
  SDFFRQX1M Register_reg_7__6_ ( .D(n248), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_7__6_) );
  SDFFRQX1M Register_reg_7__5_ ( .D(n247), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_7__5_) );
  SDFFRQX1M Register_reg_7__4_ ( .D(n246), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_7__4_) );
  SDFFRQX1M Register_reg_7__3_ ( .D(n245), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_7__3_) );
  SDFFRQX1M Register_reg_7__2_ ( .D(n244), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_7__2_) );
  SDFFRQX1M Register_reg_7__1_ ( .D(n243), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_7__1_) );
  SDFFRQX1M Register_reg_7__0_ ( .D(n242), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_7__0_) );
  SDFFRQX1M Register_reg_6__7_ ( .D(n241), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_6__7_) );
  SDFFRQX1M Register_reg_6__6_ ( .D(n240), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_6__6_) );
  SDFFRQX1M Register_reg_6__5_ ( .D(n239), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_6__5_) );
  SDFFRQX1M Register_reg_6__4_ ( .D(n238), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_6__4_) );
  SDFFRQX1M Register_reg_6__3_ ( .D(n237), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_6__3_) );
  SDFFRQX1M Register_reg_6__2_ ( .D(n236), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_6__2_) );
  SDFFRQX1M Register_reg_6__1_ ( .D(n235), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_6__1_) );
  SDFFRQX1M Register_reg_6__0_ ( .D(n234), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_6__0_) );
  SDFFRQX1M Register_reg_5__7_ ( .D(n233), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_5__7_) );
  SDFFRQX1M Register_reg_5__6_ ( .D(n232), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_5__6_) );
  SDFFRQX1M Register_reg_5__5_ ( .D(n231), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_5__5_) );
  SDFFRQX1M Register_reg_5__4_ ( .D(n230), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_5__4_) );
  SDFFRQX1M Register_reg_5__3_ ( .D(n229), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_5__3_) );
  SDFFRQX1M Register_reg_5__2_ ( .D(n228), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_5__2_) );
  SDFFRQX1M Register_reg_5__1_ ( .D(n227), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_5__1_) );
  SDFFRQX1M Register_reg_5__0_ ( .D(n226), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_5__0_) );
  SDFFRQX1M Register_reg_4__7_ ( .D(n225), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_4__7_) );
  SDFFRQX1M Register_reg_4__6_ ( .D(n224), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_4__6_) );
  SDFFRQX1M Register_reg_4__5_ ( .D(n223), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_4__5_) );
  SDFFRQX1M Register_reg_4__4_ ( .D(n222), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_4__4_) );
  SDFFRQX1M Register_reg_4__3_ ( .D(n221), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_4__3_) );
  SDFFRQX1M Register_reg_4__2_ ( .D(n220), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_4__2_) );
  SDFFRQX1M Register_reg_4__1_ ( .D(n219), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_4__1_) );
  SDFFRQX1M Register_reg_4__0_ ( .D(n218), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_4__0_) );
  SDFFRQX1M Register_reg_15__7_ ( .D(n313), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_15__7_) );
  SDFFRQX1M Register_reg_15__6_ ( .D(n312), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_15__6_) );
  SDFFRQX1M Register_reg_15__5_ ( .D(n311), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_15__5_) );
  SDFFRQX1M Register_reg_15__4_ ( .D(n310), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_15__4_) );
  SDFFRQX1M Register_reg_15__3_ ( .D(n309), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_15__3_) );
  SDFFRQX1M Register_reg_15__2_ ( .D(n308), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_15__2_) );
  SDFFRQX1M Register_reg_15__1_ ( .D(n307), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_15__1_) );
  SDFFRQX1M Register_reg_15__0_ ( .D(n306), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_15__0_) );
  SDFFRQX1M Register_reg_14__7_ ( .D(n305), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_14__7_) );
  SDFFRQX1M Register_reg_14__6_ ( .D(n304), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_14__6_) );
  SDFFRQX1M Register_reg_14__5_ ( .D(n303), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_14__5_) );
  SDFFRQX1M Register_reg_14__4_ ( .D(n302), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_14__4_) );
  SDFFRQX1M Register_reg_14__3_ ( .D(n301), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_14__3_) );
  SDFFRQX1M Register_reg_14__2_ ( .D(n300), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_14__2_) );
  SDFFRQX1M Register_reg_14__1_ ( .D(n299), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_14__1_) );
  SDFFRQX1M Register_reg_14__0_ ( .D(n298), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_14__0_) );
  SDFFRQX1M Register_reg_13__7_ ( .D(n297), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_13__7_) );
  SDFFRQX1M Register_reg_13__6_ ( .D(n296), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_13__6_) );
  SDFFRQX1M Register_reg_13__5_ ( .D(n295), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_13__5_) );
  SDFFRQX1M Register_reg_13__4_ ( .D(n294), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_13__4_) );
  SDFFRQX1M Register_reg_13__3_ ( .D(n293), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_13__3_) );
  SDFFRQX1M Register_reg_13__2_ ( .D(n292), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_13__2_) );
  SDFFRQX1M Register_reg_13__1_ ( .D(n291), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_13__1_) );
  SDFFRQX1M Register_reg_13__0_ ( .D(n290), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_13__0_) );
  SDFFRQX1M Register_reg_12__7_ ( .D(n289), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_12__7_) );
  SDFFRQX1M Register_reg_12__6_ ( .D(n288), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_12__6_) );
  SDFFRQX1M Register_reg_12__5_ ( .D(n287), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_12__5_) );
  SDFFRQX1M Register_reg_12__4_ ( .D(n286), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_12__4_) );
  SDFFRQX1M Register_reg_12__3_ ( .D(n285), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_12__3_) );
  SDFFRQX1M Register_reg_12__2_ ( .D(n284), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_12__2_) );
  SDFFRQX1M Register_reg_12__1_ ( .D(n283), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_12__1_) );
  SDFFRQX1M Register_reg_12__0_ ( .D(n282), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_12__0_) );
  SDFFRQX1M Register_reg_9__7_ ( .D(n265), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_9__7_) );
  SDFFRQX1M Register_reg_9__6_ ( .D(n264), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_9__6_) );
  SDFFRQX1M Register_reg_9__5_ ( .D(n263), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_9__5_) );
  SDFFRQX1M Register_reg_9__4_ ( .D(n262), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_9__4_) );
  SDFFRQX1M Register_reg_9__3_ ( .D(n261), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_9__3_) );
  SDFFRQX1M Register_reg_9__2_ ( .D(n260), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_9__2_) );
  SDFFRQX1M Register_reg_9__1_ ( .D(n259), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_9__1_) );
  SDFFRQX1M Register_reg_9__0_ ( .D(n258), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_9__0_) );
  SDFFRQX1M Register_reg_8__7_ ( .D(n257), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_8__7_) );
  SDFFRQX1M Register_reg_8__6_ ( .D(n256), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_8__6_) );
  SDFFRQX1M Register_reg_8__5_ ( .D(n255), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_8__5_) );
  SDFFRQX1M Register_reg_8__4_ ( .D(n254), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_8__4_) );
  SDFFRQX1M Register_reg_8__3_ ( .D(n253), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_8__3_) );
  SDFFRQX1M Register_reg_8__2_ ( .D(n252), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_8__2_) );
  SDFFRQX1M Register_reg_8__1_ ( .D(n251), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_8__1_) );
  SDFFRQX1M Register_reg_8__0_ ( .D(n250), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_8__0_) );
  SDFFRQX1M Register_reg_11__7_ ( .D(n281), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_11__7_) );
  SDFFRQX1M Register_reg_11__6_ ( .D(n280), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_11__6_) );
  SDFFRQX1M Register_reg_11__5_ ( .D(n279), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_11__5_) );
  SDFFRQX1M Register_reg_11__4_ ( .D(n278), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_11__4_) );
  SDFFRQX1M Register_reg_11__3_ ( .D(n277), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_11__3_) );
  SDFFRQX1M Register_reg_11__2_ ( .D(n276), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_11__2_) );
  SDFFRQX1M Register_reg_11__1_ ( .D(n275), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_11__1_) );
  SDFFRQX1M Register_reg_11__0_ ( .D(n274), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_11__0_) );
  SDFFRQX1M Register_reg_10__7_ ( .D(n273), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_10__7_) );
  SDFFRQX1M Register_reg_10__6_ ( .D(n272), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_10__6_) );
  SDFFRQX1M Register_reg_10__5_ ( .D(n271), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_10__5_) );
  SDFFRQX1M Register_reg_10__4_ ( .D(n270), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_10__4_) );
  SDFFRQX1M Register_reg_10__3_ ( .D(n269), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_10__3_) );
  SDFFRQX1M Register_reg_10__2_ ( .D(n268), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_10__2_) );
  SDFFRQX1M Register_reg_10__1_ ( .D(n267), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_10__1_) );
  SDFFRQX1M Register_reg_10__0_ ( .D(n266), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(Register_10__0_) );
  SDFFQX1M RdData_reg_0_ ( .D(n178), .SI(1'b0), .SE(1'b0), .CK(CLK), .Q(
        RdData[0]) );
  SDFFQX1M RdData_reg_7_ ( .D(n185), .SI(1'b0), .SE(1'b0), .CK(CLK), .Q(
        RdData[7]) );
  NOR2BX2M U268 ( .AN(n176), .B(n468), .Y(n170) );
  NOR2BX2M U269 ( .AN(n165), .B(n468), .Y(n156) );
  NOR2BX2M U270 ( .AN(Address[2]), .B(Address[1]), .Y(n161) );
  NOR2BX2M U271 ( .AN(Address[2]), .B(n469), .Y(n164) );
  NOR2X2M U272 ( .A(n469), .B(Address[2]), .Y(n158) );
  NOR2X2M U273 ( .A(Address[1]), .B(Address[2]), .Y(n153) );
  INVX2M U274 ( .A(n465), .Y(n467) );
  INVX2M U275 ( .A(n465), .Y(n466) );
  INVX2M U276 ( .A(n463), .Y(n464) );
  BUFX2M U277 ( .A(n468), .Y(n465) );
  BUFX2M U278 ( .A(n469), .Y(n463) );
  NOR2BX2M U279 ( .AN(n176), .B(n466), .Y(n168) );
  NAND2X2M U280 ( .A(n168), .B(n153), .Y(n167) );
  NAND2X2M U281 ( .A(n170), .B(n153), .Y(n169) );
  NAND2X2M U282 ( .A(n168), .B(n158), .Y(n171) );
  NAND2X2M U283 ( .A(n170), .B(n158), .Y(n172) );
  NAND2X2M U284 ( .A(n168), .B(n161), .Y(n173) );
  NAND2X2M U285 ( .A(n170), .B(n161), .Y(n174) );
  NAND2X2M U286 ( .A(n168), .B(n164), .Y(n175) );
  NAND2X2M U287 ( .A(n170), .B(n164), .Y(n177) );
  NOR2BX2M U288 ( .AN(n165), .B(n466), .Y(n154) );
  NAND2X2M U289 ( .A(n156), .B(n153), .Y(n155) );
  NAND2X2M U290 ( .A(n158), .B(n154), .Y(n157) );
  NAND2X2M U291 ( .A(n158), .B(n156), .Y(n159) );
  NAND2X2M U292 ( .A(n161), .B(n154), .Y(n160) );
  NAND2X2M U293 ( .A(n161), .B(n156), .Y(n162) );
  NAND2X2M U294 ( .A(n164), .B(n154), .Y(n163) );
  NAND2X2M U295 ( .A(n164), .B(n156), .Y(n166) );
  NAND2X2M U296 ( .A(n153), .B(n154), .Y(n152) );
  NOR2BX2M U297 ( .AN(WR_En), .B(RD_EN), .Y(n151) );
  NOR2BX2M U298 ( .AN(RD_EN), .B(WR_En), .Y(N59) );
  AND2X2M U299 ( .A(Address[3]), .B(n151), .Y(n176) );
  NOR2BX2M U300 ( .AN(N59), .B(n149), .Y(n150) );
  NOR2BX2M U301 ( .AN(n151), .B(Address[3]), .Y(n165) );
  OAI2BB2X1M U302 ( .B0(n470), .B1(n167), .A0N(Register_8__0_), .A1N(n167), 
        .Y(n250) );
  OAI2BB2X1M U303 ( .B0(n471), .B1(n167), .A0N(Register_8__1_), .A1N(n167), 
        .Y(n251) );
  OAI2BB2X1M U304 ( .B0(n472), .B1(n167), .A0N(Register_8__2_), .A1N(n167), 
        .Y(n252) );
  OAI2BB2X1M U305 ( .B0(n473), .B1(n167), .A0N(Register_8__3_), .A1N(n167), 
        .Y(n253) );
  OAI2BB2X1M U306 ( .B0(n474), .B1(n167), .A0N(Register_8__4_), .A1N(n167), 
        .Y(n254) );
  OAI2BB2X1M U307 ( .B0(n475), .B1(n167), .A0N(Register_8__5_), .A1N(n167), 
        .Y(n255) );
  OAI2BB2X1M U308 ( .B0(n476), .B1(n167), .A0N(Register_8__6_), .A1N(n167), 
        .Y(n256) );
  OAI2BB2X1M U309 ( .B0(n477), .B1(n167), .A0N(Register_8__7_), .A1N(n167), 
        .Y(n257) );
  OAI2BB2X1M U310 ( .B0(n470), .B1(n169), .A0N(Register_9__0_), .A1N(n169), 
        .Y(n258) );
  OAI2BB2X1M U311 ( .B0(n471), .B1(n169), .A0N(Register_9__1_), .A1N(n169), 
        .Y(n259) );
  OAI2BB2X1M U312 ( .B0(n472), .B1(n169), .A0N(Register_9__2_), .A1N(n169), 
        .Y(n260) );
  OAI2BB2X1M U313 ( .B0(n473), .B1(n169), .A0N(Register_9__3_), .A1N(n169), 
        .Y(n261) );
  OAI2BB2X1M U314 ( .B0(n474), .B1(n169), .A0N(Register_9__4_), .A1N(n169), 
        .Y(n262) );
  OAI2BB2X1M U315 ( .B0(n475), .B1(n169), .A0N(Register_9__5_), .A1N(n169), 
        .Y(n263) );
  OAI2BB2X1M U316 ( .B0(n476), .B1(n169), .A0N(Register_9__6_), .A1N(n169), 
        .Y(n264) );
  OAI2BB2X1M U317 ( .B0(n477), .B1(n169), .A0N(Register_9__7_), .A1N(n169), 
        .Y(n265) );
  OAI2BB2X1M U318 ( .B0(n470), .B1(n171), .A0N(Register_10__0_), .A1N(n171), 
        .Y(n266) );
  OAI2BB2X1M U319 ( .B0(n471), .B1(n171), .A0N(Register_10__1_), .A1N(n171), 
        .Y(n267) );
  OAI2BB2X1M U320 ( .B0(n472), .B1(n171), .A0N(Register_10__2_), .A1N(n171), 
        .Y(n268) );
  OAI2BB2X1M U321 ( .B0(n473), .B1(n171), .A0N(Register_10__3_), .A1N(n171), 
        .Y(n269) );
  OAI2BB2X1M U322 ( .B0(n474), .B1(n171), .A0N(Register_10__4_), .A1N(n171), 
        .Y(n270) );
  OAI2BB2X1M U323 ( .B0(n475), .B1(n171), .A0N(Register_10__5_), .A1N(n171), 
        .Y(n271) );
  OAI2BB2X1M U324 ( .B0(n476), .B1(n171), .A0N(Register_10__6_), .A1N(n171), 
        .Y(n272) );
  OAI2BB2X1M U325 ( .B0(n477), .B1(n171), .A0N(Register_10__7_), .A1N(n171), 
        .Y(n273) );
  OAI2BB2X1M U326 ( .B0(n470), .B1(n172), .A0N(Register_11__0_), .A1N(n172), 
        .Y(n274) );
  OAI2BB2X1M U327 ( .B0(n471), .B1(n172), .A0N(Register_11__1_), .A1N(n172), 
        .Y(n275) );
  OAI2BB2X1M U328 ( .B0(n472), .B1(n172), .A0N(Register_11__2_), .A1N(n172), 
        .Y(n276) );
  OAI2BB2X1M U329 ( .B0(n473), .B1(n172), .A0N(Register_11__3_), .A1N(n172), 
        .Y(n277) );
  OAI2BB2X1M U330 ( .B0(n474), .B1(n172), .A0N(Register_11__4_), .A1N(n172), 
        .Y(n278) );
  OAI2BB2X1M U331 ( .B0(n475), .B1(n172), .A0N(Register_11__5_), .A1N(n172), 
        .Y(n279) );
  OAI2BB2X1M U332 ( .B0(n476), .B1(n172), .A0N(Register_11__6_), .A1N(n172), 
        .Y(n280) );
  OAI2BB2X1M U333 ( .B0(n477), .B1(n172), .A0N(Register_11__7_), .A1N(n172), 
        .Y(n281) );
  OAI2BB2X1M U334 ( .B0(n470), .B1(n173), .A0N(Register_12__0_), .A1N(n173), 
        .Y(n282) );
  OAI2BB2X1M U335 ( .B0(n471), .B1(n173), .A0N(Register_12__1_), .A1N(n173), 
        .Y(n283) );
  OAI2BB2X1M U336 ( .B0(n472), .B1(n173), .A0N(Register_12__2_), .A1N(n173), 
        .Y(n284) );
  OAI2BB2X1M U337 ( .B0(n473), .B1(n173), .A0N(Register_12__3_), .A1N(n173), 
        .Y(n285) );
  OAI2BB2X1M U338 ( .B0(n474), .B1(n173), .A0N(Register_12__4_), .A1N(n173), 
        .Y(n286) );
  OAI2BB2X1M U339 ( .B0(n475), .B1(n173), .A0N(Register_12__5_), .A1N(n173), 
        .Y(n287) );
  OAI2BB2X1M U340 ( .B0(n476), .B1(n173), .A0N(Register_12__6_), .A1N(n173), 
        .Y(n288) );
  OAI2BB2X1M U341 ( .B0(n477), .B1(n173), .A0N(Register_12__7_), .A1N(n173), 
        .Y(n289) );
  OAI2BB2X1M U342 ( .B0(n470), .B1(n174), .A0N(Register_13__0_), .A1N(n174), 
        .Y(n290) );
  OAI2BB2X1M U343 ( .B0(n471), .B1(n174), .A0N(Register_13__1_), .A1N(n174), 
        .Y(n291) );
  OAI2BB2X1M U344 ( .B0(n472), .B1(n174), .A0N(Register_13__2_), .A1N(n174), 
        .Y(n292) );
  OAI2BB2X1M U345 ( .B0(n473), .B1(n174), .A0N(Register_13__3_), .A1N(n174), 
        .Y(n293) );
  OAI2BB2X1M U346 ( .B0(n474), .B1(n174), .A0N(Register_13__4_), .A1N(n174), 
        .Y(n294) );
  OAI2BB2X1M U347 ( .B0(n475), .B1(n174), .A0N(Register_13__5_), .A1N(n174), 
        .Y(n295) );
  OAI2BB2X1M U348 ( .B0(n476), .B1(n174), .A0N(Register_13__6_), .A1N(n174), 
        .Y(n296) );
  OAI2BB2X1M U349 ( .B0(n477), .B1(n174), .A0N(Register_13__7_), .A1N(n174), 
        .Y(n297) );
  OAI2BB2X1M U350 ( .B0(n470), .B1(n175), .A0N(Register_14__0_), .A1N(n175), 
        .Y(n298) );
  OAI2BB2X1M U351 ( .B0(n471), .B1(n175), .A0N(Register_14__1_), .A1N(n175), 
        .Y(n299) );
  OAI2BB2X1M U352 ( .B0(n472), .B1(n175), .A0N(Register_14__2_), .A1N(n175), 
        .Y(n300) );
  OAI2BB2X1M U353 ( .B0(n473), .B1(n175), .A0N(Register_14__3_), .A1N(n175), 
        .Y(n301) );
  OAI2BB2X1M U354 ( .B0(n474), .B1(n175), .A0N(Register_14__4_), .A1N(n175), 
        .Y(n302) );
  OAI2BB2X1M U355 ( .B0(n475), .B1(n175), .A0N(Register_14__5_), .A1N(n175), 
        .Y(n303) );
  OAI2BB2X1M U356 ( .B0(n476), .B1(n175), .A0N(Register_14__6_), .A1N(n175), 
        .Y(n304) );
  OAI2BB2X1M U357 ( .B0(n477), .B1(n175), .A0N(Register_14__7_), .A1N(n175), 
        .Y(n305) );
  OAI2BB2X1M U358 ( .B0(n470), .B1(n177), .A0N(Register_15__0_), .A1N(n177), 
        .Y(n306) );
  OAI2BB2X1M U359 ( .B0(n471), .B1(n177), .A0N(Register_15__1_), .A1N(n177), 
        .Y(n307) );
  OAI2BB2X1M U360 ( .B0(n472), .B1(n177), .A0N(Register_15__2_), .A1N(n177), 
        .Y(n308) );
  OAI2BB2X1M U361 ( .B0(n473), .B1(n177), .A0N(Register_15__3_), .A1N(n177), 
        .Y(n309) );
  OAI2BB2X1M U362 ( .B0(n474), .B1(n177), .A0N(Register_15__4_), .A1N(n177), 
        .Y(n310) );
  OAI2BB2X1M U363 ( .B0(n475), .B1(n177), .A0N(Register_15__5_), .A1N(n177), 
        .Y(n311) );
  OAI2BB2X1M U364 ( .B0(n476), .B1(n177), .A0N(Register_15__6_), .A1N(n177), 
        .Y(n312) );
  OAI2BB2X1M U365 ( .B0(n477), .B1(n177), .A0N(Register_15__7_), .A1N(n177), 
        .Y(n313) );
  AO22X1M U366 ( .A0(RdData[0]), .A1(n149), .B0(N42), .B1(n150), .Y(n178) );
  MX4X1M U367 ( .A(n434), .B(n432), .C(n433), .D(n431), .S0(Address[3]), .S1(
        Address[2]), .Y(N42) );
  MX4X1M U368 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n466), 
        .S1(Address[1]), .Y(n434) );
  MX4X1M U369 ( .A(Register_8__0_), .B(Register_9__0_), .C(Register_10__0_), 
        .D(Register_11__0_), .S0(n466), .S1(Address[1]), .Y(n432) );
  AO22X1M U370 ( .A0(RdData[1]), .A1(n149), .B0(N41), .B1(n150), .Y(n179) );
  MX4X1M U371 ( .A(n438), .B(n436), .C(n437), .D(n435), .S0(Address[3]), .S1(
        Address[2]), .Y(N41) );
  MX4X1M U372 ( .A(Register_8__1_), .B(Register_9__1_), .C(Register_10__1_), 
        .D(Register_11__1_), .S0(n466), .S1(Address[1]), .Y(n436) );
  MX4X1M U373 ( .A(Register_12__1_), .B(Register_13__1_), .C(Register_14__1_), 
        .D(Register_15__1_), .S0(n466), .S1(n464), .Y(n435) );
  AO22X1M U374 ( .A0(RdData[2]), .A1(n149), .B0(N40), .B1(n150), .Y(n180) );
  MX4X1M U375 ( .A(n442), .B(n440), .C(n441), .D(n439), .S0(Address[3]), .S1(
        Address[2]), .Y(N40) );
  MX4X1M U376 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n467), 
        .S1(n464), .Y(n442) );
  MX4X1M U377 ( .A(Register_8__2_), .B(Register_9__2_), .C(Register_10__2_), 
        .D(Register_11__2_), .S0(n467), .S1(n464), .Y(n440) );
  AO22X1M U378 ( .A0(RdData[3]), .A1(n149), .B0(N39), .B1(n150), .Y(n181) );
  MX4X1M U379 ( .A(n446), .B(n444), .C(n445), .D(n443), .S0(Address[3]), .S1(
        Address[2]), .Y(N39) );
  MX4X1M U380 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n467), 
        .S1(n464), .Y(n446) );
  MX4X1M U381 ( .A(Register_8__3_), .B(Register_9__3_), .C(Register_10__3_), 
        .D(Register_11__3_), .S0(n467), .S1(n464), .Y(n444) );
  AO22X1M U382 ( .A0(RdData[4]), .A1(n149), .B0(N38), .B1(n150), .Y(n182) );
  MX4X1M U383 ( .A(n450), .B(n448), .C(n449), .D(n447), .S0(Address[3]), .S1(
        Address[2]), .Y(N38) );
  MX4X1M U384 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(
        Address[0]), .S1(n464), .Y(n450) );
  MX4X1M U385 ( .A(Register_8__4_), .B(Register_9__4_), .C(Register_10__4_), 
        .D(Register_11__4_), .S0(n467), .S1(n464), .Y(n448) );
  AO22X1M U386 ( .A0(RdData[5]), .A1(n149), .B0(N37), .B1(n150), .Y(n183) );
  MX4X1M U387 ( .A(n454), .B(n452), .C(n453), .D(n451), .S0(Address[3]), .S1(
        Address[2]), .Y(N37) );
  MX4X1M U388 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(
        Address[0]), .S1(Address[1]), .Y(n454) );
  MX4X1M U389 ( .A(Register_8__5_), .B(Register_9__5_), .C(Register_10__5_), 
        .D(Register_11__5_), .S0(n466), .S1(Address[1]), .Y(n452) );
  AO22X1M U390 ( .A0(RdData[6]), .A1(n149), .B0(N36), .B1(n150), .Y(n184) );
  MX4X1M U391 ( .A(n458), .B(n456), .C(n457), .D(n455), .S0(Address[3]), .S1(
        Address[2]), .Y(N36) );
  MX4X1M U392 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(
        Address[0]), .S1(Address[1]), .Y(n458) );
  MX4X1M U393 ( .A(Register_8__6_), .B(Register_9__6_), .C(Register_10__6_), 
        .D(Register_11__6_), .S0(n466), .S1(Address[1]), .Y(n456) );
  AO22X1M U394 ( .A0(RdData[7]), .A1(n149), .B0(N35), .B1(n150), .Y(n185) );
  MX4X1M U395 ( .A(n462), .B(n460), .C(n461), .D(n459), .S0(Address[3]), .S1(
        Address[2]), .Y(N35) );
  MX4X1M U396 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(
        Address[0]), .S1(Address[1]), .Y(n462) );
  MX4X1M U397 ( .A(Register_8__7_), .B(Register_9__7_), .C(Register_10__7_), 
        .D(Register_11__7_), .S0(Address[0]), .S1(Address[1]), .Y(n460) );
  MX4X1M U398 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n467), 
        .S1(Address[1]), .Y(n438) );
  MX4X1M U399 ( .A(Register_4__0_), .B(Register_5__0_), .C(Register_6__0_), 
        .D(Register_7__0_), .S0(n466), .S1(Address[1]), .Y(n433) );
  MX4X1M U400 ( .A(Register_4__1_), .B(Register_5__1_), .C(Register_6__1_), 
        .D(Register_7__1_), .S0(n467), .S1(Address[1]), .Y(n437) );
  MX4X1M U401 ( .A(Register_4__2_), .B(Register_5__2_), .C(Register_6__2_), 
        .D(Register_7__2_), .S0(n467), .S1(n464), .Y(n441) );
  MX4X1M U402 ( .A(Register_4__3_), .B(Register_5__3_), .C(Register_6__3_), 
        .D(Register_7__3_), .S0(n467), .S1(n464), .Y(n445) );
  MX4X1M U403 ( .A(Register_4__4_), .B(Register_5__4_), .C(Register_6__4_), 
        .D(Register_7__4_), .S0(n467), .S1(n464), .Y(n449) );
  MX4X1M U404 ( .A(Register_4__5_), .B(Register_5__5_), .C(Register_6__5_), 
        .D(Register_7__5_), .S0(n466), .S1(Address[1]), .Y(n453) );
  MX4X1M U405 ( .A(Register_4__6_), .B(Register_5__6_), .C(Register_6__6_), 
        .D(Register_7__6_), .S0(n466), .S1(Address[1]), .Y(n457) );
  MX4X1M U406 ( .A(Register_4__7_), .B(Register_5__7_), .C(Register_6__7_), 
        .D(Register_7__7_), .S0(n467), .S1(Address[1]), .Y(n461) );
  MX4X1M U407 ( .A(Register_12__0_), .B(Register_13__0_), .C(Register_14__0_), 
        .D(Register_15__0_), .S0(n466), .S1(Address[1]), .Y(n431) );
  MX4X1M U408 ( .A(Register_12__2_), .B(Register_13__2_), .C(Register_14__2_), 
        .D(Register_15__2_), .S0(n467), .S1(n464), .Y(n439) );
  MX4X1M U409 ( .A(Register_12__3_), .B(Register_13__3_), .C(Register_14__3_), 
        .D(Register_15__3_), .S0(n467), .S1(n464), .Y(n443) );
  MX4X1M U410 ( .A(Register_12__4_), .B(Register_13__4_), .C(Register_14__4_), 
        .D(Register_15__4_), .S0(n467), .S1(n464), .Y(n447) );
  MX4X1M U411 ( .A(Register_12__5_), .B(Register_13__5_), .C(Register_14__5_), 
        .D(Register_15__5_), .S0(n466), .S1(n464), .Y(n451) );
  MX4X1M U412 ( .A(Register_12__6_), .B(Register_13__6_), .C(Register_14__6_), 
        .D(Register_15__6_), .S0(n466), .S1(Address[1]), .Y(n455) );
  MX4X1M U413 ( .A(Register_12__7_), .B(Register_13__7_), .C(Register_14__7_), 
        .D(Register_15__7_), .S0(n466), .S1(Address[1]), .Y(n459) );
  INVX2M U414 ( .A(Address[0]), .Y(n468) );
  INVX2M U415 ( .A(Address[1]), .Y(n469) );
  OR2X2M U416 ( .A(n151), .B(n478), .Y(n149) );
  INVX2M U417 ( .A(RST), .Y(n478) );
  INVX2M U418 ( .A(WrData[0]), .Y(n470) );
  INVX2M U419 ( .A(WrData[1]), .Y(n471) );
  INVX2M U420 ( .A(WrData[2]), .Y(n472) );
  INVX2M U421 ( .A(WrData[3]), .Y(n473) );
  INVX2M U422 ( .A(WrData[4]), .Y(n474) );
  INVX2M U423 ( .A(WrData[5]), .Y(n475) );
  INVX2M U424 ( .A(WrData[6]), .Y(n476) );
  INVX2M U425 ( .A(WrData[7]), .Y(n477) );
  OAI2BB2X1M U426 ( .B0(n152), .B1(n470), .A0N(REG0[0]), .A1N(n152), .Y(n186)
         );
  OAI2BB2X1M U427 ( .B0(n152), .B1(n471), .A0N(REG0[1]), .A1N(n152), .Y(n187)
         );
  OAI2BB2X1M U428 ( .B0(n152), .B1(n472), .A0N(REG0[2]), .A1N(n152), .Y(n188)
         );
  OAI2BB2X1M U429 ( .B0(n152), .B1(n473), .A0N(REG0[3]), .A1N(n152), .Y(n189)
         );
  OAI2BB2X1M U430 ( .B0(n152), .B1(n474), .A0N(REG0[4]), .A1N(n152), .Y(n190)
         );
  OAI2BB2X1M U431 ( .B0(n152), .B1(n475), .A0N(REG0[5]), .A1N(n152), .Y(n191)
         );
  OAI2BB2X1M U432 ( .B0(n152), .B1(n476), .A0N(REG0[6]), .A1N(n152), .Y(n192)
         );
  OAI2BB2X1M U433 ( .B0(n470), .B1(n155), .A0N(REG1[0]), .A1N(n155), .Y(n194)
         );
  OAI2BB2X1M U434 ( .B0(n471), .B1(n155), .A0N(REG1[1]), .A1N(n155), .Y(n195)
         );
  OAI2BB2X1M U435 ( .B0(n472), .B1(n155), .A0N(REG1[2]), .A1N(n155), .Y(n196)
         );
  OAI2BB2X1M U436 ( .B0(n473), .B1(n155), .A0N(REG1[3]), .A1N(n155), .Y(n197)
         );
  OAI2BB2X1M U437 ( .B0(n474), .B1(n155), .A0N(REG1[4]), .A1N(n155), .Y(n198)
         );
  OAI2BB2X1M U438 ( .B0(n475), .B1(n155), .A0N(REG1[5]), .A1N(n155), .Y(n199)
         );
  OAI2BB2X1M U439 ( .B0(n470), .B1(n160), .A0N(Register_4__0_), .A1N(n160), 
        .Y(n218) );
  OAI2BB2X1M U440 ( .B0(n471), .B1(n160), .A0N(Register_4__1_), .A1N(n160), 
        .Y(n219) );
  OAI2BB2X1M U441 ( .B0(n472), .B1(n160), .A0N(Register_4__2_), .A1N(n160), 
        .Y(n220) );
  OAI2BB2X1M U442 ( .B0(n473), .B1(n160), .A0N(Register_4__3_), .A1N(n160), 
        .Y(n221) );
  OAI2BB2X1M U443 ( .B0(n474), .B1(n160), .A0N(Register_4__4_), .A1N(n160), 
        .Y(n222) );
  OAI2BB2X1M U444 ( .B0(n475), .B1(n160), .A0N(Register_4__5_), .A1N(n160), 
        .Y(n223) );
  OAI2BB2X1M U445 ( .B0(n476), .B1(n160), .A0N(Register_4__6_), .A1N(n160), 
        .Y(n224) );
  OAI2BB2X1M U446 ( .B0(n477), .B1(n160), .A0N(Register_4__7_), .A1N(n160), 
        .Y(n225) );
  OAI2BB2X1M U447 ( .B0(n470), .B1(n162), .A0N(Register_5__0_), .A1N(n162), 
        .Y(n226) );
  OAI2BB2X1M U448 ( .B0(n471), .B1(n162), .A0N(Register_5__1_), .A1N(n162), 
        .Y(n227) );
  OAI2BB2X1M U449 ( .B0(n472), .B1(n162), .A0N(Register_5__2_), .A1N(n162), 
        .Y(n228) );
  OAI2BB2X1M U450 ( .B0(n473), .B1(n162), .A0N(Register_5__3_), .A1N(n162), 
        .Y(n229) );
  OAI2BB2X1M U451 ( .B0(n474), .B1(n162), .A0N(Register_5__4_), .A1N(n162), 
        .Y(n230) );
  OAI2BB2X1M U452 ( .B0(n475), .B1(n162), .A0N(Register_5__5_), .A1N(n162), 
        .Y(n231) );
  OAI2BB2X1M U453 ( .B0(n476), .B1(n162), .A0N(Register_5__6_), .A1N(n162), 
        .Y(n232) );
  OAI2BB2X1M U454 ( .B0(n477), .B1(n162), .A0N(Register_5__7_), .A1N(n162), 
        .Y(n233) );
  OAI2BB2X1M U455 ( .B0(n470), .B1(n163), .A0N(Register_6__0_), .A1N(n163), 
        .Y(n234) );
  OAI2BB2X1M U456 ( .B0(n471), .B1(n163), .A0N(Register_6__1_), .A1N(n163), 
        .Y(n235) );
  OAI2BB2X1M U457 ( .B0(n472), .B1(n163), .A0N(Register_6__2_), .A1N(n163), 
        .Y(n236) );
  OAI2BB2X1M U458 ( .B0(n473), .B1(n163), .A0N(Register_6__3_), .A1N(n163), 
        .Y(n237) );
  OAI2BB2X1M U459 ( .B0(n474), .B1(n163), .A0N(Register_6__4_), .A1N(n163), 
        .Y(n238) );
  OAI2BB2X1M U460 ( .B0(n475), .B1(n163), .A0N(Register_6__5_), .A1N(n163), 
        .Y(n239) );
  OAI2BB2X1M U461 ( .B0(n476), .B1(n163), .A0N(Register_6__6_), .A1N(n163), 
        .Y(n240) );
  OAI2BB2X1M U462 ( .B0(n477), .B1(n163), .A0N(Register_6__7_), .A1N(n163), 
        .Y(n241) );
  OAI2BB2X1M U463 ( .B0(n470), .B1(n166), .A0N(Register_7__0_), .A1N(n166), 
        .Y(n242) );
  OAI2BB2X1M U464 ( .B0(n471), .B1(n166), .A0N(Register_7__1_), .A1N(n166), 
        .Y(n243) );
  OAI2BB2X1M U465 ( .B0(n472), .B1(n166), .A0N(Register_7__2_), .A1N(n166), 
        .Y(n244) );
  OAI2BB2X1M U466 ( .B0(n473), .B1(n166), .A0N(Register_7__3_), .A1N(n166), 
        .Y(n245) );
  OAI2BB2X1M U467 ( .B0(n474), .B1(n166), .A0N(Register_7__4_), .A1N(n166), 
        .Y(n246) );
  OAI2BB2X1M U468 ( .B0(n475), .B1(n166), .A0N(Register_7__5_), .A1N(n166), 
        .Y(n247) );
  OAI2BB2X1M U469 ( .B0(n476), .B1(n166), .A0N(Register_7__6_), .A1N(n166), 
        .Y(n248) );
  OAI2BB2X1M U470 ( .B0(n477), .B1(n166), .A0N(Register_7__7_), .A1N(n166), 
        .Y(n249) );
  OAI2BB2X1M U471 ( .B0(n471), .B1(n157), .A0N(REG2[1]), .A1N(n157), .Y(n203)
         );
  OAI2BB2X1M U472 ( .B0(n472), .B1(n157), .A0N(REG2[2]), .A1N(n157), .Y(n204)
         );
  OAI2BB2X1M U473 ( .B0(n473), .B1(n157), .A0N(REG2[3]), .A1N(n157), .Y(n205)
         );
  OAI2BB2X1M U474 ( .B0(n474), .B1(n157), .A0N(REG2[4]), .A1N(n157), .Y(n206)
         );
  OAI2BB2X1M U475 ( .B0(n475), .B1(n157), .A0N(REG2[5]), .A1N(n157), .Y(n207)
         );
  OAI2BB2X1M U476 ( .B0(n476), .B1(n157), .A0N(REG2[6]), .A1N(n157), .Y(n208)
         );
  OAI2BB2X1M U477 ( .B0(n470), .B1(n159), .A0N(REG3[0]), .A1N(n159), .Y(n210)
         );
  OAI2BB2X1M U478 ( .B0(n471), .B1(n159), .A0N(REG3[1]), .A1N(n159), .Y(n211)
         );
  OAI2BB2X1M U479 ( .B0(n472), .B1(n159), .A0N(REG3[2]), .A1N(n159), .Y(n212)
         );
  OAI2BB2X1M U480 ( .B0(n473), .B1(n159), .A0N(REG3[3]), .A1N(n159), .Y(n213)
         );
  OAI2BB2X1M U481 ( .B0(n474), .B1(n159), .A0N(REG3[4]), .A1N(n159), .Y(n214)
         );
  OAI2BB2X1M U482 ( .B0(n476), .B1(n159), .A0N(REG3[6]), .A1N(n159), .Y(n216)
         );
  OAI2BB2X1M U483 ( .B0(n477), .B1(n159), .A0N(REG3[7]), .A1N(n159), .Y(n217)
         );
  OAI2BB2X1M U484 ( .B0(n470), .B1(n157), .A0N(REG2[0]), .A1N(n157), .Y(n202)
         );
  OAI2BB2X1M U485 ( .B0(n477), .B1(n157), .A0N(REG2[7]), .A1N(n157), .Y(n209)
         );
  OAI2BB2X1M U486 ( .B0(n475), .B1(n159), .A0N(REG3[5]), .A1N(n159), .Y(n215)
         );
  OAI2BB2X1M U487 ( .B0(n152), .B1(n477), .A0N(REG0[7]), .A1N(n152), .Y(n193)
         );
  OAI2BB2X1M U488 ( .B0(n477), .B1(n155), .A0N(REG1[7]), .A1N(n155), .Y(n201)
         );
  OAI2BB2X1M U489 ( .B0(n476), .B1(n155), .A0N(REG1[6]), .A1N(n155), .Y(n200)
         );
  SDFFRQX1M Register_reg_1__7_ ( .D(n201), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(REG1[7]) );
  SDFFSQX1M Register_reg_3__5_ ( .D(n215), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .SN(RST), .Q(REG3[5]) );
  SDFFQX1M RdData_reg_6_ ( .D(n184), .SI(1'b0), .SE(1'b0), .CK(CLK), .Q(
        RdData[6]) );
  SDFFQX1M RdData_reg_5_ ( .D(n183), .SI(1'b0), .SE(1'b0), .CK(CLK), .Q(
        RdData[5]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [8:1] carry;

  ADDFX2M U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  INVXLM U1 ( .A(B[0]), .Y(n10) );
  INVX2M U2 ( .A(n10), .Y(n1) );
  INVXLM U3 ( .A(B[7]), .Y(n3) );
  INVXLM U4 ( .A(B[3]), .Y(n7) );
  INVXLM U5 ( .A(B[4]), .Y(n6) );
  INVXLM U6 ( .A(B[5]), .Y(n5) );
  INVXLM U7 ( .A(B[2]), .Y(n8) );
  NAND2X2M U8 ( .A(n1), .B(n2), .Y(carry[1]) );
  INVXLM U9 ( .A(B[1]), .Y(n9) );
  INVX2M U10 ( .A(A[0]), .Y(n2) );
  INVXLM U11 ( .A(B[6]), .Y(n4) );
  XNOR2X2M U12 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1M U13 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n2, n3;
  wire   [7:1] carry;

  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  CLKINVX16M U1 ( .A(A[0]), .Y(n2) );
  XNOR2X8M U2 ( .A(B[0]), .B(n2), .Y(SUM[0]) );
  CLKNAND2X16M U3 ( .A(B[0]), .B(A[0]), .Y(n3) );
  CLKINVX16M U4 ( .A(n3), .Y(carry[1]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n15) );
  AOI21BX2M U3 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  INVX2M U4 ( .A(n9), .Y(SUM[6]) );
  INVX2M U5 ( .A(A[6]), .Y(n9) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U7 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U8 ( .A(B[7]), .Y(n8) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
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


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   ab_7__7_, ab_7__6_, ab_7__5_, ab_7__4_, ab_7__3_, ab_7__2_, ab_7__1_,
         ab_7__0_, ab_6__7_, ab_6__6_, ab_6__5_, ab_6__4_, ab_6__3_, ab_6__2_,
         ab_6__1_, ab_6__0_, ab_5__7_, ab_5__6_, ab_5__5_, ab_5__4_, ab_5__3_,
         ab_5__2_, ab_5__1_, ab_5__0_, ab_4__7_, ab_4__6_, ab_4__5_, ab_4__4_,
         ab_4__3_, ab_4__2_, ab_4__1_, ab_4__0_, ab_3__7_, ab_3__6_, ab_3__5_,
         ab_3__4_, ab_3__3_, ab_3__2_, ab_3__1_, ab_3__0_, ab_2__7_, ab_2__6_,
         ab_2__5_, ab_2__4_, ab_2__3_, ab_2__2_, ab_2__1_, ab_2__0_, ab_1__7_,
         ab_1__6_, ab_1__5_, ab_1__4_, ab_1__3_, ab_1__2_, ab_1__1_, ab_1__0_,
         ab_0__7_, ab_0__6_, ab_0__5_, ab_0__4_, ab_0__3_, ab_0__2_, ab_0__1_,
         CARRYB_7__6_, CARRYB_7__5_, CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_,
         CARRYB_7__1_, CARRYB_7__0_, CARRYB_6__6_, CARRYB_6__5_, CARRYB_6__4_,
         CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_, CARRYB_6__0_, CARRYB_5__6_,
         CARRYB_5__5_, CARRYB_5__4_, CARRYB_5__3_, CARRYB_5__2_, CARRYB_5__1_,
         CARRYB_5__0_, CARRYB_4__6_, CARRYB_4__5_, CARRYB_4__4_, CARRYB_4__3_,
         CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_, CARRYB_3__6_, CARRYB_3__5_,
         CARRYB_3__4_, CARRYB_3__3_, CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_,
         CARRYB_2__6_, CARRYB_2__5_, CARRYB_2__4_, CARRYB_2__3_, CARRYB_2__2_,
         CARRYB_2__1_, CARRYB_2__0_, SUMB_7__6_, SUMB_7__5_, SUMB_7__4_,
         SUMB_7__3_, SUMB_7__2_, SUMB_7__1_, SUMB_7__0_, SUMB_6__6_,
         SUMB_6__5_, SUMB_6__4_, SUMB_6__3_, SUMB_6__2_, SUMB_6__1_,
         SUMB_5__6_, SUMB_5__5_, SUMB_5__4_, SUMB_5__3_, SUMB_5__2_,
         SUMB_5__1_, SUMB_4__6_, SUMB_4__5_, SUMB_4__4_, SUMB_4__3_,
         SUMB_4__2_, SUMB_4__1_, SUMB_3__6_, SUMB_3__5_, SUMB_3__4_,
         SUMB_3__3_, SUMB_3__2_, SUMB_3__1_, SUMB_2__6_, SUMB_2__5_,
         SUMB_2__4_, SUMB_2__3_, SUMB_2__2_, SUMB_2__1_, SUMB_1__6_,
         SUMB_1__5_, SUMB_1__4_, SUMB_1__3_, SUMB_1__2_, SUMB_1__1_, A1_12_,
         A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, A1_4_, A1_3_, A1_2_,
         A1_1_, A1_0_, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;

  ADDFX2M S3_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  ADDFX2M S5_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(
        CARRYB_7__6_), .S(SUMB_7__6_) );
  ADDFX2M S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(A1_4_) );
  ADDFX2M S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  ADDFX2M S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  ADDFX2M S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  ADDFX2M S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  ADDFX2M S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  ADDFX2M S1_5_0 ( .A(ab_5__0_), .B(CARRYB_4__0_), .CI(SUMB_4__1_), .CO(
        CARRYB_5__0_), .S(A1_3_) );
  ADDFX2M S1_4_0 ( .A(ab_4__0_), .B(CARRYB_3__0_), .CI(SUMB_3__1_), .CO(
        CARRYB_4__0_), .S(A1_2_) );
  ADDFX2M S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  ADDFX2M S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  ADDFX2M S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  ADDFX2M S1_3_0 ( .A(ab_3__0_), .B(CARRYB_2__0_), .CI(SUMB_2__1_), .CO(
        CARRYB_3__0_), .S(A1_1_) );
  ADDFX2M S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  ADDFX2M S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  ADDFX2M S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  ADDFX2M S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  ADDFX2M S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  ADDFX2M S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  ADDFX2M S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  ADDFX2M S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  ADDFX2M S1_2_0 ( .A(ab_2__0_), .B(n6), .CI(SUMB_1__1_), .CO(CARRYB_2__0_), 
        .S(A1_0_) );
  ADDFX2M S2_2_3 ( .A(ab_2__3_), .B(n8), .CI(SUMB_1__4_), .CO(CARRYB_2__3_), 
        .S(SUMB_2__3_) );
  ADDFX2M S2_2_2 ( .A(ab_2__2_), .B(n7), .CI(SUMB_1__3_), .CO(CARRYB_2__2_), 
        .S(SUMB_2__2_) );
  ADDFX2M S2_2_1 ( .A(ab_2__1_), .B(n5), .CI(SUMB_1__2_), .CO(CARRYB_2__1_), 
        .S(SUMB_2__1_) );
  ADDFX2M S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  ADDFX2M S3_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  ADDFX2M S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  ADDFX2M S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  ADDFX2M S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  ADDFX2M S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  ADDFX2M S3_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  ADDFX2M S2_2_4 ( .A(ab_2__4_), .B(n3), .CI(SUMB_1__5_), .CO(CARRYB_2__4_), 
        .S(SUMB_2__4_) );
  ADDFX2M S3_2_6 ( .A(ab_2__6_), .B(n9), .CI(ab_1__7_), .CO(CARRYB_2__6_), .S(
        SUMB_2__6_) );
  ADDFX2M S2_2_5 ( .A(ab_2__5_), .B(n4), .CI(SUMB_1__6_), .CO(CARRYB_2__5_), 
        .S(SUMB_2__5_) );
  ADDFX2M S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  ADDFX2M S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  ADDFX2M S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  ADDFX2M S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  ADDFX2M S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  ADDFX2M S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  INVXLM U2 ( .A(B[4]), .Y(n36) );
  AND2X2M U3 ( .A(ab_0__5_), .B(ab_1__4_), .Y(n3) );
  AND2X2M U4 ( .A(ab_0__6_), .B(ab_1__5_), .Y(n4) );
  AND2X2M U5 ( .A(ab_0__2_), .B(ab_1__1_), .Y(n5) );
  AND2X2M U6 ( .A(ab_0__1_), .B(ab_1__0_), .Y(n6) );
  AND2X2M U7 ( .A(ab_0__3_), .B(ab_1__2_), .Y(n7) );
  AND2X2M U8 ( .A(ab_0__4_), .B(ab_1__3_), .Y(n8) );
  AND2X2M U9 ( .A(ab_0__7_), .B(ab_1__6_), .Y(n9) );
  AND2X2M U10 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(n10) );
  INVXLM U11 ( .A(B[6]), .Y(n34) );
  INVXLM U12 ( .A(B[2]), .Y(n38) );
  INVXLM U13 ( .A(B[1]), .Y(n39) );
  INVXLM U14 ( .A(A[4]), .Y(n28) );
  INVXLM U15 ( .A(A[5]), .Y(n27) );
  INVXLM U16 ( .A(A[6]), .Y(n26) );
  CLKXOR2X2M U17 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(A1_8_) );
  CLKXOR2X2M U18 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(A1_9_) );
  CLKXOR2X2M U19 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(A1_7_) );
  AND2X2M U20 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(n11) );
  AND2X2M U21 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(n12) );
  AND2X2M U22 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(n13) );
  AND2X2M U23 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(n14) );
  XNOR2X2M U24 ( .A(CARRYB_7__0_), .B(n17), .Y(A1_6_) );
  INVX2M U25 ( .A(SUMB_7__1_), .Y(n17) );
  CLKXOR2X2M U26 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(A1_10_) );
  INVX2M U27 ( .A(ab_0__7_), .Y(n24) );
  INVX2M U28 ( .A(ab_0__4_), .Y(n21) );
  INVX2M U29 ( .A(ab_0__3_), .Y(n20) );
  INVX2M U30 ( .A(ab_0__2_), .Y(n19) );
  INVX2M U31 ( .A(ab_0__5_), .Y(n22) );
  INVX2M U32 ( .A(ab_0__6_), .Y(n23) );
  CLKXOR2X2M U33 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(A1_11_) );
  AND2X2M U34 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(n15) );
  AND2X2M U35 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(n16) );
  CLKXOR2X2M U36 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(A1_12_) );
  INVX2M U37 ( .A(ab_0__1_), .Y(n18) );
  XNOR2X2M U38 ( .A(ab_1__6_), .B(n24), .Y(SUMB_1__6_) );
  XNOR2X2M U39 ( .A(ab_1__5_), .B(n23), .Y(SUMB_1__5_) );
  XNOR2X2M U40 ( .A(ab_1__2_), .B(n20), .Y(SUMB_1__2_) );
  XNOR2X2M U41 ( .A(ab_1__3_), .B(n21), .Y(SUMB_1__3_) );
  XNOR2X2M U42 ( .A(ab_1__4_), .B(n22), .Y(SUMB_1__4_) );
  XNOR2X2M U43 ( .A(ab_1__1_), .B(n19), .Y(SUMB_1__1_) );
  INVX2M U44 ( .A(B[3]), .Y(n37) );
  XNOR2X2M U45 ( .A(ab_1__0_), .B(n18), .Y(PRODUCT[1]) );
  INVX2M U46 ( .A(A[0]), .Y(n32) );
  INVX2M U47 ( .A(A[1]), .Y(n31) );
  INVXLM U48 ( .A(B[5]), .Y(n35) );
  INVX2M U49 ( .A(A[2]), .Y(n30) );
  INVX2M U50 ( .A(A[3]), .Y(n29) );
  INVXLM U51 ( .A(A[7]), .Y(n25) );
  INVXLM U52 ( .A(B[0]), .Y(n40) );
  INVXLM U53 ( .A(B[7]), .Y(n33) );
  NOR2X1M U55 ( .A(n25), .B(n33), .Y(ab_7__7_) );
  NOR2X1M U56 ( .A(n25), .B(n34), .Y(ab_7__6_) );
  NOR2X1M U57 ( .A(n25), .B(n35), .Y(ab_7__5_) );
  NOR2X1M U58 ( .A(n25), .B(n36), .Y(ab_7__4_) );
  NOR2X1M U59 ( .A(n25), .B(n37), .Y(ab_7__3_) );
  NOR2X1M U60 ( .A(n25), .B(n38), .Y(ab_7__2_) );
  NOR2X1M U61 ( .A(n25), .B(n39), .Y(ab_7__1_) );
  NOR2X1M U62 ( .A(n25), .B(n40), .Y(ab_7__0_) );
  NOR2X1M U63 ( .A(n33), .B(n26), .Y(ab_6__7_) );
  NOR2X1M U64 ( .A(n34), .B(n26), .Y(ab_6__6_) );
  NOR2X1M U65 ( .A(n35), .B(n26), .Y(ab_6__5_) );
  NOR2X1M U66 ( .A(n36), .B(n26), .Y(ab_6__4_) );
  NOR2X1M U67 ( .A(n37), .B(n26), .Y(ab_6__3_) );
  NOR2X1M U68 ( .A(n38), .B(n26), .Y(ab_6__2_) );
  NOR2X1M U69 ( .A(n39), .B(n26), .Y(ab_6__1_) );
  NOR2X1M U70 ( .A(n40), .B(n26), .Y(ab_6__0_) );
  NOR2X1M U71 ( .A(n33), .B(n27), .Y(ab_5__7_) );
  NOR2X1M U72 ( .A(n34), .B(n27), .Y(ab_5__6_) );
  NOR2X1M U73 ( .A(n35), .B(n27), .Y(ab_5__5_) );
  NOR2X1M U74 ( .A(n36), .B(n27), .Y(ab_5__4_) );
  NOR2X1M U75 ( .A(n37), .B(n27), .Y(ab_5__3_) );
  NOR2X1M U76 ( .A(n38), .B(n27), .Y(ab_5__2_) );
  NOR2X1M U77 ( .A(n39), .B(n27), .Y(ab_5__1_) );
  NOR2X1M U78 ( .A(n40), .B(n27), .Y(ab_5__0_) );
  NOR2X1M U79 ( .A(n33), .B(n28), .Y(ab_4__7_) );
  NOR2X1M U80 ( .A(n34), .B(n28), .Y(ab_4__6_) );
  NOR2X1M U81 ( .A(n35), .B(n28), .Y(ab_4__5_) );
  NOR2X1M U82 ( .A(n36), .B(n28), .Y(ab_4__4_) );
  NOR2X1M U83 ( .A(n37), .B(n28), .Y(ab_4__3_) );
  NOR2X1M U84 ( .A(n38), .B(n28), .Y(ab_4__2_) );
  NOR2X1M U85 ( .A(n39), .B(n28), .Y(ab_4__1_) );
  NOR2X1M U86 ( .A(n40), .B(n28), .Y(ab_4__0_) );
  NOR2X1M U87 ( .A(n33), .B(n29), .Y(ab_3__7_) );
  NOR2X1M U88 ( .A(n34), .B(n29), .Y(ab_3__6_) );
  NOR2X1M U89 ( .A(n35), .B(n29), .Y(ab_3__5_) );
  NOR2X1M U90 ( .A(n36), .B(n29), .Y(ab_3__4_) );
  NOR2X1M U91 ( .A(n37), .B(n29), .Y(ab_3__3_) );
  NOR2X1M U92 ( .A(n38), .B(n29), .Y(ab_3__2_) );
  NOR2X1M U93 ( .A(n39), .B(n29), .Y(ab_3__1_) );
  NOR2X1M U94 ( .A(n40), .B(n29), .Y(ab_3__0_) );
  NOR2X1M U95 ( .A(n33), .B(n30), .Y(ab_2__7_) );
  NOR2X1M U96 ( .A(n34), .B(n30), .Y(ab_2__6_) );
  NOR2X1M U97 ( .A(n35), .B(n30), .Y(ab_2__5_) );
  NOR2X1M U98 ( .A(n36), .B(n30), .Y(ab_2__4_) );
  NOR2X1M U99 ( .A(n37), .B(n30), .Y(ab_2__3_) );
  NOR2X1M U100 ( .A(n38), .B(n30), .Y(ab_2__2_) );
  NOR2X1M U101 ( .A(n39), .B(n30), .Y(ab_2__1_) );
  NOR2X1M U102 ( .A(n40), .B(n30), .Y(ab_2__0_) );
  NOR2X1M U103 ( .A(n33), .B(n31), .Y(ab_1__7_) );
  NOR2X1M U104 ( .A(n34), .B(n31), .Y(ab_1__6_) );
  NOR2X1M U105 ( .A(n35), .B(n31), .Y(ab_1__5_) );
  NOR2X1M U106 ( .A(n36), .B(n31), .Y(ab_1__4_) );
  NOR2X1M U107 ( .A(n37), .B(n31), .Y(ab_1__3_) );
  NOR2X1M U108 ( .A(n38), .B(n31), .Y(ab_1__2_) );
  NOR2X1M U109 ( .A(n39), .B(n31), .Y(ab_1__1_) );
  NOR2X1M U110 ( .A(n40), .B(n31), .Y(ab_1__0_) );
  NOR2X1M U111 ( .A(n33), .B(n32), .Y(ab_0__7_) );
  NOR2X1M U112 ( .A(n34), .B(n32), .Y(ab_0__6_) );
  NOR2X1M U113 ( .A(n35), .B(n32), .Y(ab_0__5_) );
  NOR2X1M U114 ( .A(n36), .B(n32), .Y(ab_0__4_) );
  NOR2X1M U115 ( .A(n37), .B(n32), .Y(ab_0__3_) );
  NOR2X1M U116 ( .A(n38), .B(n32), .Y(ab_0__2_) );
  NOR2X1M U117 ( .A(n39), .B(n32), .Y(ab_0__1_) );
  NOR2X1M U118 ( .A(n40), .B(n32), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, 
        A1_6_, SUMB_7__0_, A1_4_, A1_3_, A1_2_, A1_1_, A1_0_}), .B({n10, n15, 
        n16, n13, n14, n12, n11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_DW_div_uns_1 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n74, u_div_SumTmp_1__0_, u_div_SumTmp_1__1_, u_div_SumTmp_1__2_,
         u_div_SumTmp_1__3_, u_div_SumTmp_1__4_, u_div_SumTmp_1__5_,
         u_div_SumTmp_1__6_, u_div_SumTmp_2__0_, u_div_SumTmp_2__1_,
         u_div_SumTmp_2__2_, u_div_SumTmp_2__3_, u_div_SumTmp_2__4_,
         u_div_SumTmp_2__5_, u_div_SumTmp_3__0_, u_div_SumTmp_3__1_,
         u_div_SumTmp_3__2_, u_div_SumTmp_3__3_, u_div_SumTmp_3__4_,
         u_div_SumTmp_4__1_, u_div_SumTmp_4__2_, u_div_SumTmp_4__3_,
         u_div_SumTmp_5__1_, u_div_SumTmp_5__2_, u_div_SumTmp_6__0_,
         u_div_SumTmp_6__1_, u_div_CryTmp_0__1_, u_div_CryTmp_0__2_,
         u_div_CryTmp_0__3_, u_div_CryTmp_0__4_, u_div_CryTmp_0__5_,
         u_div_CryTmp_0__6_, u_div_CryTmp_0__7_, u_div_CryTmp_1__1_,
         u_div_CryTmp_1__2_, u_div_CryTmp_1__3_, u_div_CryTmp_1__4_,
         u_div_CryTmp_1__5_, u_div_CryTmp_1__6_, u_div_CryTmp_1__7_,
         u_div_CryTmp_2__1_, u_div_CryTmp_2__2_, u_div_CryTmp_2__3_,
         u_div_CryTmp_2__4_, u_div_CryTmp_2__5_, u_div_CryTmp_2__6_,
         u_div_CryTmp_3__1_, u_div_CryTmp_3__2_, u_div_CryTmp_3__3_,
         u_div_CryTmp_3__4_, u_div_CryTmp_3__5_, u_div_CryTmp_4__1_,
         u_div_CryTmp_4__2_, u_div_CryTmp_4__3_, u_div_CryTmp_4__4_,
         u_div_CryTmp_5__1_, u_div_CryTmp_5__2_, u_div_CryTmp_5__3_,
         u_div_CryTmp_6__1_, u_div_CryTmp_6__2_, u_div_CryTmp_7__1_,
         u_div_PartRem_1__1_, u_div_PartRem_1__2_, u_div_PartRem_1__3_,
         u_div_PartRem_1__4_, u_div_PartRem_1__5_, u_div_PartRem_1__6_,
         u_div_PartRem_1__7_, u_div_PartRem_2__1_, u_div_PartRem_2__2_,
         u_div_PartRem_2__3_, u_div_PartRem_2__4_, u_div_PartRem_2__5_,
         u_div_PartRem_2__6_, u_div_PartRem_4__1_, u_div_PartRem_5__1_,
         u_div_PartRem_6__1_, u_div_PartRem_6__2_, n1, n2, n3, n5, n6, n7, n8,
         n9, n10, n11, n12, n15, n16, n17, n18, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [7:0] u_div_BInv;

  ADDFHX8M u_div_u_fa_PartRem_0_5_1 ( .A(u_div_PartRem_6__1_), .B(
        u_div_BInv[1]), .CI(u_div_CryTmp_5__1_), .CO(u_div_CryTmp_5__2_), .S(
        u_div_SumTmp_5__1_) );
  ADDFHX8M u_div_u_fa_PartRem_0_4_1 ( .A(u_div_PartRem_5__1_), .B(
        u_div_BInv[1]), .CI(u_div_CryTmp_4__1_), .CO(u_div_CryTmp_4__2_), .S(
        u_div_SumTmp_4__1_) );
  ADDFHX4M u_div_u_fa_PartRem_0_2_4 ( .A(n10), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_2__4_), .CO(u_div_CryTmp_2__5_), .S(u_div_SumTmp_2__4_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_2_5 ( .A(n11), .B(u_div_BInv[5]), .CI(
        u_div_CryTmp_2__5_), .CO(u_div_CryTmp_2__6_), .S(u_div_SumTmp_2__5_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_0_1 ( .A(u_div_PartRem_1__1_), .B(
        u_div_BInv[1]), .CI(u_div_CryTmp_0__1_), .CO(u_div_CryTmp_0__2_) );
  ADDFHX4M u_div_u_fa_PartRem_0_2_3 ( .A(n17), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_2__3_), .CO(u_div_CryTmp_2__4_), .S(u_div_SumTmp_2__3_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_4_3 ( .A(n15), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_4__3_), .CO(u_div_CryTmp_4__4_), .S(u_div_SumTmp_4__3_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_4_2 ( .A(n20), .B(u_div_BInv[2]), .CI(
        u_div_CryTmp_4__2_), .CO(u_div_CryTmp_4__3_), .S(u_div_SumTmp_4__2_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_5_2 ( .A(u_div_PartRem_6__2_), .B(
        u_div_BInv[2]), .CI(u_div_CryTmp_5__2_), .CO(u_div_CryTmp_5__3_), .S(
        u_div_SumTmp_5__2_) );
  ADDFHX1M u_div_u_fa_PartRem_0_0_7 ( .A(u_div_PartRem_1__7_), .B(
        u_div_BInv[7]), .CI(u_div_CryTmp_0__7_), .CO(quotient[0]) );
  ADDFHX4M u_div_u_fa_PartRem_0_2_1 ( .A(n24), .B(u_div_BInv[1]), .CI(
        u_div_CryTmp_2__1_), .CO(u_div_CryTmp_2__2_), .S(u_div_SumTmp_2__1_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_2_2 ( .A(n21), .B(u_div_BInv[2]), .CI(
        u_div_CryTmp_2__2_), .CO(u_div_CryTmp_2__3_), .S(u_div_SumTmp_2__2_)
         );
  ADDFHX4M u_div_u_fa_PartRem_0_1_4 ( .A(u_div_PartRem_2__4_), .B(
        u_div_BInv[4]), .CI(u_div_CryTmp_1__4_), .CO(u_div_CryTmp_1__5_), .S(
        u_div_SumTmp_1__4_) );
  ADDFHX4M u_div_u_fa_PartRem_0_1_5 ( .A(u_div_PartRem_2__5_), .B(
        u_div_BInv[5]), .CI(u_div_CryTmp_1__5_), .CO(u_div_CryTmp_1__6_), .S(
        u_div_SumTmp_1__5_) );
  ADDFHX4M u_div_u_fa_PartRem_0_1_2 ( .A(u_div_BInv[2]), .B(
        u_div_PartRem_2__2_), .CI(u_div_CryTmp_1__2_), .CO(u_div_CryTmp_1__3_), 
        .S(u_div_SumTmp_1__2_) );
  ADDFHX4M u_div_u_fa_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(
        u_div_BInv[3]), .CI(u_div_CryTmp_1__3_), .CO(u_div_CryTmp_1__4_), .S(
        u_div_SumTmp_1__3_) );
  ADDFHX4M u_div_u_fa_PartRem_0_0_5 ( .A(u_div_PartRem_1__5_), .B(
        u_div_BInv[5]), .CI(u_div_CryTmp_0__5_), .CO(u_div_CryTmp_0__6_) );
  ADDFHX4M u_div_u_fa_PartRem_0_0_6 ( .A(u_div_PartRem_1__6_), .B(
        u_div_BInv[6]), .CI(u_div_CryTmp_0__6_), .CO(u_div_CryTmp_0__7_) );
  ADDFHX4M u_div_u_fa_PartRem_0_0_3 ( .A(u_div_PartRem_1__3_), .B(
        u_div_BInv[3]), .CI(u_div_CryTmp_0__3_), .CO(u_div_CryTmp_0__4_) );
  ADDFHX4M u_div_u_fa_PartRem_0_0_4 ( .A(u_div_PartRem_1__4_), .B(
        u_div_BInv[4]), .CI(u_div_CryTmp_0__4_), .CO(u_div_CryTmp_0__5_) );
  ADDFHX4M u_div_u_fa_PartRem_0_0_2 ( .A(u_div_PartRem_1__2_), .B(
        u_div_BInv[2]), .CI(u_div_CryTmp_0__2_), .CO(u_div_CryTmp_0__3_) );
  ADDFHX8M u_div_u_fa_PartRem_0_6_1 ( .A(u_div_BInv[1]), .B(u_div_CryTmp_6__1_), .CI(n27), .CO(u_div_CryTmp_6__2_), .S(u_div_SumTmp_6__1_) );
  ADDFHX4M u_div_u_fa_PartRem_0_1_6 ( .A(u_div_PartRem_2__6_), .B(
        u_div_BInv[6]), .CI(u_div_CryTmp_1__6_), .CO(u_div_CryTmp_1__7_), .S(
        u_div_SumTmp_1__6_) );
  ADDFHX2M u_div_u_fa_PartRem_0_1_1 ( .A(u_div_CryTmp_1__1_), .B(u_div_BInv[1]), .CI(u_div_PartRem_2__1_), .CO(u_div_CryTmp_1__2_), .S(u_div_SumTmp_1__1_) );
  ADDFHX4M u_div_u_fa_PartRem_0_3_1 ( .A(u_div_PartRem_4__1_), .B(
        u_div_BInv[1]), .CI(u_div_CryTmp_3__1_), .CO(u_div_CryTmp_3__2_), .S(
        u_div_SumTmp_3__1_) );
  ADDFHX4M u_div_u_fa_PartRem_0_3_4 ( .A(n12), .B(u_div_BInv[4]), .CI(
        u_div_CryTmp_3__4_), .CO(u_div_CryTmp_3__5_), .S(u_div_SumTmp_3__4_)
         );
  ADDFHX2M u_div_u_fa_PartRem_0_3_3 ( .A(n7), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_3__3_), .CO(u_div_CryTmp_3__4_), .S(u_div_SumTmp_3__3_)
         );
  ADDFHX2M u_div_u_fa_PartRem_0_3_2 ( .A(n1), .B(u_div_BInv[2]), .CI(
        u_div_CryTmp_3__2_), .CO(u_div_CryTmp_3__3_), .S(u_div_SumTmp_3__2_)
         );
  NAND2X2M U1 ( .A(n5), .B(u_div_BInv[2]), .Y(n49) );
  INVX16M U2 ( .A(b[2]), .Y(u_div_BInv[2]) );
  NAND2BXLM U3 ( .AN(b[7]), .B(u_div_CryTmp_1__7_), .Y(n73) );
  NOR2XLM U4 ( .A(n56), .B(b[3]), .Y(n5) );
  NOR2X8M U5 ( .A(n56), .B(b[3]), .Y(n6) );
  CLKMX2X2M U6 ( .A(u_div_PartRem_6__1_), .B(u_div_SumTmp_5__1_), .S0(
        quotient[5]), .Y(n20) );
  INVX4M U7 ( .A(n40), .Y(u_div_PartRem_2__2_) );
  INVX3M U8 ( .A(n41), .Y(u_div_PartRem_2__1_) );
  MXI2X6M U9 ( .A(a[2]), .B(u_div_SumTmp_2__0_), .S0(n62), .Y(n41) );
  INVX8M U10 ( .A(n68), .Y(quotient[7]) );
  INVX8M U11 ( .A(b[0]), .Y(u_div_BInv[0]) );
  MXI2X4M U12 ( .A(n24), .B(u_div_SumTmp_2__1_), .S0(n74), .Y(n40) );
  MXI2X8M U13 ( .A(n25), .B(n26), .S0(n9), .Y(n24) );
  CLKINVX1M U14 ( .A(b[4]), .Y(u_div_BInv[4]) );
  MXI2X2M U15 ( .A(n27), .B(u_div_SumTmp_6__1_), .S0(quotient[6]), .Y(n43) );
  XOR2X1M U16 ( .A(u_div_BInv[0]), .B(a[7]), .Y(n28) );
  NOR2X5M U17 ( .A(n59), .B(n60), .Y(n9) );
  NOR2X4M U18 ( .A(n64), .B(n63), .Y(n62) );
  INVX2M U19 ( .A(n49), .Y(n48) );
  INVX2M U20 ( .A(a[3]), .Y(n25) );
  INVX2M U21 ( .A(u_div_SumTmp_3__0_), .Y(n26) );
  MXI2X1M U22 ( .A(n22), .B(n23), .S0(quotient[3]), .Y(n21) );
  BUFX2M U23 ( .A(n18), .Y(n7) );
  INVX2M U24 ( .A(b[3]), .Y(u_div_BInv[3]) );
  INVX8M U25 ( .A(b[1]), .Y(u_div_BInv[1]) );
  CLKINVX6M U26 ( .A(u_div_CryTmp_3__5_), .Y(n60) );
  INVX2M U27 ( .A(n73), .Y(quotient[1]) );
  MXI2X6M U28 ( .A(n65), .B(n66), .S0(n67), .Y(u_div_PartRem_1__1_) );
  CLKINVX6M U29 ( .A(n43), .Y(u_div_PartRem_6__2_) );
  MXI2X1M U30 ( .A(n41), .B(n61), .S0(quotient[1]), .Y(u_div_PartRem_1__2_) );
  INVX2M U31 ( .A(a[7]), .Y(n35) );
  MX2X2M U32 ( .A(n31), .B(u_div_SumTmp_4__1_), .S0(quotient[4]), .Y(n1) );
  CLKXOR2X2M U33 ( .A(u_div_BInv[0]), .B(a[5]), .Y(n2) );
  NAND2X8M U34 ( .A(n70), .B(n71), .Y(n56) );
  CLKXOR2X2M U35 ( .A(n34), .B(a[4]), .Y(n3) );
  INVX2M U36 ( .A(b[5]), .Y(u_div_BInv[5]) );
  INVX2M U37 ( .A(n8), .Y(quotient[2]) );
  INVX3M U38 ( .A(n72), .Y(n74) );
  CLKINVX8M U39 ( .A(u_div_CryTmp_5__3_), .Y(n52) );
  NOR2X4M U40 ( .A(n57), .B(n56), .Y(n55) );
  NOR2X12M U41 ( .A(n52), .B(n33), .Y(quotient[5]) );
  AND3X6M U42 ( .A(u_div_CryTmp_7__1_), .B(u_div_BInv[2]), .C(u_div_BInv[1]), 
        .Y(n69) );
  INVXLM U43 ( .A(b[6]), .Y(u_div_BInv[6]) );
  NOR2BX4M U44 ( .AN(u_div_CryTmp_1__7_), .B(b[7]), .Y(n67) );
  NAND2X8M U45 ( .A(u_div_CryTmp_6__2_), .B(n48), .Y(n47) );
  MXI2X8M U46 ( .A(n46), .B(n45), .S0(n47), .Y(u_div_PartRem_6__1_) );
  CLKINVX4M U47 ( .A(u_div_CryTmp_4__4_), .Y(n57) );
  INVX12M U48 ( .A(n63), .Y(n71) );
  MXI2X6M U49 ( .A(n35), .B(n28), .S0(quotient[7]), .Y(n27) );
  MXI2X1M U50 ( .A(n21), .B(u_div_SumTmp_2__2_), .S0(n74), .Y(n39) );
  MX2XLM U51 ( .A(n20), .B(u_div_SumTmp_4__2_), .S0(quotient[4]), .Y(n18) );
  MXI2X6M U52 ( .A(n54), .B(n3), .S0(n55), .Y(u_div_PartRem_4__1_) );
  NOR2BX4M U53 ( .AN(u_div_CryTmp_6__2_), .B(n49), .Y(quotient[6]) );
  INVXLM U54 ( .A(n74), .Y(n8) );
  INVX2M U55 ( .A(u_div_SumTmp_3__1_), .Y(n23) );
  NAND2X4M U56 ( .A(n69), .B(n6), .Y(n68) );
  CLKINVX4M U57 ( .A(u_div_SumTmp_6__0_), .Y(n46) );
  MX2XLM U58 ( .A(n1), .B(u_div_SumTmp_3__2_), .S0(quotient[3]), .Y(n17) );
  INVXLM U59 ( .A(n39), .Y(u_div_PartRem_2__3_) );
  MXI2XLM U60 ( .A(n39), .B(n53), .S0(quotient[1]), .Y(u_div_PartRem_1__4_) );
  MXI2XLM U61 ( .A(n43), .B(n16), .S0(quotient[5]), .Y(n15) );
  INVX2M U62 ( .A(u_div_SumTmp_5__2_), .Y(n16) );
  OR2X2M U63 ( .A(n34), .B(a[4]), .Y(u_div_CryTmp_4__1_) );
  NOR2BX4M U64 ( .AN(u_div_CryTmp_4__4_), .B(n56), .Y(quotient[4]) );
  MX2XLM U65 ( .A(n7), .B(u_div_SumTmp_3__3_), .S0(quotient[3]), .Y(n10) );
  CLKINVX2M U66 ( .A(u_div_SumTmp_1__3_), .Y(n53) );
  MXI2XLM U67 ( .A(n37), .B(n44), .S0(quotient[1]), .Y(u_div_PartRem_1__6_) );
  CLKINVX2M U68 ( .A(u_div_SumTmp_1__1_), .Y(n61) );
  INVXLM U69 ( .A(u_div_PartRem_4__1_), .Y(n22) );
  MXI2X1M U70 ( .A(n10), .B(u_div_SumTmp_2__4_), .S0(quotient[2]), .Y(n37) );
  MXI2X1M U71 ( .A(n17), .B(u_div_SumTmp_2__3_), .S0(quotient[2]), .Y(n38) );
  MX2X1M U72 ( .A(n12), .B(u_div_SumTmp_3__4_), .S0(quotient[3]), .Y(n11) );
  NAND2BX2M U73 ( .AN(n64), .B(n71), .Y(n72) );
  MX2X2M U74 ( .A(n15), .B(u_div_SumTmp_4__3_), .S0(quotient[4]), .Y(n12) );
  INVX2M U75 ( .A(u_div_SumTmp_1__6_), .Y(n42) );
  BUFX2M U76 ( .A(u_div_BInv[0]), .Y(n34) );
  INVX2M U77 ( .A(u_div_SumTmp_1__5_), .Y(n44) );
  INVX2M U78 ( .A(n36), .Y(u_div_PartRem_2__6_) );
  INVX2M U79 ( .A(n38), .Y(u_div_PartRem_2__4_) );
  CLKINVX6M U80 ( .A(u_div_CryTmp_2__6_), .Y(n64) );
  MXI2XLM U81 ( .A(n36), .B(n42), .S0(quotient[1]), .Y(u_div_PartRem_1__7_) );
  INVX2M U82 ( .A(n37), .Y(u_div_PartRem_2__5_) );
  MXI2XLM U83 ( .A(n40), .B(n58), .S0(quotient[1]), .Y(u_div_PartRem_1__3_) );
  INVX2M U84 ( .A(u_div_SumTmp_1__2_), .Y(n58) );
  MXI2XLM U85 ( .A(n38), .B(n50), .S0(quotient[1]), .Y(u_div_PartRem_1__5_) );
  INVX2M U86 ( .A(u_div_SumTmp_1__4_), .Y(n50) );
  NAND2X2M U87 ( .A(b[0]), .B(n35), .Y(u_div_CryTmp_7__1_) );
  NAND2XLM U88 ( .A(n71), .B(u_div_BInv[5]), .Y(n59) );
  INVX2M U89 ( .A(u_div_SumTmp_1__0_), .Y(n66) );
  INVX2M U90 ( .A(a[5]), .Y(n51) );
  INVX2M U91 ( .A(a[4]), .Y(n54) );
  NAND2X2M U92 ( .A(b[0]), .B(n29), .Y(u_div_CryTmp_0__1_) );
  INVX2M U93 ( .A(a[0]), .Y(n29) );
  OR2X1M U94 ( .A(u_div_BInv[0]), .B(a[5]), .Y(u_div_CryTmp_5__1_) );
  INVX2M U95 ( .A(a[1]), .Y(n65) );
  NOR2X12M U96 ( .A(b[5]), .B(b[4]), .Y(n70) );
  MXI2X6M U97 ( .A(n51), .B(n2), .S0(quotient[5]), .Y(u_div_PartRem_5__1_) );
  INVXLM U98 ( .A(u_div_PartRem_5__1_), .Y(n30) );
  INVX2M U99 ( .A(n30), .Y(n31) );
  MXI2X1M U100 ( .A(n11), .B(u_div_SumTmp_2__5_), .S0(quotient[2]), .Y(n36) );
  NOR2X4M U101 ( .A(n60), .B(n59), .Y(quotient[3]) );
  INVXLM U102 ( .A(n5), .Y(n33) );
  INVX16M U103 ( .A(b[7]), .Y(u_div_BInv[7]) );
  CLKINVX16M U104 ( .A(a[6]), .Y(n45) );
  NAND2BX12M U105 ( .AN(b[6]), .B(u_div_BInv[7]), .Y(n63) );
  CLKNAND2X16M U106 ( .A(n75), .B(n76), .Y(u_div_CryTmp_6__1_) );
  XNOR2X8M U107 ( .A(u_div_BInv[0]), .B(a[6]), .Y(u_div_SumTmp_6__0_) );
  CLKINVX16M U108 ( .A(u_div_BInv[0]), .Y(n75) );
  CLKINVX16M U109 ( .A(a[6]), .Y(n76) );
  CLKNAND2X16M U110 ( .A(n77), .B(n78), .Y(u_div_CryTmp_1__1_) );
  XNOR2X8M U111 ( .A(n34), .B(a[1]), .Y(u_div_SumTmp_1__0_) );
  CLKINVX16M U112 ( .A(n34), .Y(n77) );
  CLKINVX16M U113 ( .A(a[1]), .Y(n78) );
  CLKNAND2X16M U114 ( .A(n79), .B(n80), .Y(u_div_CryTmp_3__1_) );
  XNOR2X8M U115 ( .A(n34), .B(a[3]), .Y(u_div_SumTmp_3__0_) );
  CLKINVX16M U116 ( .A(n34), .Y(n79) );
  CLKINVX16M U117 ( .A(a[3]), .Y(n80) );
  CLKNAND2X16M U118 ( .A(n81), .B(n82), .Y(u_div_CryTmp_2__1_) );
  XNOR2X8M U119 ( .A(n34), .B(a[2]), .Y(u_div_SumTmp_2__0_) );
  CLKINVX16M U120 ( .A(n34), .Y(n81) );
  CLKINVX16M U121 ( .A(a[2]), .Y(n82) );
endmodule


module ALU ( CLK, RST, A, B, ALU_OUT, ALU_FUNC, Enable, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  output [15:0] ALU_OUT;
  input [3:0] ALU_FUNC;
  input CLK, RST, Enable;
  output OUT_VALID;
  wire   N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98,
         N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, VALID_REG_0_, N169, n31, n33, n37, n38,
         n51, n113, n114, n117, n118, n121, n122, n123, n124, n125, n126, n127,
         n128, n133, n135, n137, n139, n141, n143, n145, n147, n149, n3, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n32, n34, n35, n36, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n115, n116, n119, n120, n129, n151, n153,
         n155, n157, n159, n161, n163, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8;
  wire   [7:0] ALU_OP_1;
  wire   [7:0] ALU_OP_2;
  wire   [15:0] ALU_OUT_REG;

  SDFFRHQX1M ALU_OUT_REG_reg_0_ ( .D(n133), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[0]) );
  SDFFRHQX4M ALU_OP_2_reg_7_ ( .D(B[7]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_2[7]) );
  SDFFRHQX2M ALU_OP_2_reg_6_ ( .D(B[6]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_2[6]) );
  SDFFRHQX4M ALU_OP_2_reg_1_ ( .D(B[1]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_2[1]) );
  SDFFRX1M VALID_REG_reg_1_ ( .D(VALID_REG_0_), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID), .QN(n245) );
  SDFFRHQX2M ALU_OP_2_reg_5_ ( .D(B[5]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_2[5]) );
  SDFFRQX2M ALU_OP_1_reg_0_ ( .D(A[0]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_1[0]) );
  SDFFRHQX2M ALU_OP_1_reg_7_ ( .D(A[7]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_1[7]) );
  SDFFRHQX4M ALU_OP_1_reg_6_ ( .D(A[6]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_1[6]) );
  SDFFRQX2M ALU_OUT_REG_reg_15_ ( .D(n231), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[15]) );
  SDFFRQX2M ALU_OUT_REG_reg_14_ ( .D(n232), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[14]) );
  SDFFRQX2M ALU_OUT_REG_reg_13_ ( .D(n233), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[13]) );
  SDFFRQX2M ALU_OUT_REG_reg_12_ ( .D(n234), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[12]) );
  SDFFRQX2M ALU_OUT_REG_reg_11_ ( .D(n235), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[11]) );
  SDFFRQX2M ALU_OUT_REG_reg_10_ ( .D(n236), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[10]) );
  SDFFRQX2M ALU_OUT_REG_reg_9_ ( .D(n237), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[9]) );
  SDFFRQX2M ALU_OUT_REG_reg_8_ ( .D(n149), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[8]) );
  SDFFRQX2M ALU_OUT_REG_reg_6_ ( .D(n145), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[6]) );
  SDFFRQX2M ALU_OUT_REG_reg_5_ ( .D(n143), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[5]) );
  SDFFRQX2M ALU_OUT_REG_reg_4_ ( .D(n141), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[4]) );
  SDFFRQX2M ALU_OUT_REG_reg_3_ ( .D(n139), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[3]) );
  SDFFRQX2M ALU_OUT_REG_reg_2_ ( .D(n137), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[2]) );
  SDFFRQX2M ALU_OUT_REG_reg_1_ ( .D(n135), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[1]) );
  SDFFRQX2M VALID_REG_reg_0_ ( .D(N169), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(VALID_REG_0_) );
  SDFFRHQX1M ALU_OP_2_reg_0_ ( .D(B[0]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_2[0]) );
  SDFFRQX2M ALU_OUT_REG_reg_7_ ( .D(n147), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[7]) );
  SDFFRQX2M ALU_OP_1_reg_2_ ( .D(A[2]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_1[2]) );
  SDFFRQX2M ALU_OP_1_reg_1_ ( .D(A[1]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_1[1]) );
  SDFFRQX2M ALU_OP_1_reg_3_ ( .D(A[3]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_1[3]) );
  SDFFRQX2M ALU_OP_1_reg_4_ ( .D(A[4]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_1[4]) );
  SDFFRHQX2M ALU_OP_2_reg_4_ ( .D(B[4]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_2[4]) );
  BUFX14M U3 ( .A(ALU_OP_2[7]), .Y(n25) );
  BUFX4M U4 ( .A(ALU_OP_2[4]), .Y(n28) );
  MX2XLM U7 ( .A(n205), .B(n222), .S0(n28), .Y(n65) );
  MXI2XLM U8 ( .A(n99), .B(n215), .S0(n28), .Y(n10) );
  MXI2XLM U9 ( .A(n215), .B(n101), .S0(n28), .Y(n12) );
  CLKBUFX12M U10 ( .A(ALU_OP_2[0]), .Y(n24) );
  AO22XLM U11 ( .A0(n27), .A1(n110), .B0(n28), .B1(n109), .Y(n189) );
  BUFX4M U12 ( .A(ALU_OP_2[3]), .Y(n27) );
  NOR2X2M U13 ( .A(ALU_OP_1[5]), .B(n180), .Y(n3) );
  CLKINVX1M U15 ( .A(ALU_OP_2[1]), .Y(n5) );
  BUFX8M U16 ( .A(ALU_OP_2[6]), .Y(n23) );
  OR2X1M U17 ( .A(ALU_OP_2[1]), .B(n51), .Y(n220) );
  MX2XLM U18 ( .A(n217), .B(n216), .S0(ALU_OP_2[1]), .Y(n218) );
  BUFX6M U19 ( .A(ALU_OP_2[2]), .Y(n26) );
  INVXLM U20 ( .A(n26), .Y(n47) );
  MX2X1M U21 ( .A(n211), .B(n210), .S0(n29), .Y(n212) );
  NAND2BXLM U22 ( .AN(n206), .B(ALU_OP_1[5]), .Y(n62) );
  OA22XLM U23 ( .A0(n24), .A1(n119), .B0(ALU_OP_2[1]), .B1(n116), .Y(n153) );
  MX2XLM U24 ( .A(n217), .B(n216), .S0(n23), .Y(n83) );
  MX2XLM U25 ( .A(n85), .B(n84), .S0(ALU_OP_1[6]), .Y(n88) );
  MX2XLM U26 ( .A(n61), .B(n60), .S0(ALU_OP_1[4]), .Y(n68) );
  MX2XLM U27 ( .A(n70), .B(n69), .S0(ALU_OP_1[5]), .Y(n76) );
  AOI222XLM U28 ( .A0(ALU_OP_1[5]), .A1(n180), .B0(n163), .B1(n161), .C0(
        ALU_OP_1[4]), .C1(n159), .Y(n181) );
  INVXLM U29 ( .A(ALU_OP_1[4]), .Y(n109) );
  OR2X1M U30 ( .A(ALU_OP_1[6]), .B(n86), .Y(n115) );
  INVXLM U31 ( .A(ALU_OP_1[6]), .Y(n182) );
  INVX2M U32 ( .A(n194), .Y(n209) );
  INVX2M U33 ( .A(n192), .Y(n207) );
  INVX2M U34 ( .A(n51), .Y(n99) );
  INVX2M U35 ( .A(Enable), .Y(n30) );
  INVX2M U36 ( .A(n216), .Y(n101) );
  NAND2X2M U37 ( .A(n128), .B(n51), .Y(n118) );
  NAND2X2M U38 ( .A(n31), .B(Enable), .Y(n51) );
  OAI21BX1M U39 ( .A0(n229), .A1(n113), .B0N(n38), .Y(n31) );
  OR2X2M U40 ( .A(n34), .B(n35), .Y(n194) );
  OR2X2M U41 ( .A(n197), .B(n35), .Y(n192) );
  OR2X2M U42 ( .A(n30), .B(n229), .Y(n197) );
  INVX2M U43 ( .A(n222), .Y(n105) );
  INVX2M U44 ( .A(n205), .Y(n106) );
  INVX2M U45 ( .A(n217), .Y(n215) );
  NAND2X2M U46 ( .A(N93), .B(n209), .Y(n97) );
  INVX2M U47 ( .A(n206), .Y(n208) );
  OAI21BX1M U48 ( .A0(n37), .A1(n38), .B0N(n30), .Y(n216) );
  INVX2M U49 ( .A(n34), .Y(n36) );
  INVX2M U50 ( .A(n196), .Y(n39) );
  MX2X2M U51 ( .A(n41), .B(n40), .S0(n29), .Y(n42) );
  AOI221XLM U52 ( .A0(N87), .A1(n209), .B0(N105), .B1(n207), .C0(n15), .Y(n41)
         );
  AOI221XLM U53 ( .A0(N90), .A1(n209), .B0(N108), .B1(n207), .C0(n17), .Y(n72)
         );
  MX2X2M U54 ( .A(n80), .B(n79), .S0(n29), .Y(n81) );
  AOI221XLM U55 ( .A0(N100), .A1(n209), .B0(N125), .B1(n207), .C0(n78), .Y(n79) );
  AOI221XLM U56 ( .A0(N91), .A1(n209), .B0(N109), .B1(n207), .C0(n77), .Y(n80)
         );
  INVX2M U57 ( .A(n96), .Y(n77) );
  AOI221XLM U58 ( .A0(N98), .A1(n209), .B0(N123), .B1(n207), .C0(n15), .Y(n63)
         );
  OR3X2M U59 ( .A(n95), .B(n6), .C(n7), .Y(n147) );
  MXI2X1M U60 ( .A(n93), .B(n92), .S0(n29), .Y(n6) );
  OAI21X2M U61 ( .A0(Enable), .A1(n239), .B0(n94), .Y(n7) );
  OAI221X1M U62 ( .A0(n194), .A1(n193), .B0(n192), .B1(n191), .C0(n190), .Y(
        n195) );
  INVX2M U63 ( .A(N103), .Y(n191) );
  INVX2M U64 ( .A(N85), .Y(n193) );
  NAND4BX1M U65 ( .AN(n189), .B(n188), .C(n187), .D(n186), .Y(n190) );
  NAND3BX2M U66 ( .AN(n30), .B(n29), .C(n37), .Y(n222) );
  NAND3BX2M U67 ( .AN(n228), .B(ALU_FUNC[3]), .C(n36), .Y(n206) );
  MXI2X1M U68 ( .A(n215), .B(n101), .S0(n24), .Y(n102) );
  AOI221XLM U69 ( .A0(N89), .A1(n209), .B0(N107), .B1(n207), .C0(n78), .Y(n64)
         );
  NAND3BX2M U70 ( .AN(n29), .B(n36), .C(n32), .Y(n217) );
  INVX2M U71 ( .A(n33), .Y(n32) );
  NOR3X2M U72 ( .A(n230), .B(ALU_FUNC[1]), .C(n33), .Y(n38) );
  MXI2X1M U73 ( .A(n106), .B(n105), .S0(n24), .Y(n107) );
  NAND2X2M U74 ( .A(ALU_FUNC[3]), .B(n228), .Y(n33) );
  NOR2X2M U75 ( .A(n113), .B(ALU_FUNC[1]), .Y(n37) );
  NAND2X2M U76 ( .A(ALU_FUNC[2]), .B(n227), .Y(n113) );
  INVX2M U77 ( .A(ALU_FUNC[3]), .Y(n227) );
  INVX2M U78 ( .A(ALU_FUNC[1]), .Y(n229) );
  OR2X2M U79 ( .A(n206), .B(n116), .Y(n196) );
  OR2X2M U80 ( .A(ALU_FUNC[1]), .B(n30), .Y(n34) );
  AOI221XLM U81 ( .A0(N88), .A1(n209), .B0(N106), .B1(n207), .C0(n8), .Y(n55)
         );
  AND2X2M U82 ( .A(n44), .B(n222), .Y(n45) );
  MX2X2M U83 ( .A(n217), .B(n216), .S0(n26), .Y(n44) );
  MX2X2M U84 ( .A(n205), .B(n222), .S0(n27), .Y(n56) );
  INVX2M U85 ( .A(ALU_FUNC[2]), .Y(n228) );
  INVX2M U86 ( .A(n29), .Y(n230) );
  NOR2X2M U87 ( .A(n206), .B(n109), .Y(n8) );
  MX2XLM U88 ( .A(n205), .B(n222), .S0(n25), .Y(n94) );
  OR2X2M U89 ( .A(ALU_FUNC[2]), .B(ALU_FUNC[3]), .Y(n35) );
  OR3X2M U90 ( .A(n29), .B(n197), .C(n113), .Y(n205) );
  AND2X2M U91 ( .A(n218), .B(n222), .Y(n219) );
  AND2X2M U92 ( .A(n83), .B(n222), .Y(n84) );
  INVX2M U93 ( .A(n112), .Y(n129) );
  OR2X2M U94 ( .A(n26), .B(n51), .Y(n46) );
  NAND2BX2M U95 ( .AN(n106), .B(n9), .Y(n53) );
  MXI2X1M U96 ( .A(n99), .B(n215), .S0(n27), .Y(n9) );
  NAND2BX2M U97 ( .AN(n106), .B(n10), .Y(n61) );
  NAND2BX2M U98 ( .AN(n105), .B(n11), .Y(n52) );
  MXI2X1M U99 ( .A(n215), .B(n101), .S0(n27), .Y(n11) );
  NAND2BX2M U100 ( .AN(n105), .B(n12), .Y(n60) );
  NAND2BX2M U101 ( .AN(n106), .B(n13), .Y(n91) );
  MXI2XLM U102 ( .A(n99), .B(n215), .S0(n25), .Y(n13) );
  NAND2BX2M U103 ( .AN(n105), .B(n14), .Y(n90) );
  MXI2XLM U104 ( .A(n215), .B(n101), .S0(n25), .Y(n14) );
  NOR2X2M U105 ( .A(n206), .B(n110), .Y(n15) );
  NOR2X2M U106 ( .A(n206), .B(n120), .Y(n16) );
  NOR2X2M U107 ( .A(n206), .B(n182), .Y(n17) );
  NAND2BXLM U108 ( .AN(ALU_OP_1[7]), .B(n25), .Y(n183) );
  NOR4X1M U109 ( .A(n229), .B(n30), .C(n29), .D(ALU_FUNC[3]), .Y(n114) );
  NOR2BX2M U110 ( .AN(n29), .B(n197), .Y(n200) );
  INVX2M U111 ( .A(n115), .Y(n184) );
  INVX2M U112 ( .A(n27), .Y(n157) );
  AND2X2M U113 ( .A(n112), .B(n18), .Y(n187) );
  AND2X2M U114 ( .A(n115), .B(n214), .Y(n18) );
  NAND3BX2M U115 ( .AN(n225), .B(n224), .C(n223), .Y(n135) );
  OA22X2M U116 ( .A0(n5), .A1(n222), .B0(Enable), .B1(n221), .Y(n223) );
  MX2X2M U117 ( .A(n220), .B(n219), .S0(ALU_OP_1[1]), .Y(n224) );
  OAI2B11X2M U118 ( .A1N(n215), .A0(n214), .B0(n213), .C0(n212), .Y(n225) );
  AOI32X1M U119 ( .A0(n29), .A1(n209), .A2(N94), .B0(n200), .B1(n199), .Y(n202) );
  OAI2B1X2M U120 ( .A1N(n196), .A0(n195), .B0(n230), .Y(n203) );
  AOI221XLM U121 ( .A0(N86), .A1(n209), .B0(N104), .B1(n207), .C0(n16), .Y(
        n211) );
  AOI222XLM U122 ( .A0(N95), .A1(n209), .B0(ALU_OP_1[0]), .B1(n208), .C0(N120), 
        .C1(n207), .Y(n210) );
  NAND3BX2M U123 ( .AN(n50), .B(n49), .C(n48), .Y(n137) );
  OA22X2M U124 ( .A0(n222), .A1(n47), .B0(Enable), .B1(n244), .Y(n48) );
  MX2X2M U125 ( .A(n46), .B(n45), .S0(ALU_OP_1[2]), .Y(n49) );
  OAI2B11X2M U126 ( .A1N(n129), .A0(n217), .B0(n43), .C0(n42), .Y(n50) );
  INVX2M U127 ( .A(n124), .Y(n234) );
  AOI221XLM U128 ( .A0(N115), .A1(n114), .B0(ALU_OUT_REG[12]), .B1(n30), .C0(
        n118), .Y(n124) );
  INVX2M U129 ( .A(n125), .Y(n233) );
  AOI221XLM U130 ( .A0(N116), .A1(n114), .B0(ALU_OUT_REG[13]), .B1(n30), .C0(
        n118), .Y(n125) );
  INVX2M U131 ( .A(n126), .Y(n232) );
  AOI221XLM U132 ( .A0(N117), .A1(n114), .B0(ALU_OUT_REG[14]), .B1(n30), .C0(
        n118), .Y(n126) );
  INVX2M U133 ( .A(n127), .Y(n231) );
  AOI221XLM U134 ( .A0(N118), .A1(n114), .B0(ALU_OUT_REG[15]), .B1(n30), .C0(
        n118), .Y(n127) );
  NAND3BX2M U135 ( .AN(n59), .B(n58), .C(n57), .Y(n139) );
  OA21X2M U136 ( .A0(Enable), .A1(n243), .B0(n56), .Y(n57) );
  MX2X2M U137 ( .A(n53), .B(n52), .S0(ALU_OP_1[3]), .Y(n59) );
  MX2X2M U138 ( .A(n55), .B(n54), .S0(n29), .Y(n58) );
  INVX2M U139 ( .A(n121), .Y(n237) );
  AOI221XLM U140 ( .A0(N112), .A1(n114), .B0(ALU_OUT_REG[9]), .B1(n30), .C0(
        n118), .Y(n121) );
  INVX2M U141 ( .A(n123), .Y(n235) );
  AOI221XLM U142 ( .A0(N114), .A1(n114), .B0(ALU_OUT_REG[11]), .B1(n30), .C0(
        n118), .Y(n123) );
  INVX2M U143 ( .A(n122), .Y(n236) );
  AOI221XLM U144 ( .A0(N113), .A1(n114), .B0(ALU_OUT_REG[10]), .B1(n30), .C0(
        n118), .Y(n122) );
  OAI2B11X2M U145 ( .A1N(n114), .A0(n238), .B0(n117), .C0(n98), .Y(n149) );
  AOI21X2M U146 ( .A0(ALU_OUT_REG[8]), .A1(n30), .B0(n118), .Y(n117) );
  MX2X2M U147 ( .A(n97), .B(n96), .S0(n29), .Y(n98) );
  INVX2M U148 ( .A(N111), .Y(n238) );
  NAND3BX2M U149 ( .AN(n68), .B(n67), .C(n66), .Y(n141) );
  OA21X2M U150 ( .A0(Enable), .A1(n242), .B0(n65), .Y(n66) );
  MX2X2M U151 ( .A(n64), .B(n63), .S0(n29), .Y(n67) );
  NAND3BX2M U152 ( .AN(n76), .B(n75), .C(n74), .Y(n143) );
  OA21X2M U153 ( .A0(Enable), .A1(n241), .B0(n73), .Y(n74) );
  MX2X2M U154 ( .A(n72), .B(n71), .S0(n29), .Y(n75) );
  NAND3BX2M U155 ( .AN(n89), .B(n88), .C(n87), .Y(n145) );
  OA22X2M U156 ( .A0(n222), .A1(n86), .B0(Enable), .B1(n240), .Y(n87) );
  OAI2B11X2M U157 ( .A1N(n184), .A0(n217), .B0(n82), .C0(n81), .Y(n89) );
  OAI32XLM U158 ( .A0(n153), .A1(n151), .A2(n129), .B0(n26), .B1(n120), .Y(
        n155) );
  INVX2M U159 ( .A(n214), .Y(n151) );
  INVX2M U194 ( .A(ALU_OP_1[0]), .Y(n119) );
  INVXLM U195 ( .A(n28), .Y(n159) );
  INVX2M U196 ( .A(n189), .Y(n163) );
  AO21XLM U197 ( .A0(ALU_OP_1[3]), .A1(n157), .B0(n155), .Y(n161) );
  OR2X2M U198 ( .A(ALU_OP_1[1]), .B(n5), .Y(n214) );
  MXI2X1M U199 ( .A(n104), .B(n103), .S0(ALU_OP_1[0]), .Y(n108) );
  NAND2BX2M U200 ( .AN(n106), .B(n100), .Y(n104) );
  NAND2BX2M U201 ( .AN(n105), .B(n102), .Y(n103) );
  MXI2XLM U202 ( .A(n99), .B(n215), .S0(n24), .Y(n100) );
  OR2X2M U203 ( .A(ALU_OP_1[2]), .B(n47), .Y(n112) );
  BUFX2M U204 ( .A(ALU_FUNC[0]), .Y(n29) );
  INVX2M U205 ( .A(ALU_OP_1[2]), .Y(n120) );
  INVX2M U206 ( .A(ALU_OP_1[1]), .Y(n116) );
  MX2XLM U207 ( .A(n205), .B(n222), .S0(ALU_OP_2[5]), .Y(n73) );
  INVX2M U208 ( .A(ALU_OP_1[3]), .Y(n110) );
  AO21XLM U209 ( .A0(ALU_OP_2[1]), .A1(ALU_OP_1[1]), .B0(n205), .Y(n213) );
  AO21XLM U210 ( .A0(n26), .A1(ALU_OP_1[2]), .B0(n205), .Y(n43) );
  NAND2BX2M U211 ( .AN(n106), .B(n19), .Y(n70) );
  MXI2XLM U212 ( .A(n99), .B(n215), .S0(ALU_OP_2[5]), .Y(n19) );
  NAND2BX2M U213 ( .AN(n105), .B(n20), .Y(n69) );
  MXI2XLM U214 ( .A(n215), .B(n101), .S0(ALU_OP_2[5]), .Y(n20) );
  INVX2M U215 ( .A(n62), .Y(n78) );
  INVX2M U216 ( .A(n183), .Y(n111) );
  INVXLM U217 ( .A(ALU_OP_2[5]), .Y(n180) );
  NOR2X2M U218 ( .A(VALID_REG_0_), .B(n30), .Y(N169) );
  AND2X2M U219 ( .A(ALU_OUT_REG[1]), .B(OUT_VALID), .Y(ALU_OUT[1]) );
  NOR2X2M U220 ( .A(n244), .B(n245), .Y(ALU_OUT[2]) );
  NOR2X2M U221 ( .A(n243), .B(n245), .Y(ALU_OUT[3]) );
  NOR2X2M U222 ( .A(n242), .B(n245), .Y(ALU_OUT[4]) );
  NOR2X2M U223 ( .A(n241), .B(n245), .Y(ALU_OUT[5]) );
  NOR2X2M U224 ( .A(n240), .B(n245), .Y(ALU_OUT[6]) );
  NOR2X2M U225 ( .A(n239), .B(n245), .Y(ALU_OUT[7]) );
  NOR2BX2M U226 ( .AN(ALU_OUT_REG[8]), .B(n245), .Y(ALU_OUT[8]) );
  NOR2BX2M U227 ( .AN(ALU_OUT_REG[9]), .B(n245), .Y(ALU_OUT[9]) );
  NOR2BX2M U228 ( .AN(ALU_OUT_REG[10]), .B(n245), .Y(ALU_OUT[10]) );
  NOR2BX2M U229 ( .AN(ALU_OUT_REG[11]), .B(n245), .Y(ALU_OUT[11]) );
  NOR2BX2M U230 ( .AN(ALU_OUT_REG[12]), .B(n245), .Y(ALU_OUT[12]) );
  NOR2BX2M U231 ( .AN(ALU_OUT_REG[13]), .B(n245), .Y(ALU_OUT[13]) );
  NOR2BX2M U232 ( .AN(ALU_OUT_REG[14]), .B(n245), .Y(ALU_OUT[14]) );
  NOR2BX2M U233 ( .AN(ALU_OUT_REG[15]), .B(n245), .Y(ALU_OUT[15]) );
  INVX2M U234 ( .A(ALU_OUT_REG[7]), .Y(n239) );
  INVX2M U235 ( .A(ALU_OUT_REG[2]), .Y(n244) );
  INVX2M U236 ( .A(ALU_OUT_REG[6]), .Y(n240) );
  INVX2M U237 ( .A(ALU_OUT_REG[3]), .Y(n243) );
  INVX2M U238 ( .A(ALU_OUT_REG[4]), .Y(n242) );
  INVX2M U239 ( .A(ALU_OUT_REG[5]), .Y(n241) );
  INVX2M U240 ( .A(ALU_OUT_REG[1]), .Y(n221) );
  OAI2B11X2M U241 ( .A1N(ALU_OUT_REG[0]), .A0(Enable), .B0(n108), .C0(n107), 
        .Y(n204) );
  AND2X2M U242 ( .A(ALU_OUT_REG[0]), .B(OUT_VALID), .Y(ALU_OUT[0]) );
  INVXLM U244 ( .A(ALU_OP_1[7]), .Y(n22) );
  INVX2M U245 ( .A(n23), .Y(n86) );
  OR2X2M U246 ( .A(n206), .B(n22), .Y(n96) );
  AOI22X1M U247 ( .A0(N110), .A1(n207), .B0(N92), .B1(n209), .Y(n93) );
  NOR2BX2M U248 ( .AN(n198), .B(n33), .Y(n199) );
  NOR3X2M U249 ( .A(n197), .B(n198), .C(n33), .Y(n186) );
  NAND3BX2M U250 ( .AN(n230), .B(N102), .C(n209), .Y(n128) );
  MX2XLM U251 ( .A(n91), .B(n90), .S0(ALU_OP_1[7]), .Y(n95) );
  AOI221XLM U252 ( .A0(N101), .A1(n209), .B0(N126), .B1(n207), .C0(n17), .Y(
        n92) );
  AOI221XLM U253 ( .A0(N99), .A1(n209), .B0(N124), .B1(n207), .C0(n8), .Y(n71)
         );
  OR2X2M U254 ( .A(n23), .B(n51), .Y(n85) );
  AO21XLM U255 ( .A0(ALU_OP_1[6]), .A1(n23), .B0(n205), .Y(n82) );
  AOI221XLM U256 ( .A0(N96), .A1(n209), .B0(N121), .B1(n207), .C0(n39), .Y(n40) );
  OA22XLM U257 ( .A0(n23), .A1(n182), .B0(n3), .B1(n181), .Y(n185) );
  AOI211XLM U258 ( .A0(n119), .A1(n24), .B0(n111), .C0(n3), .Y(n188) );
  OAI32XLM U259 ( .A0(n185), .A1(n184), .A2(n111), .B0(n25), .B1(n22), .Y(n198) );
  AOI221XLM U260 ( .A0(N97), .A1(n209), .B0(N122), .B1(n207), .C0(n16), .Y(n54) );
  NAND4BX2M U261 ( .AN(n204), .B(n203), .C(n202), .D(n201), .Y(n133) );
  NAND3X1M U262 ( .A(n29), .B(N119), .C(n207), .Y(n201) );
  ALU_DW01_sub_0 sub_38 ( .A({1'b0, ALU_OP_1}), .B({1'b0, n25, n23, 
        ALU_OP_2[5], n28, n27, n26, ALU_OP_2[1], n24}), .CI(1'b0), .DIFF({N102, 
        N101, N100, N99, N98, N97, N96, N95, N94}) );
  ALU_DW01_add_0 add_37 ( .A({1'b0, ALU_OP_1}), .B({1'b0, n25, n23, 
        ALU_OP_2[5], n28, n27, n26, ALU_OP_2[1], n24}), .CI(1'b0), .SUM({N93, 
        N92, N91, N90, N89, N88, N87, N86, N85}) );
  ALU_DW02_mult_0 mult_39 ( .A(ALU_OP_1), .B({n25, n23, ALU_OP_2[5], n28, n27, 
        n26, ALU_OP_2[1], n24}), .TC(1'b0), .PRODUCT({N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103}) );
  ALU_DW_div_uns_1 div_40 ( .a(ALU_OP_1), .b({n25, n23, ALU_OP_2[5], n28, n27, 
        n26, ALU_OP_2[1], n24}), .quotient({N126, N125, N124, N123, N122, N121, 
        N120, N119}), .remainder({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}) );
  SDFFRQX1M ALU_OP_2_reg_3_ ( .D(B[3]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_2[3]) );
  SDFFRHQX1M ALU_OP_2_reg_2_ ( .D(B[2]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_2[2]) );
  SDFFRQX1M ALU_OP_1_reg_5_ ( .D(A[5]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(ALU_OP_1[5]) );
endmodule


module serializer_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module serializer ( clk, rst, parallel_in, ser_en, data_valid, serial_out, 
        ser_done );
  input [7:0] parallel_in;
  input clk, rst, ser_en, data_valid;
  output serial_out, ser_done;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n18;
  wire   [7:0] Counter;
  wire   [7:0] data_reg;
  tri   clk;
  tri   rst;
  tri   [7:0] parallel_in;

  SDFFRQX2M data_reg_reg_6_ ( .D(n34), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), .Q(data_reg[6]) );
  SDFFRQX2M data_reg_reg_5_ ( .D(n35), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), .Q(data_reg[5]) );
  SDFFRQX2M data_reg_reg_4_ ( .D(n36), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), .Q(data_reg[4]) );
  SDFFRQX2M data_reg_reg_3_ ( .D(n37), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), .Q(data_reg[3]) );
  SDFFRQX2M data_reg_reg_2_ ( .D(n38), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), .Q(data_reg[2]) );
  SDFFRQX2M data_reg_reg_1_ ( .D(n39), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), .Q(data_reg[1]) );
  SDFFRQX2M data_reg_reg_0_ ( .D(n40), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), .Q(data_reg[0]) );
  SDFFRQX2M data_reg_reg_7_ ( .D(n33), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), .Q(data_reg[7]) );
  SDFFRQX2M serial_out_reg ( .D(n32), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(serial_out) );
  SDFFRQX2M Counter_reg_7_ ( .D(n47), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(Counter[7]) );
  SDFFRQX2M Counter_reg_3_ ( .D(n44), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(Counter[3]) );
  SDFFRQX2M Counter_reg_0_ ( .D(n48), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(Counter[0]) );
  SDFFRQX2M Counter_reg_1_ ( .D(n46), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(Counter[1]) );
  SDFFRQX2M Counter_reg_2_ ( .D(n45), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(Counter[2]) );
  SDFFRQX2M Counter_reg_6_ ( .D(n41), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(Counter[6]) );
  SDFFRQX2M Counter_reg_4_ ( .D(n43), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(Counter[4]) );
  SDFFRQX2M Counter_reg_5_ ( .D(n42), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(Counter[5]) );
  AND2X2M U20 ( .A(ser_en), .B(n29), .Y(n18) );
  NOR2X2M U21 ( .A(n21), .B(n18), .Y(n20) );
  NOR2BX2M U22 ( .AN(data_valid), .B(ser_en), .Y(n21) );
  NAND4BX1M U23 ( .AN(Counter[0]), .B(Counter[3]), .C(n30), .D(n31), .Y(n29)
         );
  NOR2X2M U24 ( .A(Counter[2]), .B(Counter[1]), .Y(n30) );
  NOR4X1M U25 ( .A(Counter[7]), .B(Counter[6]), .C(Counter[5]), .D(Counter[4]), 
        .Y(n31) );
  OAI2BB1X2M U26 ( .A0N(data_reg[0]), .A1N(n20), .B0(n28), .Y(n40) );
  AOI22X1M U27 ( .A0(parallel_in[0]), .A1(n21), .B0(data_reg[1]), .B1(n18), 
        .Y(n28) );
  OAI2BB1X2M U28 ( .A0N(n20), .A1N(data_reg[1]), .B0(n27), .Y(n39) );
  AOI22X1M U29 ( .A0(parallel_in[1]), .A1(n21), .B0(data_reg[2]), .B1(n18), 
        .Y(n27) );
  OAI2BB1X2M U30 ( .A0N(n20), .A1N(data_reg[2]), .B0(n26), .Y(n38) );
  AOI22X1M U31 ( .A0(parallel_in[2]), .A1(n21), .B0(data_reg[3]), .B1(n18), 
        .Y(n26) );
  OAI2BB1X2M U32 ( .A0N(n20), .A1N(data_reg[3]), .B0(n25), .Y(n37) );
  AOI22X1M U33 ( .A0(parallel_in[3]), .A1(n21), .B0(data_reg[4]), .B1(n18), 
        .Y(n25) );
  OAI2BB1X2M U34 ( .A0N(n20), .A1N(data_reg[4]), .B0(n24), .Y(n36) );
  AOI22X1M U35 ( .A0(parallel_in[4]), .A1(n21), .B0(data_reg[5]), .B1(n18), 
        .Y(n24) );
  OAI2BB1X2M U36 ( .A0N(n20), .A1N(data_reg[5]), .B0(n23), .Y(n35) );
  AOI22X1M U37 ( .A0(parallel_in[5]), .A1(n21), .B0(data_reg[6]), .B1(n18), 
        .Y(n23) );
  OAI2BB1X2M U38 ( .A0N(n20), .A1N(data_reg[6]), .B0(n22), .Y(n34) );
  AOI22X1M U39 ( .A0(parallel_in[6]), .A1(n21), .B0(data_reg[7]), .B1(n18), 
        .Y(n22) );
  AO22X1M U40 ( .A0(n18), .A1(data_reg[0]), .B0(serial_out), .B1(n20), .Y(n32)
         );
  AO22X1M U41 ( .A0(n20), .A1(data_reg[7]), .B0(parallel_in[7]), .B1(n21), .Y(
        n33) );
  AO22X1M U42 ( .A0(n20), .A1(Counter[0]), .B0(N8), .B1(n18), .Y(n48) );
  AO22X1M U43 ( .A0(Counter[3]), .A1(n20), .B0(N11), .B1(n18), .Y(n44) );
  AO22X1M U44 ( .A0(n20), .A1(Counter[7]), .B0(N15), .B1(n18), .Y(n47) );
  AO22X1M U45 ( .A0(n20), .A1(Counter[6]), .B0(N14), .B1(n18), .Y(n41) );
  AO22X1M U46 ( .A0(n20), .A1(Counter[5]), .B0(N13), .B1(n18), .Y(n42) );
  AO22X1M U47 ( .A0(n20), .A1(Counter[4]), .B0(N12), .B1(n18), .Y(n43) );
  AO22X1M U48 ( .A0(n20), .A1(Counter[2]), .B0(N10), .B1(n18), .Y(n45) );
  AO22X1M U49 ( .A0(n20), .A1(Counter[1]), .B0(N9), .B1(n18), .Y(n46) );
  INVX2M U50 ( .A(n29), .Y(ser_done) );
  serializer_DW01_inc_0 add_31 ( .A(Counter), .SUM({N15, N14, N13, N12, N11, 
        N10, N9, N8}) );
endmodule


module Parity_calc ( clk, rst, Data_valid, parity_type, in_data, parity_bit );
  input [7:0] in_data;
  input clk, rst, Data_valid, parity_type;
  output parity_bit;
  wire   n1, n2, n3, n4, n6, n8, n10, n12, n14, n16, n18, n20;
  wire   [7:0] internal_reg;
  tri   clk;
  tri   rst;
  tri   [7:0] in_data;

  SDFFRQX2M internal_reg_reg_1_ ( .D(n8), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(
        rst), .Q(internal_reg[1]) );
  SDFFRQX2M internal_reg_reg_4_ ( .D(n14), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst), .Q(internal_reg[4]) );
  SDFFRQX2M internal_reg_reg_0_ ( .D(n6), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(
        rst), .Q(internal_reg[0]) );
  SDFFRQX2M internal_reg_reg_7_ ( .D(n20), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst), .Q(internal_reg[7]) );
  SDFFRQX2M internal_reg_reg_3_ ( .D(n12), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst), .Q(internal_reg[3]) );
  SDFFRQX1M internal_reg_reg_6_ ( .D(n18), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst), .Q(internal_reg[6]) );
  SDFFRQX1M internal_reg_reg_5_ ( .D(n16), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst), .Q(internal_reg[5]) );
  AO2B2X2M U4 ( .B0(in_data[0]), .B1(Data_valid), .A0(internal_reg[0]), .A1N(
        Data_valid), .Y(n6) );
  AO2B2X2M U5 ( .B0(in_data[1]), .B1(Data_valid), .A0(internal_reg[1]), .A1N(
        Data_valid), .Y(n8) );
  AO2B2X2M U6 ( .B0(in_data[2]), .B1(Data_valid), .A0(internal_reg[2]), .A1N(
        Data_valid), .Y(n10) );
  AO2B2X2M U7 ( .B0(in_data[3]), .B1(Data_valid), .A0(internal_reg[3]), .A1N(
        Data_valid), .Y(n12) );
  AO2B2X2M U8 ( .B0(in_data[4]), .B1(Data_valid), .A0(internal_reg[4]), .A1N(
        Data_valid), .Y(n14) );
  AO2B2X2M U9 ( .B0(in_data[5]), .B1(Data_valid), .A0(internal_reg[5]), .A1N(
        Data_valid), .Y(n16) );
  AO2B2X2M U10 ( .B0(in_data[6]), .B1(Data_valid), .A0(internal_reg[6]), .A1N(
        Data_valid), .Y(n18) );
  AO2B2X2M U11 ( .B0(in_data[7]), .B1(Data_valid), .A0(internal_reg[7]), .A1N(
        Data_valid), .Y(n20) );
  XOR3XLM U12 ( .A(n1), .B(n2), .C(parity_type), .Y(parity_bit) );
  XOR3XLM U13 ( .A(internal_reg[5]), .B(internal_reg[4]), .C(n4), .Y(n1) );
  XOR3XLM U14 ( .A(internal_reg[1]), .B(internal_reg[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U23 ( .A(internal_reg[7]), .B(internal_reg[6]), .Y(n4) );
  CLKXOR2X2M U24 ( .A(internal_reg[3]), .B(internal_reg[2]), .Y(n3) );
  SDFFRQX1M internal_reg_reg_2_ ( .D(n10), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst), .Q(internal_reg[2]) );
endmodule


module FSM_controller ( clk, rst, Data_valid, ser_done, parity_enable, ser_en, 
        Mux_sel, Busy );
  output [2:0] Mux_sel;
  input clk, rst, Data_valid, ser_done, parity_enable;
  output ser_en, Busy;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n5, n6, n7, n8, n9, n18;
  wire   [2:0] current_state;
  wire   [2:1] next_state;
  tri   clk;
  tri   rst;

  SDFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(rst), .Q(current_state[1]) );
  SDFFRQX2M current_state_reg_0_ ( .D(n7), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst), .Q(current_state[0]) );
  SDFFSX1M current_state_reg_2_ ( .D(next_state[2]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .SN(rst), .Q(current_state[2]), .QN(n9) );
  OAI21X2M U7 ( .A0(n14), .A1(n6), .B0(n16), .Y(ser_en) );
  NAND2X2M U8 ( .A(n18), .B(n9), .Y(n14) );
  NAND2BX2M U9 ( .AN(n10), .B(n11), .Y(next_state[2]) );
  NAND2X2M U10 ( .A(n16), .B(n17), .Y(Mux_sel[0]) );
  INVX2M U11 ( .A(current_state[0]), .Y(n6) );
  INVX2M U12 ( .A(current_state[1]), .Y(n18) );
  AOI22X1M U13 ( .A0(current_state[0]), .A1(current_state[2]), .B0(n6), .B1(
        current_state[1]), .Y(n11) );
  NOR3X2M U14 ( .A(n6), .B(current_state[2]), .C(n10), .Y(next_state[1]) );
  NOR2X2M U15 ( .A(parity_enable), .B(n12), .Y(n10) );
  NAND3X2M U16 ( .A(current_state[0]), .B(n9), .C(current_state[1]), .Y(n16)
         );
  NAND3X2M U17 ( .A(n6), .B(n18), .C(current_state[2]), .Y(n17) );
  NAND2X2M U18 ( .A(ser_done), .B(current_state[1]), .Y(n12) );
  OAI211X2M U19 ( .A0(current_state[2]), .A1(n18), .B0(n17), .C0(n5), .Y(Busy)
         );
  INVX2M U20 ( .A(ser_en), .Y(n5) );
  INVX2M U21 ( .A(n13), .Y(n7) );
  AOI32X1M U22 ( .A0(n12), .A1(n9), .A2(current_state[0]), .B0(Data_valid), 
        .B1(n8), .Y(n13) );
  INVX2M U23 ( .A(n14), .Y(n8) );
  OAI211X2M U24 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n16), .C0(
        n11), .Y(Mux_sel[1]) );
  OAI22X1M U25 ( .A0(current_state[0]), .A1(n14), .B0(n15), .B1(n9), .Y(
        Mux_sel[2]) );
  NOR2X2M U26 ( .A(current_state[0]), .B(current_state[1]), .Y(n15) );
endmodule


module UART_Tx ( CLK, rst, P_data, Data_valid, PAR_TYP, PAR_EN, Tx_out, Busy
 );
  input [7:0] P_data;
  input CLK, rst, Data_valid, PAR_TYP, PAR_EN;
  output Tx_out, Busy;
  wire   Data_serial, Parity_bit, Ser_enable, Ser_done, n2, n3, n1;
  wire   [2:0] Mux_sel;
  tri   CLK;
  tri   rst;
  tri   [7:0] P_data;

  INVX2M U3 ( .A(Mux_sel[0]), .Y(n1) );
  NAND2X2M U4 ( .A(n2), .B(n3), .Y(Tx_out) );
  OAI2B1X2M U5 ( .A1N(Mux_sel[1]), .A0(Data_serial), .B0(Mux_sel[0]), .Y(n3)
         );
  AOI31X2M U6 ( .A0(Mux_sel[1]), .A1(n1), .A2(Parity_bit), .B0(Mux_sel[2]), 
        .Y(n2) );
  serializer ser_block ( .clk(CLK), .rst(rst), .parallel_in(P_data), .ser_en(
        Ser_enable), .data_valid(Data_valid), .serial_out(Data_serial), 
        .ser_done(Ser_done) );
  Parity_calc parity_block ( .clk(CLK), .rst(rst), .Data_valid(Data_valid), 
        .parity_type(PAR_TYP), .in_data(P_data), .parity_bit(Parity_bit) );
  FSM_controller FSM_control_block ( .clk(CLK), .rst(rst), .Data_valid(
        Data_valid), .ser_done(Ser_done), .parity_enable(PAR_EN), .ser_en(
        Ser_enable), .Mux_sel(Mux_sel), .Busy(Busy) );
endmodule


module Sampling_Register ( clk, rst_n, BIT_COUNT, sample_one_bit, 
        sample_three_bit, PAR_EN, Data_valid, sampled_bit, Data_out, start_bit, 
        parity_bit, stop_bit );
  input [3:0] BIT_COUNT;
  output [7:0] Data_out;
  input clk, rst_n, sample_one_bit, sample_three_bit, PAR_EN, Data_valid,
         sampled_bit;
  output start_bit, parity_bit, stop_bit;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n12, n13;
  wire   [10:9] sampled_data_register;
  tri   rst_n;

  SDFFRQX2M sampled_data_register_reg_10_ ( .D(n43), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(rst_n), .Q(sampled_data_register[10]) );
  SDFFRQX2M sampled_data_register_reg_0_ ( .D(n33), .SI(1'b0), .SE(1'b0), .CK(
        clk), .RN(rst_n), .Q(start_bit) );
  SDFFRQX2M sampled_data_register_reg_3_ ( .D(n36), .SI(1'b0), .SE(1'b0), .CK(
        clk), .RN(rst_n), .Q(Data_out[2]) );
  SDFFRQX2M sampled_data_register_reg_7_ ( .D(n40), .SI(1'b0), .SE(1'b0), .CK(
        clk), .RN(rst_n), .Q(Data_out[6]) );
  SDFFRQX2M sampled_data_register_reg_2_ ( .D(n35), .SI(1'b0), .SE(1'b0), .CK(
        clk), .RN(rst_n), .Q(Data_out[1]) );
  SDFFRQX2M sampled_data_register_reg_6_ ( .D(n39), .SI(1'b0), .SE(1'b0), .CK(
        clk), .RN(rst_n), .Q(Data_out[5]) );
  SDFFRQX2M sampled_data_register_reg_1_ ( .D(n34), .SI(1'b0), .SE(1'b0), .CK(
        clk), .RN(rst_n), .Q(Data_out[0]) );
  SDFFRQX2M sampled_data_register_reg_9_ ( .D(n42), .SI(1'b0), .SE(1'b0), .CK(
        clk), .RN(rst_n), .Q(sampled_data_register[9]) );
  SDFFRQX2M sampled_data_register_reg_5_ ( .D(n38), .SI(1'b0), .SE(1'b0), .CK(
        clk), .RN(rst_n), .Q(Data_out[4]) );
  SDFFRQX2M sampled_data_register_reg_8_ ( .D(n41), .SI(1'b0), .SE(1'b0), .CK(
        clk), .RN(rst_n), .Q(Data_out[7]) );
  SDFFRQX2M sampled_data_register_reg_4_ ( .D(n37), .SI(1'b0), .SE(1'b0), .CK(
        clk), .RN(rst_n), .Q(Data_out[3]) );
  NOR2BX2M U13 ( .AN(n22), .B(BIT_COUNT[2]), .Y(n15) );
  NOR2BX2M U14 ( .AN(n22), .B(n12), .Y(n24) );
  OR2X2M U15 ( .A(sample_one_bit), .B(sample_three_bit), .Y(n28) );
  INVX2M U16 ( .A(BIT_COUNT[2]), .Y(n12) );
  AO2B2X2M U17 ( .B0(PAR_EN), .B1(sampled_data_register[10]), .A0(
        sampled_data_register[9]), .A1N(PAR_EN), .Y(stop_bit) );
  AND2X2M U18 ( .A(PAR_EN), .B(sampled_data_register[9]), .Y(parity_bit) );
  AND3X2M U19 ( .A(n28), .B(n12), .C(BIT_COUNT[3]), .Y(n30) );
  INVX2M U20 ( .A(sampled_bit), .Y(n13) );
  OAI2BB2X1M U21 ( .B0(n13), .B1(n29), .A0N(Data_out[7]), .A1N(n29), .Y(n41)
         );
  NAND2X2M U22 ( .A(n30), .B(n16), .Y(n29) );
  OAI2BB2X1M U23 ( .B0(n13), .B1(n17), .A0N(Data_out[0]), .A1N(n17), .Y(n34)
         );
  NAND2X2M U24 ( .A(n18), .B(n15), .Y(n17) );
  OAI2BB2X1M U25 ( .B0(n13), .B1(n19), .A0N(Data_out[1]), .A1N(n19), .Y(n35)
         );
  NAND2X2M U26 ( .A(n20), .B(n15), .Y(n19) );
  OAI2BB2X1M U27 ( .B0(n13), .B1(n21), .A0N(Data_out[2]), .A1N(n21), .Y(n36)
         );
  NAND3X2M U28 ( .A(BIT_COUNT[0]), .B(n15), .C(BIT_COUNT[1]), .Y(n21) );
  OAI2BB2X1M U29 ( .B0(n13), .B1(n23), .A0N(Data_out[3]), .A1N(n23), .Y(n37)
         );
  NAND2X2M U30 ( .A(n24), .B(n16), .Y(n23) );
  OAI2BB2X1M U31 ( .B0(n13), .B1(n25), .A0N(Data_out[4]), .A1N(n25), .Y(n38)
         );
  NAND2X2M U32 ( .A(n24), .B(n18), .Y(n25) );
  OAI2BB2X1M U33 ( .B0(n13), .B1(n26), .A0N(Data_out[5]), .A1N(n26), .Y(n39)
         );
  NAND2X2M U34 ( .A(n24), .B(n20), .Y(n26) );
  OAI2BB2X1M U35 ( .B0(n13), .B1(n27), .A0N(Data_out[6]), .A1N(n27), .Y(n40)
         );
  NAND3X2M U36 ( .A(BIT_COUNT[1]), .B(BIT_COUNT[0]), .C(n24), .Y(n27) );
  NOR2BX2M U37 ( .AN(n28), .B(BIT_COUNT[3]), .Y(n22) );
  OAI2BB2X1M U38 ( .B0(n14), .B1(n13), .A0N(start_bit), .A1N(n14), .Y(n33) );
  NAND2X2M U39 ( .A(n15), .B(n16), .Y(n14) );
  OAI2BB2X1M U40 ( .B0(n13), .B1(n32), .A0N(n32), .A1N(
        sampled_data_register[10]), .Y(n43) );
  NAND2X2M U41 ( .A(n30), .B(n20), .Y(n32) );
  OAI2BB2X1M U42 ( .B0(n13), .B1(n31), .A0N(n31), .A1N(
        sampled_data_register[9]), .Y(n42) );
  NAND2X2M U43 ( .A(n30), .B(n18), .Y(n31) );
  NOR2BX2M U44 ( .AN(BIT_COUNT[1]), .B(BIT_COUNT[0]), .Y(n20) );
  NOR2BX2M U45 ( .AN(BIT_COUNT[0]), .B(BIT_COUNT[1]), .Y(n18) );
  NOR2X2M U46 ( .A(BIT_COUNT[0]), .B(BIT_COUNT[1]), .Y(n16) );
endmodule


module Configuration_block_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
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
  wire   stop_enable, parity_enable, start_enable, sampler_enable, SAMPLE_CMD,
         N20, N25, N26, N27, N28, N29, N30, N31, N32, N100, N101, N102, N103,
         N104, N105, N106, N107, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] Edge_counter;
  tri   rst_n;

  SDFFRQX2M sampler_enable_reg ( .D(block_enable_word[3]), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst_n), .Q(sampler_enable) );
  SDFFRQX2M stop_enable_reg ( .D(block_enable_word[0]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(rst_n), .Q(stop_enable) );
  SDFFRQX2M parity_enable_reg ( .D(block_enable_word[1]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(rst_n), .Q(parity_enable) );
  SDFFRQX2M start_enable_reg ( .D(block_enable_word[2]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(rst_n), .Q(start_enable) );
  SDFFRQX2M SAMPLE_CMD_reg ( .D(N20), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(
        rst_n), .Q(SAMPLE_CMD) );
  SDFFRQX2M Edge_counter_reg_1_ ( .D(N101), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(Edge_counter[1]) );
  SDFFRQX2M Edge_counter_reg_2_ ( .D(N102), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(Edge_counter[2]) );
  SDFFRQX2M Edge_counter_reg_4_ ( .D(N104), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(Edge_counter[4]) );
  SDFFRQX2M Edge_counter_reg_3_ ( .D(N103), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(Edge_counter[3]) );
  SDFFRQX2M Edge_counter_reg_7_ ( .D(N107), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(Edge_counter[7]) );
  SDFFRQX2M Edge_counter_reg_0_ ( .D(N100), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(Edge_counter[0]) );
  SDFFRQX2M Edge_counter_reg_5_ ( .D(N105), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(Edge_counter[5]) );
  SDFFRQX2M Edge_counter_reg_6_ ( .D(N106), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(Edge_counter[6]) );
  INVX2M U16 ( .A(n44), .Y(n20) );
  INVX2M U17 ( .A(n32), .Y(n19) );
  NAND2X2M U18 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n32) );
  NOR2BX2M U19 ( .AN(Prescale[0]), .B(Prescale[1]), .Y(n34) );
  NOR2X2M U20 ( .A(Prescale[0]), .B(Prescale[1]), .Y(n44) );
  NOR2BX2M U21 ( .AN(Prescale[1]), .B(Prescale[0]), .Y(n31) );
  NOR2BX2M U22 ( .AN(N31), .B(n36), .Y(N106) );
  NOR2BX2M U23 ( .AN(N30), .B(n36), .Y(N105) );
  NOR2BX2M U24 ( .AN(N29), .B(n36), .Y(N104) );
  NOR2BX2M U25 ( .AN(N28), .B(n36), .Y(N103) );
  NOR2BX2M U26 ( .AN(N27), .B(n36), .Y(N102) );
  NOR2BX2M U27 ( .AN(N26), .B(n36), .Y(N101) );
  INVX2M U28 ( .A(n21), .Y(sample_three_bit) );
  NAND2BX2M U29 ( .AN(sample_one_bit), .B(n21), .Y(N20) );
  INVX2M U30 ( .A(n42), .Y(n14) );
  NOR3BX2M U31 ( .AN(Edge_counter[1]), .B(n15), .C(n16), .Y(n46) );
  AND3X2M U32 ( .A(start_bit), .B(SAMPLE_CMD), .C(start_enable), .Y(
        error_flag_word[2]) );
  NOR3BX2M U33 ( .AN(stop_enable), .B(stop_bit), .C(n18), .Y(
        error_flag_word[0]) );
  NOR3BX2M U34 ( .AN(parity_enable), .B(n22), .C(n18), .Y(error_flag_word[1])
         );
  XOR3XLM U35 ( .A(n23), .B(n24), .C(n25), .Y(n22) );
  XNOR2X2M U36 ( .A(data_out[2]), .B(PAR_TYP), .Y(n25) );
  XOR3XLM U37 ( .A(data_out[1]), .B(data_out[0]), .C(n27), .Y(n23) );
  INVX2M U38 ( .A(n47), .Y(n15) );
  NOR4BX1M U39 ( .AN(Edge_counter[0]), .B(Edge_counter[5]), .C(Edge_counter[6]), .D(Edge_counter[7]), .Y(n47) );
  NOR3BX2M U40 ( .AN(n46), .B(Edge_counter[3]), .C(Edge_counter[4]), .Y(n38)
         );
  XNOR2X2M U41 ( .A(data_out[4]), .B(data_out[3]), .Y(n27) );
  OAI211X2M U42 ( .A0(n32), .A1(n41), .B0(n20), .C0(n45), .Y(BIT_TICK) );
  AOI22X1M U43 ( .A0(n14), .A1(n31), .B0(n38), .B1(n34), .Y(n45) );
  XOR3XLM U44 ( .A(data_out[6]), .B(data_out[5]), .C(n26), .Y(n24) );
  XNOR2X2M U45 ( .A(parity_bit), .B(data_out[7]), .Y(n26) );
  OAI211X2M U46 ( .A0(n28), .A1(n29), .B0(n16), .C0(n30), .Y(n21) );
  AND4X2M U47 ( .A(n17), .B(n31), .C(Edge_counter[0]), .D(Edge_counter[3]), 
        .Y(n29) );
  NOR4X1M U48 ( .A(Edge_counter[3]), .B(Edge_counter[0]), .C(n32), .D(n17), 
        .Y(n28) );
  NOR4X1M U49 ( .A(Edge_counter[1]), .B(Edge_counter[5]), .C(Edge_counter[6]), 
        .D(Edge_counter[7]), .Y(n30) );
  NAND2X2M U50 ( .A(sampler_enable), .B(n37), .Y(n36) );
  OAI2B11X2M U51 ( .A1N(n34), .A0(n38), .B0(n39), .C0(n40), .Y(n37) );
  OAI31X1M U52 ( .A0(n43), .A1(Edge_counter[1]), .A2(n15), .B0(n44), .Y(n39)
         );
  AOI22X1M U53 ( .A0(n19), .A1(n41), .B0(n31), .B1(n42), .Y(n40) );
  NAND3X2M U54 ( .A(Edge_counter[3]), .B(n17), .C(n46), .Y(n42) );
  NAND3X2M U55 ( .A(Edge_counter[3]), .B(Edge_counter[4]), .C(n46), .Y(n41) );
  INVX2M U56 ( .A(Edge_counter[4]), .Y(n17) );
  NOR2BX2M U57 ( .AN(N32), .B(n36), .Y(N107) );
  NOR2BX2M U58 ( .AN(N25), .B(n36), .Y(N100) );
  NAND2X2M U59 ( .A(n20), .B(n33), .Y(sample_one_bit) );
  NAND4X2M U60 ( .A(n34), .B(n30), .C(Edge_counter[2]), .D(n35), .Y(n33) );
  NOR3X2M U61 ( .A(Edge_counter[0]), .B(Edge_counter[4]), .C(Edge_counter[3]), 
        .Y(n35) );
  INVX2M U62 ( .A(Edge_counter[2]), .Y(n16) );
  INVX2M U63 ( .A(SAMPLE_CMD), .Y(n18) );
  OR3X2M U64 ( .A(Edge_counter[3]), .B(Edge_counter[4]), .C(Edge_counter[2]), 
        .Y(n43) );
  Configuration_block_DW01_inc_0 r70 ( .A(Edge_counter), .SUM({N32, N31, N30, 
        N29, N28, N27, N26, N25}) );
endmodule


module Sampler ( clk, rst_n, Serial_Data_IN, Sampled_Bit_OUT, sample_one_bit, 
        sample_three_bit, sampler_enable, start_bit_detector );
  input clk, rst_n, Serial_Data_IN, sample_one_bit, sample_three_bit,
         sampler_enable;
  output Sampled_Bit_OUT, start_bit_detector;
  wire   Data_Storage_1_, n5, n6, n8, n10, n12, n4, n13, n14, n15;
  tri   rst_n;

  SDFFSX1M Data_Storage_reg_0_ ( .D(n12), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(
        rst_n), .QN(n13) );
  SDFFSX1M Data_Storage_reg_1_ ( .D(n10), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(
        rst_n), .Q(Data_Storage_1_), .QN(n14) );
  SDFFSX1M Data_Storage_reg_2_ ( .D(n8), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(
        rst_n), .QN(n15) );
  OAI22X1M U5 ( .A0(sampler_enable), .A1(n15), .B0(n14), .B1(n4), .Y(n8) );
  OAI22X1M U6 ( .A0(sampler_enable), .A1(n14), .B0(n4), .B1(n13), .Y(n10) );
  INVX2M U7 ( .A(sampler_enable), .Y(n4) );
  INVX2M U8 ( .A(Serial_Data_IN), .Y(start_bit_detector) );
  OAI2BB1X2M U9 ( .A0N(Data_Storage_1_), .A1N(sample_one_bit), .B0(n5), .Y(
        Sampled_Bit_OUT) );
  OAI21X2M U10 ( .A0(n6), .A1(Data_Storage_1_), .B0(sample_three_bit), .Y(n5)
         );
  AOI21X2M U11 ( .A0(n15), .A1(n13), .B0(sample_one_bit), .Y(n6) );
  OAI2B2X1M U12 ( .A1N(Serial_Data_IN), .A0(n4), .B0(sampler_enable), .B1(n13), 
        .Y(n12) );
endmodule


module UART_Rx_Controller ( clk, rst_n, PAR_EN, Data_valid, block_enable_word, 
        error_flag_word, BIT_TICK, BIT_COUNT, start_bit_detector );
  output [3:0] block_enable_word;
  input [2:0] error_flag_word;
  output [3:0] BIT_COUNT;
  input clk, rst_n, PAR_EN, BIT_TICK, start_bit_detector;
  output Data_valid;
  wire   n60, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n9, n10, n11, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n59;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  tri   rst_n;

  SDFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(rst_n), .Q(current_state[1]) );
  SDFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(rst_n), .Q(current_state[0]) );
  SDFFRQX2M BIT_COUNT_reg_reg_2_ ( .D(n56), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(n60) );
  SDFFRQX2M BIT_COUNT_reg_reg_3_ ( .D(n55), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(BIT_COUNT[3]) );
  SDFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(rst_n), .Q(current_state[2]) );
  SDFFRQX2M BIT_COUNT_reg_reg_1_ ( .D(n57), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(BIT_COUNT[1]) );
  SDFFRQX2M BIT_COUNT_reg_reg_0_ ( .D(n58), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(rst_n), .Q(BIT_COUNT[0]) );
  AOI32X1M U10 ( .A0(block_enable_word[1]), .A1(n23), .A2(n27), .B0(n26), .B1(
        n16), .Y(n29) );
  INVX2M U11 ( .A(n25), .Y(n16) );
  NOR3X2M U12 ( .A(n59), .B(BIT_COUNT[2]), .C(n20), .Y(n33) );
  OAI2B11X2M U13 ( .A1N(block_enable_word[1]), .A0(n23), .B0(n10), .C0(n24), 
        .Y(next_state[2]) );
  AOI32X1M U14 ( .A0(n17), .A1(n25), .A2(n26), .B0(block_enable_word[0]), .B1(
        n27), .Y(n24) );
  INVX2M U15 ( .A(n40), .Y(block_enable_word[0]) );
  INVX2M U16 ( .A(n27), .Y(n59) );
  OAI32X1M U17 ( .A0(n45), .A1(n18), .A2(n46), .B0(n47), .B1(n20), .Y(n55) );
  NAND2X2M U18 ( .A(BIT_COUNT[2]), .B(n20), .Y(n45) );
  AOI21X2M U19 ( .A0(n13), .A1(n19), .B0(n48), .Y(n47) );
  NAND2X2M U20 ( .A(n28), .B(n29), .Y(next_state[1]) );
  AOI32X1M U21 ( .A0(n27), .A1(n30), .A2(n26), .B0(block_enable_word[2]), .B1(
        n15), .Y(n28) );
  INVX2M U22 ( .A(n31), .Y(n15) );
  AOI21BX2M U23 ( .A0(n14), .A1(n13), .B0N(n51), .Y(n50) );
  INVX2M U24 ( .A(n49), .Y(n13) );
  INVX2M U25 ( .A(n30), .Y(n17) );
  NOR2X2M U26 ( .A(n53), .B(n22), .Y(block_enable_word[1]) );
  INVX2M U27 ( .A(n54), .Y(n11) );
  INVX2M U28 ( .A(BIT_COUNT[2]), .Y(n19) );
  INVX2M U29 ( .A(n36), .Y(Data_valid) );
  NOR3BX2M U30 ( .AN(n33), .B(n18), .C(BIT_COUNT[0]), .Y(n34) );
  NOR3X2M U31 ( .A(error_flag_word[2]), .B(error_flag_word[1]), .C(
        error_flag_word[0]), .Y(n27) );
  OAI32X1M U32 ( .A0(n46), .A1(BIT_COUNT[2]), .A2(n18), .B0(n9), .B1(n19), .Y(
        n56) );
  INVX2M U33 ( .A(n48), .Y(n9) );
  OAI21X2M U34 ( .A0(BIT_COUNT[1]), .A1(n49), .B0(n50), .Y(n48) );
  OAI211X2M U35 ( .A0(current_state[2]), .A1(n11), .B0(n49), .C0(n36), .Y(n51)
         );
  OAI211X2M U36 ( .A0(n32), .A1(n59), .B0(n10), .C0(n29), .Y(next_state[0]) );
  AOI32X1M U37 ( .A0(start_bit_detector), .A1(n38), .A2(n43), .B0(
        block_enable_word[2]), .B1(n31), .Y(n32) );
  NOR2X2M U38 ( .A(current_state[2]), .B(n11), .Y(n43) );
  NAND3X2M U39 ( .A(BIT_COUNT[0]), .B(n18), .C(n33), .Y(n30) );
  NAND2X2M U40 ( .A(BIT_TICK), .B(n52), .Y(n49) );
  OAI211X2M U41 ( .A0(current_state[0]), .A1(n21), .B0(n53), .C0(n22), .Y(n52)
         );
  NAND2X2M U42 ( .A(n13), .B(BIT_COUNT[0]), .Y(n46) );
  NAND2X2M U43 ( .A(n34), .B(PAR_EN), .Y(n23) );
  NAND2X2M U44 ( .A(n17), .B(PAR_EN), .Y(n25) );
  INVX2M U45 ( .A(n35), .Y(n10) );
  OAI32X1M U46 ( .A0(n36), .A1(n37), .A2(n38), .B0(n39), .B1(n40), .Y(n35) );
  AOI211X2M U47 ( .A0(n41), .A1(n42), .B0(n20), .C0(n59), .Y(n37) );
  AOI31X2M U48 ( .A0(BIT_COUNT[1]), .A1(PAR_EN), .A2(n33), .B0(n34), .Y(n39)
         );
  OAI22X1M U49 ( .A0(n14), .A1(n51), .B0(BIT_COUNT[0]), .B1(n49), .Y(n58) );
  OAI22X1M U50 ( .A0(n50), .A1(n18), .B0(BIT_COUNT[1]), .B1(n46), .Y(n57) );
  INVX2M U51 ( .A(BIT_COUNT[1]), .Y(n18) );
  INVX2M U52 ( .A(BIT_COUNT[0]), .Y(n14) );
  NAND3X2M U53 ( .A(n27), .B(BIT_COUNT[0]), .C(n44), .Y(n31) );
  NOR3X2M U54 ( .A(BIT_COUNT[1]), .B(BIT_COUNT[3]), .C(BIT_COUNT[2]), .Y(n44)
         );
  NAND2X2M U55 ( .A(current_state[0]), .B(n21), .Y(n53) );
  NAND4X2M U56 ( .A(PAR_EN), .B(BIT_COUNT[2]), .C(n14), .D(n18), .Y(n42) );
  BUFX2M U57 ( .A(n60), .Y(BIT_COUNT[2]) );
  INVX2M U58 ( .A(BIT_COUNT[3]), .Y(n20) );
  INVX2M U59 ( .A(current_state[2]), .Y(n21) );
  OR4X1M U60 ( .A(PAR_EN), .B(n18), .C(n14), .D(BIT_COUNT[2]), .Y(n41) );
  OAI21X2M U61 ( .A0(current_state[2]), .A1(n54), .B0(n40), .Y(
        block_enable_word[3]) );
  NOR3X2M U62 ( .A(current_state[0]), .B(current_state[2]), .C(n22), .Y(n26)
         );
  NOR2X2M U63 ( .A(current_state[1]), .B(current_state[0]), .Y(n54) );
  NOR4X1M U64 ( .A(BIT_COUNT[0]), .B(BIT_COUNT[1]), .C(BIT_COUNT[2]), .D(
        BIT_COUNT[3]), .Y(n38) );
  NAND2X2M U65 ( .A(n54), .B(current_state[2]), .Y(n40) );
  NAND3X2M U66 ( .A(current_state[0]), .B(n22), .C(current_state[2]), .Y(n36)
         );
  NOR2X2M U67 ( .A(n53), .B(current_state[1]), .Y(block_enable_word[2]) );
  INVX2M U68 ( .A(current_state[1]), .Y(n22) );
endmodule


module UART_Rx ( CLK, RST, RX_IN, PAR_TYP, PAR_EN, Prescale, P_DATA, 
        data_valid, Parity_Error, Stop_Error );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_TYP, PAR_EN;
  output data_valid, Parity_Error, Stop_Error;
  wire   sample_one_bit_UART_Rx, sample_three_bit_UART_Rx, sampled_bit_UART_Rx,
         start_bit_UART_Rx, parity_bit_UART_Rx, stop_bit_UART_Rx,
         error_flag_word_UART_Rx_2_, Bit_TICK_UART_Rx,
         start_bit_detector_UART_Rx, n1, n2, n3, n4;
  wire   [3:0] BIT_COUNT_UART_Rx;
  wire   [3:0] block_enable_word_UART_Rx;
  wire   [1:0] Prescale_Select;
  tri   RST;

  OAI21X2M U3 ( .A0(n1), .A1(n2), .B0(n3), .Y(Prescale_Select[1]) );
  OAI21X2M U4 ( .A0(n1), .A1(n4), .B0(n3), .Y(Prescale_Select[0]) );
  NOR4BX1M U5 ( .AN(Prescale[4]), .B(Prescale[5]), .C(Prescale[3]), .D(
        Prescale[0]), .Y(n4) );
  NOR4BX1M U6 ( .AN(Prescale[3]), .B(Prescale[5]), .C(Prescale[4]), .D(
        Prescale[0]), .Y(n2) );
  NOR4BX1M U7 ( .AN(Prescale[0]), .B(Prescale[3]), .C(Prescale[4]), .D(
        Prescale[5]), .Y(n1) );
  NOR2X2M U8 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n3) );
  Sampling_Register UART_Sampling_Register ( .clk(CLK), .rst_n(RST), 
        .BIT_COUNT(BIT_COUNT_UART_Rx), .sample_one_bit(sample_one_bit_UART_Rx), 
        .sample_three_bit(sample_three_bit_UART_Rx), .PAR_EN(PAR_EN), 
        .Data_valid(data_valid), .sampled_bit(sampled_bit_UART_Rx), .Data_out(
        P_DATA), .start_bit(start_bit_UART_Rx), .parity_bit(parity_bit_UART_Rx), .stop_bit(stop_bit_UART_Rx) );
  Configuration_block UART_Config_block ( .clk(CLK), .rst_n(RST), 
        .block_enable_word(block_enable_word_UART_Rx), .error_flag_word({
        error_flag_word_UART_Rx_2_, Parity_Error, Stop_Error}), .BIT_TICK(
        Bit_TICK_UART_Rx), .sample_one_bit(sample_one_bit_UART_Rx), 
        .sample_three_bit(sample_three_bit_UART_Rx), .Prescale(Prescale_Select), .PAR_TYP(PAR_TYP), .start_bit(start_bit_UART_Rx), .parity_bit(
        parity_bit_UART_Rx), .stop_bit(stop_bit_UART_Rx), .data_out(P_DATA) );
  Sampler UART_Sampler ( .clk(CLK), .rst_n(RST), .Serial_Data_IN(RX_IN), 
        .Sampled_Bit_OUT(sampled_bit_UART_Rx), .sample_one_bit(
        sample_one_bit_UART_Rx), .sample_three_bit(sample_three_bit_UART_Rx), 
        .sampler_enable(block_enable_word_UART_Rx[3]), .start_bit_detector(
        start_bit_detector_UART_Rx) );
  UART_Rx_Controller UART_FSM_Controller ( .clk(CLK), .rst_n(RST), .PAR_EN(
        PAR_EN), .Data_valid(data_valid), .block_enable_word(
        block_enable_word_UART_Rx), .error_flag_word({
        error_flag_word_UART_Rx_2_, Parity_Error, Stop_Error}), .BIT_TICK(
        Bit_TICK_UART_Rx), .BIT_COUNT(BIT_COUNT_UART_Rx), .start_bit_detector(
        start_bit_detector_UART_Rx) );
endmodule


module UART ( TX_CLK, RX_CLK, UART_RST, RX_IN, TX_OUT, TX_DATA, RX_DATA, 
        PAR_EN, PAR_TYP, PRESCALE, TX_DATA_VALID, TX_BUSY, RX_DATA_VALID, 
        RX_PAR_ERROR, RX_STOP_ERROR );
  input [7:0] TX_DATA;
  output [7:0] RX_DATA;
  input [5:0] PRESCALE;
  input TX_CLK, RX_CLK, UART_RST, RX_IN, PAR_EN, PAR_TYP, TX_DATA_VALID;
  output TX_OUT, TX_BUSY, RX_DATA_VALID, RX_PAR_ERROR, RX_STOP_ERROR;

  tri   TX_CLK;
  tri   UART_RST;
  tri   [7:0] TX_DATA;

  UART_Tx UART_TX ( .CLK(TX_CLK), .rst(UART_RST), .P_data(TX_DATA), 
        .Data_valid(TX_DATA_VALID), .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), 
        .Tx_out(TX_OUT), .Busy(TX_BUSY) );
  UART_Rx UART_RX ( .CLK(RX_CLK), .RST(UART_RST), .RX_IN(RX_IN), .PAR_TYP(
        PAR_TYP), .PAR_EN(PAR_EN), .Prescale(PRESCALE), .P_DATA(RX_DATA), 
        .data_valid(RX_DATA_VALID), .Parity_Error(RX_PAR_ERROR), .Stop_Error(
        RX_STOP_ERROR) );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_GEN );
  input CLK, RST, LVL_SIG;
  output PULSE_GEN;
  wire   N1;
  tri   CLK;
  tri   RST;
  tri   PULSE_GEN;

  SDFFRQX2M PULSE_GEN_flipflop_reg ( .D(N1), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(PULSE_GEN) );
  NOR2BX2M U4 ( .AN(LVL_SIG), .B(PULSE_GEN), .Y(N1) );
endmodule


module CLK_GATE ( CLK, CLK_EN, GATED_CLK );
  input CLK, CLK_EN;
  output GATED_CLK;

  tri   CLK;

  TLATNCAX2M LATCHED_CLK ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module DATA_SYNC ( CLK, RST, Unsync_bus, bus_enable, sync_bus, enable_pulse );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse;
  wire   sync_bus_enable, n1, n3, n5, n7, n9, n11, n13, n15, n17, n33;
  wire   [1:0] synchronizer;
  tri   CLK;

  SDFFRQX1M synchronizer_reg_1_ ( .D(synchronizer[0]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(RST), .Q(synchronizer[1]) );
  SDFFRQX1M sync_bus_enable_reg ( .D(synchronizer[1]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(RST), .Q(sync_bus_enable) );
  SDFFRQX1M enable_pulse_flipflop_reg ( .D(n33), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  SDFFRQX1M sync_bus_register_reg_7_ ( .D(n17), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX1M sync_bus_register_reg_6_ ( .D(n15), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX1M sync_bus_register_reg_5_ ( .D(n13), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX1M sync_bus_register_reg_4_ ( .D(n11), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX1M sync_bus_register_reg_3_ ( .D(n9), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX1M sync_bus_register_reg_2_ ( .D(n7), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX1M sync_bus_register_reg_1_ ( .D(n5), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX1M sync_bus_register_reg_0_ ( .D(n3), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M synchronizer_reg_0_ ( .D(bus_enable), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(RST), .Q(synchronizer[0]) );
  INVX2M U26 ( .A(n1), .Y(n33) );
  NAND2BX2M U27 ( .AN(sync_bus_enable), .B(synchronizer[1]), .Y(n1) );
  AO22X1M U28 ( .A0(Unsync_bus[0]), .A1(n33), .B0(sync_bus[0]), .B1(n1), .Y(n3) );
  AO22X1M U29 ( .A0(Unsync_bus[1]), .A1(n33), .B0(sync_bus[1]), .B1(n1), .Y(n5) );
  AO22X1M U30 ( .A0(Unsync_bus[2]), .A1(n33), .B0(sync_bus[2]), .B1(n1), .Y(n7) );
  AO22X1M U31 ( .A0(Unsync_bus[3]), .A1(n33), .B0(sync_bus[3]), .B1(n1), .Y(n9) );
  AO22X1M U32 ( .A0(Unsync_bus[4]), .A1(n33), .B0(sync_bus[4]), .B1(n1), .Y(
        n11) );
  AO22X1M U33 ( .A0(Unsync_bus[5]), .A1(n33), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U34 ( .A0(Unsync_bus[6]), .A1(n33), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U35 ( .A0(Unsync_bus[7]), .A1(n33), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module ClkDiv_DW01_inc_0 ( A, SUM );
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


module ClkDiv ( i_rst_n, i_ref_clk, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_rst_n, i_ref_clk, i_clk_en;
  output o_div_clk;
  wire   N0, N6, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, reg_div_clk, n26, n1, n2, n3, n4, n5, n6, n16,
         n17, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63;
  wire   [7:0] edge_count;
  tri   i_rst_n;
  tri   i_ref_clk;

  SDFFRX1M edge_count_reg_0_ ( .D(N17), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(edge_count[0]), .QN(n45) );
  SDFFRX1M edge_count_reg_1_ ( .D(N18), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(edge_count[1]), .QN(n46) );
  SDFFRX1M edge_count_reg_2_ ( .D(N19), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(edge_count[2]), .QN(n47) );
  SDFFRX1M edge_count_reg_3_ ( .D(N20), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(edge_count[3]), .QN(n48) );
  SDFFRX1M edge_count_reg_4_ ( .D(N21), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(edge_count[4]), .QN(n49) );
  SDFFRX1M edge_count_reg_5_ ( .D(N22), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(edge_count[5]), .QN(n50) );
  SDFFRX1M edge_count_reg_6_ ( .D(N23), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(edge_count[6]), .QN(n51) );
  SDFFRX1M edge_count_reg_7_ ( .D(N24), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(edge_count[7]), .QN(n44) );
  AND2X2M U5 ( .A(edge_count[0]), .B(N6), .Y(n1) );
  AND2X2M U6 ( .A(edge_count[1]), .B(N6), .Y(n2) );
  AND2X2M U9 ( .A(edge_count[2]), .B(N6), .Y(n3) );
  AND2X2M U15 ( .A(edge_count[3]), .B(N6), .Y(n4) );
  AND2X2M U16 ( .A(edge_count[4]), .B(N6), .Y(n5) );
  AND2X2M U17 ( .A(edge_count[5]), .B(N6), .Y(n6) );
  AND2X2M U18 ( .A(edge_count[6]), .B(N6), .Y(n16) );
  AND2X2M U19 ( .A(N6), .B(edge_count[7]), .Y(n17) );
  NOR2BX2M U29 ( .AN(i_clk_en), .B(n62), .Y(N0) );
  MX2X2M U30 ( .A(i_ref_clk), .B(reg_div_clk), .S0(N0), .Y(o_div_clk) );
  NAND2X2M U31 ( .A(n52), .B(n53), .Y(N6) );
  MXI2X1M U32 ( .A(n28), .B(n29), .S0(reg_div_clk), .Y(n26) );
  CLKNAND2X2M U33 ( .A(N0), .B(n29), .Y(n28) );
  OAI211X1M U34 ( .A0(n30), .A1(n31), .B0(N0), .C0(n32), .Y(n29) );
  MXI2X1M U35 ( .A(n33), .B(n34), .S0(reg_div_clk), .Y(n32) );
  NOR2X1M U36 ( .A(n35), .B(n36), .Y(n34) );
  NAND4X1M U37 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  XNOR2X1M U38 ( .A(edge_count[3]), .B(i_div_ratio[4]), .Y(n40) );
  XNOR2X1M U39 ( .A(edge_count[4]), .B(i_div_ratio[5]), .Y(n39) );
  XNOR2X1M U40 ( .A(edge_count[5]), .B(i_div_ratio[6]), .Y(n38) );
  XNOR2X1M U41 ( .A(edge_count[6]), .B(i_div_ratio[7]), .Y(n37) );
  NAND4X1M U42 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n35) );
  XNOR2X1M U43 ( .A(edge_count[0]), .B(i_div_ratio[1]), .Y(n43) );
  XNOR2X1M U44 ( .A(edge_count[1]), .B(i_div_ratio[2]), .Y(n42) );
  XNOR2X1M U45 ( .A(edge_count[2]), .B(i_div_ratio[3]), .Y(n41) );
  CLKINVX1M U46 ( .A(N6), .Y(n33) );
  NAND4X1M U47 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n31) );
  NAND4X1M U48 ( .A(n49), .B(n50), .C(n51), .D(n44), .Y(n30) );
  NOR4X1M U49 ( .A(n54), .B(n55), .C(n56), .D(n57), .Y(n53) );
  XNOR2X1M U50 ( .A(i_div_ratio[3]), .B(n48), .Y(n57) );
  XNOR2X1M U51 ( .A(i_div_ratio[2]), .B(n47), .Y(n56) );
  XNOR2X1M U52 ( .A(i_div_ratio[1]), .B(n46), .Y(n55) );
  XNOR2X1M U53 ( .A(i_div_ratio[0]), .B(n45), .Y(n54) );
  NOR4X1M U54 ( .A(n58), .B(n59), .C(n60), .D(n61), .Y(n52) );
  XNOR2X1M U55 ( .A(i_div_ratio[7]), .B(n44), .Y(n61) );
  XNOR2X1M U56 ( .A(i_div_ratio[6]), .B(n51), .Y(n60) );
  XNOR2X1M U57 ( .A(i_div_ratio[5]), .B(n50), .Y(n59) );
  XNOR2X1M U58 ( .A(i_div_ratio[4]), .B(n49), .Y(n58) );
  AND2X1M U59 ( .A(N16), .B(N0), .Y(N24) );
  AND2X1M U60 ( .A(N15), .B(N0), .Y(N23) );
  AND2X1M U61 ( .A(N14), .B(N0), .Y(N22) );
  AND2X1M U62 ( .A(N13), .B(N0), .Y(N21) );
  AND2X1M U63 ( .A(N12), .B(N0), .Y(N20) );
  AND2X1M U64 ( .A(N11), .B(N0), .Y(N19) );
  AND2X1M U65 ( .A(N10), .B(N0), .Y(N18) );
  AND2X1M U66 ( .A(N9), .B(N0), .Y(N17) );
  NOR4BX1M U67 ( .AN(n63), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n62) );
  NOR4X1M U68 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n63) );
  ClkDiv_DW01_inc_0 add_31_aco ( .A({n17, n16, n6, n5, n4, n3, n2, n1}), .SUM(
        {N16, N15, N14, N13, N12, N11, N10, N9}) );
  SDFFRQX1M reg_div_clk_reg ( .D(n26), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(reg_div_clk) );
endmodule


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   synchronizer_0_;
  tri   CLK;

  SDFFRQX2M synchronizer_reg_0_ ( .D(1'b1), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(synchronizer_0_) );
  SDFFRQX1M synchronizer_reg_1_ ( .D(synchronizer_0_), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   synchronizer_0_;
  tri   CLK;

  SDFFRQX2M synchronizer_reg_0_ ( .D(1'b1), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(synchronizer_0_) );
  SDFFRQX1M synchronizer_reg_1_ ( .D(synchronizer_0_), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, PAR_ERROR, STOP_ERROR, 
        test_mode, scan_clk, scan_rst, SE, SI, SO );
  input [5:0] SI;
  output [5:0] SO;
  input REF_CLK, UART_CLK, RST, RX_IN, test_mode, scan_clk, scan_rst, SE;
  output TX_OUT, PAR_ERROR, STOP_ERROR;
  wire   RX_CLK_m, TX_CLK, ALU_CLK_m, ALU_CLK, ALU_CLK_EN, ALU_CLK_EN_m, RST_m,
         RST_SYNC_REF, RST_SYNC_UART, ALU_OUT_VALID, ALU_EN, RegFile_Wr_En,
         RegFile_Rd_En, RegFile_Data_Vaild, SYS_RX_DATA_VALID, n_0_net_,
         TX_BUSY, UART_RX_DATA_vaild, n_1_net_, N40, N41, N42, N43, n7, n10,
         n11, n12, n13, n16, n17, n18, n19;
  wire   [15:0] ALU_OUT;
  wire   [3:0] ALU_FUNC;
  wire   [3:0] RegFile_ADDR;
  wire   [7:0] RegFile_WORD_IN;
  wire   [7:0] RegFile_WORD_OUT;
  wire   [7:0] SYS_RX_DATA_IN;
  wire   [7:0] ALU_Op1;
  wire   [7:0] ALU_Op2;
  wire   [7:0] UART_Config;
  wire   [7:0] ClkDiv_Config;
  wire   [7:0] UART_RX_OUT;
  tri   REF_CLK_m;
  tri   UART_CLK_m;
  tri   RX_CLK;
  tri   TX_CLK_m;
  tri   RST_SYNC_REF_m;
  tri   RST_SYNC_UART_m;
  tri   F_WR_INC;
  tri   F_FULL;
  tri   [7:0] SYS_TX_DATA_OUT;
  tri   [7:0] UART_TX_IN;
  tri   F_EMPTY;
  tri   F_RD_INC;
  tri   [3:0] UART_RX_Prescale;
  tri   n20;
  tri   n21;

  OAI2B2X1M U19 ( .A1N(N43), .A0(n16), .B0(n7), .B1(1'b1), .Y(
        UART_RX_Prescale[3]) );
  OAI2B2X1M U20 ( .A1N(N42), .A0(n16), .B0(n7), .B1(1'b1), .Y(
        UART_RX_Prescale[2]) );
  OAI2B2X1M U21 ( .A1N(N41), .A0(n16), .B0(n7), .B1(1'b1), .Y(
        UART_RX_Prescale[1]) );
  OAI2B2X1M U22 ( .A1N(N40), .A0(n16), .B0(n7), .B1(1'b0), .Y(
        UART_RX_Prescale[0]) );
  OAI2BB2X1M U18 ( .B0(n19), .B1(n18), .A0N(n18), .A1N(RST_SYNC_REF), .Y(
        RST_SYNC_REF_m) );
  INVX2M U29 ( .A(scan_rst), .Y(n19) );
  CLKMX2X4M U30 ( .A(REF_CLK), .B(scan_clk), .S0(test_mode), .Y(REF_CLK_m) );
  CLKBUFX16M U31 ( .A(RST_SYNC_REF_m), .Y(n10) );
  BUFX2M U32 ( .A(ALU_EN), .Y(n13) );
  NAND2BX2M U33 ( .AN(ALU_CLK_EN), .B(n18), .Y(ALU_CLK_EN_m) );
  INVX2M U34 ( .A(n7), .Y(n16) );
  BUFX2M U35 ( .A(RegFile_ADDR[0]), .Y(n11) );
  BUFX2M U36 ( .A(RegFile_ADDR[1]), .Y(n12) );
  NOR2X2M U37 ( .A(TX_BUSY), .B(F_EMPTY), .Y(n_1_net_) );
  CLKMX2X4M U38 ( .A(RST_SYNC_UART), .B(scan_rst), .S0(test_mode), .Y(
        RST_SYNC_UART_m) );
  NOR4BX1M U39 ( .AN(UART_Config[4]), .B(UART_Config[2]), .C(UART_Config[3]), 
        .D(UART_Config[5]), .Y(N41) );
  NOR4BX1M U40 ( .AN(UART_Config[3]), .B(UART_Config[2]), .C(UART_Config[4]), 
        .D(UART_Config[5]), .Y(N42) );
  NOR4X1M U41 ( .A(UART_Config[1]), .B(UART_Config[0]), .C(UART_Config[7]), 
        .D(UART_Config[6]), .Y(n7) );
  NOR4X1M U42 ( .A(UART_Config[5]), .B(UART_Config[4]), .C(UART_Config[3]), 
        .D(n17), .Y(N43) );
  INVX2M U43 ( .A(UART_Config[2]), .Y(n17) );
  NOR3X2M U44 ( .A(N43), .B(N42), .C(N41), .Y(N40) );
  MX2X2M U45 ( .A(RST), .B(scan_rst), .S0(test_mode), .Y(RST_m) );
  INVX2M U46 ( .A(F_EMPTY), .Y(n_0_net_) );
  INVX2M U47 ( .A(test_mode), .Y(n18) );
  MX2X2M U48 ( .A(RX_CLK), .B(scan_clk), .S0(test_mode), .Y(RX_CLK_m) );
  MX2X2M U49 ( .A(ALU_CLK), .B(scan_clk), .S0(test_mode), .Y(ALU_CLK_m) );
  MX2X2M U50 ( .A(TX_CLK), .B(scan_clk), .S0(test_mode), .Y(TX_CLK_m) );
  MX2X2M U51 ( .A(UART_CLK), .B(scan_clk), .S0(test_mode), .Y(UART_CLK_m) );
  SYS_CONTRL System_Control ( .CLK(REF_CLK_m), .RST(n10), .ALU_OUT(ALU_OUT), 
        .ALU_DATA_VALID(ALU_OUT_VALID), .ALU_FUNC(ALU_FUNC), .ALU_EN(ALU_EN), 
        .ALU_CLK_EN(ALU_CLK_EN), .RegFile_ADDRESS(RegFile_ADDR), 
        .RegFile_WrEn(RegFile_Wr_En), .RegFile_RdEn(RegFile_Rd_En), 
        .RegFile_WrData(RegFile_WORD_IN), .RegFile_RdData(RegFile_WORD_OUT), 
        .RegFile_DATA_VAILD(RegFile_Data_Vaild), .RX_DATA_VALID(
        SYS_RX_DATA_VALID), .RX_DATA_IN(SYS_RX_DATA_IN), .FIFO_WR(F_WR_INC), 
        .FIFO_FULL(F_FULL), .TX_DATA_OUT(SYS_TX_DATA_OUT) );
  RegFile U0_RegFile ( .CLK(REF_CLK_m), .RST(n10), .WrData(RegFile_WORD_IN), 
        .RdData(RegFile_WORD_OUT), .Address({RegFile_ADDR[3:2], n12, n11}), 
        .WR_En(RegFile_Wr_En), .RD_EN(RegFile_Rd_En), .RdData_Vaild(
        RegFile_Data_Vaild), .REG0(ALU_Op1), .REG1(ALU_Op2), .REG2(UART_Config), .REG3(ClkDiv_Config) );
  ALU ALU ( .CLK(ALU_CLK_m), .RST(n10), .A(ALU_Op1), .B(ALU_Op2), .ALU_OUT(
        ALU_OUT), .ALU_FUNC(ALU_FUNC), .Enable(n13), .OUT_VALID(ALU_OUT_VALID)
         );
  UART U0_UART ( .TX_CLK(TX_CLK_m), .RX_CLK(RX_CLK_m), .UART_RST(
        RST_SYNC_UART_m), .RX_IN(RX_IN), .TX_OUT(TX_OUT), .TX_DATA(UART_TX_IN), 
        .RX_DATA(UART_RX_OUT), .PAR_EN(UART_Config[0]), .PAR_TYP(
        UART_Config[1]), .PRESCALE(UART_Config[7:2]), .TX_DATA_VALID(n_0_net_), 
        .TX_BUSY(TX_BUSY), .RX_DATA_VALID(UART_RX_DATA_vaild), .RX_PAR_ERROR(
        PAR_ERROR), .RX_STOP_ERROR(STOP_ERROR) );
  PULSE_GEN TX_BUSY_GEN ( .CLK(TX_CLK_m), .RST(RST_SYNC_UART_m), .LVL_SIG(
        n_1_net_), .PULSE_GEN(F_RD_INC) );
  FIFO Async_FIFO ( .W_CLK(REF_CLK_m), .W_RST(RST_SYNC_REF_m), .W_INC(F_WR_INC), .WR_DATA(SYS_TX_DATA_OUT), .FULL(F_FULL), .R_CLK(TX_CLK_m), .R_RST(
        RST_SYNC_UART_m), .R_INC(F_RD_INC), .RD_DATA(UART_TX_IN), .EMPTY(
        F_EMPTY) );
  CLK_GATE ALU_CLOCK ( .CLK(REF_CLK_m), .CLK_EN(ALU_CLK_EN_m), .GATED_CLK(
        ALU_CLK) );
  DATA_SYNC UART_RX_DATA_SYNC ( .CLK(REF_CLK_m), .RST(n10), .Unsync_bus(
        UART_RX_OUT), .bus_enable(UART_RX_DATA_vaild), .sync_bus(
        SYS_RX_DATA_IN), .enable_pulse(SYS_RX_DATA_VALID) );
  ClkDiv UART_TX_Clock_Divider ( .i_rst_n(RST_SYNC_UART_m), .i_ref_clk(
        UART_CLK_m), .i_clk_en(1'b1), .i_div_ratio(ClkDiv_Config), .o_div_clk(
        TX_CLK) );
  ClkDiv UART_RX_Clock_Divider ( .i_rst_n(RST_SYNC_UART_m), .i_ref_clk(
        UART_CLK_m), .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 
        UART_RX_Prescale}), .o_div_clk(RX_CLK) );
  RST_SYNC_0 RST_SYNC_1 ( .RST(RST_m), .CLK(REF_CLK_m), .SYNC_RST(RST_SYNC_REF) );
  RST_SYNC_1 RST_SYNC_2 ( .RST(RST_m), .CLK(UART_CLK_m), .SYNC_RST(
        RST_SYNC_UART) );
endmodule


/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Aug 23 19:52:18 2024
/////////////////////////////////////////////////////////////


module SYS_CONTRL_test_1 ( CLK, RST, ALU_OUT, ALU_DATA_VALID, ALU_FUNC, ALU_EN, 
        ALU_CLK_EN, RegFile_ADDRESS, RegFile_WrEn, RegFile_RdEn, 
        RegFile_WrData, RegFile_RdData, RegFile_DATA_VAILD, RX_DATA_VALID, 
        RX_DATA_IN, FIFO_WR, FIFO_FULL, TX_DATA_OUT, test_si, test_so, test_se
 );
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUNC;
  output [3:0] RegFile_ADDRESS;
  output [7:0] RegFile_WrData;
  input [7:0] RegFile_RdData;
  input [7:0] RX_DATA_IN;
  output [7:0] TX_DATA_OUT;
  input CLK, RST, ALU_DATA_VALID, RegFile_DATA_VAILD, RX_DATA_VALID, FIFO_FULL,
         test_si, test_se;
  output ALU_EN, ALU_CLK_EN, RegFile_WrEn, RegFile_RdEn, FIFO_WR, test_so;
  wire   n82, n84, n86, n88, n90, n92, n94, n96, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n83;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [3:0] RegFile_ADDR_Register;
  wire   [7:0] RX_Data_Register;
  wire   [15:0] ALU_Result;
  tri   CLK;
  tri   FIFO_WR;
  tri   FIFO_FULL;
  tri   [7:0] TX_DATA_OUT;
  assign test_so = n59;

  SDFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .SI(n78), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX1M \RegFile_ADDR_Register_reg[0]  ( .D(n140), .SI(RX_Data_Register[7]), .SE(test_se), .CK(CLK), .RN(RST), .Q(RegFile_ADDR_Register[0]) );
  SDFFRQX1M \RegFile_ADDR_Register_reg[1]  ( .D(n139), .SI(
        RegFile_ADDR_Register[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        RegFile_ADDR_Register[1]) );
  SDFFRQX1M \RegFile_ADDR_Register_reg[2]  ( .D(n138), .SI(
        RegFile_ADDR_Register[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        RegFile_ADDR_Register[2]) );
  SDFFRQX1M \RegFile_ADDR_Register_reg[3]  ( .D(n137), .SI(
        RegFile_ADDR_Register[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        RegFile_ADDR_Register[3]) );
  SDFFRQX1M \ALU_Result_reg[0]  ( .D(n136), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_Result[0]) );
  SDFFRQX1M \ALU_Result_reg[1]  ( .D(n135), .SI(ALU_Result[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[1]) );
  SDFFRQX1M \ALU_Result_reg[2]  ( .D(n134), .SI(ALU_Result[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[2]) );
  SDFFRQX1M \ALU_Result_reg[3]  ( .D(n133), .SI(ALU_Result[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[3]) );
  SDFFRQX1M \ALU_Result_reg[4]  ( .D(n132), .SI(ALU_Result[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[4]) );
  SDFFRQX1M \ALU_Result_reg[5]  ( .D(n131), .SI(ALU_Result[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[5]) );
  SDFFRQX1M \ALU_Result_reg[6]  ( .D(n130), .SI(ALU_Result[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[6]) );
  SDFFRQX1M \ALU_Result_reg[7]  ( .D(n129), .SI(ALU_Result[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[7]) );
  SDFFRQX1M \ALU_Result_reg[8]  ( .D(n128), .SI(ALU_Result[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[8]) );
  SDFFRQX1M \ALU_Result_reg[9]  ( .D(n127), .SI(ALU_Result[8]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[9]) );
  SDFFRQX1M \ALU_Result_reg[10]  ( .D(n126), .SI(ALU_Result[9]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[10]) );
  SDFFRQX1M \ALU_Result_reg[11]  ( .D(n125), .SI(ALU_Result[10]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[11]) );
  SDFFRQX1M \ALU_Result_reg[12]  ( .D(n124), .SI(ALU_Result[11]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[12]) );
  SDFFRQX1M \ALU_Result_reg[13]  ( .D(n123), .SI(ALU_Result[12]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[13]) );
  SDFFRQX1M \ALU_Result_reg[14]  ( .D(n122), .SI(ALU_Result[13]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[14]) );
  SDFFRQX1M \ALU_Result_reg[15]  ( .D(n121), .SI(ALU_Result[14]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_Result[15]) );
  SDFFRQX1M \RX_Data_Register_reg[0]  ( .D(n96), .SI(ALU_Result[15]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(RX_Data_Register[0]) );
  SDFFRQX1M \RX_Data_Register_reg[1]  ( .D(n94), .SI(RX_Data_Register[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(RX_Data_Register[1]) );
  SDFFRQX1M \RX_Data_Register_reg[2]  ( .D(n92), .SI(RX_Data_Register[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(RX_Data_Register[2]) );
  SDFFRQX1M \RX_Data_Register_reg[3]  ( .D(n90), .SI(RX_Data_Register[2]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(RX_Data_Register[3]) );
  SDFFRQX1M \RX_Data_Register_reg[4]  ( .D(n88), .SI(RX_Data_Register[3]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(RX_Data_Register[4]) );
  SDFFRQX1M \RX_Data_Register_reg[5]  ( .D(n86), .SI(RX_Data_Register[4]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(RX_Data_Register[5]) );
  SDFFRQX1M \RX_Data_Register_reg[6]  ( .D(n84), .SI(RX_Data_Register[5]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(RX_Data_Register[6]) );
  SDFFRQX1M \RX_Data_Register_reg[7]  ( .D(n82), .SI(RX_Data_Register[6]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(RX_Data_Register[7]) );
  SDFFRQX1M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX1M \current_state_reg[3]  ( .D(next_state[3]), .SI(n62), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[3]) );
  SDFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .SI(
        RegFile_ADDR_Register[3]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  OAI22XLM U3 ( .A0(current_state[2]), .A1(n67), .B0(n15), .B1(n9), .Y(
        RegFile_WrEn) );
  NOR2XLM U4 ( .A(n58), .B(n9), .Y(RegFile_RdEn) );
  NOR2X1M U5 ( .A(n83), .B(n53), .Y(ALU_FUNC[0]) );
  INVX1M U6 ( .A(n53), .Y(ALU_EN) );
  NAND2X1M U8 ( .A(current_state[0]), .B(current_state[3]), .Y(n67) );
  INVX1M U9 ( .A(current_state[0]), .Y(n78) );
  INVX1M U10 ( .A(current_state[2]), .Y(n62) );
  CLKINVX1M U11 ( .A(n16), .Y(n20) );
  NOR2XLM U12 ( .A(n75), .B(n53), .Y(ALU_FUNC[2]) );
  OAI2BB2XLM U13 ( .B0(n49), .B1(n67), .A0N(RegFile_ADDR_Register[0]), .A1N(
        n16), .Y(RegFile_ADDRESS[0]) );
  NOR2XLM U14 ( .A(n20), .B(n19), .Y(RegFile_ADDRESS[3]) );
  NOR2XLM U15 ( .A(n20), .B(n17), .Y(RegFile_ADDRESS[1]) );
  NOR2XLM U16 ( .A(n20), .B(n18), .Y(RegFile_ADDRESS[2]) );
  NOR2XLM U17 ( .A(n73), .B(n53), .Y(ALU_FUNC[3]) );
  NOR2XLM U18 ( .A(n77), .B(n53), .Y(ALU_FUNC[1]) );
  NAND2XLM U20 ( .A(n78), .B(n59), .Y(n9) );
  CLKINVX1M U21 ( .A(n9), .Y(n50) );
  NOR2XLM U22 ( .A(n50), .B(n58), .Y(FIFO_WR) );
  AOI22XLM U23 ( .A0(ALU_Result[9]), .A1(n79), .B0(ALU_Result[1]), .B1(n78), 
        .Y(n76) );
  OAI211XLM U25 ( .A0(current_state[3]), .A1(n83), .B0(FIFO_WR), .C0(n80), .Y(
        TX_DATA_OUT[0]) );
  OAI21XLM U26 ( .A0(n41), .A1(n33), .B0(n32), .Y(n86) );
  NAND2XLM U27 ( .A(current_state[1]), .B(current_state[2]), .Y(n58) );
  INVXLM U28 ( .A(n58), .Y(n11) );
  NOR2XLM U29 ( .A(n11), .B(n67), .Y(ALU_CLK_EN) );
  NOR2XLM U30 ( .A(current_state[3]), .B(RX_DATA_VALID), .Y(n5) );
  NAND2XLM U31 ( .A(current_state[1]), .B(n62), .Y(n49) );
  INVXLM U32 ( .A(RX_DATA_IN[6]), .Y(n35) );
  INVXLM U33 ( .A(RX_DATA_IN[2]), .Y(n40) );
  NAND4XLM U34 ( .A(n35), .B(RX_DATA_IN[5]), .C(RX_DATA_IN[1]), .D(n40), .Y(
        n42) );
  INVXLM U35 ( .A(RX_DATA_IN[5]), .Y(n33) );
  INVXLM U36 ( .A(RX_DATA_IN[1]), .Y(n37) );
  NAND4XLM U37 ( .A(n33), .B(RX_DATA_IN[2]), .C(RX_DATA_IN[6]), .D(n37), .Y(
        n21) );
  NOR2XLM U38 ( .A(current_state[1]), .B(n78), .Y(n47) );
  NAND3XLM U39 ( .A(n47), .B(RX_DATA_IN[3]), .C(RX_DATA_IN[7]), .Y(n25) );
  AOI211XLM U40 ( .A0(n42), .A1(n21), .B0(current_state[3]), .C0(n25), .Y(n3)
         );
  INVXLM U41 ( .A(n47), .Y(n65) );
  NAND2XLM U42 ( .A(current_state[1]), .B(n78), .Y(n1) );
  NAND2XLM U43 ( .A(current_state[3]), .B(n78), .Y(n22) );
  AOI31XLM U44 ( .A0(n65), .A1(n1), .A2(n22), .B0(n62), .Y(n2) );
  AOI31XLM U45 ( .A0(RX_DATA_IN[0]), .A1(RX_DATA_IN[4]), .A2(n3), .B0(n2), .Y(
        n4) );
  OAI31XLM U46 ( .A0(n5), .A1(n78), .A2(n49), .B0(n4), .Y(next_state[2]) );
  NOR2XLM U47 ( .A(n62), .B(current_state[1]), .Y(n6) );
  INVXLM U49 ( .A(n49), .Y(n10) );
  NOR2XLM U50 ( .A(current_state[3]), .B(n78), .Y(n7) );
  AOI22XLM U51 ( .A0(n10), .A1(n50), .B0(n7), .B1(n6), .Y(n8) );
  CLKINVX1M U52 ( .A(RegFile_ADDR_Register[3]), .Y(n19) );
  INVXLM U53 ( .A(RX_DATA_IN[3]), .Y(n29) );
  CLKINVX1M U54 ( .A(n8), .Y(n51) );
  AOI22XLM U55 ( .A0(n8), .A1(n19), .B0(n29), .B1(n51), .Y(n137) );
  CLKINVX1M U56 ( .A(RegFile_ADDR_Register[2]), .Y(n18) );
  AOI22XLM U57 ( .A0(n8), .A1(n18), .B0(n40), .B1(n51), .Y(n138) );
  CLKINVX1M U58 ( .A(RegFile_ADDR_Register[1]), .Y(n17) );
  AOI22XLM U59 ( .A0(n8), .A1(n17), .B0(n37), .B1(n51), .Y(n139) );
  NAND3XLM U60 ( .A(current_state[0]), .B(n10), .C(n59), .Y(n66) );
  OAI31XLM U61 ( .A0(n59), .A1(current_state[0]), .A2(n11), .B0(n66), .Y(n26)
         );
  NAND2XLM U62 ( .A(n59), .B(n62), .Y(n43) );
  AOI22XLM U63 ( .A0(current_state[3]), .A1(n58), .B0(current_state[1]), .B1(
        n59), .Y(n12) );
  AOI21XLM U64 ( .A0(current_state[0]), .A1(n43), .B0(n12), .Y(n13) );
  OAI21XLM U65 ( .A0(current_state[0]), .A1(n43), .B0(n13), .Y(n38) );
  AOI222XLM U66 ( .A0(n26), .A1(RX_DATA_IN[7]), .B0(RegFile_RdEn), .B1(
        RegFile_RdData[7]), .C0(n38), .C1(RX_Data_Register[7]), .Y(n14) );
  INVXLM U67 ( .A(n14), .Y(n82) );
  AOI221XLM U68 ( .A0(current_state[0]), .A1(n58), .B0(n78), .B1(n15), .C0(
        current_state[3]), .Y(n16) );
  INVXLM U69 ( .A(RX_DATA_IN[0]), .Y(n52) );
  INVXLM U70 ( .A(RX_DATA_IN[4]), .Y(n31) );
  AOI221XLM U71 ( .A0(RX_DATA_IN[4]), .A1(n52), .B0(n31), .B1(RX_DATA_IN[0]), 
        .C0(n21), .Y(n54) );
  NAND2XLM U72 ( .A(n54), .B(n62), .Y(n24) );
  NAND2XLM U73 ( .A(current_state[3]), .B(n58), .Y(n23) );
  OAI211XLM U74 ( .A0(n25), .A1(n24), .B0(n23), .C0(n22), .Y(next_state[3]) );
  AOI22XLM U75 ( .A0(RX_Data_Register[0]), .A1(n38), .B0(RegFile_RdEn), .B1(
        RegFile_RdData[0]), .Y(n27) );
  OAI21XLM U76 ( .A0(n41), .A1(n52), .B0(n27), .Y(n96) );
  AOI22XLM U77 ( .A0(RegFile_RdData[3]), .A1(RegFile_RdEn), .B0(
        RX_Data_Register[3]), .B1(n38), .Y(n28) );
  OAI21XLM U78 ( .A0(n41), .A1(n29), .B0(n28), .Y(n90) );
  AOI22XLM U79 ( .A0(RegFile_RdData[4]), .A1(RegFile_RdEn), .B0(
        RX_Data_Register[4]), .B1(n38), .Y(n30) );
  OAI21XLM U80 ( .A0(n41), .A1(n31), .B0(n30), .Y(n88) );
  AOI22XLM U81 ( .A0(RegFile_RdData[5]), .A1(RegFile_RdEn), .B0(
        RX_Data_Register[5]), .B1(n38), .Y(n32) );
  AOI22XLM U82 ( .A0(RegFile_RdData[6]), .A1(RegFile_RdEn), .B0(
        RX_Data_Register[6]), .B1(n38), .Y(n34) );
  OAI21XLM U83 ( .A0(n41), .A1(n35), .B0(n34), .Y(n84) );
  AOI22XLM U84 ( .A0(RegFile_RdData[1]), .A1(RegFile_RdEn), .B0(
        RX_Data_Register[1]), .B1(n38), .Y(n36) );
  OAI21XLM U85 ( .A0(n41), .A1(n37), .B0(n36), .Y(n94) );
  AOI22XLM U86 ( .A0(RegFile_RdData[2]), .A1(RegFile_RdEn), .B0(
        RX_Data_Register[2]), .B1(n38), .Y(n39) );
  OAI21XLM U87 ( .A0(n41), .A1(n40), .B0(n39), .Y(n92) );
  AND2X1M U88 ( .A(RX_Data_Register[6]), .B(RegFile_WrEn), .Y(
        RegFile_WrData[6]) );
  AND2X1M U89 ( .A(RX_Data_Register[4]), .B(RegFile_WrEn), .Y(
        RegFile_WrData[4]) );
  AND2X1M U90 ( .A(RX_Data_Register[5]), .B(RegFile_WrEn), .Y(
        RegFile_WrData[5]) );
  AND2X1M U91 ( .A(RX_Data_Register[7]), .B(RegFile_WrEn), .Y(
        RegFile_WrData[7]) );
  CLKINVX1M U92 ( .A(RX_Data_Register[3]), .Y(n73) );
  NOR3XLM U93 ( .A(RX_DATA_IN[4]), .B(RX_DATA_IN[0]), .C(n42), .Y(n55) );
  AOI31XLM U94 ( .A0(n55), .A1(RX_DATA_IN[3]), .A2(RX_DATA_IN[7]), .B0(n43), 
        .Y(n45) );
  AOI21XLM U95 ( .A0(RX_DATA_VALID), .A1(n59), .B0(n62), .Y(n44) );
  NAND2XLM U96 ( .A(current_state[3]), .B(ALU_DATA_VALID), .Y(n57) );
  OAI21XLM U97 ( .A0(n45), .A1(n44), .B0(n57), .Y(n46) );
  AOI22XLM U98 ( .A0(n47), .A1(n46), .B0(current_state[1]), .B1(n78), .Y(n48)
         );
  OAI31XLM U99 ( .A0(current_state[3]), .A1(RX_DATA_VALID), .A2(n49), .B0(n48), 
        .Y(next_state[1]) );
  AND2X1M U100 ( .A(RegFile_WrEn), .B(RX_Data_Register[2]), .Y(
        RegFile_WrData[2]) );
  AND2X1M U101 ( .A(RegFile_WrEn), .B(RX_Data_Register[3]), .Y(
        RegFile_WrData[3]) );
  AND2X1M U102 ( .A(RegFile_WrEn), .B(RX_Data_Register[0]), .Y(
        RegFile_WrData[0]) );
  AND2X1M U103 ( .A(RegFile_WrEn), .B(RX_Data_Register[1]), .Y(
        RegFile_WrData[1]) );
  CLKINVX1M U105 ( .A(RX_Data_Register[0]), .Y(n83) );
  CLKINVX1M U106 ( .A(RX_Data_Register[2]), .Y(n75) );
  AOI2BB2XLM U107 ( .B0(n52), .B1(n51), .A0N(n51), .A1N(
        RegFile_ADDR_Register[0]), .Y(n140) );
  AO22XLM U108 ( .A0(ALU_EN), .A1(ALU_OUT[0]), .B0(n53), .B1(ALU_Result[0]), 
        .Y(n136) );
  AO22XLM U109 ( .A0(ALU_EN), .A1(ALU_OUT[1]), .B0(n53), .B1(ALU_Result[1]), 
        .Y(n135) );
  AO22XLM U110 ( .A0(ALU_EN), .A1(ALU_OUT[2]), .B0(n53), .B1(ALU_Result[2]), 
        .Y(n134) );
  AO22XLM U111 ( .A0(ALU_EN), .A1(ALU_OUT[3]), .B0(n53), .B1(ALU_Result[3]), 
        .Y(n133) );
  AO22XLM U112 ( .A0(ALU_EN), .A1(ALU_OUT[4]), .B0(n53), .B1(ALU_Result[4]), 
        .Y(n132) );
  AO22XLM U113 ( .A0(ALU_EN), .A1(ALU_OUT[5]), .B0(n53), .B1(ALU_Result[5]), 
        .Y(n131) );
  AO22XLM U114 ( .A0(ALU_EN), .A1(ALU_OUT[6]), .B0(n53), .B1(ALU_Result[6]), 
        .Y(n130) );
  AO22XLM U115 ( .A0(ALU_EN), .A1(ALU_OUT[7]), .B0(n53), .B1(ALU_Result[7]), 
        .Y(n129) );
  AO22XLM U116 ( .A0(ALU_EN), .A1(ALU_OUT[8]), .B0(n53), .B1(ALU_Result[8]), 
        .Y(n128) );
  AO22XLM U117 ( .A0(ALU_EN), .A1(ALU_OUT[9]), .B0(n53), .B1(ALU_Result[9]), 
        .Y(n127) );
  AO22XLM U118 ( .A0(ALU_EN), .A1(ALU_OUT[10]), .B0(n53), .B1(ALU_Result[10]), 
        .Y(n126) );
  AO22XLM U119 ( .A0(ALU_EN), .A1(ALU_OUT[11]), .B0(n53), .B1(ALU_Result[11]), 
        .Y(n125) );
  AO22XLM U120 ( .A0(ALU_EN), .A1(ALU_OUT[12]), .B0(n53), .B1(ALU_Result[12]), 
        .Y(n124) );
  AO22XLM U121 ( .A0(ALU_EN), .A1(ALU_OUT[13]), .B0(n53), .B1(ALU_Result[13]), 
        .Y(n123) );
  AO22XLM U122 ( .A0(ALU_EN), .A1(ALU_OUT[14]), .B0(n53), .B1(ALU_Result[14]), 
        .Y(n122) );
  AO22XLM U123 ( .A0(ALU_EN), .A1(ALU_OUT[15]), .B0(n53), .B1(ALU_Result[15]), 
        .Y(n121) );
  OAI211XLM U125 ( .A0(n55), .A1(n54), .B0(RX_DATA_IN[3]), .C0(RX_DATA_IN[7]), 
        .Y(n56) );
  AOI22XLM U126 ( .A0(current_state[2]), .A1(n57), .B0(n59), .B1(n56), .Y(n64)
         );
  NAND2BXLM U127 ( .AN(FIFO_FULL), .B(RegFile_DATA_VAILD), .Y(n60) );
  AOI21XLM U128 ( .A0(n60), .A1(n59), .B0(n58), .Y(n61) );
  AOI221XLM U129 ( .A0(current_state[3]), .A1(RX_DATA_VALID), .B0(n62), .B1(
        RX_DATA_VALID), .C0(n61), .Y(n63) );
  OAI222XLM U130 ( .A0(n66), .A1(RX_DATA_VALID), .B0(n65), .B1(n64), .C0(n63), 
        .C1(current_state[0]), .Y(next_state[0]) );
  INVXLM U131 ( .A(n67), .Y(n79) );
  AOI22XLM U132 ( .A0(ALU_Result[15]), .A1(n79), .B0(ALU_Result[7]), .B1(n78), 
        .Y(n68) );
  OAI2B11XLM U133 ( .A1N(RX_Data_Register[7]), .A0(current_state[3]), .B0(
        FIFO_WR), .C0(n68), .Y(TX_DATA_OUT[7]) );
  AOI22XLM U134 ( .A0(ALU_Result[14]), .A1(n79), .B0(ALU_Result[6]), .B1(n78), 
        .Y(n69) );
  OAI2B11XLM U135 ( .A1N(RX_Data_Register[6]), .A0(current_state[3]), .B0(
        FIFO_WR), .C0(n69), .Y(TX_DATA_OUT[6]) );
  AOI22XLM U136 ( .A0(ALU_Result[13]), .A1(n79), .B0(ALU_Result[5]), .B1(n78), 
        .Y(n70) );
  OAI2B11XLM U137 ( .A1N(RX_Data_Register[5]), .A0(current_state[3]), .B0(
        FIFO_WR), .C0(n70), .Y(TX_DATA_OUT[5]) );
  AOI22XLM U138 ( .A0(ALU_Result[12]), .A1(n79), .B0(ALU_Result[4]), .B1(n78), 
        .Y(n71) );
  OAI2B11XLM U139 ( .A1N(RX_Data_Register[4]), .A0(current_state[3]), .B0(
        FIFO_WR), .C0(n71), .Y(TX_DATA_OUT[4]) );
  AOI22XLM U140 ( .A0(ALU_Result[11]), .A1(n79), .B0(ALU_Result[3]), .B1(n78), 
        .Y(n72) );
  OAI211XLM U141 ( .A0(current_state[3]), .A1(n73), .B0(FIFO_WR), .C0(n72), 
        .Y(TX_DATA_OUT[3]) );
  AOI22XLM U142 ( .A0(ALU_Result[10]), .A1(n79), .B0(ALU_Result[2]), .B1(n78), 
        .Y(n74) );
  OAI211XLM U143 ( .A0(current_state[3]), .A1(n75), .B0(FIFO_WR), .C0(n74), 
        .Y(TX_DATA_OUT[2]) );
  OAI211XLM U144 ( .A0(current_state[3]), .A1(n77), .B0(FIFO_WR), .C0(n76), 
        .Y(TX_DATA_OUT[1]) );
  AOI22XLM U145 ( .A0(ALU_Result[8]), .A1(n79), .B0(ALU_Result[0]), .B1(n78), 
        .Y(n80) );
  INVXLM U7 ( .A(n6), .Y(n15) );
  INVXLM U19 ( .A(RX_Data_Register[1]), .Y(n77) );
  INVXLM U24 ( .A(n26), .Y(n41) );
  OR2X1M U48 ( .A(n67), .B(n15), .Y(n53) );
  INVXLM U104 ( .A(current_state[3]), .Y(n59) );
endmodule


module RegFile_test_1 ( CLK, RST, WrData, RdData, Address, WR_En, RD_EN, 
        RdData_Vaild, REG0, REG1, REG2, REG3, test_si3, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] WrData;
  output [7:0] RdData;
  input [3:0] Address;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WR_En, RD_EN, test_si3, test_si2, test_si1, test_se;
  output RdData_Vaild, test_so2, test_so1;
  wire   \Register[15][7] , \Register[15][6] , \Register[15][5] ,
         \Register[15][4] , \Register[15][3] , \Register[15][2] ,
         \Register[15][1] , \Register[15][0] , \Register[14][7] ,
         \Register[14][6] , \Register[14][5] , \Register[14][4] ,
         \Register[14][3] , \Register[14][2] , \Register[14][1] ,
         \Register[14][0] , \Register[13][7] , \Register[13][6] ,
         \Register[13][5] , \Register[13][4] , \Register[13][3] ,
         \Register[13][2] , \Register[13][1] , \Register[13][0] ,
         \Register[12][7] , \Register[12][6] , \Register[12][5] ,
         \Register[12][4] , \Register[12][3] , \Register[12][2] ,
         \Register[12][1] , \Register[12][0] , \Register[11][7] ,
         \Register[11][6] , \Register[11][5] , \Register[11][4] ,
         \Register[11][3] , \Register[11][2] , \Register[11][1] ,
         \Register[11][0] , \Register[10][7] , \Register[10][6] ,
         \Register[10][5] , \Register[10][4] , \Register[10][3] ,
         \Register[10][2] , \Register[10][1] , \Register[10][0] ,
         \Register[9][7] , \Register[9][6] , \Register[9][5] ,
         \Register[9][4] , \Register[9][3] , \Register[9][2] ,
         \Register[9][1] , \Register[9][0] , \Register[8][7] ,
         \Register[8][6] , \Register[8][5] , \Register[8][4] ,
         \Register[8][3] , \Register[8][2] , \Register[8][1] ,
         \Register[8][0] , \Register[7][7] , \Register[7][6] ,
         \Register[7][5] , \Register[7][4] , \Register[7][3] ,
         \Register[7][2] , \Register[7][1] , \Register[7][0] ,
         \Register[6][7] , \Register[6][6] , \Register[6][5] ,
         \Register[6][4] , \Register[6][3] , \Register[6][2] ,
         \Register[6][1] , \Register[6][0] , \Register[5][7] ,
         \Register[5][6] , \Register[5][5] , \Register[5][4] ,
         \Register[5][3] , \Register[5][2] , \Register[5][1] ,
         \Register[5][0] , \Register[4][7] , \Register[4][6] ,
         \Register[4][5] , \Register[4][4] , \Register[4][3] ,
         \Register[4][2] , \Register[4][1] , \Register[4][0] , N59, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n179, n180, n181;
  tri   CLK;
  assign test_so2 = \Register[15][7] ;
  assign test_so1 = \Register[13][7] ;

  SDFFRQX1M RdData_Vaild_reg ( .D(N59), .SI(test_si1), .SE(n181), .CK(CLK), 
        .RN(RST), .Q(RdData_Vaild) );
  SDFFRQX1M \Register_reg[15][7]  ( .D(n406), .SI(\Register[15][6] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[15][7] ) );
  SDFFRQX1M \Register_reg[15][6]  ( .D(n405), .SI(\Register[15][5] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[15][6] ) );
  SDFFRQX1M \Register_reg[15][5]  ( .D(n404), .SI(\Register[15][4] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[15][5] ) );
  SDFFRQX1M \Register_reg[15][4]  ( .D(n403), .SI(\Register[15][3] ), .SE(n181), .CK(CLK), .RN(RST), .Q(\Register[15][4] ) );
  SDFFRQX1M \Register_reg[15][3]  ( .D(n402), .SI(\Register[15][2] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[15][3] ) );
  SDFFRQX1M \Register_reg[15][2]  ( .D(n401), .SI(\Register[15][1] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[15][2] ) );
  SDFFRQX1M \Register_reg[15][1]  ( .D(n400), .SI(\Register[15][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[15][1] ) );
  SDFFRQX1M \Register_reg[15][0]  ( .D(n399), .SI(\Register[14][7] ), .SE(n181), .CK(CLK), .RN(RST), .Q(\Register[15][0] ) );
  SDFFRQX1M \Register_reg[14][7]  ( .D(n398), .SI(\Register[14][6] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[14][7] ) );
  SDFFRQX1M \Register_reg[14][6]  ( .D(n397), .SI(\Register[14][5] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[14][6] ) );
  SDFFRQX1M \Register_reg[14][5]  ( .D(n396), .SI(\Register[14][4] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[14][5] ) );
  SDFFRQX1M \Register_reg[14][4]  ( .D(n395), .SI(\Register[14][3] ), .SE(n181), .CK(CLK), .RN(RST), .Q(\Register[14][4] ) );
  SDFFRQX1M \Register_reg[14][3]  ( .D(n394), .SI(\Register[14][2] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[14][3] ) );
  SDFFRQX1M \Register_reg[14][2]  ( .D(n393), .SI(\Register[14][1] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[14][2] ) );
  SDFFRQX1M \Register_reg[14][1]  ( .D(n392), .SI(\Register[14][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[14][1] ) );
  SDFFRQX1M \Register_reg[14][0]  ( .D(n391), .SI(test_si3), .SE(n181), .CK(
        CLK), .RN(RST), .Q(\Register[14][0] ) );
  SDFFRQX1M \Register_reg[13][6]  ( .D(n389), .SI(\Register[13][5] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[13][6] ) );
  SDFFRQX1M \Register_reg[13][5]  ( .D(n388), .SI(\Register[13][4] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[13][5] ) );
  SDFFRQX1M \Register_reg[13][4]  ( .D(n387), .SI(\Register[13][3] ), .SE(n181), .CK(CLK), .RN(RST), .Q(\Register[13][4] ) );
  SDFFRQX1M \Register_reg[13][3]  ( .D(n386), .SI(\Register[13][2] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[13][3] ) );
  SDFFRQX1M \Register_reg[13][2]  ( .D(n385), .SI(\Register[13][1] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[13][2] ) );
  SDFFRQX1M \Register_reg[13][1]  ( .D(n384), .SI(\Register[13][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[13][1] ) );
  SDFFRQX1M \Register_reg[13][0]  ( .D(n383), .SI(\Register[12][7] ), .SE(n181), .CK(CLK), .RN(RST), .Q(\Register[13][0] ) );
  SDFFRQX1M \Register_reg[12][7]  ( .D(n382), .SI(\Register[12][6] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[12][7] ) );
  SDFFRQX1M \Register_reg[12][6]  ( .D(n381), .SI(\Register[12][5] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[12][6] ) );
  SDFFRQX1M \Register_reg[12][5]  ( .D(n380), .SI(\Register[12][4] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[12][5] ) );
  SDFFRQX1M \Register_reg[12][4]  ( .D(n379), .SI(\Register[12][3] ), .SE(n181), .CK(CLK), .RN(RST), .Q(\Register[12][4] ) );
  SDFFRQX1M \Register_reg[12][3]  ( .D(n378), .SI(\Register[12][2] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[12][3] ) );
  SDFFRQX1M \Register_reg[12][2]  ( .D(n377), .SI(\Register[12][1] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[12][2] ) );
  SDFFRQX1M \Register_reg[12][1]  ( .D(n376), .SI(\Register[12][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[12][1] ) );
  SDFFRQX1M \Register_reg[12][0]  ( .D(n375), .SI(\Register[11][7] ), .SE(n181), .CK(CLK), .RN(RST), .Q(\Register[12][0] ) );
  SDFFRQX1M \Register_reg[11][7]  ( .D(n374), .SI(\Register[11][6] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[11][7] ) );
  SDFFRQX1M \Register_reg[11][6]  ( .D(n373), .SI(\Register[11][5] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[11][6] ) );
  SDFFRQX1M \Register_reg[11][5]  ( .D(n372), .SI(\Register[11][4] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[11][5] ) );
  SDFFRQX1M \Register_reg[11][4]  ( .D(n371), .SI(\Register[11][3] ), .SE(n181), .CK(CLK), .RN(RST), .Q(\Register[11][4] ) );
  SDFFRQX1M \Register_reg[11][3]  ( .D(n370), .SI(\Register[11][2] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[11][3] ) );
  SDFFRQX1M \Register_reg[11][2]  ( .D(n369), .SI(\Register[11][1] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[11][2] ) );
  SDFFRQX1M \Register_reg[11][1]  ( .D(n368), .SI(\Register[11][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[11][1] ) );
  SDFFRQX1M \Register_reg[11][0]  ( .D(n367), .SI(\Register[10][7] ), .SE(n181), .CK(CLK), .RN(RST), .Q(\Register[11][0] ) );
  SDFFRQX1M \Register_reg[10][7]  ( .D(n366), .SI(\Register[10][6] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[10][7] ) );
  SDFFRQX1M \Register_reg[10][6]  ( .D(n365), .SI(\Register[10][5] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[10][6] ) );
  SDFFRQX1M \Register_reg[10][5]  ( .D(n364), .SI(\Register[10][4] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[10][5] ) );
  SDFFRQX1M \Register_reg[10][4]  ( .D(n363), .SI(\Register[10][3] ), .SE(n181), .CK(CLK), .RN(RST), .Q(\Register[10][4] ) );
  SDFFRQX1M \Register_reg[10][3]  ( .D(n362), .SI(\Register[10][2] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[10][3] ) );
  SDFFRQX1M \Register_reg[10][2]  ( .D(n361), .SI(\Register[10][1] ), .SE(n179), .CK(CLK), .RN(RST), .Q(\Register[10][2] ) );
  SDFFRQX1M \Register_reg[10][1]  ( .D(n360), .SI(\Register[10][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[10][1] ) );
  SDFFRQX1M \Register_reg[10][0]  ( .D(n359), .SI(\Register[9][7] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[10][0] ) );
  SDFFRQX1M \Register_reg[9][7]  ( .D(n358), .SI(\Register[9][6] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[9][7] ) );
  SDFFRQX1M \Register_reg[9][6]  ( .D(n357), .SI(\Register[9][5] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[9][6] ) );
  SDFFRQX1M \Register_reg[9][5]  ( .D(n356), .SI(\Register[9][4] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[9][5] ) );
  SDFFRQX1M \Register_reg[9][4]  ( .D(n355), .SI(\Register[9][3] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[9][4] ) );
  SDFFRQX1M \Register_reg[9][3]  ( .D(n354), .SI(\Register[9][2] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[9][3] ) );
  SDFFRQX1M \Register_reg[9][2]  ( .D(n353), .SI(\Register[9][1] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[9][2] ) );
  SDFFRQX1M \Register_reg[9][1]  ( .D(n352), .SI(\Register[9][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[9][1] ) );
  SDFFRQX1M \Register_reg[9][0]  ( .D(n351), .SI(\Register[8][7] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[9][0] ) );
  SDFFRQX1M \Register_reg[8][7]  ( .D(n350), .SI(\Register[8][6] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[8][7] ) );
  SDFFRQX1M \Register_reg[8][6]  ( .D(n349), .SI(\Register[8][5] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[8][6] ) );
  SDFFRQX1M \Register_reg[8][5]  ( .D(n348), .SI(\Register[8][4] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[8][5] ) );
  SDFFRQX1M \Register_reg[8][4]  ( .D(n347), .SI(\Register[8][3] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[8][4] ) );
  SDFFRQX1M \Register_reg[8][3]  ( .D(n346), .SI(\Register[8][2] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[8][3] ) );
  SDFFRQX1M \Register_reg[8][2]  ( .D(n345), .SI(\Register[8][1] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[8][2] ) );
  SDFFRQX1M \Register_reg[8][1]  ( .D(n344), .SI(\Register[8][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[8][1] ) );
  SDFFRQX1M \Register_reg[8][0]  ( .D(n343), .SI(\Register[7][7] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[8][0] ) );
  SDFFRQX1M \Register_reg[7][7]  ( .D(n342), .SI(\Register[7][6] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[7][7] ) );
  SDFFRQX1M \Register_reg[7][6]  ( .D(n341), .SI(\Register[7][5] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[7][6] ) );
  SDFFRQX1M \Register_reg[7][5]  ( .D(n340), .SI(\Register[7][4] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[7][5] ) );
  SDFFRQX1M \Register_reg[7][4]  ( .D(n339), .SI(\Register[7][3] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[7][4] ) );
  SDFFRQX1M \Register_reg[7][3]  ( .D(n338), .SI(\Register[7][2] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[7][3] ) );
  SDFFRQX1M \Register_reg[7][2]  ( .D(n337), .SI(\Register[7][1] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[7][2] ) );
  SDFFRQX1M \Register_reg[7][1]  ( .D(n336), .SI(\Register[7][0] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[7][1] ) );
  SDFFRQX1M \Register_reg[7][0]  ( .D(n335), .SI(\Register[6][7] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[7][0] ) );
  SDFFRQX1M \Register_reg[6][7]  ( .D(n334), .SI(\Register[6][6] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[6][7] ) );
  SDFFRQX1M \Register_reg[6][6]  ( .D(n333), .SI(\Register[6][5] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[6][6] ) );
  SDFFRQX1M \Register_reg[6][5]  ( .D(n332), .SI(\Register[6][4] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[6][5] ) );
  SDFFRQX1M \Register_reg[6][4]  ( .D(n331), .SI(\Register[6][3] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[6][4] ) );
  SDFFRQX1M \Register_reg[6][3]  ( .D(n330), .SI(\Register[6][2] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[6][3] ) );
  SDFFRQX1M \Register_reg[6][2]  ( .D(n329), .SI(\Register[6][1] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[6][2] ) );
  SDFFRQX1M \Register_reg[6][1]  ( .D(n328), .SI(\Register[6][0] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[6][1] ) );
  SDFFRQX1M \Register_reg[6][0]  ( .D(n327), .SI(\Register[5][7] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[6][0] ) );
  SDFFRQX1M \Register_reg[5][7]  ( .D(n326), .SI(\Register[5][6] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[5][7] ) );
  SDFFRQX1M \Register_reg[5][6]  ( .D(n325), .SI(\Register[5][5] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[5][6] ) );
  SDFFRQX1M \Register_reg[5][5]  ( .D(n324), .SI(\Register[5][4] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[5][5] ) );
  SDFFRQX1M \Register_reg[5][4]  ( .D(n323), .SI(\Register[5][3] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[5][4] ) );
  SDFFRQX1M \Register_reg[5][3]  ( .D(n322), .SI(\Register[5][2] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[5][3] ) );
  SDFFRQX1M \Register_reg[5][2]  ( .D(n321), .SI(\Register[5][1] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[5][2] ) );
  SDFFRQX1M \Register_reg[5][1]  ( .D(n320), .SI(\Register[5][0] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[5][1] ) );
  SDFFRQX1M \Register_reg[5][0]  ( .D(n319), .SI(\Register[4][7] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[5][0] ) );
  SDFFRQX1M \Register_reg[4][7]  ( .D(n318), .SI(\Register[4][6] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[4][7] ) );
  SDFFRQX1M \Register_reg[4][6]  ( .D(n317), .SI(\Register[4][5] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[4][6] ) );
  SDFFRQX1M \Register_reg[4][5]  ( .D(n316), .SI(\Register[4][4] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[4][5] ) );
  SDFFRQX1M \Register_reg[4][4]  ( .D(n315), .SI(\Register[4][3] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\Register[4][4] ) );
  SDFFRQX1M \Register_reg[4][3]  ( .D(n314), .SI(\Register[4][2] ), .SE(n181), 
        .CK(CLK), .RN(RST), .Q(\Register[4][3] ) );
  SDFFRQX1M \Register_reg[4][2]  ( .D(n313), .SI(\Register[4][1] ), .SE(n180), 
        .CK(CLK), .RN(RST), .Q(\Register[4][2] ) );
  SDFFRQX1M \Register_reg[4][1]  ( .D(n312), .SI(\Register[4][0] ), .SE(n179), 
        .CK(CLK), .RN(RST), .Q(\Register[4][1] ) );
  SDFFRQX1M \Register_reg[4][0]  ( .D(n311), .SI(REG3[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\Register[4][0] ) );
  SDFFRQX1M \Register_reg[3][7]  ( .D(n310), .SI(REG3[6]), .SE(n181), .CK(CLK), 
        .RN(RST), .Q(REG3[7]) );
  SDFFRQX1M \Register_reg[3][6]  ( .D(n309), .SI(REG3[5]), .SE(n180), .CK(CLK), 
        .RN(RST), .Q(REG3[6]) );
  SDFFRQX1M \Register_reg[3][4]  ( .D(n307), .SI(REG3[3]), .SE(n179), .CK(CLK), 
        .RN(RST), .Q(REG3[4]) );
  SDFFRQX1M \Register_reg[3][3]  ( .D(n306), .SI(REG3[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG3[3]) );
  SDFFRQX1M \Register_reg[3][2]  ( .D(n305), .SI(REG3[1]), .SE(n181), .CK(CLK), 
        .RN(RST), .Q(REG3[2]) );
  SDFFRQX1M \Register_reg[3][1]  ( .D(n304), .SI(REG3[0]), .SE(n180), .CK(CLK), 
        .RN(RST), .Q(REG3[1]) );
  SDFFRQX1M \Register_reg[3][0]  ( .D(n303), .SI(REG2[7]), .SE(n179), .CK(CLK), 
        .RN(RST), .Q(REG3[0]) );
  SDFFRQX1M \Register_reg[2][6]  ( .D(n301), .SI(REG2[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG2[6]) );
  SDFFRQX1M \Register_reg[2][5]  ( .D(n300), .SI(REG2[4]), .SE(n181), .CK(CLK), 
        .RN(RST), .Q(REG2[5]) );
  SDFFRQX1M \Register_reg[2][4]  ( .D(n299), .SI(REG2[3]), .SE(n180), .CK(CLK), 
        .RN(RST), .Q(REG2[4]) );
  SDFFRQX1M \Register_reg[2][3]  ( .D(n298), .SI(REG2[2]), .SE(n179), .CK(CLK), 
        .RN(RST), .Q(REG2[3]) );
  SDFFRQX1M \Register_reg[2][2]  ( .D(n297), .SI(REG2[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG2[2]) );
  SDFFRQX1M \Register_reg[1][7]  ( .D(n294), .SI(test_si2), .SE(n181), .CK(CLK), .RN(RST), .Q(REG1[7]) );
  SDFFRQX1M \Register_reg[1][6]  ( .D(n293), .SI(REG1[5]), .SE(n180), .CK(CLK), 
        .RN(RST), .Q(REG1[6]) );
  SDFFRQX1M \Register_reg[1][5]  ( .D(n292), .SI(REG1[4]), .SE(n179), .CK(CLK), 
        .RN(RST), .Q(REG1[5]) );
  SDFFRQX1M \Register_reg[1][4]  ( .D(n291), .SI(REG1[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG1[4]) );
  SDFFRQX1M \Register_reg[1][3]  ( .D(n290), .SI(REG1[2]), .SE(n181), .CK(CLK), 
        .RN(RST), .Q(REG1[3]) );
  SDFFRQX1M \Register_reg[1][2]  ( .D(n289), .SI(REG1[1]), .SE(n180), .CK(CLK), 
        .RN(RST), .Q(REG1[2]) );
  SDFFRQX1M \Register_reg[1][1]  ( .D(n288), .SI(REG1[0]), .SE(n179), .CK(CLK), 
        .RN(RST), .Q(REG1[1]) );
  SDFFRQX1M \Register_reg[1][0]  ( .D(n287), .SI(REG0[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG1[0]) );
  SDFFRQX1M \Register_reg[0][7]  ( .D(n286), .SI(REG0[6]), .SE(n181), .CK(CLK), 
        .RN(RST), .Q(REG0[7]) );
  SDFFRQX1M \Register_reg[0][6]  ( .D(n285), .SI(REG0[5]), .SE(n180), .CK(CLK), 
        .RN(RST), .Q(REG0[6]) );
  SDFFRQX1M \Register_reg[0][5]  ( .D(n284), .SI(REG0[4]), .SE(n179), .CK(CLK), 
        .RN(RST), .Q(REG0[5]) );
  SDFFRQX1M \Register_reg[0][3]  ( .D(n282), .SI(REG0[2]), .SE(n181), .CK(CLK), 
        .RN(RST), .Q(REG0[3]) );
  SDFFRQX1M \Register_reg[0][2]  ( .D(n281), .SI(REG0[1]), .SE(n180), .CK(CLK), 
        .RN(RST), .Q(REG0[2]) );
  SDFFRQX1M \Register_reg[0][1]  ( .D(n280), .SI(REG0[0]), .SE(n179), .CK(CLK), 
        .RN(RST), .Q(REG0[1]) );
  SDFFRQX1M \Register_reg[0][0]  ( .D(n279), .SI(RdData[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(REG0[0]) );
  SDFFRQX1M \Register_reg[2][1]  ( .D(n296), .SI(REG2[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG2[1]) );
  NOR2XLM U5 ( .A(Address[3]), .B(Address[0]), .Y(n111) );
  NOR2XLM U6 ( .A(n2), .B(Address[3]), .Y(n135) );
  NOR2XLM U7 ( .A(Address[2]), .B(Address[1]), .Y(n1) );
  NAND2XLM U8 ( .A(Address[3]), .B(Address[0]), .Y(n122) );
  NAND2XLM U9 ( .A(n111), .B(n134), .Y(n144) );
  NAND2XLM U10 ( .A(n135), .B(n134), .Y(n147) );
  NAND2BXLM U12 ( .AN(Address[2]), .B(Address[1]), .Y(n145) );
  NAND2BXLM U13 ( .AN(Address[1]), .B(Address[2]), .Y(n140) );
  NAND2BXLM U14 ( .AN(n124), .B(n134), .Y(n132) );
  NAND2XLM U15 ( .A(Address[2]), .B(Address[1]), .Y(n137) );
  NAND2BXLM U16 ( .AN(n122), .B(n134), .Y(n130) );
  NOR2XLM U17 ( .A(n145), .B(n122), .Y(n82) );
  NOR2XLM U18 ( .A(n122), .B(n148), .Y(n84) );
  NOR2XLM U19 ( .A(n124), .B(n148), .Y(n85) );
  NOR2BXLM U20 ( .AN(RST), .B(n134), .Y(n108) );
  NOR2XLM U21 ( .A(n148), .B(n144), .Y(n121) );
  NOR2XLM U22 ( .A(n148), .B(n147), .Y(n157) );
  NOR2XLM U23 ( .A(n145), .B(n147), .Y(n143) );
  NOR2XLM U24 ( .A(n140), .B(n144), .Y(n141) );
  NOR2XLM U25 ( .A(n140), .B(n147), .Y(n139) );
  NOR2XLM U26 ( .A(n137), .B(n144), .Y(n138) );
  NOR2XLM U27 ( .A(n137), .B(n147), .Y(n136) );
  NOR2XLM U28 ( .A(n148), .B(n132), .Y(n133) );
  NOR2XLM U29 ( .A(n148), .B(n130), .Y(n131) );
  NOR2XLM U30 ( .A(n145), .B(n132), .Y(n129) );
  NOR2XLM U31 ( .A(n145), .B(n130), .Y(n128) );
  NOR2XLM U32 ( .A(n140), .B(n132), .Y(n127) );
  NOR2XLM U33 ( .A(n140), .B(n130), .Y(n126) );
  NOR2XLM U34 ( .A(n137), .B(n132), .Y(n125) );
  CLKINVX1M U36 ( .A(WrData[1]), .Y(n155) );
  CLKINVX1M U37 ( .A(WrData[3]), .Y(n153) );
  CLKINVX1M U38 ( .A(WrData[4]), .Y(n152) );
  CLKINVX1M U39 ( .A(WrData[5]), .Y(n151) );
  CLKINVX1M U40 ( .A(WrData[6]), .Y(n150) );
  NOR2XLM U41 ( .A(n137), .B(n130), .Y(n123) );
  CLKINVX1M U42 ( .A(WrData[7]), .Y(n149) );
  NAND2BXLM U43 ( .AN(WR_En), .B(RD_EN), .Y(n110) );
  AOI31XLM U45 ( .A0(n14), .A1(n13), .A2(n12), .B0(n110), .Y(n15) );
  AOI31XLM U47 ( .A0(n25), .A1(n24), .A2(n23), .B0(n110), .Y(n26) );
  AOI31XLM U49 ( .A0(n36), .A1(n35), .A2(n34), .B0(n110), .Y(n37) );
  AOI31XLM U51 ( .A0(n47), .A1(n46), .A2(n45), .B0(n110), .Y(n48) );
  AOI31XLM U53 ( .A0(n58), .A1(n57), .A2(n56), .B0(n110), .Y(n59) );
  AOI31XLM U56 ( .A0(n80), .A1(n79), .A2(n78), .B0(n110), .Y(n81) );
  AOI31XLM U58 ( .A0(n107), .A1(n106), .A2(n105), .B0(n110), .Y(n109) );
  AOI22XLM U59 ( .A0(\Register[14][0] ), .A1(n93), .B0(\Register[15][0] ), 
        .B1(n92), .Y(n8) );
  AOI22XLM U60 ( .A0(n93), .A1(\Register[14][3] ), .B0(n92), .B1(
        \Register[15][3] ), .Y(n41) );
  AOI22XLM U61 ( .A0(n93), .A1(\Register[14][6] ), .B0(n92), .B1(
        \Register[15][6] ), .Y(n74) );
  OAI21XLM U62 ( .A0(n89), .A1(n112), .B0(n49), .Y(n55) );
  NAND2XLM U63 ( .A(Address[3]), .B(n2), .Y(n124) );
  AOI22XLM U64 ( .A0(n85), .A1(\Register[8][1] ), .B0(n84), .B1(
        \Register[9][1] ), .Y(n24) );
  AOI22XLM U65 ( .A0(n85), .A1(\Register[8][6] ), .B0(n84), .B1(
        \Register[9][6] ), .Y(n79) );
  AOI31XLM U66 ( .A0(n69), .A1(n68), .A2(n67), .B0(n110), .Y(n70) );
  NOR2XLM U67 ( .A(n145), .B(n144), .Y(n146) );
  CLKINVX1M U68 ( .A(WrData[2]), .Y(n154) );
  INVXLM U69 ( .A(n110), .Y(N59) );
  NOR2XLM U71 ( .A(n145), .B(n124), .Y(n83) );
  AOI22XLM U72 ( .A0(\Register[10][0] ), .A1(n83), .B0(\Register[11][0] ), 
        .B1(n82), .Y(n14) );
  AOI22XLM U73 ( .A0(\Register[8][0] ), .A1(n85), .B0(\Register[9][0] ), .B1(
        n84), .Y(n13) );
  INVXLM U74 ( .A(n111), .Y(n4) );
  NOR2XLM U75 ( .A(n145), .B(n4), .Y(n104) );
  INVXLM U76 ( .A(REG0[0]), .Y(n118) );
  NAND2XLM U77 ( .A(n1), .B(n111), .Y(n89) );
  CLKINVX1M U78 ( .A(n135), .Y(n5) );
  NOR2XLM U79 ( .A(n145), .B(n5), .Y(n87) );
  NOR2XLM U80 ( .A(n148), .B(n5), .Y(n86) );
  AOI22XLM U81 ( .A0(REG3[0]), .A1(n87), .B0(REG1[0]), .B1(n86), .Y(n3) );
  OAI21XLM U82 ( .A0(n118), .A1(n89), .B0(n3), .Y(n11) );
  NOR2XLM U83 ( .A(n124), .B(n140), .Y(n91) );
  NOR2XLM U84 ( .A(n122), .B(n140), .Y(n90) );
  AOI22XLM U85 ( .A0(\Register[12][0] ), .A1(n91), .B0(\Register[13][0] ), 
        .B1(n90), .Y(n9) );
  NOR2XLM U86 ( .A(n124), .B(n137), .Y(n93) );
  NOR2XLM U87 ( .A(n122), .B(n137), .Y(n92) );
  NOR2XLM U88 ( .A(n140), .B(n4), .Y(n95) );
  NOR2XLM U89 ( .A(n140), .B(n5), .Y(n94) );
  AOI22XLM U90 ( .A0(\Register[4][0] ), .A1(n95), .B0(\Register[5][0] ), .B1(
        n94), .Y(n7) );
  NOR2XLM U91 ( .A(n137), .B(n4), .Y(n97) );
  NOR2XLM U92 ( .A(n137), .B(n5), .Y(n96) );
  AOI22XLM U93 ( .A0(\Register[6][0] ), .A1(n97), .B0(\Register[7][0] ), .B1(
        n96), .Y(n6) );
  NAND4XLM U94 ( .A(n9), .B(n8), .C(n7), .D(n6), .Y(n10) );
  AOI211XLM U95 ( .A0(REG2[0]), .A1(n104), .B0(n11), .C0(n10), .Y(n12) );
  AOI22XLM U97 ( .A0(n83), .A1(\Register[10][1] ), .B0(n82), .B1(
        \Register[11][1] ), .Y(n25) );
  INVXLM U98 ( .A(REG0[1]), .Y(n120) );
  AOI22XLM U99 ( .A0(n87), .A1(REG3[1]), .B0(n86), .B1(REG1[1]), .Y(n16) );
  OAI21XLM U100 ( .A0(n89), .A1(n120), .B0(n16), .Y(n22) );
  AOI22XLM U101 ( .A0(n91), .A1(\Register[12][1] ), .B0(n90), .B1(
        \Register[13][1] ), .Y(n20) );
  AOI22XLM U102 ( .A0(n93), .A1(\Register[14][1] ), .B0(n92), .B1(
        \Register[15][1] ), .Y(n19) );
  AOI22XLM U103 ( .A0(n95), .A1(\Register[4][1] ), .B0(n94), .B1(
        \Register[5][1] ), .Y(n18) );
  AOI22XLM U104 ( .A0(n97), .A1(\Register[6][1] ), .B0(n96), .B1(
        \Register[7][1] ), .Y(n17) );
  NAND4XLM U105 ( .A(n20), .B(n19), .C(n18), .D(n17), .Y(n21) );
  AOI211XLM U106 ( .A0(n104), .A1(REG2[1]), .B0(n22), .C0(n21), .Y(n23) );
  AOI22XLM U108 ( .A0(n83), .A1(\Register[10][2] ), .B0(n82), .B1(
        \Register[11][2] ), .Y(n36) );
  AOI22XLM U109 ( .A0(n85), .A1(\Register[8][2] ), .B0(n84), .B1(
        \Register[9][2] ), .Y(n35) );
  INVXLM U110 ( .A(REG0[2]), .Y(n113) );
  AOI22XLM U111 ( .A0(n87), .A1(REG3[2]), .B0(n86), .B1(REG1[2]), .Y(n27) );
  OAI21XLM U112 ( .A0(n89), .A1(n113), .B0(n27), .Y(n33) );
  AOI22XLM U113 ( .A0(n91), .A1(\Register[12][2] ), .B0(n90), .B1(
        \Register[13][2] ), .Y(n31) );
  AOI22XLM U114 ( .A0(n93), .A1(\Register[14][2] ), .B0(n92), .B1(
        \Register[15][2] ), .Y(n30) );
  AOI22XLM U115 ( .A0(n95), .A1(\Register[4][2] ), .B0(n94), .B1(
        \Register[5][2] ), .Y(n29) );
  AOI22XLM U116 ( .A0(n97), .A1(\Register[6][2] ), .B0(n96), .B1(
        \Register[7][2] ), .Y(n28) );
  NAND4XLM U117 ( .A(n31), .B(n30), .C(n29), .D(n28), .Y(n32) );
  AOI211XLM U118 ( .A0(n104), .A1(REG2[2]), .B0(n33), .C0(n32), .Y(n34) );
  AOI22XLM U120 ( .A0(n83), .A1(\Register[10][3] ), .B0(n82), .B1(
        \Register[11][3] ), .Y(n47) );
  AOI22XLM U121 ( .A0(n85), .A1(\Register[8][3] ), .B0(n84), .B1(
        \Register[9][3] ), .Y(n46) );
  INVXLM U122 ( .A(REG0[3]), .Y(n114) );
  AOI22XLM U123 ( .A0(n87), .A1(REG3[3]), .B0(n86), .B1(REG1[3]), .Y(n38) );
  OAI21XLM U124 ( .A0(n89), .A1(n114), .B0(n38), .Y(n44) );
  AOI22XLM U125 ( .A0(n91), .A1(\Register[12][3] ), .B0(n90), .B1(
        \Register[13][3] ), .Y(n42) );
  AOI22XLM U126 ( .A0(n95), .A1(\Register[4][3] ), .B0(n94), .B1(
        \Register[5][3] ), .Y(n40) );
  AOI22XLM U127 ( .A0(n97), .A1(\Register[6][3] ), .B0(n96), .B1(
        \Register[7][3] ), .Y(n39) );
  NAND4XLM U128 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(n43) );
  AOI211XLM U129 ( .A0(n104), .A1(REG2[3]), .B0(n44), .C0(n43), .Y(n45) );
  AOI22XLM U131 ( .A0(n83), .A1(\Register[10][4] ), .B0(n82), .B1(
        \Register[11][4] ), .Y(n58) );
  AOI22XLM U132 ( .A0(n85), .A1(\Register[8][4] ), .B0(n84), .B1(
        \Register[9][4] ), .Y(n57) );
  AOI22XLM U134 ( .A0(n87), .A1(REG3[4]), .B0(n86), .B1(REG1[4]), .Y(n49) );
  AOI22XLM U135 ( .A0(n91), .A1(\Register[12][4] ), .B0(n90), .B1(
        \Register[13][4] ), .Y(n53) );
  AOI22XLM U136 ( .A0(n93), .A1(\Register[14][4] ), .B0(n92), .B1(
        \Register[15][4] ), .Y(n52) );
  AOI22XLM U137 ( .A0(n95), .A1(\Register[4][4] ), .B0(n94), .B1(
        \Register[5][4] ), .Y(n51) );
  AOI22XLM U138 ( .A0(n97), .A1(\Register[6][4] ), .B0(n96), .B1(
        \Register[7][4] ), .Y(n50) );
  NAND4XLM U139 ( .A(n53), .B(n52), .C(n51), .D(n50), .Y(n54) );
  AOI211XLM U140 ( .A0(n104), .A1(REG2[4]), .B0(n55), .C0(n54), .Y(n56) );
  AOI22XLM U142 ( .A0(n83), .A1(\Register[10][5] ), .B0(n82), .B1(
        \Register[11][5] ), .Y(n69) );
  AOI22XLM U143 ( .A0(n85), .A1(\Register[8][5] ), .B0(n84), .B1(
        \Register[9][5] ), .Y(n68) );
  INVXLM U144 ( .A(REG0[5]), .Y(n116) );
  AOI22XLM U145 ( .A0(n87), .A1(REG3[5]), .B0(n86), .B1(REG1[5]), .Y(n60) );
  OAI21XLM U146 ( .A0(n89), .A1(n116), .B0(n60), .Y(n66) );
  AOI22XLM U147 ( .A0(n91), .A1(\Register[12][5] ), .B0(n90), .B1(
        \Register[13][5] ), .Y(n64) );
  AOI22XLM U148 ( .A0(n93), .A1(\Register[14][5] ), .B0(n92), .B1(
        \Register[15][5] ), .Y(n63) );
  AOI22XLM U149 ( .A0(n95), .A1(\Register[4][5] ), .B0(n94), .B1(
        \Register[5][5] ), .Y(n62) );
  AOI22XLM U150 ( .A0(n97), .A1(\Register[6][5] ), .B0(n96), .B1(
        \Register[7][5] ), .Y(n61) );
  NAND4XLM U151 ( .A(n64), .B(n63), .C(n62), .D(n61), .Y(n65) );
  AOI211XLM U152 ( .A0(n104), .A1(REG2[5]), .B0(n66), .C0(n65), .Y(n67) );
  AOI22XLM U154 ( .A0(n83), .A1(\Register[10][6] ), .B0(n82), .B1(
        \Register[11][6] ), .Y(n80) );
  INVXLM U155 ( .A(REG0[6]), .Y(n117) );
  AOI22XLM U156 ( .A0(n87), .A1(REG3[6]), .B0(n86), .B1(REG1[6]), .Y(n71) );
  OAI21XLM U157 ( .A0(n89), .A1(n117), .B0(n71), .Y(n77) );
  AOI22XLM U158 ( .A0(n91), .A1(\Register[12][6] ), .B0(n90), .B1(
        \Register[13][6] ), .Y(n75) );
  AOI22XLM U159 ( .A0(n95), .A1(\Register[4][6] ), .B0(n94), .B1(
        \Register[5][6] ), .Y(n73) );
  AOI22XLM U160 ( .A0(n97), .A1(\Register[6][6] ), .B0(n96), .B1(
        \Register[7][6] ), .Y(n72) );
  NAND4XLM U161 ( .A(n75), .B(n74), .C(n73), .D(n72), .Y(n76) );
  AOI211XLM U162 ( .A0(n104), .A1(REG2[6]), .B0(n77), .C0(n76), .Y(n78) );
  AOI22XLM U164 ( .A0(n83), .A1(\Register[10][7] ), .B0(n82), .B1(
        \Register[11][7] ), .Y(n107) );
  AOI22XLM U165 ( .A0(n85), .A1(\Register[8][7] ), .B0(n84), .B1(
        \Register[9][7] ), .Y(n106) );
  INVXLM U166 ( .A(REG0[7]), .Y(n115) );
  AOI22XLM U167 ( .A0(n87), .A1(REG3[7]), .B0(n86), .B1(REG1[7]), .Y(n88) );
  OAI21XLM U168 ( .A0(n89), .A1(n115), .B0(n88), .Y(n103) );
  AOI22XLM U169 ( .A0(n91), .A1(\Register[12][7] ), .B0(n90), .B1(
        \Register[13][7] ), .Y(n101) );
  AOI22XLM U170 ( .A0(n93), .A1(\Register[14][7] ), .B0(n92), .B1(
        \Register[15][7] ), .Y(n100) );
  AOI22XLM U171 ( .A0(n95), .A1(\Register[4][7] ), .B0(n94), .B1(
        \Register[5][7] ), .Y(n99) );
  AOI22XLM U172 ( .A0(n97), .A1(\Register[6][7] ), .B0(n96), .B1(
        \Register[7][7] ), .Y(n98) );
  NAND4XLM U173 ( .A(n101), .B(n100), .C(n99), .D(n98), .Y(n102) );
  AOI211XLM U174 ( .A0(n104), .A1(REG2[7]), .B0(n103), .C0(n102), .Y(n105) );
  CLKINVX1M U175 ( .A(n121), .Y(n119) );
  AOI22XLM U176 ( .A0(n121), .A1(n152), .B0(n112), .B1(n119), .Y(n283) );
  AOI22XLM U177 ( .A0(n121), .A1(n154), .B0(n113), .B1(n119), .Y(n281) );
  AOI22XLM U178 ( .A0(n121), .A1(n153), .B0(n114), .B1(n119), .Y(n282) );
  AOI22XLM U179 ( .A0(n121), .A1(n149), .B0(n115), .B1(n119), .Y(n286) );
  AOI22XLM U180 ( .A0(n121), .A1(n151), .B0(n116), .B1(n119), .Y(n284) );
  AOI22XLM U181 ( .A0(n121), .A1(n150), .B0(n117), .B1(n119), .Y(n285) );
  AOI22XLM U182 ( .A0(n121), .A1(n156), .B0(n118), .B1(n119), .Y(n279) );
  AOI22XLM U183 ( .A0(n121), .A1(n155), .B0(n120), .B1(n119), .Y(n280) );
  AOI2BB2XLM U184 ( .B0(n123), .B1(n149), .A0N(\Register[15][7] ), .A1N(n123), 
        .Y(n406) );
  AOI2BB2XLM U185 ( .B0(n123), .B1(n150), .A0N(\Register[15][6] ), .A1N(n123), 
        .Y(n405) );
  AOI2BB2XLM U186 ( .B0(n123), .B1(n151), .A0N(\Register[15][5] ), .A1N(n123), 
        .Y(n404) );
  AOI2BB2XLM U187 ( .B0(n123), .B1(n152), .A0N(\Register[15][4] ), .A1N(n123), 
        .Y(n403) );
  AOI2BB2XLM U188 ( .B0(n123), .B1(n153), .A0N(\Register[15][3] ), .A1N(n123), 
        .Y(n402) );
  AOI2BB2XLM U189 ( .B0(n123), .B1(n154), .A0N(\Register[15][2] ), .A1N(n123), 
        .Y(n401) );
  AOI2BB2XLM U190 ( .B0(n123), .B1(n155), .A0N(\Register[15][1] ), .A1N(n123), 
        .Y(n400) );
  AOI2BB2XLM U191 ( .B0(n123), .B1(n156), .A0N(\Register[15][0] ), .A1N(n123), 
        .Y(n399) );
  AOI2BB2XLM U192 ( .B0(n125), .B1(n149), .A0N(\Register[14][7] ), .A1N(n125), 
        .Y(n398) );
  AOI2BB2XLM U193 ( .B0(n125), .B1(n150), .A0N(\Register[14][6] ), .A1N(n125), 
        .Y(n397) );
  AOI2BB2XLM U194 ( .B0(n125), .B1(n151), .A0N(\Register[14][5] ), .A1N(n125), 
        .Y(n396) );
  AOI2BB2XLM U195 ( .B0(n125), .B1(n152), .A0N(\Register[14][4] ), .A1N(n125), 
        .Y(n395) );
  AOI2BB2XLM U196 ( .B0(n125), .B1(n153), .A0N(\Register[14][3] ), .A1N(n125), 
        .Y(n394) );
  AOI2BB2XLM U197 ( .B0(n125), .B1(n154), .A0N(\Register[14][2] ), .A1N(n125), 
        .Y(n393) );
  AOI2BB2XLM U198 ( .B0(n125), .B1(n155), .A0N(\Register[14][1] ), .A1N(n125), 
        .Y(n392) );
  AOI2BB2XLM U199 ( .B0(n125), .B1(n156), .A0N(\Register[14][0] ), .A1N(n125), 
        .Y(n391) );
  AOI2BB2XLM U200 ( .B0(n126), .B1(n149), .A0N(n126), .A1N(\Register[13][7] ), 
        .Y(n390) );
  AOI2BB2XLM U201 ( .B0(n126), .B1(n150), .A0N(\Register[13][6] ), .A1N(n126), 
        .Y(n389) );
  AOI2BB2XLM U202 ( .B0(n126), .B1(n151), .A0N(\Register[13][5] ), .A1N(n126), 
        .Y(n388) );
  AOI2BB2XLM U203 ( .B0(n126), .B1(n152), .A0N(\Register[13][4] ), .A1N(n126), 
        .Y(n387) );
  AOI2BB2XLM U204 ( .B0(n126), .B1(n153), .A0N(\Register[13][3] ), .A1N(n126), 
        .Y(n386) );
  AOI2BB2XLM U205 ( .B0(n126), .B1(n154), .A0N(\Register[13][2] ), .A1N(n126), 
        .Y(n385) );
  AOI2BB2XLM U206 ( .B0(n126), .B1(n155), .A0N(\Register[13][1] ), .A1N(n126), 
        .Y(n384) );
  AOI2BB2XLM U207 ( .B0(n126), .B1(n156), .A0N(\Register[13][0] ), .A1N(n126), 
        .Y(n383) );
  AOI2BB2XLM U208 ( .B0(n127), .B1(n149), .A0N(\Register[12][7] ), .A1N(n127), 
        .Y(n382) );
  AOI2BB2XLM U209 ( .B0(n127), .B1(n150), .A0N(\Register[12][6] ), .A1N(n127), 
        .Y(n381) );
  AOI2BB2XLM U210 ( .B0(n127), .B1(n151), .A0N(\Register[12][5] ), .A1N(n127), 
        .Y(n380) );
  AOI2BB2XLM U211 ( .B0(n127), .B1(n152), .A0N(\Register[12][4] ), .A1N(n127), 
        .Y(n379) );
  AOI2BB2XLM U212 ( .B0(n127), .B1(n153), .A0N(\Register[12][3] ), .A1N(n127), 
        .Y(n378) );
  AOI2BB2XLM U213 ( .B0(n127), .B1(n154), .A0N(\Register[12][2] ), .A1N(n127), 
        .Y(n377) );
  AOI2BB2XLM U214 ( .B0(n127), .B1(n155), .A0N(\Register[12][1] ), .A1N(n127), 
        .Y(n376) );
  AOI2BB2XLM U215 ( .B0(n127), .B1(n156), .A0N(\Register[12][0] ), .A1N(n127), 
        .Y(n375) );
  AOI2BB2XLM U216 ( .B0(n128), .B1(n149), .A0N(\Register[11][7] ), .A1N(n128), 
        .Y(n374) );
  AOI2BB2XLM U217 ( .B0(n128), .B1(n150), .A0N(\Register[11][6] ), .A1N(n128), 
        .Y(n373) );
  AOI2BB2XLM U218 ( .B0(n128), .B1(n151), .A0N(\Register[11][5] ), .A1N(n128), 
        .Y(n372) );
  AOI2BB2XLM U219 ( .B0(n128), .B1(n152), .A0N(\Register[11][4] ), .A1N(n128), 
        .Y(n371) );
  AOI2BB2XLM U220 ( .B0(n128), .B1(n153), .A0N(\Register[11][3] ), .A1N(n128), 
        .Y(n370) );
  AOI2BB2XLM U221 ( .B0(n128), .B1(n154), .A0N(\Register[11][2] ), .A1N(n128), 
        .Y(n369) );
  AOI2BB2XLM U222 ( .B0(n128), .B1(n155), .A0N(\Register[11][1] ), .A1N(n128), 
        .Y(n368) );
  AOI2BB2XLM U223 ( .B0(n128), .B1(n156), .A0N(\Register[11][0] ), .A1N(n128), 
        .Y(n367) );
  AOI2BB2XLM U224 ( .B0(n129), .B1(n149), .A0N(\Register[10][7] ), .A1N(n129), 
        .Y(n366) );
  AOI2BB2XLM U225 ( .B0(n129), .B1(n150), .A0N(\Register[10][6] ), .A1N(n129), 
        .Y(n365) );
  AOI2BB2XLM U226 ( .B0(n129), .B1(n151), .A0N(\Register[10][5] ), .A1N(n129), 
        .Y(n364) );
  AOI2BB2XLM U227 ( .B0(n129), .B1(n152), .A0N(\Register[10][4] ), .A1N(n129), 
        .Y(n363) );
  AOI2BB2XLM U228 ( .B0(n129), .B1(n153), .A0N(\Register[10][3] ), .A1N(n129), 
        .Y(n362) );
  AOI2BB2XLM U229 ( .B0(n129), .B1(n154), .A0N(\Register[10][2] ), .A1N(n129), 
        .Y(n361) );
  AOI2BB2XLM U230 ( .B0(n129), .B1(n155), .A0N(\Register[10][1] ), .A1N(n129), 
        .Y(n360) );
  AOI2BB2XLM U231 ( .B0(n129), .B1(n156), .A0N(\Register[10][0] ), .A1N(n129), 
        .Y(n359) );
  AOI2BB2XLM U232 ( .B0(n131), .B1(n149), .A0N(\Register[9][7] ), .A1N(n131), 
        .Y(n358) );
  AOI2BB2XLM U233 ( .B0(n131), .B1(n150), .A0N(\Register[9][6] ), .A1N(n131), 
        .Y(n357) );
  AOI2BB2XLM U234 ( .B0(n131), .B1(n151), .A0N(\Register[9][5] ), .A1N(n131), 
        .Y(n356) );
  AOI2BB2XLM U235 ( .B0(n131), .B1(n152), .A0N(\Register[9][4] ), .A1N(n131), 
        .Y(n355) );
  AOI2BB2XLM U236 ( .B0(n131), .B1(n153), .A0N(\Register[9][3] ), .A1N(n131), 
        .Y(n354) );
  AOI2BB2XLM U237 ( .B0(n131), .B1(n154), .A0N(\Register[9][2] ), .A1N(n131), 
        .Y(n353) );
  AOI2BB2XLM U238 ( .B0(n131), .B1(n155), .A0N(\Register[9][1] ), .A1N(n131), 
        .Y(n352) );
  AOI2BB2XLM U239 ( .B0(n131), .B1(n156), .A0N(\Register[9][0] ), .A1N(n131), 
        .Y(n351) );
  AOI2BB2XLM U240 ( .B0(n133), .B1(n149), .A0N(\Register[8][7] ), .A1N(n133), 
        .Y(n350) );
  AOI2BB2XLM U241 ( .B0(n133), .B1(n150), .A0N(\Register[8][6] ), .A1N(n133), 
        .Y(n349) );
  AOI2BB2XLM U242 ( .B0(n133), .B1(n151), .A0N(\Register[8][5] ), .A1N(n133), 
        .Y(n348) );
  AOI2BB2XLM U243 ( .B0(n133), .B1(n152), .A0N(\Register[8][4] ), .A1N(n133), 
        .Y(n347) );
  AOI2BB2XLM U244 ( .B0(n133), .B1(n153), .A0N(\Register[8][3] ), .A1N(n133), 
        .Y(n346) );
  AOI2BB2XLM U245 ( .B0(n133), .B1(n154), .A0N(\Register[8][2] ), .A1N(n133), 
        .Y(n345) );
  AOI2BB2XLM U246 ( .B0(n133), .B1(n155), .A0N(\Register[8][1] ), .A1N(n133), 
        .Y(n344) );
  AOI2BB2XLM U247 ( .B0(n133), .B1(n156), .A0N(\Register[8][0] ), .A1N(n133), 
        .Y(n343) );
  AOI2BB2XLM U248 ( .B0(n136), .B1(n149), .A0N(\Register[7][7] ), .A1N(n136), 
        .Y(n342) );
  AOI2BB2XLM U249 ( .B0(n136), .B1(n150), .A0N(\Register[7][6] ), .A1N(n136), 
        .Y(n341) );
  AOI2BB2XLM U250 ( .B0(n136), .B1(n151), .A0N(\Register[7][5] ), .A1N(n136), 
        .Y(n340) );
  AOI2BB2XLM U251 ( .B0(n136), .B1(n152), .A0N(\Register[7][4] ), .A1N(n136), 
        .Y(n339) );
  AOI2BB2XLM U252 ( .B0(n136), .B1(n153), .A0N(\Register[7][3] ), .A1N(n136), 
        .Y(n338) );
  AOI2BB2XLM U253 ( .B0(n136), .B1(n154), .A0N(\Register[7][2] ), .A1N(n136), 
        .Y(n337) );
  AOI2BB2XLM U254 ( .B0(n136), .B1(n155), .A0N(\Register[7][1] ), .A1N(n136), 
        .Y(n336) );
  AOI2BB2XLM U255 ( .B0(n136), .B1(n156), .A0N(\Register[7][0] ), .A1N(n136), 
        .Y(n335) );
  AOI2BB2XLM U256 ( .B0(n138), .B1(n149), .A0N(\Register[6][7] ), .A1N(n138), 
        .Y(n334) );
  AOI2BB2XLM U257 ( .B0(n138), .B1(n150), .A0N(\Register[6][6] ), .A1N(n138), 
        .Y(n333) );
  AOI2BB2XLM U258 ( .B0(n138), .B1(n151), .A0N(\Register[6][5] ), .A1N(n138), 
        .Y(n332) );
  AOI2BB2XLM U259 ( .B0(n138), .B1(n152), .A0N(\Register[6][4] ), .A1N(n138), 
        .Y(n331) );
  AOI2BB2XLM U260 ( .B0(n138), .B1(n153), .A0N(\Register[6][3] ), .A1N(n138), 
        .Y(n330) );
  AOI2BB2XLM U261 ( .B0(n138), .B1(n154), .A0N(\Register[6][2] ), .A1N(n138), 
        .Y(n329) );
  AOI2BB2XLM U262 ( .B0(n138), .B1(n155), .A0N(\Register[6][1] ), .A1N(n138), 
        .Y(n328) );
  AOI2BB2XLM U263 ( .B0(n138), .B1(n156), .A0N(\Register[6][0] ), .A1N(n138), 
        .Y(n327) );
  AOI2BB2XLM U264 ( .B0(n139), .B1(n149), .A0N(\Register[5][7] ), .A1N(n139), 
        .Y(n326) );
  AOI2BB2XLM U265 ( .B0(n139), .B1(n150), .A0N(\Register[5][6] ), .A1N(n139), 
        .Y(n325) );
  AOI2BB2XLM U266 ( .B0(n139), .B1(n151), .A0N(\Register[5][5] ), .A1N(n139), 
        .Y(n324) );
  AOI2BB2XLM U267 ( .B0(n139), .B1(n152), .A0N(\Register[5][4] ), .A1N(n139), 
        .Y(n323) );
  AOI2BB2XLM U268 ( .B0(n139), .B1(n153), .A0N(\Register[5][3] ), .A1N(n139), 
        .Y(n322) );
  AOI2BB2XLM U269 ( .B0(n139), .B1(n154), .A0N(\Register[5][2] ), .A1N(n139), 
        .Y(n321) );
  AOI2BB2XLM U270 ( .B0(n139), .B1(n155), .A0N(\Register[5][1] ), .A1N(n139), 
        .Y(n320) );
  AOI2BB2XLM U271 ( .B0(n139), .B1(n156), .A0N(\Register[5][0] ), .A1N(n139), 
        .Y(n319) );
  AOI2BB2XLM U272 ( .B0(n141), .B1(n149), .A0N(\Register[4][7] ), .A1N(n141), 
        .Y(n318) );
  AOI2BB2XLM U273 ( .B0(n141), .B1(n150), .A0N(\Register[4][6] ), .A1N(n141), 
        .Y(n317) );
  AOI2BB2XLM U274 ( .B0(n141), .B1(n151), .A0N(\Register[4][5] ), .A1N(n141), 
        .Y(n316) );
  AOI2BB2XLM U275 ( .B0(n141), .B1(n152), .A0N(\Register[4][4] ), .A1N(n141), 
        .Y(n315) );
  AOI2BB2XLM U276 ( .B0(n141), .B1(n153), .A0N(\Register[4][3] ), .A1N(n141), 
        .Y(n314) );
  AOI2BB2XLM U277 ( .B0(n141), .B1(n154), .A0N(\Register[4][2] ), .A1N(n141), 
        .Y(n313) );
  AOI2BB2XLM U278 ( .B0(n141), .B1(n155), .A0N(\Register[4][1] ), .A1N(n141), 
        .Y(n312) );
  AOI2BB2XLM U279 ( .B0(n141), .B1(n156), .A0N(\Register[4][0] ), .A1N(n141), 
        .Y(n311) );
  AOI2BB2XLM U280 ( .B0(n143), .B1(n149), .A0N(REG3[7]), .A1N(n143), .Y(n310)
         );
  AOI2BB2XLM U281 ( .B0(n143), .B1(n150), .A0N(REG3[6]), .A1N(n143), .Y(n309)
         );
  AOI2BB2XLM U282 ( .B0(n143), .B1(n151), .A0N(REG3[5]), .A1N(n143), .Y(n308)
         );
  AOI2BB2XLM U283 ( .B0(n143), .B1(n152), .A0N(REG3[4]), .A1N(n143), .Y(n307)
         );
  AOI2BB2XLM U284 ( .B0(n143), .B1(n153), .A0N(REG3[3]), .A1N(n143), .Y(n306)
         );
  AOI2BB2XLM U285 ( .B0(n143), .B1(n154), .A0N(REG3[2]), .A1N(n143), .Y(n305)
         );
  AOI2BB2XLM U286 ( .B0(n143), .B1(n155), .A0N(REG3[1]), .A1N(n143), .Y(n304)
         );
  AOI2BB2XLM U287 ( .B0(n143), .B1(n156), .A0N(REG3[0]), .A1N(n143), .Y(n303)
         );
  AOI2BB2XLM U288 ( .B0(n146), .B1(n149), .A0N(REG2[7]), .A1N(n146), .Y(n302)
         );
  AOI2BB2XLM U289 ( .B0(n146), .B1(n150), .A0N(REG2[6]), .A1N(n146), .Y(n301)
         );
  AOI2BB2XLM U290 ( .B0(n146), .B1(n151), .A0N(REG2[5]), .A1N(n146), .Y(n300)
         );
  AOI2BB2XLM U291 ( .B0(n146), .B1(n152), .A0N(REG2[4]), .A1N(n146), .Y(n299)
         );
  AOI2BB2XLM U292 ( .B0(n146), .B1(n153), .A0N(REG2[3]), .A1N(n146), .Y(n298)
         );
  AOI2BB2XLM U293 ( .B0(n146), .B1(n154), .A0N(REG2[2]), .A1N(n146), .Y(n297)
         );
  AOI2BB2XLM U294 ( .B0(n146), .B1(n155), .A0N(REG2[1]), .A1N(n146), .Y(n296)
         );
  AOI2BB2XLM U295 ( .B0(n146), .B1(n156), .A0N(REG2[0]), .A1N(n146), .Y(n295)
         );
  AOI2BB2XLM U296 ( .B0(n157), .B1(n149), .A0N(REG1[7]), .A1N(n157), .Y(n294)
         );
  AOI2BB2XLM U297 ( .B0(n157), .B1(n150), .A0N(REG1[6]), .A1N(n157), .Y(n293)
         );
  AOI2BB2XLM U298 ( .B0(n157), .B1(n151), .A0N(REG1[5]), .A1N(n157), .Y(n292)
         );
  AOI2BB2XLM U299 ( .B0(n157), .B1(n152), .A0N(REG1[4]), .A1N(n157), .Y(n291)
         );
  AOI2BB2XLM U300 ( .B0(n157), .B1(n153), .A0N(REG1[3]), .A1N(n157), .Y(n290)
         );
  AOI2BB2XLM U301 ( .B0(n157), .B1(n154), .A0N(REG1[2]), .A1N(n157), .Y(n289)
         );
  AOI2BB2XLM U302 ( .B0(n157), .B1(n155), .A0N(REG1[1]), .A1N(n157), .Y(n288)
         );
  AOI2BB2XLM U303 ( .B0(n157), .B1(n156), .A0N(REG1[0]), .A1N(n157), .Y(n287)
         );
  CLKBUFX1M U306 ( .A(test_se), .Y(n179) );
  CLKBUFX1M U307 ( .A(test_se), .Y(n180) );
  CLKBUFX1M U308 ( .A(test_se), .Y(n181) );
  SDFFSQX1M \Register_reg[3][5]  ( .D(n308), .SI(REG3[4]), .SE(n181), .CK(CLK), 
        .SN(RST), .Q(REG3[5]) );
  SDFFSQX1M \Register_reg[2][7]  ( .D(n302), .SI(REG2[6]), .SE(n180), .CK(CLK), 
        .SN(RST), .Q(REG2[7]) );
  SDFFSQX1M \Register_reg[2][0]  ( .D(n295), .SI(REG1[7]), .SE(n179), .CK(CLK), 
        .SN(RST), .Q(REG2[0]) );
  SEDFFX1M \RdData_reg[7]  ( .D(n109), .SI(RdData[6]), .E(n108), .SE(test_se), 
        .CK(CLK), .Q(RdData[7]) );
  SEDFFX1M \RdData_reg[6]  ( .D(n81), .SI(RdData[5]), .E(n108), .SE(n181), 
        .CK(CLK), .Q(RdData[6]) );
  SEDFFX1M \RdData_reg[5]  ( .D(n70), .SI(RdData[4]), .E(n108), .SE(n180), 
        .CK(CLK), .Q(RdData[5]) );
  SEDFFX1M \RdData_reg[4]  ( .D(n59), .SI(RdData[3]), .E(n108), .SE(n179), 
        .CK(CLK), .Q(RdData[4]) );
  SEDFFX1M \RdData_reg[3]  ( .D(n48), .SI(RdData[2]), .E(n108), .SE(test_se), 
        .CK(CLK), .Q(RdData[3]) );
  SEDFFX1M \RdData_reg[2]  ( .D(n37), .SI(RdData[1]), .E(n108), .SE(n181), 
        .CK(CLK), .Q(RdData[2]) );
  SEDFFX1M \RdData_reg[1]  ( .D(n26), .SI(RdData[0]), .E(n108), .SE(n180), 
        .CK(CLK), .Q(RdData[1]) );
  SEDFFX1M \RdData_reg[0]  ( .D(n15), .SI(RdData_Vaild), .E(n108), .SE(n179), 
        .CK(CLK), .Q(RdData[0]) );
  SDFFRX1M \Register_reg[0][4]  ( .D(n283), .SI(REG0[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG0[4]), .QN(n112) );
  SDFFRQX2M \Register_reg[13][7]  ( .D(n390), .SI(\Register[13][6] ), .SE(n180), .CK(CLK), .RN(RST), .Q(\Register[13][7] ) );
  INVXLM U3 ( .A(Address[0]), .Y(n2) );
  INVXLM U4 ( .A(n1), .Y(n148) );
  NOR2BXLM U11 ( .AN(WR_En), .B(RD_EN), .Y(n134) );
  INVXLM U35 ( .A(WrData[0]), .Y(n156) );
endmodule


module ALU_test_1 ( CLK, RST, A, B, ALU_OUT, ALU_FUNC, Enable, OUT_VALID, 
        test_si1, test_so2, test_so1, test_se );
  input [7:0] A;
  input [7:0] B;
  output [15:0] ALU_OUT;
  input [3:0] ALU_FUNC;
  input CLK, RST, Enable, test_si1, test_se;
  output OUT_VALID, test_so2, test_so1;
  wire   \VALID_REG[0] , N169, \C5/DATA14_0 , \C5/DATA14_1 , \C5/DATA14_2 ,
         \C5/DATA14_3 , \C5/DATA14_4 , \C5/DATA14_5 , \C5/DATA14_6 ,
         \C5/DATA14_7 , n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, \DP_OP_25J1_122_8721/n43 ,
         \DP_OP_25J1_122_8721/n29 , \DP_OP_25J1_122_8721/n28 ,
         \DP_OP_25J1_122_8721/n27 , \DP_OP_25J1_122_8721/n26 ,
         \DP_OP_25J1_122_8721/n25 , \DP_OP_25J1_122_8721/n24 ,
         \DP_OP_25J1_122_8721/n23 , \DP_OP_25J1_122_8721/n22 ,
         \DP_OP_25J1_122_8721/n16 , \DP_OP_25J1_122_8721/n15 ,
         \DP_OP_25J1_122_8721/n14 , \DP_OP_25J1_122_8721/n13 ,
         \DP_OP_25J1_122_8721/n12 , \DP_OP_25J1_122_8721/n11 ,
         \DP_OP_25J1_122_8721/n10 , \DP_OP_25J1_122_8721/n9 , \intadd_0/A[5] ,
         \intadd_0/A[4] , \intadd_0/A[3] , \intadd_0/A[2] , \intadd_0/A[0] ,
         \intadd_0/B[4] , \intadd_0/B[3] , \intadd_0/B[2] , \intadd_0/SUM[5] ,
         \intadd_0/SUM[4] , \intadd_0/SUM[3] , \intadd_0/SUM[2] ,
         \intadd_0/SUM[1] , \intadd_0/SUM[0] , \intadd_0/n6 , \intadd_0/n5 ,
         \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 ,
         \intadd_1/A[3] , \intadd_1/A[2] , \intadd_1/A[1] , \intadd_1/A[0] ,
         \intadd_1/B[3] , \intadd_1/B[2] , \intadd_1/SUM[1] ,
         \intadd_1/SUM[0] , \intadd_1/n4 , \intadd_1/n3 , \intadd_1/n2 ,
         \intadd_1/n1 , \intadd_2/A[3] , \intadd_2/A[2] , \intadd_2/A[1] ,
         \intadd_2/B[3] , \intadd_2/B[2] , \intadd_2/SUM[3] ,
         \intadd_2/SUM[2] , \intadd_2/SUM[1] , \intadd_2/SUM[0] ,
         \intadd_2/n4 , \intadd_2/n3 , \intadd_2/n2 , \intadd_2/n1 ,
         \intadd_3/A[3] , \intadd_3/A[2] , \intadd_3/A[1] , \intadd_3/A[0] ,
         \intadd_3/B[3] , \intadd_3/SUM[3] , \intadd_3/SUM[2] ,
         \intadd_3/SUM[1] , \intadd_3/SUM[0] , \intadd_3/n4 , \intadd_3/n3 ,
         \intadd_3/n2 , \intadd_3/n1 , \intadd_4/A[2] , \intadd_4/A[1] ,
         \intadd_4/A[0] , \intadd_4/B[2] , \intadd_4/B[0] , \intadd_4/SUM[2] ,
         \intadd_4/SUM[1] , \intadd_4/SUM[0] , \intadd_4/n3 , \intadd_4/n2 ,
         \intadd_4/n1 , \intadd_5/A[1] , \intadd_5/A[0] , \intadd_5/B[0] ,
         \intadd_5/SUM[0] , \intadd_5/n3 , \intadd_5/n2 , \intadd_5/n1 ,
         \intadd_6/A[1] , \intadd_6/B[2] , \intadd_6/n3 , \intadd_6/n2 ,
         \intadd_6/n1 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535;
  wire   [7:0] ALU_OP_1;
  wire   [7:0] ALU_OP_2;
  wire   [15:0] ALU_OUT_REG;
  assign test_so1 = ALU_OUT_REG[15];
  assign test_so2 = n516;

  SDFFRQX1M \ALU_OP_2_reg[0]  ( .D(B[0]), .SI(n425), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_2[0]) );
  SDFFRQX1M \VALID_REG_reg[0]  ( .D(N169), .SI(B[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\VALID_REG[0] ) );
  SDFFRQX1M \ALU_OUT_REG_reg[15]  ( .D(n173), .SI(ALU_OUT_REG[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[15]) );
  SDFFRQX1M \ALU_OUT_REG_reg[14]  ( .D(n172), .SI(ALU_OUT_REG[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[14]) );
  SDFFRQX1M \ALU_OUT_REG_reg[13]  ( .D(n171), .SI(ALU_OUT_REG[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[13]) );
  SDFFRQX1M \ALU_OUT_REG_reg[12]  ( .D(n170), .SI(ALU_OUT_REG[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[12]) );
  SDFFRQX1M \ALU_OUT_REG_reg[11]  ( .D(n169), .SI(ALU_OUT_REG[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[11]) );
  SDFFRQX1M \ALU_OUT_REG_reg[10]  ( .D(n168), .SI(ALU_OUT_REG[9]), .SE(test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[10]) );
  SDFFRQX1M \ALU_OUT_REG_reg[9]  ( .D(n167), .SI(ALU_OUT_REG[8]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[9]) );
  SDFFRQX1M \ALU_OUT_REG_reg[8]  ( .D(n166), .SI(ALU_OUT_REG[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[8]) );
  SDFFRQX1M \ALU_OUT_REG_reg[7]  ( .D(n165), .SI(ALU_OUT_REG[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[7]) );
  SDFFRQX1M \ALU_OUT_REG_reg[6]  ( .D(n164), .SI(ALU_OUT_REG[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[6]) );
  SDFFRQX1M \ALU_OUT_REG_reg[5]  ( .D(n163), .SI(ALU_OUT_REG[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[5]) );
  SDFFRQX1M \ALU_OUT_REG_reg[4]  ( .D(n162), .SI(ALU_OUT_REG[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[4]) );
  SDFFRQX1M \ALU_OUT_REG_reg[3]  ( .D(n161), .SI(ALU_OUT_REG[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[3]) );
  SDFFRQX1M \ALU_OUT_REG_reg[2]  ( .D(n160), .SI(ALU_OUT_REG[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[2]) );
  SDFFRQX1M \ALU_OUT_REG_reg[1]  ( .D(n159), .SI(ALU_OUT_REG[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[1]) );
  SDFFRQX1M \ALU_OUT_REG_reg[0]  ( .D(n158), .SI(n388), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[0]) );
  SDFFRQX1M \ALU_OP_1_reg[4]  ( .D(A[4]), .SI(n291), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_1[4]) );
  SDFFRQX1M \ALU_OP_1_reg[3]  ( .D(A[3]), .SI(ALU_OP_1[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OP_1[3]) );
  SDFFRQX1M \ALU_OP_1_reg[2]  ( .D(A[2]), .SI(n446), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_1[2]) );
  SDFFRQX1M \ALU_OP_1_reg[1]  ( .D(A[1]), .SI(n280), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_1[1]) );
  SDFFRQX1M \ALU_OP_2_reg[3]  ( .D(B[3]), .SI(ALU_OP_2[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OP_2[3]) );
  SDFFRQX1M \ALU_OP_1_reg[5]  ( .D(A[5]), .SI(n436), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_1[5]) );
  ADDFX1M \intadd_4/U3  ( .A(\intadd_4/A[1] ), .B(\intadd_3/SUM[0] ), .CI(
        \intadd_4/n3 ), .CO(\intadd_4/n2 ), .S(\intadd_4/SUM[1] ) );
  ADDFX1M \intadd_0/U4  ( .A(\intadd_0/A[3] ), .B(\intadd_0/B[3] ), .CI(
        \intadd_0/n4 ), .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[3] ) );
  ADDFX1M \intadd_5/U4  ( .A(\intadd_5/A[0] ), .B(\intadd_5/B[0] ), .CI(n527), 
        .CO(\intadd_5/n3 ), .S(\intadd_5/SUM[0] ) );
  ADDFX1M \DP_OP_25J1_122_8721/U20  ( .A(\DP_OP_25J1_122_8721/n28 ), .B(
        ALU_OP_1[1]), .CI(\DP_OP_25J1_122_8721/n16 ), .CO(
        \DP_OP_25J1_122_8721/n15 ), .S(\C5/DATA14_1 ) );
  ADDFX1M \DP_OP_25J1_122_8721/U19  ( .A(\DP_OP_25J1_122_8721/n27 ), .B(
        ALU_OP_1[2]), .CI(\DP_OP_25J1_122_8721/n15 ), .CO(
        \DP_OP_25J1_122_8721/n14 ), .S(\C5/DATA14_2 ) );
  ADDFX1M \intadd_2/U5  ( .A(n533), .B(n524), .CI(n518), .CO(\intadd_2/n4 ), 
        .S(\intadd_2/SUM[0] ) );
  ADDFX1M \intadd_2/U4  ( .A(\intadd_2/A[1] ), .B(n535), .CI(\intadd_2/n4 ), 
        .CO(\intadd_2/n3 ), .S(\intadd_2/SUM[1] ) );
  ADDFX1M \intadd_6/U4  ( .A(n523), .B(n534), .CI(n517), .CO(\intadd_6/n3 ), 
        .S(\intadd_1/A[2] ) );
  ADDFX1M \intadd_6/U2  ( .A(\intadd_2/SUM[1] ), .B(\intadd_6/B[2] ), .CI(
        \intadd_6/n2 ), .CO(\intadd_6/n1 ), .S(\intadd_0/A[5] ) );
  ADDFX1M \intadd_1/U4  ( .A(\intadd_1/A[1] ), .B(n531), .CI(\intadd_1/n4 ), 
        .CO(\intadd_1/n3 ), .S(\intadd_1/SUM[1] ) );
  ADDFX1M \intadd_1/U3  ( .A(\intadd_1/A[2] ), .B(\intadd_1/B[2] ), .CI(
        \intadd_1/n3 ), .CO(\intadd_1/n2 ), .S(\intadd_0/A[3] ) );
  ADDFX1M \intadd_0/U7  ( .A(\intadd_0/A[0] ), .B(n522), .CI(n528), .CO(
        \intadd_0/n6 ), .S(\intadd_0/SUM[0] ) );
  ADDFX1M \intadd_0/U5  ( .A(\intadd_0/A[2] ), .B(\intadd_0/B[2] ), .CI(
        \intadd_0/n5 ), .CO(\intadd_0/n4 ), .S(\intadd_0/SUM[2] ) );
  ADDFX1M \intadd_5/U3  ( .A(\intadd_5/A[1] ), .B(\intadd_1/SUM[0] ), .CI(
        \intadd_5/n3 ), .CO(\intadd_5/n2 ), .S(\intadd_3/A[2] ) );
  ADDFX1M \intadd_5/U2  ( .A(\intadd_0/SUM[2] ), .B(\intadd_1/SUM[1] ), .CI(
        \intadd_5/n2 ), .CO(\intadd_5/n1 ), .S(\intadd_3/A[3] ) );
  ADDFX1M \intadd_3/U5  ( .A(\intadd_3/A[0] ), .B(n526), .CI(n519), .CO(
        \intadd_3/n4 ), .S(\intadd_3/SUM[0] ) );
  ADDFX1M \intadd_3/U4  ( .A(\intadd_3/A[1] ), .B(n530), .CI(\intadd_3/n4 ), 
        .CO(\intadd_3/n3 ), .S(\intadd_3/SUM[1] ) );
  ADDFX1M \intadd_4/U4  ( .A(\intadd_4/A[0] ), .B(\intadd_4/B[0] ), .CI(n525), 
        .CO(\intadd_4/n3 ), .S(\intadd_4/SUM[0] ) );
  ADDFX1M \intadd_3/U2  ( .A(\intadd_3/A[3] ), .B(\intadd_3/B[3] ), .CI(
        \intadd_3/n2 ), .CO(\intadd_3/n1 ), .S(\intadd_3/SUM[3] ) );
  ADDFX1M \intadd_0/U3  ( .A(\intadd_0/A[4] ), .B(\intadd_0/B[4] ), .CI(
        \intadd_0/n3 ), .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[4] ) );
  ADDFX1M \intadd_2/U3  ( .A(\intadd_2/A[2] ), .B(\intadd_2/B[2] ), .CI(
        \intadd_2/n3 ), .CO(\intadd_2/n2 ), .S(\intadd_2/SUM[2] ) );
  ADDFX1M \intadd_2/U2  ( .A(\intadd_2/A[3] ), .B(\intadd_2/B[3] ), .CI(
        \intadd_2/n2 ), .CO(\intadd_2/n1 ), .S(\intadd_2/SUM[3] ) );
  ADDFX1M \DP_OP_25J1_122_8721/U18  ( .A(\DP_OP_25J1_122_8721/n26 ), .B(
        ALU_OP_1[3]), .CI(\DP_OP_25J1_122_8721/n14 ), .CO(
        \DP_OP_25J1_122_8721/n13 ), .S(\C5/DATA14_3 ) );
  ADDFX1M \DP_OP_25J1_122_8721/U14  ( .A(\DP_OP_25J1_122_8721/n22 ), .B(
        ALU_OP_1[7]), .CI(\DP_OP_25J1_122_8721/n10 ), .CO(
        \DP_OP_25J1_122_8721/n9 ), .S(\C5/DATA14_7 ) );
  ADDFX1M \DP_OP_25J1_122_8721/U15  ( .A(\DP_OP_25J1_122_8721/n23 ), .B(
        ALU_OP_1[6]), .CI(\DP_OP_25J1_122_8721/n11 ), .CO(
        \DP_OP_25J1_122_8721/n10 ), .S(\C5/DATA14_6 ) );
  ADDFX1M \DP_OP_25J1_122_8721/U17  ( .A(\DP_OP_25J1_122_8721/n25 ), .B(
        ALU_OP_1[4]), .CI(\DP_OP_25J1_122_8721/n13 ), .CO(
        \DP_OP_25J1_122_8721/n12 ), .S(\C5/DATA14_4 ) );
  SDFFRQX1M \ALU_OP_2_reg[5]  ( .D(B[5]), .SI(n398), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_2[5]) );
  SDFFRQX1M \ALU_OP_2_reg[4]  ( .D(B[4]), .SI(n414), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_2[4]) );
  SDFFRQX1M \ALU_OP_1_reg[6]  ( .D(A[6]), .SI(n248), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_1[6]) );
  SDFFRQX1M \ALU_OP_1_reg[7]  ( .D(A[7]), .SI(ALU_OP_1[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OP_1[7]) );
  SDFFRQX1M \ALU_OP_2_reg[7]  ( .D(B[7]), .SI(n435), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_2[7]) );
  SDFFRQX1M \ALU_OP_2_reg[2]  ( .D(B[2]), .SI(n426), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_2[2]) );
  SDFFRQX1M \ALU_OP_2_reg[1]  ( .D(B[1]), .SI(n194), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_2[1]) );
  SDFFRQX1M \ALU_OP_2_reg[6]  ( .D(B[6]), .SI(n231), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_2[6]) );
  OAI21X2M U3 ( .A0(n129), .A1(n182), .B0(n183), .Y(n189) );
  OR2X2M U4 ( .A(ALU_OP_2[5]), .B(ALU_OP_2[6]), .Y(n5) );
  INVX2M U5 ( .A(ALU_OP_2[0]), .Y(n194) );
  NOR2XLM U6 ( .A(n58), .B(n323), .Y(n72) );
  OAI21X2M U7 ( .A0(n226), .A1(n222), .B0(n223), .Y(n148) );
  OAI2BB1XLM U8 ( .A0N(n118), .A1N(n93), .B0(n91), .Y(n92) );
  AOI211X2M U9 ( .A0(n278), .A1(n449), .B0(n277), .C0(n276), .Y(n288) );
  OA21XLM U10 ( .A0(n197), .A1(n196), .B0(n195), .Y(n200) );
  NAND2XLM U11 ( .A(n230), .B(n398), .Y(n234) );
  NOR2X1M U13 ( .A(n232), .B(n231), .Y(n235) );
  OAI21X1M U15 ( .A0(n196), .A1(n194), .B0(ALU_OP_1[1]), .Y(n195) );
  CLKMX2X2M U16 ( .A(n192), .B(n191), .S0(n243), .Y(n202) );
  CLKMX2X2M U17 ( .A(n187), .B(n186), .S0(n243), .Y(n201) );
  CLKMX2X2M U20 ( .A(n215), .B(n214), .S0(n243), .Y(n230) );
  INVX1M U21 ( .A(n243), .Y(n196) );
  AOI21X2M U23 ( .A0(n189), .A1(n1), .B0(n134), .Y(n213) );
  NAND2X1M U24 ( .A(n228), .B(n231), .Y(n223) );
  NOR2X1M U25 ( .A(n228), .B(n231), .Y(n222) );
  OR2X1M U26 ( .A(n220), .B(n398), .Y(n2) );
  NAND2X1M U28 ( .A(n145), .B(n450), .Y(n147) );
  OAI21X2M U29 ( .A0(ALU_OP_2[3]), .A1(n141), .B0(n116), .Y(n144) );
  OAI21X1M U30 ( .A0(ALU_OP_2[1]), .A1(n132), .B0(n108), .Y(n135) );
  OAI21X1M U31 ( .A0(n107), .A1(n426), .B0(n130), .Y(n108) );
  INVX1M U32 ( .A(n107), .Y(n132) );
  INVX1M U33 ( .A(n115), .Y(n141) );
  OAI21X1M U34 ( .A0(ALU_OP_2[2]), .A1(n102), .B0(n81), .Y(n95) );
  OAI21X1M U35 ( .A0(n414), .A1(n72), .B0(n69), .Y(n71) );
  OAI21X1M U36 ( .A0(ALU_OP_2[1]), .A1(n67), .B0(n66), .Y(n82) );
  OAI21X1M U37 ( .A0(n426), .A1(n76), .B0(n78), .Y(n66) );
  OAI21X1M U38 ( .A0(n65), .A1(n64), .B0(n63), .Y(n78) );
  XNOR2X1M U39 ( .A(n62), .B(n61), .Y(n85) );
  INVX1M U41 ( .A(n323), .Y(n65) );
  OAI2BB1X2M U42 ( .A0N(n58), .A1N(n56), .B0(n54), .Y(n55) );
  OAI21X1M U43 ( .A0(n60), .A1(n426), .B0(n52), .Y(n56) );
  NOR2X1M U44 ( .A(n53), .B(n6), .Y(n43) );
  NOR2X1M U45 ( .A(n3), .B(n150), .Y(\DP_OP_25J1_122_8721/n43 ) );
  NAND2X1M U46 ( .A(n48), .B(n423), .Y(n53) );
  NOR2X1M U47 ( .A(n90), .B(ALU_OP_2[3]), .Y(n48) );
  NAND2X1M U48 ( .A(n119), .B(n398), .Y(n90) );
  INVX1M U49 ( .A(Enable), .Y(n514) );
  AND2X1M U52 ( .A(ALU_OP_1[0]), .B(ALU_OP_2[5]), .Y(n519) );
  AND2X1M U53 ( .A(ALU_OP_1[2]), .B(ALU_OP_2[5]), .Y(n532) );
  AND2X1M U54 ( .A(ALU_OP_1[1]), .B(ALU_OP_2[7]), .Y(n482) );
  AND2X1M U55 ( .A(ALU_OP_1[0]), .B(ALU_OP_2[6]), .Y(n528) );
  AND2X1M U56 ( .A(ALU_OP_1[3]), .B(ALU_OP_2[2]), .Y(n526) );
  AND2X1M U57 ( .A(ALU_OP_1[2]), .B(ALU_OP_2[4]), .Y(n530) );
  AND2X1M U58 ( .A(ALU_OP_1[4]), .B(ALU_OP_2[2]), .Y(n522) );
  AND2X1M U59 ( .A(ALU_OP_1[6]), .B(ALU_OP_2[3]), .Y(n534) );
  AND2X1M U60 ( .A(ALU_OP_1[3]), .B(ALU_OP_2[4]), .Y(n521) );
  AND2X1M U61 ( .A(ALU_OP_1[2]), .B(ALU_OP_2[6]), .Y(n531) );
  INVX1M U62 ( .A(ALU_OP_1[6]), .Y(n424) );
  AND2X1M U63 ( .A(ALU_OP_1[5]), .B(ALU_OP_2[2]), .Y(n529) );
  AND2X1M U64 ( .A(ALU_OP_1[0]), .B(ALU_OP_2[7]), .Y(n520) );
  AND2X1M U65 ( .A(ALU_OP_1[1]), .B(ALU_OP_2[5]), .Y(n527) );
  OAI21X4M U66 ( .A0(n213), .A1(n209), .B0(n210), .Y(n218) );
  OAI21BX4M U70 ( .A0(n121), .A1(n125), .B0N(n120), .Y(n122) );
  OAI2BB2X2M U71 ( .B0(ALU_OP_2[4]), .B1(n146), .A0N(n117), .A1N(n144), .Y(
        n121) );
  AO21X2M U72 ( .A0(n247), .A1(n25), .B0(n246), .Y(n278) );
  OAI21X2M U73 ( .A0(n111), .A1(n426), .B0(n75), .Y(n102) );
  AO21X2M U74 ( .A0(n111), .A1(n426), .B0(n109), .Y(n75) );
  NAND2XLM U75 ( .A(n224), .B(n223), .Y(n225) );
  NOR2XLM U77 ( .A(n450), .B(n126), .Y(n244) );
  NOR2XLM U78 ( .A(n493), .B(\intadd_4/n1 ), .Y(n495) );
  XOR2XLM U79 ( .A(n112), .B(n111), .Y(n137) );
  XNOR2XLM U80 ( .A(n187), .B(n185), .Y(n186) );
  XOR2XLM U81 ( .A(n142), .B(n141), .Y(n220) );
  XNOR2XLM U82 ( .A(n64), .B(ALU_OP_2[1]), .Y(n59) );
  CLKINVX1M U83 ( .A(n76), .Y(n67) );
  XOR2XLM U84 ( .A(n99), .B(n98), .Y(n146) );
  NAND2XLM U85 ( .A(n371), .B(n97), .Y(n99) );
  CLKINVX1M U86 ( .A(n95), .Y(n96) );
  NOR2XLM U87 ( .A(n408), .B(n404), .Y(\intadd_5/B[0] ) );
  NAND2XLM U88 ( .A(ALU_OP_1[2]), .B(ALU_OP_2[2]), .Y(n441) );
  OAI2BB1XLM U89 ( .A0N(\intadd_3/SUM[1] ), .A1N(\intadd_5/SUM[0] ), .B0(n10), 
        .Y(n493) );
  OAI21XLM U90 ( .A0(\intadd_3/SUM[1] ), .A1(\intadd_5/SUM[0] ), .B0(
        \intadd_0/SUM[0] ), .Y(n10) );
  NOR2XLM U91 ( .A(\intadd_5/n1 ), .B(\intadd_3/n1 ), .Y(n497) );
  OAI21XLM U92 ( .A0(n242), .A1(n241), .B0(n240), .Y(n247) );
  NOR2BXLM U93 ( .AN(n244), .B(n243), .Y(n245) );
  OAI21BXLM U94 ( .A0(n492), .A1(n491), .B0N(n490), .Y(\intadd_4/B[2] ) );
  XNOR2XLM U96 ( .A(n190), .B(n189), .Y(n191) );
  NAND2XLM U97 ( .A(n1), .B(n188), .Y(n190) );
  MXI2XLM U98 ( .A(n104), .B(n103), .S0(n371), .Y(n115) );
  XNOR2XLM U99 ( .A(n102), .B(n101), .Y(n103) );
  CLKINVX1M U100 ( .A(n100), .Y(n104) );
  OAI2BB1XLM U101 ( .A0N(ALU_OP_2[0]), .A1N(n323), .B0(ALU_OP_1[5]), .Y(n63)
         );
  NAND2BXLM U102 ( .AN(ALU_OP_1[4]), .B(ALU_OP_2[0]), .Y(n76) );
  NAND2BXLM U103 ( .AN(ALU_OP_1[5]), .B(ALU_OP_2[0]), .Y(n64) );
  NOR2XLM U104 ( .A(n415), .B(n485), .Y(n417) );
  NOR2XLM U105 ( .A(n436), .B(n414), .Y(n485) );
  CLKINVX1M U106 ( .A(n415), .Y(n484) );
  AOI21XLM U107 ( .A0(n418), .A1(n413), .B0(n412), .Y(\intadd_1/A[0] ) );
  NAND2XLM U108 ( .A(n2), .B(n216), .Y(n217) );
  NAND2XLM U109 ( .A(n211), .B(n210), .Y(n212) );
  AOI2BB2X2M U111 ( .B0(ALU_OP_2[2]), .B1(n85), .A0N(n82), .A1N(n68), .Y(n69)
         );
  NOR2XLM U112 ( .A(n408), .B(n418), .Y(n415) );
  AOI22XLM U113 ( .A0(ALU_OP_2[0]), .A1(ALU_OP_1[6]), .B0(ALU_OP_1[5]), .B1(
        ALU_OP_2[1]), .Y(n409) );
  NOR2XLM U114 ( .A(n336), .B(\intadd_4/SUM[0] ), .Y(n334) );
  CLKINVX1M U115 ( .A(n487), .Y(n405) );
  NAND2XLM U116 ( .A(n428), .B(n427), .Y(n502) );
  OAI22XLM U117 ( .A0(n426), .A1(n425), .B0(n424), .B1(n423), .Y(n428) );
  CLKINVX1M U118 ( .A(n216), .Y(n143) );
  NAND2XLM U119 ( .A(ALU_OP_1[3]), .B(ALU_OP_2[3]), .Y(n407) );
  AOI21XLM U120 ( .A0(n452), .A1(n451), .B0(n302), .Y(n372) );
  AOI2BB1XLM U121 ( .A0N(n451), .A1N(n452), .B0(n453), .Y(n302) );
  AOI2B1XLM U122 ( .A1N(n339), .A0(n299), .B0(n296), .Y(n373) );
  AOI21XLM U123 ( .A0(n401), .A1(n297), .B0(n338), .Y(n374) );
  NAND2XLM U124 ( .A(ALU_OP_1[3]), .B(ALU_OP_2[1]), .Y(n403) );
  CLKINVX1M U125 ( .A(n429), .Y(n503) );
  NAND2XLM U126 ( .A(ALU_OP_1[2]), .B(ALU_OP_2[3]), .Y(n488) );
  AOI21XLM U127 ( .A0(n408), .A1(n404), .B0(\intadd_5/B[0] ), .Y(
        \intadd_3/A[0] ) );
  NOR2XLM U128 ( .A(n401), .B(n404), .Y(n487) );
  OAI31XLM U129 ( .A0(n421), .A1(n427), .A2(n441), .B0(n420), .Y(
        \intadd_1/B[2] ) );
  XNOR2XLM U130 ( .A(n434), .B(n433), .Y(n420) );
  NOR2XLM U131 ( .A(\intadd_6/n1 ), .B(\intadd_0/n1 ), .Y(n506) );
  NAND3BXLM U132 ( .AN(ALU_OP_2[6]), .B(n125), .C(n388), .Y(n123) );
  OAI2BB2XLM U133 ( .B0(n495), .B1(n494), .A0N(n493), .A1N(\intadd_4/n1 ), .Y(
        \intadd_3/B[3] ) );
  CLKINVX1M U134 ( .A(\intadd_3/SUM[2] ), .Y(n494) );
  CLKINVX1M U135 ( .A(n498), .Y(n501) );
  NAND2BXLM U136 ( .AN(ALU_OP_1[2]), .B(ALU_OP_2[0]), .Y(n130) );
  XOR2XLM U137 ( .A(n133), .B(n132), .Y(n192) );
  XNOR2XLM U138 ( .A(n130), .B(ALU_OP_2[1]), .Y(n131) );
  OAI2BB1XLM U139 ( .A0N(n128), .A1N(n450), .B0(n127), .Y(n187) );
  OAI2BB1XLM U140 ( .A0N(ALU_OP_2[0]), .A1N(n450), .B0(ALU_OP_1[2]), .Y(n127)
         );
  NOR2XLM U141 ( .A(n197), .B(n426), .Y(n182) );
  NAND2XLM U142 ( .A(n197), .B(n426), .Y(n183) );
  NAND2XLM U143 ( .A(n192), .B(n423), .Y(n188) );
  OR2X1M U144 ( .A(n192), .B(n423), .Y(n1) );
  CLKINVX1M U146 ( .A(n481), .Y(n412) );
  XOR2XLM U147 ( .A(n138), .B(n137), .Y(n215) );
  CLKINVX1M U148 ( .A(n188), .Y(n134) );
  NOR2XLM U149 ( .A(n215), .B(n414), .Y(n209) );
  NAND2XLM U150 ( .A(n215), .B(n414), .Y(n210) );
  AO22XLM U151 ( .A0(n135), .A1(n114), .B0(n423), .B1(n113), .Y(n139) );
  CLKINVX1M U152 ( .A(n137), .Y(n113) );
  NAND2BXLM U153 ( .AN(ALU_OP_1[3]), .B(ALU_OP_2[0]), .Y(n109) );
  OAI2BB1XLM U154 ( .A0N(ALU_OP_2[0]), .A1N(n84), .B0(ALU_OP_1[4]), .Y(n74) );
  NOR2XLM U155 ( .A(n85), .B(ALU_OP_2[2]), .Y(n68) );
  NAND2XLM U156 ( .A(ALU_OP_1[7]), .B(ALU_OP_2[0]), .Y(n413) );
  NAND2XLM U157 ( .A(ALU_OP_1[6]), .B(ALU_OP_2[1]), .Y(n418) );
  NAND2XLM U158 ( .A(n201), .B(n423), .Y(n204) );
  NAND2XLM U159 ( .A(n202), .B(n414), .Y(n203) );
  NOR2XLM U160 ( .A(n202), .B(n414), .Y(n205) );
  NOR2XLM U161 ( .A(n201), .B(n423), .Y(n193) );
  NOR2XLM U162 ( .A(n282), .B(n426), .Y(n199) );
  NAND2XLM U163 ( .A(n282), .B(n426), .Y(n198) );
  CLKINVX1M U164 ( .A(ALU_OP_2[5]), .Y(n231) );
  NAND2XLM U165 ( .A(n220), .B(n398), .Y(n216) );
  NAND2XLM U166 ( .A(ALU_OP_1[0]), .B(ALU_OP_2[2]), .Y(n300) );
  XOR2XLM U167 ( .A(n80), .B(n79), .Y(n100) );
  XNOR2XLM U168 ( .A(n76), .B(ALU_OP_2[1]), .Y(n77) );
  XOR2XLM U169 ( .A(n87), .B(n86), .Y(n88) );
  NOR2XLM U171 ( .A(n300), .B(n301), .Y(n299) );
  AOI21XLM U172 ( .A0(ALU_OP_2[3]), .A1(ALU_OP_1[0]), .B0(n299), .Y(n307) );
  NAND2XLM U173 ( .A(ALU_OP_1[1]), .B(ALU_OP_2[2]), .Y(n306) );
  CLKINVX1M U174 ( .A(ALU_OP_1[4]), .Y(n436) );
  NOR2XLM U175 ( .A(n307), .B(n306), .Y(n337) );
  NOR2XLM U176 ( .A(n453), .B(n403), .Y(n338) );
  NAND2XLM U177 ( .A(ALU_OP_1[1]), .B(ALU_OP_2[3]), .Y(n339) );
  NAND2XLM U178 ( .A(n51), .B(n50), .Y(n52) );
  CLKINVX1M U179 ( .A(n64), .Y(n50) );
  NAND2XLM U180 ( .A(n60), .B(n426), .Y(n51) );
  NAND2XLM U181 ( .A(n47), .B(n348), .Y(n58) );
  CLKINVX1M U182 ( .A(n58), .Y(n49) );
  NAND2XLM U183 ( .A(ALU_OP_1[5]), .B(ALU_OP_2[0]), .Y(n408) );
  NAND2XLM U184 ( .A(ALU_OP_1[4]), .B(ALU_OP_2[1]), .Y(n404) );
  NAND2XLM U185 ( .A(ALU_OP_1[3]), .B(ALU_OP_2[0]), .Y(n401) );
  OAI2BB2XLM U186 ( .B0(n340), .B1(n339), .A0N(n338), .A1N(n337), .Y(n342) );
  NOR2XLM U187 ( .A(n337), .B(n338), .Y(n340) );
  NAND2XLM U188 ( .A(n46), .B(n45), .Y(n348) );
  AOI21XLM U189 ( .A0(ALU_OP_2[0]), .A1(n424), .B0(n53), .Y(n45) );
  NAND2XLM U190 ( .A(n44), .B(ALU_OP_2[1]), .Y(n46) );
  NAND2BXLM U191 ( .AN(ALU_FUNC[1]), .B(ALU_FUNC[3]), .Y(n151) );
  NAND2XLM U192 ( .A(n411), .B(n410), .Y(n481) );
  CLKINVX1M U194 ( .A(n413), .Y(n411) );
  NAND2XLM U195 ( .A(ALU_OP_1[7]), .B(ALU_OP_2[2]), .Y(n433) );
  OR2X1M U196 ( .A(n433), .B(n418), .Y(n427) );
  CLKINVX1M U197 ( .A(n427), .Y(n419) );
  OAI22XLM U198 ( .A0(n417), .A1(n486), .B0(n484), .B1(n416), .Y(
        \intadd_1/A[1] ) );
  CLKINVX1M U199 ( .A(n485), .Y(n416) );
  NOR2XLM U200 ( .A(n434), .B(n433), .Y(n478) );
  CLKINVX1M U201 ( .A(n438), .Y(n480) );
  NOR2XLM U202 ( .A(n436), .B(n435), .Y(n479) );
  NOR2XLM U203 ( .A(ALU_FUNC[2]), .B(n151), .Y(n23) );
  AOI21XLM U204 ( .A0(n239), .A1(n238), .B0(n237), .Y(n240) );
  OAI21XLM U205 ( .A0(n235), .A1(n234), .B0(n233), .Y(n239) );
  NAND2XLM U206 ( .A(n232), .B(n231), .Y(n233) );
  AOI21XLM U207 ( .A0(n208), .A1(n207), .B0(n206), .Y(n242) );
  OAI21XLM U208 ( .A0(n200), .A1(n199), .B0(n198), .Y(n207) );
  NOR2XLM U209 ( .A(n193), .B(n205), .Y(n208) );
  OAI21XLM U210 ( .A0(n205), .A1(n204), .B0(n203), .Y(n206) );
  NAND2XLM U211 ( .A(n229), .B(n238), .Y(n241) );
  NOR2XLM U212 ( .A(n221), .B(n235), .Y(n229) );
  NOR2XLM U213 ( .A(n230), .B(n398), .Y(n221) );
  NAND3BXLM U214 ( .AN(n151), .B(n150), .C(ALU_FUNC[2]), .Y(n275) );
  AOI211XLM U215 ( .A0(n270), .A1(ALU_FUNC[0]), .B0(ALU_FUNC[2]), .C0(n269), 
        .Y(n271) );
  AOI211XLM U216 ( .A0(ALU_OP_2[6]), .A1(n424), .B0(n264), .C0(n266), .Y(n268)
         );
  NAND2XLM U217 ( .A(ALU_OP_1[1]), .B(ALU_OP_2[1]), .Y(n301) );
  NAND2XLM U218 ( .A(ALU_OP_1[2]), .B(ALU_OP_2[0]), .Y(n453) );
  AOI21XLM U219 ( .A0(n301), .A1(n300), .B0(n299), .Y(n451) );
  NOR2XLM U220 ( .A(n298), .B(n301), .Y(n452) );
  NOR2XLM U221 ( .A(n371), .B(n118), .Y(n125) );
  CLKINVX1M U222 ( .A(ALU_OP_2[7]), .Y(n388) );
  OAI2BB1XLM U223 ( .A0N(ALU_OP_2[2]), .A1N(n102), .B0(n100), .Y(n81) );
  NOR2XLM U224 ( .A(n88), .B(ALU_OP_2[3]), .Y(n89) );
  NAND2XLM U227 ( .A(n72), .B(n295), .Y(n118) );
  CLKINVX1M U228 ( .A(n118), .Y(n73) );
  OR2X1M U229 ( .A(ALU_FUNC[3]), .B(ALU_FUNC[2]), .Y(n4) );
  OAI21XLM U230 ( .A0(n305), .A1(n374), .B0(n304), .Y(n335) );
  OAI21XLM U231 ( .A0(n373), .A1(n303), .B0(n372), .Y(n304) );
  XOR2XLM U232 ( .A(n337), .B(n308), .Y(n336) );
  XNOR2XLM U233 ( .A(n338), .B(n339), .Y(n308) );
  NOR2XLM U234 ( .A(n409), .B(n415), .Y(\intadd_0/A[0] ) );
  NOR2BXLM U236 ( .AN(n341), .B(n342), .Y(n492) );
  NOR2BXLM U237 ( .AN(n342), .B(n341), .Y(n490) );
  OAI22XLM U238 ( .A0(n406), .A1(n489), .B0(n405), .B1(n488), .Y(
        \intadd_3/A[1] ) );
  NOR2BXLM U239 ( .AN(n488), .B(n487), .Y(n406) );
  NAND2XLM U240 ( .A(Enable), .B(n24), .Y(n456) );
  NOR2XLM U241 ( .A(ALU_FUNC[1]), .B(n18), .Y(n20) );
  CLKINVX1M U242 ( .A(ALU_OP_2[6]), .Y(n435) );
  OAI21XLM U243 ( .A0(ALU_OP_1[7]), .A1(n194), .B0(n426), .Y(n6) );
  NOR3XLM U244 ( .A(ALU_FUNC[0]), .B(n269), .C(n18), .Y(n442) );
  NOR2XLM U245 ( .A(n16), .B(n20), .Y(n369) );
  NOR3BXLM U246 ( .AN(ALU_FUNC[2]), .B(n151), .C(n150), .Y(n366) );
  AOI21XLM U247 ( .A0(n502), .A1(n429), .B0(n504), .Y(n430) );
  OAI21XLM U248 ( .A0(n500), .A1(n498), .B0(n432), .Y(\intadd_1/B[3] ) );
  OAI21XLM U249 ( .A0(n439), .A1(n438), .B0(n437), .Y(\intadd_6/B[2] ) );
  OAI21XLM U250 ( .A0(n478), .A1(n480), .B0(n479), .Y(n437) );
  NOR2BXLM U252 ( .AN(n23), .B(n150), .Y(n16) );
  NAND2BXLM U253 ( .AN(ALU_FUNC[3]), .B(ALU_FUNC[2]), .Y(n18) );
  CLKINVX1M U254 ( .A(ALU_FUNC[1]), .Y(n269) );
  NAND2BXLM U255 ( .AN(ALU_FUNC[1]), .B(n13), .Y(n3) );
  OAI211XLM U256 ( .A0(n446), .A1(n275), .B0(n274), .C0(n273), .Y(n276) );
  NAND2XLM U257 ( .A(n442), .B(n298), .Y(n273) );
  OAI211XLM U258 ( .A0(ALU_FUNC[0]), .A1(n272), .B0(n271), .C0(ALU_FUNC[3]), 
        .Y(n274) );
  NOR4XLM U259 ( .A(n254), .B(n260), .C(n253), .D(n252), .Y(n272) );
  NOR2XLM U260 ( .A(n369), .B(n298), .Y(n277) );
  OAI31XLM U261 ( .A0(n508), .A1(ALU_OP_2[0]), .A2(ALU_OP_1[0]), .B0(n284), 
        .Y(n285) );
  AOI21XLM U262 ( .A0(n355), .A1(ALU_OP_2[0]), .B0(n283), .Y(n284) );
  OAI2BB2XLM U263 ( .B0(n456), .B1(n282), .A0N(ALU_OUT_REG[0]), .A1N(n514), 
        .Y(n283) );
  AND2X2M U264 ( .A(n149), .B(n388), .Y(n243) );
  OAI211XLM U265 ( .A0(n369), .A1(n301), .B0(n153), .C0(n152), .Y(n154) );
  NAND2XLM U266 ( .A(n366), .B(ALU_OP_1[0]), .Y(n152) );
  AOI22XLM U267 ( .A0(n443), .A1(ALU_OP_1[2]), .B0(n442), .B1(n301), .Y(n153)
         );
  MX2XLM U268 ( .A(n174), .B(n156), .S0(n426), .Y(n179) );
  OAI211XLM U270 ( .A0(n447), .A1(n446), .B0(n445), .C0(n444), .Y(n448) );
  NOR3XLM U271 ( .A(n4), .B(n150), .C(n269), .Y(n449) );
  OAI21XLM U272 ( .A0(n464), .A1(n380), .B0(n378), .Y(n379) );
  AOI21XLM U273 ( .A0(n507), .A1(n377), .B0(n376), .Y(n378) );
  OAI2BB2XLM U274 ( .B0(n375), .B1(n456), .A0N(ALU_OUT_REG[3]), .A1N(n514), 
        .Y(n376) );
  AOI211XLM U275 ( .A0(ALU_OUT_REG[4]), .A1(n514), .B0(n316), .C0(n315), .Y(
        n317) );
  AOI21XLM U276 ( .A0(n403), .A1(n402), .B0(n487), .Y(\intadd_4/B[0] ) );
  OAI21XLM U277 ( .A0(n295), .A1(n294), .B0(n293), .Y(n321) );
  OAI211XLM U278 ( .A0(n331), .A1(n464), .B0(n330), .C0(n329), .Y(n332) );
  NOR2XLM U279 ( .A(n22), .B(n21), .Y(n355) );
  OAI21XLM U280 ( .A0(n464), .A1(n28), .B0(n26), .Y(n27) );
  AOI21XLM U281 ( .A0(n15), .A1(\intadd_3/SUM[2] ), .B0(n455), .Y(n14) );
  AOI21XLM U282 ( .A0(\intadd_4/n1 ), .A1(n493), .B0(n495), .Y(n15) );
  AOI21XLM U283 ( .A0(\intadd_3/n1 ), .A1(\intadd_5/n1 ), .B0(n497), .Y(n36)
         );
  OAI2BB2XLM U284 ( .B0(n497), .B1(n496), .A0N(\intadd_5/n1 ), .A1N(
        \intadd_3/n1 ), .Y(\intadd_0/B[4] ) );
  OAI22XLM U286 ( .A0(n400), .A1(n475), .B0(n399), .B1(n477), .Y(
        \intadd_2/B[2] ) );
  AOI21XLM U287 ( .A0(\intadd_0/n1 ), .A1(\intadd_6/n1 ), .B0(n506), .Y(n40)
         );
  INVXLM U288 ( .A(n512), .Y(n347) );
  OAI2BB2XLM U289 ( .B0(n506), .B1(n505), .A0N(\intadd_6/n1 ), .A1N(
        \intadd_0/n1 ), .Y(\intadd_2/B[3] ) );
  XOR2XLM U290 ( .A(n392), .B(n421), .Y(n393) );
  OAI21XLM U291 ( .A0(n469), .A1(n471), .B0(n389), .Y(n394) );
  CLKINVX1M U292 ( .A(n508), .Y(n461) );
  NAND2XLM U293 ( .A(n13), .B(n12), .Y(n455) );
  INVXLM U294 ( .A(n11), .Y(n12) );
  NAND3BXLM U295 ( .AN(ALU_FUNC[0]), .B(ALU_FUNC[1]), .C(Enable), .Y(n11) );
  NOR2XLM U296 ( .A(\intadd_2/n1 ), .B(n394), .Y(n392) );
  NAND2XLM U297 ( .A(n19), .B(Enable), .Y(n508) );
  CLKINVX1M U298 ( .A(n16), .Y(n17) );
  NOR2XLM U299 ( .A(n3), .B(n514), .Y(n512) );
  OAI21XLM U300 ( .A0(n288), .A1(n514), .B0(n287), .Y(n158) );
  AOI21XLM U301 ( .A0(n281), .A1(n464), .B0(n280), .Y(n286) );
  OAI21XLM U302 ( .A0(n181), .A1(n514), .B0(n180), .Y(n159) );
  AOI211XLM U303 ( .A0(\C5/DATA14_1 ), .A1(n512), .B0(n179), .C0(n178), .Y(
        n180) );
  AOI21XLM U304 ( .A0(n243), .A1(n449), .B0(n154), .Y(n181) );
  OAI2BB2XLM U305 ( .B0(n177), .B1(n446), .A0N(ALU_OUT_REG[1]), .A1N(n514), 
        .Y(n178) );
  OAI21XLM U306 ( .A0(n468), .A1(n514), .B0(n467), .Y(n160) );
  AOI21XLM U307 ( .A0(\C5/DATA14_2 ), .A1(n512), .B0(n466), .Y(n467) );
  OAI211XLM U308 ( .A0(n465), .A1(n464), .B0(n463), .C0(n462), .Y(n466) );
  AOI21XLM U309 ( .A0(n461), .A1(n380), .B0(n379), .Y(n382) );
  NAND2XLM U310 ( .A(\C5/DATA14_3 ), .B(n512), .Y(n381) );
  OAI2BB1XLM U311 ( .A0N(n512), .A1N(\C5/DATA14_4 ), .B0(n322), .Y(n162) );
  AOI211XLM U312 ( .A0(n321), .A1(Enable), .B0(n320), .C0(n319), .Y(n322) );
  AOI211XLM U313 ( .A0(\intadd_4/SUM[0] ), .A1(n311), .B0(n455), .C0(n310), 
        .Y(n320) );
  OAI2B11XLM U314 ( .A1N(\C5/DATA14_5 ), .A0(n347), .B0(n346), .C0(n345), .Y(
        n163) );
  OAI21XLM U315 ( .A0(\intadd_4/SUM[1] ), .A1(n344), .B0(n343), .Y(n345) );
  AOI21XLM U316 ( .A0(n333), .A1(Enable), .B0(n332), .Y(n346) );
  AOI21XLM U317 ( .A0(n344), .A1(\intadd_4/SUM[1] ), .B0(n455), .Y(n343) );
  OAI2BB1XLM U318 ( .A0N(n512), .A1N(\C5/DATA14_6 ), .B0(n360), .Y(n164) );
  AOI21XLM U319 ( .A0(\intadd_4/SUM[2] ), .A1(n507), .B0(n359), .Y(n360) );
  OAI211XLM U320 ( .A0(n508), .A1(n358), .B0(n357), .C0(n356), .Y(n359) );
  OAI2BB1XLM U321 ( .A0N(n512), .A1N(n365), .B0(n364), .Y(n166) );
  AOI211XLM U322 ( .A0(\intadd_3/SUM[3] ), .A1(n507), .B0(n461), .C0(n363), 
        .Y(n364) );
  XNOR2XLM U323 ( .A(\DP_OP_25J1_122_8721/n9 ), .B(n361), .Y(n365) );
  OAI31XLM U324 ( .A0(n447), .A1(n425), .A2(n514), .B0(n362), .Y(n363) );
  OAI2B11XLM U325 ( .A1N(n513), .A0(n347), .B0(n38), .C0(n37), .Y(n167) );
  AOI21XLM U326 ( .A0(ALU_OUT_REG[9]), .A1(n514), .B0(n461), .Y(n38) );
  OAI21XLM U327 ( .A0(\intadd_0/SUM[3] ), .A1(n36), .B0(n35), .Y(n37) );
  AOI21XLM U328 ( .A0(n36), .A1(\intadd_0/SUM[3] ), .B0(n455), .Y(n35) );
  OAI211XLM U329 ( .A0(Enable), .A1(n510), .B0(n509), .C0(n508), .Y(n511) );
  NAND2XLM U330 ( .A(\intadd_0/SUM[4] ), .B(n507), .Y(n509) );
  OAI2BB1XLM U331 ( .A0N(n512), .A1N(n513), .B0(n34), .Y(n169) );
  AOI21XLM U332 ( .A0(\intadd_0/SUM[5] ), .A1(n507), .B0(n33), .Y(n34) );
  OAI21XLM U333 ( .A0(Enable), .A1(n289), .B0(n508), .Y(n33) );
  OAI2B11XLM U334 ( .A1N(n513), .A0(n347), .B0(n42), .C0(n41), .Y(n170) );
  AOI21XLM U335 ( .A0(ALU_OUT_REG[12]), .A1(n514), .B0(n461), .Y(n42) );
  OAI21XLM U336 ( .A0(\intadd_2/SUM[2] ), .A1(n40), .B0(n39), .Y(n41) );
  AOI21XLM U337 ( .A0(n40), .A1(\intadd_2/SUM[2] ), .B0(n455), .Y(n39) );
  OAI2BB1XLM U338 ( .A0N(n507), .A1N(\intadd_2/SUM[3] ), .B0(n386), .Y(n171)
         );
  AOI21XLM U339 ( .A0(n513), .A1(n512), .B0(n385), .Y(n386) );
  OAI21XLM U340 ( .A0(Enable), .A1(n384), .B0(n508), .Y(n385) );
  OAI211XLM U341 ( .A0(n397), .A1(n455), .B0(n396), .C0(n395), .Y(n172) );
  AOI21XLM U342 ( .A0(ALU_OUT_REG[14]), .A1(n514), .B0(n461), .Y(n396) );
  NAND2XLM U343 ( .A(n513), .B(n512), .Y(n395) );
  AOI21XLM U344 ( .A0(\intadd_2/n1 ), .A1(n394), .B0(n393), .Y(n397) );
  OAI31XLM U345 ( .A0(n392), .A1(n455), .A2(n421), .B0(n391), .Y(n173) );
  AOI21XLM U346 ( .A0(n513), .A1(n512), .B0(n390), .Y(n391) );
  OAI2BB1XLM U347 ( .A0N(ALU_OUT_REG[15]), .A1N(n514), .B0(n508), .Y(n390) );
  CLKINVX1M U348 ( .A(n121), .Y(n124) );
  NOR2XLM U349 ( .A(ALU_OP_1[7]), .B(n388), .Y(n266) );
  INVXLM U350 ( .A(n266), .Y(n25) );
  XNOR2XLM U352 ( .A(n109), .B(ALU_OP_2[1]), .Y(n110) );
  OAI21XLM U353 ( .A0(n256), .A1(n255), .B0(n457), .Y(n259) );
  AOI21XLM U354 ( .A0(n259), .A1(n258), .B0(n257), .Y(n261) );
  INVXLM U355 ( .A(n130), .Y(n128) );
  NOR2XLM U356 ( .A(n261), .B(n260), .Y(n262) );
  NAND2XLM U357 ( .A(n137), .B(ALU_OP_2[2]), .Y(n114) );
  AOI211XLM U358 ( .A0(n263), .A1(n326), .B0(n262), .C0(n327), .Y(n264) );
  NAND2XLM U359 ( .A(n446), .B(ALU_OP_2[0]), .Y(n197) );
  OAI31XLM U361 ( .A0(n266), .A1(ALU_OP_2[6]), .A2(n424), .B0(n265), .Y(n267)
         );
  CLKINVX1M U362 ( .A(ALU_OP_2[2]), .Y(n423) );
  NOR2XLM U363 ( .A(n268), .B(n267), .Y(n270) );
  NAND2BXLM U364 ( .AN(ALU_OP_1[0]), .B(ALU_OP_2[0]), .Y(n282) );
  NAND2XLM U365 ( .A(n72), .B(n414), .Y(n70) );
  NAND2XLM U366 ( .A(n25), .B(n265), .Y(n253) );
  NAND2XLM U367 ( .A(n481), .B(n483), .Y(n422) );
  NOR2XLM U368 ( .A(n425), .B(n398), .Y(n476) );
  OAI211XLM U370 ( .A0(n369), .A1(n474), .B0(n351), .C0(n350), .Y(n352) );
  AOI21XLM U371 ( .A0(n431), .A1(n503), .B0(n430), .Y(n499) );
  INVXLM U372 ( .A(n476), .Y(n399) );
  NAND2XLM U373 ( .A(ALU_OP_1[0]), .B(ALU_OP_2[0]), .Y(n298) );
  AOI211XLM U374 ( .A0(ALU_OUT_REG[2]), .A1(n514), .B0(n460), .C0(n459), .Y(
        n463) );
  CLKINVX1M U375 ( .A(ALU_FUNC[0]), .Y(n150) );
  AOI21XLM U376 ( .A0(n514), .A1(ALU_OUT_REG[5]), .B0(n328), .Y(n329) );
  OAI21XLM U377 ( .A0(n269), .A1(n18), .B0(n17), .Y(n19) );
  NOR2XLM U378 ( .A(n424), .B(n388), .Y(n470) );
  OAI21XLM U379 ( .A0(n508), .A1(n318), .B0(n317), .Y(n319) );
  OAI21XLM U380 ( .A0(\intadd_3/SUM[2] ), .A1(n15), .B0(n14), .Y(n30) );
  CLKINVX1M U381 ( .A(\DP_OP_25J1_122_8721/n43 ), .Y(n361) );
  AOI211XLM U382 ( .A0(\C5/DATA14_0 ), .A1(n512), .B0(n286), .C0(n285), .Y(
        n287) );
  OAI211XLM U383 ( .A0(n31), .A1(n514), .B0(n30), .C0(n29), .Y(n32) );
  CLKINVX1M U384 ( .A(n455), .Y(n507) );
  OAI211XLM U385 ( .A0(n383), .A1(n514), .B0(n382), .C0(n381), .Y(n161) );
  INVXLM U386 ( .A(\VALID_REG[0] ), .Y(n515) );
  NAND2XLM U387 ( .A(ALU_OP_1[7]), .B(ALU_OP_2[7]), .Y(n421) );
  INVXLM U388 ( .A(n421), .Y(n9) );
  INVXLM U389 ( .A(n369), .Y(n440) );
  INVXLM U390 ( .A(n366), .Y(n447) );
  INVX2M U391 ( .A(ALU_OP_2[4]), .Y(n398) );
  INVX2M U392 ( .A(ALU_OP_2[1]), .Y(n426) );
  AOI22XLM U393 ( .A0(n442), .A1(n421), .B0(n449), .B1(n43), .Y(n7) );
  OAI21XLM U394 ( .A0(n447), .A1(n424), .B0(n7), .Y(n8) );
  AOI21XLM U395 ( .A0(n9), .A1(n440), .B0(n8), .Y(n31) );
  NOR2XLM U396 ( .A(ALU_OP_1[7]), .B(ALU_OP_2[7]), .Y(n28) );
  INVXLM U397 ( .A(n20), .Y(n22) );
  NAND2XLM U398 ( .A(ALU_FUNC[0]), .B(Enable), .Y(n21) );
  AND2X1M U399 ( .A(n23), .B(n150), .Y(n24) );
  INVXLM U400 ( .A(n456), .Y(n279) );
  NAND2BXLM U401 ( .AN(ALU_OP_2[7]), .B(ALU_OP_1[7]), .Y(n265) );
  AOI22XLM U402 ( .A0(n514), .A1(ALU_OUT_REG[7]), .B0(n279), .B1(n253), .Y(n26) );
  AOI21XLM U403 ( .A0(n461), .A1(n28), .B0(n27), .Y(n29) );
  AO21XLM U404 ( .A0(\C5/DATA14_7 ), .A1(n512), .B0(n32), .Y(n165) );
  INVXLM U405 ( .A(ALU_OUT_REG[11]), .Y(n289) );
  OR2X1M U406 ( .A(n425), .B(n43), .Y(n44) );
  CLKINVX1M U407 ( .A(n44), .Y(n47) );
  NAND2XLM U408 ( .A(n49), .B(n48), .Y(n57) );
  OA21X2M U409 ( .A0(n348), .A1(n194), .B0(ALU_OP_1[6]), .Y(n60) );
  CLKINVX1M U410 ( .A(n53), .Y(n54) );
  OAI21X2M U411 ( .A0(n57), .A1(n56), .B0(n55), .Y(n323) );
  NAND2XLM U412 ( .A(n323), .B(n59), .Y(n62) );
  CLKINVX1M U413 ( .A(n60), .Y(n61) );
  AOI21X2M U414 ( .A0(n71), .A1(n70), .B0(n90), .Y(n84) );
  NAND2XLM U415 ( .A(n73), .B(n119), .Y(n94) );
  NAND2XLM U416 ( .A(n84), .B(n77), .Y(n80) );
  XOR2XLM U417 ( .A(n82), .B(n423), .Y(n83) );
  NAND2XLM U418 ( .A(n84), .B(n83), .Y(n87) );
  OAI22X1M U419 ( .A0(n95), .A1(n89), .B0(n98), .B1(n414), .Y(n93) );
  CLKINVX1M U420 ( .A(n90), .Y(n91) );
  OAI21X2M U421 ( .A0(n94), .A1(n93), .B0(n92), .Y(n371) );
  XOR2XLM U422 ( .A(n96), .B(ALU_OP_2[3]), .Y(n97) );
  NAND2XLM U423 ( .A(n146), .B(ALU_OP_2[4]), .Y(n117) );
  XOR2XLM U424 ( .A(n104), .B(n423), .Y(n101) );
  CLKINVX1M U425 ( .A(n371), .Y(n106) );
  OAI2BB1X2M U426 ( .A0N(ALU_OP_2[0]), .A1N(n371), .B0(ALU_OP_1[3]), .Y(n105)
         );
  OAI21X2M U427 ( .A0(n106), .A1(n109), .B0(n105), .Y(n107) );
  NAND2XLM U428 ( .A(n371), .B(n110), .Y(n112) );
  OAI21X2M U429 ( .A0(n115), .A1(n414), .B0(n139), .Y(n116) );
  CLKINVX1M U430 ( .A(n119), .Y(n120) );
  CLKINVX1M U431 ( .A(n125), .Y(n126) );
  INVXLM U432 ( .A(ALU_OP_1[1]), .Y(n446) );
  NAND2XLM U433 ( .A(n450), .B(n131), .Y(n133) );
  XOR2XLM U434 ( .A(n135), .B(n423), .Y(n136) );
  NAND2XLM U435 ( .A(n450), .B(n136), .Y(n138) );
  XOR2XLM U436 ( .A(n139), .B(n414), .Y(n140) );
  NAND2XLM U437 ( .A(n450), .B(n140), .Y(n142) );
  AOI21X2M U438 ( .A0(n218), .A1(n2), .B0(n143), .Y(n226) );
  XOR2XLM U439 ( .A(n144), .B(n398), .Y(n145) );
  ADDFX1M U440 ( .A(n244), .B(n435), .CI(n148), .CO(n149) );
  CLKINVX1M U441 ( .A(n275), .Y(n443) );
  OAI211XLM U442 ( .A0(n194), .A1(n446), .B0(n507), .C0(ALU_OP_1[0]), .Y(n155)
         );
  OAI211XLM U443 ( .A0(ALU_OP_1[1]), .A1(n456), .B0(n155), .C0(n464), .Y(n174)
         );
  NOR2XLM U444 ( .A(n508), .B(ALU_OP_1[1]), .Y(n156) );
  NAND2XLM U445 ( .A(n426), .B(ALU_OP_2[0]), .Y(n175) );
  AOI21XLM U446 ( .A0(n282), .A1(n175), .B0(n455), .Y(n176) );
  AOI211XLM U447 ( .A0(n279), .A1(n426), .B0(n176), .C0(n355), .Y(n177) );
  INVXLM U448 ( .A(n182), .Y(n184) );
  NAND2XLM U449 ( .A(n184), .B(n183), .Y(n185) );
  XOR2XLM U450 ( .A(n212), .B(n213), .Y(n214) );
  XOR2XLM U451 ( .A(n226), .B(n225), .Y(n227) );
  OR2X2M U452 ( .A(n236), .B(n435), .Y(n238) );
  NAND2BXLM U453 ( .AN(ALU_OP_1[2]), .B(ALU_OP_2[2]), .Y(n458) );
  OAI21XLM U454 ( .A0(ALU_OP_1[1]), .A1(n426), .B0(n458), .Y(n255) );
  INVXLM U455 ( .A(ALU_OP_1[5]), .Y(n248) );
  NOR2XLM U456 ( .A(ALU_OP_2[5]), .B(n248), .Y(n327) );
  NAND2XLM U457 ( .A(n423), .B(ALU_OP_1[2]), .Y(n457) );
  INVXLM U458 ( .A(n457), .Y(n249) );
  NOR3XLM U459 ( .A(n255), .B(n327), .C(n249), .Y(n251) );
  AOI2BB2XLM U461 ( .B0(n426), .B1(ALU_OP_1[1]), .A0N(ALU_OP_2[0]), .A1N(n280), 
        .Y(n256) );
  INVXLM U462 ( .A(ALU_OP_1[3]), .Y(n291) );
  NAND2XLM U463 ( .A(n291), .B(ALU_OP_2[3]), .Y(n258) );
  INVXLM U464 ( .A(n258), .Y(n250) );
  NOR2XLM U465 ( .A(ALU_OP_2[3]), .B(n291), .Y(n257) );
  NOR2XLM U466 ( .A(n250), .B(n257), .Y(n375) );
  NAND3XLM U467 ( .A(n251), .B(n256), .C(n375), .Y(n254) );
  NAND2XLM U468 ( .A(n436), .B(ALU_OP_2[4]), .Y(n314) );
  NAND2BXLM U469 ( .AN(ALU_OP_1[5]), .B(ALU_OP_2[5]), .Y(n326) );
  NAND2XLM U470 ( .A(n314), .B(n326), .Y(n260) );
  XNOR2XLM U471 ( .A(ALU_OP_1[6]), .B(ALU_OP_2[6]), .Y(n353) );
  NOR2XLM U472 ( .A(ALU_OP_2[4]), .B(n436), .Y(n263) );
  INVXLM U473 ( .A(n263), .Y(n313) );
  NAND3XLM U474 ( .A(n353), .B(n313), .C(n282), .Y(n252) );
  MXI2XLM U475 ( .A(n279), .B(n507), .S0(ALU_OP_2[0]), .Y(n281) );
  INVXLM U476 ( .A(ALU_OUT_REG[13]), .Y(n384) );
  NOR2XLM U477 ( .A(n384), .B(n516), .Y(ALU_OUT[13]) );
  NOR2XLM U478 ( .A(n289), .B(n516), .Y(ALU_OUT[11]) );
  INVXLM U479 ( .A(ALU_OUT_REG[10]), .Y(n510) );
  NOR2XLM U480 ( .A(n510), .B(n516), .Y(ALU_OUT[10]) );
  INVXLM U481 ( .A(n449), .Y(n294) );
  NAND2XLM U482 ( .A(ALU_OP_1[4]), .B(ALU_OP_2[4]), .Y(n429) );
  AOI22XLM U483 ( .A0(n443), .A1(ALU_OP_1[5]), .B0(n442), .B1(n429), .Y(n290)
         );
  OAI21XLM U484 ( .A0(n447), .A1(n291), .B0(n290), .Y(n292) );
  AOI21XLM U485 ( .A0(n503), .A1(n440), .B0(n292), .Y(n293) );
  XOR2XLM U486 ( .A(n307), .B(n306), .Y(n296) );
  INVXLM U487 ( .A(n373), .Y(n305) );
  NAND2XLM U488 ( .A(ALU_OP_1[2]), .B(ALU_OP_2[1]), .Y(n297) );
  INVXLM U489 ( .A(n374), .Y(n303) );
  INVXLM U490 ( .A(n336), .Y(n309) );
  AOI2BB2XLM U491 ( .B0(n335), .B1(n309), .A0N(n309), .A1N(n335), .Y(n311) );
  NOR2XLM U492 ( .A(\intadd_4/SUM[0] ), .B(n311), .Y(n310) );
  NOR2XLM U493 ( .A(ALU_OP_1[4]), .B(ALU_OP_2[4]), .Y(n312) );
  INVXLM U494 ( .A(n312), .Y(n318) );
  NOR2XLM U495 ( .A(n464), .B(n312), .Y(n316) );
  AOI21XLM U496 ( .A0(n314), .A1(n313), .B0(n456), .Y(n315) );
  NAND2XLM U497 ( .A(ALU_OP_1[5]), .B(ALU_OP_2[5]), .Y(n438) );
  AOI22XLM U498 ( .A0(n443), .A1(ALU_OP_1[6]), .B0(n442), .B1(n438), .Y(n325)
         );
  AOI22XLM U499 ( .A0(n366), .A1(ALU_OP_1[4]), .B0(n449), .B1(n323), .Y(n324)
         );
  OAI211XLM U500 ( .A0(n369), .A1(n438), .B0(n325), .C0(n324), .Y(n333) );
  NOR2XLM U501 ( .A(ALU_OP_1[5]), .B(ALU_OP_2[5]), .Y(n331) );
  NAND2XLM U502 ( .A(n461), .B(n331), .Y(n330) );
  AOI2B1XLM U503 ( .A1N(n327), .A0(n326), .B0(n456), .Y(n328) );
  AOI2BB2XLM U504 ( .B0(n336), .B1(\intadd_4/SUM[0] ), .A0N(n335), .A1N(n334), 
        .Y(n341) );
  NOR2XLM U505 ( .A(n492), .B(n490), .Y(n344) );
  NAND2XLM U506 ( .A(n424), .B(n435), .Y(n358) );
  NAND2XLM U507 ( .A(ALU_OP_1[6]), .B(ALU_OP_2[6]), .Y(n474) );
  AOI22XLM U508 ( .A0(n443), .A1(ALU_OP_1[7]), .B0(n442), .B1(n474), .Y(n351)
         );
  INVXLM U509 ( .A(n348), .Y(n349) );
  AOI22XLM U510 ( .A0(n366), .A1(ALU_OP_1[5]), .B0(n449), .B1(n349), .Y(n350)
         );
  NAND2XLM U511 ( .A(n352), .B(Enable), .Y(n357) );
  OAI2BB2XLM U512 ( .B0(n456), .B1(n353), .A0N(ALU_OUT_REG[6]), .A1N(n514), 
        .Y(n354) );
  AOI21XLM U513 ( .A0(n355), .A1(n358), .B0(n354), .Y(n356) );
  NAND2XLM U514 ( .A(n514), .B(ALU_OUT_REG[8]), .Y(n362) );
  AOI22XLM U515 ( .A0(n443), .A1(ALU_OP_1[4]), .B0(n442), .B1(n407), .Y(n368)
         );
  NAND2XLM U516 ( .A(n366), .B(ALU_OP_1[2]), .Y(n367) );
  OAI211XLM U517 ( .A0(n369), .A1(n407), .B0(n368), .C0(n367), .Y(n370) );
  AOI21XLM U518 ( .A0(n371), .A1(n449), .B0(n370), .Y(n383) );
  NOR2XLM U519 ( .A(ALU_OP_1[3]), .B(ALU_OP_2[3]), .Y(n380) );
  XOR3XLM U520 ( .A(n374), .B(n373), .C(n372), .Y(n377) );
  NAND2XLM U521 ( .A(ALU_OP_1[7]), .B(ALU_OP_2[5]), .Y(n472) );
  NAND2XLM U522 ( .A(n472), .B(n474), .Y(n387) );
  AND2X1M U523 ( .A(ALU_OP_1[5]), .B(ALU_OP_2[7]), .Y(n473) );
  AOI2BB2XLM U524 ( .B0(n387), .B1(n473), .A0N(n474), .A1N(n472), .Y(n469) );
  NAND2XLM U525 ( .A(ALU_OP_1[7]), .B(ALU_OP_2[6]), .Y(n471) );
  OAI2BB1XLM U526 ( .A0N(n471), .A1N(n469), .B0(n470), .Y(n389) );
  XOR2XLM U527 ( .A(\DP_OP_25J1_122_8721/n43 ), .B(ALU_OP_2[3]), .Y(
        \DP_OP_25J1_122_8721/n26 ) );
  XOR2XLM U528 ( .A(\DP_OP_25J1_122_8721/n43 ), .B(ALU_OP_2[4]), .Y(
        \DP_OP_25J1_122_8721/n25 ) );
  XOR2XLM U529 ( .A(\DP_OP_25J1_122_8721/n43 ), .B(ALU_OP_2[6]), .Y(
        \DP_OP_25J1_122_8721/n23 ) );
  NAND2XLM U530 ( .A(ALU_OP_1[6]), .B(ALU_OP_2[5]), .Y(n477) );
  NOR2BXLM U531 ( .AN(n477), .B(n476), .Y(n400) );
  NAND2XLM U532 ( .A(ALU_OP_1[4]), .B(ALU_OP_2[7]), .Y(n475) );
  NAND2XLM U533 ( .A(ALU_OP_1[4]), .B(ALU_OP_2[0]), .Y(n402) );
  NAND2XLM U534 ( .A(ALU_OP_1[1]), .B(ALU_OP_2[4]), .Y(n489) );
  NAND2XLM U535 ( .A(ALU_OP_1[1]), .B(ALU_OP_2[6]), .Y(n486) );
  AOI21XLM U536 ( .A0(ALU_OP_2[7]), .A1(ALU_OP_1[2]), .B0(n419), .Y(n434) );
  NAND2XLM U537 ( .A(ALU_OP_1[3]), .B(ALU_OP_2[5]), .Y(n483) );
  AOI2BB2XLM U538 ( .B0(n422), .B1(n482), .A0N(n481), .A1N(n483), .Y(n500) );
  NAND2XLM U539 ( .A(ALU_OP_1[4]), .B(ALU_OP_2[5]), .Y(n498) );
  INVXLM U540 ( .A(n502), .Y(n431) );
  NAND2XLM U541 ( .A(ALU_OP_1[5]), .B(ALU_OP_2[3]), .Y(n504) );
  AO21XLM U542 ( .A0(n500), .A1(n498), .B0(n499), .Y(n432) );
  INVXLM U543 ( .A(n478), .Y(n439) );
  NAND2XLM U544 ( .A(n440), .B(\intadd_4/A[0] ), .Y(n445) );
  AOI22XLM U545 ( .A0(n443), .A1(ALU_OP_1[3]), .B0(n442), .B1(n441), .Y(n444)
         );
  AOI21XLM U546 ( .A0(n450), .A1(n449), .B0(n448), .Y(n468) );
  NOR2XLM U547 ( .A(ALU_OP_1[2]), .B(ALU_OP_2[2]), .Y(n465) );
  XOR3XLM U548 ( .A(n453), .B(n452), .C(n451), .Y(n454) );
  NOR2XLM U549 ( .A(n455), .B(n454), .Y(n460) );
  AOI21XLM U550 ( .A0(n458), .A1(n457), .B0(n456), .Y(n459) );
  NAND2XLM U551 ( .A(n461), .B(n465), .Y(n462) );
  XOR2XLM U552 ( .A(\DP_OP_25J1_122_8721/n43 ), .B(ALU_OP_2[0]), .Y(
        \DP_OP_25J1_122_8721/n29 ) );
  AND2X1M U553 ( .A(ALU_OUT_REG[2]), .B(OUT_VALID), .Y(ALU_OUT[2]) );
  AND2X1M U554 ( .A(ALU_OUT_REG[5]), .B(OUT_VALID), .Y(ALU_OUT[5]) );
  AND2X1M U555 ( .A(ALU_OUT_REG[6]), .B(OUT_VALID), .Y(ALU_OUT[6]) );
  AND2X1M U556 ( .A(ALU_OUT_REG[12]), .B(OUT_VALID), .Y(ALU_OUT[12]) );
  AND2X1M U557 ( .A(ALU_OUT_REG[14]), .B(OUT_VALID), .Y(ALU_OUT[14]) );
  AND2X1M U558 ( .A(ALU_OUT_REG[15]), .B(OUT_VALID), .Y(ALU_OUT[15]) );
  AND2X1M U559 ( .A(ALU_OUT_REG[3]), .B(OUT_VALID), .Y(ALU_OUT[3]) );
  AND2X1M U560 ( .A(ALU_OUT_REG[4]), .B(OUT_VALID), .Y(ALU_OUT[4]) );
  AND2X1M U561 ( .A(ALU_OUT_REG[7]), .B(OUT_VALID), .Y(ALU_OUT[7]) );
  AND2X1M U562 ( .A(ALU_OUT_REG[8]), .B(OUT_VALID), .Y(ALU_OUT[8]) );
  AND2X1M U563 ( .A(ALU_OUT_REG[9]), .B(OUT_VALID), .Y(ALU_OUT[9]) );
  AND2X1M U564 ( .A(ALU_OP_1[3]), .B(ALU_OP_2[6]), .Y(n517) );
  AND2X1M U565 ( .A(ALU_OP_1[3]), .B(ALU_OP_2[7]), .Y(n518) );
  AND2X1M U566 ( .A(ALU_OP_1[5]), .B(ALU_OP_2[4]), .Y(n523) );
  AND2X1M U567 ( .A(ALU_OP_1[7]), .B(ALU_OP_2[3]), .Y(n524) );
  AND2X1M U568 ( .A(ALU_OP_1[0]), .B(ALU_OP_2[4]), .Y(n525) );
  AND2X1M U569 ( .A(ALU_OP_1[6]), .B(ALU_OP_2[4]), .Y(n533) );
  AND2X1M U570 ( .A(ALU_OP_2[6]), .B(ALU_OP_1[5]), .Y(n535) );
  XOR2XLM U571 ( .A(\DP_OP_25J1_122_8721/n43 ), .B(ALU_OP_2[7]), .Y(
        \DP_OP_25J1_122_8721/n22 ) );
  XOR2XLM U572 ( .A(\DP_OP_25J1_122_8721/n43 ), .B(ALU_OP_2[5]), .Y(
        \DP_OP_25J1_122_8721/n24 ) );
  XOR2XLM U573 ( .A(\DP_OP_25J1_122_8721/n43 ), .B(ALU_OP_2[2]), .Y(
        \DP_OP_25J1_122_8721/n27 ) );
  XOR2XLM U574 ( .A(\DP_OP_25J1_122_8721/n43 ), .B(ALU_OP_2[1]), .Y(
        \DP_OP_25J1_122_8721/n28 ) );
  XOR3XLM U575 ( .A(n471), .B(n470), .C(n469), .Y(\intadd_2/A[3] ) );
  XOR3XLM U576 ( .A(n474), .B(n473), .C(n472), .Y(\intadd_2/A[2] ) );
  XOR3XLM U577 ( .A(n477), .B(n476), .C(n475), .Y(\intadd_2/A[1] ) );
  XOR3XLM U578 ( .A(n480), .B(n479), .C(n478), .Y(\intadd_6/A[1] ) );
  XOR3XLM U579 ( .A(n483), .B(n482), .C(n481), .Y(\intadd_0/A[2] ) );
  XOR3XLM U580 ( .A(n486), .B(n485), .C(n484), .Y(\intadd_5/A[1] ) );
  XOR3XLM U581 ( .A(\intadd_5/SUM[0] ), .B(\intadd_0/SUM[0] ), .C(
        \intadd_3/SUM[1] ), .Y(\intadd_4/A[2] ) );
  XOR3XLM U582 ( .A(n489), .B(n488), .C(n487), .Y(\intadd_4/A[1] ) );
  XOR3XLM U583 ( .A(n501), .B(n500), .C(n499), .Y(\intadd_0/B[3] ) );
  XOR3XLM U584 ( .A(n504), .B(n503), .C(n502), .Y(\intadd_0/B[2] ) );
  INVXLM U585 ( .A(\intadd_2/SUM[2] ), .Y(n505) );
  AO21XLM U586 ( .A0(n513), .A1(n512), .B0(n511), .Y(n168) );
  AND2X1M U587 ( .A(OUT_VALID), .B(ALU_OUT_REG[0]), .Y(ALU_OUT[0]) );
  AND2X1M U588 ( .A(OUT_VALID), .B(ALU_OUT_REG[1]), .Y(ALU_OUT[1]) );
  NOR2XLM U589 ( .A(\VALID_REG[0] ), .B(n514), .Y(N169) );
  SDFFRX1M \ALU_OP_1_reg[0]  ( .D(A[0]), .SI(test_si1), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OP_1[0]), .QN(n280) );
  DFFSX1M \VALID_REG_reg[1]  ( .D(n515), .CK(CLK), .SN(RST), .Q(n516), .QN(
        OUT_VALID) );
  ADDFXLM \DP_OP_25J1_122_8721/U16  ( .A(\DP_OP_25J1_122_8721/n24 ), .B(
        ALU_OP_1[5]), .CI(\DP_OP_25J1_122_8721/n12 ), .CO(
        \DP_OP_25J1_122_8721/n11 ), .S(\C5/DATA14_5 ) );
  ADDFXLM \intadd_0/U2  ( .A(\intadd_0/A[5] ), .B(\intadd_1/n1 ), .CI(
        \intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(\intadd_0/SUM[5] ) );
  ADDFXLM \intadd_4/U2  ( .A(\intadd_4/A[2] ), .B(\intadd_4/B[2] ), .CI(
        \intadd_4/n2 ), .CO(\intadd_4/n1 ), .S(\intadd_4/SUM[2] ) );
  ADDFXLM \DP_OP_25J1_122_8721/U21  ( .A(ALU_OP_1[0]), .B(
        \DP_OP_25J1_122_8721/n43 ), .CI(\DP_OP_25J1_122_8721/n29 ), .CO(
        \DP_OP_25J1_122_8721/n16 ), .S(\C5/DATA14_0 ) );
  ADDFXLM \intadd_1/U2  ( .A(\intadd_1/A[3] ), .B(\intadd_1/B[3] ), .CI(
        \intadd_1/n2 ), .CO(\intadd_1/n1 ), .S(\intadd_0/A[4] ) );
  ADDFXLM \intadd_3/U3  ( .A(\intadd_3/A[2] ), .B(\intadd_0/SUM[1] ), .CI(
        \intadd_3/n3 ), .CO(\intadd_3/n2 ), .S(\intadd_3/SUM[2] ) );
  ADDFXLM \intadd_6/U3  ( .A(\intadd_6/A[1] ), .B(\intadd_2/SUM[0] ), .CI(
        \intadd_6/n3 ), .CO(\intadd_6/n2 ), .S(\intadd_1/A[3] ) );
  ADDFXLM \intadd_0/U6  ( .A(n521), .B(n532), .CI(\intadd_0/n6 ), .CO(
        \intadd_0/n5 ), .S(\intadd_0/SUM[1] ) );
  ADDFXLM \intadd_1/U5  ( .A(\intadd_1/A[0] ), .B(n529), .CI(n520), .CO(
        \intadd_1/n4 ), .S(\intadd_1/SUM[0] ) );
  NOR2X2M U50 ( .A(n5), .B(ALU_OP_2[7]), .Y(n119) );
  OAI21X2M U67 ( .A0(n295), .A1(n76), .B0(n74), .Y(n111) );
  INVXLM U12 ( .A(n209), .Y(n211) );
  INVXLM U14 ( .A(n222), .Y(n224) );
  INVXLM U18 ( .A(n187), .Y(n129) );
  XNOR2XLM U19 ( .A(n218), .B(n217), .Y(n219) );
  MX2X1M U22 ( .A(n220), .B(n219), .S0(n243), .Y(n232) );
  INVXLM U27 ( .A(n78), .Y(n79) );
  MX2X1M U40 ( .A(n228), .B(n227), .S0(n243), .Y(n236) );
  XOR2XLM U51 ( .A(n147), .B(n146), .Y(n228) );
  INVXLM U68 ( .A(n85), .Y(n86) );
  INVXLM U69 ( .A(n418), .Y(n410) );
  AND2X1M U76 ( .A(n236), .B(n435), .Y(n237) );
  INVXLM U95 ( .A(n407), .Y(\intadd_5/A[0] ) );
  INVXLM U110 ( .A(\intadd_0/SUM[3] ), .Y(n496) );
  INVXLM U145 ( .A(n88), .Y(n98) );
  INVXLM U170 ( .A(n441), .Y(\intadd_4/A[0] ) );
  INVXLM U193 ( .A(\intadd_4/SUM[1] ), .Y(n491) );
  AND2X1M U225 ( .A(n245), .B(n388), .Y(n246) );
  INVXLM U226 ( .A(n84), .Y(n295) );
  INVXLM U235 ( .A(n355), .Y(n464) );
  OAI21X3M U251 ( .A0(n124), .A1(n123), .B0(n122), .Y(n450) );
  INVXLM U269 ( .A(n4), .Y(n13) );
  NOR2XLM U285 ( .A(\DP_OP_25J1_122_8721/n9 ), .B(n361), .Y(n513) );
  INVXLM U351 ( .A(ALU_OP_2[3]), .Y(n414) );
  INVXLM U360 ( .A(ALU_OP_1[7]), .Y(n425) );
endmodule


module UART_test_1 ( TX_CLK, RX_CLK, UART_RST, RX_IN, TX_OUT, TX_DATA, RX_DATA, 
        PAR_EN, PAR_TYP, PRESCALE, TX_DATA_VALID, TX_BUSY, RX_DATA_VALID, 
        RX_PAR_ERROR, RX_STOP_ERROR, test_si, test_so, test_se );
  input [7:0] TX_DATA;
  output [7:0] RX_DATA;
  input [5:0] PRESCALE;
  input TX_CLK, RX_CLK, UART_RST, RX_IN, PAR_EN, PAR_TYP, TX_DATA_VALID,
         test_si, test_se;
  output TX_OUT, TX_BUSY, RX_DATA_VALID, RX_PAR_ERROR, RX_STOP_ERROR, test_so;
  wire   n216, \UART_TX/Data_serial , \UART_RX/block_enable_word_UART_Rx[3] ,
         \UART_RX/block_enable_word_UART_Rx[2] ,
         \UART_RX/block_enable_word_UART_Rx[1] ,
         \UART_RX/block_enable_word_UART_Rx[0] , \UART_RX/start_bit_UART_Rx ,
         \UART_RX/BIT_COUNT_UART_Rx[3] , \UART_RX/BIT_COUNT_UART_Rx[2] ,
         \UART_RX/BIT_COUNT_UART_Rx[1] , \UART_RX/BIT_COUNT_UART_Rx[0] ,
         \UART_TX/ser_block/data_reg[7] , \UART_TX/ser_block/data_reg[6] ,
         \UART_TX/ser_block/data_reg[5] , \UART_TX/ser_block/data_reg[4] ,
         \UART_TX/ser_block/data_reg[3] , \UART_TX/ser_block/data_reg[2] ,
         \UART_TX/ser_block/data_reg[1] , \UART_TX/ser_block/data_reg[0] ,
         \UART_TX/ser_block/Counter[7] , \UART_TX/ser_block/Counter[6] ,
         \UART_TX/ser_block/Counter[5] , \UART_TX/ser_block/Counter[4] ,
         \UART_TX/ser_block/Counter[3] , \UART_TX/ser_block/Counter[2] ,
         \UART_TX/ser_block/Counter[1] , \UART_TX/ser_block/Counter[0] ,
         \UART_TX/parity_block/internal_reg[7] ,
         \UART_TX/parity_block/internal_reg[5] ,
         \UART_TX/parity_block/internal_reg[4] ,
         \UART_TX/parity_block/internal_reg[3] ,
         \UART_TX/parity_block/internal_reg[2] ,
         \UART_TX/parity_block/internal_reg[1] ,
         \UART_TX/parity_block/internal_reg[0] ,
         \UART_TX/FSM_control_block/next_state[2] ,
         \UART_TX/FSM_control_block/next_state[1] ,
         \UART_TX/FSM_control_block/next_state[0] ,
         \UART_TX/FSM_control_block/current_state[2] ,
         \UART_TX/FSM_control_block/current_state[1] ,
         \UART_TX/FSM_control_block/current_state[0] ,
         \UART_RX/UART_Sampling_Register/sampled_data_register[10] ,
         \UART_RX/UART_Sampling_Register/sampled_data_register[9] ,
         \UART_RX/UART_Config_block/N107 , \UART_RX/UART_Config_block/N106 ,
         \UART_RX/UART_Config_block/N105 , \UART_RX/UART_Config_block/N104 ,
         \UART_RX/UART_Config_block/N103 , \UART_RX/UART_Config_block/N102 ,
         \UART_RX/UART_Config_block/N101 , \UART_RX/UART_Config_block/N100 ,
         \UART_RX/UART_Config_block/Edge_counter[7] ,
         \UART_RX/UART_Config_block/Edge_counter[6] ,
         \UART_RX/UART_Config_block/Edge_counter[5] ,
         \UART_RX/UART_Config_block/Edge_counter[4] ,
         \UART_RX/UART_Config_block/Edge_counter[3] ,
         \UART_RX/UART_Config_block/Edge_counter[2] ,
         \UART_RX/UART_Config_block/Edge_counter[1] ,
         \UART_RX/UART_Config_block/Edge_counter[0] ,
         \UART_RX/UART_Config_block/N20 ,
         \UART_RX/UART_Config_block/SAMPLE_CMD ,
         \UART_RX/UART_Config_block/sampler_enable ,
         \UART_RX/UART_Config_block/start_enable ,
         \UART_RX/UART_Config_block/parity_enable ,
         \UART_RX/UART_Config_block/stop_enable ,
         \UART_RX/UART_Sampler/Data_Storage[2] ,
         \UART_RX/UART_Sampler/Data_Storage[1] ,
         \UART_RX/UART_Sampler/Data_Storage[0] ,
         \UART_RX/UART_FSM_Controller/next_state[2] ,
         \UART_RX/UART_FSM_Controller/next_state[1] ,
         \UART_RX/UART_FSM_Controller/next_state[0] ,
         \UART_RX/UART_FSM_Controller/current_state[2] ,
         \UART_RX/UART_FSM_Controller/current_state[1] ,
         \UART_RX/UART_FSM_Controller/current_state[0] , n157, n158, n159,
         n160, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n161, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n215,
         n219;
  tri   TX_CLK;
  tri   UART_RST;
  tri   [7:0] TX_DATA;
  assign test_so = \UART_TX/Data_serial ;

  SDFFRQX1M \UART_TX/parity_block/internal_reg_reg[0]  ( .D(n167), .SI(
        \UART_TX/FSM_control_block/current_state[2] ), .SE(n219), .CK(TX_CLK), 
        .RN(UART_RST), .Q(\UART_TX/parity_block/internal_reg[0] ) );
  SDFFRQX1M \UART_TX/parity_block/internal_reg_reg[1]  ( .D(n166), .SI(
        \UART_TX/parity_block/internal_reg[0] ), .SE(n219), .CK(TX_CLK), .RN(
        UART_RST), .Q(\UART_TX/parity_block/internal_reg[1] ) );
  SDFFRQX1M \UART_TX/parity_block/internal_reg_reg[2]  ( .D(n165), .SI(
        \UART_TX/parity_block/internal_reg[1] ), .SE(n219), .CK(TX_CLK), .RN(
        UART_RST), .Q(\UART_TX/parity_block/internal_reg[2] ) );
  SDFFRQX1M \UART_TX/parity_block/internal_reg_reg[3]  ( .D(n164), .SI(
        \UART_TX/parity_block/internal_reg[2] ), .SE(n219), .CK(TX_CLK), .RN(
        UART_RST), .Q(\UART_TX/parity_block/internal_reg[3] ) );
  SDFFRQX1M \UART_TX/parity_block/internal_reg_reg[4]  ( .D(n163), .SI(
        \UART_TX/parity_block/internal_reg[3] ), .SE(n219), .CK(TX_CLK), .RN(
        UART_RST), .Q(\UART_TX/parity_block/internal_reg[4] ) );
  SDFFRQX1M \UART_TX/ser_block/Counter_reg[7]  ( .D(n199), .SI(n145), .SE(n219), .CK(TX_CLK), .RN(UART_RST), .Q(\UART_TX/ser_block/Counter[7] ) );
  SDFFRQX1M \UART_TX/ser_block/Counter_reg[0]  ( .D(n198), .SI(
        \UART_TX/parity_block/internal_reg[7] ), .SE(n219), .CK(TX_CLK), .RN(
        UART_RST), .Q(\UART_TX/ser_block/Counter[0] ) );
  SDFFRQX1M \UART_TX/ser_block/Counter_reg[1]  ( .D(n197), .SI(
        \UART_TX/ser_block/Counter[0] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), 
        .Q(\UART_TX/ser_block/Counter[1] ) );
  SDFFRQX1M \UART_TX/ser_block/Counter_reg[2]  ( .D(n196), .SI(
        \UART_TX/ser_block/Counter[1] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), 
        .Q(\UART_TX/ser_block/Counter[2] ) );
  SDFFRQX1M \UART_TX/ser_block/Counter_reg[3]  ( .D(n195), .SI(
        \UART_TX/ser_block/Counter[2] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), 
        .Q(\UART_TX/ser_block/Counter[3] ) );
  SDFFRQX1M \UART_TX/ser_block/Counter_reg[4]  ( .D(n194), .SI(
        \UART_TX/ser_block/Counter[3] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), 
        .Q(\UART_TX/ser_block/Counter[4] ) );
  SDFFRQX1M \UART_TX/ser_block/Counter_reg[5]  ( .D(n193), .SI(
        \UART_TX/ser_block/Counter[4] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), 
        .Q(\UART_TX/ser_block/Counter[5] ) );
  SDFFRQX1M \UART_TX/ser_block/Counter_reg[6]  ( .D(n192), .SI(n69), .SE(n219), 
        .CK(TX_CLK), .RN(UART_RST), .Q(\UART_TX/ser_block/Counter[6] ) );
  SDFFRQX1M \UART_TX/ser_block/data_reg_reg[7]  ( .D(n183), .SI(
        \UART_TX/ser_block/data_reg[6] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), .Q(\UART_TX/ser_block/data_reg[7] ) );
  SDFFRQX1M \UART_TX/ser_block/data_reg_reg[6]  ( .D(n184), .SI(
        \UART_TX/ser_block/data_reg[5] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), .Q(\UART_TX/ser_block/data_reg[6] ) );
  SDFFRQX1M \UART_TX/ser_block/data_reg_reg[5]  ( .D(n185), .SI(
        \UART_TX/ser_block/data_reg[4] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), .Q(\UART_TX/ser_block/data_reg[5] ) );
  SDFFRQX1M \UART_TX/ser_block/data_reg_reg[4]  ( .D(n186), .SI(
        \UART_TX/ser_block/data_reg[3] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), .Q(\UART_TX/ser_block/data_reg[4] ) );
  SDFFRQX1M \UART_TX/ser_block/data_reg_reg[3]  ( .D(n187), .SI(
        \UART_TX/ser_block/data_reg[2] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), .Q(\UART_TX/ser_block/data_reg[3] ) );
  SDFFRQX1M \UART_TX/ser_block/data_reg_reg[2]  ( .D(n188), .SI(
        \UART_TX/ser_block/data_reg[1] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), .Q(\UART_TX/ser_block/data_reg[2] ) );
  SDFFRQX1M \UART_TX/ser_block/data_reg_reg[1]  ( .D(n189), .SI(
        \UART_TX/ser_block/data_reg[0] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), .Q(\UART_TX/ser_block/data_reg[1] ) );
  SDFFRQX1M \UART_TX/ser_block/data_reg_reg[0]  ( .D(n190), .SI(
        \UART_TX/ser_block/Counter[7] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), 
        .Q(\UART_TX/ser_block/data_reg[0] ) );
  SDFFRQX1M \UART_TX/ser_block/serial_out_reg  ( .D(n191), .SI(
        \UART_TX/ser_block/data_reg[7] ), .SE(n219), .CK(TX_CLK), .RN(UART_RST), .Q(\UART_TX/Data_serial ) );
  SDFFRQX1M \UART_RX/UART_Config_block/SAMPLE_CMD_reg  ( .D(
        \UART_RX/UART_Config_block/N20 ), .SI(n139), .SE(n219), .CK(RX_CLK), 
        .RN(UART_RST), .Q(\UART_RX/UART_Config_block/SAMPLE_CMD ) );
  SDFFRQX1M \UART_RX/UART_Config_block/sampler_enable_reg  ( .D(
        \UART_RX/block_enable_word_UART_Rx[3] ), .SI(
        \UART_RX/UART_Config_block/parity_enable ), .SE(n219), .CK(RX_CLK), 
        .RN(UART_RST), .Q(\UART_RX/UART_Config_block/sampler_enable ) );
  SDFFRQX1M \UART_RX/UART_Config_block/Edge_counter_reg[0]  ( .D(
        \UART_RX/UART_Config_block/N100 ), .SI(test_si), .SE(n219), .CK(RX_CLK), .RN(UART_RST), .Q(\UART_RX/UART_Config_block/Edge_counter[0] ) );
  SDFFRQX1M \UART_RX/UART_Config_block/Edge_counter_reg[1]  ( .D(
        \UART_RX/UART_Config_block/N101 ), .SI(
        \UART_RX/UART_Config_block/Edge_counter[0] ), .SE(n219), .CK(RX_CLK), 
        .RN(UART_RST), .Q(\UART_RX/UART_Config_block/Edge_counter[1] ) );
  SDFFRQX1M \UART_RX/UART_Config_block/Edge_counter_reg[2]  ( .D(
        \UART_RX/UART_Config_block/N102 ), .SI(
        \UART_RX/UART_Config_block/Edge_counter[1] ), .SE(n219), .CK(RX_CLK), 
        .RN(UART_RST), .Q(\UART_RX/UART_Config_block/Edge_counter[2] ) );
  SDFFRQX1M \UART_RX/UART_Config_block/Edge_counter_reg[3]  ( .D(
        \UART_RX/UART_Config_block/N103 ), .SI(n88), .SE(n219), .CK(RX_CLK), 
        .RN(UART_RST), .Q(\UART_RX/UART_Config_block/Edge_counter[3] ) );
  SDFFRQX1M \UART_RX/UART_Config_block/Edge_counter_reg[4]  ( .D(
        \UART_RX/UART_Config_block/N104 ), .SI(
        \UART_RX/UART_Config_block/Edge_counter[3] ), .SE(n219), .CK(RX_CLK), 
        .RN(UART_RST), .Q(\UART_RX/UART_Config_block/Edge_counter[4] ) );
  SDFFRQX1M \UART_RX/UART_Config_block/Edge_counter_reg[5]  ( .D(
        \UART_RX/UART_Config_block/N105 ), .SI(
        \UART_RX/UART_Config_block/Edge_counter[4] ), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), .Q(\UART_RX/UART_Config_block/Edge_counter[5] ) );
  SDFFRQX1M \UART_RX/UART_Config_block/Edge_counter_reg[6]  ( .D(
        \UART_RX/UART_Config_block/N106 ), .SI(n135), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), .Q(\UART_RX/UART_Config_block/Edge_counter[6] ) );
  SDFFRQX1M \UART_RX/UART_Config_block/Edge_counter_reg[7]  ( .D(
        \UART_RX/UART_Config_block/N107 ), .SI(n84), .SE(test_se), .CK(RX_CLK), 
        .RN(UART_RST), .Q(\UART_RX/UART_Config_block/Edge_counter[7] ) );
  SDFFRQX1M \UART_RX/UART_Config_block/start_enable_reg  ( .D(
        \UART_RX/block_enable_word_UART_Rx[2] ), .SI(
        \UART_RX/UART_Config_block/sampler_enable ), .SE(test_se), .CK(RX_CLK), 
        .RN(UART_RST), .Q(\UART_RX/UART_Config_block/start_enable ) );
  SDFFRQX1M \UART_RX/UART_Config_block/parity_enable_reg  ( .D(
        \UART_RX/block_enable_word_UART_Rx[1] ), .SI(
        \UART_RX/UART_Config_block/SAMPLE_CMD ), .SE(test_se), .CK(RX_CLK), 
        .RN(UART_RST), .Q(\UART_RX/UART_Config_block/parity_enable ) );
  SDFFRQX1M \UART_RX/UART_Config_block/stop_enable_reg  ( .D(
        \UART_RX/block_enable_word_UART_Rx[0] ), .SI(
        \UART_RX/UART_Config_block/start_enable ), .SE(test_se), .CK(RX_CLK), 
        .RN(UART_RST), .Q(\UART_RX/UART_Config_block/stop_enable ) );
  SDFFRQX1M \UART_RX/UART_FSM_Controller/current_state_reg[0]  ( .D(
        \UART_RX/UART_FSM_Controller/next_state[0] ), .SI(
        \UART_RX/BIT_COUNT_UART_Rx[3] ), .SE(test_se), .CK(RX_CLK), .RN(
        UART_RST), .Q(\UART_RX/UART_FSM_Controller/current_state[0] ) );
  SDFFRQX1M \UART_RX/UART_FSM_Controller/current_state_reg[1]  ( .D(
        \UART_RX/UART_FSM_Controller/next_state[1] ), .SI(
        \UART_RX/UART_FSM_Controller/current_state[0] ), .SE(test_se), .CK(
        RX_CLK), .RN(UART_RST), .Q(
        \UART_RX/UART_FSM_Controller/current_state[1] ) );
  SDFFRQX1M \UART_RX/UART_FSM_Controller/current_state_reg[2]  ( .D(
        \UART_RX/UART_FSM_Controller/next_state[2] ), .SI(
        \UART_RX/UART_FSM_Controller/current_state[1] ), .SE(test_se), .CK(
        RX_CLK), .RN(UART_RST), .Q(
        \UART_RX/UART_FSM_Controller/current_state[2] ) );
  SDFFRQX1M \UART_RX/UART_FSM_Controller/BIT_COUNT_reg_reg[0]  ( .D(n181), 
        .SI(\UART_RX/UART_Config_block/stop_enable ), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), .Q(\UART_RX/BIT_COUNT_UART_Rx[0] ) );
  SDFFRQX1M \UART_RX/UART_FSM_Controller/BIT_COUNT_reg_reg[1]  ( .D(n180), 
        .SI(\UART_RX/BIT_COUNT_UART_Rx[0] ), .SE(test_se), .CK(RX_CLK), .RN(
        UART_RST), .Q(\UART_RX/BIT_COUNT_UART_Rx[1] ) );
  SDFFRQX1M \UART_RX/UART_FSM_Controller/BIT_COUNT_reg_reg[2]  ( .D(n179), 
        .SI(n92), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), .Q(
        \UART_RX/BIT_COUNT_UART_Rx[2] ) );
  SDFFRQX1M \UART_RX/UART_FSM_Controller/BIT_COUNT_reg_reg[3]  ( .D(n182), 
        .SI(n119), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), .Q(
        \UART_RX/BIT_COUNT_UART_Rx[3] ) );
  SDFFRQX1M \UART_RX/UART_Sampling_Register/sampled_data_register_reg[0]  ( 
        .D(n178), .SI(\UART_RX/UART_Sampler/Data_Storage[2] ), .SE(test_se), 
        .CK(RX_CLK), .RN(UART_RST), .Q(\UART_RX/start_bit_UART_Rx ) );
  SDFFRQX1M \UART_RX/UART_Sampling_Register/sampled_data_register_reg[1]  ( 
        .D(n177), .SI(\UART_RX/start_bit_UART_Rx ), .SE(test_se), .CK(RX_CLK), 
        .RN(UART_RST), .Q(RX_DATA[0]) );
  SDFFRQX1M \UART_RX/UART_Sampling_Register/sampled_data_register_reg[2]  ( 
        .D(n176), .SI(RX_DATA[0]), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), 
        .Q(RX_DATA[1]) );
  SDFFRQX1M \UART_RX/UART_Sampling_Register/sampled_data_register_reg[3]  ( 
        .D(n175), .SI(RX_DATA[1]), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), 
        .Q(RX_DATA[2]) );
  SDFFRQX1M \UART_RX/UART_Sampling_Register/sampled_data_register_reg[4]  ( 
        .D(n174), .SI(RX_DATA[2]), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), 
        .Q(RX_DATA[3]) );
  SDFFRQX1M \UART_RX/UART_Sampling_Register/sampled_data_register_reg[5]  ( 
        .D(n173), .SI(RX_DATA[3]), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), 
        .Q(RX_DATA[4]) );
  SDFFRQX1M \UART_RX/UART_Sampling_Register/sampled_data_register_reg[6]  ( 
        .D(n172), .SI(RX_DATA[4]), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), 
        .Q(RX_DATA[5]) );
  SDFFRQX1M \UART_RX/UART_Sampling_Register/sampled_data_register_reg[7]  ( 
        .D(n171), .SI(RX_DATA[5]), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), 
        .Q(RX_DATA[6]) );
  SDFFRQX1M \UART_RX/UART_Sampling_Register/sampled_data_register_reg[8]  ( 
        .D(n170), .SI(RX_DATA[6]), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), 
        .Q(RX_DATA[7]) );
  SDFFRQX1M \UART_RX/UART_Sampling_Register/sampled_data_register_reg[9]  ( 
        .D(n169), .SI(RX_DATA[7]), .SE(test_se), .CK(RX_CLK), .RN(UART_RST), 
        .Q(\UART_RX/UART_Sampling_Register/sampled_data_register[9] ) );
  SDFFRQX1M \UART_RX/UART_Sampling_Register/sampled_data_register_reg[10]  ( 
        .D(n168), .SI(
        \UART_RX/UART_Sampling_Register/sampled_data_register[9] ), .SE(
        test_se), .CK(RX_CLK), .RN(UART_RST), .Q(
        \UART_RX/UART_Sampling_Register/sampled_data_register[10] ) );
  SDFFSQX2M \UART_RX/UART_Sampler/Data_Storage_reg[0]  ( .D(n159), .SI(
        \UART_RX/UART_FSM_Controller/current_state[2] ), .SE(test_se), .CK(
        RX_CLK), .SN(UART_RST), .Q(\UART_RX/UART_Sampler/Data_Storage[0] ) );
  SDFFSQX2M \UART_RX/UART_Sampler/Data_Storage_reg[1]  ( .D(n158), .SI(
        \UART_RX/UART_Sampler/Data_Storage[0] ), .SE(test_se), .CK(RX_CLK), 
        .SN(UART_RST), .Q(\UART_RX/UART_Sampler/Data_Storage[1] ) );
  SDFFRQX1M \UART_TX/parity_block/internal_reg_reg[7]  ( .D(n160), .SI(n3), 
        .SE(test_se), .CK(TX_CLK), .RN(UART_RST), .Q(
        \UART_TX/parity_block/internal_reg[7] ) );
  SDFFRQX1M \UART_TX/FSM_control_block/current_state_reg[1]  ( .D(
        \UART_TX/FSM_control_block/next_state[1] ), .SI(
        \UART_TX/FSM_control_block/current_state[0] ), .SE(test_se), .CK(
        TX_CLK), .RN(UART_RST), .Q(
        \UART_TX/FSM_control_block/current_state[1] ) );
  SDFFRQX1M \UART_TX/FSM_control_block/current_state_reg[0]  ( .D(
        \UART_TX/FSM_control_block/next_state[0] ), .SI(
        \UART_RX/UART_Sampling_Register/sampled_data_register[10] ), .SE(
        test_se), .CK(TX_CLK), .RN(UART_RST), .Q(
        \UART_TX/FSM_control_block/current_state[0] ) );
  BUFX2M U1 ( .A(n216), .Y(RX_STOP_ERROR) );
  AOI221XLM U2 ( .A0(\UART_RX/UART_Sampling_Register/sampled_data_register[9] ), .A1(n206), .B0(\UART_RX/UART_Sampling_Register/sampled_data_register[10] ), 
        .B1(PAR_EN), .C0(n47), .Y(n216) );
  AOI21X4M U3 ( .A0(n46), .A1(n45), .B0(n44), .Y(RX_PAR_ERROR) );
  OAI211XLM U4 ( .A0(n46), .A1(n45), .B0(
        \UART_RX/UART_Config_block/parity_enable ), .C0(
        \UART_RX/UART_Config_block/SAMPLE_CMD ), .Y(n44) );
  NAND3XLM U7 ( .A(n96), .B(n26), .C(n97), .Y(n24) );
  AOI22XLM U9 ( .A0(n3), .A1(\UART_TX/parity_block/internal_reg[5] ), .B0(n153), .B1(n215), .Y(n7) );
  OAI21XLM U10 ( .A0(n108), .A1(n113), .B0(
        \UART_RX/UART_Sampling_Register/sampled_data_register[10] ), .Y(n104)
         );
  INVXLM U11 ( .A(n53), .Y(n108) );
  INVXLM U12 ( .A(n116), .Y(n151) );
  INVXLM U13 ( .A(\UART_RX/UART_Config_block/Edge_counter[7] ), .Y(n139) );
  AOI21XLM U14 ( .A0(n147), .A1(n77), .B0(n148), .Y(n78) );
  NAND2XLM U15 ( .A(\UART_RX/UART_Config_block/SAMPLE_CMD ), .B(
        \UART_RX/UART_Config_block/stop_enable ), .Y(n47) );
  OAI31XLM U16 ( .A0(n110), .A1(n113), .A2(n121), .B0(n109), .Y(n170) );
  OAI211XLM U17 ( .A0(n61), .A1(n60), .B0(n59), .C0(n65), .Y(
        \UART_RX/UART_FSM_Controller/next_state[0] ) );
  OAI31XLM U18 ( .A0(\UART_TX/ser_block/Counter[7] ), .A1(n145), .A2(n146), 
        .B0(n80), .Y(n199) );
  INVXLM U19 ( .A(TX_DATA_VALID), .Y(n154) );
  AOI2BB2XLM U20 ( .B0(n215), .B1(n154), .A0N(n154), .A1N(TX_DATA[6]), .Y(n2)
         );
  INVXLM U21 ( .A(n2), .Y(n213) );
  XOR3XLM U24 ( .A(PAR_TYP), .B(\UART_TX/parity_block/internal_reg[7] ), .C(
        \UART_TX/parity_block/internal_reg[0] ), .Y(n4) );
  XOR3XLM U25 ( .A(\UART_TX/parity_block/internal_reg[2] ), .B(
        \UART_TX/parity_block/internal_reg[1] ), .C(n4), .Y(n5) );
  XOR3XLM U26 ( .A(\UART_TX/parity_block/internal_reg[4] ), .B(
        \UART_TX/parity_block/internal_reg[3] ), .C(n5), .Y(n6) );
  AOI2BB2XLM U27 ( .B0(n7), .B1(n6), .A0N(n7), .A1N(n6), .Y(n9) );
  NAND2XLM U29 ( .A(\UART_TX/FSM_control_block/current_state[0] ), .B(n11), 
        .Y(n202) );
  OAI21XLM U30 ( .A0(\UART_TX/FSM_control_block/current_state[0] ), .A1(
        \UART_TX/FSM_control_block/current_state[1] ), .B0(n11), .Y(n10) );
  AOI31XLM U31 ( .A0(\UART_TX/FSM_control_block/current_state[0] ), .A1(
        \UART_TX/Data_serial ), .A2(
        \UART_TX/FSM_control_block/current_state[1] ), .B0(n10), .Y(n8) );
  OAI2BB1X2M U32 ( .A0N(n9), .A1N(n202), .B0(n8), .Y(TX_OUT) );
  OAI31XLM U33 ( .A0(\UART_TX/FSM_control_block/current_state[0] ), .A1(
        \UART_TX/FSM_control_block/current_state[1] ), .A2(n11), .B0(n10), .Y(
        TX_BUSY) );
  INVXLM U34 ( .A(\UART_TX/FSM_control_block/current_state[1] ), .Y(n200) );
  OAI211XLM U35 ( .A0(\UART_TX/FSM_control_block/current_state[0] ), .A1(
        TX_DATA_VALID), .B0(n11), .C0(n200), .Y(n13) );
  NAND2BXLM U36 ( .AN(\UART_TX/ser_block/Counter[4] ), .B(
        \UART_TX/ser_block/Counter[3] ), .Y(n74) );
  OR4X1M U37 ( .A(\UART_TX/ser_block/Counter[5] ), .B(
        \UART_TX/ser_block/Counter[1] ), .C(\UART_TX/ser_block/Counter[2] ), 
        .D(\UART_TX/ser_block/Counter[6] ), .Y(n12) );
  NOR4XLM U38 ( .A(\UART_TX/ser_block/Counter[7] ), .B(
        \UART_TX/ser_block/Counter[0] ), .C(n74), .D(n12), .Y(n161) );
  NOR2XLM U39 ( .A(n161), .B(n202), .Y(n147) );
  INVXLM U40 ( .A(n147), .Y(n79) );
  NAND2XLM U41 ( .A(n13), .B(n79), .Y(
        \UART_TX/FSM_control_block/next_state[0] ) );
  INVXLM U42 ( .A(\UART_RX/UART_FSM_Controller/current_state[1] ), .Y(n51) );
  INVXLM U43 ( .A(\UART_RX/UART_FSM_Controller/current_state[0] ), .Y(n204) );
  NAND3XLM U44 ( .A(n51), .B(n204), .C(
        \UART_RX/UART_FSM_Controller/current_state[2] ), .Y(n48) );
  INVXLM U45 ( .A(n48), .Y(\UART_RX/block_enable_word_UART_Rx[0] ) );
  AND2X1M U46 ( .A(n202), .B(TX_DATA_VALID), .Y(n149) );
  NOR2XLM U47 ( .A(n147), .B(n149), .Y(n148) );
  AOI222XLM U48 ( .A0(n147), .A1(\UART_TX/ser_block/data_reg[2] ), .B0(n149), 
        .B1(TX_DATA[1]), .C0(n148), .C1(\UART_TX/ser_block/data_reg[1] ), .Y(
        n14) );
  INVXLM U49 ( .A(n14), .Y(n189) );
  AOI222XLM U50 ( .A0(n147), .A1(\UART_TX/ser_block/data_reg[3] ), .B0(n149), 
        .B1(TX_DATA[2]), .C0(n148), .C1(\UART_TX/ser_block/data_reg[2] ), .Y(
        n15) );
  INVXLM U51 ( .A(n15), .Y(n188) );
  AOI222XLM U52 ( .A0(n147), .A1(\UART_TX/ser_block/data_reg[5] ), .B0(n149), 
        .B1(TX_DATA[4]), .C0(n148), .C1(\UART_TX/ser_block/data_reg[4] ), .Y(
        n16) );
  INVXLM U53 ( .A(n16), .Y(n186) );
  AOI222XLM U54 ( .A0(n147), .A1(\UART_TX/ser_block/data_reg[6] ), .B0(n149), 
        .B1(TX_DATA[5]), .C0(n148), .C1(\UART_TX/ser_block/data_reg[5] ), .Y(
        n17) );
  INVXLM U55 ( .A(n17), .Y(n185) );
  AOI222XLM U56 ( .A0(n147), .A1(\UART_TX/ser_block/data_reg[4] ), .B0(n149), 
        .B1(TX_DATA[3]), .C0(n148), .C1(\UART_TX/ser_block/data_reg[3] ), .Y(
        n18) );
  INVXLM U57 ( .A(n18), .Y(n187) );
  AOI222XLM U58 ( .A0(n147), .A1(\UART_TX/ser_block/data_reg[7] ), .B0(n149), 
        .B1(TX_DATA[6]), .C0(n148), .C1(\UART_TX/ser_block/data_reg[6] ), .Y(
        n19) );
  INVXLM U59 ( .A(n19), .Y(n184) );
  AOI222XLM U60 ( .A0(n147), .A1(\UART_TX/ser_block/data_reg[1] ), .B0(n149), 
        .B1(TX_DATA[0]), .C0(n148), .C1(\UART_TX/ser_block/data_reg[0] ), .Y(
        n20) );
  INVXLM U61 ( .A(n20), .Y(n190) );
  NAND3XLM U62 ( .A(\UART_TX/ser_block/Counter[0] ), .B(
        \UART_TX/ser_block/Counter[1] ), .C(\UART_TX/ser_block/Counter[2] ), 
        .Y(n73) );
  INVXLM U63 ( .A(n73), .Y(n68) );
  INVXLM U64 ( .A(n148), .Y(n141) );
  OAI21XLM U65 ( .A0(n68), .A1(n79), .B0(n141), .Y(n70) );
  NOR2XLM U66 ( .A(\UART_TX/ser_block/Counter[3] ), .B(n202), .Y(n71) );
  AO22XLM U67 ( .A0(\UART_TX/ser_block/Counter[3] ), .A1(n70), .B0(n68), .B1(
        n71), .Y(n195) );
  OAI21XLM U68 ( .A0(PRESCALE[3]), .A1(PRESCALE[4]), .B0(PRESCALE[0]), .Y(n21)
         );
  OAI31XLM U69 ( .A0(PRESCALE[3]), .A1(PRESCALE[0]), .A2(PRESCALE[4]), .B0(n21), .Y(n22) );
  OR4X1M U70 ( .A(PRESCALE[5]), .B(n22), .C(PRESCALE[2]), .D(PRESCALE[1]), .Y(
        n23) );
  NOR2XLM U71 ( .A(PRESCALE[4]), .B(n23), .Y(n102) );
  NOR3XLM U72 ( .A(\UART_RX/UART_Config_block/Edge_counter[6] ), .B(
        \UART_RX/UART_Config_block/Edge_counter[7] ), .C(
        \UART_RX/UART_Config_block/Edge_counter[5] ), .Y(n26) );
  INVXLM U73 ( .A(n26), .Y(n93) );
  NAND3XLM U74 ( .A(\UART_RX/UART_Config_block/Edge_counter[2] ), .B(
        \UART_RX/UART_Config_block/Edge_counter[0] ), .C(
        \UART_RX/UART_Config_block/Edge_counter[1] ), .Y(n85) );
  NOR3XLM U75 ( .A(\UART_RX/UART_Config_block/Edge_counter[4] ), .B(n93), .C(
        n85), .Y(n30) );
  INVXLM U76 ( .A(\UART_RX/UART_Config_block/Edge_counter[3] ), .Y(n29) );
  NOR2XLM U77 ( .A(PRESCALE[3]), .B(n23), .Y(n96) );
  INVXLM U78 ( .A(n96), .Y(n25) );
  INVXLM U79 ( .A(\UART_RX/UART_Config_block/Edge_counter[4] ), .Y(n97) );
  NOR4BXLM U80 ( .AN(\UART_RX/UART_Config_block/Edge_counter[0] ), .B(
        \UART_RX/UART_Config_block/Edge_counter[2] ), .C(
        \UART_RX/UART_Config_block/Edge_counter[1] ), .D(n24), .Y(n95) );
  AOI32XLM U81 ( .A0(n30), .A1(n29), .A2(n25), .B0(n95), .B1(n29), .Y(n27) );
  NOR2XLM U82 ( .A(n29), .B(n85), .Y(n81) );
  NAND2XLM U83 ( .A(\UART_RX/UART_Config_block/Edge_counter[4] ), .B(n81), .Y(
        n134) );
  INVXLM U84 ( .A(n134), .Y(n136) );
  AOI31XLM U85 ( .A0(n26), .A1(n136), .A2(n25), .B0(n102), .Y(n32) );
  NAND3XLM U86 ( .A(n96), .B(\UART_RX/UART_Config_block/Edge_counter[3] ), .C(
        n30), .Y(n33) );
  AOI22XLM U87 ( .A0(n102), .A1(n27), .B0(n32), .B1(n33), .Y(n28) );
  NAND2BXLM U88 ( .AN(n28), .B(\UART_RX/UART_Config_block/sampler_enable ), 
        .Y(n137) );
  NOR2XLM U89 ( .A(\UART_RX/UART_Config_block/Edge_counter[0] ), .B(n137), .Y(
        \UART_RX/UART_Config_block/N100 ) );
  AOI211XLM U90 ( .A0(n29), .A1(n85), .B0(n81), .C0(n137), .Y(
        \UART_RX/UART_Config_block/N103 ) );
  NAND2XLM U91 ( .A(\UART_RX/BIT_COUNT_UART_Rx[1] ), .B(
        \UART_RX/BIT_COUNT_UART_Rx[0] ), .Y(n131) );
  INVXLM U92 ( .A(n102), .Y(n99) );
  AOI211XLM U93 ( .A0(n30), .A1(n29), .B0(n96), .C0(n99), .Y(n31) );
  INVXLM U94 ( .A(\UART_RX/UART_FSM_Controller/current_state[2] ), .Y(n203) );
  AOI221XLM U95 ( .A0(\UART_RX/UART_FSM_Controller/current_state[0] ), .A1(
        n203), .B0(n204), .B1(\UART_RX/UART_FSM_Controller/current_state[2] ), 
        .C0(\UART_RX/UART_FSM_Controller/current_state[1] ), .Y(n34) );
  AOI211XLM U96 ( .A0(n33), .A1(n32), .B0(n31), .C0(n34), .Y(n116) );
  NAND2XLM U97 ( .A(n116), .B(\UART_RX/BIT_COUNT_UART_Rx[2] ), .Y(n36) );
  INVXLM U98 ( .A(\UART_RX/BIT_COUNT_UART_Rx[2] ), .Y(n119) );
  NOR2XLM U99 ( .A(n34), .B(n116), .Y(n115) );
  AOI221XLM U100 ( .A0(n131), .A1(n116), .B0(n119), .B1(n116), .C0(n115), .Y(
        n35) );
  INVXLM U101 ( .A(\UART_RX/BIT_COUNT_UART_Rx[3] ), .Y(n208) );
  OAI32XLM U102 ( .A0(\UART_RX/BIT_COUNT_UART_Rx[3] ), .A1(n131), .A2(n36), 
        .B0(n35), .B1(n208), .Y(n182) );
  NOR3XLM U103 ( .A(\UART_RX/UART_FSM_Controller/current_state[1] ), .B(
        \UART_RX/UART_FSM_Controller/current_state[2] ), .C(n204), .Y(
        \UART_RX/block_enable_word_UART_Rx[2] ) );
  AOI2BB2XLM U104 ( .B0(RX_DATA[0]), .B1(RX_DATA[2]), .A0N(RX_DATA[2]), .A1N(
        RX_DATA[0]), .Y(n46) );
  AOI2BB2XLM U105 ( .B0(RX_DATA[1]), .B1(n37), .A0N(n37), .A1N(RX_DATA[1]), 
        .Y(n43) );
  AOI2BB2XLM U106 ( .B0(RX_DATA[7]), .B1(n38), .A0N(n38), .A1N(RX_DATA[7]), 
        .Y(n39) );
  XOR3XLM U107 ( .A(RX_DATA[3]), .B(PAR_TYP), .C(n39), .Y(n41) );
  AOI21XLM U108 ( .A0(
        \UART_RX/UART_Sampling_Register/sampled_data_register[9] ), .A1(PAR_EN), .B0(n41), .Y(n40) );
  AOI31XLM U109 ( .A0(
        \UART_RX/UART_Sampling_Register/sampled_data_register[9] ), .A1(n41), 
        .A2(PAR_EN), .B0(n40), .Y(n42) );
  XOR3XLM U110 ( .A(RX_DATA[4]), .B(n43), .C(n42), .Y(n45) );
  NOR3XLM U112 ( .A(\UART_RX/UART_FSM_Controller/current_state[1] ), .B(n204), 
        .C(n203), .Y(RX_DATA_VALID) );
  INVXLM U113 ( .A(\UART_RX/BIT_COUNT_UART_Rx[1] ), .Y(n92) );
  NOR2XLM U114 ( .A(n92), .B(\UART_RX/BIT_COUNT_UART_Rx[0] ), .Y(n89) );
  INVXLM U115 ( .A(n89), .Y(n128) );
  NOR2XLM U116 ( .A(n128), .B(\UART_RX/BIT_COUNT_UART_Rx[2] ), .Y(n53) );
  NOR2XLM U117 ( .A(n131), .B(\UART_RX/BIT_COUNT_UART_Rx[2] ), .Y(n56) );
  INVXLM U118 ( .A(n56), .Y(n118) );
  INVXLM U119 ( .A(\UART_RX/BIT_COUNT_UART_Rx[0] ), .Y(n150) );
  NOR2XLM U120 ( .A(n150), .B(\UART_RX/BIT_COUNT_UART_Rx[1] ), .Y(n90) );
  INVXLM U121 ( .A(n90), .Y(n123) );
  NOR2XLM U122 ( .A(n123), .B(\UART_RX/BIT_COUNT_UART_Rx[2] ), .Y(n209) );
  NAND4XLM U123 ( .A(\UART_RX/UART_FSM_Controller/current_state[1] ), .B(n209), 
        .C(n203), .D(n204), .Y(n62) );
  AOI221XLM U124 ( .A0(n118), .A1(n62), .B0(n48), .B1(n62), .C0(n206), .Y(n49)
         );
  AOI211XLM U125 ( .A0(\UART_RX/block_enable_word_UART_Rx[0] ), .A1(n53), .B0(
        \UART_RX/block_enable_word_UART_Rx[2] ), .C0(n49), .Y(n61) );
  AOI31XLM U126 ( .A0(\UART_RX/UART_Config_block/SAMPLE_CMD ), .A1(
        \UART_RX/start_bit_UART_Rx ), .A2(
        \UART_RX/UART_Config_block/start_enable ), .B0(RX_STOP_ERROR), .Y(n50)
         );
  NAND2BXLM U127 ( .AN(RX_PAR_ERROR), .B(n50), .Y(n211) );
  INVXLM U128 ( .A(n211), .Y(n64) );
  NAND2XLM U129 ( .A(\UART_RX/BIT_COUNT_UART_Rx[3] ), .B(n64), .Y(n60) );
  INVXLM U130 ( .A(n209), .Y(n114) );
  NOR2XLM U131 ( .A(\UART_RX/BIT_COUNT_UART_Rx[1] ), .B(
        \UART_RX/BIT_COUNT_UART_Rx[0] ), .Y(n124) );
  NAND2XLM U132 ( .A(n124), .B(n119), .Y(n110) );
  OR2X1M U133 ( .A(n110), .B(\UART_RX/BIT_COUNT_UART_Rx[3] ), .Y(n57) );
  NOR3XLM U134 ( .A(n57), .B(\UART_RX/UART_FSM_Controller/current_state[2] ), 
        .C(RX_IN), .Y(n52) );
  AOI22XLM U135 ( .A0(\UART_RX/block_enable_word_UART_Rx[2] ), .A1(n114), .B0(
        n52), .B1(n51), .Y(n55) );
  NOR2XLM U136 ( .A(n108), .B(n206), .Y(n54) );
  NAND3XLM U137 ( .A(n203), .B(\UART_RX/UART_FSM_Controller/current_state[0] ), 
        .C(\UART_RX/UART_FSM_Controller/current_state[1] ), .Y(n67) );
  AOI211XLM U138 ( .A0(\UART_RX/BIT_COUNT_UART_Rx[3] ), .A1(n54), .B0(n211), 
        .C0(n67), .Y(n210) );
  AOI2BB1XLM U139 ( .A0N(n55), .A1N(n211), .B0(n210), .Y(n59) );
  AOI32XLM U140 ( .A0(\UART_RX/BIT_COUNT_UART_Rx[2] ), .A1(PAR_EN), .A2(n124), 
        .B0(n56), .B1(n206), .Y(n58) );
  OAI211XLM U141 ( .A0(n60), .A1(n58), .B0(RX_DATA_VALID), .C0(n57), .Y(n65)
         );
  OAI32XLM U142 ( .A0(n206), .A1(n108), .A2(n67), .B0(PAR_EN), .B1(n62), .Y(
        n63) );
  AOI32XLM U143 ( .A0(\UART_RX/BIT_COUNT_UART_Rx[3] ), .A1(n64), .A2(n63), 
        .B0(\UART_RX/block_enable_word_UART_Rx[0] ), .B1(n64), .Y(n66) );
  NAND2XLM U144 ( .A(n66), .B(n65), .Y(
        \UART_RX/UART_FSM_Controller/next_state[2] ) );
  INVXLM U145 ( .A(n67), .Y(\UART_RX/block_enable_word_UART_Rx[1] ) );
  OAI32XLM U146 ( .A0(\UART_RX/UART_FSM_Controller/current_state[1] ), .A1(
        \UART_RX/block_enable_word_UART_Rx[0] ), .A2(
        \UART_RX/UART_FSM_Controller/current_state[0] ), .B0(n203), .B1(
        \UART_RX/block_enable_word_UART_Rx[0] ), .Y(n155) );
  INVXLM U147 ( .A(n155), .Y(\UART_RX/block_enable_word_UART_Rx[3] ) );
  NAND3XLM U148 ( .A(\UART_TX/ser_block/Counter[4] ), .B(
        \UART_TX/ser_block/Counter[3] ), .C(n68), .Y(n77) );
  INVXLM U149 ( .A(\UART_TX/ser_block/Counter[5] ), .Y(n69) );
  OAI32XLM U150 ( .A0(\UART_TX/ser_block/Counter[5] ), .A1(n79), .A2(n77), 
        .B0(n78), .B1(n69), .Y(n193) );
  OAI21XLM U151 ( .A0(n71), .A1(n70), .B0(\UART_TX/ser_block/Counter[4] ), .Y(
        n72) );
  OAI31XLM U152 ( .A0(n79), .A1(n74), .A2(n73), .B0(n72), .Y(n194) );
  NAND2XLM U153 ( .A(\UART_TX/ser_block/Counter[0] ), .B(
        \UART_TX/ser_block/Counter[1] ), .Y(n76) );
  NOR2XLM U154 ( .A(\UART_TX/ser_block/Counter[1] ), .B(n79), .Y(n143) );
  OAI21XLM U155 ( .A0(\UART_TX/ser_block/Counter[0] ), .A1(n79), .B0(n141), 
        .Y(n142) );
  OAI21XLM U156 ( .A0(n143), .A1(n142), .B0(\UART_TX/ser_block/Counter[2] ), 
        .Y(n75) );
  OAI31XLM U157 ( .A0(\UART_TX/ser_block/Counter[2] ), .A1(n79), .A2(n76), 
        .B0(n75), .Y(n196) );
  INVXLM U158 ( .A(\UART_TX/ser_block/Counter[6] ), .Y(n145) );
  NAND3BXLM U159 ( .AN(n77), .B(\UART_TX/ser_block/Counter[5] ), .C(n147), .Y(
        n146) );
  OAI21XLM U160 ( .A0(\UART_TX/ser_block/Counter[5] ), .A1(n79), .B0(n78), .Y(
        n144) );
  AOI32XLM U161 ( .A0(n147), .A1(\UART_TX/ser_block/Counter[7] ), .A2(n145), 
        .B0(n144), .B1(\UART_TX/ser_block/Counter[7] ), .Y(n80) );
  INVXLM U162 ( .A(n81), .Y(n82) );
  AOI211XLM U163 ( .A0(n97), .A1(n82), .B0(n136), .C0(n137), .Y(
        \UART_RX/UART_Config_block/N104 ) );
  INVXLM U164 ( .A(\UART_RX/UART_Config_block/Edge_counter[6] ), .Y(n84) );
  NAND2XLM U165 ( .A(\UART_RX/UART_Config_block/Edge_counter[5] ), .B(n136), 
        .Y(n83) );
  NAND3XLM U166 ( .A(\UART_RX/UART_Config_block/Edge_counter[6] ), .B(
        \UART_RX/UART_Config_block/Edge_counter[5] ), .C(n136), .Y(n138) );
  INVXLM U167 ( .A(n138), .Y(n140) );
  AOI211XLM U168 ( .A0(n84), .A1(n83), .B0(n140), .C0(n137), .Y(
        \UART_RX/UART_Config_block/N106 ) );
  INVXLM U169 ( .A(\UART_RX/UART_Config_block/Edge_counter[2] ), .Y(n88) );
  NAND2XLM U170 ( .A(\UART_RX/UART_Config_block/Edge_counter[0] ), .B(
        \UART_RX/UART_Config_block/Edge_counter[1] ), .Y(n87) );
  INVXLM U171 ( .A(n85), .Y(n86) );
  AOI211XLM U172 ( .A0(n88), .A1(n87), .B0(n86), .C0(n137), .Y(
        \UART_RX/UART_Config_block/N102 ) );
  INVXLM U173 ( .A(n115), .Y(n152) );
  OAI21XLM U174 ( .A0(n90), .A1(n89), .B0(n116), .Y(n91) );
  OAI21XLM U175 ( .A0(n152), .A1(n92), .B0(n91), .Y(n180) );
  NOR4XLM U176 ( .A(\UART_RX/UART_Config_block/Edge_counter[3] ), .B(
        \UART_RX/UART_Config_block/Edge_counter[0] ), .C(
        \UART_RX/UART_Config_block/Edge_counter[1] ), .D(n93), .Y(n98) );
  NOR3XLM U177 ( .A(n96), .B(\UART_RX/UART_Config_block/Edge_counter[2] ), .C(
        n97), .Y(n94) );
  AOI22XLM U178 ( .A0(\UART_RX/UART_Config_block/Edge_counter[3] ), .A1(n95), 
        .B0(n98), .B1(n94), .Y(n101) );
  AOI31XLM U179 ( .A0(\UART_RX/UART_Config_block/Edge_counter[2] ), .A1(n98), 
        .A2(n97), .B0(n96), .Y(n100) );
  OR2X1M U180 ( .A(n100), .B(n99), .Y(n103) );
  OAI21XLM U181 ( .A0(n102), .A1(n101), .B0(n103), .Y(
        \UART_RX/UART_Config_block/N20 ) );
  NAND2XLM U182 ( .A(\UART_RX/BIT_COUNT_UART_Rx[3] ), .B(
        \UART_RX/UART_Config_block/N20 ), .Y(n113) );
  AOI221XLM U183 ( .A0(\UART_RX/UART_Sampler/Data_Storage[2] ), .A1(n103), 
        .B0(\UART_RX/UART_Sampler/Data_Storage[0] ), .B1(n103), .C0(
        \UART_RX/UART_Sampler/Data_Storage[1] ), .Y(n121) );
  OAI31XLM U184 ( .A0(n108), .A1(n113), .A2(n121), .B0(n104), .Y(n168) );
  NAND2XLM U185 ( .A(n208), .B(\UART_RX/UART_Config_block/N20 ), .Y(n120) );
  OAI21XLM U186 ( .A0(n120), .A1(n118), .B0(RX_DATA[2]), .Y(n105) );
  OAI31XLM U187 ( .A0(n120), .A1(n118), .A2(n121), .B0(n105), .Y(n175) );
  OAI21XLM U188 ( .A0(n120), .A1(n110), .B0(\UART_RX/start_bit_UART_Rx ), .Y(
        n106) );
  OAI31XLM U189 ( .A0(n120), .A1(n110), .A2(n121), .B0(n106), .Y(n178) );
  OAI21XLM U190 ( .A0(n120), .A1(n108), .B0(RX_DATA[1]), .Y(n107) );
  OAI31XLM U191 ( .A0(n120), .A1(n108), .A2(n121), .B0(n107), .Y(n176) );
  OAI21XLM U192 ( .A0(n110), .A1(n113), .B0(RX_DATA[7]), .Y(n109) );
  OAI21XLM U193 ( .A0(n120), .A1(n114), .B0(RX_DATA[0]), .Y(n111) );
  OAI31XLM U194 ( .A0(n120), .A1(n114), .A2(n121), .B0(n111), .Y(n177) );
  OAI21XLM U195 ( .A0(n114), .A1(n113), .B0(
        \UART_RX/UART_Sampling_Register/sampled_data_register[9] ), .Y(n112)
         );
  OAI31XLM U196 ( .A0(n114), .A1(n113), .A2(n121), .B0(n112), .Y(n169) );
  AOI32XLM U197 ( .A0(n116), .A1(\UART_RX/BIT_COUNT_UART_Rx[2] ), .A2(n131), 
        .B0(n115), .B1(\UART_RX/BIT_COUNT_UART_Rx[2] ), .Y(n117) );
  OAI21XLM U198 ( .A0(n118), .A1(n151), .B0(n117), .Y(n179) );
  OR2X1M U199 ( .A(n120), .B(n119), .Y(n129) );
  OR2X1M U200 ( .A(n121), .B(n129), .Y(n132) );
  OAI21XLM U201 ( .A0(n129), .A1(n123), .B0(RX_DATA[4]), .Y(n122) );
  OAI21XLM U202 ( .A0(n132), .A1(n123), .B0(n122), .Y(n173) );
  INVXLM U203 ( .A(n124), .Y(n126) );
  OAI21XLM U204 ( .A0(n129), .A1(n126), .B0(RX_DATA[3]), .Y(n125) );
  OAI21XLM U205 ( .A0(n132), .A1(n126), .B0(n125), .Y(n174) );
  OAI21XLM U206 ( .A0(n129), .A1(n128), .B0(RX_DATA[5]), .Y(n127) );
  OAI21XLM U207 ( .A0(n132), .A1(n128), .B0(n127), .Y(n172) );
  OAI21XLM U208 ( .A0(n129), .A1(n131), .B0(RX_DATA[6]), .Y(n130) );
  OAI21XLM U209 ( .A0(n132), .A1(n131), .B0(n130), .Y(n171) );
  NOR2XLM U210 ( .A(\UART_RX/UART_Config_block/Edge_counter[0] ), .B(
        \UART_RX/UART_Config_block/Edge_counter[1] ), .Y(n133) );
  AOI211XLM U211 ( .A0(\UART_RX/UART_Config_block/Edge_counter[1] ), .A1(
        \UART_RX/UART_Config_block/Edge_counter[0] ), .B0(n133), .C0(n137), 
        .Y(\UART_RX/UART_Config_block/N101 ) );
  INVXLM U212 ( .A(\UART_RX/UART_Config_block/Edge_counter[5] ), .Y(n135) );
  AOI221XLM U213 ( .A0(\UART_RX/UART_Config_block/Edge_counter[5] ), .A1(n136), 
        .B0(n135), .B1(n134), .C0(n137), .Y(\UART_RX/UART_Config_block/N105 )
         );
  AOI221XLM U214 ( .A0(\UART_RX/UART_Config_block/Edge_counter[7] ), .A1(n140), 
        .B0(n139), .B1(n138), .C0(n137), .Y(\UART_RX/UART_Config_block/N107 )
         );
  AOI2BB2XLM U215 ( .B0(\UART_TX/ser_block/Counter[0] ), .B1(n141), .A0N(n147), 
        .A1N(\UART_TX/ser_block/Counter[0] ), .Y(n198) );
  AO22XLM U216 ( .A0(\UART_TX/ser_block/Counter[0] ), .A1(n143), .B0(
        \UART_TX/ser_block/Counter[1] ), .B1(n142), .Y(n197) );
  AOI2BB2XLM U217 ( .B0(n146), .B1(n145), .A0N(n145), .A1N(n144), .Y(n192) );
  AO22XLM U218 ( .A0(n147), .A1(\UART_TX/ser_block/data_reg[0] ), .B0(n148), 
        .B1(\UART_TX/Data_serial ), .Y(n191) );
  AO22XLM U219 ( .A0(n149), .A1(TX_DATA[7]), .B0(n148), .B1(
        \UART_TX/ser_block/data_reg[7] ), .Y(n183) );
  AOI22XLM U220 ( .A0(\UART_RX/BIT_COUNT_UART_Rx[0] ), .A1(n152), .B0(n151), 
        .B1(n150), .Y(n181) );
  AO22XLM U221 ( .A0(TX_DATA_VALID), .A1(TX_DATA[0]), .B0(n154), .B1(
        \UART_TX/parity_block/internal_reg[0] ), .Y(n167) );
  AO22XLM U222 ( .A0(TX_DATA_VALID), .A1(TX_DATA[1]), .B0(n154), .B1(
        \UART_TX/parity_block/internal_reg[1] ), .Y(n166) );
  AO22XLM U223 ( .A0(TX_DATA_VALID), .A1(TX_DATA[2]), .B0(n154), .B1(
        \UART_TX/parity_block/internal_reg[2] ), .Y(n165) );
  AO22XLM U224 ( .A0(TX_DATA_VALID), .A1(TX_DATA[3]), .B0(n154), .B1(
        \UART_TX/parity_block/internal_reg[3] ), .Y(n164) );
  AO22XLM U225 ( .A0(TX_DATA_VALID), .A1(TX_DATA[4]), .B0(n154), .B1(
        \UART_TX/parity_block/internal_reg[4] ), .Y(n163) );
  AOI2BB2XLM U226 ( .B0(n153), .B1(n154), .A0N(n154), .A1N(TX_DATA[5]), .Y(
        n162) );
  AO22XLM U227 ( .A0(TX_DATA_VALID), .A1(TX_DATA[7]), .B0(n154), .B1(
        \UART_TX/parity_block/internal_reg[7] ), .Y(n160) );
  AO22XLM U228 ( .A0(n155), .A1(\UART_RX/UART_Sampler/Data_Storage[0] ), .B0(
        \UART_RX/block_enable_word_UART_Rx[3] ), .B1(RX_IN), .Y(n159) );
  AO22XLM U229 ( .A0(n155), .A1(\UART_RX/UART_Sampler/Data_Storage[1] ), .B0(
        \UART_RX/block_enable_word_UART_Rx[3] ), .B1(
        \UART_RX/UART_Sampler/Data_Storage[0] ), .Y(n158) );
  AO22XLM U231 ( .A0(n155), .A1(\UART_RX/UART_Sampler/Data_Storage[2] ), .B0(
        \UART_RX/block_enable_word_UART_Rx[3] ), .B1(
        \UART_RX/UART_Sampler/Data_Storage[1] ), .Y(n157) );
  AOI21XLM U232 ( .A0(n161), .A1(n206), .B0(n202), .Y(n201) );
  OAI2BB2XLM U233 ( .B0(n201), .B1(n200), .A0N(
        \UART_TX/FSM_control_block/current_state[2] ), .A1N(
        \UART_TX/FSM_control_block/current_state[0] ), .Y(
        \UART_TX/FSM_control_block/next_state[2] ) );
  OAI21BXLM U234 ( .A0(n202), .A1(\UART_TX/FSM_control_block/current_state[1] ), .B0N(n201), .Y(\UART_TX/FSM_control_block/next_state[1] ) );
  NAND3XLM U235 ( .A(\UART_RX/UART_FSM_Controller/current_state[1] ), .B(n204), 
        .C(n203), .Y(n205) );
  AOI31XLM U236 ( .A0(\UART_RX/BIT_COUNT_UART_Rx[3] ), .A1(n209), .A2(n206), 
        .B0(n205), .Y(n207) );
  AOI31XLM U237 ( .A0(n209), .A1(\UART_RX/block_enable_word_UART_Rx[2] ), .A2(
        n208), .B0(n207), .Y(n212) );
  OAI21BXLM U238 ( .A0(n212), .A1(n211), .B0N(n210), .Y(
        \UART_RX/UART_FSM_Controller/next_state[1] ) );
  CLKBUFX1M U239 ( .A(test_se), .Y(n219) );
  SDFFSX1M \UART_TX/FSM_control_block/current_state_reg[2]  ( .D(
        \UART_TX/FSM_control_block/next_state[2] ), .SI(n200), .SE(test_se), 
        .CK(TX_CLK), .SN(UART_RST), .Q(
        \UART_TX/FSM_control_block/current_state[2] ), .QN(n11) );
  SDFFSX1M \UART_TX/parity_block/internal_reg_reg[6]  ( .D(n213), .SI(
        \UART_TX/parity_block/internal_reg[5] ), .SE(test_se), .CK(TX_CLK), 
        .SN(UART_RST), .Q(n215), .QN(n3) );
  SDFFRX1M \UART_TX/parity_block/internal_reg_reg[5]  ( .D(n162), .SI(
        \UART_TX/parity_block/internal_reg[4] ), .SE(n219), .CK(TX_CLK), .RN(
        UART_RST), .Q(\UART_TX/parity_block/internal_reg[5] ), .QN(n153) );
  SDFFSQX1M \UART_RX/UART_Sampler/Data_Storage_reg[2]  ( .D(n157), .SI(
        \UART_RX/UART_Sampler/Data_Storage[1] ), .SE(test_se), .CK(RX_CLK), 
        .SN(UART_RST), .Q(\UART_RX/UART_Sampler/Data_Storage[2] ) );
  INVXLM U5 ( .A(RX_DATA[5]), .Y(n38) );
  INVXLM U6 ( .A(RX_DATA[6]), .Y(n37) );
  INVXLM U8 ( .A(PAR_EN), .Y(n206) );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_GEN );
  input CLK, RST, LVL_SIG;
  output PULSE_GEN;
  wire   N1;
  tri   CLK;
  tri   RST;
  tri   PULSE_GEN;

  NOR2BXLM U3 ( .AN(LVL_SIG), .B(PULSE_GEN), .Y(N1) );
  SDFFRQX1M PULSE_GEN_flipflop_reg ( .D(N1), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(PULSE_GEN) );
endmodule


module CLK_GATE ( CLK, CLK_EN, GATED_CLK );
  input CLK, CLK_EN;
  output GATED_CLK;

  tri   CLK;

  TLATNCAX2M LATCHED_CLK ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module DATA_SYNC_test_1 ( CLK, RST, Unsync_bus, bus_enable, sync_bus, 
        enable_pulse, test_si2, test_si1, test_so1, test_se );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable, test_si2, test_si1, test_se;
  output enable_pulse, test_so1;
  wire   sync_bus_enable, n4, n6, n8, n10, n12, n14, n16, n18, n1, n7, n9;
  wire   [1:0] synchronizer;
  tri   CLK;
  assign test_so1 = sync_bus_enable;

  SDFFRQX1M \synchronizer_reg[0]  ( .D(bus_enable), .SI(test_si1), .SE(test_se), .CK(CLK), .RN(RST), .Q(synchronizer[0]) );
  SDFFRQX1M \sync_bus_register_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX1M \sync_bus_register_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX1M \sync_bus_register_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX1M \sync_bus_register_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX1M \sync_bus_register_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX1M \sync_bus_register_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX1M \sync_bus_register_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX1M \sync_bus_register_reg[0]  ( .D(n4), .SI(n7), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFSRX1M \synchronizer_reg[1]  ( .D(synchronizer[0]), .CK(CLK), .SN(1'b1), 
        .RN(RST), .Q(synchronizer[1]) );
  NOR2BXLM U6 ( .AN(synchronizer[1]), .B(sync_bus_enable), .Y(n1) );
  AO22XLM U8 ( .A0(n1), .A1(Unsync_bus[7]), .B0(n9), .B1(sync_bus[7]), .Y(n18)
         );
  AO22XLM U9 ( .A0(n1), .A1(Unsync_bus[6]), .B0(n9), .B1(sync_bus[6]), .Y(n16)
         );
  AO22XLM U10 ( .A0(n1), .A1(Unsync_bus[5]), .B0(n9), .B1(sync_bus[5]), .Y(n14) );
  AO22XLM U11 ( .A0(n1), .A1(Unsync_bus[4]), .B0(n9), .B1(sync_bus[4]), .Y(n12) );
  AO22XLM U12 ( .A0(n1), .A1(Unsync_bus[3]), .B0(n9), .B1(sync_bus[3]), .Y(n10) );
  AO22XLM U13 ( .A0(n1), .A1(Unsync_bus[2]), .B0(n9), .B1(sync_bus[2]), .Y(n8)
         );
  AO22XLM U14 ( .A0(n1), .A1(Unsync_bus[1]), .B0(n9), .B1(sync_bus[1]), .Y(n6)
         );
  AO22XLM U16 ( .A0(n1), .A1(Unsync_bus[0]), .B0(n9), .B1(sync_bus[0]), .Y(n4)
         );
  DFFRQX2M sync_bus_enable_reg ( .D(synchronizer[1]), .CK(CLK), .RN(RST), .Q(
        sync_bus_enable) );
  SDFFSX1M enable_pulse_flipflop_reg ( .D(n9), .SI(test_si2), .SE(test_se), 
        .CK(CLK), .SN(RST), .Q(n7), .QN(enable_pulse) );
  INVXLM U4 ( .A(n1), .Y(n9) );
endmodule


module ClkDiv_test_1 ( i_rst_n, i_ref_clk, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_se, test_so_BAR );
  input [7:0] i_div_ratio;
  input i_rst_n, i_ref_clk, i_clk_en, test_si, test_se;
  output o_div_clk, test_so_BAR;
  wire   counter_enable, N17, N18, N19, N20, N21, N22, N23, N24, reg_div_clk,
         n35, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n29, n30,
         n31, n32, n33, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;
  wire   [7:0] edge_count;
  tri   i_rst_n;
  tri   i_ref_clk;
  assign test_so_BAR = n36;

  MX2XLM U48 ( .A(i_ref_clk), .B(reg_div_clk), .S0(counter_enable), .Y(
        o_div_clk) );
  SDFFRQX1M \edge_count_reg[7]  ( .D(N24), .SI(n46), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(edge_count[7]) );
  SDFFRQX1M \edge_count_reg[6]  ( .D(N23), .SI(edge_count[5]), .SE(test_se), 
        .CK(i_ref_clk), .RN(i_rst_n), .Q(edge_count[6]) );
  SDFFRQX1M \edge_count_reg[5]  ( .D(N22), .SI(n41), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(edge_count[5]) );
  SDFFRQX1M \edge_count_reg[4]  ( .D(N21), .SI(edge_count[3]), .SE(test_se), 
        .CK(i_ref_clk), .RN(i_rst_n), .Q(edge_count[4]) );
  SDFFRQX1M \edge_count_reg[3]  ( .D(N20), .SI(n44), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(edge_count[3]) );
  SDFFRQX1M \edge_count_reg[2]  ( .D(N19), .SI(edge_count[1]), .SE(test_se), 
        .CK(i_ref_clk), .RN(i_rst_n), .Q(edge_count[2]) );
  SDFFRQX1M \edge_count_reg[1]  ( .D(N18), .SI(edge_count[0]), .SE(test_se), 
        .CK(i_ref_clk), .RN(i_rst_n), .Q(edge_count[1]) );
  SDFFRQX1M \edge_count_reg[0]  ( .D(N17), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(edge_count[0]) );
  SDFFRQX1M reg_div_clk_reg ( .D(n35), .SI(edge_count[7]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(reg_div_clk) );
  OAI22XLM U4 ( .A0(i_div_ratio[6]), .A1(n46), .B0(i_div_ratio[7]), .B1(n7), 
        .Y(n6) );
  OAI22XLM U5 ( .A0(i_div_ratio[2]), .A1(n44), .B0(i_div_ratio[3]), .B1(n40), 
        .Y(n4) );
  NOR2XLM U6 ( .A(n54), .B(n46), .Y(n23) );
  NAND4XLM U7 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(n27) );
  NOR2XLM U8 ( .A(n41), .B(n18), .Y(n24) );
  NOR2XLM U9 ( .A(n2), .B(n12), .Y(N18) );
  OR4X1M U10 ( .A(i_div_ratio[6]), .B(i_div_ratio[5]), .C(i_div_ratio[2]), .D(
        i_div_ratio[4]), .Y(n1) );
  NOR4XLM U11 ( .A(i_div_ratio[3]), .B(i_div_ratio[1]), .C(i_div_ratio[7]), 
        .D(n1), .Y(n2) );
  INVXLM U13 ( .A(edge_count[5]), .Y(n38) );
  INVXLM U14 ( .A(edge_count[4]), .Y(n41) );
  OAI22XLM U15 ( .A0(i_div_ratio[4]), .A1(n41), .B0(i_div_ratio[5]), .B1(n38), 
        .Y(n3) );
  AOI221XLM U16 ( .A0(n38), .A1(i_div_ratio[5]), .B0(n41), .B1(i_div_ratio[4]), 
        .C0(n3), .Y(n11) );
  INVXLM U17 ( .A(edge_count[3]), .Y(n40) );
  INVXLM U18 ( .A(edge_count[2]), .Y(n44) );
  AOI221XLM U19 ( .A0(n40), .A1(i_div_ratio[3]), .B0(n44), .B1(i_div_ratio[2]), 
        .C0(n4), .Y(n10) );
  INVXLM U20 ( .A(edge_count[1]), .Y(n43) );
  INVXLM U21 ( .A(edge_count[0]), .Y(n47) );
  OAI22XLM U22 ( .A0(i_div_ratio[0]), .A1(n47), .B0(i_div_ratio[1]), .B1(n43), 
        .Y(n5) );
  AOI221XLM U23 ( .A0(n43), .A1(i_div_ratio[1]), .B0(n47), .B1(i_div_ratio[0]), 
        .C0(n5), .Y(n9) );
  INVXLM U24 ( .A(edge_count[7]), .Y(n7) );
  INVXLM U25 ( .A(edge_count[6]), .Y(n46) );
  AOI221XLM U26 ( .A0(n7), .A1(i_div_ratio[7]), .B0(n46), .B1(i_div_ratio[6]), 
        .C0(n6), .Y(n8) );
  NAND3XLM U27 ( .A(edge_count[0]), .B(edge_count[1]), .C(n27), .Y(n30) );
  OAI211XLM U28 ( .A0(edge_count[1]), .A1(edge_count[0]), .B0(n30), .C0(n27), 
        .Y(n12) );
  NOR2XLM U29 ( .A(n44), .B(n30), .Y(n15) );
  INVXLM U30 ( .A(n27), .Y(n54) );
  NOR2XLM U31 ( .A(n54), .B(n40), .Y(n14) );
  OAI21XLM U32 ( .A0(n15), .A1(n14), .B0(counter_enable), .Y(n13) );
  AOI21XLM U33 ( .A0(n15), .A1(n14), .B0(n13), .Y(N20) );
  NAND2XLM U34 ( .A(edge_count[3]), .B(n15), .Y(n18) );
  NAND2XLM U35 ( .A(edge_count[4]), .B(n27), .Y(n17) );
  OAI21XLM U36 ( .A0(n18), .A1(n17), .B0(counter_enable), .Y(n16) );
  AOI21XLM U37 ( .A0(n18), .A1(n17), .B0(n16), .Y(N21) );
  NOR2XLM U38 ( .A(n54), .B(n38), .Y(n20) );
  OAI21XLM U39 ( .A0(n24), .A1(n20), .B0(counter_enable), .Y(n19) );
  AOI21XLM U40 ( .A0(n24), .A1(n20), .B0(n19), .Y(N22) );
  NAND2XLM U41 ( .A(edge_count[7]), .B(n27), .Y(n22) );
  NAND3XLM U42 ( .A(edge_count[5]), .B(n23), .C(n24), .Y(n25) );
  OAI21XLM U43 ( .A0(n22), .A1(n25), .B0(counter_enable), .Y(n21) );
  AOI21XLM U44 ( .A0(n22), .A1(n25), .B0(n21), .Y(N24) );
  AOI32XLM U45 ( .A0(edge_count[5]), .A1(n25), .A2(n24), .B0(n23), .B1(n25), 
        .Y(n26) );
  NOR2XLM U46 ( .A(n2), .B(n26), .Y(N23) );
  AOI21XLM U47 ( .A0(edge_count[0]), .A1(n27), .B0(n2), .Y(N17) );
  INVXLM U49 ( .A(n30), .Y(n32) );
  NOR2XLM U50 ( .A(n54), .B(n44), .Y(n31) );
  INVXLM U51 ( .A(n31), .Y(n29) );
  AOI221XLM U52 ( .A0(n32), .A1(n31), .B0(n30), .B1(n29), .C0(n2), .Y(N19) );
  NOR4XLM U53 ( .A(edge_count[3]), .B(edge_count[2]), .C(edge_count[1]), .D(
        edge_count[0]), .Y(n33) );
  NAND4XLM U54 ( .A(n33), .B(n38), .C(n41), .D(n46), .Y(n53) );
  INVXLM U55 ( .A(i_div_ratio[6]), .Y(n37) );
  INVXLM U56 ( .A(reg_div_clk), .Y(n36) );
  AOI221XLM U57 ( .A0(i_div_ratio[6]), .A1(n38), .B0(n37), .B1(edge_count[5]), 
        .C0(n36), .Y(n51) );
  OAI22XLM U58 ( .A0(i_div_ratio[4]), .A1(n40), .B0(i_div_ratio[5]), .B1(n41), 
        .Y(n39) );
  AOI221XLM U59 ( .A0(n41), .A1(i_div_ratio[5]), .B0(n40), .B1(i_div_ratio[4]), 
        .C0(n39), .Y(n50) );
  OAI22XLM U60 ( .A0(i_div_ratio[2]), .A1(n43), .B0(i_div_ratio[3]), .B1(n44), 
        .Y(n42) );
  AOI221XLM U61 ( .A0(n44), .A1(i_div_ratio[3]), .B0(n43), .B1(i_div_ratio[2]), 
        .C0(n42), .Y(n49) );
  OAI22XLM U62 ( .A0(i_div_ratio[7]), .A1(n46), .B0(i_div_ratio[1]), .B1(n47), 
        .Y(n45) );
  AOI221XLM U63 ( .A0(n47), .A1(i_div_ratio[1]), .B0(n46), .B1(i_div_ratio[7]), 
        .C0(n45), .Y(n48) );
  NAND4XLM U64 ( .A(n51), .B(n50), .C(n49), .D(n48), .Y(n52) );
  AOI21XLM U65 ( .A0(n53), .A1(n52), .B0(edge_count[7]), .Y(n56) );
  OAI31XLM U66 ( .A0(n54), .A1(n56), .A2(reg_div_clk), .B0(counter_enable), 
        .Y(n55) );
  AOI21XLM U67 ( .A0(n56), .A1(reg_div_clk), .B0(n55), .Y(n35) );
  INVXLM U3 ( .A(n2), .Y(counter_enable) );
endmodule


module RST_SYNC_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \synchronizer[0] ;
  tri   CLK;

  SDFFRQX1M \synchronizer_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\synchronizer[0] ) );
  SDFFRQX1M \synchronizer_reg[1]  ( .D(\synchronizer[0] ), .SI(
        \synchronizer[0] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module RST_SYNC_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \synchronizer[0] ;
  tri   CLK;

  SDFFRQX1M \synchronizer_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\synchronizer[0] ) );
  SDFFRQX1M \synchronizer_reg[1]  ( .D(\synchronizer[0] ), .SI(
        \synchronizer[0] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST_N, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error, test_mode, scan_clk, scan_rst, SE, SI, SO );
  input [5:0] SI;
  output [5:0] SO;
  input REF_CLK, UART_CLK, RST_N, UART_RX_IN, test_mode, scan_clk, scan_rst,
         SE;
  output UART_TX_O, parity_error, framing_error;
  wire   RX_CLK_m, TX_CLK, ALU_CLK_m, ALU_CLK, ALU_CLK_EN, ALU_CLK_EN_m, RST_m,
         RST_SYNC_REF, RST_SYNC_UART, ALU_OUT_VALID, ALU_EN, RegFile_Wr_En,
         RegFile_Rd_En, RegFile_Data_Vaild, SYS_RX_DATA_VALID, _0_net_,
         TX_BUSY, UART_RX_DATA_vaild, _1_net_, N40, N41, N42, N43, N14, n10,
         n11, n12, n13, n14, n15, n16, n47, n19, n20, n25, n26, n27, n29, n32,
         n34, n36, n39, n40, n43;
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
  tri   n45;
  tri   n46;

  CLKMX2X2M U19 ( .A(REF_CLK), .B(scan_clk), .S0(test_mode), .Y(REF_CLK_m) );
  CLKMX2X2M U21 ( .A(RX_CLK), .B(scan_clk), .S0(test_mode), .Y(RX_CLK_m) );
  CLKMX2X2M U22 ( .A(TX_CLK), .B(scan_clk), .S0(test_mode), .Y(TX_CLK_m) );
  CLKMX2X2M U23 ( .A(ALU_CLK), .B(scan_clk), .S0(test_mode), .Y(ALU_CLK_m) );
  NOR2XLM U17 ( .A(F_EMPTY), .B(TX_BUSY), .Y(_1_net_) );
  INVXLM U16 ( .A(F_EMPTY), .Y(_0_net_) );
  MX2XLM U24 ( .A(RST_N), .B(scan_rst), .S0(test_mode), .Y(RST_m) );
  MX2XLM U20 ( .A(UART_CLK), .B(scan_clk), .S0(test_mode), .Y(UART_CLK_m) );
  OAI2BB1XLM U26 ( .A0N(N14), .A1N(N43), .B0(1'b1), .Y(UART_RX_Prescale[3]) );
  OAI2BB1XLM U27 ( .A0N(N14), .A1N(N42), .B0(1'b1), .Y(UART_RX_Prescale[2]) );
  OAI2BB1XLM U28 ( .A0N(N14), .A1N(N41), .B0(1'b1), .Y(UART_RX_Prescale[1]) );
  AO22XLM U29 ( .A0(n10), .A1(1'b1), .B0(N14), .B1(N40), .Y(
        UART_RX_Prescale[0]) );
  AO22XLM U30 ( .A0(scan_rst), .A1(test_mode), .B0(RST_SYNC_REF), .B1(n11), 
        .Y(RST_SYNC_REF_m) );
  CLKMX2X6M U25 ( .A(RST_SYNC_UART), .B(scan_rst), .S0(test_mode), .Y(
        RST_SYNC_UART_m) );
  CLKINVX1M U31 ( .A(RST_SYNC_REF_m), .Y(n12) );
  OAI21XLM U33 ( .A0(n16), .A1(n15), .B0(n14), .Y(N40) );
  INVXLM U34 ( .A(UART_Config[2]), .Y(n16) );
  NOR4XLM U35 ( .A(UART_Config[5]), .B(UART_Config[4]), .C(UART_Config[3]), 
        .D(n16), .Y(N43) );
  NOR4BXLM U36 ( .AN(UART_Config[3]), .B(UART_Config[5]), .C(UART_Config[4]), 
        .D(UART_Config[2]), .Y(N42) );
  NOR4BXLM U37 ( .AN(UART_Config[4]), .B(UART_Config[5]), .C(UART_Config[2]), 
        .D(UART_Config[3]), .Y(N41) );
  NOR4XLM U38 ( .A(UART_Config[0]), .B(UART_Config[1]), .C(UART_Config[6]), 
        .D(UART_Config[7]), .Y(N14) );
  INVXLM U39 ( .A(N14), .Y(n10) );
  CLKINVX1M U40 ( .A(test_mode), .Y(n11) );
  NOR2XLM U41 ( .A(UART_Config[4]), .B(UART_Config[3]), .Y(n15) );
  AOI221XLM U42 ( .A0(UART_Config[3]), .A1(UART_Config[4]), .B0(n16), .B1(n15), 
        .C0(UART_Config[5]), .Y(n14) );
  OR2X1M U43 ( .A(ALU_CLK_EN), .B(test_mode), .Y(ALU_CLK_EN_m) );
  CLKBUFX1M U45 ( .A(n43), .Y(n29) );
  CLKBUFX1M U48 ( .A(n34), .Y(n32) );
  INVXLM U50 ( .A(n39), .Y(n34) );
  CLKBUFX1M U52 ( .A(SE), .Y(n36) );
  INVXLM U55 ( .A(SE), .Y(n39) );
  INVXLM U56 ( .A(n39), .Y(n40) );
  INVXLM U59 ( .A(n39), .Y(n43) );
  SYS_CONTRL_test_1 System_Control ( .CLK(REF_CLK_m), .RST(n13), .ALU_OUT(
        ALU_OUT), .ALU_DATA_VALID(ALU_OUT_VALID), .ALU_FUNC(ALU_FUNC), 
        .ALU_EN(ALU_EN), .ALU_CLK_EN(ALU_CLK_EN), .RegFile_ADDRESS(
        RegFile_ADDR), .RegFile_WrEn(RegFile_Wr_En), .RegFile_RdEn(
        RegFile_Rd_En), .RegFile_WrData(RegFile_WORD_IN), .RegFile_RdData(
        RegFile_WORD_OUT), .RegFile_DATA_VAILD(RegFile_Data_Vaild), 
        .RX_DATA_VALID(SYS_RX_DATA_VALID), .RX_DATA_IN(SYS_RX_DATA_IN), 
        .FIFO_WR(F_WR_INC), .FIFO_FULL(F_FULL), .TX_DATA_OUT(SYS_TX_DATA_OUT), 
        .test_si(RST_SYNC_UART), .test_so(n26), .test_se(n29) );
  RegFile_test_1 U0_RegFile ( .CLK(REF_CLK_m), .RST(n13), .WrData(
        RegFile_WORD_IN), .RdData(RegFile_WORD_OUT), .Address(RegFile_ADDR), 
        .WR_En(RegFile_Wr_En), .RD_EN(RegFile_Rd_En), .RdData_Vaild(
        RegFile_Data_Vaild), .REG0(ALU_Op1), .REG1(ALU_Op2), .REG2(UART_Config), .REG3(ClkDiv_Config), .test_si3(SI[3]), .test_si2(SI[4]), .test_si1(n26), 
        .test_so2(n20), .test_so1(SO[4]), .test_se(SE) );
  ALU_test_1 ALU ( .CLK(ALU_CLK_m), .RST(n13), .A(ALU_Op1), .B(ALU_Op2), 
        .ALU_OUT(ALU_OUT), .ALU_FUNC(ALU_FUNC), .Enable(ALU_EN), .OUT_VALID(
        ALU_OUT_VALID), .test_si1(SI[5]), .test_so2(n25), .test_so1(n27), 
        .test_se(n32) );
  UART_test_1 U0_UART ( .TX_CLK(TX_CLK_m), .RX_CLK(RX_CLK_m), .UART_RST(
        RST_SYNC_UART_m), .RX_IN(UART_RX_IN), .TX_OUT(UART_TX_O), .TX_DATA(
        UART_TX_IN), .RX_DATA(UART_RX_OUT), .PAR_EN(UART_Config[0]), .PAR_TYP(
        UART_Config[1]), .PRESCALE(UART_Config[7:2]), .TX_DATA_VALID(_0_net_), 
        .TX_BUSY(TX_BUSY), .RX_DATA_VALID(UART_RX_DATA_vaild), .RX_PAR_ERROR(
        parity_error), .RX_STOP_ERROR(framing_error), .test_si(n20), .test_so(
        n19), .test_se(n36) );
  PULSE_GEN TX_BUSY_GEN ( .CLK(TX_CLK_m), .RST(RST_SYNC_UART_m), .LVL_SIG(
        _1_net_), .PULSE_GEN(F_RD_INC) );
  FIFO Async_FIFO ( .W_CLK(REF_CLK_m), .W_RST(RST_SYNC_REF_m), .W_INC(F_WR_INC), .WR_DATA(SYS_TX_DATA_OUT), .FULL(F_FULL), .R_CLK(TX_CLK_m), .R_RST(
        RST_SYNC_UART_m), .R_INC(F_RD_INC), .RD_DATA(UART_TX_IN), .EMPTY(
        F_EMPTY) );
  CLK_GATE ALU_CLOCK ( .CLK(REF_CLK_m), .CLK_EN(ALU_CLK_EN_m), .GATED_CLK(
        ALU_CLK) );
  DATA_SYNC_test_1 UART_RX_DATA_SYNC ( .CLK(REF_CLK_m), .RST(n13), 
        .Unsync_bus(UART_RX_OUT), .bus_enable(UART_RX_DATA_vaild), .sync_bus(
        SYS_RX_DATA_IN), .enable_pulse(SYS_RX_DATA_VALID), .test_si2(n19), 
        .test_si1(n25), .test_so1(SO[5]), .test_se(n40) );
  ClkDiv_test_1 UART_TX_Clock_Divider ( .i_rst_n(RST_SYNC_UART_m), .i_ref_clk(
        UART_CLK_m), .i_clk_en(1'b1), .i_div_ratio(ClkDiv_Config), .o_div_clk(
        TX_CLK), .test_si(SYS_RX_DATA_IN[7]), .test_se(n43), .test_so_BAR(n47)
         );
  ClkDiv UART_RX_Clock_Divider ( .i_rst_n(RST_SYNC_UART_m), .i_ref_clk(
        UART_CLK_m), .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 
        UART_RX_Prescale}), .o_div_clk(RX_CLK) );
  RST_SYNC_test_0 RST_SYNC_1 ( .RST(RST_m), .CLK(REF_CLK_m), .SYNC_RST(
        RST_SYNC_REF), .test_si(n27), .test_se(n43) );
  RST_SYNC_test_1 RST_SYNC_2 ( .RST(RST_m), .CLK(UART_CLK_m), .SYNC_RST(
        RST_SYNC_UART), .test_si(RST_SYNC_REF), .test_se(n34) );
  CLKINVX16M U32 ( .A(n12), .Y(n13) );
  CLKINVX2M U46 ( .A(n47), .Y(SO[3]) );
endmodule


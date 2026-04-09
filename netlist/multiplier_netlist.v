// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr  9 13:01:00 2026
// Host        : DESKTOP-H6VA1KR running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim multiplier_netlist.v
// Design      : multi
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module multi
   (a,
    b,
    prod);
  input [3:0]a;
  input [3:0]b;
  output [7:0]prod;

  wire [3:0]a;
  wire [3:0]a_IBUF;
  wire [3:0]b;
  wire [3:0]b_IBUF;
  wire [7:0]prod;
  wire [7:0]prod_OBUF;
  wire x12;
  wire x13;
  wire x14;
  wire x15;
  wire x16;
  wire x17;
  wire x4;
  wire x6;
  wire x7;
  wire x9;

  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  OBUF \prod_OBUF[0]_inst 
       (.I(prod_OBUF[0]),
        .O(prod[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prod_OBUF[0]_inst_i_1 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .O(prod_OBUF[0]));
  OBUF \prod_OBUF[1]_inst 
       (.I(prod_OBUF[1]),
        .O(prod[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \prod_OBUF[1]_inst_i_1 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[0]),
        .I2(b_IBUF[0]),
        .I3(a_IBUF[1]),
        .O(prod_OBUF[1]));
  OBUF \prod_OBUF[2]_inst 
       (.I(prod_OBUF[2]),
        .O(prod[2]));
  LUT6 #(
    .INIT(64'h15BFEA406AC06AC0)) 
    \prod_OBUF[2]_inst_i_1 
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .I2(a_IBUF[1]),
        .I3(a_IBUF[2]),
        .I4(b_IBUF[2]),
        .I5(a_IBUF[0]),
        .O(prod_OBUF[2]));
  OBUF \prod_OBUF[3]_inst 
       (.I(prod_OBUF[3]),
        .O(prod[3]));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \prod_OBUF[3]_inst_i_1 
       (.I0(x4),
        .I1(b_IBUF[2]),
        .I2(a_IBUF[1]),
        .I3(x9),
        .I4(b_IBUF[3]),
        .I5(a_IBUF[0]),
        .O(prod_OBUF[3]));
  LUT6 #(
    .INIT(64'hBF5FA0A040A0A0A0)) 
    \prod_OBUF[3]_inst_i_2 
       (.I0(a_IBUF[2]),
        .I1(a_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(a_IBUF[1]),
        .I4(b_IBUF[0]),
        .I5(a_IBUF[3]),
        .O(x4));
  LUT6 #(
    .INIT(64'h8880808008000000)) 
    \prod_OBUF[3]_inst_i_3 
       (.I0(b_IBUF[2]),
        .I1(a_IBUF[0]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .I4(a_IBUF[1]),
        .I5(a_IBUF[2]),
        .O(x9));
  OBUF \prod_OBUF[4]_inst 
       (.I(prod_OBUF[4]),
        .O(prod[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \prod_OBUF[4]_inst_i_1 
       (.I0(x12),
        .I1(a_IBUF[1]),
        .I2(b_IBUF[3]),
        .I3(x16),
        .O(prod_OBUF[4]));
  LUT6 #(
    .INIT(64'hA93F953F56C06AC0)) 
    \prod_OBUF[4]_inst_i_2 
       (.I0(a_IBUF[2]),
        .I1(x9),
        .I2(x4),
        .I3(b_IBUF[2]),
        .I4(a_IBUF[1]),
        .I5(x6),
        .O(x12));
  LUT6 #(
    .INIT(64'h8008080808808080)) 
    \prod_OBUF[4]_inst_i_3 
       (.I0(b_IBUF[3]),
        .I1(a_IBUF[0]),
        .I2(x4),
        .I3(b_IBUF[2]),
        .I4(a_IBUF[1]),
        .I5(x9),
        .O(x16));
  LUT6 #(
    .INIT(64'h0F7F0000C0000000)) 
    \prod_OBUF[4]_inst_i_4 
       (.I0(a_IBUF[0]),
        .I1(a_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(a_IBUF[2]),
        .I4(b_IBUF[1]),
        .I5(a_IBUF[3]),
        .O(x6));
  OBUF \prod_OBUF[5]_inst 
       (.I(prod_OBUF[5]),
        .O(prod[5]));
  LUT4 #(
    .INIT(16'h956A)) 
    \prod_OBUF[5]_inst_i_1 
       (.I0(x17),
        .I1(a_IBUF[2]),
        .I2(b_IBUF[3]),
        .I3(x14),
        .O(prod_OBUF[5]));
  OBUF \prod_OBUF[6]_inst 
       (.I(prod_OBUF[6]),
        .O(prod[6]));
  LUT6 #(
    .INIT(64'hE8173F3F17E8C0C0)) 
    \prod_OBUF[6]_inst_i_1 
       (.I0(a_IBUF[2]),
        .I1(x14),
        .I2(x17),
        .I3(a_IBUF[3]),
        .I4(b_IBUF[3]),
        .I5(x15),
        .O(prod_OBUF[6]));
  OBUF \prod_OBUF[7]_inst 
       (.I(prod_OBUF[7]),
        .O(prod[7]));
  LUT6 #(
    .INIT(64'hFCCCC880F8800000)) 
    \prod_OBUF[7]_inst_i_1 
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[3]),
        .I2(x14),
        .I3(x17),
        .I4(x15),
        .I5(a_IBUF[3]),
        .O(prod_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \prod_OBUF[7]_inst_i_2 
       (.I0(x7),
        .I1(x13),
        .I2(a_IBUF[3]),
        .I3(b_IBUF[2]),
        .O(x14));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \prod_OBUF[7]_inst_i_3 
       (.I0(x12),
        .I1(x16),
        .I2(b_IBUF[3]),
        .I3(a_IBUF[1]),
        .O(x17));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEA80)) 
    \prod_OBUF[7]_inst_i_4 
       (.I0(x7),
        .I1(b_IBUF[2]),
        .I2(a_IBUF[3]),
        .I3(x13),
        .O(x15));
  LUT6 #(
    .INIT(64'hF000800000000000)) 
    \prod_OBUF[7]_inst_i_5 
       (.I0(a_IBUF[0]),
        .I1(a_IBUF[1]),
        .I2(a_IBUF[3]),
        .I3(b_IBUF[0]),
        .I4(a_IBUF[2]),
        .I5(b_IBUF[1]),
        .O(x7));
  LUT6 #(
    .INIT(64'hF8F8A880A8808080)) 
    \prod_OBUF[7]_inst_i_6 
       (.I0(b_IBUF[2]),
        .I1(a_IBUF[2]),
        .I2(x6),
        .I3(a_IBUF[1]),
        .I4(x4),
        .I5(x9),
        .O(x13));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

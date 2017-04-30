module top(
//Inputs
  w_p2_in_bounded_stencil_stream_to_gray_1_0_0_0,
  w_p2_in_bounded_stencil_stream_to_gray_1_1_0_0,
  w_p2_in_bounded_stencil_stream_to_gray_1_2_0_0,

  w_p2_in_bounded_stencil_stream_0_0_0,
  w_p2_in_bounded_stencil_stream_1_0_0,
  w_p2_in_bounded_stencil_stream_2_0_0,

//Outputs
  w_hw_output_1_stencil_stream_0_0_0,
  w_hw_output_1_stencil_stream_1_0_0,
  w_hw_output_1_stencil_stream_2_0_0,

  clk
);

//Inputs
input    w_p2_in_bounded_stencil_stream_to_gray_1_0_0_0;
input    w_p2_in_bounded_stencil_stream_to_gray_1_1_0_0;
input    w_p2_in_bounded_stencil_stream_to_gray_1_2_0_0;

input    w_p2_in_bounded_stencil_stream_0_0_0;
input    w_p2_in_bounded_stencil_stream_1_0_0;
input    w_p2_in_bounded_stencil_stream_2_0_0;

//Outputs
output   w_hw_output_1_stencil_stream_0_0_0;
output   w_hw_output_1_stencil_stream_1_0_0;
output   w_hw_output_1_stencil_stream_2_0_0;

input   clk;

wire   w_ratio_1_stencil_stream_0_0;

wire   w_gray_1_stencil_stream_0_0;
wire   w_gray_1_stencil_stream_0_1;
wire   w_gray_1_stencil_stream_0_2;
wire   w_gray_1_stencil_stream_0_3;
wire   w_gray_1_stencil_stream_0_4;
wire   w_gray_1_stencil_stream_0_5;
wire   w_gray_1_stencil_stream_0_6;
wire   w_gray_1_stencil_stream_0_7;
wire   w_gray_1_stencil_stream_0_8;
wire   w_gray_1_stencil_stream_1_0;
wire   w_gray_1_stencil_stream_1_1;
wire   w_gray_1_stencil_stream_1_2;
wire   w_gray_1_stencil_stream_1_3;
wire   w_gray_1_stencil_stream_1_4;
wire   w_gray_1_stencil_stream_1_5;
wire   w_gray_1_stencil_stream_1_6;
wire   w_gray_1_stencil_stream_1_7;
wire   w_gray_1_stencil_stream_1_8;
wire   w_gray_1_stencil_stream_2_0;
wire   w_gray_1_stencil_stream_2_1;
wire   w_gray_1_stencil_stream_2_2;
wire   w_gray_1_stencil_stream_2_3;
wire   w_gray_1_stencil_stream_2_4;
wire   w_gray_1_stencil_stream_2_5;
wire   w_gray_1_stencil_stream_2_6;
wire   w_gray_1_stencil_stream_2_7;
wire   w_gray_1_stencil_stream_2_8;
wire   w_gray_1_stencil_stream_3_0;
wire   w_gray_1_stencil_stream_3_1;
wire   w_gray_1_stencil_stream_3_2;
wire   w_gray_1_stencil_stream_3_3;
wire   w_gray_1_stencil_stream_3_4;
wire   w_gray_1_stencil_stream_3_5;
wire   w_gray_1_stencil_stream_3_6;
wire   w_gray_1_stencil_stream_3_7;
wire   w_gray_1_stencil_stream_3_8;
wire   w_gray_1_stencil_stream_4_0;
wire   w_gray_1_stencil_stream_4_1;
wire   w_gray_1_stencil_stream_4_2;
wire   w_gray_1_stencil_stream_4_3;
wire   w_gray_1_stencil_stream_4_4;
wire   w_gray_1_stencil_stream_4_5;
wire   w_gray_1_stencil_stream_4_6;
wire   w_gray_1_stencil_stream_4_7;
wire   w_gray_1_stencil_stream_4_8;
wire   w_gray_1_stencil_stream_5_0;
wire   w_gray_1_stencil_stream_5_1;
wire   w_gray_1_stencil_stream_5_2;
wire   w_gray_1_stencil_stream_5_3;
wire   w_gray_1_stencil_stream_5_4;
wire   w_gray_1_stencil_stream_5_5;
wire   w_gray_1_stencil_stream_5_6;
wire   w_gray_1_stencil_stream_5_7;
wire   w_gray_1_stencil_stream_5_8;
wire   w_gray_1_stencil_stream_6_0;
wire   w_gray_1_stencil_stream_6_1;
wire   w_gray_1_stencil_stream_6_2;
wire   w_gray_1_stencil_stream_6_3;
wire   w_gray_1_stencil_stream_6_4;
wire   w_gray_1_stencil_stream_6_5;
wire   w_gray_1_stencil_stream_6_6;
wire   w_gray_1_stencil_stream_6_7;
wire   w_gray_1_stencil_stream_6_8;
wire   w_gray_1_stencil_stream_7_0;
wire   w_gray_1_stencil_stream_7_1;
wire   w_gray_1_stencil_stream_7_2;
wire   w_gray_1_stencil_stream_7_3;
wire   w_gray_1_stencil_stream_7_4;
wire   w_gray_1_stencil_stream_7_5;
wire   w_gray_1_stencil_stream_7_6;
wire   w_gray_1_stencil_stream_7_7;
wire   w_gray_1_stencil_stream_7_8;
wire   w_gray_1_stencil_stream_8_0;
wire   w_gray_1_stencil_stream_8_1;
wire   w_gray_1_stencil_stream_8_2;
wire   w_gray_1_stencil_stream_8_3;
wire   w_gray_1_stencil_stream_8_4;
wire   w_gray_1_stencil_stream_8_5;
wire   w_gray_1_stencil_stream_8_6;
wire   w_gray_1_stencil_stream_8_7;
wire   w_gray_1_stencil_stream_8_8;

wire   w_gray_1_stencil_update_stream_0_0;

wire   gnd;
assign gnd=1'b0;

kernel__ratio_1_stencil_stream KERN__ratio_1_stencil_stream (
    .w_gray_1_stencil_0_0(w_gray_1_stencil_stream_0_0),
    .w_gray_1_stencil_0_1(w_gray_1_stencil_stream_0_1),
    .w_gray_1_stencil_0_2(w_gray_1_stencil_stream_0_2),
    .w_gray_1_stencil_0_3(w_gray_1_stencil_stream_0_3),
    .w_gray_1_stencil_0_4(w_gray_1_stencil_stream_0_4),
    .w_gray_1_stencil_0_5(w_gray_1_stencil_stream_0_5),
    .w_gray_1_stencil_0_6(w_gray_1_stencil_stream_0_6),
    .w_gray_1_stencil_0_7(w_gray_1_stencil_stream_0_7),
    .w_gray_1_stencil_0_8(w_gray_1_stencil_stream_0_8),
    .w_gray_1_stencil_1_0(w_gray_1_stencil_stream_1_0),
    .w_gray_1_stencil_1_1(w_gray_1_stencil_stream_1_1),
    .w_gray_1_stencil_1_2(w_gray_1_stencil_stream_1_2),
    .w_gray_1_stencil_1_3(w_gray_1_stencil_stream_1_3),
    .w_gray_1_stencil_1_4(w_gray_1_stencil_stream_1_4),
    .w_gray_1_stencil_1_5(w_gray_1_stencil_stream_1_5),
    .w_gray_1_stencil_1_6(w_gray_1_stencil_stream_1_6),
    .w_gray_1_stencil_1_7(w_gray_1_stencil_stream_1_7),
    .w_gray_1_stencil_1_8(w_gray_1_stencil_stream_1_8),
    .w_gray_1_stencil_2_0(w_gray_1_stencil_stream_2_0),
    .w_gray_1_stencil_2_1(w_gray_1_stencil_stream_2_1),
    .w_gray_1_stencil_2_2(w_gray_1_stencil_stream_2_2),
    .w_gray_1_stencil_2_3(w_gray_1_stencil_stream_2_3),
    .w_gray_1_stencil_2_4(w_gray_1_stencil_stream_2_4),
    .w_gray_1_stencil_2_5(w_gray_1_stencil_stream_2_5),
    .w_gray_1_stencil_2_6(w_gray_1_stencil_stream_2_6),
    .w_gray_1_stencil_2_7(w_gray_1_stencil_stream_2_7),
    .w_gray_1_stencil_2_8(w_gray_1_stencil_stream_2_8),
    .w_gray_1_stencil_3_0(w_gray_1_stencil_stream_3_0),
    .w_gray_1_stencil_3_1(w_gray_1_stencil_stream_3_1),
    .w_gray_1_stencil_3_2(w_gray_1_stencil_stream_3_2),
    .w_gray_1_stencil_3_3(w_gray_1_stencil_stream_3_3),
    .w_gray_1_stencil_3_4(w_gray_1_stencil_stream_3_4),
    .w_gray_1_stencil_3_5(w_gray_1_stencil_stream_3_5),
    .w_gray_1_stencil_3_6(w_gray_1_stencil_stream_3_6),
    .w_gray_1_stencil_3_7(w_gray_1_stencil_stream_3_7),
    .w_gray_1_stencil_3_8(w_gray_1_stencil_stream_3_8),
    .w_gray_1_stencil_4_0(w_gray_1_stencil_stream_4_0),
    .w_gray_1_stencil_4_1(w_gray_1_stencil_stream_4_1),
    .w_gray_1_stencil_4_2(w_gray_1_stencil_stream_4_2),
    .w_gray_1_stencil_4_3(w_gray_1_stencil_stream_4_3),
    .w_gray_1_stencil_4_4(w_gray_1_stencil_stream_4_4),
    .w_gray_1_stencil_4_5(w_gray_1_stencil_stream_4_5),
    .w_gray_1_stencil_4_6(w_gray_1_stencil_stream_4_6),
    .w_gray_1_stencil_4_7(w_gray_1_stencil_stream_4_7),
    .w_gray_1_stencil_4_8(w_gray_1_stencil_stream_4_8),
    .w_gray_1_stencil_5_0(w_gray_1_stencil_stream_5_0),
    .w_gray_1_stencil_5_1(w_gray_1_stencil_stream_5_1),
    .w_gray_1_stencil_5_2(w_gray_1_stencil_stream_5_2),
    .w_gray_1_stencil_5_3(w_gray_1_stencil_stream_5_3),
    .w_gray_1_stencil_5_4(w_gray_1_stencil_stream_5_4),
    .w_gray_1_stencil_5_5(w_gray_1_stencil_stream_5_5),
    .w_gray_1_stencil_5_6(w_gray_1_stencil_stream_5_6),
    .w_gray_1_stencil_5_7(w_gray_1_stencil_stream_5_7),
    .w_gray_1_stencil_5_8(w_gray_1_stencil_stream_5_8),
    .w_gray_1_stencil_6_0(w_gray_1_stencil_stream_6_0),
    .w_gray_1_stencil_6_1(w_gray_1_stencil_stream_6_1),
    .w_gray_1_stencil_6_2(w_gray_1_stencil_stream_6_2),
    .w_gray_1_stencil_6_3(w_gray_1_stencil_stream_6_3),
    .w_gray_1_stencil_6_4(w_gray_1_stencil_stream_6_4),
    .w_gray_1_stencil_6_5(w_gray_1_stencil_stream_6_5),
    .w_gray_1_stencil_6_6(w_gray_1_stencil_stream_6_6),
    .w_gray_1_stencil_6_7(w_gray_1_stencil_stream_6_7),
    .w_gray_1_stencil_6_8(w_gray_1_stencil_stream_6_8),
    .w_gray_1_stencil_7_0(w_gray_1_stencil_stream_7_0),
    .w_gray_1_stencil_7_1(w_gray_1_stencil_stream_7_1),
    .w_gray_1_stencil_7_2(w_gray_1_stencil_stream_7_2),
    .w_gray_1_stencil_7_3(w_gray_1_stencil_stream_7_3),
    .w_gray_1_stencil_7_4(w_gray_1_stencil_stream_7_4),
    .w_gray_1_stencil_7_5(w_gray_1_stencil_stream_7_5),
    .w_gray_1_stencil_7_6(w_gray_1_stencil_stream_7_6),
    .w_gray_1_stencil_7_7(w_gray_1_stencil_stream_7_7),
    .w_gray_1_stencil_7_8(w_gray_1_stencil_stream_7_8),
    .w_gray_1_stencil_8_0(w_gray_1_stencil_stream_8_0),
    .w_gray_1_stencil_8_1(w_gray_1_stencil_stream_8_1),
    .w_gray_1_stencil_8_2(w_gray_1_stencil_stream_8_2),
    .w_gray_1_stencil_8_3(w_gray_1_stencil_stream_8_3),
    .w_gray_1_stencil_8_4(w_gray_1_stencil_stream_8_4),
    .w_gray_1_stencil_8_5(w_gray_1_stencil_stream_8_5),
    .w_gray_1_stencil_8_6(w_gray_1_stencil_stream_8_6),
    .w_gray_1_stencil_8_7(w_gray_1_stencil_stream_8_7),
    .w_gray_1_stencil_8_8(w_gray_1_stencil_stream_8_8),

    .out_w_ratio_1_stencil_0_0(w_ratio_1_stencil_stream_0_0),

    .clk(clk)
);

LB_9_9_1_8bit_False LB__gray_1_stencil_stream (
    .clk(clk),

    .in0(w_gray_1_stencil_update_stream_0_0),

    .out0(w_gray_1_stencil_stream_0_0),
    .out1(w_gray_1_stencil_stream_0_1),
    .out2(w_gray_1_stencil_stream_0_2),
    .out3(w_gray_1_stencil_stream_0_3),
    .out4(w_gray_1_stencil_stream_0_4),
    .out5(w_gray_1_stencil_stream_0_5),
    .out6(w_gray_1_stencil_stream_0_6),
    .out7(w_gray_1_stencil_stream_0_7),
    .out8(w_gray_1_stencil_stream_0_8),
    .out9(w_gray_1_stencil_stream_1_0),
    .out10(w_gray_1_stencil_stream_1_1),
    .out11(w_gray_1_stencil_stream_1_2),
    .out12(w_gray_1_stencil_stream_1_3),
    .out13(w_gray_1_stencil_stream_1_4),
    .out14(w_gray_1_stencil_stream_1_5),
    .out15(w_gray_1_stencil_stream_1_6),
    .out16(w_gray_1_stencil_stream_1_7),
    .out17(w_gray_1_stencil_stream_1_8),
    .out18(w_gray_1_stencil_stream_2_0),
    .out19(w_gray_1_stencil_stream_2_1),
    .out20(w_gray_1_stencil_stream_2_2),
    .out21(w_gray_1_stencil_stream_2_3),
    .out22(w_gray_1_stencil_stream_2_4),
    .out23(w_gray_1_stencil_stream_2_5),
    .out24(w_gray_1_stencil_stream_2_6),
    .out25(w_gray_1_stencil_stream_2_7),
    .out26(w_gray_1_stencil_stream_2_8),
    .out27(w_gray_1_stencil_stream_3_0),
    .out28(w_gray_1_stencil_stream_3_1),
    .out29(w_gray_1_stencil_stream_3_2),
    .out30(w_gray_1_stencil_stream_3_3),
    .out31(w_gray_1_stencil_stream_3_4),
    .out32(w_gray_1_stencil_stream_3_5),
    .out33(w_gray_1_stencil_stream_3_6),
    .out34(w_gray_1_stencil_stream_3_7),
    .out35(w_gray_1_stencil_stream_3_8),
    .out36(w_gray_1_stencil_stream_4_0),
    .out37(w_gray_1_stencil_stream_4_1),
    .out38(w_gray_1_stencil_stream_4_2),
    .out39(w_gray_1_stencil_stream_4_3),
    .out40(w_gray_1_stencil_stream_4_4),
    .out41(w_gray_1_stencil_stream_4_5),
    .out42(w_gray_1_stencil_stream_4_6),
    .out43(w_gray_1_stencil_stream_4_7),
    .out44(w_gray_1_stencil_stream_4_8),
    .out45(w_gray_1_stencil_stream_5_0),
    .out46(w_gray_1_stencil_stream_5_1),
    .out47(w_gray_1_stencil_stream_5_2),
    .out48(w_gray_1_stencil_stream_5_3),
    .out49(w_gray_1_stencil_stream_5_4),
    .out50(w_gray_1_stencil_stream_5_5),
    .out51(w_gray_1_stencil_stream_5_6),
    .out52(w_gray_1_stencil_stream_5_7),
    .out53(w_gray_1_stencil_stream_5_8),
    .out54(w_gray_1_stencil_stream_6_0),
    .out55(w_gray_1_stencil_stream_6_1),
    .out56(w_gray_1_stencil_stream_6_2),
    .out57(w_gray_1_stencil_stream_6_3),
    .out58(w_gray_1_stencil_stream_6_4),
    .out59(w_gray_1_stencil_stream_6_5),
    .out60(w_gray_1_stencil_stream_6_6),
    .out61(w_gray_1_stencil_stream_6_7),
    .out62(w_gray_1_stencil_stream_6_8),
    .out63(w_gray_1_stencil_stream_7_0),
    .out64(w_gray_1_stencil_stream_7_1),
    .out65(w_gray_1_stencil_stream_7_2),
    .out66(w_gray_1_stencil_stream_7_3),
    .out67(w_gray_1_stencil_stream_7_4),
    .out68(w_gray_1_stencil_stream_7_5),
    .out69(w_gray_1_stencil_stream_7_6),
    .out70(w_gray_1_stencil_stream_7_7),
    .out71(w_gray_1_stencil_stream_7_8),
    .out72(w_gray_1_stencil_stream_8_0),
    .out73(w_gray_1_stencil_stream_8_1),
    .out74(w_gray_1_stencil_stream_8_2),
    .out75(w_gray_1_stencil_stream_8_3),
    .out76(w_gray_1_stencil_stream_8_4),
    .out77(w_gray_1_stencil_stream_8_5),
    .out78(w_gray_1_stencil_stream_8_6),
    .out79(w_gray_1_stencil_stream_8_7),
    .out80(w_gray_1_stencil_stream_8_8)
);

kernel__gray_1_stencil_update_stream KERN__gray_1_stencil_update_stream (
    .w_p2_in_bounded_stencil_0_0_0(w_p2_in_bounded_stencil_stream_to_gray_1_0_0_0),
    .w_p2_in_bounded_stencil_1_0_0(w_p2_in_bounded_stencil_stream_to_gray_1_1_0_0),
    .w_p2_in_bounded_stencil_2_0_0(w_p2_in_bounded_stencil_stream_to_gray_1_2_0_0),

    .out_w_gray_1_stencil_0_0(w_gray_1_stencil_update_stream_0_0),

    .clk(clk)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_p2_in_bounded_stencil_0_0_0(w_ratio_1_stencil_stream_0_0),
    .w_p2_in_bounded_stencil_1_0_0(w_p2_in_bounded_stencil_stream_0_0_0),
    .w_p2_in_bounded_stencil_2_0_0(w_p2_in_bounded_stencil_stream_1_0_0),
    .w_ratio_1_stencil_0_0(w_p2_in_bounded_stencil_stream_2_0_0),

    .out_w_hw_output_1_stencil_1_0_0(w_hw_output_1_stencil_stream_0_0_0),
    .out_w_hw_output_1_stencil_2_0_0(w_hw_output_1_stencil_stream_1_0_0),
    .out_w_hw_output_1_stencil_packed(w_hw_output_1_stencil_stream_2_0_0),

    .clk(clk)
);

endmodule



module kernel__gray_1_stencil_update_stream(
//Inputs
  w_p2_in_bounded_stencil_0_0_0,
  w_p2_in_bounded_stencil_1_0_0,
  w_p2_in_bounded_stencil_2_0_0,
//Outputs
  out_w_gray_1_stencil_0_0,

  clk
);

//Inputs
input  w_p2_in_bounded_stencil_1_0_0;
input  w_p2_in_bounded_stencil_0_0_0;
input  w_p2_in_bounded_stencil_2_0_0;
//Outputs
output  out_w_gray_1_stencil_0_0;

input  clk;


wire  w_267;
wire  w_268;
wire  w_269;
wire  w_270;
wire  w_271;
wire  w_272;
wire  w_273;
wire  w_274;
wire  w_275;
wire  w_276;
wire  w_277;
wire  w_278;
wire  w_279;
wire  w_280;
wire  w_281;
wire  w_282;
wire  w_gray_1_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_gray_1_stencil_0_0=w_gray_1_stencil_0_0;
assign  w_267  =  w_p2_in_bounded_stencil_0_0_0 ;
assign  w_268  =  w_267 ;
assign  w_269  = 1'b0;
MULT_16b_pe mult_0 (
  .a(w_269),
  .b(w_268),
  .c(w_270),
  .clk(clk)
);
assign  w_271  =  w_p2_in_bounded_stencil_1_0_0 ;
assign  w_272  =  w_271 ;
assign  w_273  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_272),
  .b(w_273),
  .c(w_274),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_274),
  .b(w_270),
  .c(w_275),
  .clk(clk)
);
assign  w_276  =  w_p2_in_bounded_stencil_2_0_0 ;
assign  w_277  =  w_276 ;
assign  w_278  = 1'b0;
MULT_16b_pe mult_3 (
  .a(w_277),
  .b(w_278),
  .c(w_279),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_275),
  .b(w_279),
  .c(w_280),
  .clk(clk)
);
LSHIFT_16b_pe lshift_5 (
  .a(w_280),
  .b(1'b0),
  .c(w_281),
  .clk(clk)
);
assign  w_282  =  w_281 ;
assign  w_gray_1_stencil_0_0  =  w_282 ;

endmodule







module kernel__ratio_1_stencil_stream(
//Inputs
  w_gray_1_stencil_0_0,
  w_gray_1_stencil_0_1,
  w_gray_1_stencil_0_2,
  w_gray_1_stencil_0_3,
  w_gray_1_stencil_0_4,
  w_gray_1_stencil_0_5,
  w_gray_1_stencil_0_6,
  w_gray_1_stencil_0_7,
  w_gray_1_stencil_0_8,
  w_gray_1_stencil_1_0,
  w_gray_1_stencil_1_1,
  w_gray_1_stencil_1_2,
  w_gray_1_stencil_1_3,
  w_gray_1_stencil_1_4,
  w_gray_1_stencil_1_5,
  w_gray_1_stencil_1_6,
  w_gray_1_stencil_1_7,
  w_gray_1_stencil_1_8,
  w_gray_1_stencil_2_0,
  w_gray_1_stencil_2_1,
  w_gray_1_stencil_2_2,
  w_gray_1_stencil_2_3,
  w_gray_1_stencil_2_4,
  w_gray_1_stencil_2_5,
  w_gray_1_stencil_2_6,
  w_gray_1_stencil_2_7,
  w_gray_1_stencil_2_8,
  w_gray_1_stencil_3_0,
  w_gray_1_stencil_3_1,
  w_gray_1_stencil_3_2,
  w_gray_1_stencil_3_3,
  w_gray_1_stencil_3_4,
  w_gray_1_stencil_3_5,
  w_gray_1_stencil_3_6,
  w_gray_1_stencil_3_7,
  w_gray_1_stencil_3_8,
  w_gray_1_stencil_4_0,
  w_gray_1_stencil_4_1,
  w_gray_1_stencil_4_2,
  w_gray_1_stencil_4_3,
  w_gray_1_stencil_4_4,
  w_gray_1_stencil_4_5,
  w_gray_1_stencil_4_6,
  w_gray_1_stencil_4_7,
  w_gray_1_stencil_4_8,
  w_gray_1_stencil_5_0,
  w_gray_1_stencil_5_1,
  w_gray_1_stencil_5_2,
  w_gray_1_stencil_5_3,
  w_gray_1_stencil_5_4,
  w_gray_1_stencil_5_5,
  w_gray_1_stencil_5_6,
  w_gray_1_stencil_5_7,
  w_gray_1_stencil_5_8,
  w_gray_1_stencil_6_0,
  w_gray_1_stencil_6_1,
  w_gray_1_stencil_6_2,
  w_gray_1_stencil_6_3,
  w_gray_1_stencil_6_4,
  w_gray_1_stencil_6_5,
  w_gray_1_stencil_6_6,
  w_gray_1_stencil_6_7,
  w_gray_1_stencil_6_8,
  w_gray_1_stencil_7_0,
  w_gray_1_stencil_7_1,
  w_gray_1_stencil_7_2,
  w_gray_1_stencil_7_3,
  w_gray_1_stencil_7_4,
  w_gray_1_stencil_7_5,
  w_gray_1_stencil_7_6,
  w_gray_1_stencil_7_7,
  w_gray_1_stencil_7_8,
  w_gray_1_stencil_8_0,
  w_gray_1_stencil_8_1,
  w_gray_1_stencil_8_2,
  w_gray_1_stencil_8_3,
  w_gray_1_stencil_8_4,
  w_gray_1_stencil_8_5,
  w_gray_1_stencil_8_6,
  w_gray_1_stencil_8_7,
  w_gray_1_stencil_8_8,
//Outputs
  out_w_ratio_1_stencil_0_0,

  clk
);

//Inputs
input  w_gray_1_stencil_3_5;
input  w_gray_1_stencil_3_4;
input  w_gray_1_stencil_3_7;
input  w_gray_1_stencil_3_6;
input  w_gray_1_stencil_3_1;
input  w_gray_1_stencil_3_0;
input  w_gray_1_stencil_3_3;
input  w_gray_1_stencil_3_2;
input  w_gray_1_stencil_4_6;
input  w_gray_1_stencil_4_7;
input  w_gray_1_stencil_4_4;
input  w_gray_1_stencil_4_5;
input  w_gray_1_stencil_4_2;
input  w_gray_1_stencil_3_8;
input  w_gray_1_stencil_4_0;
input  w_gray_1_stencil_4_1;
input  w_gray_1_stencil_5_7;
input  w_gray_1_stencil_5_6;
input  w_gray_1_stencil_5_5;
input  w_gray_1_stencil_5_4;
input  w_gray_1_stencil_5_3;
input  w_gray_1_stencil_5_2;
input  w_gray_1_stencil_5_1;
input  w_gray_1_stencil_5_0;
input  w_gray_1_stencil_6_0;
input  w_gray_1_stencil_6_1;
input  w_gray_1_stencil_6_2;
input  w_gray_1_stencil_6_3;
input  w_gray_1_stencil_6_4;
input  w_gray_1_stencil_6_5;
input  w_gray_1_stencil_6_6;
input  w_gray_1_stencil_5_8;
input  w_gray_1_stencil_0_2;
input  w_gray_1_stencil_0_3;
input  w_gray_1_stencil_0_0;
input  w_gray_1_stencil_1_8;
input  w_gray_1_stencil_0_6;
input  w_gray_1_stencil_4_8;
input  w_gray_1_stencil_0_4;
input  w_gray_1_stencil_0_5;
input  w_gray_1_stencil_1_3;
input  w_gray_1_stencil_1_2;
input  w_gray_1_stencil_1_1;
input  w_gray_1_stencil_1_0;
input  w_gray_1_stencil_1_7;
input  w_gray_1_stencil_1_6;
input  w_gray_1_stencil_1_5;
input  w_gray_1_stencil_1_4;
input  w_gray_1_stencil_6_8;
input  w_gray_1_stencil_2_8;
input  w_gray_1_stencil_2_4;
input  w_gray_1_stencil_2_5;
input  w_gray_1_stencil_2_6;
input  w_gray_1_stencil_6_7;
input  w_gray_1_stencil_2_0;
input  w_gray_1_stencil_2_7;
input  w_gray_1_stencil_2_2;
input  w_gray_1_stencil_2_3;
input  w_gray_1_stencil_8_8;
input  w_gray_1_stencil_4_3;
input  w_gray_1_stencil_0_1;
input  w_gray_1_stencil_8_5;
input  w_gray_1_stencil_0_7;
input  w_gray_1_stencil_7_1;
input  w_gray_1_stencil_7_0;
input  w_gray_1_stencil_7_3;
input  w_gray_1_stencil_7_2;
input  w_gray_1_stencil_7_5;
input  w_gray_1_stencil_7_4;
input  w_gray_1_stencil_7_7;
input  w_gray_1_stencil_7_6;
input  w_gray_1_stencil_8_2;
input  w_gray_1_stencil_7_8;
input  w_gray_1_stencil_8_0;
input  w_gray_1_stencil_8_1;
input  w_gray_1_stencil_8_6;
input  w_gray_1_stencil_8_7;
input  w_gray_1_stencil_8_4;
input  w_gray_1_stencil_2_1;
input  w_gray_1_stencil_8_3;
input  w_gray_1_stencil_0_8;
//Outputs
output  out_w_ratio_1_stencil_0_0;

input  clk;


wire  r0_w_p2_sum_xa24_0;
wire  r10_w_p2_sum_xa24_0;
wire  r11_w_p2_sum_xa24_0;
wire  r12_w_p2_sum_xa24_0;
wire  r13_w_p2_sum_xa24_0;
wire  r14_w_p2_sum_xa24_0;
wire  r15_w_p2_sum_xa24_0;
wire  r16_w_p2_sum_xa24_0;
wire  r17_w_p2_sum_xa24_0;
wire  r18_w_p2_sum_xa24_0;
wire  r19_w_p2_sum_xa24_0;
wire  r1_w_p2_sum_xa24_0;
wire  r20_w_p2_sum_xa24_0;
wire  r21_w_p2_sum_xa24_0;
wire  r22_w_p2_sum_xa24_0;
wire  r23_w_p2_sum_xa24_0;
wire  r24_w_p2_sum_xa24_0;
wire  r25_w_p2_sum_xa24_0;
wire  r26_w_p2_sum_xa24_0;
wire  r27_w_p2_sum_xa24_0;
wire  r28_w_p2_sum_xa24_0;
wire  r29_w_p2_sum_xa24_0;
wire  r2_w_p2_sum_xa24_0;
wire  r30_w_p2_sum_xa24_0;
wire  r31_w_p2_sum_xa24_0;
wire  r32_w_p2_sum_xa24_0;
wire  r33_w_p2_sum_xa24_0;
wire  r34_w_p2_sum_xa24_0;
wire  r35_w_p2_sum_xa24_0;
wire  r36_w_p2_sum_xa24_0;
wire  r37_w_p2_sum_xa24_0;
wire  r38_w_p2_sum_xa24_0;
wire  r39_w_p2_sum_xa24_0;
wire  r3_w_p2_sum_xa24_0;
wire  r40_w_p2_sum_xa24_0;
wire  r41_w_p2_sum_xa24_0;
wire  r42_w_p2_sum_xa24_0;
wire  r43_w_p2_sum_xa24_0;
wire  r44_w_p2_sum_xa24_0;
wire  r45_w_p2_sum_xa24_0;
wire  r46_w_p2_sum_xa24_0;
wire  r47_w_p2_sum_xa24_0;
wire  r48_w_p2_sum_xa24_0;
wire  r49_w_p2_sum_xa24_0;
wire  r4_w_p2_sum_xa24_0;
wire  r50_w_p2_sum_xa24_0;
wire  r51_w_p2_sum_xa24_0;
wire  r52_w_p2_sum_xa24_0;
wire  r53_w_p2_sum_xa24_0;
wire  r54_w_p2_sum_xa24_0;
wire  r55_w_p2_sum_xa24_0;
wire  r56_w_p2_sum_xa24_0;
wire  r57_w_p2_sum_xa24_0;
wire  r58_w_p2_sum_xa24_0;
wire  r59_w_p2_sum_xa24_0;
wire  r5_w_p2_sum_xa24_0;
wire  r60_w_p2_sum_xa24_0;
wire  r61_w_p2_sum_xa24_0;
wire  r62_w_p2_sum_xa24_0;
wire  r63_w_p2_sum_xa24_0;
wire  r64_w_p2_sum_xa24_0;
wire  r65_w_p2_sum_xa24_0;
wire  r66_w_p2_sum_xa24_0;
wire  r67_w_p2_sum_xa24_0;
wire  r68_w_p2_sum_xa24_0;
wire  r69_w_p2_sum_xa24_0;
wire  r6_w_p2_sum_xa24_0;
wire  r70_w_p2_sum_xa24_0;
wire  r71_w_p2_sum_xa24_0;
wire  r72_w_p2_sum_xa24_0;
wire  r73_w_p2_sum_xa24_0;
wire  r74_w_p2_sum_xa24_0;
wire  r75_w_p2_sum_xa24_0;
wire  r76_w_p2_sum_xa24_0;
wire  r77_w_p2_sum_xa24_0;
wire  r78_w_p2_sum_xa24_0;
wire  r79_w_p2_sum_xa24_0;
wire  r7_w_p2_sum_xa24_0;
wire  r80_w_p2_sum_xa24_0;
wire  r8_w_p2_sum_xa24_0;
wire  r9_w_p2_sum_xa24_0;
wire  w_283;
wire  w_284;
wire  w_285;
wire  w_286;
wire  w_287;
wire  w_288;
wire  w_289;
wire  w_290;
wire  w_291;
wire  w_292;
wire  w_293;
wire  w_294;
wire  w_295;
wire  w_296;
wire  w_297;
wire  w_298;
wire  w_299;
wire  w_300;
wire  w_301;
wire  w_302;
wire  w_303;
wire  w_304;
wire  w_305;
wire  w_306;
wire  w_307;
wire  w_308;
wire  w_309;
wire  w_310;
wire  w_311;
wire  w_312;
wire  w_313;
wire  w_314;
wire  w_315;
wire  w_316;
wire  w_317;
wire  w_318;
wire  w_319;
wire  w_320;
wire  w_321;
wire  w_322;
wire  w_323;
wire  w_324;
wire  w_325;
wire  w_326;
wire  w_327;
wire  w_328;
wire  w_329;
wire  w_330;
wire  w_331;
wire  w_332;
wire  w_333;
wire  w_334;
wire  w_335;
wire  w_336;
wire  w_337;
wire  w_338;
wire  w_339;
wire  w_340;
wire  w_341;
wire  w_342;
wire  w_343;
wire  w_344;
wire  w_345;
wire  w_346;
wire  w_347;
wire  w_348;
wire  w_349;
wire  w_350;
wire  w_351;
wire  w_352;
wire  w_353;
wire  w_354;
wire  w_355;
wire  w_356;
wire  w_357;
wire  w_358;
wire  w_359;
wire  w_360;
wire  w_361;
wire  w_362;
wire  w_363;
wire  w_364;
wire  w_365;
wire  w_366;
wire  w_367;
wire  w_368;
wire  w_369;
wire  w_370;
wire  w_371;
wire  w_372;
wire  w_373;
wire  w_374;
wire  w_375;
wire  w_376;
wire  w_377;
wire  w_378;
wire  w_379;
wire  w_380;
wire  w_381;
wire  w_382;
wire  w_383;
wire  w_384;
wire  w_385;
wire  w_386;
wire  w_387;
wire  w_388;
wire  w_389;
wire  w_390;
wire  w_391;
wire  w_392;
wire  w_393;
wire  w_394;
wire  w_395;
wire  w_396;
wire  w_397;
wire  w_398;
wire  w_399;
wire  w_400;
wire  w_401;
wire  w_402;
wire  w_403;
wire  w_404;
wire  w_405;
wire  w_406;
wire  w_407;
wire  w_408;
wire  w_409;
wire  w_410;
wire  w_411;
wire  w_412;
wire  w_413;
wire  w_414;
wire  w_415;
wire  w_416;
wire  w_417;
wire  w_418;
wire  w_419;
wire  w_420;
wire  w_421;
wire  w_422;
wire  w_423;
wire  w_424;
wire  w_425;
wire  w_426;
wire  w_427;
wire  w_428;
wire  w_429;
wire  w_430;
wire  w_431;
wire  w_432;
wire  w_433;
wire  w_434;
wire  w_435;
wire  w_436;
wire  w_437;
wire  w_438;
wire  w_439;
wire  w_440;
wire  w_441;
wire  w_442;
wire  w_443;
wire  w_444;
wire  w_445;
wire  w_446;
wire  w_447;
wire  w_448;
wire  w_449;
wire  w_450;
wire  w_451;
wire  w_452;
wire  w_453;
wire  w_454;
wire  w_455;
wire  w_456;
wire  w_457;
wire  w_458;
wire  w_459;
wire  w_460;
wire  w_461;
wire  w_462;
wire  w_463;
wire  w_464;
wire  w_465;
wire  w_466;
wire  w_467;
wire  w_468;
wire  w_469;
wire  w_470;
wire  w_471;
wire  w_472;
wire  w_473;
wire  w_474;
wire  w_475;
wire  w_476;
wire  w_477;
wire  w_478;
wire  w_479;
wire  w_480;
wire  w_481;
wire  w_482;
wire  w_483;
wire  w_484;
wire  w_485;
wire  w_486;
wire  w_487;
wire  w_488;
wire  w_489;
wire  w_490;
wire  w_491;
wire  w_492;
wire  w_493;
wire  w_494;
wire  w_495;
wire  w_496;
wire  w_497;
wire  w_498;
wire  w_499;
wire  w_500;
wire  w_501;
wire  w_502;
wire  w_503;
wire  w_504;
wire  w_505;
wire  w_506;
wire  w_507;
wire  w_508;
wire  w_509;
wire  w_510;
wire  w_511;
wire  w_512;
wire  w_513;
wire  w_514;
wire  w_515;
wire  w_516;
wire  w_517;
wire  w_518;
wire  w_519;
wire  w_520;
wire  w_521;
wire  w_522;
wire  w_523;
wire  w_524;
wire  w_525;
wire  w_526;
wire  w_527;
wire  w_528;
wire  w_529;
wire  w_530;
wire  w_531;
wire  w_532;
wire  w_533;
wire  w_534;
wire  w_535;
wire  w_536;
wire  w_537;
wire  w_538;
wire  w_539;
wire  w_540;
wire  w_541;
wire  w_542;
wire  w_543;
wire  w_544;
wire  w_545;
wire  w_546;
wire  w_547;
wire  w_548;
wire  w_549;
wire  w_550;
wire  w_551;
wire  w_552;
wire  w_553;
wire  w_554;
wire  w_555;
wire  w_556;
wire  w_557;
wire  w_558;
wire  w_559;
wire  w_560;
wire  w_561;
wire  w_562;
wire  w_563;
wire  w_564;
wire  w_565;
wire  w_566;
wire  w_567;
wire  w_568;
wire  w_569;
wire  w_570;
wire  w_571;
wire  w_572;
wire  w_573;
wire  w_574;
wire  w_575;
wire  w_576;
wire  w_577;
wire  w_578;
wire  w_579;
wire  w_580;
wire  w_581;
wire  w_582;
wire  w_583;
wire  w_584;
wire  w_585;
wire  w_586;
wire  w_587;
wire  w_588;
wire  w_589;
wire  w_590;
wire  w_591;
wire  w_592;
wire  w_593;
wire  w_594;
wire  w_595;
wire  w_596;
wire  w_597;
wire  w_598;
wire  w_599;
wire  w_600;
wire  w_601;
wire  w_602;
wire  w_603;
wire  w_604;
wire  w_605;
wire  w_606;
wire  w_607;
wire  w_608;
wire  w_609;
wire  w_610;
wire  w_611;
wire  w_612;
wire  w_613;
wire  w_614;
wire  w_615;
wire  w_616;
wire  w_617;
wire  w_618;
wire  w_619;
wire  w_620;
wire  w_621;
wire  w_622;
wire  w_623;
wire  w_624;
wire  w_625;
wire  w_626;
wire  w_627;
wire  w_628;
wire  w_629;
wire  w_630;
wire  w_631;
wire  w_632;
wire  w_633;
wire  w_634;
wire  w_635;
wire  w_636;
wire  w_637;
wire  w_638;
wire  w_639;
wire  w_640;
wire  w_641;
wire  w_642;
wire  w_643;
wire  w_644;
wire  w_645;
wire  w_646;
wire  w_647;
wire  w_648;
wire  w_649;
wire  w_650;
wire  w_651;
wire  w_652;
wire  w_653;
wire  w_654;
wire  w_655;
wire  w_656;
wire  w_657;
wire  w_658;
wire  w_659;
wire  w_660;
wire  w_661;
wire  w_662;
wire  w_663;
wire  w_664;
wire  w_665;
wire  w_666;
wire  w_667;
wire  w_668;
wire  w_669;
wire  w_670;
wire  w_671;
wire  w_672;
wire  w_673;
wire  w_674;
wire  w_675;
wire  w_676;
wire  w_677;
wire  w_678;
wire  w_679;
wire  w_680;
wire  w_681;
wire  w_682;
wire  w_683;
wire  w_684;
wire  w_685;
wire  w_686;
wire  w_687;
wire  w_688;
wire  w_689;
wire  w_690;
wire  w_691;
wire  w_692;
wire  w_693;
wire  w_694;
wire  w_695;
wire  w_696;
wire  w_697;
wire  w_698;
wire  w_699;
wire  w_700;
wire  w_701;
wire  w_702;
wire  w_703;
wire  w_704;
wire  w_705;
wire  w_706;
wire  w_707;
wire  w_708;
wire  w_709;
wire  w_710;
wire  w_711;
wire  w_712;
wire  w_713;
wire  w_714;
wire  w_715;
wire  w_716;
wire  w_717;
wire  w_718;
wire  w_719;
wire  w_720;
wire  w_721;
wire  w_722;
wire  w_723;
wire  w_724;
wire  w_725;
wire  w_726;
wire  w_727;
wire  w_728;
wire  w_729;
wire  w_730;
wire  w_731;
wire  w_732;
wire  w_733;
wire  w_734;
wire  w_735;
wire  w_736;
wire  w_737;
wire  w_738;
wire  w_739;
wire  w_740;
wire  w_741;
wire  w_742;
wire  w_743;
wire  w_744;
wire  w_745;
wire  w_746;
wire  w_747;
wire  w_748;
wire  w_749;
wire  w_750;
wire  w_751;
wire  w_752;
wire  w_753;
wire  w_754;
wire  w_755;
wire  w_756;
wire  w_757;
wire  w_758;
wire  w_759;
wire  w_760;
wire  w_761;
wire  w_762;
wire  w_763;
wire  w_764;
wire  w_765;
wire  w_766;
wire  w_767;
wire  w_768;
wire  w_769;
wire  w_770;
wire  w_771;
wire  w_772;
wire  w_773;
wire  w_774;
wire  w_775;
wire  w_776;
wire  w_777;
wire  w_778;
wire  w_779;
wire  w_780;
wire  w_781;
wire  w_782;
wire  w_p2_sum_xa24_0;
wire  w_ratio_1_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_ratio_1_stencil_0_0=w_ratio_1_stencil_0_0;
assign  r0_w_p2_sum_xa24_0  =  w_287 ;
assign  r10_w_p2_sum_xa24_0  =  w_345 ;
assign  r11_w_p2_sum_xa24_0  =  w_351 ;
assign  r12_w_p2_sum_xa24_0  =  w_357 ;
assign  r13_w_p2_sum_xa24_0  =  w_363 ;
assign  r14_w_p2_sum_xa24_0  =  w_369 ;
assign  r15_w_p2_sum_xa24_0  =  w_375 ;
assign  r16_w_p2_sum_xa24_0  =  w_381 ;
assign  r17_w_p2_sum_xa24_0  =  w_387 ;
assign  r18_w_p2_sum_xa24_0  =  w_393 ;
assign  r19_w_p2_sum_xa24_0  =  w_399 ;
assign  r1_w_p2_sum_xa24_0  =  w_293 ;
assign  r20_w_p2_sum_xa24_0  =  w_405 ;
assign  r21_w_p2_sum_xa24_0  =  w_411 ;
assign  r22_w_p2_sum_xa24_0  =  w_417 ;
assign  r23_w_p2_sum_xa24_0  =  w_423 ;
assign  r24_w_p2_sum_xa24_0  =  w_429 ;
assign  r25_w_p2_sum_xa24_0  =  w_435 ;
assign  r26_w_p2_sum_xa24_0  =  w_441 ;
assign  r27_w_p2_sum_xa24_0  =  w_447 ;
assign  r28_w_p2_sum_xa24_0  =  w_453 ;
assign  r29_w_p2_sum_xa24_0  =  w_459 ;
assign  r2_w_p2_sum_xa24_0  =  w_299 ;
assign  r30_w_p2_sum_xa24_0  =  w_465 ;
assign  r31_w_p2_sum_xa24_0  =  w_471 ;
assign  r32_w_p2_sum_xa24_0  =  w_477 ;
assign  r33_w_p2_sum_xa24_0  =  w_483 ;
assign  r34_w_p2_sum_xa24_0  =  w_489 ;
assign  r35_w_p2_sum_xa24_0  =  w_495 ;
assign  r36_w_p2_sum_xa24_0  =  w_501 ;
assign  r37_w_p2_sum_xa24_0  =  w_507 ;
assign  r38_w_p2_sum_xa24_0  =  w_513 ;
assign  r39_w_p2_sum_xa24_0  =  w_519 ;
assign  r3_w_p2_sum_xa24_0  =  w_305 ;
assign  r40_w_p2_sum_xa24_0  =  w_525 ;
assign  r41_w_p2_sum_xa24_0  =  w_531 ;
assign  r42_w_p2_sum_xa24_0  =  w_537 ;
assign  r43_w_p2_sum_xa24_0  =  w_543 ;
assign  r44_w_p2_sum_xa24_0  =  w_549 ;
assign  r45_w_p2_sum_xa24_0  =  w_555 ;
assign  r46_w_p2_sum_xa24_0  =  w_561 ;
assign  r47_w_p2_sum_xa24_0  =  w_567 ;
assign  r48_w_p2_sum_xa24_0  =  w_573 ;
assign  r49_w_p2_sum_xa24_0  =  w_579 ;
assign  r4_w_p2_sum_xa24_0  =  w_311 ;
assign  r50_w_p2_sum_xa24_0  =  w_585 ;
assign  r51_w_p2_sum_xa24_0  =  w_591 ;
assign  r52_w_p2_sum_xa24_0  =  w_597 ;
assign  r53_w_p2_sum_xa24_0  =  w_603 ;
assign  r54_w_p2_sum_xa24_0  =  w_609 ;
assign  r55_w_p2_sum_xa24_0  =  w_615 ;
assign  r56_w_p2_sum_xa24_0  =  w_621 ;
assign  r57_w_p2_sum_xa24_0  =  w_627 ;
assign  r58_w_p2_sum_xa24_0  =  w_633 ;
assign  r59_w_p2_sum_xa24_0  =  w_639 ;
assign  r5_w_p2_sum_xa24_0  =  w_317 ;
assign  r60_w_p2_sum_xa24_0  =  w_645 ;
assign  r61_w_p2_sum_xa24_0  =  w_651 ;
assign  r62_w_p2_sum_xa24_0  =  w_657 ;
assign  r63_w_p2_sum_xa24_0  =  w_663 ;
assign  r64_w_p2_sum_xa24_0  =  w_669 ;
assign  r65_w_p2_sum_xa24_0  =  w_675 ;
assign  r66_w_p2_sum_xa24_0  =  w_681 ;
assign  r67_w_p2_sum_xa24_0  =  w_687 ;
assign  r68_w_p2_sum_xa24_0  =  w_693 ;
assign  r69_w_p2_sum_xa24_0  =  w_699 ;
assign  r6_w_p2_sum_xa24_0  =  w_323 ;
assign  r70_w_p2_sum_xa24_0  =  w_705 ;
assign  r71_w_p2_sum_xa24_0  =  w_711 ;
assign  r72_w_p2_sum_xa24_0  =  w_715 ;
assign  r73_w_p2_sum_xa24_0  =  w_721 ;
assign  r74_w_p2_sum_xa24_0  =  w_727 ;
assign  r75_w_p2_sum_xa24_0  =  w_733 ;
assign  r76_w_p2_sum_xa24_0  =  w_739 ;
assign  r77_w_p2_sum_xa24_0  =  w_745 ;
assign  r78_w_p2_sum_xa24_0  =  w_751 ;
assign  r79_w_p2_sum_xa24_0  =  w_757 ;
assign  r7_w_p2_sum_xa24_0  =  w_329 ;
assign  r80_w_p2_sum_xa24_0  =  w_761 ;
assign  r8_w_p2_sum_xa24_0  =  w_333 ;
assign  r9_w_p2_sum_xa24_0  =  w_339 ;
assign  w_283  = 1'b0;
assign  w_284  = 1'b0;
assign  w_285  =  w_gray_1_stencil_0_0 ;
assign  w_286  =  w_285 ;
ADD_16b_pe add_0 (
  .a(w_284),
  .b(w_286),
  .c(w_287),
  .clk(clk)
);
assign  w_288  =  r0_w_p2_sum_xa24_0 ;
assign  w_289  =  w_gray_1_stencil_1_0 ;
assign  w_290  =  w_289 ;
assign  w_291  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_290),
  .b(w_291),
  .c(w_292),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_292),
  .b(w_288),
  .c(w_293),
  .clk(clk)
);
assign  w_294  =  r1_w_p2_sum_xa24_0 ;
assign  w_295  =  w_gray_1_stencil_2_0 ;
assign  w_296  =  w_295 ;
assign  w_297  = 1'b0;
MULT_16b_pe mult_3 (
  .a(w_296),
  .b(w_297),
  .c(w_298),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_298),
  .b(w_294),
  .c(w_299),
  .clk(clk)
);
assign  w_300  =  r2_w_p2_sum_xa24_0 ;
assign  w_301  =  w_gray_1_stencil_3_0 ;
assign  w_302  =  w_301 ;
assign  w_303  = 1'b0;
MULT_16b_pe mult_5 (
  .a(w_302),
  .b(w_303),
  .c(w_304),
  .clk(clk)
);
ADD_16b_pe add_6 (
  .a(w_300),
  .b(w_304),
  .c(w_305),
  .clk(clk)
);
assign  w_306  =  r3_w_p2_sum_xa24_0 ;
assign  w_307  =  w_gray_1_stencil_4_0 ;
assign  w_308  =  w_307 ;
assign  w_309  = 1'b0;
MULT_16b_pe mult_7 (
  .a(w_308),
  .b(w_309),
  .c(w_310),
  .clk(clk)
);
ADD_16b_pe add_8 (
  .a(w_306),
  .b(w_310),
  .c(w_311),
  .clk(clk)
);
assign  w_312  =  r4_w_p2_sum_xa24_0 ;
assign  w_313  =  w_gray_1_stencil_5_0 ;
assign  w_314  =  w_313 ;
assign  w_315  = 1'b0;
MULT_16b_pe mult_9 (
  .a(w_315),
  .b(w_314),
  .c(w_316),
  .clk(clk)
);
ADD_16b_pe add_10 (
  .a(w_316),
  .b(w_312),
  .c(w_317),
  .clk(clk)
);
assign  w_318  =  r5_w_p2_sum_xa24_0 ;
assign  w_319  =  w_gray_1_stencil_6_0 ;
assign  w_320  =  w_319 ;
assign  w_321  = 1'b0;
MULT_16b_pe mult_11 (
  .a(w_320),
  .b(w_321),
  .c(w_322),
  .clk(clk)
);
ADD_16b_pe add_12 (
  .a(w_322),
  .b(w_318),
  .c(w_323),
  .clk(clk)
);
assign  w_324  =  r6_w_p2_sum_xa24_0 ;
assign  w_325  =  w_gray_1_stencil_7_0 ;
assign  w_326  =  w_325 ;
assign  w_327  = 1'b0;
MULT_16b_pe mult_13 (
  .a(w_326),
  .b(w_327),
  .c(w_328),
  .clk(clk)
);
ADD_16b_pe add_14 (
  .a(w_328),
  .b(w_324),
  .c(w_329),
  .clk(clk)
);
assign  w_330  =  r7_w_p2_sum_xa24_0 ;
assign  w_331  =  w_gray_1_stencil_8_0 ;
assign  w_332  =  w_331 ;
ADD_16b_pe add_15 (
  .a(w_330),
  .b(w_332),
  .c(w_333),
  .clk(clk)
);
assign  w_334  =  r8_w_p2_sum_xa24_0 ;
assign  w_335  =  w_gray_1_stencil_0_1 ;
assign  w_336  =  w_335 ;
assign  w_337  = 1'b0;
MULT_16b_pe mult_16 (
  .a(w_337),
  .b(w_336),
  .c(w_338),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_338),
  .b(w_334),
  .c(w_339),
  .clk(clk)
);
assign  w_340  =  r9_w_p2_sum_xa24_0 ;
assign  w_341  =  w_gray_1_stencil_1_1 ;
assign  w_342  =  w_341 ;
assign  w_343  = 1'b0;
MULT_16b_pe mult_18 (
  .a(w_342),
  .b(w_343),
  .c(w_344),
  .clk(clk)
);
ADD_16b_pe add_19 (
  .a(w_344),
  .b(w_340),
  .c(w_345),
  .clk(clk)
);
assign  w_346  =  r10_w_p2_sum_xa24_0 ;
assign  w_347  =  w_gray_1_stencil_2_1 ;
assign  w_348  =  w_347 ;
assign  w_349  = 1'b0;
MULT_16b_pe mult_20 (
  .a(w_348),
  .b(w_349),
  .c(w_350),
  .clk(clk)
);
ADD_16b_pe add_21 (
  .a(w_346),
  .b(w_350),
  .c(w_351),
  .clk(clk)
);
assign  w_352  =  r11_w_p2_sum_xa24_0 ;
assign  w_353  =  w_gray_1_stencil_3_1 ;
assign  w_354  =  w_353 ;
assign  w_355  = 1'b0;
MULT_16b_pe mult_22 (
  .a(w_355),
  .b(w_354),
  .c(w_356),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_352),
  .b(w_356),
  .c(w_357),
  .clk(clk)
);
assign  w_358  =  r12_w_p2_sum_xa24_0 ;
assign  w_359  =  w_gray_1_stencil_4_1 ;
assign  w_360  =  w_359 ;
assign  w_361  = 1'b0;
MULT_16b_pe mult_24 (
  .a(w_360),
  .b(w_361),
  .c(w_362),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_358),
  .b(w_362),
  .c(w_363),
  .clk(clk)
);
assign  w_364  =  r13_w_p2_sum_xa24_0 ;
assign  w_365  =  w_gray_1_stencil_5_1 ;
assign  w_366  =  w_365 ;
assign  w_367  = 1'b0;
MULT_16b_pe mult_26 (
  .a(w_366),
  .b(w_367),
  .c(w_368),
  .clk(clk)
);
ADD_16b_pe add_27 (
  .a(w_364),
  .b(w_368),
  .c(w_369),
  .clk(clk)
);
assign  w_370  =  r14_w_p2_sum_xa24_0 ;
assign  w_371  =  w_gray_1_stencil_6_1 ;
assign  w_372  =  w_371 ;
assign  w_373  = 1'b0;
MULT_16b_pe mult_28 (
  .a(w_373),
  .b(w_372),
  .c(w_374),
  .clk(clk)
);
ADD_16b_pe add_29 (
  .a(w_374),
  .b(w_370),
  .c(w_375),
  .clk(clk)
);
assign  w_376  =  r15_w_p2_sum_xa24_0 ;
assign  w_377  =  w_gray_1_stencil_7_1 ;
assign  w_378  =  w_377 ;
assign  w_379  = 1'b0;
MULT_16b_pe mult_30 (
  .a(w_379),
  .b(w_378),
  .c(w_380),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_380),
  .b(w_376),
  .c(w_381),
  .clk(clk)
);
assign  w_382  =  r16_w_p2_sum_xa24_0 ;
assign  w_383  =  w_gray_1_stencil_8_1 ;
assign  w_384  =  w_383 ;
assign  w_385  = 1'b0;
MULT_16b_pe mult_32 (
  .a(w_384),
  .b(w_385),
  .c(w_386),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_382),
  .b(w_386),
  .c(w_387),
  .clk(clk)
);
assign  w_388  =  r17_w_p2_sum_xa24_0 ;
assign  w_389  =  w_gray_1_stencil_0_2 ;
assign  w_390  =  w_389 ;
assign  w_391  = 1'b0;
MULT_16b_pe mult_34 (
  .a(w_391),
  .b(w_390),
  .c(w_392),
  .clk(clk)
);
ADD_16b_pe add_35 (
  .a(w_388),
  .b(w_392),
  .c(w_393),
  .clk(clk)
);
assign  w_394  =  r18_w_p2_sum_xa24_0 ;
assign  w_395  =  w_gray_1_stencil_1_2 ;
assign  w_396  =  w_395 ;
assign  w_397  = 1'b0;
MULT_16b_pe mult_36 (
  .a(w_397),
  .b(w_396),
  .c(w_398),
  .clk(clk)
);
ADD_16b_pe add_37 (
  .a(w_394),
  .b(w_398),
  .c(w_399),
  .clk(clk)
);
assign  w_400  =  r19_w_p2_sum_xa24_0 ;
assign  w_401  =  w_gray_1_stencil_2_2 ;
assign  w_402  =  w_401 ;
assign  w_403  = 1'b0;
MULT_16b_pe mult_38 (
  .a(w_403),
  .b(w_402),
  .c(w_404),
  .clk(clk)
);
ADD_16b_pe add_39 (
  .a(w_404),
  .b(w_400),
  .c(w_405),
  .clk(clk)
);
assign  w_406  =  r20_w_p2_sum_xa24_0 ;
assign  w_407  =  w_gray_1_stencil_3_2 ;
assign  w_408  =  w_407 ;
assign  w_409  = 1'b0;
MULT_16b_pe mult_40 (
  .a(w_409),
  .b(w_408),
  .c(w_410),
  .clk(clk)
);
ADD_16b_pe add_41 (
  .a(w_410),
  .b(w_406),
  .c(w_411),
  .clk(clk)
);
assign  w_412  =  r21_w_p2_sum_xa24_0 ;
assign  w_413  =  w_gray_1_stencil_4_2 ;
assign  w_414  =  w_413 ;
assign  w_415  = 1'b0;
MULT_16b_pe mult_42 (
  .a(w_414),
  .b(w_415),
  .c(w_416),
  .clk(clk)
);
ADD_16b_pe add_43 (
  .a(w_412),
  .b(w_416),
  .c(w_417),
  .clk(clk)
);
assign  w_418  =  r22_w_p2_sum_xa24_0 ;
assign  w_419  =  w_gray_1_stencil_5_2 ;
assign  w_420  =  w_419 ;
assign  w_421  = 1'b0;
MULT_16b_pe mult_44 (
  .a(w_421),
  .b(w_420),
  .c(w_422),
  .clk(clk)
);
ADD_16b_pe add_45 (
  .a(w_418),
  .b(w_422),
  .c(w_423),
  .clk(clk)
);
assign  w_424  =  r23_w_p2_sum_xa24_0 ;
assign  w_425  =  w_gray_1_stencil_6_2 ;
assign  w_426  =  w_425 ;
assign  w_427  = 1'b0;
MULT_16b_pe mult_46 (
  .a(w_427),
  .b(w_426),
  .c(w_428),
  .clk(clk)
);
ADD_16b_pe add_47 (
  .a(w_428),
  .b(w_424),
  .c(w_429),
  .clk(clk)
);
assign  w_430  =  r24_w_p2_sum_xa24_0 ;
assign  w_431  =  w_gray_1_stencil_7_2 ;
assign  w_432  =  w_431 ;
assign  w_433  = 1'b0;
MULT_16b_pe mult_48 (
  .a(w_432),
  .b(w_433),
  .c(w_434),
  .clk(clk)
);
ADD_16b_pe add_49 (
  .a(w_430),
  .b(w_434),
  .c(w_435),
  .clk(clk)
);
assign  w_436  =  r25_w_p2_sum_xa24_0 ;
assign  w_437  =  w_gray_1_stencil_8_2 ;
assign  w_438  =  w_437 ;
assign  w_439  = 1'b0;
MULT_16b_pe mult_50 (
  .a(w_438),
  .b(w_439),
  .c(w_440),
  .clk(clk)
);
ADD_16b_pe add_51 (
  .a(w_440),
  .b(w_436),
  .c(w_441),
  .clk(clk)
);
assign  w_442  =  r26_w_p2_sum_xa24_0 ;
assign  w_443  =  w_gray_1_stencil_0_3 ;
assign  w_444  =  w_443 ;
assign  w_445  = 1'b0;
MULT_16b_pe mult_52 (
  .a(w_445),
  .b(w_444),
  .c(w_446),
  .clk(clk)
);
ADD_16b_pe add_53 (
  .a(w_442),
  .b(w_446),
  .c(w_447),
  .clk(clk)
);
assign  w_448  =  r27_w_p2_sum_xa24_0 ;
assign  w_449  =  w_gray_1_stencil_1_3 ;
assign  w_450  =  w_449 ;
assign  w_451  = 1'b0;
MULT_16b_pe mult_54 (
  .a(w_450),
  .b(w_451),
  .c(w_452),
  .clk(clk)
);
ADD_16b_pe add_55 (
  .a(w_448),
  .b(w_452),
  .c(w_453),
  .clk(clk)
);
assign  w_454  =  r28_w_p2_sum_xa24_0 ;
assign  w_455  =  w_gray_1_stencil_2_3 ;
assign  w_456  =  w_455 ;
assign  w_457  = 1'b0;
MULT_16b_pe mult_56 (
  .a(w_456),
  .b(w_457),
  .c(w_458),
  .clk(clk)
);
ADD_16b_pe add_57 (
  .a(w_454),
  .b(w_458),
  .c(w_459),
  .clk(clk)
);
assign  w_460  =  r29_w_p2_sum_xa24_0 ;
assign  w_461  =  w_gray_1_stencil_3_3 ;
assign  w_462  =  w_461 ;
assign  w_463  = 1'b0;
MULT_16b_pe mult_58 (
  .a(w_463),
  .b(w_462),
  .c(w_464),
  .clk(clk)
);
ADD_16b_pe add_59 (
  .a(w_464),
  .b(w_460),
  .c(w_465),
  .clk(clk)
);
assign  w_466  =  r30_w_p2_sum_xa24_0 ;
assign  w_467  =  w_gray_1_stencil_4_3 ;
assign  w_468  =  w_467 ;
assign  w_469  = 1'b0;
MULT_16b_pe mult_60 (
  .a(w_469),
  .b(w_468),
  .c(w_470),
  .clk(clk)
);
ADD_16b_pe add_61 (
  .a(w_466),
  .b(w_470),
  .c(w_471),
  .clk(clk)
);
assign  w_472  =  r31_w_p2_sum_xa24_0 ;
assign  w_473  =  w_gray_1_stencil_5_3 ;
assign  w_474  =  w_473 ;
assign  w_475  = 1'b0;
MULT_16b_pe mult_62 (
  .a(w_474),
  .b(w_475),
  .c(w_476),
  .clk(clk)
);
ADD_16b_pe add_63 (
  .a(w_476),
  .b(w_472),
  .c(w_477),
  .clk(clk)
);
assign  w_478  =  r32_w_p2_sum_xa24_0 ;
assign  w_479  =  w_gray_1_stencil_6_3 ;
assign  w_480  =  w_479 ;
assign  w_481  = 1'b0;
MULT_16b_pe mult_64 (
  .a(w_481),
  .b(w_480),
  .c(w_482),
  .clk(clk)
);
ADD_16b_pe add_65 (
  .a(w_482),
  .b(w_478),
  .c(w_483),
  .clk(clk)
);
assign  w_484  =  r33_w_p2_sum_xa24_0 ;
assign  w_485  =  w_gray_1_stencil_7_3 ;
assign  w_486  =  w_485 ;
assign  w_487  = 1'b0;
MULT_16b_pe mult_66 (
  .a(w_487),
  .b(w_486),
  .c(w_488),
  .clk(clk)
);
ADD_16b_pe add_67 (
  .a(w_484),
  .b(w_488),
  .c(w_489),
  .clk(clk)
);
assign  w_490  =  r34_w_p2_sum_xa24_0 ;
assign  w_491  =  w_gray_1_stencil_8_3 ;
assign  w_492  =  w_491 ;
assign  w_493  = 1'b0;
MULT_16b_pe mult_68 (
  .a(w_492),
  .b(w_493),
  .c(w_494),
  .clk(clk)
);
ADD_16b_pe add_69 (
  .a(w_490),
  .b(w_494),
  .c(w_495),
  .clk(clk)
);
assign  w_496  =  r35_w_p2_sum_xa24_0 ;
assign  w_497  =  w_gray_1_stencil_0_4 ;
assign  w_498  =  w_497 ;
assign  w_499  = 1'b0;
MULT_16b_pe mult_70 (
  .a(w_498),
  .b(w_499),
  .c(w_500),
  .clk(clk)
);
ADD_16b_pe add_71 (
  .a(w_500),
  .b(w_496),
  .c(w_501),
  .clk(clk)
);
assign  w_502  =  r36_w_p2_sum_xa24_0 ;
assign  w_503  =  w_gray_1_stencil_1_4 ;
assign  w_504  =  w_503 ;
assign  w_505  = 1'b0;
MULT_16b_pe mult_72 (
  .a(w_504),
  .b(w_505),
  .c(w_506),
  .clk(clk)
);
ADD_16b_pe add_73 (
  .a(w_506),
  .b(w_502),
  .c(w_507),
  .clk(clk)
);
assign  w_508  =  r37_w_p2_sum_xa24_0 ;
assign  w_509  =  w_gray_1_stencil_2_4 ;
assign  w_510  =  w_509 ;
assign  w_511  = 1'b0;
MULT_16b_pe mult_74 (
  .a(w_511),
  .b(w_510),
  .c(w_512),
  .clk(clk)
);
ADD_16b_pe add_75 (
  .a(w_508),
  .b(w_512),
  .c(w_513),
  .clk(clk)
);
assign  w_514  =  r38_w_p2_sum_xa24_0 ;
assign  w_515  =  w_gray_1_stencil_3_4 ;
assign  w_516  =  w_515 ;
assign  w_517  = 1'b0;
MULT_16b_pe mult_76 (
  .a(w_517),
  .b(w_516),
  .c(w_518),
  .clk(clk)
);
ADD_16b_pe add_77 (
  .a(w_514),
  .b(w_518),
  .c(w_519),
  .clk(clk)
);
assign  w_520  =  r39_w_p2_sum_xa24_0 ;
assign  w_521  =  w_gray_1_stencil_4_4 ;
assign  w_522  =  w_521 ;
assign  w_523  = 1'b0;
MULT_16b_pe mult_78 (
  .a(w_522),
  .b(w_523),
  .c(w_524),
  .clk(clk)
);
ADD_16b_pe add_79 (
  .a(w_524),
  .b(w_520),
  .c(w_525),
  .clk(clk)
);
assign  w_526  =  r40_w_p2_sum_xa24_0 ;
assign  w_527  =  w_gray_1_stencil_5_4 ;
assign  w_528  =  w_527 ;
assign  w_529  = 1'b0;
MULT_16b_pe mult_80 (
  .a(w_528),
  .b(w_529),
  .c(w_530),
  .clk(clk)
);
ADD_16b_pe add_81 (
  .a(w_526),
  .b(w_530),
  .c(w_531),
  .clk(clk)
);
assign  w_532  =  r41_w_p2_sum_xa24_0 ;
assign  w_533  =  w_gray_1_stencil_6_4 ;
assign  w_534  =  w_533 ;
assign  w_535  = 1'b0;
MULT_16b_pe mult_82 (
  .a(w_535),
  .b(w_534),
  .c(w_536),
  .clk(clk)
);
ADD_16b_pe add_83 (
  .a(w_532),
  .b(w_536),
  .c(w_537),
  .clk(clk)
);
assign  w_538  =  r42_w_p2_sum_xa24_0 ;
assign  w_539  =  w_gray_1_stencil_7_4 ;
assign  w_540  =  w_539 ;
assign  w_541  = 1'b0;
MULT_16b_pe mult_84 (
  .a(w_540),
  .b(w_541),
  .c(w_542),
  .clk(clk)
);
ADD_16b_pe add_85 (
  .a(w_542),
  .b(w_538),
  .c(w_543),
  .clk(clk)
);
assign  w_544  =  r43_w_p2_sum_xa24_0 ;
assign  w_545  =  w_gray_1_stencil_8_4 ;
assign  w_546  =  w_545 ;
assign  w_547  = 1'b0;
MULT_16b_pe mult_86 (
  .a(w_546),
  .b(w_547),
  .c(w_548),
  .clk(clk)
);
ADD_16b_pe add_87 (
  .a(w_548),
  .b(w_544),
  .c(w_549),
  .clk(clk)
);
assign  w_550  =  r44_w_p2_sum_xa24_0 ;
assign  w_551  =  w_gray_1_stencil_0_5 ;
assign  w_552  =  w_551 ;
assign  w_553  = 1'b0;
MULT_16b_pe mult_88 (
  .a(w_553),
  .b(w_552),
  .c(w_554),
  .clk(clk)
);
ADD_16b_pe add_89 (
  .a(w_550),
  .b(w_554),
  .c(w_555),
  .clk(clk)
);
assign  w_556  =  r45_w_p2_sum_xa24_0 ;
assign  w_557  =  w_gray_1_stencil_1_5 ;
assign  w_558  =  w_557 ;
assign  w_559  = 1'b0;
MULT_16b_pe mult_90 (
  .a(w_559),
  .b(w_558),
  .c(w_560),
  .clk(clk)
);
ADD_16b_pe add_91 (
  .a(w_560),
  .b(w_556),
  .c(w_561),
  .clk(clk)
);
assign  w_562  =  r46_w_p2_sum_xa24_0 ;
assign  w_563  =  w_gray_1_stencil_2_5 ;
assign  w_564  =  w_563 ;
assign  w_565  = 1'b0;
MULT_16b_pe mult_92 (
  .a(w_564),
  .b(w_565),
  .c(w_566),
  .clk(clk)
);
ADD_16b_pe add_93 (
  .a(w_562),
  .b(w_566),
  .c(w_567),
  .clk(clk)
);
assign  w_568  =  r47_w_p2_sum_xa24_0 ;
assign  w_569  =  w_gray_1_stencil_3_5 ;
assign  w_570  =  w_569 ;
assign  w_571  = 1'b0;
MULT_16b_pe mult_94 (
  .a(w_571),
  .b(w_570),
  .c(w_572),
  .clk(clk)
);
ADD_16b_pe add_95 (
  .a(w_568),
  .b(w_572),
  .c(w_573),
  .clk(clk)
);
assign  w_574  =  r48_w_p2_sum_xa24_0 ;
assign  w_575  =  w_gray_1_stencil_4_5 ;
assign  w_576  =  w_575 ;
assign  w_577  = 1'b0;
MULT_16b_pe mult_96 (
  .a(w_577),
  .b(w_576),
  .c(w_578),
  .clk(clk)
);
ADD_16b_pe add_97 (
  .a(w_574),
  .b(w_578),
  .c(w_579),
  .clk(clk)
);
assign  w_580  =  r49_w_p2_sum_xa24_0 ;
assign  w_581  =  w_gray_1_stencil_5_5 ;
assign  w_582  =  w_581 ;
assign  w_583  = 1'b0;
MULT_16b_pe mult_98 (
  .a(w_582),
  .b(w_583),
  .c(w_584),
  .clk(clk)
);
ADD_16b_pe add_99 (
  .a(w_584),
  .b(w_580),
  .c(w_585),
  .clk(clk)
);
assign  w_586  =  r50_w_p2_sum_xa24_0 ;
assign  w_587  =  w_gray_1_stencil_6_5 ;
assign  w_588  =  w_587 ;
assign  w_589  = 1'b0;
MULT_16b_pe mult_100 (
  .a(w_588),
  .b(w_589),
  .c(w_590),
  .clk(clk)
);
ADD_16b_pe add_101 (
  .a(w_586),
  .b(w_590),
  .c(w_591),
  .clk(clk)
);
assign  w_592  =  r51_w_p2_sum_xa24_0 ;
assign  w_593  =  w_gray_1_stencil_7_5 ;
assign  w_594  =  w_593 ;
assign  w_595  = 1'b0;
MULT_16b_pe mult_102 (
  .a(w_595),
  .b(w_594),
  .c(w_596),
  .clk(clk)
);
ADD_16b_pe add_103 (
  .a(w_596),
  .b(w_592),
  .c(w_597),
  .clk(clk)
);
assign  w_598  =  r52_w_p2_sum_xa24_0 ;
assign  w_599  =  w_gray_1_stencil_8_5 ;
assign  w_600  =  w_599 ;
assign  w_601  = 1'b0;
MULT_16b_pe mult_104 (
  .a(w_601),
  .b(w_600),
  .c(w_602),
  .clk(clk)
);
ADD_16b_pe add_105 (
  .a(w_598),
  .b(w_602),
  .c(w_603),
  .clk(clk)
);
assign  w_604  =  r53_w_p2_sum_xa24_0 ;
assign  w_605  =  w_gray_1_stencil_0_6 ;
assign  w_606  =  w_605 ;
assign  w_607  = 1'b0;
MULT_16b_pe mult_106 (
  .a(w_607),
  .b(w_606),
  .c(w_608),
  .clk(clk)
);
ADD_16b_pe add_107 (
  .a(w_604),
  .b(w_608),
  .c(w_609),
  .clk(clk)
);
assign  w_610  =  r54_w_p2_sum_xa24_0 ;
assign  w_611  =  w_gray_1_stencil_1_6 ;
assign  w_612  =  w_611 ;
assign  w_613  = 1'b0;
MULT_16b_pe mult_108 (
  .a(w_612),
  .b(w_613),
  .c(w_614),
  .clk(clk)
);
ADD_16b_pe add_109 (
  .a(w_614),
  .b(w_610),
  .c(w_615),
  .clk(clk)
);
assign  w_616  =  r55_w_p2_sum_xa24_0 ;
assign  w_617  =  w_gray_1_stencil_2_6 ;
assign  w_618  =  w_617 ;
assign  w_619  = 1'b0;
MULT_16b_pe mult_110 (
  .a(w_618),
  .b(w_619),
  .c(w_620),
  .clk(clk)
);
ADD_16b_pe add_111 (
  .a(w_616),
  .b(w_620),
  .c(w_621),
  .clk(clk)
);
assign  w_622  =  r56_w_p2_sum_xa24_0 ;
assign  w_623  =  w_gray_1_stencil_3_6 ;
assign  w_624  =  w_623 ;
assign  w_625  = 1'b0;
MULT_16b_pe mult_112 (
  .a(w_625),
  .b(w_624),
  .c(w_626),
  .clk(clk)
);
ADD_16b_pe add_113 (
  .a(w_622),
  .b(w_626),
  .c(w_627),
  .clk(clk)
);
assign  w_628  =  r57_w_p2_sum_xa24_0 ;
assign  w_629  =  w_gray_1_stencil_4_6 ;
assign  w_630  =  w_629 ;
assign  w_631  = 1'b0;
MULT_16b_pe mult_114 (
  .a(w_630),
  .b(w_631),
  .c(w_632),
  .clk(clk)
);
ADD_16b_pe add_115 (
  .a(w_628),
  .b(w_632),
  .c(w_633),
  .clk(clk)
);
assign  w_634  =  r58_w_p2_sum_xa24_0 ;
assign  w_635  =  w_gray_1_stencil_5_6 ;
assign  w_636  =  w_635 ;
assign  w_637  = 1'b0;
MULT_16b_pe mult_116 (
  .a(w_636),
  .b(w_637),
  .c(w_638),
  .clk(clk)
);
ADD_16b_pe add_117 (
  .a(w_634),
  .b(w_638),
  .c(w_639),
  .clk(clk)
);
assign  w_640  =  r59_w_p2_sum_xa24_0 ;
assign  w_641  =  w_gray_1_stencil_6_6 ;
assign  w_642  =  w_641 ;
assign  w_643  = 1'b0;
MULT_16b_pe mult_118 (
  .a(w_643),
  .b(w_642),
  .c(w_644),
  .clk(clk)
);
ADD_16b_pe add_119 (
  .a(w_640),
  .b(w_644),
  .c(w_645),
  .clk(clk)
);
assign  w_646  =  r60_w_p2_sum_xa24_0 ;
assign  w_647  =  w_gray_1_stencil_7_6 ;
assign  w_648  =  w_647 ;
assign  w_649  = 1'b0;
MULT_16b_pe mult_120 (
  .a(w_649),
  .b(w_648),
  .c(w_650),
  .clk(clk)
);
ADD_16b_pe add_121 (
  .a(w_650),
  .b(w_646),
  .c(w_651),
  .clk(clk)
);
assign  w_652  =  r61_w_p2_sum_xa24_0 ;
assign  w_653  =  w_gray_1_stencil_8_6 ;
assign  w_654  =  w_653 ;
assign  w_655  = 1'b0;
MULT_16b_pe mult_122 (
  .a(w_654),
  .b(w_655),
  .c(w_656),
  .clk(clk)
);
ADD_16b_pe add_123 (
  .a(w_652),
  .b(w_656),
  .c(w_657),
  .clk(clk)
);
assign  w_658  =  r62_w_p2_sum_xa24_0 ;
assign  w_659  =  w_gray_1_stencil_0_7 ;
assign  w_660  =  w_659 ;
assign  w_661  = 1'b0;
MULT_16b_pe mult_124 (
  .a(w_661),
  .b(w_660),
  .c(w_662),
  .clk(clk)
);
ADD_16b_pe add_125 (
  .a(w_658),
  .b(w_662),
  .c(w_663),
  .clk(clk)
);
assign  w_664  =  r63_w_p2_sum_xa24_0 ;
assign  w_665  =  w_gray_1_stencil_1_7 ;
assign  w_666  =  w_665 ;
assign  w_667  = 1'b0;
MULT_16b_pe mult_126 (
  .a(w_667),
  .b(w_666),
  .c(w_668),
  .clk(clk)
);
ADD_16b_pe add_127 (
  .a(w_664),
  .b(w_668),
  .c(w_669),
  .clk(clk)
);
assign  w_670  =  r64_w_p2_sum_xa24_0 ;
assign  w_671  =  w_gray_1_stencil_2_7 ;
assign  w_672  =  w_671 ;
assign  w_673  = 1'b0;
MULT_16b_pe mult_128 (
  .a(w_672),
  .b(w_673),
  .c(w_674),
  .clk(clk)
);
ADD_16b_pe add_129 (
  .a(w_670),
  .b(w_674),
  .c(w_675),
  .clk(clk)
);
assign  w_676  =  r65_w_p2_sum_xa24_0 ;
assign  w_677  =  w_gray_1_stencil_3_7 ;
assign  w_678  =  w_677 ;
assign  w_679  = 1'b0;
MULT_16b_pe mult_130 (
  .a(w_678),
  .b(w_679),
  .c(w_680),
  .clk(clk)
);
ADD_16b_pe add_131 (
  .a(w_680),
  .b(w_676),
  .c(w_681),
  .clk(clk)
);
assign  w_682  =  r66_w_p2_sum_xa24_0 ;
assign  w_683  =  w_gray_1_stencil_4_7 ;
assign  w_684  =  w_683 ;
assign  w_685  = 1'b0;
MULT_16b_pe mult_132 (
  .a(w_685),
  .b(w_684),
  .c(w_686),
  .clk(clk)
);
ADD_16b_pe add_133 (
  .a(w_686),
  .b(w_682),
  .c(w_687),
  .clk(clk)
);
assign  w_688  =  r67_w_p2_sum_xa24_0 ;
assign  w_689  =  w_gray_1_stencil_5_7 ;
assign  w_690  =  w_689 ;
assign  w_691  = 1'b0;
MULT_16b_pe mult_134 (
  .a(w_690),
  .b(w_691),
  .c(w_692),
  .clk(clk)
);
ADD_16b_pe add_135 (
  .a(w_692),
  .b(w_688),
  .c(w_693),
  .clk(clk)
);
assign  w_694  =  r68_w_p2_sum_xa24_0 ;
assign  w_695  =  w_gray_1_stencil_6_7 ;
assign  w_696  =  w_695 ;
assign  w_697  = 1'b0;
MULT_16b_pe mult_136 (
  .a(w_696),
  .b(w_697),
  .c(w_698),
  .clk(clk)
);
ADD_16b_pe add_137 (
  .a(w_694),
  .b(w_698),
  .c(w_699),
  .clk(clk)
);
assign  w_700  =  r69_w_p2_sum_xa24_0 ;
assign  w_701  =  w_gray_1_stencil_7_7 ;
assign  w_702  =  w_701 ;
assign  w_703  = 1'b0;
MULT_16b_pe mult_138 (
  .a(w_702),
  .b(w_703),
  .c(w_704),
  .clk(clk)
);
ADD_16b_pe add_139 (
  .a(w_704),
  .b(w_700),
  .c(w_705),
  .clk(clk)
);
assign  w_706  =  r70_w_p2_sum_xa24_0 ;
assign  w_707  =  w_gray_1_stencil_8_7 ;
assign  w_708  =  w_707 ;
assign  w_709  = 1'b0;
MULT_16b_pe mult_140 (
  .a(w_708),
  .b(w_709),
  .c(w_710),
  .clk(clk)
);
ADD_16b_pe add_141 (
  .a(w_706),
  .b(w_710),
  .c(w_711),
  .clk(clk)
);
assign  w_712  =  r71_w_p2_sum_xa24_0 ;
assign  w_713  =  w_gray_1_stencil_0_8 ;
assign  w_714  =  w_713 ;
ADD_16b_pe add_142 (
  .a(w_712),
  .b(w_714),
  .c(w_715),
  .clk(clk)
);
assign  w_716  =  r72_w_p2_sum_xa24_0 ;
assign  w_717  =  w_gray_1_stencil_1_8 ;
assign  w_718  =  w_717 ;
assign  w_719  = 1'b0;
MULT_16b_pe mult_143 (
  .a(w_719),
  .b(w_718),
  .c(w_720),
  .clk(clk)
);
ADD_16b_pe add_144 (
  .a(w_716),
  .b(w_720),
  .c(w_721),
  .clk(clk)
);
assign  w_722  =  r73_w_p2_sum_xa24_0 ;
assign  w_723  =  w_gray_1_stencil_2_8 ;
assign  w_724  =  w_723 ;
assign  w_725  = 1'b0;
MULT_16b_pe mult_145 (
  .a(w_724),
  .b(w_725),
  .c(w_726),
  .clk(clk)
);
ADD_16b_pe add_146 (
  .a(w_726),
  .b(w_722),
  .c(w_727),
  .clk(clk)
);
assign  w_728  =  r74_w_p2_sum_xa24_0 ;
assign  w_729  =  w_gray_1_stencil_3_8 ;
assign  w_730  =  w_729 ;
assign  w_731  = 1'b0;
MULT_16b_pe mult_147 (
  .a(w_731),
  .b(w_730),
  .c(w_732),
  .clk(clk)
);
ADD_16b_pe add_148 (
  .a(w_728),
  .b(w_732),
  .c(w_733),
  .clk(clk)
);
assign  w_734  =  r75_w_p2_sum_xa24_0 ;
assign  w_735  =  w_gray_1_stencil_4_8 ;
assign  w_736  =  w_735 ;
assign  w_737  = 1'b0;
MULT_16b_pe mult_149 (
  .a(w_737),
  .b(w_736),
  .c(w_738),
  .clk(clk)
);
ADD_16b_pe add_150 (
  .a(w_734),
  .b(w_738),
  .c(w_739),
  .clk(clk)
);
assign  w_740  =  r76_w_p2_sum_xa24_0 ;
assign  w_741  =  w_gray_1_stencil_5_8 ;
assign  w_742  =  w_741 ;
assign  w_743  = 1'b0;
MULT_16b_pe mult_151 (
  .a(w_742),
  .b(w_743),
  .c(w_744),
  .clk(clk)
);
ADD_16b_pe add_152 (
  .a(w_740),
  .b(w_744),
  .c(w_745),
  .clk(clk)
);
assign  w_746  =  r77_w_p2_sum_xa24_0 ;
assign  w_747  =  w_gray_1_stencil_6_8 ;
assign  w_748  =  w_747 ;
assign  w_749  = 1'b0;
MULT_16b_pe mult_153 (
  .a(w_748),
  .b(w_749),
  .c(w_750),
  .clk(clk)
);
ADD_16b_pe add_154 (
  .a(w_746),
  .b(w_750),
  .c(w_751),
  .clk(clk)
);
assign  w_752  =  r78_w_p2_sum_xa24_0 ;
assign  w_753  =  w_gray_1_stencil_7_8 ;
assign  w_754  =  w_753 ;
assign  w_755  = 1'b0;
MULT_16b_pe mult_155 (
  .a(w_755),
  .b(w_754),
  .c(w_756),
  .clk(clk)
);
ADD_16b_pe add_156 (
  .a(w_756),
  .b(w_752),
  .c(w_757),
  .clk(clk)
);
assign  w_758  =  r79_w_p2_sum_xa24_0 ;
assign  w_759  =  w_gray_1_stencil_8_8 ;
assign  w_760  =  w_759 ;
ADD_16b_pe add_157 (
  .a(w_760),
  .b(w_758),
  .c(w_761),
  .clk(clk)
);
assign  w_762  =  w_gray_1_stencil_4_4 ;
assign  w_763  =  w_762 ;
assign  w_764  = 1'b0;
MULT_16b_pe mult_158 (
  .a(w_763),
  .b(w_764),
  .c(w_765),
  .clk(clk)
);
assign  w_766  =  r80_w_p2_sum_xa24_0 ;
LSHIFT_16b_pe lshift_159 (
  .a(w_766),
  .b(1'b0),
  .c(w_767),
  .clk(clk)
);
assign  w_768  =  w_767 ;
assign  w_769  =  w_768 ;
SUB_16b_pe sub_160 (
  .a(w_769),
  .b(w_765),
  .c(w_770),
  .clk(clk)
);
assign  w_771  = 1'b0;
MIN_16b_pe min_161 (
  .a(w_771),
  .b(w_770),
  .c(w_772),
  .clk(clk)
);
assign  w_773  =  w_772 ;
assign  w_774  =  w_773 ;
assign  w_775  = 1'b0;
MULT_16b_pe mult_162 (
  .a(w_775),
  .b(w_774),
  .c(w_776),
  .clk(clk)
);
assign  w_777  = 1'b0;
MAX_16b_pe max_163 (
  .a(w_762),
  .b(w_777),
  .c(w_778),
  .clk(clk)
);
assign  w_779  =  w_778 ;
DIV_16b_pe div_164 (
  .a(w_779),
  .b(w_776),
  .c(w_780),
  .clk(clk)
);
MIN_16b_pe min_165 (
  .a(w_771),
  .b(w_780),
  .c(w_781),
  .clk(clk)
);
assign  w_782  =  w_781 ;
assign  w_p2_sum_xa24_0  = 1'b0;
assign  w_ratio_1_stencil_0_0  =  w_782 ;

endmodule







module kernel__hw_output_1_stencil_stream(
//Inputs
  w_p2_in_bounded_stencil_0_0_0,
  w_p2_in_bounded_stencil_1_0_0,
  w_p2_in_bounded_stencil_2_0_0,
  w_ratio_1_stencil_0_0,
//Outputs
  out_w_hw_output_1_stencil_1_0_0,
  out_w_hw_output_1_stencil_2_0_0,
  out_w_hw_output_1_stencil_packed,

  clk
);

//Inputs
input  w_p2_in_bounded_stencil_1_0_0;
input  w_p2_in_bounded_stencil_0_0_0;
input  w_ratio_1_stencil_0_0;
input  w_p2_in_bounded_stencil_2_0_0;
//Outputs
output  out_w_hw_output_1_stencil_1_0_0;
output  out_w_hw_output_1_stencil_2_0_0;
output  out_w_hw_output_1_stencil_packed;

input  clk;


wire  w_783;
wire  w_784;
wire  w_785;
wire  w_786;
wire  w_787;
wire  w_788;
wire  w_789;
wire  w_790;
wire  w_791;
wire  w_792;
wire  w_793;
wire  w_794;
wire  w_795;
wire  w_796;
wire  w_797;
wire  w_798;
wire  w_799;
wire  w_800;
wire  w_801;
wire  w_802;
wire  w_803;
wire  w_804;
wire  w_805;
wire  w_806;
wire  w_807;
wire  w_808;
wire  w_809;
wire  w_hw_output_1_stencil_0_0_0;
wire  w_hw_output_1_stencil_1_0_0;
wire  w_hw_output_1_stencil_2_0_0;
wire  w_hw_output_1_stencil_packed;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_hw_output_1_stencil_1_0_0=w_hw_output_1_stencil_1_0_0;
assign out_w_hw_output_1_stencil_2_0_0=w_hw_output_1_stencil_2_0_0;
assign out_w_hw_output_1_stencil_packed=w_hw_output_1_stencil_packed;
assign  w_783  =  w_ratio_1_stencil_0_0 ;
assign  w_784  =  w_783 ;
assign  w_785  =  w_p2_in_bounded_stencil_0_0_0 ;
assign  w_786  =  w_785 ;
MULT_16b_pe mult_0 (
  .a(w_784),
  .b(w_786),
  .c(w_787),
  .clk(clk)
);
LSHIFT_16b_pe lshift_1 (
  .a(w_787),
  .b(1'b0),
  .c(w_788),
  .clk(clk)
);
assign  w_789  = 1'b0;
MIN_16b_pe min_2 (
  .a(w_788),
  .b(w_789),
  .c(w_790),
  .clk(clk)
);
assign  w_791  =  w_790 ;
assign  w_792  =  w_ratio_1_stencil_0_0 ;
assign  w_793  =  w_792 ;
assign  w_794  =  w_p2_in_bounded_stencil_1_0_0 ;
assign  w_795  =  w_794 ;
MULT_16b_pe mult_3 (
  .a(w_793),
  .b(w_795),
  .c(w_796),
  .clk(clk)
);
LSHIFT_16b_pe lshift_4 (
  .a(1'b0),
  .b(w_796),
  .c(w_797),
  .clk(clk)
);
assign  w_798  = 1'b0;
MIN_16b_pe min_5 (
  .a(w_798),
  .b(w_797),
  .c(w_799),
  .clk(clk)
);
assign  w_800  =  w_799 ;
assign  w_801  =  w_ratio_1_stencil_0_0 ;
assign  w_802  =  w_801 ;
assign  w_803  =  w_p2_in_bounded_stencil_2_0_0 ;
assign  w_804  =  w_803 ;
MULT_16b_pe mult_6 (
  .a(w_802),
  .b(w_804),
  .c(w_805),
  .clk(clk)
);
LSHIFT_16b_pe lshift_7 (
  .a(1'b0),
  .b(w_805),
  .c(w_806),
  .clk(clk)
);
assign  w_807  = 1'b0;
MIN_16b_pe min_8 (
  .a(w_807),
  .b(w_806),
  .c(w_808),
  .clk(clk)
);
assign  w_809  =  w_808 ;
assign  w_hw_output_1_stencil_0_0_0  =  w_791 ;
assign  w_hw_output_1_stencil_1_0_0  =  w_800 ;
assign  w_hw_output_1_stencil_2_0_0  =  w_809 ;
assign  w_hw_output_1_stencil_packed  =  w_hw_output_1_stencil_0_0_0 ;

endmodule








module SUB_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    

module MIN_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    

module MAX_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    

module ADD_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    


module LSHIFT_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    

module DIV_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mult MULT_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .out16b(c)
    );

endmodule

    

module MULT_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mult MULT_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .out16b(c)
    );

endmodule

    



module LB_9_9_1_8bit_False (
    clk,

    in0,

    out0,
    out1,
    out2,
    out3,
    out4,
    out5,
    out6,
    out7,
    out8,
    out9,
    out10,
    out11,
    out12,
    out13,
    out14,
    out15,
    out16,
    out17,
    out18,
    out19,
    out20,
    out21,
    out22,
    out23,
    out24,
    out25,
    out26,
    out27,
    out28,
    out29,
    out30,
    out31,
    out32,
    out33,
    out34,
    out35,
    out36,
    out37,
    out38,
    out39,
    out40,
    out41,
    out42,
    out43,
    out44,
    out45,
    out46,
    out47,
    out48,
    out49,
    out50,
    out51,
    out52,
    out53,
    out54,
    out55,
    out56,
    out57,
    out58,
    out59,
    out60,
    out61,
    out62,
    out63,
    out64,
    out65,
    out66,
    out67,
    out68,
    out69,
    out70,
    out71,
    out72,
    out73,
    out74,
    out75,
    out76,
    out77,
    out78,
    out79,
    out80
);

// (9, 9, 1, 8, False)
    input clk;

    input in0;

    output out0;
    output out1;
    output out2;
    output out3;
    output out4;
    output out5;
    output out6;
    output out7;
    output out8;
    output out9;
    output out10;
    output out11;
    output out12;
    output out13;
    output out14;
    output out15;
    output out16;
    output out17;
    output out18;
    output out19;
    output out20;
    output out21;
    output out22;
    output out23;
    output out24;
    output out25;
    output out26;
    output out27;
    output out28;
    output out29;
    output out30;
    output out31;
    output out32;
    output out33;
    output out34;
    output out35;
    output out36;
    output out37;
    output out38;
    output out39;
    output out40;
    output out41;
    output out42;
    output out43;
    output out44;
    output out45;
    output out46;
    output out47;
    output out48;
    output out49;
    output out50;
    output out51;
    output out52;
    output out53;
    output out54;
    output out55;
    output out56;
    output out57;
    output out58;
    output out59;
    output out60;
    output out61;
    output out62;
    output out63;
    output out64;
    output out65;
    output out66;
    output out67;
    output out68;
    output out69;
    output out70;
    output out71;
    output out72;
    output out73;
    output out74;
    output out75;
    output out76;
    output out77;
    output out78;
    output out79;
    output out80;

//##// (9, 9, 1, 8, False)
    LB_base_9_9_8bit  LB_base_inst0 (
        .clk(clk),
        .inp(in0),
        .out_0_0(out0),
        .out_0_1(out1),
        .out_0_2(out2),
        .out_0_3(out3),
        .out_0_4(out4),
        .out_0_5(out5),
        .out_0_6(out6),
        .out_0_7(out7),
        .out_0_8(out8),
        .out_1_0(out9),
        .out_1_1(out10),
        .out_1_2(out11),
        .out_1_3(out12),
        .out_1_4(out13),
        .out_1_5(out14),
        .out_1_6(out15),
        .out_1_7(out16),
        .out_1_8(out17),
        .out_2_0(out18),
        .out_2_1(out19),
        .out_2_2(out20),
        .out_2_3(out21),
        .out_2_4(out22),
        .out_2_5(out23),
        .out_2_6(out24),
        .out_2_7(out25),
        .out_2_8(out26),
        .out_3_0(out27),
        .out_3_1(out28),
        .out_3_2(out29),
        .out_3_3(out30),
        .out_3_4(out31),
        .out_3_5(out32),
        .out_3_6(out33),
        .out_3_7(out34),
        .out_3_8(out35),
        .out_4_0(out36),
        .out_4_1(out37),
        .out_4_2(out38),
        .out_4_3(out39),
        .out_4_4(out40),
        .out_4_5(out41),
        .out_4_6(out42),
        .out_4_7(out43),
        .out_4_8(out44),
        .out_5_0(out45),
        .out_5_1(out46),
        .out_5_2(out47),
        .out_5_3(out48),
        .out_5_4(out49),
        .out_5_5(out50),
        .out_5_6(out51),
        .out_5_7(out52),
        .out_5_8(out53),
        .out_6_0(out54),
        .out_6_1(out55),
        .out_6_2(out56),
        .out_6_3(out57),
        .out_6_4(out58),
        .out_6_5(out59),
        .out_6_6(out60),
        .out_6_7(out61),
        .out_6_8(out62),
        .out_7_0(out63),
        .out_7_1(out64),
        .out_7_2(out65),
        .out_7_3(out66),
        .out_7_4(out67),
        .out_7_5(out68),
        .out_7_6(out69),
        .out_7_7(out70),
        .out_7_8(out71),
        .out_8_0(out72),
        .out_8_1(out73),
        .out_8_2(out74),
        .out_8_3(out75),
        .out_8_4(out76),
        .out_8_5(out77),
        .out_8_6(out78),
        .out_8_7(out79),
        .out_8_8(out80)
    );

endmodule

module LB_base_9_9_8bit (
    clk,

    inp,

    out_0_0,
    out_0_1,
    out_0_2,
    out_0_3,
    out_0_4,
    out_0_5,
    out_0_6,
    out_0_7,
    out_0_8,
    out_1_0,
    out_1_1,
    out_1_2,
    out_1_3,
    out_1_4,
    out_1_5,
    out_1_6,
    out_1_7,
    out_1_8,
    out_2_0,
    out_2_1,
    out_2_2,
    out_2_3,
    out_2_4,
    out_2_5,
    out_2_6,
    out_2_7,
    out_2_8,
    out_3_0,
    out_3_1,
    out_3_2,
    out_3_3,
    out_3_4,
    out_3_5,
    out_3_6,
    out_3_7,
    out_3_8,
    out_4_0,
    out_4_1,
    out_4_2,
    out_4_3,
    out_4_4,
    out_4_5,
    out_4_6,
    out_4_7,
    out_4_8,
    out_5_0,
    out_5_1,
    out_5_2,
    out_5_3,
    out_5_4,
    out_5_5,
    out_5_6,
    out_5_7,
    out_5_8,
    out_6_0,
    out_6_1,
    out_6_2,
    out_6_3,
    out_6_4,
    out_6_5,
    out_6_6,
    out_6_7,
    out_6_8,
    out_7_0,
    out_7_1,
    out_7_2,
    out_7_3,
    out_7_4,
    out_7_5,
    out_7_6,
    out_7_7,
    out_7_8,
    out_8_0,
    out_8_1,
    out_8_2,
    out_8_3,
    out_8_4,
    out_8_5,
    out_8_6,
    out_8_7,
    out_8_8
);

    input clk;

    input inp;

    output out_0_0;
    output out_0_1;
    output out_0_2;
    output out_0_3;
    output out_0_4;
    output out_0_5;
    output out_0_6;
    output out_0_7;
    output out_0_8;
    output out_1_0;
    output out_1_1;
    output out_1_2;
    output out_1_3;
    output out_1_4;
    output out_1_5;
    output out_1_6;
    output out_1_7;
    output out_1_8;
    output out_2_0;
    output out_2_1;
    output out_2_2;
    output out_2_3;
    output out_2_4;
    output out_2_5;
    output out_2_6;
    output out_2_7;
    output out_2_8;
    output out_3_0;
    output out_3_1;
    output out_3_2;
    output out_3_3;
    output out_3_4;
    output out_3_5;
    output out_3_6;
    output out_3_7;
    output out_3_8;
    output out_4_0;
    output out_4_1;
    output out_4_2;
    output out_4_3;
    output out_4_4;
    output out_4_5;
    output out_4_6;
    output out_4_7;
    output out_4_8;
    output out_5_0;
    output out_5_1;
    output out_5_2;
    output out_5_3;
    output out_5_4;
    output out_5_5;
    output out_5_6;
    output out_5_7;
    output out_5_8;
    output out_6_0;
    output out_6_1;
    output out_6_2;
    output out_6_3;
    output out_6_4;
    output out_6_5;
    output out_6_6;
    output out_6_7;
    output out_6_8;
    output out_7_0;
    output out_7_1;
    output out_7_2;
    output out_7_3;
    output out_7_4;
    output out_7_5;
    output out_7_6;
    output out_7_7;
    output out_7_8;
    output out_8_0;
    output out_8_1;
    output out_8_2;
    output out_8_3;
    output out_8_4;
    output out_8_5;
    output out_8_6;
    output out_8_7;
    output out_8_8;

    wire sram_out_0;
    wire sram_out_1;
    wire sram_out_2;
    wire sram_out_3;
    wire sram_out_4;
    wire sram_out_5;
    wire sram_out_6;
    wire sram_out_7;
    wire sram_out_8;

    my_lb2 SRAM_BLOCK_0 (
        .clk (clk),

        .inp_16b (inp),

        .out_0_16b (sram_out_0),

        .out_1_16b (sram_out_1)

    );


    my_lb2 SRAM_BLOCK_1 (
        .clk (clk),

        .inp_16b (inp),

        .out_0_16b (sram_out_2),

        .out_1_16b (sram_out_3)

    );


    my_lb2 SRAM_BLOCK_2 (
        .clk (clk),

        .inp_16b (inp),

        .out_0_16b (sram_out_4),

        .out_1_16b (sram_out_5)

    );


    my_lb2 SRAM_BLOCK_3 (
        .clk (clk),

        .inp_16b (inp),

        .out_0_16b (sram_out_6),

        .out_1_16b (sram_out_7)

    );


    reg  inp_reg;

    always @(posedge clk) begin

        inp_reg <= inp;
    end

    assign sram_out_8 = inp_reg;


    ShiftReg_base_9_8bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1),
        .out_2_16b (out_0_2),
        .out_3_16b (out_0_3),
        .out_4_16b (out_0_4),
        .out_5_16b (out_0_5),
        .out_6_16b (out_0_6),
        .out_7_16b (out_0_7),
        .out_8_16b (out_0_8)
    );


    ShiftReg_base_9_8bit ShiftersRow_1(
        .clk (clk),

        .inp_16b (sram_out_1),

        .out_0_16b (out_1_0),
        .out_1_16b (out_1_1),
        .out_2_16b (out_1_2),
        .out_3_16b (out_1_3),
        .out_4_16b (out_1_4),
        .out_5_16b (out_1_5),
        .out_6_16b (out_1_6),
        .out_7_16b (out_1_7),
        .out_8_16b (out_1_8)
    );


    ShiftReg_base_9_8bit ShiftersRow_2(
        .clk (clk),

        .inp_16b (sram_out_2),

        .out_0_16b (out_2_0),
        .out_1_16b (out_2_1),
        .out_2_16b (out_2_2),
        .out_3_16b (out_2_3),
        .out_4_16b (out_2_4),
        .out_5_16b (out_2_5),
        .out_6_16b (out_2_6),
        .out_7_16b (out_2_7),
        .out_8_16b (out_2_8)
    );


    ShiftReg_base_9_8bit ShiftersRow_3(
        .clk (clk),

        .inp_16b (sram_out_3),

        .out_0_16b (out_3_0),
        .out_1_16b (out_3_1),
        .out_2_16b (out_3_2),
        .out_3_16b (out_3_3),
        .out_4_16b (out_3_4),
        .out_5_16b (out_3_5),
        .out_6_16b (out_3_6),
        .out_7_16b (out_3_7),
        .out_8_16b (out_3_8)
    );


    ShiftReg_base_9_8bit ShiftersRow_4(
        .clk (clk),

        .inp_16b (sram_out_4),

        .out_0_16b (out_4_0),
        .out_1_16b (out_4_1),
        .out_2_16b (out_4_2),
        .out_3_16b (out_4_3),
        .out_4_16b (out_4_4),
        .out_5_16b (out_4_5),
        .out_6_16b (out_4_6),
        .out_7_16b (out_4_7),
        .out_8_16b (out_4_8)
    );


    ShiftReg_base_9_8bit ShiftersRow_5(
        .clk (clk),

        .inp_16b (sram_out_5),

        .out_0_16b (out_5_0),
        .out_1_16b (out_5_1),
        .out_2_16b (out_5_2),
        .out_3_16b (out_5_3),
        .out_4_16b (out_5_4),
        .out_5_16b (out_5_5),
        .out_6_16b (out_5_6),
        .out_7_16b (out_5_7),
        .out_8_16b (out_5_8)
    );


    ShiftReg_base_9_8bit ShiftersRow_6(
        .clk (clk),

        .inp_16b (sram_out_6),

        .out_0_16b (out_6_0),
        .out_1_16b (out_6_1),
        .out_2_16b (out_6_2),
        .out_3_16b (out_6_3),
        .out_4_16b (out_6_4),
        .out_5_16b (out_6_5),
        .out_6_16b (out_6_6),
        .out_7_16b (out_6_7),
        .out_8_16b (out_6_8)
    );


    ShiftReg_base_9_8bit ShiftersRow_7(
        .clk (clk),

        .inp_16b (sram_out_7),

        .out_0_16b (out_7_0),
        .out_1_16b (out_7_1),
        .out_2_16b (out_7_2),
        .out_3_16b (out_7_3),
        .out_4_16b (out_7_4),
        .out_5_16b (out_7_5),
        .out_6_16b (out_7_6),
        .out_7_16b (out_7_7),
        .out_8_16b (out_7_8)
    );


    ShiftReg_base_9_8bit ShiftersRow_8(
        .clk (clk),

        .inp_16b (sram_out_8),

        .out_0_16b (out_8_0),
        .out_1_16b (out_8_1),
        .out_2_16b (out_8_2),
        .out_3_16b (out_8_3),
        .out_4_16b (out_8_4),
        .out_5_16b (out_8_5),
        .out_6_16b (out_8_6),
        .out_7_16b (out_8_7),
        .out_8_16b (out_8_8)
    );


endmodule

module ShiftReg_base_9_8bit (
    clk,

    inp_16b,

    out_0_16b,
    out_1_16b,
    out_2_16b,
    out_3_16b,
    out_4_16b,
    out_5_16b,
    out_6_16b,
    out_7_16b,
    out_8_16b
);

    input clk;

    input inp_16b;

    output out_0_16b;
    output out_1_16b;
    output out_2_16b;
    output out_3_16b;
    output out_4_16b;
    output out_5_16b;
    output out_6_16b;
    output out_7_16b;
    output out_8_16b;

    reg out_0_16b;
    reg out_1_16b;
    reg out_2_16b;
    reg out_3_16b;
    reg out_4_16b;
    reg out_5_16b;
    reg out_6_16b;
    reg out_7_16b;
    reg out_8_16b;


    always @(posedge clk) begin
        out_0_16b <= inp_16b;
        out_1_16b <= out_0_16b;
        out_2_16b <= out_1_16b;
        out_3_16b <= out_2_16b;
        out_4_16b <= out_3_16b;
        out_5_16b <= out_4_16b;
        out_6_16b <= out_5_16b;
        out_7_16b <= out_6_16b;
        out_8_16b <= out_7_16b;
    end

endmodule


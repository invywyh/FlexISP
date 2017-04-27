module top(
//Inputs
  w_p2_in_bounded_stencil_update_stream_0_0,

//Outputs
  w_hw_output_1_stencil_stream_0_0,

  clk
);

//Inputs
input    w_p2_in_bounded_stencil_update_stream_0_0;

//Outputs
output   w_hw_output_1_stencil_stream_0_0;

input   clk;

wire   w_p2_in_bounded_stencil_stream_0_0;
wire   w_p2_in_bounded_stencil_stream_0_1;
wire   w_p2_in_bounded_stencil_stream_0_2;
wire   w_p2_in_bounded_stencil_stream_0_3;
wire   w_p2_in_bounded_stencil_stream_0_4;
wire   w_p2_in_bounded_stencil_stream_0_5;
wire   w_p2_in_bounded_stencil_stream_0_6;
wire   w_p2_in_bounded_stencil_stream_0_7;
wire   w_p2_in_bounded_stencil_stream_0_8;
wire   w_p2_in_bounded_stencil_stream_1_0;
wire   w_p2_in_bounded_stencil_stream_1_1;
wire   w_p2_in_bounded_stencil_stream_1_2;
wire   w_p2_in_bounded_stencil_stream_1_3;
wire   w_p2_in_bounded_stencil_stream_1_4;
wire   w_p2_in_bounded_stencil_stream_1_5;
wire   w_p2_in_bounded_stencil_stream_1_6;
wire   w_p2_in_bounded_stencil_stream_1_7;
wire   w_p2_in_bounded_stencil_stream_1_8;
wire   w_p2_in_bounded_stencil_stream_2_0;
wire   w_p2_in_bounded_stencil_stream_2_1;
wire   w_p2_in_bounded_stencil_stream_2_2;
wire   w_p2_in_bounded_stencil_stream_2_3;
wire   w_p2_in_bounded_stencil_stream_2_4;
wire   w_p2_in_bounded_stencil_stream_2_5;
wire   w_p2_in_bounded_stencil_stream_2_6;
wire   w_p2_in_bounded_stencil_stream_2_7;
wire   w_p2_in_bounded_stencil_stream_2_8;
wire   w_p2_in_bounded_stencil_stream_3_0;
wire   w_p2_in_bounded_stencil_stream_3_1;
wire   w_p2_in_bounded_stencil_stream_3_2;
wire   w_p2_in_bounded_stencil_stream_3_3;
wire   w_p2_in_bounded_stencil_stream_3_4;
wire   w_p2_in_bounded_stencil_stream_3_5;
wire   w_p2_in_bounded_stencil_stream_3_6;
wire   w_p2_in_bounded_stencil_stream_3_7;
wire   w_p2_in_bounded_stencil_stream_3_8;
wire   w_p2_in_bounded_stencil_stream_4_0;
wire   w_p2_in_bounded_stencil_stream_4_1;
wire   w_p2_in_bounded_stencil_stream_4_2;
wire   w_p2_in_bounded_stencil_stream_4_3;
wire   w_p2_in_bounded_stencil_stream_4_4;
wire   w_p2_in_bounded_stencil_stream_4_5;
wire   w_p2_in_bounded_stencil_stream_4_6;
wire   w_p2_in_bounded_stencil_stream_4_7;
wire   w_p2_in_bounded_stencil_stream_4_8;
wire   w_p2_in_bounded_stencil_stream_5_0;
wire   w_p2_in_bounded_stencil_stream_5_1;
wire   w_p2_in_bounded_stencil_stream_5_2;
wire   w_p2_in_bounded_stencil_stream_5_3;
wire   w_p2_in_bounded_stencil_stream_5_4;
wire   w_p2_in_bounded_stencil_stream_5_5;
wire   w_p2_in_bounded_stencil_stream_5_6;
wire   w_p2_in_bounded_stencil_stream_5_7;
wire   w_p2_in_bounded_stencil_stream_5_8;
wire   w_p2_in_bounded_stencil_stream_6_0;
wire   w_p2_in_bounded_stencil_stream_6_1;
wire   w_p2_in_bounded_stencil_stream_6_2;
wire   w_p2_in_bounded_stencil_stream_6_3;
wire   w_p2_in_bounded_stencil_stream_6_4;
wire   w_p2_in_bounded_stencil_stream_6_5;
wire   w_p2_in_bounded_stencil_stream_6_6;
wire   w_p2_in_bounded_stencil_stream_6_7;
wire   w_p2_in_bounded_stencil_stream_6_8;
wire   w_p2_in_bounded_stencil_stream_7_0;
wire   w_p2_in_bounded_stencil_stream_7_1;
wire   w_p2_in_bounded_stencil_stream_7_2;
wire   w_p2_in_bounded_stencil_stream_7_3;
wire   w_p2_in_bounded_stencil_stream_7_4;
wire   w_p2_in_bounded_stencil_stream_7_5;
wire   w_p2_in_bounded_stencil_stream_7_6;
wire   w_p2_in_bounded_stencil_stream_7_7;
wire   w_p2_in_bounded_stencil_stream_7_8;
wire   w_p2_in_bounded_stencil_stream_8_0;
wire   w_p2_in_bounded_stencil_stream_8_1;
wire   w_p2_in_bounded_stencil_stream_8_2;
wire   w_p2_in_bounded_stencil_stream_8_3;
wire   w_p2_in_bounded_stencil_stream_8_4;
wire   w_p2_in_bounded_stencil_stream_8_5;
wire   w_p2_in_bounded_stencil_stream_8_6;
wire   w_p2_in_bounded_stencil_stream_8_7;
wire   w_p2_in_bounded_stencil_stream_8_8;

wire   gnd;
assign gnd=1'b0;

LB_9_9_1_8bit_False LB__p2_in_bounded_stencil_stream (
    .clk(clk),

    .in0(w_p2_in_bounded_stencil_update_stream_0_0),

    .out0(w_p2_in_bounded_stencil_stream_0_0),
    .out1(w_p2_in_bounded_stencil_stream_0_1),
    .out2(w_p2_in_bounded_stencil_stream_0_2),
    .out3(w_p2_in_bounded_stencil_stream_0_3),
    .out4(w_p2_in_bounded_stencil_stream_0_4),
    .out5(w_p2_in_bounded_stencil_stream_0_5),
    .out6(w_p2_in_bounded_stencil_stream_0_6),
    .out7(w_p2_in_bounded_stencil_stream_0_7),
    .out8(w_p2_in_bounded_stencil_stream_0_8),
    .out9(w_p2_in_bounded_stencil_stream_1_0),
    .out10(w_p2_in_bounded_stencil_stream_1_1),
    .out11(w_p2_in_bounded_stencil_stream_1_2),
    .out12(w_p2_in_bounded_stencil_stream_1_3),
    .out13(w_p2_in_bounded_stencil_stream_1_4),
    .out14(w_p2_in_bounded_stencil_stream_1_5),
    .out15(w_p2_in_bounded_stencil_stream_1_6),
    .out16(w_p2_in_bounded_stencil_stream_1_7),
    .out17(w_p2_in_bounded_stencil_stream_1_8),
    .out18(w_p2_in_bounded_stencil_stream_2_0),
    .out19(w_p2_in_bounded_stencil_stream_2_1),
    .out20(w_p2_in_bounded_stencil_stream_2_2),
    .out21(w_p2_in_bounded_stencil_stream_2_3),
    .out22(w_p2_in_bounded_stencil_stream_2_4),
    .out23(w_p2_in_bounded_stencil_stream_2_5),
    .out24(w_p2_in_bounded_stencil_stream_2_6),
    .out25(w_p2_in_bounded_stencil_stream_2_7),
    .out26(w_p2_in_bounded_stencil_stream_2_8),
    .out27(w_p2_in_bounded_stencil_stream_3_0),
    .out28(w_p2_in_bounded_stencil_stream_3_1),
    .out29(w_p2_in_bounded_stencil_stream_3_2),
    .out30(w_p2_in_bounded_stencil_stream_3_3),
    .out31(w_p2_in_bounded_stencil_stream_3_4),
    .out32(w_p2_in_bounded_stencil_stream_3_5),
    .out33(w_p2_in_bounded_stencil_stream_3_6),
    .out34(w_p2_in_bounded_stencil_stream_3_7),
    .out35(w_p2_in_bounded_stencil_stream_3_8),
    .out36(w_p2_in_bounded_stencil_stream_4_0),
    .out37(w_p2_in_bounded_stencil_stream_4_1),
    .out38(w_p2_in_bounded_stencil_stream_4_2),
    .out39(w_p2_in_bounded_stencil_stream_4_3),
    .out40(w_p2_in_bounded_stencil_stream_4_4),
    .out41(w_p2_in_bounded_stencil_stream_4_5),
    .out42(w_p2_in_bounded_stencil_stream_4_6),
    .out43(w_p2_in_bounded_stencil_stream_4_7),
    .out44(w_p2_in_bounded_stencil_stream_4_8),
    .out45(w_p2_in_bounded_stencil_stream_5_0),
    .out46(w_p2_in_bounded_stencil_stream_5_1),
    .out47(w_p2_in_bounded_stencil_stream_5_2),
    .out48(w_p2_in_bounded_stencil_stream_5_3),
    .out49(w_p2_in_bounded_stencil_stream_5_4),
    .out50(w_p2_in_bounded_stencil_stream_5_5),
    .out51(w_p2_in_bounded_stencil_stream_5_6),
    .out52(w_p2_in_bounded_stencil_stream_5_7),
    .out53(w_p2_in_bounded_stencil_stream_5_8),
    .out54(w_p2_in_bounded_stencil_stream_6_0),
    .out55(w_p2_in_bounded_stencil_stream_6_1),
    .out56(w_p2_in_bounded_stencil_stream_6_2),
    .out57(w_p2_in_bounded_stencil_stream_6_3),
    .out58(w_p2_in_bounded_stencil_stream_6_4),
    .out59(w_p2_in_bounded_stencil_stream_6_5),
    .out60(w_p2_in_bounded_stencil_stream_6_6),
    .out61(w_p2_in_bounded_stencil_stream_6_7),
    .out62(w_p2_in_bounded_stencil_stream_6_8),
    .out63(w_p2_in_bounded_stencil_stream_7_0),
    .out64(w_p2_in_bounded_stencil_stream_7_1),
    .out65(w_p2_in_bounded_stencil_stream_7_2),
    .out66(w_p2_in_bounded_stencil_stream_7_3),
    .out67(w_p2_in_bounded_stencil_stream_7_4),
    .out68(w_p2_in_bounded_stencil_stream_7_5),
    .out69(w_p2_in_bounded_stencil_stream_7_6),
    .out70(w_p2_in_bounded_stencil_stream_7_7),
    .out71(w_p2_in_bounded_stencil_stream_7_8),
    .out72(w_p2_in_bounded_stencil_stream_8_0),
    .out73(w_p2_in_bounded_stencil_stream_8_1),
    .out74(w_p2_in_bounded_stencil_stream_8_2),
    .out75(w_p2_in_bounded_stencil_stream_8_3),
    .out76(w_p2_in_bounded_stencil_stream_8_4),
    .out77(w_p2_in_bounded_stencil_stream_8_5),
    .out78(w_p2_in_bounded_stencil_stream_8_6),
    .out79(w_p2_in_bounded_stencil_stream_8_7),
    .out80(w_p2_in_bounded_stencil_stream_8_8)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_p2_in_bounded_stencil_0_0(w_p2_in_bounded_stencil_stream_0_0),
    .w_p2_in_bounded_stencil_0_1(w_p2_in_bounded_stencil_stream_0_1),
    .w_p2_in_bounded_stencil_0_2(w_p2_in_bounded_stencil_stream_0_2),
    .w_p2_in_bounded_stencil_0_3(w_p2_in_bounded_stencil_stream_0_3),
    .w_p2_in_bounded_stencil_0_4(w_p2_in_bounded_stencil_stream_0_4),
    .w_p2_in_bounded_stencil_0_5(w_p2_in_bounded_stencil_stream_0_5),
    .w_p2_in_bounded_stencil_0_6(w_p2_in_bounded_stencil_stream_0_6),
    .w_p2_in_bounded_stencil_0_7(w_p2_in_bounded_stencil_stream_0_7),
    .w_p2_in_bounded_stencil_0_8(w_p2_in_bounded_stencil_stream_0_8),
    .w_p2_in_bounded_stencil_1_0(w_p2_in_bounded_stencil_stream_1_0),
    .w_p2_in_bounded_stencil_1_1(w_p2_in_bounded_stencil_stream_1_1),
    .w_p2_in_bounded_stencil_1_2(w_p2_in_bounded_stencil_stream_1_2),
    .w_p2_in_bounded_stencil_1_3(w_p2_in_bounded_stencil_stream_1_3),
    .w_p2_in_bounded_stencil_1_4(w_p2_in_bounded_stencil_stream_1_4),
    .w_p2_in_bounded_stencil_1_5(w_p2_in_bounded_stencil_stream_1_5),
    .w_p2_in_bounded_stencil_1_6(w_p2_in_bounded_stencil_stream_1_6),
    .w_p2_in_bounded_stencil_1_7(w_p2_in_bounded_stencil_stream_1_7),
    .w_p2_in_bounded_stencil_1_8(w_p2_in_bounded_stencil_stream_1_8),
    .w_p2_in_bounded_stencil_2_0(w_p2_in_bounded_stencil_stream_2_0),
    .w_p2_in_bounded_stencil_2_1(w_p2_in_bounded_stencil_stream_2_1),
    .w_p2_in_bounded_stencil_2_2(w_p2_in_bounded_stencil_stream_2_2),
    .w_p2_in_bounded_stencil_2_3(w_p2_in_bounded_stencil_stream_2_3),
    .w_p2_in_bounded_stencil_2_4(w_p2_in_bounded_stencil_stream_2_4),
    .w_p2_in_bounded_stencil_2_5(w_p2_in_bounded_stencil_stream_2_5),
    .w_p2_in_bounded_stencil_2_6(w_p2_in_bounded_stencil_stream_2_6),
    .w_p2_in_bounded_stencil_2_7(w_p2_in_bounded_stencil_stream_2_7),
    .w_p2_in_bounded_stencil_2_8(w_p2_in_bounded_stencil_stream_2_8),
    .w_p2_in_bounded_stencil_3_0(w_p2_in_bounded_stencil_stream_3_0),
    .w_p2_in_bounded_stencil_3_1(w_p2_in_bounded_stencil_stream_3_1),
    .w_p2_in_bounded_stencil_3_2(w_p2_in_bounded_stencil_stream_3_2),
    .w_p2_in_bounded_stencil_3_3(w_p2_in_bounded_stencil_stream_3_3),
    .w_p2_in_bounded_stencil_3_4(w_p2_in_bounded_stencil_stream_3_4),
    .w_p2_in_bounded_stencil_3_5(w_p2_in_bounded_stencil_stream_3_5),
    .w_p2_in_bounded_stencil_3_6(w_p2_in_bounded_stencil_stream_3_6),
    .w_p2_in_bounded_stencil_3_7(w_p2_in_bounded_stencil_stream_3_7),
    .w_p2_in_bounded_stencil_3_8(w_p2_in_bounded_stencil_stream_3_8),
    .w_p2_in_bounded_stencil_4_0(w_p2_in_bounded_stencil_stream_4_0),
    .w_p2_in_bounded_stencil_4_1(w_p2_in_bounded_stencil_stream_4_1),
    .w_p2_in_bounded_stencil_4_2(w_p2_in_bounded_stencil_stream_4_2),
    .w_p2_in_bounded_stencil_4_3(w_p2_in_bounded_stencil_stream_4_3),
    .w_p2_in_bounded_stencil_4_4(w_p2_in_bounded_stencil_stream_4_4),
    .w_p2_in_bounded_stencil_4_5(w_p2_in_bounded_stencil_stream_4_5),
    .w_p2_in_bounded_stencil_4_6(w_p2_in_bounded_stencil_stream_4_6),
    .w_p2_in_bounded_stencil_4_7(w_p2_in_bounded_stencil_stream_4_7),
    .w_p2_in_bounded_stencil_4_8(w_p2_in_bounded_stencil_stream_4_8),
    .w_p2_in_bounded_stencil_5_0(w_p2_in_bounded_stencil_stream_5_0),
    .w_p2_in_bounded_stencil_5_1(w_p2_in_bounded_stencil_stream_5_1),
    .w_p2_in_bounded_stencil_5_2(w_p2_in_bounded_stencil_stream_5_2),
    .w_p2_in_bounded_stencil_5_3(w_p2_in_bounded_stencil_stream_5_3),
    .w_p2_in_bounded_stencil_5_4(w_p2_in_bounded_stencil_stream_5_4),
    .w_p2_in_bounded_stencil_5_5(w_p2_in_bounded_stencil_stream_5_5),
    .w_p2_in_bounded_stencil_5_6(w_p2_in_bounded_stencil_stream_5_6),
    .w_p2_in_bounded_stencil_5_7(w_p2_in_bounded_stencil_stream_5_7),
    .w_p2_in_bounded_stencil_5_8(w_p2_in_bounded_stencil_stream_5_8),
    .w_p2_in_bounded_stencil_6_0(w_p2_in_bounded_stencil_stream_6_0),
    .w_p2_in_bounded_stencil_6_1(w_p2_in_bounded_stencil_stream_6_1),
    .w_p2_in_bounded_stencil_6_2(w_p2_in_bounded_stencil_stream_6_2),
    .w_p2_in_bounded_stencil_6_3(w_p2_in_bounded_stencil_stream_6_3),
    .w_p2_in_bounded_stencil_6_4(w_p2_in_bounded_stencil_stream_6_4),
    .w_p2_in_bounded_stencil_6_5(w_p2_in_bounded_stencil_stream_6_5),
    .w_p2_in_bounded_stencil_6_6(w_p2_in_bounded_stencil_stream_6_6),
    .w_p2_in_bounded_stencil_6_7(w_p2_in_bounded_stencil_stream_6_7),
    .w_p2_in_bounded_stencil_6_8(w_p2_in_bounded_stencil_stream_6_8),
    .w_p2_in_bounded_stencil_7_0(w_p2_in_bounded_stencil_stream_7_0),
    .w_p2_in_bounded_stencil_7_1(w_p2_in_bounded_stencil_stream_7_1),
    .w_p2_in_bounded_stencil_7_2(w_p2_in_bounded_stencil_stream_7_2),
    .w_p2_in_bounded_stencil_7_3(w_p2_in_bounded_stencil_stream_7_3),
    .w_p2_in_bounded_stencil_7_4(w_p2_in_bounded_stencil_stream_7_4),
    .w_p2_in_bounded_stencil_7_5(w_p2_in_bounded_stencil_stream_7_5),
    .w_p2_in_bounded_stencil_7_6(w_p2_in_bounded_stencil_stream_7_6),
    .w_p2_in_bounded_stencil_7_7(w_p2_in_bounded_stencil_stream_7_7),
    .w_p2_in_bounded_stencil_7_8(w_p2_in_bounded_stencil_stream_7_8),
    .w_p2_in_bounded_stencil_8_0(w_p2_in_bounded_stencil_stream_8_0),
    .w_p2_in_bounded_stencil_8_1(w_p2_in_bounded_stencil_stream_8_1),
    .w_p2_in_bounded_stencil_8_2(w_p2_in_bounded_stencil_stream_8_2),
    .w_p2_in_bounded_stencil_8_3(w_p2_in_bounded_stencil_stream_8_3),
    .w_p2_in_bounded_stencil_8_4(w_p2_in_bounded_stencil_stream_8_4),
    .w_p2_in_bounded_stencil_8_5(w_p2_in_bounded_stencil_stream_8_5),
    .w_p2_in_bounded_stencil_8_6(w_p2_in_bounded_stencil_stream_8_6),
    .w_p2_in_bounded_stencil_8_7(w_p2_in_bounded_stencil_stream_8_7),
    .w_p2_in_bounded_stencil_8_8(w_p2_in_bounded_stencil_stream_8_8),

    .out_w_hw_output_1_stencil_packed(w_hw_output_1_stencil_stream_0_0),

    .clk(clk)
);

endmodule



module kernel__hw_output_1_stencil_stream(
//Inputs
  w_p2_in_bounded_stencil_0_0,
  w_p2_in_bounded_stencil_0_1,
  w_p2_in_bounded_stencil_0_2,
  w_p2_in_bounded_stencil_0_3,
  w_p2_in_bounded_stencil_0_4,
  w_p2_in_bounded_stencil_0_5,
  w_p2_in_bounded_stencil_0_6,
  w_p2_in_bounded_stencil_0_7,
  w_p2_in_bounded_stencil_0_8,
  w_p2_in_bounded_stencil_1_0,
  w_p2_in_bounded_stencil_1_1,
  w_p2_in_bounded_stencil_1_2,
  w_p2_in_bounded_stencil_1_3,
  w_p2_in_bounded_stencil_1_4,
  w_p2_in_bounded_stencil_1_5,
  w_p2_in_bounded_stencil_1_6,
  w_p2_in_bounded_stencil_1_7,
  w_p2_in_bounded_stencil_1_8,
  w_p2_in_bounded_stencil_2_0,
  w_p2_in_bounded_stencil_2_1,
  w_p2_in_bounded_stencil_2_2,
  w_p2_in_bounded_stencil_2_3,
  w_p2_in_bounded_stencil_2_4,
  w_p2_in_bounded_stencil_2_5,
  w_p2_in_bounded_stencil_2_6,
  w_p2_in_bounded_stencil_2_7,
  w_p2_in_bounded_stencil_2_8,
  w_p2_in_bounded_stencil_3_0,
  w_p2_in_bounded_stencil_3_1,
  w_p2_in_bounded_stencil_3_2,
  w_p2_in_bounded_stencil_3_3,
  w_p2_in_bounded_stencil_3_4,
  w_p2_in_bounded_stencil_3_5,
  w_p2_in_bounded_stencil_3_6,
  w_p2_in_bounded_stencil_3_7,
  w_p2_in_bounded_stencil_3_8,
  w_p2_in_bounded_stencil_4_0,
  w_p2_in_bounded_stencil_4_1,
  w_p2_in_bounded_stencil_4_2,
  w_p2_in_bounded_stencil_4_3,
  w_p2_in_bounded_stencil_4_4,
  w_p2_in_bounded_stencil_4_5,
  w_p2_in_bounded_stencil_4_6,
  w_p2_in_bounded_stencil_4_7,
  w_p2_in_bounded_stencil_4_8,
  w_p2_in_bounded_stencil_5_0,
  w_p2_in_bounded_stencil_5_1,
  w_p2_in_bounded_stencil_5_2,
  w_p2_in_bounded_stencil_5_3,
  w_p2_in_bounded_stencil_5_4,
  w_p2_in_bounded_stencil_5_5,
  w_p2_in_bounded_stencil_5_6,
  w_p2_in_bounded_stencil_5_7,
  w_p2_in_bounded_stencil_5_8,
  w_p2_in_bounded_stencil_6_0,
  w_p2_in_bounded_stencil_6_1,
  w_p2_in_bounded_stencil_6_2,
  w_p2_in_bounded_stencil_6_3,
  w_p2_in_bounded_stencil_6_4,
  w_p2_in_bounded_stencil_6_5,
  w_p2_in_bounded_stencil_6_6,
  w_p2_in_bounded_stencil_6_7,
  w_p2_in_bounded_stencil_6_8,
  w_p2_in_bounded_stencil_7_0,
  w_p2_in_bounded_stencil_7_1,
  w_p2_in_bounded_stencil_7_2,
  w_p2_in_bounded_stencil_7_3,
  w_p2_in_bounded_stencil_7_4,
  w_p2_in_bounded_stencil_7_5,
  w_p2_in_bounded_stencil_7_6,
  w_p2_in_bounded_stencil_7_7,
  w_p2_in_bounded_stencil_7_8,
  w_p2_in_bounded_stencil_8_0,
  w_p2_in_bounded_stencil_8_1,
  w_p2_in_bounded_stencil_8_2,
  w_p2_in_bounded_stencil_8_3,
  w_p2_in_bounded_stencil_8_4,
  w_p2_in_bounded_stencil_8_5,
  w_p2_in_bounded_stencil_8_6,
  w_p2_in_bounded_stencil_8_7,
  w_p2_in_bounded_stencil_8_8,
//Outputs
  out_w_hw_output_1_stencil_packed,

  clk
);

//Inputs
input  w_p2_in_bounded_stencil_6_8;
input  w_p2_in_bounded_stencil_5_7;
input  w_p2_in_bounded_stencil_5_5;
input  w_p2_in_bounded_stencil_5_4;
input  w_p2_in_bounded_stencil_5_3;
input  w_p2_in_bounded_stencil_2_2;
input  w_p2_in_bounded_stencil_5_1;
input  w_p2_in_bounded_stencil_3_8;
input  w_p2_in_bounded_stencil_6_0;
input  w_p2_in_bounded_stencil_6_1;
input  w_p2_in_bounded_stencil_6_2;
input  w_p2_in_bounded_stencil_6_3;
input  w_p2_in_bounded_stencil_6_4;
input  w_p2_in_bounded_stencil_6_5;
input  w_p2_in_bounded_stencil_6_6;
input  w_p2_in_bounded_stencil_6_7;
input  w_p2_in_bounded_stencil_2_4;
input  w_p2_in_bounded_stencil_2_5;
input  w_p2_in_bounded_stencil_2_6;
input  w_p2_in_bounded_stencil_2_7;
input  w_p2_in_bounded_stencil_2_0;
input  w_p2_in_bounded_stencil_2_1;
input  w_p2_in_bounded_stencil_4_8;
input  w_p2_in_bounded_stencil_2_3;
input  w_p2_in_bounded_stencil_4_6;
input  w_p2_in_bounded_stencil_4_7;
input  w_p2_in_bounded_stencil_4_4;
input  w_p2_in_bounded_stencil_4_5;
input  w_p2_in_bounded_stencil_4_2;
input  w_p2_in_bounded_stencil_4_3;
input  w_p2_in_bounded_stencil_4_0;
input  w_p2_in_bounded_stencil_4_1;
input  w_p2_in_bounded_stencil_7_1;
input  w_p2_in_bounded_stencil_3_6;
input  w_p2_in_bounded_stencil_3_7;
input  w_p2_in_bounded_stencil_7_0;
input  w_p2_in_bounded_stencil_3_1;
input  w_p2_in_bounded_stencil_5_0;
input  w_p2_in_bounded_stencil_8_0;
input  w_p2_in_bounded_stencil_3_0;
input  w_p2_in_bounded_stencil_7_2;
input  w_p2_in_bounded_stencil_3_3;
input  w_p2_in_bounded_stencil_5_2;
input  w_p2_in_bounded_stencil_7_5;
input  w_p2_in_bounded_stencil_3_2;
input  w_p2_in_bounded_stencil_7_4;
input  w_p2_in_bounded_stencil_5_6;
input  w_p2_in_bounded_stencil_7_7;
input  w_p2_in_bounded_stencil_3_4;
input  w_p2_in_bounded_stencil_7_6;
input  w_p2_in_bounded_stencil_7_3;
input  w_p2_in_bounded_stencil_7_8;
input  w_p2_in_bounded_stencil_5_8;
input  w_p2_in_bounded_stencil_8_8;
input  w_p2_in_bounded_stencil_1_3;
input  w_p2_in_bounded_stencil_1_2;
input  w_p2_in_bounded_stencil_1_1;
input  w_p2_in_bounded_stencil_1_0;
input  w_p2_in_bounded_stencil_1_7;
input  w_p2_in_bounded_stencil_1_6;
input  w_p2_in_bounded_stencil_1_5;
input  w_p2_in_bounded_stencil_1_4;
input  w_p2_in_bounded_stencil_3_5;
input  w_p2_in_bounded_stencil_1_8;
input  w_p2_in_bounded_stencil_2_8;
input  w_p2_in_bounded_stencil_8_2;
input  w_p2_in_bounded_stencil_8_3;
input  w_p2_in_bounded_stencil_0_8;
input  w_p2_in_bounded_stencil_8_1;
input  w_p2_in_bounded_stencil_8_6;
input  w_p2_in_bounded_stencil_8_7;
input  w_p2_in_bounded_stencil_8_4;
input  w_p2_in_bounded_stencil_8_5;
input  w_p2_in_bounded_stencil_0_2;
input  w_p2_in_bounded_stencil_0_3;
input  w_p2_in_bounded_stencil_0_0;
input  w_p2_in_bounded_stencil_0_1;
input  w_p2_in_bounded_stencil_0_6;
input  w_p2_in_bounded_stencil_0_7;
input  w_p2_in_bounded_stencil_0_4;
input  w_p2_in_bounded_stencil_0_5;
//Outputs
output  out_w_hw_output_1_stencil_packed;

input  clk;


wire  r0_w_p2_sum_xa12_0;
wire  r10_w_p2_sum_xa12_0;
wire  r11_w_p2_sum_xa12_0;
wire  r12_w_p2_sum_xa12_0;
wire  r13_w_p2_sum_xa12_0;
wire  r14_w_p2_sum_xa12_0;
wire  r15_w_p2_sum_xa12_0;
wire  r16_w_p2_sum_xa12_0;
wire  r17_w_p2_sum_xa12_0;
wire  r18_w_p2_sum_xa12_0;
wire  r19_w_p2_sum_xa12_0;
wire  r1_w_p2_sum_xa12_0;
wire  r20_w_p2_sum_xa12_0;
wire  r21_w_p2_sum_xa12_0;
wire  r22_w_p2_sum_xa12_0;
wire  r23_w_p2_sum_xa12_0;
wire  r24_w_p2_sum_xa12_0;
wire  r25_w_p2_sum_xa12_0;
wire  r26_w_p2_sum_xa12_0;
wire  r27_w_p2_sum_xa12_0;
wire  r28_w_p2_sum_xa12_0;
wire  r29_w_p2_sum_xa12_0;
wire  r2_w_p2_sum_xa12_0;
wire  r30_w_p2_sum_xa12_0;
wire  r31_w_p2_sum_xa12_0;
wire  r32_w_p2_sum_xa12_0;
wire  r33_w_p2_sum_xa12_0;
wire  r34_w_p2_sum_xa12_0;
wire  r35_w_p2_sum_xa12_0;
wire  r36_w_p2_sum_xa12_0;
wire  r37_w_p2_sum_xa12_0;
wire  r38_w_p2_sum_xa12_0;
wire  r39_w_p2_sum_xa12_0;
wire  r3_w_p2_sum_xa12_0;
wire  r40_w_p2_sum_xa12_0;
wire  r41_w_p2_sum_xa12_0;
wire  r42_w_p2_sum_xa12_0;
wire  r43_w_p2_sum_xa12_0;
wire  r44_w_p2_sum_xa12_0;
wire  r45_w_p2_sum_xa12_0;
wire  r46_w_p2_sum_xa12_0;
wire  r47_w_p2_sum_xa12_0;
wire  r48_w_p2_sum_xa12_0;
wire  r49_w_p2_sum_xa12_0;
wire  r4_w_p2_sum_xa12_0;
wire  r50_w_p2_sum_xa12_0;
wire  r51_w_p2_sum_xa12_0;
wire  r52_w_p2_sum_xa12_0;
wire  r53_w_p2_sum_xa12_0;
wire  r54_w_p2_sum_xa12_0;
wire  r55_w_p2_sum_xa12_0;
wire  r56_w_p2_sum_xa12_0;
wire  r57_w_p2_sum_xa12_0;
wire  r58_w_p2_sum_xa12_0;
wire  r59_w_p2_sum_xa12_0;
wire  r5_w_p2_sum_xa12_0;
wire  r60_w_p2_sum_xa12_0;
wire  r61_w_p2_sum_xa12_0;
wire  r62_w_p2_sum_xa12_0;
wire  r63_w_p2_sum_xa12_0;
wire  r64_w_p2_sum_xa12_0;
wire  r65_w_p2_sum_xa12_0;
wire  r66_w_p2_sum_xa12_0;
wire  r67_w_p2_sum_xa12_0;
wire  r68_w_p2_sum_xa12_0;
wire  r69_w_p2_sum_xa12_0;
wire  r6_w_p2_sum_xa12_0;
wire  r70_w_p2_sum_xa12_0;
wire  r71_w_p2_sum_xa12_0;
wire  r72_w_p2_sum_xa12_0;
wire  r73_w_p2_sum_xa12_0;
wire  r74_w_p2_sum_xa12_0;
wire  r75_w_p2_sum_xa12_0;
wire  r76_w_p2_sum_xa12_0;
wire  r77_w_p2_sum_xa12_0;
wire  r78_w_p2_sum_xa12_0;
wire  r79_w_p2_sum_xa12_0;
wire  r7_w_p2_sum_xa12_0;
wire  r80_w_p2_sum_xa12_0;
wire  r8_w_p2_sum_xa12_0;
wire  r9_w_p2_sum_xa12_0;
wire  w_198;
wire  w_199;
wire  w_200;
wire  w_201;
wire  w_202;
wire  w_203;
wire  w_204;
wire  w_205;
wire  w_206;
wire  w_207;
wire  w_208;
wire  w_209;
wire  w_210;
wire  w_211;
wire  w_212;
wire  w_213;
wire  w_214;
wire  w_215;
wire  w_216;
wire  w_217;
wire  w_218;
wire  w_219;
wire  w_220;
wire  w_221;
wire  w_222;
wire  w_223;
wire  w_224;
wire  w_225;
wire  w_226;
wire  w_227;
wire  w_228;
wire  w_229;
wire  w_230;
wire  w_231;
wire  w_232;
wire  w_233;
wire  w_234;
wire  w_235;
wire  w_236;
wire  w_237;
wire  w_238;
wire  w_239;
wire  w_240;
wire  w_241;
wire  w_242;
wire  w_243;
wire  w_244;
wire  w_245;
wire  w_246;
wire  w_247;
wire  w_248;
wire  w_249;
wire  w_250;
wire  w_251;
wire  w_252;
wire  w_253;
wire  w_254;
wire  w_255;
wire  w_256;
wire  w_257;
wire  w_258;
wire  w_259;
wire  w_260;
wire  w_261;
wire  w_262;
wire  w_263;
wire  w_264;
wire  w_265;
wire  w_266;
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
wire  w_hw_output_1_stencil_0_0;
wire  w_hw_output_1_stencil_packed;
wire  w_p2_sum_xa12_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_hw_output_1_stencil_packed=w_hw_output_1_stencil_packed;
assign  r0_w_p2_sum_xa12_0  =  w_202 ;
assign  r10_w_p2_sum_xa12_0  =  w_260 ;
assign  r11_w_p2_sum_xa12_0  =  w_266 ;
assign  r12_w_p2_sum_xa12_0  =  w_272 ;
assign  r13_w_p2_sum_xa12_0  =  w_278 ;
assign  r14_w_p2_sum_xa12_0  =  w_284 ;
assign  r15_w_p2_sum_xa12_0  =  w_290 ;
assign  r16_w_p2_sum_xa12_0  =  w_296 ;
assign  r17_w_p2_sum_xa12_0  =  w_302 ;
assign  r18_w_p2_sum_xa12_0  =  w_308 ;
assign  r19_w_p2_sum_xa12_0  =  w_314 ;
assign  r1_w_p2_sum_xa12_0  =  w_208 ;
assign  r20_w_p2_sum_xa12_0  =  w_320 ;
assign  r21_w_p2_sum_xa12_0  =  w_326 ;
assign  r22_w_p2_sum_xa12_0  =  w_332 ;
assign  r23_w_p2_sum_xa12_0  =  w_338 ;
assign  r24_w_p2_sum_xa12_0  =  w_344 ;
assign  r25_w_p2_sum_xa12_0  =  w_350 ;
assign  r26_w_p2_sum_xa12_0  =  w_356 ;
assign  r27_w_p2_sum_xa12_0  =  w_362 ;
assign  r28_w_p2_sum_xa12_0  =  w_368 ;
assign  r29_w_p2_sum_xa12_0  =  w_374 ;
assign  r2_w_p2_sum_xa12_0  =  w_214 ;
assign  r30_w_p2_sum_xa12_0  =  w_380 ;
assign  r31_w_p2_sum_xa12_0  =  w_386 ;
assign  r32_w_p2_sum_xa12_0  =  w_392 ;
assign  r33_w_p2_sum_xa12_0  =  w_398 ;
assign  r34_w_p2_sum_xa12_0  =  w_404 ;
assign  r35_w_p2_sum_xa12_0  =  w_410 ;
assign  r36_w_p2_sum_xa12_0  =  w_416 ;
assign  r37_w_p2_sum_xa12_0  =  w_422 ;
assign  r38_w_p2_sum_xa12_0  =  w_428 ;
assign  r39_w_p2_sum_xa12_0  =  w_434 ;
assign  r3_w_p2_sum_xa12_0  =  w_220 ;
assign  r40_w_p2_sum_xa12_0  =  w_440 ;
assign  r41_w_p2_sum_xa12_0  =  w_446 ;
assign  r42_w_p2_sum_xa12_0  =  w_452 ;
assign  r43_w_p2_sum_xa12_0  =  w_458 ;
assign  r44_w_p2_sum_xa12_0  =  w_464 ;
assign  r45_w_p2_sum_xa12_0  =  w_470 ;
assign  r46_w_p2_sum_xa12_0  =  w_476 ;
assign  r47_w_p2_sum_xa12_0  =  w_482 ;
assign  r48_w_p2_sum_xa12_0  =  w_488 ;
assign  r49_w_p2_sum_xa12_0  =  w_494 ;
assign  r4_w_p2_sum_xa12_0  =  w_226 ;
assign  r50_w_p2_sum_xa12_0  =  w_500 ;
assign  r51_w_p2_sum_xa12_0  =  w_506 ;
assign  r52_w_p2_sum_xa12_0  =  w_512 ;
assign  r53_w_p2_sum_xa12_0  =  w_518 ;
assign  r54_w_p2_sum_xa12_0  =  w_524 ;
assign  r55_w_p2_sum_xa12_0  =  w_530 ;
assign  r56_w_p2_sum_xa12_0  =  w_536 ;
assign  r57_w_p2_sum_xa12_0  =  w_542 ;
assign  r58_w_p2_sum_xa12_0  =  w_548 ;
assign  r59_w_p2_sum_xa12_0  =  w_554 ;
assign  r5_w_p2_sum_xa12_0  =  w_232 ;
assign  r60_w_p2_sum_xa12_0  =  w_560 ;
assign  r61_w_p2_sum_xa12_0  =  w_566 ;
assign  r62_w_p2_sum_xa12_0  =  w_572 ;
assign  r63_w_p2_sum_xa12_0  =  w_578 ;
assign  r64_w_p2_sum_xa12_0  =  w_584 ;
assign  r65_w_p2_sum_xa12_0  =  w_590 ;
assign  r66_w_p2_sum_xa12_0  =  w_596 ;
assign  r67_w_p2_sum_xa12_0  =  w_602 ;
assign  r68_w_p2_sum_xa12_0  =  w_608 ;
assign  r69_w_p2_sum_xa12_0  =  w_614 ;
assign  r6_w_p2_sum_xa12_0  =  w_238 ;
assign  r70_w_p2_sum_xa12_0  =  w_620 ;
assign  r71_w_p2_sum_xa12_0  =  w_626 ;
assign  r72_w_p2_sum_xa12_0  =  w_630 ;
assign  r73_w_p2_sum_xa12_0  =  w_636 ;
assign  r74_w_p2_sum_xa12_0  =  w_642 ;
assign  r75_w_p2_sum_xa12_0  =  w_648 ;
assign  r76_w_p2_sum_xa12_0  =  w_654 ;
assign  r77_w_p2_sum_xa12_0  =  w_660 ;
assign  r78_w_p2_sum_xa12_0  =  w_666 ;
assign  r79_w_p2_sum_xa12_0  =  w_672 ;
assign  r7_w_p2_sum_xa12_0  =  w_244 ;
assign  r80_w_p2_sum_xa12_0  =  w_676 ;
assign  r8_w_p2_sum_xa12_0  =  w_248 ;
assign  r9_w_p2_sum_xa12_0  =  w_254 ;
assign  w_198  = 1'b0;
assign  w_199  = 1'b0;
assign  w_200  =  w_p2_in_bounded_stencil_0_0 ;
assign  w_201  =  w_200 ;
ADD_16b_pe add_0 (
  .a(w_199),
  .b(w_201),
  .c(w_202),
  .clk(clk)
);
assign  w_203  =  r0_w_p2_sum_xa12_0 ;
assign  w_204  =  w_p2_in_bounded_stencil_1_0 ;
assign  w_205  =  w_204 ;
assign  w_206  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_205),
  .b(w_206),
  .c(w_207),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_203),
  .b(w_207),
  .c(w_208),
  .clk(clk)
);
assign  w_209  =  r1_w_p2_sum_xa12_0 ;
assign  w_210  =  w_p2_in_bounded_stencil_2_0 ;
assign  w_211  =  w_210 ;
assign  w_212  = 1'b0;
MULT_16b_pe mult_3 (
  .a(w_212),
  .b(w_211),
  .c(w_213),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_209),
  .b(w_213),
  .c(w_214),
  .clk(clk)
);
assign  w_215  =  r2_w_p2_sum_xa12_0 ;
assign  w_216  =  w_p2_in_bounded_stencil_3_0 ;
assign  w_217  =  w_216 ;
assign  w_218  = 1'b0;
MULT_16b_pe mult_5 (
  .a(w_218),
  .b(w_217),
  .c(w_219),
  .clk(clk)
);
ADD_16b_pe add_6 (
  .a(w_219),
  .b(w_215),
  .c(w_220),
  .clk(clk)
);
assign  w_221  =  r3_w_p2_sum_xa12_0 ;
assign  w_222  =  w_p2_in_bounded_stencil_4_0 ;
assign  w_223  =  w_222 ;
assign  w_224  = 1'b0;
MULT_16b_pe mult_7 (
  .a(w_224),
  .b(w_223),
  .c(w_225),
  .clk(clk)
);
ADD_16b_pe add_8 (
  .a(w_225),
  .b(w_221),
  .c(w_226),
  .clk(clk)
);
assign  w_227  =  r4_w_p2_sum_xa12_0 ;
assign  w_228  =  w_p2_in_bounded_stencil_5_0 ;
assign  w_229  =  w_228 ;
assign  w_230  = 1'b0;
MULT_16b_pe mult_9 (
  .a(w_230),
  .b(w_229),
  .c(w_231),
  .clk(clk)
);
ADD_16b_pe add_10 (
  .a(w_227),
  .b(w_231),
  .c(w_232),
  .clk(clk)
);
assign  w_233  =  r5_w_p2_sum_xa12_0 ;
assign  w_234  =  w_p2_in_bounded_stencil_6_0 ;
assign  w_235  =  w_234 ;
assign  w_236  = 1'b0;
MULT_16b_pe mult_11 (
  .a(w_235),
  .b(w_236),
  .c(w_237),
  .clk(clk)
);
ADD_16b_pe add_12 (
  .a(w_233),
  .b(w_237),
  .c(w_238),
  .clk(clk)
);
assign  w_239  =  r6_w_p2_sum_xa12_0 ;
assign  w_240  =  w_p2_in_bounded_stencil_7_0 ;
assign  w_241  =  w_240 ;
assign  w_242  = 1'b0;
MULT_16b_pe mult_13 (
  .a(w_241),
  .b(w_242),
  .c(w_243),
  .clk(clk)
);
ADD_16b_pe add_14 (
  .a(w_239),
  .b(w_243),
  .c(w_244),
  .clk(clk)
);
assign  w_245  =  r7_w_p2_sum_xa12_0 ;
assign  w_246  =  w_p2_in_bounded_stencil_8_0 ;
assign  w_247  =  w_246 ;
ADD_16b_pe add_15 (
  .a(w_245),
  .b(w_247),
  .c(w_248),
  .clk(clk)
);
assign  w_249  =  r8_w_p2_sum_xa12_0 ;
assign  w_250  =  w_p2_in_bounded_stencil_0_1 ;
assign  w_251  =  w_250 ;
assign  w_252  = 1'b0;
MULT_16b_pe mult_16 (
  .a(w_252),
  .b(w_251),
  .c(w_253),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_249),
  .b(w_253),
  .c(w_254),
  .clk(clk)
);
assign  w_255  =  r9_w_p2_sum_xa12_0 ;
assign  w_256  =  w_p2_in_bounded_stencil_1_1 ;
assign  w_257  =  w_256 ;
assign  w_258  = 1'b0;
MULT_16b_pe mult_18 (
  .a(w_257),
  .b(w_258),
  .c(w_259),
  .clk(clk)
);
ADD_16b_pe add_19 (
  .a(w_255),
  .b(w_259),
  .c(w_260),
  .clk(clk)
);
assign  w_261  =  r10_w_p2_sum_xa12_0 ;
assign  w_262  =  w_p2_in_bounded_stencil_2_1 ;
assign  w_263  =  w_262 ;
assign  w_264  = 1'b0;
MULT_16b_pe mult_20 (
  .a(w_263),
  .b(w_264),
  .c(w_265),
  .clk(clk)
);
ADD_16b_pe add_21 (
  .a(w_261),
  .b(w_265),
  .c(w_266),
  .clk(clk)
);
assign  w_267  =  r11_w_p2_sum_xa12_0 ;
assign  w_268  =  w_p2_in_bounded_stencil_3_1 ;
assign  w_269  =  w_268 ;
assign  w_270  = 1'b0;
MULT_16b_pe mult_22 (
  .a(w_269),
  .b(w_270),
  .c(w_271),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_267),
  .b(w_271),
  .c(w_272),
  .clk(clk)
);
assign  w_273  =  r12_w_p2_sum_xa12_0 ;
assign  w_274  =  w_p2_in_bounded_stencil_4_1 ;
assign  w_275  =  w_274 ;
assign  w_276  = 1'b0;
MULT_16b_pe mult_24 (
  .a(w_275),
  .b(w_276),
  .c(w_277),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_277),
  .b(w_273),
  .c(w_278),
  .clk(clk)
);
assign  w_279  =  r13_w_p2_sum_xa12_0 ;
assign  w_280  =  w_p2_in_bounded_stencil_5_1 ;
assign  w_281  =  w_280 ;
assign  w_282  = 1'b0;
MULT_16b_pe mult_26 (
  .a(w_281),
  .b(w_282),
  .c(w_283),
  .clk(clk)
);
ADD_16b_pe add_27 (
  .a(w_283),
  .b(w_279),
  .c(w_284),
  .clk(clk)
);
assign  w_285  =  r14_w_p2_sum_xa12_0 ;
assign  w_286  =  w_p2_in_bounded_stencil_6_1 ;
assign  w_287  =  w_286 ;
assign  w_288  = 1'b0;
MULT_16b_pe mult_28 (
  .a(w_288),
  .b(w_287),
  .c(w_289),
  .clk(clk)
);
ADD_16b_pe add_29 (
  .a(w_289),
  .b(w_285),
  .c(w_290),
  .clk(clk)
);
assign  w_291  =  r15_w_p2_sum_xa12_0 ;
assign  w_292  =  w_p2_in_bounded_stencil_7_1 ;
assign  w_293  =  w_292 ;
assign  w_294  = 1'b0;
MULT_16b_pe mult_30 (
  .a(w_293),
  .b(w_294),
  .c(w_295),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_291),
  .b(w_295),
  .c(w_296),
  .clk(clk)
);
assign  w_297  =  r16_w_p2_sum_xa12_0 ;
assign  w_298  =  w_p2_in_bounded_stencil_8_1 ;
assign  w_299  =  w_298 ;
assign  w_300  = 1'b0;
MULT_16b_pe mult_32 (
  .a(w_300),
  .b(w_299),
  .c(w_301),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_301),
  .b(w_297),
  .c(w_302),
  .clk(clk)
);
assign  w_303  =  r17_w_p2_sum_xa12_0 ;
assign  w_304  =  w_p2_in_bounded_stencil_0_2 ;
assign  w_305  =  w_304 ;
assign  w_306  = 1'b0;
MULT_16b_pe mult_34 (
  .a(w_305),
  .b(w_306),
  .c(w_307),
  .clk(clk)
);
ADD_16b_pe add_35 (
  .a(w_303),
  .b(w_307),
  .c(w_308),
  .clk(clk)
);
assign  w_309  =  r18_w_p2_sum_xa12_0 ;
assign  w_310  =  w_p2_in_bounded_stencil_1_2 ;
assign  w_311  =  w_310 ;
assign  w_312  = 1'b0;
MULT_16b_pe mult_36 (
  .a(w_312),
  .b(w_311),
  .c(w_313),
  .clk(clk)
);
ADD_16b_pe add_37 (
  .a(w_309),
  .b(w_313),
  .c(w_314),
  .clk(clk)
);
assign  w_315  =  r19_w_p2_sum_xa12_0 ;
assign  w_316  =  w_p2_in_bounded_stencil_2_2 ;
assign  w_317  =  w_316 ;
assign  w_318  = 1'b0;
MULT_16b_pe mult_38 (
  .a(w_317),
  .b(w_318),
  .c(w_319),
  .clk(clk)
);
ADD_16b_pe add_39 (
  .a(w_315),
  .b(w_319),
  .c(w_320),
  .clk(clk)
);
assign  w_321  =  r20_w_p2_sum_xa12_0 ;
assign  w_322  =  w_p2_in_bounded_stencil_3_2 ;
assign  w_323  =  w_322 ;
assign  w_324  = 1'b0;
MULT_16b_pe mult_40 (
  .a(w_323),
  .b(w_324),
  .c(w_325),
  .clk(clk)
);
ADD_16b_pe add_41 (
  .a(w_321),
  .b(w_325),
  .c(w_326),
  .clk(clk)
);
assign  w_327  =  r21_w_p2_sum_xa12_0 ;
assign  w_328  =  w_p2_in_bounded_stencil_4_2 ;
assign  w_329  =  w_328 ;
assign  w_330  = 1'b0;
MULT_16b_pe mult_42 (
  .a(w_330),
  .b(w_329),
  .c(w_331),
  .clk(clk)
);
ADD_16b_pe add_43 (
  .a(w_331),
  .b(w_327),
  .c(w_332),
  .clk(clk)
);
assign  w_333  =  r22_w_p2_sum_xa12_0 ;
assign  w_334  =  w_p2_in_bounded_stencil_5_2 ;
assign  w_335  =  w_334 ;
assign  w_336  = 1'b0;
MULT_16b_pe mult_44 (
  .a(w_335),
  .b(w_336),
  .c(w_337),
  .clk(clk)
);
ADD_16b_pe add_45 (
  .a(w_333),
  .b(w_337),
  .c(w_338),
  .clk(clk)
);
assign  w_339  =  r23_w_p2_sum_xa12_0 ;
assign  w_340  =  w_p2_in_bounded_stencil_6_2 ;
assign  w_341  =  w_340 ;
assign  w_342  = 1'b0;
MULT_16b_pe mult_46 (
  .a(w_341),
  .b(w_342),
  .c(w_343),
  .clk(clk)
);
ADD_16b_pe add_47 (
  .a(w_339),
  .b(w_343),
  .c(w_344),
  .clk(clk)
);
assign  w_345  =  r24_w_p2_sum_xa12_0 ;
assign  w_346  =  w_p2_in_bounded_stencil_7_2 ;
assign  w_347  =  w_346 ;
assign  w_348  = 1'b0;
MULT_16b_pe mult_48 (
  .a(w_347),
  .b(w_348),
  .c(w_349),
  .clk(clk)
);
ADD_16b_pe add_49 (
  .a(w_345),
  .b(w_349),
  .c(w_350),
  .clk(clk)
);
assign  w_351  =  r25_w_p2_sum_xa12_0 ;
assign  w_352  =  w_p2_in_bounded_stencil_8_2 ;
assign  w_353  =  w_352 ;
assign  w_354  = 1'b0;
MULT_16b_pe mult_50 (
  .a(w_353),
  .b(w_354),
  .c(w_355),
  .clk(clk)
);
ADD_16b_pe add_51 (
  .a(w_351),
  .b(w_355),
  .c(w_356),
  .clk(clk)
);
assign  w_357  =  r26_w_p2_sum_xa12_0 ;
assign  w_358  =  w_p2_in_bounded_stencil_0_3 ;
assign  w_359  =  w_358 ;
assign  w_360  = 1'b0;
MULT_16b_pe mult_52 (
  .a(w_359),
  .b(w_360),
  .c(w_361),
  .clk(clk)
);
ADD_16b_pe add_53 (
  .a(w_357),
  .b(w_361),
  .c(w_362),
  .clk(clk)
);
assign  w_363  =  r27_w_p2_sum_xa12_0 ;
assign  w_364  =  w_p2_in_bounded_stencil_1_3 ;
assign  w_365  =  w_364 ;
assign  w_366  = 1'b0;
MULT_16b_pe mult_54 (
  .a(w_366),
  .b(w_365),
  .c(w_367),
  .clk(clk)
);
ADD_16b_pe add_55 (
  .a(w_367),
  .b(w_363),
  .c(w_368),
  .clk(clk)
);
assign  w_369  =  r28_w_p2_sum_xa12_0 ;
assign  w_370  =  w_p2_in_bounded_stencil_2_3 ;
assign  w_371  =  w_370 ;
assign  w_372  = 1'b0;
MULT_16b_pe mult_56 (
  .a(w_371),
  .b(w_372),
  .c(w_373),
  .clk(clk)
);
ADD_16b_pe add_57 (
  .a(w_373),
  .b(w_369),
  .c(w_374),
  .clk(clk)
);
assign  w_375  =  r29_w_p2_sum_xa12_0 ;
assign  w_376  =  w_p2_in_bounded_stencil_3_3 ;
assign  w_377  =  w_376 ;
assign  w_378  = 1'b0;
MULT_16b_pe mult_58 (
  .a(w_377),
  .b(w_378),
  .c(w_379),
  .clk(clk)
);
ADD_16b_pe add_59 (
  .a(w_375),
  .b(w_379),
  .c(w_380),
  .clk(clk)
);
assign  w_381  =  r30_w_p2_sum_xa12_0 ;
assign  w_382  =  w_p2_in_bounded_stencil_4_3 ;
assign  w_383  =  w_382 ;
assign  w_384  = 1'b0;
MULT_16b_pe mult_60 (
  .a(w_383),
  .b(w_384),
  .c(w_385),
  .clk(clk)
);
ADD_16b_pe add_61 (
  .a(w_381),
  .b(w_385),
  .c(w_386),
  .clk(clk)
);
assign  w_387  =  r31_w_p2_sum_xa12_0 ;
assign  w_388  =  w_p2_in_bounded_stencil_5_3 ;
assign  w_389  =  w_388 ;
assign  w_390  = 1'b0;
MULT_16b_pe mult_62 (
  .a(w_389),
  .b(w_390),
  .c(w_391),
  .clk(clk)
);
ADD_16b_pe add_63 (
  .a(w_391),
  .b(w_387),
  .c(w_392),
  .clk(clk)
);
assign  w_393  =  r32_w_p2_sum_xa12_0 ;
assign  w_394  =  w_p2_in_bounded_stencil_6_3 ;
assign  w_395  =  w_394 ;
assign  w_396  = 1'b0;
MULT_16b_pe mult_64 (
  .a(w_396),
  .b(w_395),
  .c(w_397),
  .clk(clk)
);
ADD_16b_pe add_65 (
  .a(w_397),
  .b(w_393),
  .c(w_398),
  .clk(clk)
);
assign  w_399  =  r33_w_p2_sum_xa12_0 ;
assign  w_400  =  w_p2_in_bounded_stencil_7_3 ;
assign  w_401  =  w_400 ;
assign  w_402  = 1'b0;
MULT_16b_pe mult_66 (
  .a(w_402),
  .b(w_401),
  .c(w_403),
  .clk(clk)
);
ADD_16b_pe add_67 (
  .a(w_403),
  .b(w_399),
  .c(w_404),
  .clk(clk)
);
assign  w_405  =  r34_w_p2_sum_xa12_0 ;
assign  w_406  =  w_p2_in_bounded_stencil_8_3 ;
assign  w_407  =  w_406 ;
assign  w_408  = 1'b0;
MULT_16b_pe mult_68 (
  .a(w_407),
  .b(w_408),
  .c(w_409),
  .clk(clk)
);
ADD_16b_pe add_69 (
  .a(w_405),
  .b(w_409),
  .c(w_410),
  .clk(clk)
);
assign  w_411  =  r35_w_p2_sum_xa12_0 ;
assign  w_412  =  w_p2_in_bounded_stencil_0_4 ;
assign  w_413  =  w_412 ;
assign  w_414  = 1'b0;
MULT_16b_pe mult_70 (
  .a(w_413),
  .b(w_414),
  .c(w_415),
  .clk(clk)
);
ADD_16b_pe add_71 (
  .a(w_411),
  .b(w_415),
  .c(w_416),
  .clk(clk)
);
assign  w_417  =  r36_w_p2_sum_xa12_0 ;
assign  w_418  =  w_p2_in_bounded_stencil_1_4 ;
assign  w_419  =  w_418 ;
assign  w_420  = 1'b0;
MULT_16b_pe mult_72 (
  .a(w_419),
  .b(w_420),
  .c(w_421),
  .clk(clk)
);
ADD_16b_pe add_73 (
  .a(w_421),
  .b(w_417),
  .c(w_422),
  .clk(clk)
);
assign  w_423  =  r37_w_p2_sum_xa12_0 ;
assign  w_424  =  w_p2_in_bounded_stencil_2_4 ;
assign  w_425  =  w_424 ;
assign  w_426  = 1'b0;
MULT_16b_pe mult_74 (
  .a(w_425),
  .b(w_426),
  .c(w_427),
  .clk(clk)
);
ADD_16b_pe add_75 (
  .a(w_423),
  .b(w_427),
  .c(w_428),
  .clk(clk)
);
assign  w_429  =  r38_w_p2_sum_xa12_0 ;
assign  w_430  =  w_p2_in_bounded_stencil_3_4 ;
assign  w_431  =  w_430 ;
assign  w_432  = 1'b0;
MULT_16b_pe mult_76 (
  .a(w_432),
  .b(w_431),
  .c(w_433),
  .clk(clk)
);
ADD_16b_pe add_77 (
  .a(w_429),
  .b(w_433),
  .c(w_434),
  .clk(clk)
);
assign  w_435  =  r39_w_p2_sum_xa12_0 ;
assign  w_436  =  w_p2_in_bounded_stencil_4_4 ;
assign  w_437  =  w_436 ;
assign  w_438  = 1'b0;
MULT_16b_pe mult_78 (
  .a(w_438),
  .b(w_437),
  .c(w_439),
  .clk(clk)
);
ADD_16b_pe add_79 (
  .a(w_439),
  .b(w_435),
  .c(w_440),
  .clk(clk)
);
assign  w_441  =  r40_w_p2_sum_xa12_0 ;
assign  w_442  =  w_p2_in_bounded_stencil_5_4 ;
assign  w_443  =  w_442 ;
assign  w_444  = 1'b0;
MULT_16b_pe mult_80 (
  .a(w_443),
  .b(w_444),
  .c(w_445),
  .clk(clk)
);
ADD_16b_pe add_81 (
  .a(w_441),
  .b(w_445),
  .c(w_446),
  .clk(clk)
);
assign  w_447  =  r41_w_p2_sum_xa12_0 ;
assign  w_448  =  w_p2_in_bounded_stencil_6_4 ;
assign  w_449  =  w_448 ;
assign  w_450  = 1'b0;
MULT_16b_pe mult_82 (
  .a(w_449),
  .b(w_450),
  .c(w_451),
  .clk(clk)
);
ADD_16b_pe add_83 (
  .a(w_447),
  .b(w_451),
  .c(w_452),
  .clk(clk)
);
assign  w_453  =  r42_w_p2_sum_xa12_0 ;
assign  w_454  =  w_p2_in_bounded_stencil_7_4 ;
assign  w_455  =  w_454 ;
assign  w_456  = 1'b0;
MULT_16b_pe mult_84 (
  .a(w_455),
  .b(w_456),
  .c(w_457),
  .clk(clk)
);
ADD_16b_pe add_85 (
  .a(w_457),
  .b(w_453),
  .c(w_458),
  .clk(clk)
);
assign  w_459  =  r43_w_p2_sum_xa12_0 ;
assign  w_460  =  w_p2_in_bounded_stencil_8_4 ;
assign  w_461  =  w_460 ;
assign  w_462  = 1'b0;
MULT_16b_pe mult_86 (
  .a(w_461),
  .b(w_462),
  .c(w_463),
  .clk(clk)
);
ADD_16b_pe add_87 (
  .a(w_459),
  .b(w_463),
  .c(w_464),
  .clk(clk)
);
assign  w_465  =  r44_w_p2_sum_xa12_0 ;
assign  w_466  =  w_p2_in_bounded_stencil_0_5 ;
assign  w_467  =  w_466 ;
assign  w_468  = 1'b0;
MULT_16b_pe mult_88 (
  .a(w_467),
  .b(w_468),
  .c(w_469),
  .clk(clk)
);
ADD_16b_pe add_89 (
  .a(w_465),
  .b(w_469),
  .c(w_470),
  .clk(clk)
);
assign  w_471  =  r45_w_p2_sum_xa12_0 ;
assign  w_472  =  w_p2_in_bounded_stencil_1_5 ;
assign  w_473  =  w_472 ;
assign  w_474  = 1'b0;
MULT_16b_pe mult_90 (
  .a(w_474),
  .b(w_473),
  .c(w_475),
  .clk(clk)
);
ADD_16b_pe add_91 (
  .a(w_475),
  .b(w_471),
  .c(w_476),
  .clk(clk)
);
assign  w_477  =  r46_w_p2_sum_xa12_0 ;
assign  w_478  =  w_p2_in_bounded_stencil_2_5 ;
assign  w_479  =  w_478 ;
assign  w_480  = 1'b0;
MULT_16b_pe mult_92 (
  .a(w_480),
  .b(w_479),
  .c(w_481),
  .clk(clk)
);
ADD_16b_pe add_93 (
  .a(w_477),
  .b(w_481),
  .c(w_482),
  .clk(clk)
);
assign  w_483  =  r47_w_p2_sum_xa12_0 ;
assign  w_484  =  w_p2_in_bounded_stencil_3_5 ;
assign  w_485  =  w_484 ;
assign  w_486  = 1'b0;
MULT_16b_pe mult_94 (
  .a(w_486),
  .b(w_485),
  .c(w_487),
  .clk(clk)
);
ADD_16b_pe add_95 (
  .a(w_487),
  .b(w_483),
  .c(w_488),
  .clk(clk)
);
assign  w_489  =  r48_w_p2_sum_xa12_0 ;
assign  w_490  =  w_p2_in_bounded_stencil_4_5 ;
assign  w_491  =  w_490 ;
assign  w_492  = 1'b0;
MULT_16b_pe mult_96 (
  .a(w_491),
  .b(w_492),
  .c(w_493),
  .clk(clk)
);
ADD_16b_pe add_97 (
  .a(w_493),
  .b(w_489),
  .c(w_494),
  .clk(clk)
);
assign  w_495  =  r49_w_p2_sum_xa12_0 ;
assign  w_496  =  w_p2_in_bounded_stencil_5_5 ;
assign  w_497  =  w_496 ;
assign  w_498  = 1'b0;
MULT_16b_pe mult_98 (
  .a(w_498),
  .b(w_497),
  .c(w_499),
  .clk(clk)
);
ADD_16b_pe add_99 (
  .a(w_499),
  .b(w_495),
  .c(w_500),
  .clk(clk)
);
assign  w_501  =  r50_w_p2_sum_xa12_0 ;
assign  w_502  =  w_p2_in_bounded_stencil_6_5 ;
assign  w_503  =  w_502 ;
assign  w_504  = 1'b0;
MULT_16b_pe mult_100 (
  .a(w_504),
  .b(w_503),
  .c(w_505),
  .clk(clk)
);
ADD_16b_pe add_101 (
  .a(w_505),
  .b(w_501),
  .c(w_506),
  .clk(clk)
);
assign  w_507  =  r51_w_p2_sum_xa12_0 ;
assign  w_508  =  w_p2_in_bounded_stencil_7_5 ;
assign  w_509  =  w_508 ;
assign  w_510  = 1'b0;
MULT_16b_pe mult_102 (
  .a(w_510),
  .b(w_509),
  .c(w_511),
  .clk(clk)
);
ADD_16b_pe add_103 (
  .a(w_507),
  .b(w_511),
  .c(w_512),
  .clk(clk)
);
assign  w_513  =  r52_w_p2_sum_xa12_0 ;
assign  w_514  =  w_p2_in_bounded_stencil_8_5 ;
assign  w_515  =  w_514 ;
assign  w_516  = 1'b0;
MULT_16b_pe mult_104 (
  .a(w_515),
  .b(w_516),
  .c(w_517),
  .clk(clk)
);
ADD_16b_pe add_105 (
  .a(w_517),
  .b(w_513),
  .c(w_518),
  .clk(clk)
);
assign  w_519  =  r53_w_p2_sum_xa12_0 ;
assign  w_520  =  w_p2_in_bounded_stencil_0_6 ;
assign  w_521  =  w_520 ;
assign  w_522  = 1'b0;
MULT_16b_pe mult_106 (
  .a(w_521),
  .b(w_522),
  .c(w_523),
  .clk(clk)
);
ADD_16b_pe add_107 (
  .a(w_519),
  .b(w_523),
  .c(w_524),
  .clk(clk)
);
assign  w_525  =  r54_w_p2_sum_xa12_0 ;
assign  w_526  =  w_p2_in_bounded_stencil_1_6 ;
assign  w_527  =  w_526 ;
assign  w_528  = 1'b0;
MULT_16b_pe mult_108 (
  .a(w_527),
  .b(w_528),
  .c(w_529),
  .clk(clk)
);
ADD_16b_pe add_109 (
  .a(w_525),
  .b(w_529),
  .c(w_530),
  .clk(clk)
);
assign  w_531  =  r55_w_p2_sum_xa12_0 ;
assign  w_532  =  w_p2_in_bounded_stencil_2_6 ;
assign  w_533  =  w_532 ;
assign  w_534  = 1'b0;
MULT_16b_pe mult_110 (
  .a(w_533),
  .b(w_534),
  .c(w_535),
  .clk(clk)
);
ADD_16b_pe add_111 (
  .a(w_531),
  .b(w_535),
  .c(w_536),
  .clk(clk)
);
assign  w_537  =  r56_w_p2_sum_xa12_0 ;
assign  w_538  =  w_p2_in_bounded_stencil_3_6 ;
assign  w_539  =  w_538 ;
assign  w_540  = 1'b0;
MULT_16b_pe mult_112 (
  .a(w_539),
  .b(w_540),
  .c(w_541),
  .clk(clk)
);
ADD_16b_pe add_113 (
  .a(w_541),
  .b(w_537),
  .c(w_542),
  .clk(clk)
);
assign  w_543  =  r57_w_p2_sum_xa12_0 ;
assign  w_544  =  w_p2_in_bounded_stencil_4_6 ;
assign  w_545  =  w_544 ;
assign  w_546  = 1'b0;
MULT_16b_pe mult_114 (
  .a(w_546),
  .b(w_545),
  .c(w_547),
  .clk(clk)
);
ADD_16b_pe add_115 (
  .a(w_543),
  .b(w_547),
  .c(w_548),
  .clk(clk)
);
assign  w_549  =  r58_w_p2_sum_xa12_0 ;
assign  w_550  =  w_p2_in_bounded_stencil_5_6 ;
assign  w_551  =  w_550 ;
assign  w_552  = 1'b0;
MULT_16b_pe mult_116 (
  .a(w_551),
  .b(w_552),
  .c(w_553),
  .clk(clk)
);
ADD_16b_pe add_117 (
  .a(w_553),
  .b(w_549),
  .c(w_554),
  .clk(clk)
);
assign  w_555  =  r59_w_p2_sum_xa12_0 ;
assign  w_556  =  w_p2_in_bounded_stencil_6_6 ;
assign  w_557  =  w_556 ;
assign  w_558  = 1'b0;
MULT_16b_pe mult_118 (
  .a(w_558),
  .b(w_557),
  .c(w_559),
  .clk(clk)
);
ADD_16b_pe add_119 (
  .a(w_559),
  .b(w_555),
  .c(w_560),
  .clk(clk)
);
assign  w_561  =  r60_w_p2_sum_xa12_0 ;
assign  w_562  =  w_p2_in_bounded_stencil_7_6 ;
assign  w_563  =  w_562 ;
assign  w_564  = 1'b0;
MULT_16b_pe mult_120 (
  .a(w_563),
  .b(w_564),
  .c(w_565),
  .clk(clk)
);
ADD_16b_pe add_121 (
  .a(w_561),
  .b(w_565),
  .c(w_566),
  .clk(clk)
);
assign  w_567  =  r61_w_p2_sum_xa12_0 ;
assign  w_568  =  w_p2_in_bounded_stencil_8_6 ;
assign  w_569  =  w_568 ;
assign  w_570  = 1'b0;
MULT_16b_pe mult_122 (
  .a(w_569),
  .b(w_570),
  .c(w_571),
  .clk(clk)
);
ADD_16b_pe add_123 (
  .a(w_571),
  .b(w_567),
  .c(w_572),
  .clk(clk)
);
assign  w_573  =  r62_w_p2_sum_xa12_0 ;
assign  w_574  =  w_p2_in_bounded_stencil_0_7 ;
assign  w_575  =  w_574 ;
assign  w_576  = 1'b0;
MULT_16b_pe mult_124 (
  .a(w_576),
  .b(w_575),
  .c(w_577),
  .clk(clk)
);
ADD_16b_pe add_125 (
  .a(w_577),
  .b(w_573),
  .c(w_578),
  .clk(clk)
);
assign  w_579  =  r63_w_p2_sum_xa12_0 ;
assign  w_580  =  w_p2_in_bounded_stencil_1_7 ;
assign  w_581  =  w_580 ;
assign  w_582  = 1'b0;
MULT_16b_pe mult_126 (
  .a(w_582),
  .b(w_581),
  .c(w_583),
  .clk(clk)
);
ADD_16b_pe add_127 (
  .a(w_583),
  .b(w_579),
  .c(w_584),
  .clk(clk)
);
assign  w_585  =  r64_w_p2_sum_xa12_0 ;
assign  w_586  =  w_p2_in_bounded_stencil_2_7 ;
assign  w_587  =  w_586 ;
assign  w_588  = 1'b0;
MULT_16b_pe mult_128 (
  .a(w_587),
  .b(w_588),
  .c(w_589),
  .clk(clk)
);
ADD_16b_pe add_129 (
  .a(w_585),
  .b(w_589),
  .c(w_590),
  .clk(clk)
);
assign  w_591  =  r65_w_p2_sum_xa12_0 ;
assign  w_592  =  w_p2_in_bounded_stencil_3_7 ;
assign  w_593  =  w_592 ;
assign  w_594  = 1'b0;
MULT_16b_pe mult_130 (
  .a(w_594),
  .b(w_593),
  .c(w_595),
  .clk(clk)
);
ADD_16b_pe add_131 (
  .a(w_595),
  .b(w_591),
  .c(w_596),
  .clk(clk)
);
assign  w_597  =  r66_w_p2_sum_xa12_0 ;
assign  w_598  =  w_p2_in_bounded_stencil_4_7 ;
assign  w_599  =  w_598 ;
assign  w_600  = 1'b0;
MULT_16b_pe mult_132 (
  .a(w_599),
  .b(w_600),
  .c(w_601),
  .clk(clk)
);
ADD_16b_pe add_133 (
  .a(w_597),
  .b(w_601),
  .c(w_602),
  .clk(clk)
);
assign  w_603  =  r67_w_p2_sum_xa12_0 ;
assign  w_604  =  w_p2_in_bounded_stencil_5_7 ;
assign  w_605  =  w_604 ;
assign  w_606  = 1'b0;
MULT_16b_pe mult_134 (
  .a(w_605),
  .b(w_606),
  .c(w_607),
  .clk(clk)
);
ADD_16b_pe add_135 (
  .a(w_607),
  .b(w_603),
  .c(w_608),
  .clk(clk)
);
assign  w_609  =  r68_w_p2_sum_xa12_0 ;
assign  w_610  =  w_p2_in_bounded_stencil_6_7 ;
assign  w_611  =  w_610 ;
assign  w_612  = 1'b0;
MULT_16b_pe mult_136 (
  .a(w_612),
  .b(w_611),
  .c(w_613),
  .clk(clk)
);
ADD_16b_pe add_137 (
  .a(w_609),
  .b(w_613),
  .c(w_614),
  .clk(clk)
);
assign  w_615  =  r69_w_p2_sum_xa12_0 ;
assign  w_616  =  w_p2_in_bounded_stencil_7_7 ;
assign  w_617  =  w_616 ;
assign  w_618  = 1'b0;
MULT_16b_pe mult_138 (
  .a(w_617),
  .b(w_618),
  .c(w_619),
  .clk(clk)
);
ADD_16b_pe add_139 (
  .a(w_615),
  .b(w_619),
  .c(w_620),
  .clk(clk)
);
assign  w_621  =  r70_w_p2_sum_xa12_0 ;
assign  w_622  =  w_p2_in_bounded_stencil_8_7 ;
assign  w_623  =  w_622 ;
assign  w_624  = 1'b0;
MULT_16b_pe mult_140 (
  .a(w_623),
  .b(w_624),
  .c(w_625),
  .clk(clk)
);
ADD_16b_pe add_141 (
  .a(w_621),
  .b(w_625),
  .c(w_626),
  .clk(clk)
);
assign  w_627  =  r71_w_p2_sum_xa12_0 ;
assign  w_628  =  w_p2_in_bounded_stencil_0_8 ;
assign  w_629  =  w_628 ;
ADD_16b_pe add_142 (
  .a(w_629),
  .b(w_627),
  .c(w_630),
  .clk(clk)
);
assign  w_631  =  r72_w_p2_sum_xa12_0 ;
assign  w_632  =  w_p2_in_bounded_stencil_1_8 ;
assign  w_633  =  w_632 ;
assign  w_634  = 1'b0;
MULT_16b_pe mult_143 (
  .a(w_634),
  .b(w_633),
  .c(w_635),
  .clk(clk)
);
ADD_16b_pe add_144 (
  .a(w_635),
  .b(w_631),
  .c(w_636),
  .clk(clk)
);
assign  w_637  =  r73_w_p2_sum_xa12_0 ;
assign  w_638  =  w_p2_in_bounded_stencil_2_8 ;
assign  w_639  =  w_638 ;
assign  w_640  = 1'b0;
MULT_16b_pe mult_145 (
  .a(w_640),
  .b(w_639),
  .c(w_641),
  .clk(clk)
);
ADD_16b_pe add_146 (
  .a(w_641),
  .b(w_637),
  .c(w_642),
  .clk(clk)
);
assign  w_643  =  r74_w_p2_sum_xa12_0 ;
assign  w_644  =  w_p2_in_bounded_stencil_3_8 ;
assign  w_645  =  w_644 ;
assign  w_646  = 1'b0;
MULT_16b_pe mult_147 (
  .a(w_645),
  .b(w_646),
  .c(w_647),
  .clk(clk)
);
ADD_16b_pe add_148 (
  .a(w_643),
  .b(w_647),
  .c(w_648),
  .clk(clk)
);
assign  w_649  =  r75_w_p2_sum_xa12_0 ;
assign  w_650  =  w_p2_in_bounded_stencil_4_8 ;
assign  w_651  =  w_650 ;
assign  w_652  = 1'b0;
MULT_16b_pe mult_149 (
  .a(w_652),
  .b(w_651),
  .c(w_653),
  .clk(clk)
);
ADD_16b_pe add_150 (
  .a(w_649),
  .b(w_653),
  .c(w_654),
  .clk(clk)
);
assign  w_655  =  r76_w_p2_sum_xa12_0 ;
assign  w_656  =  w_p2_in_bounded_stencil_5_8 ;
assign  w_657  =  w_656 ;
assign  w_658  = 1'b0;
MULT_16b_pe mult_151 (
  .a(w_658),
  .b(w_657),
  .c(w_659),
  .clk(clk)
);
ADD_16b_pe add_152 (
  .a(w_659),
  .b(w_655),
  .c(w_660),
  .clk(clk)
);
assign  w_661  =  r77_w_p2_sum_xa12_0 ;
assign  w_662  =  w_p2_in_bounded_stencil_6_8 ;
assign  w_663  =  w_662 ;
assign  w_664  = 1'b0;
MULT_16b_pe mult_153 (
  .a(w_664),
  .b(w_663),
  .c(w_665),
  .clk(clk)
);
ADD_16b_pe add_154 (
  .a(w_665),
  .b(w_661),
  .c(w_666),
  .clk(clk)
);
assign  w_667  =  r78_w_p2_sum_xa12_0 ;
assign  w_668  =  w_p2_in_bounded_stencil_7_8 ;
assign  w_669  =  w_668 ;
assign  w_670  = 1'b0;
MULT_16b_pe mult_155 (
  .a(w_670),
  .b(w_669),
  .c(w_671),
  .clk(clk)
);
ADD_16b_pe add_156 (
  .a(w_667),
  .b(w_671),
  .c(w_672),
  .clk(clk)
);
assign  w_673  =  r79_w_p2_sum_xa12_0 ;
assign  w_674  =  w_p2_in_bounded_stencil_8_8 ;
assign  w_675  =  w_674 ;
ADD_16b_pe add_157 (
  .a(w_673),
  .b(w_675),
  .c(w_676),
  .clk(clk)
);
assign  w_677  =  r80_w_p2_sum_xa12_0 ;
LSHIFT_16b_pe lshift_158 (
  .a(1'b0),
  .b(w_677),
  .c(w_678),
  .clk(clk)
);
assign  w_679  =  w_678 ;
assign  w_hw_output_1_stencil_0_0  =  w_679 ;
assign  w_hw_output_1_stencil_packed  =  w_hw_output_1_stencil_0_0 ;
assign  w_p2_sum_xa12_0  = 1'b0;

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


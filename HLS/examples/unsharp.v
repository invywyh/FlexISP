// Source:  /home/tema8/projects/Halide-HLS/apps/hls_examples/unsharp_hls/hls_target.cpp 

module top(
//Inputs
  w_p2_in_bounded_stencil_stream_to_gray_1_0_0_0_8b,
  w_p2_in_bounded_stencil_stream_to_gray_1_1_0_0_8b,
  w_p2_in_bounded_stencil_stream_to_gray_1_2_0_0_8b,

  w_p2_in_bounded_stencil_stream_0_0_0_8b,
  w_p2_in_bounded_stencil_stream_1_0_0_8b,
  w_p2_in_bounded_stencil_stream_2_0_0_8b,

//Outputs
  w_hw_output_1_stencil_stream_0_0_0_8b,
  w_hw_output_1_stencil_stream_1_0_0_8b,
  w_hw_output_1_stencil_stream_2_0_0_8b,

  clk
);

//Inputs
input    w_p2_in_bounded_stencil_stream_to_gray_1_0_0_0_8b;
input    w_p2_in_bounded_stencil_stream_to_gray_1_1_0_0_8b;
input    w_p2_in_bounded_stencil_stream_to_gray_1_2_0_0_8b;

input    w_p2_in_bounded_stencil_stream_0_0_0_8b;
input    w_p2_in_bounded_stencil_stream_1_0_0_8b;
input    w_p2_in_bounded_stencil_stream_2_0_0_8b;

//Outputs
output   w_hw_output_1_stencil_stream_0_0_0_8b;
output   w_hw_output_1_stencil_stream_1_0_0_8b;
output   w_hw_output_1_stencil_stream_2_0_0_8b;

input   clk;

wire   w_ratio_1_stencil_stream_0_0_8b;

wire   w_gray_1_stencil_stream_0_0_8b;
wire   w_gray_1_stencil_stream_0_1_8b;
wire   w_gray_1_stencil_stream_0_2_8b;
wire   w_gray_1_stencil_stream_0_3_8b;
wire   w_gray_1_stencil_stream_0_4_8b;
wire   w_gray_1_stencil_stream_0_5_8b;
wire   w_gray_1_stencil_stream_0_6_8b;
wire   w_gray_1_stencil_stream_0_7_8b;
wire   w_gray_1_stencil_stream_0_8_8b;
wire   w_gray_1_stencil_stream_1_0_8b;
wire   w_gray_1_stencil_stream_1_1_8b;
wire   w_gray_1_stencil_stream_1_2_8b;
wire   w_gray_1_stencil_stream_1_3_8b;
wire   w_gray_1_stencil_stream_1_4_8b;
wire   w_gray_1_stencil_stream_1_5_8b;
wire   w_gray_1_stencil_stream_1_6_8b;
wire   w_gray_1_stencil_stream_1_7_8b;
wire   w_gray_1_stencil_stream_1_8_8b;
wire   w_gray_1_stencil_stream_2_0_8b;
wire   w_gray_1_stencil_stream_2_1_8b;
wire   w_gray_1_stencil_stream_2_2_8b;
wire   w_gray_1_stencil_stream_2_3_8b;
wire   w_gray_1_stencil_stream_2_4_8b;
wire   w_gray_1_stencil_stream_2_5_8b;
wire   w_gray_1_stencil_stream_2_6_8b;
wire   w_gray_1_stencil_stream_2_7_8b;
wire   w_gray_1_stencil_stream_2_8_8b;
wire   w_gray_1_stencil_stream_3_0_8b;
wire   w_gray_1_stencil_stream_3_1_8b;
wire   w_gray_1_stencil_stream_3_2_8b;
wire   w_gray_1_stencil_stream_3_3_8b;
wire   w_gray_1_stencil_stream_3_4_8b;
wire   w_gray_1_stencil_stream_3_5_8b;
wire   w_gray_1_stencil_stream_3_6_8b;
wire   w_gray_1_stencil_stream_3_7_8b;
wire   w_gray_1_stencil_stream_3_8_8b;
wire   w_gray_1_stencil_stream_4_0_8b;
wire   w_gray_1_stencil_stream_4_1_8b;
wire   w_gray_1_stencil_stream_4_2_8b;
wire   w_gray_1_stencil_stream_4_3_8b;
wire   w_gray_1_stencil_stream_4_4_8b;
wire   w_gray_1_stencil_stream_4_5_8b;
wire   w_gray_1_stencil_stream_4_6_8b;
wire   w_gray_1_stencil_stream_4_7_8b;
wire   w_gray_1_stencil_stream_4_8_8b;
wire   w_gray_1_stencil_stream_5_0_8b;
wire   w_gray_1_stencil_stream_5_1_8b;
wire   w_gray_1_stencil_stream_5_2_8b;
wire   w_gray_1_stencil_stream_5_3_8b;
wire   w_gray_1_stencil_stream_5_4_8b;
wire   w_gray_1_stencil_stream_5_5_8b;
wire   w_gray_1_stencil_stream_5_6_8b;
wire   w_gray_1_stencil_stream_5_7_8b;
wire   w_gray_1_stencil_stream_5_8_8b;
wire   w_gray_1_stencil_stream_6_0_8b;
wire   w_gray_1_stencil_stream_6_1_8b;
wire   w_gray_1_stencil_stream_6_2_8b;
wire   w_gray_1_stencil_stream_6_3_8b;
wire   w_gray_1_stencil_stream_6_4_8b;
wire   w_gray_1_stencil_stream_6_5_8b;
wire   w_gray_1_stencil_stream_6_6_8b;
wire   w_gray_1_stencil_stream_6_7_8b;
wire   w_gray_1_stencil_stream_6_8_8b;
wire   w_gray_1_stencil_stream_7_0_8b;
wire   w_gray_1_stencil_stream_7_1_8b;
wire   w_gray_1_stencil_stream_7_2_8b;
wire   w_gray_1_stencil_stream_7_3_8b;
wire   w_gray_1_stencil_stream_7_4_8b;
wire   w_gray_1_stencil_stream_7_5_8b;
wire   w_gray_1_stencil_stream_7_6_8b;
wire   w_gray_1_stencil_stream_7_7_8b;
wire   w_gray_1_stencil_stream_7_8_8b;
wire   w_gray_1_stencil_stream_8_0_8b;
wire   w_gray_1_stencil_stream_8_1_8b;
wire   w_gray_1_stencil_stream_8_2_8b;
wire   w_gray_1_stencil_stream_8_3_8b;
wire   w_gray_1_stencil_stream_8_4_8b;
wire   w_gray_1_stencil_stream_8_5_8b;
wire   w_gray_1_stencil_stream_8_6_8b;
wire   w_gray_1_stencil_stream_8_7_8b;
wire   w_gray_1_stencil_stream_8_8_8b;

wire   w_gray_1_stencil_update_stream_0_0_8b;

wire   gnd;
assign gnd=1'b0;

kernel__ratio_1_stencil_stream KERN__ratio_1_stencil_stream (
    .w_gray_1_stencil_0_0_8b(w_gray_1_stencil_stream_0_0_8b),
    .w_gray_1_stencil_0_1_8b(w_gray_1_stencil_stream_0_1_8b),
    .w_gray_1_stencil_0_2_8b(w_gray_1_stencil_stream_0_2_8b),
    .w_gray_1_stencil_0_3_8b(w_gray_1_stencil_stream_0_3_8b),
    .w_gray_1_stencil_0_4_8b(w_gray_1_stencil_stream_0_4_8b),
    .w_gray_1_stencil_0_5_8b(w_gray_1_stencil_stream_0_5_8b),
    .w_gray_1_stencil_0_6_8b(w_gray_1_stencil_stream_0_6_8b),
    .w_gray_1_stencil_0_7_8b(w_gray_1_stencil_stream_0_7_8b),
    .w_gray_1_stencil_0_8_8b(w_gray_1_stencil_stream_0_8_8b),
    .w_gray_1_stencil_1_0_8b(w_gray_1_stencil_stream_1_0_8b),
    .w_gray_1_stencil_1_1_8b(w_gray_1_stencil_stream_1_1_8b),
    .w_gray_1_stencil_1_2_8b(w_gray_1_stencil_stream_1_2_8b),
    .w_gray_1_stencil_1_3_8b(w_gray_1_stencil_stream_1_3_8b),
    .w_gray_1_stencil_1_4_8b(w_gray_1_stencil_stream_1_4_8b),
    .w_gray_1_stencil_1_5_8b(w_gray_1_stencil_stream_1_5_8b),
    .w_gray_1_stencil_1_6_8b(w_gray_1_stencil_stream_1_6_8b),
    .w_gray_1_stencil_1_7_8b(w_gray_1_stencil_stream_1_7_8b),
    .w_gray_1_stencil_1_8_8b(w_gray_1_stencil_stream_1_8_8b),
    .w_gray_1_stencil_2_0_8b(w_gray_1_stencil_stream_2_0_8b),
    .w_gray_1_stencil_2_1_8b(w_gray_1_stencil_stream_2_1_8b),
    .w_gray_1_stencil_2_2_8b(w_gray_1_stencil_stream_2_2_8b),
    .w_gray_1_stencil_2_3_8b(w_gray_1_stencil_stream_2_3_8b),
    .w_gray_1_stencil_2_4_8b(w_gray_1_stencil_stream_2_4_8b),
    .w_gray_1_stencil_2_5_8b(w_gray_1_stencil_stream_2_5_8b),
    .w_gray_1_stencil_2_6_8b(w_gray_1_stencil_stream_2_6_8b),
    .w_gray_1_stencil_2_7_8b(w_gray_1_stencil_stream_2_7_8b),
    .w_gray_1_stencil_2_8_8b(w_gray_1_stencil_stream_2_8_8b),
    .w_gray_1_stencil_3_0_8b(w_gray_1_stencil_stream_3_0_8b),
    .w_gray_1_stencil_3_1_8b(w_gray_1_stencil_stream_3_1_8b),
    .w_gray_1_stencil_3_2_8b(w_gray_1_stencil_stream_3_2_8b),
    .w_gray_1_stencil_3_3_8b(w_gray_1_stencil_stream_3_3_8b),
    .w_gray_1_stencil_3_4_8b(w_gray_1_stencil_stream_3_4_8b),
    .w_gray_1_stencil_3_5_8b(w_gray_1_stencil_stream_3_5_8b),
    .w_gray_1_stencil_3_6_8b(w_gray_1_stencil_stream_3_6_8b),
    .w_gray_1_stencil_3_7_8b(w_gray_1_stencil_stream_3_7_8b),
    .w_gray_1_stencil_3_8_8b(w_gray_1_stencil_stream_3_8_8b),
    .w_gray_1_stencil_4_0_8b(w_gray_1_stencil_stream_4_0_8b),
    .w_gray_1_stencil_4_1_8b(w_gray_1_stencil_stream_4_1_8b),
    .w_gray_1_stencil_4_2_8b(w_gray_1_stencil_stream_4_2_8b),
    .w_gray_1_stencil_4_3_8b(w_gray_1_stencil_stream_4_3_8b),
    .w_gray_1_stencil_4_4_8b(w_gray_1_stencil_stream_4_4_8b),
    .w_gray_1_stencil_4_5_8b(w_gray_1_stencil_stream_4_5_8b),
    .w_gray_1_stencil_4_6_8b(w_gray_1_stencil_stream_4_6_8b),
    .w_gray_1_stencil_4_7_8b(w_gray_1_stencil_stream_4_7_8b),
    .w_gray_1_stencil_4_8_8b(w_gray_1_stencil_stream_4_8_8b),
    .w_gray_1_stencil_5_0_8b(w_gray_1_stencil_stream_5_0_8b),
    .w_gray_1_stencil_5_1_8b(w_gray_1_stencil_stream_5_1_8b),
    .w_gray_1_stencil_5_2_8b(w_gray_1_stencil_stream_5_2_8b),
    .w_gray_1_stencil_5_3_8b(w_gray_1_stencil_stream_5_3_8b),
    .w_gray_1_stencil_5_4_8b(w_gray_1_stencil_stream_5_4_8b),
    .w_gray_1_stencil_5_5_8b(w_gray_1_stencil_stream_5_5_8b),
    .w_gray_1_stencil_5_6_8b(w_gray_1_stencil_stream_5_6_8b),
    .w_gray_1_stencil_5_7_8b(w_gray_1_stencil_stream_5_7_8b),
    .w_gray_1_stencil_5_8_8b(w_gray_1_stencil_stream_5_8_8b),
    .w_gray_1_stencil_6_0_8b(w_gray_1_stencil_stream_6_0_8b),
    .w_gray_1_stencil_6_1_8b(w_gray_1_stencil_stream_6_1_8b),
    .w_gray_1_stencil_6_2_8b(w_gray_1_stencil_stream_6_2_8b),
    .w_gray_1_stencil_6_3_8b(w_gray_1_stencil_stream_6_3_8b),
    .w_gray_1_stencil_6_4_8b(w_gray_1_stencil_stream_6_4_8b),
    .w_gray_1_stencil_6_5_8b(w_gray_1_stencil_stream_6_5_8b),
    .w_gray_1_stencil_6_6_8b(w_gray_1_stencil_stream_6_6_8b),
    .w_gray_1_stencil_6_7_8b(w_gray_1_stencil_stream_6_7_8b),
    .w_gray_1_stencil_6_8_8b(w_gray_1_stencil_stream_6_8_8b),
    .w_gray_1_stencil_7_0_8b(w_gray_1_stencil_stream_7_0_8b),
    .w_gray_1_stencil_7_1_8b(w_gray_1_stencil_stream_7_1_8b),
    .w_gray_1_stencil_7_2_8b(w_gray_1_stencil_stream_7_2_8b),
    .w_gray_1_stencil_7_3_8b(w_gray_1_stencil_stream_7_3_8b),
    .w_gray_1_stencil_7_4_8b(w_gray_1_stencil_stream_7_4_8b),
    .w_gray_1_stencil_7_5_8b(w_gray_1_stencil_stream_7_5_8b),
    .w_gray_1_stencil_7_6_8b(w_gray_1_stencil_stream_7_6_8b),
    .w_gray_1_stencil_7_7_8b(w_gray_1_stencil_stream_7_7_8b),
    .w_gray_1_stencil_7_8_8b(w_gray_1_stencil_stream_7_8_8b),
    .w_gray_1_stencil_8_0_8b(w_gray_1_stencil_stream_8_0_8b),
    .w_gray_1_stencil_8_1_8b(w_gray_1_stencil_stream_8_1_8b),
    .w_gray_1_stencil_8_2_8b(w_gray_1_stencil_stream_8_2_8b),
    .w_gray_1_stencil_8_3_8b(w_gray_1_stencil_stream_8_3_8b),
    .w_gray_1_stencil_8_4_8b(w_gray_1_stencil_stream_8_4_8b),
    .w_gray_1_stencil_8_5_8b(w_gray_1_stencil_stream_8_5_8b),
    .w_gray_1_stencil_8_6_8b(w_gray_1_stencil_stream_8_6_8b),
    .w_gray_1_stencil_8_7_8b(w_gray_1_stencil_stream_8_7_8b),
    .w_gray_1_stencil_8_8_8b(w_gray_1_stencil_stream_8_8_8b),

    .out_w_ratio_1_stencil_0_0_8b(w_ratio_1_stencil_stream_0_0_8b),

    .clk(clk)
);

LB_9_9_1_8bit_False LB__gray_1_stencil_stream (
    .clk(clk),

    .in0(w_gray_1_stencil_update_stream_0_0_8b),

    .out0(w_gray_1_stencil_stream_0_0_8b),
    .out1(w_gray_1_stencil_stream_0_1_8b),
    .out2(w_gray_1_stencil_stream_0_2_8b),
    .out3(w_gray_1_stencil_stream_0_3_8b),
    .out4(w_gray_1_stencil_stream_0_4_8b),
    .out5(w_gray_1_stencil_stream_0_5_8b),
    .out6(w_gray_1_stencil_stream_0_6_8b),
    .out7(w_gray_1_stencil_stream_0_7_8b),
    .out8(w_gray_1_stencil_stream_0_8_8b),
    .out9(w_gray_1_stencil_stream_1_0_8b),
    .out10(w_gray_1_stencil_stream_1_1_8b),
    .out11(w_gray_1_stencil_stream_1_2_8b),
    .out12(w_gray_1_stencil_stream_1_3_8b),
    .out13(w_gray_1_stencil_stream_1_4_8b),
    .out14(w_gray_1_stencil_stream_1_5_8b),
    .out15(w_gray_1_stencil_stream_1_6_8b),
    .out16(w_gray_1_stencil_stream_1_7_8b),
    .out17(w_gray_1_stencil_stream_1_8_8b),
    .out18(w_gray_1_stencil_stream_2_0_8b),
    .out19(w_gray_1_stencil_stream_2_1_8b),
    .out20(w_gray_1_stencil_stream_2_2_8b),
    .out21(w_gray_1_stencil_stream_2_3_8b),
    .out22(w_gray_1_stencil_stream_2_4_8b),
    .out23(w_gray_1_stencil_stream_2_5_8b),
    .out24(w_gray_1_stencil_stream_2_6_8b),
    .out25(w_gray_1_stencil_stream_2_7_8b),
    .out26(w_gray_1_stencil_stream_2_8_8b),
    .out27(w_gray_1_stencil_stream_3_0_8b),
    .out28(w_gray_1_stencil_stream_3_1_8b),
    .out29(w_gray_1_stencil_stream_3_2_8b),
    .out30(w_gray_1_stencil_stream_3_3_8b),
    .out31(w_gray_1_stencil_stream_3_4_8b),
    .out32(w_gray_1_stencil_stream_3_5_8b),
    .out33(w_gray_1_stencil_stream_3_6_8b),
    .out34(w_gray_1_stencil_stream_3_7_8b),
    .out35(w_gray_1_stencil_stream_3_8_8b),
    .out36(w_gray_1_stencil_stream_4_0_8b),
    .out37(w_gray_1_stencil_stream_4_1_8b),
    .out38(w_gray_1_stencil_stream_4_2_8b),
    .out39(w_gray_1_stencil_stream_4_3_8b),
    .out40(w_gray_1_stencil_stream_4_4_8b),
    .out41(w_gray_1_stencil_stream_4_5_8b),
    .out42(w_gray_1_stencil_stream_4_6_8b),
    .out43(w_gray_1_stencil_stream_4_7_8b),
    .out44(w_gray_1_stencil_stream_4_8_8b),
    .out45(w_gray_1_stencil_stream_5_0_8b),
    .out46(w_gray_1_stencil_stream_5_1_8b),
    .out47(w_gray_1_stencil_stream_5_2_8b),
    .out48(w_gray_1_stencil_stream_5_3_8b),
    .out49(w_gray_1_stencil_stream_5_4_8b),
    .out50(w_gray_1_stencil_stream_5_5_8b),
    .out51(w_gray_1_stencil_stream_5_6_8b),
    .out52(w_gray_1_stencil_stream_5_7_8b),
    .out53(w_gray_1_stencil_stream_5_8_8b),
    .out54(w_gray_1_stencil_stream_6_0_8b),
    .out55(w_gray_1_stencil_stream_6_1_8b),
    .out56(w_gray_1_stencil_stream_6_2_8b),
    .out57(w_gray_1_stencil_stream_6_3_8b),
    .out58(w_gray_1_stencil_stream_6_4_8b),
    .out59(w_gray_1_stencil_stream_6_5_8b),
    .out60(w_gray_1_stencil_stream_6_6_8b),
    .out61(w_gray_1_stencil_stream_6_7_8b),
    .out62(w_gray_1_stencil_stream_6_8_8b),
    .out63(w_gray_1_stencil_stream_7_0_8b),
    .out64(w_gray_1_stencil_stream_7_1_8b),
    .out65(w_gray_1_stencil_stream_7_2_8b),
    .out66(w_gray_1_stencil_stream_7_3_8b),
    .out67(w_gray_1_stencil_stream_7_4_8b),
    .out68(w_gray_1_stencil_stream_7_5_8b),
    .out69(w_gray_1_stencil_stream_7_6_8b),
    .out70(w_gray_1_stencil_stream_7_7_8b),
    .out71(w_gray_1_stencil_stream_7_8_8b),
    .out72(w_gray_1_stencil_stream_8_0_8b),
    .out73(w_gray_1_stencil_stream_8_1_8b),
    .out74(w_gray_1_stencil_stream_8_2_8b),
    .out75(w_gray_1_stencil_stream_8_3_8b),
    .out76(w_gray_1_stencil_stream_8_4_8b),
    .out77(w_gray_1_stencil_stream_8_5_8b),
    .out78(w_gray_1_stencil_stream_8_6_8b),
    .out79(w_gray_1_stencil_stream_8_7_8b),
    .out80(w_gray_1_stencil_stream_8_8_8b)
);

kernel__gray_1_stencil_update_stream KERN__gray_1_stencil_update_stream (
    .w_p2_in_bounded_stencil_0_0_0_8b(w_p2_in_bounded_stencil_stream_to_gray_1_0_0_0_8b),
    .w_p2_in_bounded_stencil_1_0_0_8b(w_p2_in_bounded_stencil_stream_to_gray_1_1_0_0_8b),
    .w_p2_in_bounded_stencil_2_0_0_8b(w_p2_in_bounded_stencil_stream_to_gray_1_2_0_0_8b),

    .out_w_gray_1_stencil_0_0_8b(w_gray_1_stencil_update_stream_0_0_8b),

    .clk(clk)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_p2_in_bounded_stencil_0_0_0_8b(w_ratio_1_stencil_stream_0_0_8b),
    .w_p2_in_bounded_stencil_1_0_0_8b(w_p2_in_bounded_stencil_stream_0_0_0_8b),
    .w_p2_in_bounded_stencil_2_0_0_8b(w_p2_in_bounded_stencil_stream_1_0_0_8b),
    .w_ratio_1_stencil_0_0_8b(w_p2_in_bounded_stencil_stream_2_0_0_8b),

    .out_w_hw_output_1_stencil_1_0_0_8b(w_hw_output_1_stencil_stream_0_0_0_8b),
    .out_w_hw_output_1_stencil_2_0_0_8b(w_hw_output_1_stencil_stream_1_0_0_8b),
    .out_w_hw_output_1_stencil_packed_16b(w_hw_output_1_stencil_stream_2_0_0_8b),

    .clk(clk)
);

endmodule



module kernel__gray_1_stencil_update_stream(
//Inputs
  w_p2_in_bounded_stencil_0_0_0_8b,
  w_p2_in_bounded_stencil_1_0_0_8b,
  w_p2_in_bounded_stencil_2_0_0_8b,
//Outputs
  out_w_gray_1_stencil_0_0_8b,

  clk
);

//Inputs
input  w_p2_in_bounded_stencil_1_0_0_8b;
input  w_p2_in_bounded_stencil_0_0_0_8b;
input  w_p2_in_bounded_stencil_2_0_0_8b;
//Outputs
output  out_w_gray_1_stencil_0_0_8b;

input  clk;


wire  w_267_16b;
wire  w_268_16b;
wire  w_269_16b;
wire  w_270_16b;
wire  w_271_16b;
wire  w_272_16b;
wire  w_273_16b;
wire  w_274_16b;
wire  w_275_16b;
wire  w_276_16b;
wire  w_277_16b;
wire  w_278_16b;
wire  w_279_16b;
wire  w_280_16b;
wire  w_281_16b;
wire  w_282_16b;
wire  w_gray_1_stencil_0_0_8b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_gray_1_stencil_0_0_8b = w_gray_1_stencil_0_0_8b;
assign  w_267_16b  =  w_p2_in_bounded_stencil_0_0_0_8b ;
assign  w_268_16b  =  w_267_16b ;
assign  w_269_16b  = 1'b0;
MULT_16b_pe mult_0 (
  .a(w_269_16b),
  .b(w_268_16b),
  .c(w_270_16b),
  .clk(clk)
);
assign  w_271_16b  =  w_p2_in_bounded_stencil_1_0_0_8b ;
assign  w_272_16b  =  w_271_16b ;
assign  w_273_16b  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_272_16b),
  .b(w_273_16b),
  .c(w_274_16b),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_274_16b),
  .b(w_270_16b),
  .c(w_275_16b),
  .clk(clk)
);
assign  w_276_16b  =  w_p2_in_bounded_stencil_2_0_0_8b ;
assign  w_277_16b  =  w_276_16b ;
assign  w_278_16b  = 1'b0;
MULT_16b_pe mult_3 (
  .a(w_277_16b),
  .b(w_278_16b),
  .c(w_279_16b),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_275_16b),
  .b(w_279_16b),
  .c(w_280_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_5 (
  .a(w_280_16b),
  .b(1'b0),
  .c(w_281_16b),
  .clk(clk)
);
assign  w_282_16b  =  w_281_16b ;
assign  w_gray_1_stencil_0_0_8b  =  w_282_16b ;

endmodule







module kernel__ratio_1_stencil_stream(
//Inputs
  w_gray_1_stencil_0_0_8b,
  w_gray_1_stencil_0_1_8b,
  w_gray_1_stencil_0_2_8b,
  w_gray_1_stencil_0_3_8b,
  w_gray_1_stencil_0_4_8b,
  w_gray_1_stencil_0_5_8b,
  w_gray_1_stencil_0_6_8b,
  w_gray_1_stencil_0_7_8b,
  w_gray_1_stencil_0_8_8b,
  w_gray_1_stencil_1_0_8b,
  w_gray_1_stencil_1_1_8b,
  w_gray_1_stencil_1_2_8b,
  w_gray_1_stencil_1_3_8b,
  w_gray_1_stencil_1_4_8b,
  w_gray_1_stencil_1_5_8b,
  w_gray_1_stencil_1_6_8b,
  w_gray_1_stencil_1_7_8b,
  w_gray_1_stencil_1_8_8b,
  w_gray_1_stencil_2_0_8b,
  w_gray_1_stencil_2_1_8b,
  w_gray_1_stencil_2_2_8b,
  w_gray_1_stencil_2_3_8b,
  w_gray_1_stencil_2_4_8b,
  w_gray_1_stencil_2_5_8b,
  w_gray_1_stencil_2_6_8b,
  w_gray_1_stencil_2_7_8b,
  w_gray_1_stencil_2_8_8b,
  w_gray_1_stencil_3_0_8b,
  w_gray_1_stencil_3_1_8b,
  w_gray_1_stencil_3_2_8b,
  w_gray_1_stencil_3_3_8b,
  w_gray_1_stencil_3_4_8b,
  w_gray_1_stencil_3_5_8b,
  w_gray_1_stencil_3_6_8b,
  w_gray_1_stencil_3_7_8b,
  w_gray_1_stencil_3_8_8b,
  w_gray_1_stencil_4_0_8b,
  w_gray_1_stencil_4_1_8b,
  w_gray_1_stencil_4_2_8b,
  w_gray_1_stencil_4_3_8b,
  w_gray_1_stencil_4_4_8b,
  w_gray_1_stencil_4_5_8b,
  w_gray_1_stencil_4_6_8b,
  w_gray_1_stencil_4_7_8b,
  w_gray_1_stencil_4_8_8b,
  w_gray_1_stencil_5_0_8b,
  w_gray_1_stencil_5_1_8b,
  w_gray_1_stencil_5_2_8b,
  w_gray_1_stencil_5_3_8b,
  w_gray_1_stencil_5_4_8b,
  w_gray_1_stencil_5_5_8b,
  w_gray_1_stencil_5_6_8b,
  w_gray_1_stencil_5_7_8b,
  w_gray_1_stencil_5_8_8b,
  w_gray_1_stencil_6_0_8b,
  w_gray_1_stencil_6_1_8b,
  w_gray_1_stencil_6_2_8b,
  w_gray_1_stencil_6_3_8b,
  w_gray_1_stencil_6_4_8b,
  w_gray_1_stencil_6_5_8b,
  w_gray_1_stencil_6_6_8b,
  w_gray_1_stencil_6_7_8b,
  w_gray_1_stencil_6_8_8b,
  w_gray_1_stencil_7_0_8b,
  w_gray_1_stencil_7_1_8b,
  w_gray_1_stencil_7_2_8b,
  w_gray_1_stencil_7_3_8b,
  w_gray_1_stencil_7_4_8b,
  w_gray_1_stencil_7_5_8b,
  w_gray_1_stencil_7_6_8b,
  w_gray_1_stencil_7_7_8b,
  w_gray_1_stencil_7_8_8b,
  w_gray_1_stencil_8_0_8b,
  w_gray_1_stencil_8_1_8b,
  w_gray_1_stencil_8_2_8b,
  w_gray_1_stencil_8_3_8b,
  w_gray_1_stencil_8_4_8b,
  w_gray_1_stencil_8_5_8b,
  w_gray_1_stencil_8_6_8b,
  w_gray_1_stencil_8_7_8b,
  w_gray_1_stencil_8_8_8b,
//Outputs
  out_w_ratio_1_stencil_0_0_8b,

  clk
);

//Inputs
input  w_gray_1_stencil_3_5_8b;
input  w_gray_1_stencil_3_4_8b;
input  w_gray_1_stencil_3_7_8b;
input  w_gray_1_stencil_3_6_8b;
input  w_gray_1_stencil_3_1_8b;
input  w_gray_1_stencil_3_0_8b;
input  w_gray_1_stencil_3_3_8b;
input  w_gray_1_stencil_3_2_8b;
input  w_gray_1_stencil_4_6_8b;
input  w_gray_1_stencil_4_7_8b;
input  w_gray_1_stencil_4_4_8b;
input  w_gray_1_stencil_4_5_8b;
input  w_gray_1_stencil_4_2_8b;
input  w_gray_1_stencil_3_8_8b;
input  w_gray_1_stencil_4_0_8b;
input  w_gray_1_stencil_4_1_8b;
input  w_gray_1_stencil_5_7_8b;
input  w_gray_1_stencil_5_6_8b;
input  w_gray_1_stencil_5_5_8b;
input  w_gray_1_stencil_5_4_8b;
input  w_gray_1_stencil_5_3_8b;
input  w_gray_1_stencil_5_2_8b;
input  w_gray_1_stencil_5_1_8b;
input  w_gray_1_stencil_5_0_8b;
input  w_gray_1_stencil_6_0_8b;
input  w_gray_1_stencil_6_1_8b;
input  w_gray_1_stencil_6_2_8b;
input  w_gray_1_stencil_6_3_8b;
input  w_gray_1_stencil_6_4_8b;
input  w_gray_1_stencil_6_5_8b;
input  w_gray_1_stencil_6_6_8b;
input  w_gray_1_stencil_5_8_8b;
input  w_gray_1_stencil_0_2_8b;
input  w_gray_1_stencil_0_3_8b;
input  w_gray_1_stencil_0_0_8b;
input  w_gray_1_stencil_1_8_8b;
input  w_gray_1_stencil_0_6_8b;
input  w_gray_1_stencil_4_8_8b;
input  w_gray_1_stencil_0_4_8b;
input  w_gray_1_stencil_0_5_8b;
input  w_gray_1_stencil_1_3_8b;
input  w_gray_1_stencil_1_2_8b;
input  w_gray_1_stencil_1_1_8b;
input  w_gray_1_stencil_1_0_8b;
input  w_gray_1_stencil_1_7_8b;
input  w_gray_1_stencil_1_6_8b;
input  w_gray_1_stencil_1_5_8b;
input  w_gray_1_stencil_1_4_8b;
input  w_gray_1_stencil_6_8_8b;
input  w_gray_1_stencil_2_8_8b;
input  w_gray_1_stencil_2_4_8b;
input  w_gray_1_stencil_2_5_8b;
input  w_gray_1_stencil_2_6_8b;
input  w_gray_1_stencil_6_7_8b;
input  w_gray_1_stencil_2_0_8b;
input  w_gray_1_stencil_2_7_8b;
input  w_gray_1_stencil_2_2_8b;
input  w_gray_1_stencil_2_3_8b;
input  w_gray_1_stencil_8_8_8b;
input  w_gray_1_stencil_4_3_8b;
input  w_gray_1_stencil_0_1_8b;
input  w_gray_1_stencil_8_5_8b;
input  w_gray_1_stencil_0_7_8b;
input  w_gray_1_stencil_7_1_8b;
input  w_gray_1_stencil_7_0_8b;
input  w_gray_1_stencil_7_3_8b;
input  w_gray_1_stencil_7_2_8b;
input  w_gray_1_stencil_7_5_8b;
input  w_gray_1_stencil_7_4_8b;
input  w_gray_1_stencil_7_7_8b;
input  w_gray_1_stencil_7_6_8b;
input  w_gray_1_stencil_8_2_8b;
input  w_gray_1_stencil_7_8_8b;
input  w_gray_1_stencil_8_0_8b;
input  w_gray_1_stencil_8_1_8b;
input  w_gray_1_stencil_8_6_8b;
input  w_gray_1_stencil_8_7_8b;
input  w_gray_1_stencil_8_4_8b;
input  w_gray_1_stencil_2_1_8b;
input  w_gray_1_stencil_8_3_8b;
input  w_gray_1_stencil_0_8_8b;
//Outputs
output  out_w_ratio_1_stencil_0_0_8b;

input  clk;


wire  r0_w_p2_sum_xa24_0_16b;
wire  r10_w_p2_sum_xa24_0_16b;
wire  r11_w_p2_sum_xa24_0_16b;
wire  r12_w_p2_sum_xa24_0_16b;
wire  r13_w_p2_sum_xa24_0_16b;
wire  r14_w_p2_sum_xa24_0_16b;
wire  r15_w_p2_sum_xa24_0_16b;
wire  r16_w_p2_sum_xa24_0_16b;
wire  r17_w_p2_sum_xa24_0_16b;
wire  r18_w_p2_sum_xa24_0_16b;
wire  r19_w_p2_sum_xa24_0_16b;
wire  r1_w_p2_sum_xa24_0_16b;
wire  r20_w_p2_sum_xa24_0_16b;
wire  r21_w_p2_sum_xa24_0_16b;
wire  r22_w_p2_sum_xa24_0_16b;
wire  r23_w_p2_sum_xa24_0_16b;
wire  r24_w_p2_sum_xa24_0_16b;
wire  r25_w_p2_sum_xa24_0_16b;
wire  r26_w_p2_sum_xa24_0_16b;
wire  r27_w_p2_sum_xa24_0_16b;
wire  r28_w_p2_sum_xa24_0_16b;
wire  r29_w_p2_sum_xa24_0_16b;
wire  r2_w_p2_sum_xa24_0_16b;
wire  r30_w_p2_sum_xa24_0_16b;
wire  r31_w_p2_sum_xa24_0_16b;
wire  r32_w_p2_sum_xa24_0_16b;
wire  r33_w_p2_sum_xa24_0_16b;
wire  r34_w_p2_sum_xa24_0_16b;
wire  r35_w_p2_sum_xa24_0_16b;
wire  r36_w_p2_sum_xa24_0_16b;
wire  r37_w_p2_sum_xa24_0_16b;
wire  r38_w_p2_sum_xa24_0_16b;
wire  r39_w_p2_sum_xa24_0_16b;
wire  r3_w_p2_sum_xa24_0_16b;
wire  r40_w_p2_sum_xa24_0_16b;
wire  r41_w_p2_sum_xa24_0_16b;
wire  r42_w_p2_sum_xa24_0_16b;
wire  r43_w_p2_sum_xa24_0_16b;
wire  r44_w_p2_sum_xa24_0_16b;
wire  r45_w_p2_sum_xa24_0_16b;
wire  r46_w_p2_sum_xa24_0_16b;
wire  r47_w_p2_sum_xa24_0_16b;
wire  r48_w_p2_sum_xa24_0_16b;
wire  r49_w_p2_sum_xa24_0_16b;
wire  r4_w_p2_sum_xa24_0_16b;
wire  r50_w_p2_sum_xa24_0_16b;
wire  r51_w_p2_sum_xa24_0_16b;
wire  r52_w_p2_sum_xa24_0_16b;
wire  r53_w_p2_sum_xa24_0_16b;
wire  r54_w_p2_sum_xa24_0_16b;
wire  r55_w_p2_sum_xa24_0_16b;
wire  r56_w_p2_sum_xa24_0_16b;
wire  r57_w_p2_sum_xa24_0_16b;
wire  r58_w_p2_sum_xa24_0_16b;
wire  r59_w_p2_sum_xa24_0_16b;
wire  r5_w_p2_sum_xa24_0_16b;
wire  r60_w_p2_sum_xa24_0_16b;
wire  r61_w_p2_sum_xa24_0_16b;
wire  r62_w_p2_sum_xa24_0_16b;
wire  r63_w_p2_sum_xa24_0_16b;
wire  r64_w_p2_sum_xa24_0_16b;
wire  r65_w_p2_sum_xa24_0_16b;
wire  r66_w_p2_sum_xa24_0_16b;
wire  r67_w_p2_sum_xa24_0_16b;
wire  r68_w_p2_sum_xa24_0_16b;
wire  r69_w_p2_sum_xa24_0_16b;
wire  r6_w_p2_sum_xa24_0_16b;
wire  r70_w_p2_sum_xa24_0_16b;
wire  r71_w_p2_sum_xa24_0_16b;
wire  r72_w_p2_sum_xa24_0_16b;
wire  r73_w_p2_sum_xa24_0_16b;
wire  r74_w_p2_sum_xa24_0_16b;
wire  r75_w_p2_sum_xa24_0_16b;
wire  r76_w_p2_sum_xa24_0_16b;
wire  r77_w_p2_sum_xa24_0_16b;
wire  r78_w_p2_sum_xa24_0_16b;
wire  r79_w_p2_sum_xa24_0_16b;
wire  r7_w_p2_sum_xa24_0_16b;
wire  r80_w_p2_sum_xa24_0_16b;
wire  r8_w_p2_sum_xa24_0_16b;
wire  r9_w_p2_sum_xa24_0_16b;
wire  w_283_16b;
wire  w_284_16b;
wire  w_285_16b;
wire  w_286_16b;
wire  w_287_16b;
wire  w_288_16b;
wire  w_289_16b;
wire  w_290_16b;
wire  w_291_16b;
wire  w_292_16b;
wire  w_293_16b;
wire  w_294_16b;
wire  w_295_16b;
wire  w_296_16b;
wire  w_297_16b;
wire  w_298_16b;
wire  w_299_16b;
wire  w_300_16b;
wire  w_301_16b;
wire  w_302_16b;
wire  w_303_16b;
wire  w_304_16b;
wire  w_305_16b;
wire  w_306_16b;
wire  w_307_16b;
wire  w_308_16b;
wire  w_309_16b;
wire  w_310_16b;
wire  w_311_16b;
wire  w_312_16b;
wire  w_313_16b;
wire  w_314_16b;
wire  w_315_16b;
wire  w_316_16b;
wire  w_317_16b;
wire  w_318_16b;
wire  w_319_16b;
wire  w_320_16b;
wire  w_321_16b;
wire  w_322_16b;
wire  w_323_16b;
wire  w_324_16b;
wire  w_325_16b;
wire  w_326_16b;
wire  w_327_16b;
wire  w_328_16b;
wire  w_329_16b;
wire  w_330_16b;
wire  w_331_16b;
wire  w_332_16b;
wire  w_333_16b;
wire  w_334_16b;
wire  w_335_16b;
wire  w_336_16b;
wire  w_337_16b;
wire  w_338_16b;
wire  w_339_16b;
wire  w_340_16b;
wire  w_341_16b;
wire  w_342_16b;
wire  w_343_16b;
wire  w_344_16b;
wire  w_345_16b;
wire  w_346_16b;
wire  w_347_16b;
wire  w_348_16b;
wire  w_349_16b;
wire  w_350_16b;
wire  w_351_16b;
wire  w_352_16b;
wire  w_353_16b;
wire  w_354_16b;
wire  w_355_16b;
wire  w_356_16b;
wire  w_357_16b;
wire  w_358_16b;
wire  w_359_16b;
wire  w_360_16b;
wire  w_361_16b;
wire  w_362_16b;
wire  w_363_16b;
wire  w_364_16b;
wire  w_365_16b;
wire  w_366_16b;
wire  w_367_16b;
wire  w_368_16b;
wire  w_369_16b;
wire  w_370_16b;
wire  w_371_16b;
wire  w_372_16b;
wire  w_373_16b;
wire  w_374_16b;
wire  w_375_16b;
wire  w_376_16b;
wire  w_377_16b;
wire  w_378_16b;
wire  w_379_16b;
wire  w_380_16b;
wire  w_381_16b;
wire  w_382_16b;
wire  w_383_16b;
wire  w_384_16b;
wire  w_385_16b;
wire  w_386_16b;
wire  w_387_16b;
wire  w_388_16b;
wire  w_389_16b;
wire  w_390_16b;
wire  w_391_16b;
wire  w_392_16b;
wire  w_393_16b;
wire  w_394_16b;
wire  w_395_16b;
wire  w_396_16b;
wire  w_397_16b;
wire  w_398_16b;
wire  w_399_16b;
wire  w_400_16b;
wire  w_401_16b;
wire  w_402_16b;
wire  w_403_16b;
wire  w_404_16b;
wire  w_405_16b;
wire  w_406_16b;
wire  w_407_16b;
wire  w_408_16b;
wire  w_409_16b;
wire  w_410_16b;
wire  w_411_16b;
wire  w_412_16b;
wire  w_413_16b;
wire  w_414_16b;
wire  w_415_16b;
wire  w_416_16b;
wire  w_417_16b;
wire  w_418_16b;
wire  w_419_16b;
wire  w_420_16b;
wire  w_421_16b;
wire  w_422_16b;
wire  w_423_16b;
wire  w_424_16b;
wire  w_425_16b;
wire  w_426_16b;
wire  w_427_16b;
wire  w_428_16b;
wire  w_429_16b;
wire  w_430_16b;
wire  w_431_16b;
wire  w_432_16b;
wire  w_433_16b;
wire  w_434_16b;
wire  w_435_16b;
wire  w_436_16b;
wire  w_437_16b;
wire  w_438_16b;
wire  w_439_16b;
wire  w_440_16b;
wire  w_441_16b;
wire  w_442_16b;
wire  w_443_16b;
wire  w_444_16b;
wire  w_445_16b;
wire  w_446_16b;
wire  w_447_16b;
wire  w_448_16b;
wire  w_449_16b;
wire  w_450_16b;
wire  w_451_16b;
wire  w_452_16b;
wire  w_453_16b;
wire  w_454_16b;
wire  w_455_16b;
wire  w_456_16b;
wire  w_457_16b;
wire  w_458_16b;
wire  w_459_16b;
wire  w_460_16b;
wire  w_461_16b;
wire  w_462_16b;
wire  w_463_16b;
wire  w_464_16b;
wire  w_465_16b;
wire  w_466_16b;
wire  w_467_16b;
wire  w_468_16b;
wire  w_469_16b;
wire  w_470_16b;
wire  w_471_16b;
wire  w_472_16b;
wire  w_473_16b;
wire  w_474_16b;
wire  w_475_16b;
wire  w_476_16b;
wire  w_477_16b;
wire  w_478_16b;
wire  w_479_16b;
wire  w_480_16b;
wire  w_481_16b;
wire  w_482_16b;
wire  w_483_16b;
wire  w_484_16b;
wire  w_485_16b;
wire  w_486_16b;
wire  w_487_16b;
wire  w_488_16b;
wire  w_489_16b;
wire  w_490_16b;
wire  w_491_16b;
wire  w_492_16b;
wire  w_493_16b;
wire  w_494_16b;
wire  w_495_16b;
wire  w_496_16b;
wire  w_497_16b;
wire  w_498_16b;
wire  w_499_16b;
wire  w_500_16b;
wire  w_501_16b;
wire  w_502_16b;
wire  w_503_16b;
wire  w_504_16b;
wire  w_505_16b;
wire  w_506_16b;
wire  w_507_16b;
wire  w_508_16b;
wire  w_509_16b;
wire  w_510_16b;
wire  w_511_16b;
wire  w_512_16b;
wire  w_513_16b;
wire  w_514_16b;
wire  w_515_16b;
wire  w_516_16b;
wire  w_517_16b;
wire  w_518_16b;
wire  w_519_16b;
wire  w_520_16b;
wire  w_521_16b;
wire  w_522_16b;
wire  w_523_16b;
wire  w_524_16b;
wire  w_525_16b;
wire  w_526_16b;
wire  w_527_16b;
wire  w_528_16b;
wire  w_529_16b;
wire  w_530_16b;
wire  w_531_16b;
wire  w_532_16b;
wire  w_533_16b;
wire  w_534_16b;
wire  w_535_16b;
wire  w_536_16b;
wire  w_537_16b;
wire  w_538_16b;
wire  w_539_16b;
wire  w_540_16b;
wire  w_541_16b;
wire  w_542_16b;
wire  w_543_16b;
wire  w_544_16b;
wire  w_545_16b;
wire  w_546_16b;
wire  w_547_16b;
wire  w_548_16b;
wire  w_549_16b;
wire  w_550_16b;
wire  w_551_16b;
wire  w_552_16b;
wire  w_553_16b;
wire  w_554_16b;
wire  w_555_16b;
wire  w_556_16b;
wire  w_557_16b;
wire  w_558_16b;
wire  w_559_16b;
wire  w_560_16b;
wire  w_561_16b;
wire  w_562_16b;
wire  w_563_16b;
wire  w_564_16b;
wire  w_565_16b;
wire  w_566_16b;
wire  w_567_16b;
wire  w_568_16b;
wire  w_569_16b;
wire  w_570_16b;
wire  w_571_16b;
wire  w_572_16b;
wire  w_573_16b;
wire  w_574_16b;
wire  w_575_16b;
wire  w_576_16b;
wire  w_577_16b;
wire  w_578_16b;
wire  w_579_16b;
wire  w_580_16b;
wire  w_581_16b;
wire  w_582_16b;
wire  w_583_16b;
wire  w_584_16b;
wire  w_585_16b;
wire  w_586_16b;
wire  w_587_16b;
wire  w_588_16b;
wire  w_589_16b;
wire  w_590_16b;
wire  w_591_16b;
wire  w_592_16b;
wire  w_593_16b;
wire  w_594_16b;
wire  w_595_16b;
wire  w_596_16b;
wire  w_597_16b;
wire  w_598_16b;
wire  w_599_16b;
wire  w_600_16b;
wire  w_601_16b;
wire  w_602_16b;
wire  w_603_16b;
wire  w_604_16b;
wire  w_605_16b;
wire  w_606_16b;
wire  w_607_16b;
wire  w_608_16b;
wire  w_609_16b;
wire  w_610_16b;
wire  w_611_16b;
wire  w_612_16b;
wire  w_613_16b;
wire  w_614_16b;
wire  w_615_16b;
wire  w_616_16b;
wire  w_617_16b;
wire  w_618_16b;
wire  w_619_16b;
wire  w_620_16b;
wire  w_621_16b;
wire  w_622_16b;
wire  w_623_16b;
wire  w_624_16b;
wire  w_625_16b;
wire  w_626_16b;
wire  w_627_16b;
wire  w_628_16b;
wire  w_629_16b;
wire  w_630_16b;
wire  w_631_16b;
wire  w_632_16b;
wire  w_633_16b;
wire  w_634_16b;
wire  w_635_16b;
wire  w_636_16b;
wire  w_637_16b;
wire  w_638_16b;
wire  w_639_16b;
wire  w_640_16b;
wire  w_641_16b;
wire  w_642_16b;
wire  w_643_16b;
wire  w_644_16b;
wire  w_645_16b;
wire  w_646_16b;
wire  w_647_16b;
wire  w_648_16b;
wire  w_649_16b;
wire  w_650_16b;
wire  w_651_16b;
wire  w_652_16b;
wire  w_653_16b;
wire  w_654_16b;
wire  w_655_16b;
wire  w_656_16b;
wire  w_657_16b;
wire  w_658_16b;
wire  w_659_16b;
wire  w_660_16b;
wire  w_661_16b;
wire  w_662_16b;
wire  w_663_16b;
wire  w_664_16b;
wire  w_665_16b;
wire  w_666_16b;
wire  w_667_16b;
wire  w_668_16b;
wire  w_669_16b;
wire  w_670_16b;
wire  w_671_16b;
wire  w_672_16b;
wire  w_673_16b;
wire  w_674_16b;
wire  w_675_16b;
wire  w_676_16b;
wire  w_677_16b;
wire  w_678_16b;
wire  w_679_16b;
wire  w_680_16b;
wire  w_681_16b;
wire  w_682_16b;
wire  w_683_16b;
wire  w_684_16b;
wire  w_685_16b;
wire  w_686_16b;
wire  w_687_16b;
wire  w_688_16b;
wire  w_689_16b;
wire  w_690_16b;
wire  w_691_16b;
wire  w_692_16b;
wire  w_693_16b;
wire  w_694_16b;
wire  w_695_16b;
wire  w_696_16b;
wire  w_697_16b;
wire  w_698_16b;
wire  w_699_16b;
wire  w_700_16b;
wire  w_701_16b;
wire  w_702_16b;
wire  w_703_16b;
wire  w_704_16b;
wire  w_705_16b;
wire  w_706_16b;
wire  w_707_16b;
wire  w_708_16b;
wire  w_709_16b;
wire  w_710_16b;
wire  w_711_16b;
wire  w_712_16b;
wire  w_713_16b;
wire  w_714_16b;
wire  w_715_16b;
wire  w_716_16b;
wire  w_717_16b;
wire  w_718_16b;
wire  w_719_16b;
wire  w_720_16b;
wire  w_721_16b;
wire  w_722_16b;
wire  w_723_16b;
wire  w_724_16b;
wire  w_725_16b;
wire  w_726_16b;
wire  w_727_16b;
wire  w_728_16b;
wire  w_729_16b;
wire  w_730_16b;
wire  w_731_16b;
wire  w_732_16b;
wire  w_733_16b;
wire  w_734_16b;
wire  w_735_16b;
wire  w_736_16b;
wire  w_737_16b;
wire  w_738_16b;
wire  w_739_16b;
wire  w_740_16b;
wire  w_741_16b;
wire  w_742_16b;
wire  w_743_16b;
wire  w_744_16b;
wire  w_745_16b;
wire  w_746_16b;
wire  w_747_16b;
wire  w_748_16b;
wire  w_749_16b;
wire  w_750_16b;
wire  w_751_16b;
wire  w_752_16b;
wire  w_753_16b;
wire  w_754_16b;
wire  w_755_16b;
wire  w_756_16b;
wire  w_757_16b;
wire  w_758_16b;
wire  w_759_16b;
wire  w_760_16b;
wire  w_761_16b;
wire  w_762_16b;
wire  w_763_16b;
wire  w_764_16b;
wire  w_765_16b;
wire  w_766_16b;
wire  w_767_16b;
wire  w_768_16b;
wire  w_769_16b;
wire  w_770_16b;
wire  w_771_16b;
wire  w_772_16b;
wire  w_773_16b;
wire  w_774_16b;
wire  w_775_16b;
wire  w_776_16b;
wire  w_777_16b;
wire  w_778_16b;
wire  w_779_16b;
wire  w_780_16b;
wire  w_781_16b;
wire  w_782_16b;
wire  w_p2_sum_xa24_0_16b;
wire  w_ratio_1_stencil_0_0_8b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_ratio_1_stencil_0_0_8b = w_ratio_1_stencil_0_0_8b;
assign  r0_w_p2_sum_xa24_0_16b  =  w_287_16b ;
assign  r10_w_p2_sum_xa24_0_16b  =  w_345_16b ;
assign  r11_w_p2_sum_xa24_0_16b  =  w_351_16b ;
assign  r12_w_p2_sum_xa24_0_16b  =  w_357_16b ;
assign  r13_w_p2_sum_xa24_0_16b  =  w_363_16b ;
assign  r14_w_p2_sum_xa24_0_16b  =  w_369_16b ;
assign  r15_w_p2_sum_xa24_0_16b  =  w_375_16b ;
assign  r16_w_p2_sum_xa24_0_16b  =  w_381_16b ;
assign  r17_w_p2_sum_xa24_0_16b  =  w_387_16b ;
assign  r18_w_p2_sum_xa24_0_16b  =  w_393_16b ;
assign  r19_w_p2_sum_xa24_0_16b  =  w_399_16b ;
assign  r1_w_p2_sum_xa24_0_16b  =  w_293_16b ;
assign  r20_w_p2_sum_xa24_0_16b  =  w_405_16b ;
assign  r21_w_p2_sum_xa24_0_16b  =  w_411_16b ;
assign  r22_w_p2_sum_xa24_0_16b  =  w_417_16b ;
assign  r23_w_p2_sum_xa24_0_16b  =  w_423_16b ;
assign  r24_w_p2_sum_xa24_0_16b  =  w_429_16b ;
assign  r25_w_p2_sum_xa24_0_16b  =  w_435_16b ;
assign  r26_w_p2_sum_xa24_0_16b  =  w_441_16b ;
assign  r27_w_p2_sum_xa24_0_16b  =  w_447_16b ;
assign  r28_w_p2_sum_xa24_0_16b  =  w_453_16b ;
assign  r29_w_p2_sum_xa24_0_16b  =  w_459_16b ;
assign  r2_w_p2_sum_xa24_0_16b  =  w_299_16b ;
assign  r30_w_p2_sum_xa24_0_16b  =  w_465_16b ;
assign  r31_w_p2_sum_xa24_0_16b  =  w_471_16b ;
assign  r32_w_p2_sum_xa24_0_16b  =  w_477_16b ;
assign  r33_w_p2_sum_xa24_0_16b  =  w_483_16b ;
assign  r34_w_p2_sum_xa24_0_16b  =  w_489_16b ;
assign  r35_w_p2_sum_xa24_0_16b  =  w_495_16b ;
assign  r36_w_p2_sum_xa24_0_16b  =  w_501_16b ;
assign  r37_w_p2_sum_xa24_0_16b  =  w_507_16b ;
assign  r38_w_p2_sum_xa24_0_16b  =  w_513_16b ;
assign  r39_w_p2_sum_xa24_0_16b  =  w_519_16b ;
assign  r3_w_p2_sum_xa24_0_16b  =  w_305_16b ;
assign  r40_w_p2_sum_xa24_0_16b  =  w_525_16b ;
assign  r41_w_p2_sum_xa24_0_16b  =  w_531_16b ;
assign  r42_w_p2_sum_xa24_0_16b  =  w_537_16b ;
assign  r43_w_p2_sum_xa24_0_16b  =  w_543_16b ;
assign  r44_w_p2_sum_xa24_0_16b  =  w_549_16b ;
assign  r45_w_p2_sum_xa24_0_16b  =  w_555_16b ;
assign  r46_w_p2_sum_xa24_0_16b  =  w_561_16b ;
assign  r47_w_p2_sum_xa24_0_16b  =  w_567_16b ;
assign  r48_w_p2_sum_xa24_0_16b  =  w_573_16b ;
assign  r49_w_p2_sum_xa24_0_16b  =  w_579_16b ;
assign  r4_w_p2_sum_xa24_0_16b  =  w_311_16b ;
assign  r50_w_p2_sum_xa24_0_16b  =  w_585_16b ;
assign  r51_w_p2_sum_xa24_0_16b  =  w_591_16b ;
assign  r52_w_p2_sum_xa24_0_16b  =  w_597_16b ;
assign  r53_w_p2_sum_xa24_0_16b  =  w_603_16b ;
assign  r54_w_p2_sum_xa24_0_16b  =  w_609_16b ;
assign  r55_w_p2_sum_xa24_0_16b  =  w_615_16b ;
assign  r56_w_p2_sum_xa24_0_16b  =  w_621_16b ;
assign  r57_w_p2_sum_xa24_0_16b  =  w_627_16b ;
assign  r58_w_p2_sum_xa24_0_16b  =  w_633_16b ;
assign  r59_w_p2_sum_xa24_0_16b  =  w_639_16b ;
assign  r5_w_p2_sum_xa24_0_16b  =  w_317_16b ;
assign  r60_w_p2_sum_xa24_0_16b  =  w_645_16b ;
assign  r61_w_p2_sum_xa24_0_16b  =  w_651_16b ;
assign  r62_w_p2_sum_xa24_0_16b  =  w_657_16b ;
assign  r63_w_p2_sum_xa24_0_16b  =  w_663_16b ;
assign  r64_w_p2_sum_xa24_0_16b  =  w_669_16b ;
assign  r65_w_p2_sum_xa24_0_16b  =  w_675_16b ;
assign  r66_w_p2_sum_xa24_0_16b  =  w_681_16b ;
assign  r67_w_p2_sum_xa24_0_16b  =  w_687_16b ;
assign  r68_w_p2_sum_xa24_0_16b  =  w_693_16b ;
assign  r69_w_p2_sum_xa24_0_16b  =  w_699_16b ;
assign  r6_w_p2_sum_xa24_0_16b  =  w_323_16b ;
assign  r70_w_p2_sum_xa24_0_16b  =  w_705_16b ;
assign  r71_w_p2_sum_xa24_0_16b  =  w_711_16b ;
assign  r72_w_p2_sum_xa24_0_16b  =  w_715_16b ;
assign  r73_w_p2_sum_xa24_0_16b  =  w_721_16b ;
assign  r74_w_p2_sum_xa24_0_16b  =  w_727_16b ;
assign  r75_w_p2_sum_xa24_0_16b  =  w_733_16b ;
assign  r76_w_p2_sum_xa24_0_16b  =  w_739_16b ;
assign  r77_w_p2_sum_xa24_0_16b  =  w_745_16b ;
assign  r78_w_p2_sum_xa24_0_16b  =  w_751_16b ;
assign  r79_w_p2_sum_xa24_0_16b  =  w_757_16b ;
assign  r7_w_p2_sum_xa24_0_16b  =  w_329_16b ;
assign  r80_w_p2_sum_xa24_0_16b  =  w_761_16b ;
assign  r8_w_p2_sum_xa24_0_16b  =  w_333_16b ;
assign  r9_w_p2_sum_xa24_0_16b  =  w_339_16b ;
assign  w_283_16b  = 1'b0;
assign  w_284_16b  = 1'b0;
assign  w_285_16b  =  w_gray_1_stencil_0_0_8b ;
assign  w_286_16b  =  w_285_16b ;
ADD_16b_pe add_0 (
  .a(w_284_16b),
  .b(w_286_16b),
  .c(w_287_16b),
  .clk(clk)
);
assign  w_288_16b  =  r0_w_p2_sum_xa24_0_16b ;
assign  w_289_16b  =  w_gray_1_stencil_1_0_8b ;
assign  w_290_16b  =  w_289_16b ;
assign  w_291_16b  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_290_16b),
  .b(w_291_16b),
  .c(w_292_16b),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_292_16b),
  .b(w_288_16b),
  .c(w_293_16b),
  .clk(clk)
);
assign  w_294_16b  =  r1_w_p2_sum_xa24_0_16b ;
assign  w_295_16b  =  w_gray_1_stencil_2_0_8b ;
assign  w_296_16b  =  w_295_16b ;
assign  w_297_16b  = 1'b0;
MULT_16b_pe mult_3 (
  .a(w_296_16b),
  .b(w_297_16b),
  .c(w_298_16b),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_298_16b),
  .b(w_294_16b),
  .c(w_299_16b),
  .clk(clk)
);
assign  w_300_16b  =  r2_w_p2_sum_xa24_0_16b ;
assign  w_301_16b  =  w_gray_1_stencil_3_0_8b ;
assign  w_302_16b  =  w_301_16b ;
assign  w_303_16b  = 1'b0;
MULT_16b_pe mult_5 (
  .a(w_302_16b),
  .b(w_303_16b),
  .c(w_304_16b),
  .clk(clk)
);
ADD_16b_pe add_6 (
  .a(w_300_16b),
  .b(w_304_16b),
  .c(w_305_16b),
  .clk(clk)
);
assign  w_306_16b  =  r3_w_p2_sum_xa24_0_16b ;
assign  w_307_16b  =  w_gray_1_stencil_4_0_8b ;
assign  w_308_16b  =  w_307_16b ;
assign  w_309_16b  = 1'b0;
MULT_16b_pe mult_7 (
  .a(w_308_16b),
  .b(w_309_16b),
  .c(w_310_16b),
  .clk(clk)
);
ADD_16b_pe add_8 (
  .a(w_306_16b),
  .b(w_310_16b),
  .c(w_311_16b),
  .clk(clk)
);
assign  w_312_16b  =  r4_w_p2_sum_xa24_0_16b ;
assign  w_313_16b  =  w_gray_1_stencil_5_0_8b ;
assign  w_314_16b  =  w_313_16b ;
assign  w_315_16b  = 1'b0;
MULT_16b_pe mult_9 (
  .a(w_315_16b),
  .b(w_314_16b),
  .c(w_316_16b),
  .clk(clk)
);
ADD_16b_pe add_10 (
  .a(w_316_16b),
  .b(w_312_16b),
  .c(w_317_16b),
  .clk(clk)
);
assign  w_318_16b  =  r5_w_p2_sum_xa24_0_16b ;
assign  w_319_16b  =  w_gray_1_stencil_6_0_8b ;
assign  w_320_16b  =  w_319_16b ;
assign  w_321_16b  = 1'b0;
MULT_16b_pe mult_11 (
  .a(w_320_16b),
  .b(w_321_16b),
  .c(w_322_16b),
  .clk(clk)
);
ADD_16b_pe add_12 (
  .a(w_322_16b),
  .b(w_318_16b),
  .c(w_323_16b),
  .clk(clk)
);
assign  w_324_16b  =  r6_w_p2_sum_xa24_0_16b ;
assign  w_325_16b  =  w_gray_1_stencil_7_0_8b ;
assign  w_326_16b  =  w_325_16b ;
assign  w_327_16b  = 1'b0;
MULT_16b_pe mult_13 (
  .a(w_326_16b),
  .b(w_327_16b),
  .c(w_328_16b),
  .clk(clk)
);
ADD_16b_pe add_14 (
  .a(w_328_16b),
  .b(w_324_16b),
  .c(w_329_16b),
  .clk(clk)
);
assign  w_330_16b  =  r7_w_p2_sum_xa24_0_16b ;
assign  w_331_16b  =  w_gray_1_stencil_8_0_8b ;
assign  w_332_16b  =  w_331_16b ;
ADD_16b_pe add_15 (
  .a(w_330_16b),
  .b(w_332_16b),
  .c(w_333_16b),
  .clk(clk)
);
assign  w_334_16b  =  r8_w_p2_sum_xa24_0_16b ;
assign  w_335_16b  =  w_gray_1_stencil_0_1_8b ;
assign  w_336_16b  =  w_335_16b ;
assign  w_337_16b  = 1'b0;
MULT_16b_pe mult_16 (
  .a(w_337_16b),
  .b(w_336_16b),
  .c(w_338_16b),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_338_16b),
  .b(w_334_16b),
  .c(w_339_16b),
  .clk(clk)
);
assign  w_340_16b  =  r9_w_p2_sum_xa24_0_16b ;
assign  w_341_16b  =  w_gray_1_stencil_1_1_8b ;
assign  w_342_16b  =  w_341_16b ;
assign  w_343_16b  = 1'b0;
MULT_16b_pe mult_18 (
  .a(w_342_16b),
  .b(w_343_16b),
  .c(w_344_16b),
  .clk(clk)
);
ADD_16b_pe add_19 (
  .a(w_344_16b),
  .b(w_340_16b),
  .c(w_345_16b),
  .clk(clk)
);
assign  w_346_16b  =  r10_w_p2_sum_xa24_0_16b ;
assign  w_347_16b  =  w_gray_1_stencil_2_1_8b ;
assign  w_348_16b  =  w_347_16b ;
assign  w_349_16b  = 1'b0;
MULT_16b_pe mult_20 (
  .a(w_348_16b),
  .b(w_349_16b),
  .c(w_350_16b),
  .clk(clk)
);
ADD_16b_pe add_21 (
  .a(w_346_16b),
  .b(w_350_16b),
  .c(w_351_16b),
  .clk(clk)
);
assign  w_352_16b  =  r11_w_p2_sum_xa24_0_16b ;
assign  w_353_16b  =  w_gray_1_stencil_3_1_8b ;
assign  w_354_16b  =  w_353_16b ;
assign  w_355_16b  = 1'b0;
MULT_16b_pe mult_22 (
  .a(w_355_16b),
  .b(w_354_16b),
  .c(w_356_16b),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_352_16b),
  .b(w_356_16b),
  .c(w_357_16b),
  .clk(clk)
);
assign  w_358_16b  =  r12_w_p2_sum_xa24_0_16b ;
assign  w_359_16b  =  w_gray_1_stencil_4_1_8b ;
assign  w_360_16b  =  w_359_16b ;
assign  w_361_16b  = 1'b0;
MULT_16b_pe mult_24 (
  .a(w_360_16b),
  .b(w_361_16b),
  .c(w_362_16b),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_358_16b),
  .b(w_362_16b),
  .c(w_363_16b),
  .clk(clk)
);
assign  w_364_16b  =  r13_w_p2_sum_xa24_0_16b ;
assign  w_365_16b  =  w_gray_1_stencil_5_1_8b ;
assign  w_366_16b  =  w_365_16b ;
assign  w_367_16b  = 1'b0;
MULT_16b_pe mult_26 (
  .a(w_366_16b),
  .b(w_367_16b),
  .c(w_368_16b),
  .clk(clk)
);
ADD_16b_pe add_27 (
  .a(w_364_16b),
  .b(w_368_16b),
  .c(w_369_16b),
  .clk(clk)
);
assign  w_370_16b  =  r14_w_p2_sum_xa24_0_16b ;
assign  w_371_16b  =  w_gray_1_stencil_6_1_8b ;
assign  w_372_16b  =  w_371_16b ;
assign  w_373_16b  = 1'b0;
MULT_16b_pe mult_28 (
  .a(w_373_16b),
  .b(w_372_16b),
  .c(w_374_16b),
  .clk(clk)
);
ADD_16b_pe add_29 (
  .a(w_374_16b),
  .b(w_370_16b),
  .c(w_375_16b),
  .clk(clk)
);
assign  w_376_16b  =  r15_w_p2_sum_xa24_0_16b ;
assign  w_377_16b  =  w_gray_1_stencil_7_1_8b ;
assign  w_378_16b  =  w_377_16b ;
assign  w_379_16b  = 1'b0;
MULT_16b_pe mult_30 (
  .a(w_379_16b),
  .b(w_378_16b),
  .c(w_380_16b),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_380_16b),
  .b(w_376_16b),
  .c(w_381_16b),
  .clk(clk)
);
assign  w_382_16b  =  r16_w_p2_sum_xa24_0_16b ;
assign  w_383_16b  =  w_gray_1_stencil_8_1_8b ;
assign  w_384_16b  =  w_383_16b ;
assign  w_385_16b  = 1'b0;
MULT_16b_pe mult_32 (
  .a(w_384_16b),
  .b(w_385_16b),
  .c(w_386_16b),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_382_16b),
  .b(w_386_16b),
  .c(w_387_16b),
  .clk(clk)
);
assign  w_388_16b  =  r17_w_p2_sum_xa24_0_16b ;
assign  w_389_16b  =  w_gray_1_stencil_0_2_8b ;
assign  w_390_16b  =  w_389_16b ;
assign  w_391_16b  = 1'b0;
MULT_16b_pe mult_34 (
  .a(w_391_16b),
  .b(w_390_16b),
  .c(w_392_16b),
  .clk(clk)
);
ADD_16b_pe add_35 (
  .a(w_388_16b),
  .b(w_392_16b),
  .c(w_393_16b),
  .clk(clk)
);
assign  w_394_16b  =  r18_w_p2_sum_xa24_0_16b ;
assign  w_395_16b  =  w_gray_1_stencil_1_2_8b ;
assign  w_396_16b  =  w_395_16b ;
assign  w_397_16b  = 1'b0;
MULT_16b_pe mult_36 (
  .a(w_397_16b),
  .b(w_396_16b),
  .c(w_398_16b),
  .clk(clk)
);
ADD_16b_pe add_37 (
  .a(w_394_16b),
  .b(w_398_16b),
  .c(w_399_16b),
  .clk(clk)
);
assign  w_400_16b  =  r19_w_p2_sum_xa24_0_16b ;
assign  w_401_16b  =  w_gray_1_stencil_2_2_8b ;
assign  w_402_16b  =  w_401_16b ;
assign  w_403_16b  = 1'b0;
MULT_16b_pe mult_38 (
  .a(w_403_16b),
  .b(w_402_16b),
  .c(w_404_16b),
  .clk(clk)
);
ADD_16b_pe add_39 (
  .a(w_404_16b),
  .b(w_400_16b),
  .c(w_405_16b),
  .clk(clk)
);
assign  w_406_16b  =  r20_w_p2_sum_xa24_0_16b ;
assign  w_407_16b  =  w_gray_1_stencil_3_2_8b ;
assign  w_408_16b  =  w_407_16b ;
assign  w_409_16b  = 1'b0;
MULT_16b_pe mult_40 (
  .a(w_409_16b),
  .b(w_408_16b),
  .c(w_410_16b),
  .clk(clk)
);
ADD_16b_pe add_41 (
  .a(w_410_16b),
  .b(w_406_16b),
  .c(w_411_16b),
  .clk(clk)
);
assign  w_412_16b  =  r21_w_p2_sum_xa24_0_16b ;
assign  w_413_16b  =  w_gray_1_stencil_4_2_8b ;
assign  w_414_16b  =  w_413_16b ;
assign  w_415_16b  = 1'b0;
MULT_16b_pe mult_42 (
  .a(w_414_16b),
  .b(w_415_16b),
  .c(w_416_16b),
  .clk(clk)
);
ADD_16b_pe add_43 (
  .a(w_412_16b),
  .b(w_416_16b),
  .c(w_417_16b),
  .clk(clk)
);
assign  w_418_16b  =  r22_w_p2_sum_xa24_0_16b ;
assign  w_419_16b  =  w_gray_1_stencil_5_2_8b ;
assign  w_420_16b  =  w_419_16b ;
assign  w_421_16b  = 1'b0;
MULT_16b_pe mult_44 (
  .a(w_421_16b),
  .b(w_420_16b),
  .c(w_422_16b),
  .clk(clk)
);
ADD_16b_pe add_45 (
  .a(w_418_16b),
  .b(w_422_16b),
  .c(w_423_16b),
  .clk(clk)
);
assign  w_424_16b  =  r23_w_p2_sum_xa24_0_16b ;
assign  w_425_16b  =  w_gray_1_stencil_6_2_8b ;
assign  w_426_16b  =  w_425_16b ;
assign  w_427_16b  = 1'b0;
MULT_16b_pe mult_46 (
  .a(w_427_16b),
  .b(w_426_16b),
  .c(w_428_16b),
  .clk(clk)
);
ADD_16b_pe add_47 (
  .a(w_428_16b),
  .b(w_424_16b),
  .c(w_429_16b),
  .clk(clk)
);
assign  w_430_16b  =  r24_w_p2_sum_xa24_0_16b ;
assign  w_431_16b  =  w_gray_1_stencil_7_2_8b ;
assign  w_432_16b  =  w_431_16b ;
assign  w_433_16b  = 1'b0;
MULT_16b_pe mult_48 (
  .a(w_432_16b),
  .b(w_433_16b),
  .c(w_434_16b),
  .clk(clk)
);
ADD_16b_pe add_49 (
  .a(w_430_16b),
  .b(w_434_16b),
  .c(w_435_16b),
  .clk(clk)
);
assign  w_436_16b  =  r25_w_p2_sum_xa24_0_16b ;
assign  w_437_16b  =  w_gray_1_stencil_8_2_8b ;
assign  w_438_16b  =  w_437_16b ;
assign  w_439_16b  = 1'b0;
MULT_16b_pe mult_50 (
  .a(w_438_16b),
  .b(w_439_16b),
  .c(w_440_16b),
  .clk(clk)
);
ADD_16b_pe add_51 (
  .a(w_440_16b),
  .b(w_436_16b),
  .c(w_441_16b),
  .clk(clk)
);
assign  w_442_16b  =  r26_w_p2_sum_xa24_0_16b ;
assign  w_443_16b  =  w_gray_1_stencil_0_3_8b ;
assign  w_444_16b  =  w_443_16b ;
assign  w_445_16b  = 1'b0;
MULT_16b_pe mult_52 (
  .a(w_445_16b),
  .b(w_444_16b),
  .c(w_446_16b),
  .clk(clk)
);
ADD_16b_pe add_53 (
  .a(w_442_16b),
  .b(w_446_16b),
  .c(w_447_16b),
  .clk(clk)
);
assign  w_448_16b  =  r27_w_p2_sum_xa24_0_16b ;
assign  w_449_16b  =  w_gray_1_stencil_1_3_8b ;
assign  w_450_16b  =  w_449_16b ;
assign  w_451_16b  = 1'b0;
MULT_16b_pe mult_54 (
  .a(w_450_16b),
  .b(w_451_16b),
  .c(w_452_16b),
  .clk(clk)
);
ADD_16b_pe add_55 (
  .a(w_448_16b),
  .b(w_452_16b),
  .c(w_453_16b),
  .clk(clk)
);
assign  w_454_16b  =  r28_w_p2_sum_xa24_0_16b ;
assign  w_455_16b  =  w_gray_1_stencil_2_3_8b ;
assign  w_456_16b  =  w_455_16b ;
assign  w_457_16b  = 1'b0;
MULT_16b_pe mult_56 (
  .a(w_456_16b),
  .b(w_457_16b),
  .c(w_458_16b),
  .clk(clk)
);
ADD_16b_pe add_57 (
  .a(w_454_16b),
  .b(w_458_16b),
  .c(w_459_16b),
  .clk(clk)
);
assign  w_460_16b  =  r29_w_p2_sum_xa24_0_16b ;
assign  w_461_16b  =  w_gray_1_stencil_3_3_8b ;
assign  w_462_16b  =  w_461_16b ;
assign  w_463_16b  = 1'b0;
MULT_16b_pe mult_58 (
  .a(w_463_16b),
  .b(w_462_16b),
  .c(w_464_16b),
  .clk(clk)
);
ADD_16b_pe add_59 (
  .a(w_464_16b),
  .b(w_460_16b),
  .c(w_465_16b),
  .clk(clk)
);
assign  w_466_16b  =  r30_w_p2_sum_xa24_0_16b ;
assign  w_467_16b  =  w_gray_1_stencil_4_3_8b ;
assign  w_468_16b  =  w_467_16b ;
assign  w_469_16b  = 1'b0;
MULT_16b_pe mult_60 (
  .a(w_469_16b),
  .b(w_468_16b),
  .c(w_470_16b),
  .clk(clk)
);
ADD_16b_pe add_61 (
  .a(w_466_16b),
  .b(w_470_16b),
  .c(w_471_16b),
  .clk(clk)
);
assign  w_472_16b  =  r31_w_p2_sum_xa24_0_16b ;
assign  w_473_16b  =  w_gray_1_stencil_5_3_8b ;
assign  w_474_16b  =  w_473_16b ;
assign  w_475_16b  = 1'b0;
MULT_16b_pe mult_62 (
  .a(w_474_16b),
  .b(w_475_16b),
  .c(w_476_16b),
  .clk(clk)
);
ADD_16b_pe add_63 (
  .a(w_476_16b),
  .b(w_472_16b),
  .c(w_477_16b),
  .clk(clk)
);
assign  w_478_16b  =  r32_w_p2_sum_xa24_0_16b ;
assign  w_479_16b  =  w_gray_1_stencil_6_3_8b ;
assign  w_480_16b  =  w_479_16b ;
assign  w_481_16b  = 1'b0;
MULT_16b_pe mult_64 (
  .a(w_481_16b),
  .b(w_480_16b),
  .c(w_482_16b),
  .clk(clk)
);
ADD_16b_pe add_65 (
  .a(w_482_16b),
  .b(w_478_16b),
  .c(w_483_16b),
  .clk(clk)
);
assign  w_484_16b  =  r33_w_p2_sum_xa24_0_16b ;
assign  w_485_16b  =  w_gray_1_stencil_7_3_8b ;
assign  w_486_16b  =  w_485_16b ;
assign  w_487_16b  = 1'b0;
MULT_16b_pe mult_66 (
  .a(w_487_16b),
  .b(w_486_16b),
  .c(w_488_16b),
  .clk(clk)
);
ADD_16b_pe add_67 (
  .a(w_484_16b),
  .b(w_488_16b),
  .c(w_489_16b),
  .clk(clk)
);
assign  w_490_16b  =  r34_w_p2_sum_xa24_0_16b ;
assign  w_491_16b  =  w_gray_1_stencil_8_3_8b ;
assign  w_492_16b  =  w_491_16b ;
assign  w_493_16b  = 1'b0;
MULT_16b_pe mult_68 (
  .a(w_492_16b),
  .b(w_493_16b),
  .c(w_494_16b),
  .clk(clk)
);
ADD_16b_pe add_69 (
  .a(w_490_16b),
  .b(w_494_16b),
  .c(w_495_16b),
  .clk(clk)
);
assign  w_496_16b  =  r35_w_p2_sum_xa24_0_16b ;
assign  w_497_16b  =  w_gray_1_stencil_0_4_8b ;
assign  w_498_16b  =  w_497_16b ;
assign  w_499_16b  = 1'b0;
MULT_16b_pe mult_70 (
  .a(w_498_16b),
  .b(w_499_16b),
  .c(w_500_16b),
  .clk(clk)
);
ADD_16b_pe add_71 (
  .a(w_500_16b),
  .b(w_496_16b),
  .c(w_501_16b),
  .clk(clk)
);
assign  w_502_16b  =  r36_w_p2_sum_xa24_0_16b ;
assign  w_503_16b  =  w_gray_1_stencil_1_4_8b ;
assign  w_504_16b  =  w_503_16b ;
assign  w_505_16b  = 1'b0;
MULT_16b_pe mult_72 (
  .a(w_504_16b),
  .b(w_505_16b),
  .c(w_506_16b),
  .clk(clk)
);
ADD_16b_pe add_73 (
  .a(w_506_16b),
  .b(w_502_16b),
  .c(w_507_16b),
  .clk(clk)
);
assign  w_508_16b  =  r37_w_p2_sum_xa24_0_16b ;
assign  w_509_16b  =  w_gray_1_stencil_2_4_8b ;
assign  w_510_16b  =  w_509_16b ;
assign  w_511_16b  = 1'b0;
MULT_16b_pe mult_74 (
  .a(w_511_16b),
  .b(w_510_16b),
  .c(w_512_16b),
  .clk(clk)
);
ADD_16b_pe add_75 (
  .a(w_508_16b),
  .b(w_512_16b),
  .c(w_513_16b),
  .clk(clk)
);
assign  w_514_16b  =  r38_w_p2_sum_xa24_0_16b ;
assign  w_515_16b  =  w_gray_1_stencil_3_4_8b ;
assign  w_516_16b  =  w_515_16b ;
assign  w_517_16b  = 1'b0;
MULT_16b_pe mult_76 (
  .a(w_517_16b),
  .b(w_516_16b),
  .c(w_518_16b),
  .clk(clk)
);
ADD_16b_pe add_77 (
  .a(w_514_16b),
  .b(w_518_16b),
  .c(w_519_16b),
  .clk(clk)
);
assign  w_520_16b  =  r39_w_p2_sum_xa24_0_16b ;
assign  w_521_16b  =  w_gray_1_stencil_4_4_8b ;
assign  w_522_16b  =  w_521_16b ;
assign  w_523_16b  = 1'b0;
MULT_16b_pe mult_78 (
  .a(w_522_16b),
  .b(w_523_16b),
  .c(w_524_16b),
  .clk(clk)
);
ADD_16b_pe add_79 (
  .a(w_524_16b),
  .b(w_520_16b),
  .c(w_525_16b),
  .clk(clk)
);
assign  w_526_16b  =  r40_w_p2_sum_xa24_0_16b ;
assign  w_527_16b  =  w_gray_1_stencil_5_4_8b ;
assign  w_528_16b  =  w_527_16b ;
assign  w_529_16b  = 1'b0;
MULT_16b_pe mult_80 (
  .a(w_528_16b),
  .b(w_529_16b),
  .c(w_530_16b),
  .clk(clk)
);
ADD_16b_pe add_81 (
  .a(w_526_16b),
  .b(w_530_16b),
  .c(w_531_16b),
  .clk(clk)
);
assign  w_532_16b  =  r41_w_p2_sum_xa24_0_16b ;
assign  w_533_16b  =  w_gray_1_stencil_6_4_8b ;
assign  w_534_16b  =  w_533_16b ;
assign  w_535_16b  = 1'b0;
MULT_16b_pe mult_82 (
  .a(w_535_16b),
  .b(w_534_16b),
  .c(w_536_16b),
  .clk(clk)
);
ADD_16b_pe add_83 (
  .a(w_532_16b),
  .b(w_536_16b),
  .c(w_537_16b),
  .clk(clk)
);
assign  w_538_16b  =  r42_w_p2_sum_xa24_0_16b ;
assign  w_539_16b  =  w_gray_1_stencil_7_4_8b ;
assign  w_540_16b  =  w_539_16b ;
assign  w_541_16b  = 1'b0;
MULT_16b_pe mult_84 (
  .a(w_540_16b),
  .b(w_541_16b),
  .c(w_542_16b),
  .clk(clk)
);
ADD_16b_pe add_85 (
  .a(w_542_16b),
  .b(w_538_16b),
  .c(w_543_16b),
  .clk(clk)
);
assign  w_544_16b  =  r43_w_p2_sum_xa24_0_16b ;
assign  w_545_16b  =  w_gray_1_stencil_8_4_8b ;
assign  w_546_16b  =  w_545_16b ;
assign  w_547_16b  = 1'b0;
MULT_16b_pe mult_86 (
  .a(w_546_16b),
  .b(w_547_16b),
  .c(w_548_16b),
  .clk(clk)
);
ADD_16b_pe add_87 (
  .a(w_548_16b),
  .b(w_544_16b),
  .c(w_549_16b),
  .clk(clk)
);
assign  w_550_16b  =  r44_w_p2_sum_xa24_0_16b ;
assign  w_551_16b  =  w_gray_1_stencil_0_5_8b ;
assign  w_552_16b  =  w_551_16b ;
assign  w_553_16b  = 1'b0;
MULT_16b_pe mult_88 (
  .a(w_553_16b),
  .b(w_552_16b),
  .c(w_554_16b),
  .clk(clk)
);
ADD_16b_pe add_89 (
  .a(w_550_16b),
  .b(w_554_16b),
  .c(w_555_16b),
  .clk(clk)
);
assign  w_556_16b  =  r45_w_p2_sum_xa24_0_16b ;
assign  w_557_16b  =  w_gray_1_stencil_1_5_8b ;
assign  w_558_16b  =  w_557_16b ;
assign  w_559_16b  = 1'b0;
MULT_16b_pe mult_90 (
  .a(w_559_16b),
  .b(w_558_16b),
  .c(w_560_16b),
  .clk(clk)
);
ADD_16b_pe add_91 (
  .a(w_560_16b),
  .b(w_556_16b),
  .c(w_561_16b),
  .clk(clk)
);
assign  w_562_16b  =  r46_w_p2_sum_xa24_0_16b ;
assign  w_563_16b  =  w_gray_1_stencil_2_5_8b ;
assign  w_564_16b  =  w_563_16b ;
assign  w_565_16b  = 1'b0;
MULT_16b_pe mult_92 (
  .a(w_564_16b),
  .b(w_565_16b),
  .c(w_566_16b),
  .clk(clk)
);
ADD_16b_pe add_93 (
  .a(w_562_16b),
  .b(w_566_16b),
  .c(w_567_16b),
  .clk(clk)
);
assign  w_568_16b  =  r47_w_p2_sum_xa24_0_16b ;
assign  w_569_16b  =  w_gray_1_stencil_3_5_8b ;
assign  w_570_16b  =  w_569_16b ;
assign  w_571_16b  = 1'b0;
MULT_16b_pe mult_94 (
  .a(w_571_16b),
  .b(w_570_16b),
  .c(w_572_16b),
  .clk(clk)
);
ADD_16b_pe add_95 (
  .a(w_568_16b),
  .b(w_572_16b),
  .c(w_573_16b),
  .clk(clk)
);
assign  w_574_16b  =  r48_w_p2_sum_xa24_0_16b ;
assign  w_575_16b  =  w_gray_1_stencil_4_5_8b ;
assign  w_576_16b  =  w_575_16b ;
assign  w_577_16b  = 1'b0;
MULT_16b_pe mult_96 (
  .a(w_577_16b),
  .b(w_576_16b),
  .c(w_578_16b),
  .clk(clk)
);
ADD_16b_pe add_97 (
  .a(w_574_16b),
  .b(w_578_16b),
  .c(w_579_16b),
  .clk(clk)
);
assign  w_580_16b  =  r49_w_p2_sum_xa24_0_16b ;
assign  w_581_16b  =  w_gray_1_stencil_5_5_8b ;
assign  w_582_16b  =  w_581_16b ;
assign  w_583_16b  = 1'b0;
MULT_16b_pe mult_98 (
  .a(w_582_16b),
  .b(w_583_16b),
  .c(w_584_16b),
  .clk(clk)
);
ADD_16b_pe add_99 (
  .a(w_584_16b),
  .b(w_580_16b),
  .c(w_585_16b),
  .clk(clk)
);
assign  w_586_16b  =  r50_w_p2_sum_xa24_0_16b ;
assign  w_587_16b  =  w_gray_1_stencil_6_5_8b ;
assign  w_588_16b  =  w_587_16b ;
assign  w_589_16b  = 1'b0;
MULT_16b_pe mult_100 (
  .a(w_588_16b),
  .b(w_589_16b),
  .c(w_590_16b),
  .clk(clk)
);
ADD_16b_pe add_101 (
  .a(w_586_16b),
  .b(w_590_16b),
  .c(w_591_16b),
  .clk(clk)
);
assign  w_592_16b  =  r51_w_p2_sum_xa24_0_16b ;
assign  w_593_16b  =  w_gray_1_stencil_7_5_8b ;
assign  w_594_16b  =  w_593_16b ;
assign  w_595_16b  = 1'b0;
MULT_16b_pe mult_102 (
  .a(w_595_16b),
  .b(w_594_16b),
  .c(w_596_16b),
  .clk(clk)
);
ADD_16b_pe add_103 (
  .a(w_596_16b),
  .b(w_592_16b),
  .c(w_597_16b),
  .clk(clk)
);
assign  w_598_16b  =  r52_w_p2_sum_xa24_0_16b ;
assign  w_599_16b  =  w_gray_1_stencil_8_5_8b ;
assign  w_600_16b  =  w_599_16b ;
assign  w_601_16b  = 1'b0;
MULT_16b_pe mult_104 (
  .a(w_601_16b),
  .b(w_600_16b),
  .c(w_602_16b),
  .clk(clk)
);
ADD_16b_pe add_105 (
  .a(w_598_16b),
  .b(w_602_16b),
  .c(w_603_16b),
  .clk(clk)
);
assign  w_604_16b  =  r53_w_p2_sum_xa24_0_16b ;
assign  w_605_16b  =  w_gray_1_stencil_0_6_8b ;
assign  w_606_16b  =  w_605_16b ;
assign  w_607_16b  = 1'b0;
MULT_16b_pe mult_106 (
  .a(w_607_16b),
  .b(w_606_16b),
  .c(w_608_16b),
  .clk(clk)
);
ADD_16b_pe add_107 (
  .a(w_604_16b),
  .b(w_608_16b),
  .c(w_609_16b),
  .clk(clk)
);
assign  w_610_16b  =  r54_w_p2_sum_xa24_0_16b ;
assign  w_611_16b  =  w_gray_1_stencil_1_6_8b ;
assign  w_612_16b  =  w_611_16b ;
assign  w_613_16b  = 1'b0;
MULT_16b_pe mult_108 (
  .a(w_612_16b),
  .b(w_613_16b),
  .c(w_614_16b),
  .clk(clk)
);
ADD_16b_pe add_109 (
  .a(w_614_16b),
  .b(w_610_16b),
  .c(w_615_16b),
  .clk(clk)
);
assign  w_616_16b  =  r55_w_p2_sum_xa24_0_16b ;
assign  w_617_16b  =  w_gray_1_stencil_2_6_8b ;
assign  w_618_16b  =  w_617_16b ;
assign  w_619_16b  = 1'b0;
MULT_16b_pe mult_110 (
  .a(w_618_16b),
  .b(w_619_16b),
  .c(w_620_16b),
  .clk(clk)
);
ADD_16b_pe add_111 (
  .a(w_616_16b),
  .b(w_620_16b),
  .c(w_621_16b),
  .clk(clk)
);
assign  w_622_16b  =  r56_w_p2_sum_xa24_0_16b ;
assign  w_623_16b  =  w_gray_1_stencil_3_6_8b ;
assign  w_624_16b  =  w_623_16b ;
assign  w_625_16b  = 1'b0;
MULT_16b_pe mult_112 (
  .a(w_625_16b),
  .b(w_624_16b),
  .c(w_626_16b),
  .clk(clk)
);
ADD_16b_pe add_113 (
  .a(w_622_16b),
  .b(w_626_16b),
  .c(w_627_16b),
  .clk(clk)
);
assign  w_628_16b  =  r57_w_p2_sum_xa24_0_16b ;
assign  w_629_16b  =  w_gray_1_stencil_4_6_8b ;
assign  w_630_16b  =  w_629_16b ;
assign  w_631_16b  = 1'b0;
MULT_16b_pe mult_114 (
  .a(w_630_16b),
  .b(w_631_16b),
  .c(w_632_16b),
  .clk(clk)
);
ADD_16b_pe add_115 (
  .a(w_628_16b),
  .b(w_632_16b),
  .c(w_633_16b),
  .clk(clk)
);
assign  w_634_16b  =  r58_w_p2_sum_xa24_0_16b ;
assign  w_635_16b  =  w_gray_1_stencil_5_6_8b ;
assign  w_636_16b  =  w_635_16b ;
assign  w_637_16b  = 1'b0;
MULT_16b_pe mult_116 (
  .a(w_636_16b),
  .b(w_637_16b),
  .c(w_638_16b),
  .clk(clk)
);
ADD_16b_pe add_117 (
  .a(w_634_16b),
  .b(w_638_16b),
  .c(w_639_16b),
  .clk(clk)
);
assign  w_640_16b  =  r59_w_p2_sum_xa24_0_16b ;
assign  w_641_16b  =  w_gray_1_stencil_6_6_8b ;
assign  w_642_16b  =  w_641_16b ;
assign  w_643_16b  = 1'b0;
MULT_16b_pe mult_118 (
  .a(w_643_16b),
  .b(w_642_16b),
  .c(w_644_16b),
  .clk(clk)
);
ADD_16b_pe add_119 (
  .a(w_640_16b),
  .b(w_644_16b),
  .c(w_645_16b),
  .clk(clk)
);
assign  w_646_16b  =  r60_w_p2_sum_xa24_0_16b ;
assign  w_647_16b  =  w_gray_1_stencil_7_6_8b ;
assign  w_648_16b  =  w_647_16b ;
assign  w_649_16b  = 1'b0;
MULT_16b_pe mult_120 (
  .a(w_649_16b),
  .b(w_648_16b),
  .c(w_650_16b),
  .clk(clk)
);
ADD_16b_pe add_121 (
  .a(w_650_16b),
  .b(w_646_16b),
  .c(w_651_16b),
  .clk(clk)
);
assign  w_652_16b  =  r61_w_p2_sum_xa24_0_16b ;
assign  w_653_16b  =  w_gray_1_stencil_8_6_8b ;
assign  w_654_16b  =  w_653_16b ;
assign  w_655_16b  = 1'b0;
MULT_16b_pe mult_122 (
  .a(w_654_16b),
  .b(w_655_16b),
  .c(w_656_16b),
  .clk(clk)
);
ADD_16b_pe add_123 (
  .a(w_652_16b),
  .b(w_656_16b),
  .c(w_657_16b),
  .clk(clk)
);
assign  w_658_16b  =  r62_w_p2_sum_xa24_0_16b ;
assign  w_659_16b  =  w_gray_1_stencil_0_7_8b ;
assign  w_660_16b  =  w_659_16b ;
assign  w_661_16b  = 1'b0;
MULT_16b_pe mult_124 (
  .a(w_661_16b),
  .b(w_660_16b),
  .c(w_662_16b),
  .clk(clk)
);
ADD_16b_pe add_125 (
  .a(w_658_16b),
  .b(w_662_16b),
  .c(w_663_16b),
  .clk(clk)
);
assign  w_664_16b  =  r63_w_p2_sum_xa24_0_16b ;
assign  w_665_16b  =  w_gray_1_stencil_1_7_8b ;
assign  w_666_16b  =  w_665_16b ;
assign  w_667_16b  = 1'b0;
MULT_16b_pe mult_126 (
  .a(w_667_16b),
  .b(w_666_16b),
  .c(w_668_16b),
  .clk(clk)
);
ADD_16b_pe add_127 (
  .a(w_664_16b),
  .b(w_668_16b),
  .c(w_669_16b),
  .clk(clk)
);
assign  w_670_16b  =  r64_w_p2_sum_xa24_0_16b ;
assign  w_671_16b  =  w_gray_1_stencil_2_7_8b ;
assign  w_672_16b  =  w_671_16b ;
assign  w_673_16b  = 1'b0;
MULT_16b_pe mult_128 (
  .a(w_672_16b),
  .b(w_673_16b),
  .c(w_674_16b),
  .clk(clk)
);
ADD_16b_pe add_129 (
  .a(w_670_16b),
  .b(w_674_16b),
  .c(w_675_16b),
  .clk(clk)
);
assign  w_676_16b  =  r65_w_p2_sum_xa24_0_16b ;
assign  w_677_16b  =  w_gray_1_stencil_3_7_8b ;
assign  w_678_16b  =  w_677_16b ;
assign  w_679_16b  = 1'b0;
MULT_16b_pe mult_130 (
  .a(w_678_16b),
  .b(w_679_16b),
  .c(w_680_16b),
  .clk(clk)
);
ADD_16b_pe add_131 (
  .a(w_680_16b),
  .b(w_676_16b),
  .c(w_681_16b),
  .clk(clk)
);
assign  w_682_16b  =  r66_w_p2_sum_xa24_0_16b ;
assign  w_683_16b  =  w_gray_1_stencil_4_7_8b ;
assign  w_684_16b  =  w_683_16b ;
assign  w_685_16b  = 1'b0;
MULT_16b_pe mult_132 (
  .a(w_685_16b),
  .b(w_684_16b),
  .c(w_686_16b),
  .clk(clk)
);
ADD_16b_pe add_133 (
  .a(w_686_16b),
  .b(w_682_16b),
  .c(w_687_16b),
  .clk(clk)
);
assign  w_688_16b  =  r67_w_p2_sum_xa24_0_16b ;
assign  w_689_16b  =  w_gray_1_stencil_5_7_8b ;
assign  w_690_16b  =  w_689_16b ;
assign  w_691_16b  = 1'b0;
MULT_16b_pe mult_134 (
  .a(w_690_16b),
  .b(w_691_16b),
  .c(w_692_16b),
  .clk(clk)
);
ADD_16b_pe add_135 (
  .a(w_692_16b),
  .b(w_688_16b),
  .c(w_693_16b),
  .clk(clk)
);
assign  w_694_16b  =  r68_w_p2_sum_xa24_0_16b ;
assign  w_695_16b  =  w_gray_1_stencil_6_7_8b ;
assign  w_696_16b  =  w_695_16b ;
assign  w_697_16b  = 1'b0;
MULT_16b_pe mult_136 (
  .a(w_696_16b),
  .b(w_697_16b),
  .c(w_698_16b),
  .clk(clk)
);
ADD_16b_pe add_137 (
  .a(w_694_16b),
  .b(w_698_16b),
  .c(w_699_16b),
  .clk(clk)
);
assign  w_700_16b  =  r69_w_p2_sum_xa24_0_16b ;
assign  w_701_16b  =  w_gray_1_stencil_7_7_8b ;
assign  w_702_16b  =  w_701_16b ;
assign  w_703_16b  = 1'b0;
MULT_16b_pe mult_138 (
  .a(w_702_16b),
  .b(w_703_16b),
  .c(w_704_16b),
  .clk(clk)
);
ADD_16b_pe add_139 (
  .a(w_704_16b),
  .b(w_700_16b),
  .c(w_705_16b),
  .clk(clk)
);
assign  w_706_16b  =  r70_w_p2_sum_xa24_0_16b ;
assign  w_707_16b  =  w_gray_1_stencil_8_7_8b ;
assign  w_708_16b  =  w_707_16b ;
assign  w_709_16b  = 1'b0;
MULT_16b_pe mult_140 (
  .a(w_708_16b),
  .b(w_709_16b),
  .c(w_710_16b),
  .clk(clk)
);
ADD_16b_pe add_141 (
  .a(w_706_16b),
  .b(w_710_16b),
  .c(w_711_16b),
  .clk(clk)
);
assign  w_712_16b  =  r71_w_p2_sum_xa24_0_16b ;
assign  w_713_16b  =  w_gray_1_stencil_0_8_8b ;
assign  w_714_16b  =  w_713_16b ;
ADD_16b_pe add_142 (
  .a(w_712_16b),
  .b(w_714_16b),
  .c(w_715_16b),
  .clk(clk)
);
assign  w_716_16b  =  r72_w_p2_sum_xa24_0_16b ;
assign  w_717_16b  =  w_gray_1_stencil_1_8_8b ;
assign  w_718_16b  =  w_717_16b ;
assign  w_719_16b  = 1'b0;
MULT_16b_pe mult_143 (
  .a(w_719_16b),
  .b(w_718_16b),
  .c(w_720_16b),
  .clk(clk)
);
ADD_16b_pe add_144 (
  .a(w_716_16b),
  .b(w_720_16b),
  .c(w_721_16b),
  .clk(clk)
);
assign  w_722_16b  =  r73_w_p2_sum_xa24_0_16b ;
assign  w_723_16b  =  w_gray_1_stencil_2_8_8b ;
assign  w_724_16b  =  w_723_16b ;
assign  w_725_16b  = 1'b0;
MULT_16b_pe mult_145 (
  .a(w_724_16b),
  .b(w_725_16b),
  .c(w_726_16b),
  .clk(clk)
);
ADD_16b_pe add_146 (
  .a(w_726_16b),
  .b(w_722_16b),
  .c(w_727_16b),
  .clk(clk)
);
assign  w_728_16b  =  r74_w_p2_sum_xa24_0_16b ;
assign  w_729_16b  =  w_gray_1_stencil_3_8_8b ;
assign  w_730_16b  =  w_729_16b ;
assign  w_731_16b  = 1'b0;
MULT_16b_pe mult_147 (
  .a(w_731_16b),
  .b(w_730_16b),
  .c(w_732_16b),
  .clk(clk)
);
ADD_16b_pe add_148 (
  .a(w_728_16b),
  .b(w_732_16b),
  .c(w_733_16b),
  .clk(clk)
);
assign  w_734_16b  =  r75_w_p2_sum_xa24_0_16b ;
assign  w_735_16b  =  w_gray_1_stencil_4_8_8b ;
assign  w_736_16b  =  w_735_16b ;
assign  w_737_16b  = 1'b0;
MULT_16b_pe mult_149 (
  .a(w_737_16b),
  .b(w_736_16b),
  .c(w_738_16b),
  .clk(clk)
);
ADD_16b_pe add_150 (
  .a(w_734_16b),
  .b(w_738_16b),
  .c(w_739_16b),
  .clk(clk)
);
assign  w_740_16b  =  r76_w_p2_sum_xa24_0_16b ;
assign  w_741_16b  =  w_gray_1_stencil_5_8_8b ;
assign  w_742_16b  =  w_741_16b ;
assign  w_743_16b  = 1'b0;
MULT_16b_pe mult_151 (
  .a(w_742_16b),
  .b(w_743_16b),
  .c(w_744_16b),
  .clk(clk)
);
ADD_16b_pe add_152 (
  .a(w_740_16b),
  .b(w_744_16b),
  .c(w_745_16b),
  .clk(clk)
);
assign  w_746_16b  =  r77_w_p2_sum_xa24_0_16b ;
assign  w_747_16b  =  w_gray_1_stencil_6_8_8b ;
assign  w_748_16b  =  w_747_16b ;
assign  w_749_16b  = 1'b0;
MULT_16b_pe mult_153 (
  .a(w_748_16b),
  .b(w_749_16b),
  .c(w_750_16b),
  .clk(clk)
);
ADD_16b_pe add_154 (
  .a(w_746_16b),
  .b(w_750_16b),
  .c(w_751_16b),
  .clk(clk)
);
assign  w_752_16b  =  r78_w_p2_sum_xa24_0_16b ;
assign  w_753_16b  =  w_gray_1_stencil_7_8_8b ;
assign  w_754_16b  =  w_753_16b ;
assign  w_755_16b  = 1'b0;
MULT_16b_pe mult_155 (
  .a(w_755_16b),
  .b(w_754_16b),
  .c(w_756_16b),
  .clk(clk)
);
ADD_16b_pe add_156 (
  .a(w_756_16b),
  .b(w_752_16b),
  .c(w_757_16b),
  .clk(clk)
);
assign  w_758_16b  =  r79_w_p2_sum_xa24_0_16b ;
assign  w_759_16b  =  w_gray_1_stencil_8_8_8b ;
assign  w_760_16b  =  w_759_16b ;
ADD_16b_pe add_157 (
  .a(w_760_16b),
  .b(w_758_16b),
  .c(w_761_16b),
  .clk(clk)
);
assign  w_762_16b  =  w_gray_1_stencil_4_4_8b ;
assign  w_763_16b  =  w_762_16b ;
assign  w_764_16b  = 1'b0;
MULT_16b_pe mult_158 (
  .a(w_763_16b),
  .b(w_764_16b),
  .c(w_765_16b),
  .clk(clk)
);
assign  w_766_16b  =  r80_w_p2_sum_xa24_0_16b ;
LSHIFT_16b_pe lshift_159 (
  .a(w_766_16b),
  .b(1'b0),
  .c(w_767_16b),
  .clk(clk)
);
assign  w_768_16b  =  w_767_16b ;
assign  w_769_16b  =  w_768_16b ;
SUB_16b_pe sub_160 (
  .a(w_769_16b),
  .b(w_765_16b),
  .c(w_770_16b),
  .clk(clk)
);
assign  w_771_16b  = 1'b0;
MIN_16b_pe min_161 (
  .a(w_771_16b),
  .b(w_770_16b),
  .c(w_772_16b),
  .clk(clk)
);
assign  w_773_16b  =  w_772_16b ;
assign  w_774_16b  =  w_773_16b ;
assign  w_775_16b  = 1'b0;
MULT_16b_pe mult_162 (
  .a(w_775_16b),
  .b(w_774_16b),
  .c(w_776_16b),
  .clk(clk)
);
assign  w_777_16b  = 1'b0;
MAX_16b_pe max_163 (
  .a(w_762_16b),
  .b(w_777_16b),
  .c(w_778_16b),
  .clk(clk)
);
assign  w_779_16b  =  w_778_16b ;
DIV_16b_pe div_164 (
  .a(w_779_16b),
  .b(w_776_16b),
  .c(w_780_16b),
  .clk(clk)
);
MIN_16b_pe min_165 (
  .a(w_771_16b),
  .b(w_780_16b),
  .c(w_781_16b),
  .clk(clk)
);
assign  w_782_16b  =  w_781_16b ;
assign  w_p2_sum_xa24_0_16b  = 1'b0;
assign  w_ratio_1_stencil_0_0_8b  =  w_782_16b ;

endmodule







module kernel__hw_output_1_stencil_stream(
//Inputs
  w_p2_in_bounded_stencil_0_0_0_8b,
  w_p2_in_bounded_stencil_1_0_0_8b,
  w_p2_in_bounded_stencil_2_0_0_8b,
  w_ratio_1_stencil_0_0_8b,
//Outputs
  out_w_hw_output_1_stencil_1_0_0_8b,
  out_w_hw_output_1_stencil_2_0_0_8b,
  out_w_hw_output_1_stencil_packed_16b,

  clk
);

//Inputs
input  w_p2_in_bounded_stencil_1_0_0_8b;
input  w_p2_in_bounded_stencil_0_0_0_8b;
input  w_ratio_1_stencil_0_0_8b;
input  w_p2_in_bounded_stencil_2_0_0_8b;
//Outputs
output  out_w_hw_output_1_stencil_1_0_0_8b;
output  out_w_hw_output_1_stencil_2_0_0_8b;
output  out_w_hw_output_1_stencil_packed_16b;

input  clk;


wire  w_783_16b;
wire  w_784_16b;
wire  w_785_16b;
wire  w_786_16b;
wire  w_787_16b;
wire  w_788_16b;
wire  w_789_16b;
wire  w_790_16b;
wire  w_791_16b;
wire  w_792_16b;
wire  w_793_16b;
wire  w_794_16b;
wire  w_795_16b;
wire  w_796_16b;
wire  w_797_16b;
wire  w_798_16b;
wire  w_799_16b;
wire  w_800_16b;
wire  w_801_16b;
wire  w_802_16b;
wire  w_803_16b;
wire  w_804_16b;
wire  w_805_16b;
wire  w_806_16b;
wire  w_807_16b;
wire  w_808_16b;
wire  w_809_16b;
wire  w_hw_output_1_stencil_0_0_0_8b;
wire  w_hw_output_1_stencil_1_0_0_8b;
wire  w_hw_output_1_stencil_2_0_0_8b;
wire  w_hw_output_1_stencil_packed_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_hw_output_1_stencil_1_0_0_8b = w_hw_output_1_stencil_1_0_0_8b;
assign out_w_hw_output_1_stencil_2_0_0_8b = w_hw_output_1_stencil_2_0_0_8b;
assign out_w_hw_output_1_stencil_packed_16b = w_hw_output_1_stencil_packed_16b;
assign  w_783_16b  =  w_ratio_1_stencil_0_0_8b ;
assign  w_784_16b  =  w_783_16b ;
assign  w_785_16b  =  w_p2_in_bounded_stencil_0_0_0_8b ;
assign  w_786_16b  =  w_785_16b ;
MULT_16b_pe mult_0 (
  .a(w_784_16b),
  .b(w_786_16b),
  .c(w_787_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_1 (
  .a(w_787_16b),
  .b(1'b0),
  .c(w_788_16b),
  .clk(clk)
);
assign  w_789_16b  = 1'b0;
MIN_16b_pe min_2 (
  .a(w_788_16b),
  .b(w_789_16b),
  .c(w_790_16b),
  .clk(clk)
);
assign  w_791_16b  =  w_790_16b ;
assign  w_792_16b  =  w_ratio_1_stencil_0_0_8b ;
assign  w_793_16b  =  w_792_16b ;
assign  w_794_16b  =  w_p2_in_bounded_stencil_1_0_0_8b ;
assign  w_795_16b  =  w_794_16b ;
MULT_16b_pe mult_3 (
  .a(w_793_16b),
  .b(w_795_16b),
  .c(w_796_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_4 (
  .a(1'b0),
  .b(w_796_16b),
  .c(w_797_16b),
  .clk(clk)
);
assign  w_798_16b  = 1'b0;
MIN_16b_pe min_5 (
  .a(w_798_16b),
  .b(w_797_16b),
  .c(w_799_16b),
  .clk(clk)
);
assign  w_800_16b  =  w_799_16b ;
assign  w_801_16b  =  w_ratio_1_stencil_0_0_8b ;
assign  w_802_16b  =  w_801_16b ;
assign  w_803_16b  =  w_p2_in_bounded_stencil_2_0_0_8b ;
assign  w_804_16b  =  w_803_16b ;
MULT_16b_pe mult_6 (
  .a(w_802_16b),
  .b(w_804_16b),
  .c(w_805_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_7 (
  .a(1'b0),
  .b(w_805_16b),
  .c(w_806_16b),
  .clk(clk)
);
assign  w_807_16b  = 1'b0;
MIN_16b_pe min_8 (
  .a(w_807_16b),
  .b(w_806_16b),
  .c(w_808_16b),
  .clk(clk)
);
assign  w_809_16b  =  w_808_16b ;
assign  w_hw_output_1_stencil_0_0_0_8b  =  w_791_16b ;
assign  w_hw_output_1_stencil_1_0_0_8b  =  w_800_16b ;
assign  w_hw_output_1_stencil_2_0_0_8b  =  w_809_16b ;
assign  w_hw_output_1_stencil_packed_16b  =  w_hw_output_1_stencil_0_0_0_8b ;

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


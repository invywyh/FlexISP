// Source:  /home/tema8/projects/Halide-HLS/apps/hls_examples/gaussian_hls/hls_target.cpp 

module top(
//Inputs
  w_p2_in_bounded_stencil_update_stream_0_0_8b,

//Outputs
  w_hw_output_1_stencil_stream_0_0_8b,

  clk
);

//Inputs
input    w_p2_in_bounded_stencil_update_stream_0_0_8b;

//Outputs
output   w_hw_output_1_stencil_stream_0_0_8b;

input   clk;

wire   w_p2_in_bounded_stencil_stream_0_0_8b;
wire   w_p2_in_bounded_stencil_stream_0_1_8b;
wire   w_p2_in_bounded_stencil_stream_0_2_8b;
wire   w_p2_in_bounded_stencil_stream_0_3_8b;
wire   w_p2_in_bounded_stencil_stream_0_4_8b;
wire   w_p2_in_bounded_stencil_stream_0_5_8b;
wire   w_p2_in_bounded_stencil_stream_0_6_8b;
wire   w_p2_in_bounded_stencil_stream_0_7_8b;
wire   w_p2_in_bounded_stencil_stream_0_8_8b;
wire   w_p2_in_bounded_stencil_stream_1_0_8b;
wire   w_p2_in_bounded_stencil_stream_1_1_8b;
wire   w_p2_in_bounded_stencil_stream_1_2_8b;
wire   w_p2_in_bounded_stencil_stream_1_3_8b;
wire   w_p2_in_bounded_stencil_stream_1_4_8b;
wire   w_p2_in_bounded_stencil_stream_1_5_8b;
wire   w_p2_in_bounded_stencil_stream_1_6_8b;
wire   w_p2_in_bounded_stencil_stream_1_7_8b;
wire   w_p2_in_bounded_stencil_stream_1_8_8b;
wire   w_p2_in_bounded_stencil_stream_2_0_8b;
wire   w_p2_in_bounded_stencil_stream_2_1_8b;
wire   w_p2_in_bounded_stencil_stream_2_2_8b;
wire   w_p2_in_bounded_stencil_stream_2_3_8b;
wire   w_p2_in_bounded_stencil_stream_2_4_8b;
wire   w_p2_in_bounded_stencil_stream_2_5_8b;
wire   w_p2_in_bounded_stencil_stream_2_6_8b;
wire   w_p2_in_bounded_stencil_stream_2_7_8b;
wire   w_p2_in_bounded_stencil_stream_2_8_8b;
wire   w_p2_in_bounded_stencil_stream_3_0_8b;
wire   w_p2_in_bounded_stencil_stream_3_1_8b;
wire   w_p2_in_bounded_stencil_stream_3_2_8b;
wire   w_p2_in_bounded_stencil_stream_3_3_8b;
wire   w_p2_in_bounded_stencil_stream_3_4_8b;
wire   w_p2_in_bounded_stencil_stream_3_5_8b;
wire   w_p2_in_bounded_stencil_stream_3_6_8b;
wire   w_p2_in_bounded_stencil_stream_3_7_8b;
wire   w_p2_in_bounded_stencil_stream_3_8_8b;
wire   w_p2_in_bounded_stencil_stream_4_0_8b;
wire   w_p2_in_bounded_stencil_stream_4_1_8b;
wire   w_p2_in_bounded_stencil_stream_4_2_8b;
wire   w_p2_in_bounded_stencil_stream_4_3_8b;
wire   w_p2_in_bounded_stencil_stream_4_4_8b;
wire   w_p2_in_bounded_stencil_stream_4_5_8b;
wire   w_p2_in_bounded_stencil_stream_4_6_8b;
wire   w_p2_in_bounded_stencil_stream_4_7_8b;
wire   w_p2_in_bounded_stencil_stream_4_8_8b;
wire   w_p2_in_bounded_stencil_stream_5_0_8b;
wire   w_p2_in_bounded_stencil_stream_5_1_8b;
wire   w_p2_in_bounded_stencil_stream_5_2_8b;
wire   w_p2_in_bounded_stencil_stream_5_3_8b;
wire   w_p2_in_bounded_stencil_stream_5_4_8b;
wire   w_p2_in_bounded_stencil_stream_5_5_8b;
wire   w_p2_in_bounded_stencil_stream_5_6_8b;
wire   w_p2_in_bounded_stencil_stream_5_7_8b;
wire   w_p2_in_bounded_stencil_stream_5_8_8b;
wire   w_p2_in_bounded_stencil_stream_6_0_8b;
wire   w_p2_in_bounded_stencil_stream_6_1_8b;
wire   w_p2_in_bounded_stencil_stream_6_2_8b;
wire   w_p2_in_bounded_stencil_stream_6_3_8b;
wire   w_p2_in_bounded_stencil_stream_6_4_8b;
wire   w_p2_in_bounded_stencil_stream_6_5_8b;
wire   w_p2_in_bounded_stencil_stream_6_6_8b;
wire   w_p2_in_bounded_stencil_stream_6_7_8b;
wire   w_p2_in_bounded_stencil_stream_6_8_8b;
wire   w_p2_in_bounded_stencil_stream_7_0_8b;
wire   w_p2_in_bounded_stencil_stream_7_1_8b;
wire   w_p2_in_bounded_stencil_stream_7_2_8b;
wire   w_p2_in_bounded_stencil_stream_7_3_8b;
wire   w_p2_in_bounded_stencil_stream_7_4_8b;
wire   w_p2_in_bounded_stencil_stream_7_5_8b;
wire   w_p2_in_bounded_stencil_stream_7_6_8b;
wire   w_p2_in_bounded_stencil_stream_7_7_8b;
wire   w_p2_in_bounded_stencil_stream_7_8_8b;
wire   w_p2_in_bounded_stencil_stream_8_0_8b;
wire   w_p2_in_bounded_stencil_stream_8_1_8b;
wire   w_p2_in_bounded_stencil_stream_8_2_8b;
wire   w_p2_in_bounded_stencil_stream_8_3_8b;
wire   w_p2_in_bounded_stencil_stream_8_4_8b;
wire   w_p2_in_bounded_stencil_stream_8_5_8b;
wire   w_p2_in_bounded_stencil_stream_8_6_8b;
wire   w_p2_in_bounded_stencil_stream_8_7_8b;
wire   w_p2_in_bounded_stencil_stream_8_8_8b;

wire   gnd;
assign gnd=1'b0;

LB_9_9_1_8bit_False LB__p2_in_bounded_stencil_stream (
    .clk(clk),

    .in0(w_p2_in_bounded_stencil_update_stream_0_0_8b),

    .out0(w_p2_in_bounded_stencil_stream_0_0_8b),
    .out1(w_p2_in_bounded_stencil_stream_0_1_8b),
    .out2(w_p2_in_bounded_stencil_stream_0_2_8b),
    .out3(w_p2_in_bounded_stencil_stream_0_3_8b),
    .out4(w_p2_in_bounded_stencil_stream_0_4_8b),
    .out5(w_p2_in_bounded_stencil_stream_0_5_8b),
    .out6(w_p2_in_bounded_stencil_stream_0_6_8b),
    .out7(w_p2_in_bounded_stencil_stream_0_7_8b),
    .out8(w_p2_in_bounded_stencil_stream_0_8_8b),
    .out9(w_p2_in_bounded_stencil_stream_1_0_8b),
    .out10(w_p2_in_bounded_stencil_stream_1_1_8b),
    .out11(w_p2_in_bounded_stencil_stream_1_2_8b),
    .out12(w_p2_in_bounded_stencil_stream_1_3_8b),
    .out13(w_p2_in_bounded_stencil_stream_1_4_8b),
    .out14(w_p2_in_bounded_stencil_stream_1_5_8b),
    .out15(w_p2_in_bounded_stencil_stream_1_6_8b),
    .out16(w_p2_in_bounded_stencil_stream_1_7_8b),
    .out17(w_p2_in_bounded_stencil_stream_1_8_8b),
    .out18(w_p2_in_bounded_stencil_stream_2_0_8b),
    .out19(w_p2_in_bounded_stencil_stream_2_1_8b),
    .out20(w_p2_in_bounded_stencil_stream_2_2_8b),
    .out21(w_p2_in_bounded_stencil_stream_2_3_8b),
    .out22(w_p2_in_bounded_stencil_stream_2_4_8b),
    .out23(w_p2_in_bounded_stencil_stream_2_5_8b),
    .out24(w_p2_in_bounded_stencil_stream_2_6_8b),
    .out25(w_p2_in_bounded_stencil_stream_2_7_8b),
    .out26(w_p2_in_bounded_stencil_stream_2_8_8b),
    .out27(w_p2_in_bounded_stencil_stream_3_0_8b),
    .out28(w_p2_in_bounded_stencil_stream_3_1_8b),
    .out29(w_p2_in_bounded_stencil_stream_3_2_8b),
    .out30(w_p2_in_bounded_stencil_stream_3_3_8b),
    .out31(w_p2_in_bounded_stencil_stream_3_4_8b),
    .out32(w_p2_in_bounded_stencil_stream_3_5_8b),
    .out33(w_p2_in_bounded_stencil_stream_3_6_8b),
    .out34(w_p2_in_bounded_stencil_stream_3_7_8b),
    .out35(w_p2_in_bounded_stencil_stream_3_8_8b),
    .out36(w_p2_in_bounded_stencil_stream_4_0_8b),
    .out37(w_p2_in_bounded_stencil_stream_4_1_8b),
    .out38(w_p2_in_bounded_stencil_stream_4_2_8b),
    .out39(w_p2_in_bounded_stencil_stream_4_3_8b),
    .out40(w_p2_in_bounded_stencil_stream_4_4_8b),
    .out41(w_p2_in_bounded_stencil_stream_4_5_8b),
    .out42(w_p2_in_bounded_stencil_stream_4_6_8b),
    .out43(w_p2_in_bounded_stencil_stream_4_7_8b),
    .out44(w_p2_in_bounded_stencil_stream_4_8_8b),
    .out45(w_p2_in_bounded_stencil_stream_5_0_8b),
    .out46(w_p2_in_bounded_stencil_stream_5_1_8b),
    .out47(w_p2_in_bounded_stencil_stream_5_2_8b),
    .out48(w_p2_in_bounded_stencil_stream_5_3_8b),
    .out49(w_p2_in_bounded_stencil_stream_5_4_8b),
    .out50(w_p2_in_bounded_stencil_stream_5_5_8b),
    .out51(w_p2_in_bounded_stencil_stream_5_6_8b),
    .out52(w_p2_in_bounded_stencil_stream_5_7_8b),
    .out53(w_p2_in_bounded_stencil_stream_5_8_8b),
    .out54(w_p2_in_bounded_stencil_stream_6_0_8b),
    .out55(w_p2_in_bounded_stencil_stream_6_1_8b),
    .out56(w_p2_in_bounded_stencil_stream_6_2_8b),
    .out57(w_p2_in_bounded_stencil_stream_6_3_8b),
    .out58(w_p2_in_bounded_stencil_stream_6_4_8b),
    .out59(w_p2_in_bounded_stencil_stream_6_5_8b),
    .out60(w_p2_in_bounded_stencil_stream_6_6_8b),
    .out61(w_p2_in_bounded_stencil_stream_6_7_8b),
    .out62(w_p2_in_bounded_stencil_stream_6_8_8b),
    .out63(w_p2_in_bounded_stencil_stream_7_0_8b),
    .out64(w_p2_in_bounded_stencil_stream_7_1_8b),
    .out65(w_p2_in_bounded_stencil_stream_7_2_8b),
    .out66(w_p2_in_bounded_stencil_stream_7_3_8b),
    .out67(w_p2_in_bounded_stencil_stream_7_4_8b),
    .out68(w_p2_in_bounded_stencil_stream_7_5_8b),
    .out69(w_p2_in_bounded_stencil_stream_7_6_8b),
    .out70(w_p2_in_bounded_stencil_stream_7_7_8b),
    .out71(w_p2_in_bounded_stencil_stream_7_8_8b),
    .out72(w_p2_in_bounded_stencil_stream_8_0_8b),
    .out73(w_p2_in_bounded_stencil_stream_8_1_8b),
    .out74(w_p2_in_bounded_stencil_stream_8_2_8b),
    .out75(w_p2_in_bounded_stencil_stream_8_3_8b),
    .out76(w_p2_in_bounded_stencil_stream_8_4_8b),
    .out77(w_p2_in_bounded_stencil_stream_8_5_8b),
    .out78(w_p2_in_bounded_stencil_stream_8_6_8b),
    .out79(w_p2_in_bounded_stencil_stream_8_7_8b),
    .out80(w_p2_in_bounded_stencil_stream_8_8_8b)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_p2_in_bounded_stencil_0_0_8b(w_p2_in_bounded_stencil_stream_0_0_8b),
    .w_p2_in_bounded_stencil_0_1_8b(w_p2_in_bounded_stencil_stream_0_1_8b),
    .w_p2_in_bounded_stencil_0_2_8b(w_p2_in_bounded_stencil_stream_0_2_8b),
    .w_p2_in_bounded_stencil_0_3_8b(w_p2_in_bounded_stencil_stream_0_3_8b),
    .w_p2_in_bounded_stencil_0_4_8b(w_p2_in_bounded_stencil_stream_0_4_8b),
    .w_p2_in_bounded_stencil_0_5_8b(w_p2_in_bounded_stencil_stream_0_5_8b),
    .w_p2_in_bounded_stencil_0_6_8b(w_p2_in_bounded_stencil_stream_0_6_8b),
    .w_p2_in_bounded_stencil_0_7_8b(w_p2_in_bounded_stencil_stream_0_7_8b),
    .w_p2_in_bounded_stencil_0_8_8b(w_p2_in_bounded_stencil_stream_0_8_8b),
    .w_p2_in_bounded_stencil_1_0_8b(w_p2_in_bounded_stencil_stream_1_0_8b),
    .w_p2_in_bounded_stencil_1_1_8b(w_p2_in_bounded_stencil_stream_1_1_8b),
    .w_p2_in_bounded_stencil_1_2_8b(w_p2_in_bounded_stencil_stream_1_2_8b),
    .w_p2_in_bounded_stencil_1_3_8b(w_p2_in_bounded_stencil_stream_1_3_8b),
    .w_p2_in_bounded_stencil_1_4_8b(w_p2_in_bounded_stencil_stream_1_4_8b),
    .w_p2_in_bounded_stencil_1_5_8b(w_p2_in_bounded_stencil_stream_1_5_8b),
    .w_p2_in_bounded_stencil_1_6_8b(w_p2_in_bounded_stencil_stream_1_6_8b),
    .w_p2_in_bounded_stencil_1_7_8b(w_p2_in_bounded_stencil_stream_1_7_8b),
    .w_p2_in_bounded_stencil_1_8_8b(w_p2_in_bounded_stencil_stream_1_8_8b),
    .w_p2_in_bounded_stencil_2_0_8b(w_p2_in_bounded_stencil_stream_2_0_8b),
    .w_p2_in_bounded_stencil_2_1_8b(w_p2_in_bounded_stencil_stream_2_1_8b),
    .w_p2_in_bounded_stencil_2_2_8b(w_p2_in_bounded_stencil_stream_2_2_8b),
    .w_p2_in_bounded_stencil_2_3_8b(w_p2_in_bounded_stencil_stream_2_3_8b),
    .w_p2_in_bounded_stencil_2_4_8b(w_p2_in_bounded_stencil_stream_2_4_8b),
    .w_p2_in_bounded_stencil_2_5_8b(w_p2_in_bounded_stencil_stream_2_5_8b),
    .w_p2_in_bounded_stencil_2_6_8b(w_p2_in_bounded_stencil_stream_2_6_8b),
    .w_p2_in_bounded_stencil_2_7_8b(w_p2_in_bounded_stencil_stream_2_7_8b),
    .w_p2_in_bounded_stencil_2_8_8b(w_p2_in_bounded_stencil_stream_2_8_8b),
    .w_p2_in_bounded_stencil_3_0_8b(w_p2_in_bounded_stencil_stream_3_0_8b),
    .w_p2_in_bounded_stencil_3_1_8b(w_p2_in_bounded_stencil_stream_3_1_8b),
    .w_p2_in_bounded_stencil_3_2_8b(w_p2_in_bounded_stencil_stream_3_2_8b),
    .w_p2_in_bounded_stencil_3_3_8b(w_p2_in_bounded_stencil_stream_3_3_8b),
    .w_p2_in_bounded_stencil_3_4_8b(w_p2_in_bounded_stencil_stream_3_4_8b),
    .w_p2_in_bounded_stencil_3_5_8b(w_p2_in_bounded_stencil_stream_3_5_8b),
    .w_p2_in_bounded_stencil_3_6_8b(w_p2_in_bounded_stencil_stream_3_6_8b),
    .w_p2_in_bounded_stencil_3_7_8b(w_p2_in_bounded_stencil_stream_3_7_8b),
    .w_p2_in_bounded_stencil_3_8_8b(w_p2_in_bounded_stencil_stream_3_8_8b),
    .w_p2_in_bounded_stencil_4_0_8b(w_p2_in_bounded_stencil_stream_4_0_8b),
    .w_p2_in_bounded_stencil_4_1_8b(w_p2_in_bounded_stencil_stream_4_1_8b),
    .w_p2_in_bounded_stencil_4_2_8b(w_p2_in_bounded_stencil_stream_4_2_8b),
    .w_p2_in_bounded_stencil_4_3_8b(w_p2_in_bounded_stencil_stream_4_3_8b),
    .w_p2_in_bounded_stencil_4_4_8b(w_p2_in_bounded_stencil_stream_4_4_8b),
    .w_p2_in_bounded_stencil_4_5_8b(w_p2_in_bounded_stencil_stream_4_5_8b),
    .w_p2_in_bounded_stencil_4_6_8b(w_p2_in_bounded_stencil_stream_4_6_8b),
    .w_p2_in_bounded_stencil_4_7_8b(w_p2_in_bounded_stencil_stream_4_7_8b),
    .w_p2_in_bounded_stencil_4_8_8b(w_p2_in_bounded_stencil_stream_4_8_8b),
    .w_p2_in_bounded_stencil_5_0_8b(w_p2_in_bounded_stencil_stream_5_0_8b),
    .w_p2_in_bounded_stencil_5_1_8b(w_p2_in_bounded_stencil_stream_5_1_8b),
    .w_p2_in_bounded_stencil_5_2_8b(w_p2_in_bounded_stencil_stream_5_2_8b),
    .w_p2_in_bounded_stencil_5_3_8b(w_p2_in_bounded_stencil_stream_5_3_8b),
    .w_p2_in_bounded_stencil_5_4_8b(w_p2_in_bounded_stencil_stream_5_4_8b),
    .w_p2_in_bounded_stencil_5_5_8b(w_p2_in_bounded_stencil_stream_5_5_8b),
    .w_p2_in_bounded_stencil_5_6_8b(w_p2_in_bounded_stencil_stream_5_6_8b),
    .w_p2_in_bounded_stencil_5_7_8b(w_p2_in_bounded_stencil_stream_5_7_8b),
    .w_p2_in_bounded_stencil_5_8_8b(w_p2_in_bounded_stencil_stream_5_8_8b),
    .w_p2_in_bounded_stencil_6_0_8b(w_p2_in_bounded_stencil_stream_6_0_8b),
    .w_p2_in_bounded_stencil_6_1_8b(w_p2_in_bounded_stencil_stream_6_1_8b),
    .w_p2_in_bounded_stencil_6_2_8b(w_p2_in_bounded_stencil_stream_6_2_8b),
    .w_p2_in_bounded_stencil_6_3_8b(w_p2_in_bounded_stencil_stream_6_3_8b),
    .w_p2_in_bounded_stencil_6_4_8b(w_p2_in_bounded_stencil_stream_6_4_8b),
    .w_p2_in_bounded_stencil_6_5_8b(w_p2_in_bounded_stencil_stream_6_5_8b),
    .w_p2_in_bounded_stencil_6_6_8b(w_p2_in_bounded_stencil_stream_6_6_8b),
    .w_p2_in_bounded_stencil_6_7_8b(w_p2_in_bounded_stencil_stream_6_7_8b),
    .w_p2_in_bounded_stencil_6_8_8b(w_p2_in_bounded_stencil_stream_6_8_8b),
    .w_p2_in_bounded_stencil_7_0_8b(w_p2_in_bounded_stencil_stream_7_0_8b),
    .w_p2_in_bounded_stencil_7_1_8b(w_p2_in_bounded_stencil_stream_7_1_8b),
    .w_p2_in_bounded_stencil_7_2_8b(w_p2_in_bounded_stencil_stream_7_2_8b),
    .w_p2_in_bounded_stencil_7_3_8b(w_p2_in_bounded_stencil_stream_7_3_8b),
    .w_p2_in_bounded_stencil_7_4_8b(w_p2_in_bounded_stencil_stream_7_4_8b),
    .w_p2_in_bounded_stencil_7_5_8b(w_p2_in_bounded_stencil_stream_7_5_8b),
    .w_p2_in_bounded_stencil_7_6_8b(w_p2_in_bounded_stencil_stream_7_6_8b),
    .w_p2_in_bounded_stencil_7_7_8b(w_p2_in_bounded_stencil_stream_7_7_8b),
    .w_p2_in_bounded_stencil_7_8_8b(w_p2_in_bounded_stencil_stream_7_8_8b),
    .w_p2_in_bounded_stencil_8_0_8b(w_p2_in_bounded_stencil_stream_8_0_8b),
    .w_p2_in_bounded_stencil_8_1_8b(w_p2_in_bounded_stencil_stream_8_1_8b),
    .w_p2_in_bounded_stencil_8_2_8b(w_p2_in_bounded_stencil_stream_8_2_8b),
    .w_p2_in_bounded_stencil_8_3_8b(w_p2_in_bounded_stencil_stream_8_3_8b),
    .w_p2_in_bounded_stencil_8_4_8b(w_p2_in_bounded_stencil_stream_8_4_8b),
    .w_p2_in_bounded_stencil_8_5_8b(w_p2_in_bounded_stencil_stream_8_5_8b),
    .w_p2_in_bounded_stencil_8_6_8b(w_p2_in_bounded_stencil_stream_8_6_8b),
    .w_p2_in_bounded_stencil_8_7_8b(w_p2_in_bounded_stencil_stream_8_7_8b),
    .w_p2_in_bounded_stencil_8_8_8b(w_p2_in_bounded_stencil_stream_8_8_8b),

    .out_w_hw_output_1_stencil_packed_16b(w_hw_output_1_stencil_stream_0_0_8b),

    .clk(clk)
);

endmodule



module kernel__hw_output_1_stencil_stream(
//Inputs
  w_p2_in_bounded_stencil_0_0_8b,
  w_p2_in_bounded_stencil_0_1_8b,
  w_p2_in_bounded_stencil_0_2_8b,
  w_p2_in_bounded_stencil_0_3_8b,
  w_p2_in_bounded_stencil_0_4_8b,
  w_p2_in_bounded_stencil_0_5_8b,
  w_p2_in_bounded_stencil_0_6_8b,
  w_p2_in_bounded_stencil_0_7_8b,
  w_p2_in_bounded_stencil_0_8_8b,
  w_p2_in_bounded_stencil_1_0_8b,
  w_p2_in_bounded_stencil_1_1_8b,
  w_p2_in_bounded_stencil_1_2_8b,
  w_p2_in_bounded_stencil_1_3_8b,
  w_p2_in_bounded_stencil_1_4_8b,
  w_p2_in_bounded_stencil_1_5_8b,
  w_p2_in_bounded_stencil_1_6_8b,
  w_p2_in_bounded_stencil_1_7_8b,
  w_p2_in_bounded_stencil_1_8_8b,
  w_p2_in_bounded_stencil_2_0_8b,
  w_p2_in_bounded_stencil_2_1_8b,
  w_p2_in_bounded_stencil_2_2_8b,
  w_p2_in_bounded_stencil_2_3_8b,
  w_p2_in_bounded_stencil_2_4_8b,
  w_p2_in_bounded_stencil_2_5_8b,
  w_p2_in_bounded_stencil_2_6_8b,
  w_p2_in_bounded_stencil_2_7_8b,
  w_p2_in_bounded_stencil_2_8_8b,
  w_p2_in_bounded_stencil_3_0_8b,
  w_p2_in_bounded_stencil_3_1_8b,
  w_p2_in_bounded_stencil_3_2_8b,
  w_p2_in_bounded_stencil_3_3_8b,
  w_p2_in_bounded_stencil_3_4_8b,
  w_p2_in_bounded_stencil_3_5_8b,
  w_p2_in_bounded_stencil_3_6_8b,
  w_p2_in_bounded_stencil_3_7_8b,
  w_p2_in_bounded_stencil_3_8_8b,
  w_p2_in_bounded_stencil_4_0_8b,
  w_p2_in_bounded_stencil_4_1_8b,
  w_p2_in_bounded_stencil_4_2_8b,
  w_p2_in_bounded_stencil_4_3_8b,
  w_p2_in_bounded_stencil_4_4_8b,
  w_p2_in_bounded_stencil_4_5_8b,
  w_p2_in_bounded_stencil_4_6_8b,
  w_p2_in_bounded_stencil_4_7_8b,
  w_p2_in_bounded_stencil_4_8_8b,
  w_p2_in_bounded_stencil_5_0_8b,
  w_p2_in_bounded_stencil_5_1_8b,
  w_p2_in_bounded_stencil_5_2_8b,
  w_p2_in_bounded_stencil_5_3_8b,
  w_p2_in_bounded_stencil_5_4_8b,
  w_p2_in_bounded_stencil_5_5_8b,
  w_p2_in_bounded_stencil_5_6_8b,
  w_p2_in_bounded_stencil_5_7_8b,
  w_p2_in_bounded_stencil_5_8_8b,
  w_p2_in_bounded_stencil_6_0_8b,
  w_p2_in_bounded_stencil_6_1_8b,
  w_p2_in_bounded_stencil_6_2_8b,
  w_p2_in_bounded_stencil_6_3_8b,
  w_p2_in_bounded_stencil_6_4_8b,
  w_p2_in_bounded_stencil_6_5_8b,
  w_p2_in_bounded_stencil_6_6_8b,
  w_p2_in_bounded_stencil_6_7_8b,
  w_p2_in_bounded_stencil_6_8_8b,
  w_p2_in_bounded_stencil_7_0_8b,
  w_p2_in_bounded_stencil_7_1_8b,
  w_p2_in_bounded_stencil_7_2_8b,
  w_p2_in_bounded_stencil_7_3_8b,
  w_p2_in_bounded_stencil_7_4_8b,
  w_p2_in_bounded_stencil_7_5_8b,
  w_p2_in_bounded_stencil_7_6_8b,
  w_p2_in_bounded_stencil_7_7_8b,
  w_p2_in_bounded_stencil_7_8_8b,
  w_p2_in_bounded_stencil_8_0_8b,
  w_p2_in_bounded_stencil_8_1_8b,
  w_p2_in_bounded_stencil_8_2_8b,
  w_p2_in_bounded_stencil_8_3_8b,
  w_p2_in_bounded_stencil_8_4_8b,
  w_p2_in_bounded_stencil_8_5_8b,
  w_p2_in_bounded_stencil_8_6_8b,
  w_p2_in_bounded_stencil_8_7_8b,
  w_p2_in_bounded_stencil_8_8_8b,
//Outputs
  out_w_hw_output_1_stencil_packed_16b,

  clk
);

//Inputs
input  w_p2_in_bounded_stencil_6_8_8b;
input  w_p2_in_bounded_stencil_5_7_8b;
input  w_p2_in_bounded_stencil_5_5_8b;
input  w_p2_in_bounded_stencil_5_4_8b;
input  w_p2_in_bounded_stencil_5_3_8b;
input  w_p2_in_bounded_stencil_2_2_8b;
input  w_p2_in_bounded_stencil_5_1_8b;
input  w_p2_in_bounded_stencil_3_8_8b;
input  w_p2_in_bounded_stencil_6_0_8b;
input  w_p2_in_bounded_stencil_6_1_8b;
input  w_p2_in_bounded_stencil_6_2_8b;
input  w_p2_in_bounded_stencil_6_3_8b;
input  w_p2_in_bounded_stencil_6_4_8b;
input  w_p2_in_bounded_stencil_6_5_8b;
input  w_p2_in_bounded_stencil_6_6_8b;
input  w_p2_in_bounded_stencil_6_7_8b;
input  w_p2_in_bounded_stencil_2_4_8b;
input  w_p2_in_bounded_stencil_2_5_8b;
input  w_p2_in_bounded_stencil_2_6_8b;
input  w_p2_in_bounded_stencil_2_7_8b;
input  w_p2_in_bounded_stencil_2_0_8b;
input  w_p2_in_bounded_stencil_2_1_8b;
input  w_p2_in_bounded_stencil_4_8_8b;
input  w_p2_in_bounded_stencil_2_3_8b;
input  w_p2_in_bounded_stencil_4_6_8b;
input  w_p2_in_bounded_stencil_4_7_8b;
input  w_p2_in_bounded_stencil_4_4_8b;
input  w_p2_in_bounded_stencil_4_5_8b;
input  w_p2_in_bounded_stencil_4_2_8b;
input  w_p2_in_bounded_stencil_4_3_8b;
input  w_p2_in_bounded_stencil_4_0_8b;
input  w_p2_in_bounded_stencil_4_1_8b;
input  w_p2_in_bounded_stencil_7_1_8b;
input  w_p2_in_bounded_stencil_3_6_8b;
input  w_p2_in_bounded_stencil_3_7_8b;
input  w_p2_in_bounded_stencil_7_0_8b;
input  w_p2_in_bounded_stencil_3_1_8b;
input  w_p2_in_bounded_stencil_5_0_8b;
input  w_p2_in_bounded_stencil_8_0_8b;
input  w_p2_in_bounded_stencil_3_0_8b;
input  w_p2_in_bounded_stencil_7_2_8b;
input  w_p2_in_bounded_stencil_3_3_8b;
input  w_p2_in_bounded_stencil_5_2_8b;
input  w_p2_in_bounded_stencil_7_5_8b;
input  w_p2_in_bounded_stencil_3_2_8b;
input  w_p2_in_bounded_stencil_7_4_8b;
input  w_p2_in_bounded_stencil_5_6_8b;
input  w_p2_in_bounded_stencil_7_7_8b;
input  w_p2_in_bounded_stencil_3_4_8b;
input  w_p2_in_bounded_stencil_7_6_8b;
input  w_p2_in_bounded_stencil_7_3_8b;
input  w_p2_in_bounded_stencil_7_8_8b;
input  w_p2_in_bounded_stencil_5_8_8b;
input  w_p2_in_bounded_stencil_8_8_8b;
input  w_p2_in_bounded_stencil_1_3_8b;
input  w_p2_in_bounded_stencil_1_2_8b;
input  w_p2_in_bounded_stencil_1_1_8b;
input  w_p2_in_bounded_stencil_1_0_8b;
input  w_p2_in_bounded_stencil_1_7_8b;
input  w_p2_in_bounded_stencil_1_6_8b;
input  w_p2_in_bounded_stencil_1_5_8b;
input  w_p2_in_bounded_stencil_1_4_8b;
input  w_p2_in_bounded_stencil_3_5_8b;
input  w_p2_in_bounded_stencil_1_8_8b;
input  w_p2_in_bounded_stencil_2_8_8b;
input  w_p2_in_bounded_stencil_8_2_8b;
input  w_p2_in_bounded_stencil_8_3_8b;
input  w_p2_in_bounded_stencil_0_8_8b;
input  w_p2_in_bounded_stencil_8_1_8b;
input  w_p2_in_bounded_stencil_8_6_8b;
input  w_p2_in_bounded_stencil_8_7_8b;
input  w_p2_in_bounded_stencil_8_4_8b;
input  w_p2_in_bounded_stencil_8_5_8b;
input  w_p2_in_bounded_stencil_0_2_8b;
input  w_p2_in_bounded_stencil_0_3_8b;
input  w_p2_in_bounded_stencil_0_0_8b;
input  w_p2_in_bounded_stencil_0_1_8b;
input  w_p2_in_bounded_stencil_0_6_8b;
input  w_p2_in_bounded_stencil_0_7_8b;
input  w_p2_in_bounded_stencil_0_4_8b;
input  w_p2_in_bounded_stencil_0_5_8b;
//Outputs
output  out_w_hw_output_1_stencil_packed_16b;

input  clk;


wire  r0_w_p2_sum_xa12_0_16b;
wire  r10_w_p2_sum_xa12_0_16b;
wire  r11_w_p2_sum_xa12_0_16b;
wire  r12_w_p2_sum_xa12_0_16b;
wire  r13_w_p2_sum_xa12_0_16b;
wire  r14_w_p2_sum_xa12_0_16b;
wire  r15_w_p2_sum_xa12_0_16b;
wire  r16_w_p2_sum_xa12_0_16b;
wire  r17_w_p2_sum_xa12_0_16b;
wire  r18_w_p2_sum_xa12_0_16b;
wire  r19_w_p2_sum_xa12_0_16b;
wire  r1_w_p2_sum_xa12_0_16b;
wire  r20_w_p2_sum_xa12_0_16b;
wire  r21_w_p2_sum_xa12_0_16b;
wire  r22_w_p2_sum_xa12_0_16b;
wire  r23_w_p2_sum_xa12_0_16b;
wire  r24_w_p2_sum_xa12_0_16b;
wire  r25_w_p2_sum_xa12_0_16b;
wire  r26_w_p2_sum_xa12_0_16b;
wire  r27_w_p2_sum_xa12_0_16b;
wire  r28_w_p2_sum_xa12_0_16b;
wire  r29_w_p2_sum_xa12_0_16b;
wire  r2_w_p2_sum_xa12_0_16b;
wire  r30_w_p2_sum_xa12_0_16b;
wire  r31_w_p2_sum_xa12_0_16b;
wire  r32_w_p2_sum_xa12_0_16b;
wire  r33_w_p2_sum_xa12_0_16b;
wire  r34_w_p2_sum_xa12_0_16b;
wire  r35_w_p2_sum_xa12_0_16b;
wire  r36_w_p2_sum_xa12_0_16b;
wire  r37_w_p2_sum_xa12_0_16b;
wire  r38_w_p2_sum_xa12_0_16b;
wire  r39_w_p2_sum_xa12_0_16b;
wire  r3_w_p2_sum_xa12_0_16b;
wire  r40_w_p2_sum_xa12_0_16b;
wire  r41_w_p2_sum_xa12_0_16b;
wire  r42_w_p2_sum_xa12_0_16b;
wire  r43_w_p2_sum_xa12_0_16b;
wire  r44_w_p2_sum_xa12_0_16b;
wire  r45_w_p2_sum_xa12_0_16b;
wire  r46_w_p2_sum_xa12_0_16b;
wire  r47_w_p2_sum_xa12_0_16b;
wire  r48_w_p2_sum_xa12_0_16b;
wire  r49_w_p2_sum_xa12_0_16b;
wire  r4_w_p2_sum_xa12_0_16b;
wire  r50_w_p2_sum_xa12_0_16b;
wire  r51_w_p2_sum_xa12_0_16b;
wire  r52_w_p2_sum_xa12_0_16b;
wire  r53_w_p2_sum_xa12_0_16b;
wire  r54_w_p2_sum_xa12_0_16b;
wire  r55_w_p2_sum_xa12_0_16b;
wire  r56_w_p2_sum_xa12_0_16b;
wire  r57_w_p2_sum_xa12_0_16b;
wire  r58_w_p2_sum_xa12_0_16b;
wire  r59_w_p2_sum_xa12_0_16b;
wire  r5_w_p2_sum_xa12_0_16b;
wire  r60_w_p2_sum_xa12_0_16b;
wire  r61_w_p2_sum_xa12_0_16b;
wire  r62_w_p2_sum_xa12_0_16b;
wire  r63_w_p2_sum_xa12_0_16b;
wire  r64_w_p2_sum_xa12_0_16b;
wire  r65_w_p2_sum_xa12_0_16b;
wire  r66_w_p2_sum_xa12_0_16b;
wire  r67_w_p2_sum_xa12_0_16b;
wire  r68_w_p2_sum_xa12_0_16b;
wire  r69_w_p2_sum_xa12_0_16b;
wire  r6_w_p2_sum_xa12_0_16b;
wire  r70_w_p2_sum_xa12_0_16b;
wire  r71_w_p2_sum_xa12_0_16b;
wire  r72_w_p2_sum_xa12_0_16b;
wire  r73_w_p2_sum_xa12_0_16b;
wire  r74_w_p2_sum_xa12_0_16b;
wire  r75_w_p2_sum_xa12_0_16b;
wire  r76_w_p2_sum_xa12_0_16b;
wire  r77_w_p2_sum_xa12_0_16b;
wire  r78_w_p2_sum_xa12_0_16b;
wire  r79_w_p2_sum_xa12_0_16b;
wire  r7_w_p2_sum_xa12_0_16b;
wire  r80_w_p2_sum_xa12_0_16b;
wire  r8_w_p2_sum_xa12_0_16b;
wire  r9_w_p2_sum_xa12_0_16b;
wire  w_198_16b;
wire  w_199_16b;
wire  w_200_16b;
wire  w_201_16b;
wire  w_202_16b;
wire  w_203_16b;
wire  w_204_16b;
wire  w_205_16b;
wire  w_206_16b;
wire  w_207_16b;
wire  w_208_16b;
wire  w_209_16b;
wire  w_210_16b;
wire  w_211_16b;
wire  w_212_16b;
wire  w_213_16b;
wire  w_214_16b;
wire  w_215_16b;
wire  w_216_16b;
wire  w_217_16b;
wire  w_218_16b;
wire  w_219_16b;
wire  w_220_16b;
wire  w_221_16b;
wire  w_222_16b;
wire  w_223_16b;
wire  w_224_16b;
wire  w_225_16b;
wire  w_226_16b;
wire  w_227_16b;
wire  w_228_16b;
wire  w_229_16b;
wire  w_230_16b;
wire  w_231_16b;
wire  w_232_16b;
wire  w_233_16b;
wire  w_234_16b;
wire  w_235_16b;
wire  w_236_16b;
wire  w_237_16b;
wire  w_238_16b;
wire  w_239_16b;
wire  w_240_16b;
wire  w_241_16b;
wire  w_242_16b;
wire  w_243_16b;
wire  w_244_16b;
wire  w_245_16b;
wire  w_246_16b;
wire  w_247_16b;
wire  w_248_16b;
wire  w_249_16b;
wire  w_250_16b;
wire  w_251_16b;
wire  w_252_16b;
wire  w_253_16b;
wire  w_254_16b;
wire  w_255_16b;
wire  w_256_16b;
wire  w_257_16b;
wire  w_258_16b;
wire  w_259_16b;
wire  w_260_16b;
wire  w_261_16b;
wire  w_262_16b;
wire  w_263_16b;
wire  w_264_16b;
wire  w_265_16b;
wire  w_266_16b;
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
wire  w_hw_output_1_stencil_0_0_8b;
wire  w_hw_output_1_stencil_packed_16b;
wire  w_p2_sum_xa12_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_hw_output_1_stencil_packed_16b = w_hw_output_1_stencil_packed_16b;
assign  r0_w_p2_sum_xa12_0_16b  =  w_202_16b ;
assign  r10_w_p2_sum_xa12_0_16b  =  w_260_16b ;
assign  r11_w_p2_sum_xa12_0_16b  =  w_266_16b ;
assign  r12_w_p2_sum_xa12_0_16b  =  w_272_16b ;
assign  r13_w_p2_sum_xa12_0_16b  =  w_278_16b ;
assign  r14_w_p2_sum_xa12_0_16b  =  w_284_16b ;
assign  r15_w_p2_sum_xa12_0_16b  =  w_290_16b ;
assign  r16_w_p2_sum_xa12_0_16b  =  w_296_16b ;
assign  r17_w_p2_sum_xa12_0_16b  =  w_302_16b ;
assign  r18_w_p2_sum_xa12_0_16b  =  w_308_16b ;
assign  r19_w_p2_sum_xa12_0_16b  =  w_314_16b ;
assign  r1_w_p2_sum_xa12_0_16b  =  w_208_16b ;
assign  r20_w_p2_sum_xa12_0_16b  =  w_320_16b ;
assign  r21_w_p2_sum_xa12_0_16b  =  w_326_16b ;
assign  r22_w_p2_sum_xa12_0_16b  =  w_332_16b ;
assign  r23_w_p2_sum_xa12_0_16b  =  w_338_16b ;
assign  r24_w_p2_sum_xa12_0_16b  =  w_344_16b ;
assign  r25_w_p2_sum_xa12_0_16b  =  w_350_16b ;
assign  r26_w_p2_sum_xa12_0_16b  =  w_356_16b ;
assign  r27_w_p2_sum_xa12_0_16b  =  w_362_16b ;
assign  r28_w_p2_sum_xa12_0_16b  =  w_368_16b ;
assign  r29_w_p2_sum_xa12_0_16b  =  w_374_16b ;
assign  r2_w_p2_sum_xa12_0_16b  =  w_214_16b ;
assign  r30_w_p2_sum_xa12_0_16b  =  w_380_16b ;
assign  r31_w_p2_sum_xa12_0_16b  =  w_386_16b ;
assign  r32_w_p2_sum_xa12_0_16b  =  w_392_16b ;
assign  r33_w_p2_sum_xa12_0_16b  =  w_398_16b ;
assign  r34_w_p2_sum_xa12_0_16b  =  w_404_16b ;
assign  r35_w_p2_sum_xa12_0_16b  =  w_410_16b ;
assign  r36_w_p2_sum_xa12_0_16b  =  w_416_16b ;
assign  r37_w_p2_sum_xa12_0_16b  =  w_422_16b ;
assign  r38_w_p2_sum_xa12_0_16b  =  w_428_16b ;
assign  r39_w_p2_sum_xa12_0_16b  =  w_434_16b ;
assign  r3_w_p2_sum_xa12_0_16b  =  w_220_16b ;
assign  r40_w_p2_sum_xa12_0_16b  =  w_440_16b ;
assign  r41_w_p2_sum_xa12_0_16b  =  w_446_16b ;
assign  r42_w_p2_sum_xa12_0_16b  =  w_452_16b ;
assign  r43_w_p2_sum_xa12_0_16b  =  w_458_16b ;
assign  r44_w_p2_sum_xa12_0_16b  =  w_464_16b ;
assign  r45_w_p2_sum_xa12_0_16b  =  w_470_16b ;
assign  r46_w_p2_sum_xa12_0_16b  =  w_476_16b ;
assign  r47_w_p2_sum_xa12_0_16b  =  w_482_16b ;
assign  r48_w_p2_sum_xa12_0_16b  =  w_488_16b ;
assign  r49_w_p2_sum_xa12_0_16b  =  w_494_16b ;
assign  r4_w_p2_sum_xa12_0_16b  =  w_226_16b ;
assign  r50_w_p2_sum_xa12_0_16b  =  w_500_16b ;
assign  r51_w_p2_sum_xa12_0_16b  =  w_506_16b ;
assign  r52_w_p2_sum_xa12_0_16b  =  w_512_16b ;
assign  r53_w_p2_sum_xa12_0_16b  =  w_518_16b ;
assign  r54_w_p2_sum_xa12_0_16b  =  w_524_16b ;
assign  r55_w_p2_sum_xa12_0_16b  =  w_530_16b ;
assign  r56_w_p2_sum_xa12_0_16b  =  w_536_16b ;
assign  r57_w_p2_sum_xa12_0_16b  =  w_542_16b ;
assign  r58_w_p2_sum_xa12_0_16b  =  w_548_16b ;
assign  r59_w_p2_sum_xa12_0_16b  =  w_554_16b ;
assign  r5_w_p2_sum_xa12_0_16b  =  w_232_16b ;
assign  r60_w_p2_sum_xa12_0_16b  =  w_560_16b ;
assign  r61_w_p2_sum_xa12_0_16b  =  w_566_16b ;
assign  r62_w_p2_sum_xa12_0_16b  =  w_572_16b ;
assign  r63_w_p2_sum_xa12_0_16b  =  w_578_16b ;
assign  r64_w_p2_sum_xa12_0_16b  =  w_584_16b ;
assign  r65_w_p2_sum_xa12_0_16b  =  w_590_16b ;
assign  r66_w_p2_sum_xa12_0_16b  =  w_596_16b ;
assign  r67_w_p2_sum_xa12_0_16b  =  w_602_16b ;
assign  r68_w_p2_sum_xa12_0_16b  =  w_608_16b ;
assign  r69_w_p2_sum_xa12_0_16b  =  w_614_16b ;
assign  r6_w_p2_sum_xa12_0_16b  =  w_238_16b ;
assign  r70_w_p2_sum_xa12_0_16b  =  w_620_16b ;
assign  r71_w_p2_sum_xa12_0_16b  =  w_626_16b ;
assign  r72_w_p2_sum_xa12_0_16b  =  w_630_16b ;
assign  r73_w_p2_sum_xa12_0_16b  =  w_636_16b ;
assign  r74_w_p2_sum_xa12_0_16b  =  w_642_16b ;
assign  r75_w_p2_sum_xa12_0_16b  =  w_648_16b ;
assign  r76_w_p2_sum_xa12_0_16b  =  w_654_16b ;
assign  r77_w_p2_sum_xa12_0_16b  =  w_660_16b ;
assign  r78_w_p2_sum_xa12_0_16b  =  w_666_16b ;
assign  r79_w_p2_sum_xa12_0_16b  =  w_672_16b ;
assign  r7_w_p2_sum_xa12_0_16b  =  w_244_16b ;
assign  r80_w_p2_sum_xa12_0_16b  =  w_676_16b ;
assign  r8_w_p2_sum_xa12_0_16b  =  w_248_16b ;
assign  r9_w_p2_sum_xa12_0_16b  =  w_254_16b ;
assign  w_198_16b  = 1'b0;
assign  w_199_16b  = 1'b0;
assign  w_200_16b  =  w_p2_in_bounded_stencil_0_0_8b ;
assign  w_201_16b  =  w_200_16b ;
ADD_16b_pe add_0 (
  .a(w_199_16b),
  .b(w_201_16b),
  .c(w_202_16b),
  .clk(clk)
);
assign  w_203_16b  =  r0_w_p2_sum_xa12_0_16b ;
assign  w_204_16b  =  w_p2_in_bounded_stencil_1_0_8b ;
assign  w_205_16b  =  w_204_16b ;
assign  w_206_16b  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_205_16b),
  .b(w_206_16b),
  .c(w_207_16b),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_203_16b),
  .b(w_207_16b),
  .c(w_208_16b),
  .clk(clk)
);
assign  w_209_16b  =  r1_w_p2_sum_xa12_0_16b ;
assign  w_210_16b  =  w_p2_in_bounded_stencil_2_0_8b ;
assign  w_211_16b  =  w_210_16b ;
assign  w_212_16b  = 1'b0;
MULT_16b_pe mult_3 (
  .a(w_212_16b),
  .b(w_211_16b),
  .c(w_213_16b),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_209_16b),
  .b(w_213_16b),
  .c(w_214_16b),
  .clk(clk)
);
assign  w_215_16b  =  r2_w_p2_sum_xa12_0_16b ;
assign  w_216_16b  =  w_p2_in_bounded_stencil_3_0_8b ;
assign  w_217_16b  =  w_216_16b ;
assign  w_218_16b  = 1'b0;
MULT_16b_pe mult_5 (
  .a(w_218_16b),
  .b(w_217_16b),
  .c(w_219_16b),
  .clk(clk)
);
ADD_16b_pe add_6 (
  .a(w_219_16b),
  .b(w_215_16b),
  .c(w_220_16b),
  .clk(clk)
);
assign  w_221_16b  =  r3_w_p2_sum_xa12_0_16b ;
assign  w_222_16b  =  w_p2_in_bounded_stencil_4_0_8b ;
assign  w_223_16b  =  w_222_16b ;
assign  w_224_16b  = 1'b0;
MULT_16b_pe mult_7 (
  .a(w_224_16b),
  .b(w_223_16b),
  .c(w_225_16b),
  .clk(clk)
);
ADD_16b_pe add_8 (
  .a(w_225_16b),
  .b(w_221_16b),
  .c(w_226_16b),
  .clk(clk)
);
assign  w_227_16b  =  r4_w_p2_sum_xa12_0_16b ;
assign  w_228_16b  =  w_p2_in_bounded_stencil_5_0_8b ;
assign  w_229_16b  =  w_228_16b ;
assign  w_230_16b  = 1'b0;
MULT_16b_pe mult_9 (
  .a(w_230_16b),
  .b(w_229_16b),
  .c(w_231_16b),
  .clk(clk)
);
ADD_16b_pe add_10 (
  .a(w_227_16b),
  .b(w_231_16b),
  .c(w_232_16b),
  .clk(clk)
);
assign  w_233_16b  =  r5_w_p2_sum_xa12_0_16b ;
assign  w_234_16b  =  w_p2_in_bounded_stencil_6_0_8b ;
assign  w_235_16b  =  w_234_16b ;
assign  w_236_16b  = 1'b0;
MULT_16b_pe mult_11 (
  .a(w_235_16b),
  .b(w_236_16b),
  .c(w_237_16b),
  .clk(clk)
);
ADD_16b_pe add_12 (
  .a(w_233_16b),
  .b(w_237_16b),
  .c(w_238_16b),
  .clk(clk)
);
assign  w_239_16b  =  r6_w_p2_sum_xa12_0_16b ;
assign  w_240_16b  =  w_p2_in_bounded_stencil_7_0_8b ;
assign  w_241_16b  =  w_240_16b ;
assign  w_242_16b  = 1'b0;
MULT_16b_pe mult_13 (
  .a(w_241_16b),
  .b(w_242_16b),
  .c(w_243_16b),
  .clk(clk)
);
ADD_16b_pe add_14 (
  .a(w_239_16b),
  .b(w_243_16b),
  .c(w_244_16b),
  .clk(clk)
);
assign  w_245_16b  =  r7_w_p2_sum_xa12_0_16b ;
assign  w_246_16b  =  w_p2_in_bounded_stencil_8_0_8b ;
assign  w_247_16b  =  w_246_16b ;
ADD_16b_pe add_15 (
  .a(w_245_16b),
  .b(w_247_16b),
  .c(w_248_16b),
  .clk(clk)
);
assign  w_249_16b  =  r8_w_p2_sum_xa12_0_16b ;
assign  w_250_16b  =  w_p2_in_bounded_stencil_0_1_8b ;
assign  w_251_16b  =  w_250_16b ;
assign  w_252_16b  = 1'b0;
MULT_16b_pe mult_16 (
  .a(w_252_16b),
  .b(w_251_16b),
  .c(w_253_16b),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_249_16b),
  .b(w_253_16b),
  .c(w_254_16b),
  .clk(clk)
);
assign  w_255_16b  =  r9_w_p2_sum_xa12_0_16b ;
assign  w_256_16b  =  w_p2_in_bounded_stencil_1_1_8b ;
assign  w_257_16b  =  w_256_16b ;
assign  w_258_16b  = 1'b0;
MULT_16b_pe mult_18 (
  .a(w_257_16b),
  .b(w_258_16b),
  .c(w_259_16b),
  .clk(clk)
);
ADD_16b_pe add_19 (
  .a(w_255_16b),
  .b(w_259_16b),
  .c(w_260_16b),
  .clk(clk)
);
assign  w_261_16b  =  r10_w_p2_sum_xa12_0_16b ;
assign  w_262_16b  =  w_p2_in_bounded_stencil_2_1_8b ;
assign  w_263_16b  =  w_262_16b ;
assign  w_264_16b  = 1'b0;
MULT_16b_pe mult_20 (
  .a(w_263_16b),
  .b(w_264_16b),
  .c(w_265_16b),
  .clk(clk)
);
ADD_16b_pe add_21 (
  .a(w_261_16b),
  .b(w_265_16b),
  .c(w_266_16b),
  .clk(clk)
);
assign  w_267_16b  =  r11_w_p2_sum_xa12_0_16b ;
assign  w_268_16b  =  w_p2_in_bounded_stencil_3_1_8b ;
assign  w_269_16b  =  w_268_16b ;
assign  w_270_16b  = 1'b0;
MULT_16b_pe mult_22 (
  .a(w_269_16b),
  .b(w_270_16b),
  .c(w_271_16b),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_267_16b),
  .b(w_271_16b),
  .c(w_272_16b),
  .clk(clk)
);
assign  w_273_16b  =  r12_w_p2_sum_xa12_0_16b ;
assign  w_274_16b  =  w_p2_in_bounded_stencil_4_1_8b ;
assign  w_275_16b  =  w_274_16b ;
assign  w_276_16b  = 1'b0;
MULT_16b_pe mult_24 (
  .a(w_275_16b),
  .b(w_276_16b),
  .c(w_277_16b),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_277_16b),
  .b(w_273_16b),
  .c(w_278_16b),
  .clk(clk)
);
assign  w_279_16b  =  r13_w_p2_sum_xa12_0_16b ;
assign  w_280_16b  =  w_p2_in_bounded_stencil_5_1_8b ;
assign  w_281_16b  =  w_280_16b ;
assign  w_282_16b  = 1'b0;
MULT_16b_pe mult_26 (
  .a(w_281_16b),
  .b(w_282_16b),
  .c(w_283_16b),
  .clk(clk)
);
ADD_16b_pe add_27 (
  .a(w_283_16b),
  .b(w_279_16b),
  .c(w_284_16b),
  .clk(clk)
);
assign  w_285_16b  =  r14_w_p2_sum_xa12_0_16b ;
assign  w_286_16b  =  w_p2_in_bounded_stencil_6_1_8b ;
assign  w_287_16b  =  w_286_16b ;
assign  w_288_16b  = 1'b0;
MULT_16b_pe mult_28 (
  .a(w_288_16b),
  .b(w_287_16b),
  .c(w_289_16b),
  .clk(clk)
);
ADD_16b_pe add_29 (
  .a(w_289_16b),
  .b(w_285_16b),
  .c(w_290_16b),
  .clk(clk)
);
assign  w_291_16b  =  r15_w_p2_sum_xa12_0_16b ;
assign  w_292_16b  =  w_p2_in_bounded_stencil_7_1_8b ;
assign  w_293_16b  =  w_292_16b ;
assign  w_294_16b  = 1'b0;
MULT_16b_pe mult_30 (
  .a(w_293_16b),
  .b(w_294_16b),
  .c(w_295_16b),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_291_16b),
  .b(w_295_16b),
  .c(w_296_16b),
  .clk(clk)
);
assign  w_297_16b  =  r16_w_p2_sum_xa12_0_16b ;
assign  w_298_16b  =  w_p2_in_bounded_stencil_8_1_8b ;
assign  w_299_16b  =  w_298_16b ;
assign  w_300_16b  = 1'b0;
MULT_16b_pe mult_32 (
  .a(w_300_16b),
  .b(w_299_16b),
  .c(w_301_16b),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_301_16b),
  .b(w_297_16b),
  .c(w_302_16b),
  .clk(clk)
);
assign  w_303_16b  =  r17_w_p2_sum_xa12_0_16b ;
assign  w_304_16b  =  w_p2_in_bounded_stencil_0_2_8b ;
assign  w_305_16b  =  w_304_16b ;
assign  w_306_16b  = 1'b0;
MULT_16b_pe mult_34 (
  .a(w_305_16b),
  .b(w_306_16b),
  .c(w_307_16b),
  .clk(clk)
);
ADD_16b_pe add_35 (
  .a(w_303_16b),
  .b(w_307_16b),
  .c(w_308_16b),
  .clk(clk)
);
assign  w_309_16b  =  r18_w_p2_sum_xa12_0_16b ;
assign  w_310_16b  =  w_p2_in_bounded_stencil_1_2_8b ;
assign  w_311_16b  =  w_310_16b ;
assign  w_312_16b  = 1'b0;
MULT_16b_pe mult_36 (
  .a(w_312_16b),
  .b(w_311_16b),
  .c(w_313_16b),
  .clk(clk)
);
ADD_16b_pe add_37 (
  .a(w_309_16b),
  .b(w_313_16b),
  .c(w_314_16b),
  .clk(clk)
);
assign  w_315_16b  =  r19_w_p2_sum_xa12_0_16b ;
assign  w_316_16b  =  w_p2_in_bounded_stencil_2_2_8b ;
assign  w_317_16b  =  w_316_16b ;
assign  w_318_16b  = 1'b0;
MULT_16b_pe mult_38 (
  .a(w_317_16b),
  .b(w_318_16b),
  .c(w_319_16b),
  .clk(clk)
);
ADD_16b_pe add_39 (
  .a(w_315_16b),
  .b(w_319_16b),
  .c(w_320_16b),
  .clk(clk)
);
assign  w_321_16b  =  r20_w_p2_sum_xa12_0_16b ;
assign  w_322_16b  =  w_p2_in_bounded_stencil_3_2_8b ;
assign  w_323_16b  =  w_322_16b ;
assign  w_324_16b  = 1'b0;
MULT_16b_pe mult_40 (
  .a(w_323_16b),
  .b(w_324_16b),
  .c(w_325_16b),
  .clk(clk)
);
ADD_16b_pe add_41 (
  .a(w_321_16b),
  .b(w_325_16b),
  .c(w_326_16b),
  .clk(clk)
);
assign  w_327_16b  =  r21_w_p2_sum_xa12_0_16b ;
assign  w_328_16b  =  w_p2_in_bounded_stencil_4_2_8b ;
assign  w_329_16b  =  w_328_16b ;
assign  w_330_16b  = 1'b0;
MULT_16b_pe mult_42 (
  .a(w_330_16b),
  .b(w_329_16b),
  .c(w_331_16b),
  .clk(clk)
);
ADD_16b_pe add_43 (
  .a(w_331_16b),
  .b(w_327_16b),
  .c(w_332_16b),
  .clk(clk)
);
assign  w_333_16b  =  r22_w_p2_sum_xa12_0_16b ;
assign  w_334_16b  =  w_p2_in_bounded_stencil_5_2_8b ;
assign  w_335_16b  =  w_334_16b ;
assign  w_336_16b  = 1'b0;
MULT_16b_pe mult_44 (
  .a(w_335_16b),
  .b(w_336_16b),
  .c(w_337_16b),
  .clk(clk)
);
ADD_16b_pe add_45 (
  .a(w_333_16b),
  .b(w_337_16b),
  .c(w_338_16b),
  .clk(clk)
);
assign  w_339_16b  =  r23_w_p2_sum_xa12_0_16b ;
assign  w_340_16b  =  w_p2_in_bounded_stencil_6_2_8b ;
assign  w_341_16b  =  w_340_16b ;
assign  w_342_16b  = 1'b0;
MULT_16b_pe mult_46 (
  .a(w_341_16b),
  .b(w_342_16b),
  .c(w_343_16b),
  .clk(clk)
);
ADD_16b_pe add_47 (
  .a(w_339_16b),
  .b(w_343_16b),
  .c(w_344_16b),
  .clk(clk)
);
assign  w_345_16b  =  r24_w_p2_sum_xa12_0_16b ;
assign  w_346_16b  =  w_p2_in_bounded_stencil_7_2_8b ;
assign  w_347_16b  =  w_346_16b ;
assign  w_348_16b  = 1'b0;
MULT_16b_pe mult_48 (
  .a(w_347_16b),
  .b(w_348_16b),
  .c(w_349_16b),
  .clk(clk)
);
ADD_16b_pe add_49 (
  .a(w_345_16b),
  .b(w_349_16b),
  .c(w_350_16b),
  .clk(clk)
);
assign  w_351_16b  =  r25_w_p2_sum_xa12_0_16b ;
assign  w_352_16b  =  w_p2_in_bounded_stencil_8_2_8b ;
assign  w_353_16b  =  w_352_16b ;
assign  w_354_16b  = 1'b0;
MULT_16b_pe mult_50 (
  .a(w_353_16b),
  .b(w_354_16b),
  .c(w_355_16b),
  .clk(clk)
);
ADD_16b_pe add_51 (
  .a(w_351_16b),
  .b(w_355_16b),
  .c(w_356_16b),
  .clk(clk)
);
assign  w_357_16b  =  r26_w_p2_sum_xa12_0_16b ;
assign  w_358_16b  =  w_p2_in_bounded_stencil_0_3_8b ;
assign  w_359_16b  =  w_358_16b ;
assign  w_360_16b  = 1'b0;
MULT_16b_pe mult_52 (
  .a(w_359_16b),
  .b(w_360_16b),
  .c(w_361_16b),
  .clk(clk)
);
ADD_16b_pe add_53 (
  .a(w_357_16b),
  .b(w_361_16b),
  .c(w_362_16b),
  .clk(clk)
);
assign  w_363_16b  =  r27_w_p2_sum_xa12_0_16b ;
assign  w_364_16b  =  w_p2_in_bounded_stencil_1_3_8b ;
assign  w_365_16b  =  w_364_16b ;
assign  w_366_16b  = 1'b0;
MULT_16b_pe mult_54 (
  .a(w_366_16b),
  .b(w_365_16b),
  .c(w_367_16b),
  .clk(clk)
);
ADD_16b_pe add_55 (
  .a(w_367_16b),
  .b(w_363_16b),
  .c(w_368_16b),
  .clk(clk)
);
assign  w_369_16b  =  r28_w_p2_sum_xa12_0_16b ;
assign  w_370_16b  =  w_p2_in_bounded_stencil_2_3_8b ;
assign  w_371_16b  =  w_370_16b ;
assign  w_372_16b  = 1'b0;
MULT_16b_pe mult_56 (
  .a(w_371_16b),
  .b(w_372_16b),
  .c(w_373_16b),
  .clk(clk)
);
ADD_16b_pe add_57 (
  .a(w_373_16b),
  .b(w_369_16b),
  .c(w_374_16b),
  .clk(clk)
);
assign  w_375_16b  =  r29_w_p2_sum_xa12_0_16b ;
assign  w_376_16b  =  w_p2_in_bounded_stencil_3_3_8b ;
assign  w_377_16b  =  w_376_16b ;
assign  w_378_16b  = 1'b0;
MULT_16b_pe mult_58 (
  .a(w_377_16b),
  .b(w_378_16b),
  .c(w_379_16b),
  .clk(clk)
);
ADD_16b_pe add_59 (
  .a(w_375_16b),
  .b(w_379_16b),
  .c(w_380_16b),
  .clk(clk)
);
assign  w_381_16b  =  r30_w_p2_sum_xa12_0_16b ;
assign  w_382_16b  =  w_p2_in_bounded_stencil_4_3_8b ;
assign  w_383_16b  =  w_382_16b ;
assign  w_384_16b  = 1'b0;
MULT_16b_pe mult_60 (
  .a(w_383_16b),
  .b(w_384_16b),
  .c(w_385_16b),
  .clk(clk)
);
ADD_16b_pe add_61 (
  .a(w_381_16b),
  .b(w_385_16b),
  .c(w_386_16b),
  .clk(clk)
);
assign  w_387_16b  =  r31_w_p2_sum_xa12_0_16b ;
assign  w_388_16b  =  w_p2_in_bounded_stencil_5_3_8b ;
assign  w_389_16b  =  w_388_16b ;
assign  w_390_16b  = 1'b0;
MULT_16b_pe mult_62 (
  .a(w_389_16b),
  .b(w_390_16b),
  .c(w_391_16b),
  .clk(clk)
);
ADD_16b_pe add_63 (
  .a(w_391_16b),
  .b(w_387_16b),
  .c(w_392_16b),
  .clk(clk)
);
assign  w_393_16b  =  r32_w_p2_sum_xa12_0_16b ;
assign  w_394_16b  =  w_p2_in_bounded_stencil_6_3_8b ;
assign  w_395_16b  =  w_394_16b ;
assign  w_396_16b  = 1'b0;
MULT_16b_pe mult_64 (
  .a(w_396_16b),
  .b(w_395_16b),
  .c(w_397_16b),
  .clk(clk)
);
ADD_16b_pe add_65 (
  .a(w_397_16b),
  .b(w_393_16b),
  .c(w_398_16b),
  .clk(clk)
);
assign  w_399_16b  =  r33_w_p2_sum_xa12_0_16b ;
assign  w_400_16b  =  w_p2_in_bounded_stencil_7_3_8b ;
assign  w_401_16b  =  w_400_16b ;
assign  w_402_16b  = 1'b0;
MULT_16b_pe mult_66 (
  .a(w_402_16b),
  .b(w_401_16b),
  .c(w_403_16b),
  .clk(clk)
);
ADD_16b_pe add_67 (
  .a(w_403_16b),
  .b(w_399_16b),
  .c(w_404_16b),
  .clk(clk)
);
assign  w_405_16b  =  r34_w_p2_sum_xa12_0_16b ;
assign  w_406_16b  =  w_p2_in_bounded_stencil_8_3_8b ;
assign  w_407_16b  =  w_406_16b ;
assign  w_408_16b  = 1'b0;
MULT_16b_pe mult_68 (
  .a(w_407_16b),
  .b(w_408_16b),
  .c(w_409_16b),
  .clk(clk)
);
ADD_16b_pe add_69 (
  .a(w_405_16b),
  .b(w_409_16b),
  .c(w_410_16b),
  .clk(clk)
);
assign  w_411_16b  =  r35_w_p2_sum_xa12_0_16b ;
assign  w_412_16b  =  w_p2_in_bounded_stencil_0_4_8b ;
assign  w_413_16b  =  w_412_16b ;
assign  w_414_16b  = 1'b0;
MULT_16b_pe mult_70 (
  .a(w_413_16b),
  .b(w_414_16b),
  .c(w_415_16b),
  .clk(clk)
);
ADD_16b_pe add_71 (
  .a(w_411_16b),
  .b(w_415_16b),
  .c(w_416_16b),
  .clk(clk)
);
assign  w_417_16b  =  r36_w_p2_sum_xa12_0_16b ;
assign  w_418_16b  =  w_p2_in_bounded_stencil_1_4_8b ;
assign  w_419_16b  =  w_418_16b ;
assign  w_420_16b  = 1'b0;
MULT_16b_pe mult_72 (
  .a(w_419_16b),
  .b(w_420_16b),
  .c(w_421_16b),
  .clk(clk)
);
ADD_16b_pe add_73 (
  .a(w_421_16b),
  .b(w_417_16b),
  .c(w_422_16b),
  .clk(clk)
);
assign  w_423_16b  =  r37_w_p2_sum_xa12_0_16b ;
assign  w_424_16b  =  w_p2_in_bounded_stencil_2_4_8b ;
assign  w_425_16b  =  w_424_16b ;
assign  w_426_16b  = 1'b0;
MULT_16b_pe mult_74 (
  .a(w_425_16b),
  .b(w_426_16b),
  .c(w_427_16b),
  .clk(clk)
);
ADD_16b_pe add_75 (
  .a(w_423_16b),
  .b(w_427_16b),
  .c(w_428_16b),
  .clk(clk)
);
assign  w_429_16b  =  r38_w_p2_sum_xa12_0_16b ;
assign  w_430_16b  =  w_p2_in_bounded_stencil_3_4_8b ;
assign  w_431_16b  =  w_430_16b ;
assign  w_432_16b  = 1'b0;
MULT_16b_pe mult_76 (
  .a(w_432_16b),
  .b(w_431_16b),
  .c(w_433_16b),
  .clk(clk)
);
ADD_16b_pe add_77 (
  .a(w_429_16b),
  .b(w_433_16b),
  .c(w_434_16b),
  .clk(clk)
);
assign  w_435_16b  =  r39_w_p2_sum_xa12_0_16b ;
assign  w_436_16b  =  w_p2_in_bounded_stencil_4_4_8b ;
assign  w_437_16b  =  w_436_16b ;
assign  w_438_16b  = 1'b0;
MULT_16b_pe mult_78 (
  .a(w_438_16b),
  .b(w_437_16b),
  .c(w_439_16b),
  .clk(clk)
);
ADD_16b_pe add_79 (
  .a(w_439_16b),
  .b(w_435_16b),
  .c(w_440_16b),
  .clk(clk)
);
assign  w_441_16b  =  r40_w_p2_sum_xa12_0_16b ;
assign  w_442_16b  =  w_p2_in_bounded_stencil_5_4_8b ;
assign  w_443_16b  =  w_442_16b ;
assign  w_444_16b  = 1'b0;
MULT_16b_pe mult_80 (
  .a(w_443_16b),
  .b(w_444_16b),
  .c(w_445_16b),
  .clk(clk)
);
ADD_16b_pe add_81 (
  .a(w_441_16b),
  .b(w_445_16b),
  .c(w_446_16b),
  .clk(clk)
);
assign  w_447_16b  =  r41_w_p2_sum_xa12_0_16b ;
assign  w_448_16b  =  w_p2_in_bounded_stencil_6_4_8b ;
assign  w_449_16b  =  w_448_16b ;
assign  w_450_16b  = 1'b0;
MULT_16b_pe mult_82 (
  .a(w_449_16b),
  .b(w_450_16b),
  .c(w_451_16b),
  .clk(clk)
);
ADD_16b_pe add_83 (
  .a(w_447_16b),
  .b(w_451_16b),
  .c(w_452_16b),
  .clk(clk)
);
assign  w_453_16b  =  r42_w_p2_sum_xa12_0_16b ;
assign  w_454_16b  =  w_p2_in_bounded_stencil_7_4_8b ;
assign  w_455_16b  =  w_454_16b ;
assign  w_456_16b  = 1'b0;
MULT_16b_pe mult_84 (
  .a(w_455_16b),
  .b(w_456_16b),
  .c(w_457_16b),
  .clk(clk)
);
ADD_16b_pe add_85 (
  .a(w_457_16b),
  .b(w_453_16b),
  .c(w_458_16b),
  .clk(clk)
);
assign  w_459_16b  =  r43_w_p2_sum_xa12_0_16b ;
assign  w_460_16b  =  w_p2_in_bounded_stencil_8_4_8b ;
assign  w_461_16b  =  w_460_16b ;
assign  w_462_16b  = 1'b0;
MULT_16b_pe mult_86 (
  .a(w_461_16b),
  .b(w_462_16b),
  .c(w_463_16b),
  .clk(clk)
);
ADD_16b_pe add_87 (
  .a(w_459_16b),
  .b(w_463_16b),
  .c(w_464_16b),
  .clk(clk)
);
assign  w_465_16b  =  r44_w_p2_sum_xa12_0_16b ;
assign  w_466_16b  =  w_p2_in_bounded_stencil_0_5_8b ;
assign  w_467_16b  =  w_466_16b ;
assign  w_468_16b  = 1'b0;
MULT_16b_pe mult_88 (
  .a(w_467_16b),
  .b(w_468_16b),
  .c(w_469_16b),
  .clk(clk)
);
ADD_16b_pe add_89 (
  .a(w_465_16b),
  .b(w_469_16b),
  .c(w_470_16b),
  .clk(clk)
);
assign  w_471_16b  =  r45_w_p2_sum_xa12_0_16b ;
assign  w_472_16b  =  w_p2_in_bounded_stencil_1_5_8b ;
assign  w_473_16b  =  w_472_16b ;
assign  w_474_16b  = 1'b0;
MULT_16b_pe mult_90 (
  .a(w_474_16b),
  .b(w_473_16b),
  .c(w_475_16b),
  .clk(clk)
);
ADD_16b_pe add_91 (
  .a(w_475_16b),
  .b(w_471_16b),
  .c(w_476_16b),
  .clk(clk)
);
assign  w_477_16b  =  r46_w_p2_sum_xa12_0_16b ;
assign  w_478_16b  =  w_p2_in_bounded_stencil_2_5_8b ;
assign  w_479_16b  =  w_478_16b ;
assign  w_480_16b  = 1'b0;
MULT_16b_pe mult_92 (
  .a(w_480_16b),
  .b(w_479_16b),
  .c(w_481_16b),
  .clk(clk)
);
ADD_16b_pe add_93 (
  .a(w_477_16b),
  .b(w_481_16b),
  .c(w_482_16b),
  .clk(clk)
);
assign  w_483_16b  =  r47_w_p2_sum_xa12_0_16b ;
assign  w_484_16b  =  w_p2_in_bounded_stencil_3_5_8b ;
assign  w_485_16b  =  w_484_16b ;
assign  w_486_16b  = 1'b0;
MULT_16b_pe mult_94 (
  .a(w_486_16b),
  .b(w_485_16b),
  .c(w_487_16b),
  .clk(clk)
);
ADD_16b_pe add_95 (
  .a(w_487_16b),
  .b(w_483_16b),
  .c(w_488_16b),
  .clk(clk)
);
assign  w_489_16b  =  r48_w_p2_sum_xa12_0_16b ;
assign  w_490_16b  =  w_p2_in_bounded_stencil_4_5_8b ;
assign  w_491_16b  =  w_490_16b ;
assign  w_492_16b  = 1'b0;
MULT_16b_pe mult_96 (
  .a(w_491_16b),
  .b(w_492_16b),
  .c(w_493_16b),
  .clk(clk)
);
ADD_16b_pe add_97 (
  .a(w_493_16b),
  .b(w_489_16b),
  .c(w_494_16b),
  .clk(clk)
);
assign  w_495_16b  =  r49_w_p2_sum_xa12_0_16b ;
assign  w_496_16b  =  w_p2_in_bounded_stencil_5_5_8b ;
assign  w_497_16b  =  w_496_16b ;
assign  w_498_16b  = 1'b0;
MULT_16b_pe mult_98 (
  .a(w_498_16b),
  .b(w_497_16b),
  .c(w_499_16b),
  .clk(clk)
);
ADD_16b_pe add_99 (
  .a(w_499_16b),
  .b(w_495_16b),
  .c(w_500_16b),
  .clk(clk)
);
assign  w_501_16b  =  r50_w_p2_sum_xa12_0_16b ;
assign  w_502_16b  =  w_p2_in_bounded_stencil_6_5_8b ;
assign  w_503_16b  =  w_502_16b ;
assign  w_504_16b  = 1'b0;
MULT_16b_pe mult_100 (
  .a(w_504_16b),
  .b(w_503_16b),
  .c(w_505_16b),
  .clk(clk)
);
ADD_16b_pe add_101 (
  .a(w_505_16b),
  .b(w_501_16b),
  .c(w_506_16b),
  .clk(clk)
);
assign  w_507_16b  =  r51_w_p2_sum_xa12_0_16b ;
assign  w_508_16b  =  w_p2_in_bounded_stencil_7_5_8b ;
assign  w_509_16b  =  w_508_16b ;
assign  w_510_16b  = 1'b0;
MULT_16b_pe mult_102 (
  .a(w_510_16b),
  .b(w_509_16b),
  .c(w_511_16b),
  .clk(clk)
);
ADD_16b_pe add_103 (
  .a(w_507_16b),
  .b(w_511_16b),
  .c(w_512_16b),
  .clk(clk)
);
assign  w_513_16b  =  r52_w_p2_sum_xa12_0_16b ;
assign  w_514_16b  =  w_p2_in_bounded_stencil_8_5_8b ;
assign  w_515_16b  =  w_514_16b ;
assign  w_516_16b  = 1'b0;
MULT_16b_pe mult_104 (
  .a(w_515_16b),
  .b(w_516_16b),
  .c(w_517_16b),
  .clk(clk)
);
ADD_16b_pe add_105 (
  .a(w_517_16b),
  .b(w_513_16b),
  .c(w_518_16b),
  .clk(clk)
);
assign  w_519_16b  =  r53_w_p2_sum_xa12_0_16b ;
assign  w_520_16b  =  w_p2_in_bounded_stencil_0_6_8b ;
assign  w_521_16b  =  w_520_16b ;
assign  w_522_16b  = 1'b0;
MULT_16b_pe mult_106 (
  .a(w_521_16b),
  .b(w_522_16b),
  .c(w_523_16b),
  .clk(clk)
);
ADD_16b_pe add_107 (
  .a(w_519_16b),
  .b(w_523_16b),
  .c(w_524_16b),
  .clk(clk)
);
assign  w_525_16b  =  r54_w_p2_sum_xa12_0_16b ;
assign  w_526_16b  =  w_p2_in_bounded_stencil_1_6_8b ;
assign  w_527_16b  =  w_526_16b ;
assign  w_528_16b  = 1'b0;
MULT_16b_pe mult_108 (
  .a(w_527_16b),
  .b(w_528_16b),
  .c(w_529_16b),
  .clk(clk)
);
ADD_16b_pe add_109 (
  .a(w_525_16b),
  .b(w_529_16b),
  .c(w_530_16b),
  .clk(clk)
);
assign  w_531_16b  =  r55_w_p2_sum_xa12_0_16b ;
assign  w_532_16b  =  w_p2_in_bounded_stencil_2_6_8b ;
assign  w_533_16b  =  w_532_16b ;
assign  w_534_16b  = 1'b0;
MULT_16b_pe mult_110 (
  .a(w_533_16b),
  .b(w_534_16b),
  .c(w_535_16b),
  .clk(clk)
);
ADD_16b_pe add_111 (
  .a(w_531_16b),
  .b(w_535_16b),
  .c(w_536_16b),
  .clk(clk)
);
assign  w_537_16b  =  r56_w_p2_sum_xa12_0_16b ;
assign  w_538_16b  =  w_p2_in_bounded_stencil_3_6_8b ;
assign  w_539_16b  =  w_538_16b ;
assign  w_540_16b  = 1'b0;
MULT_16b_pe mult_112 (
  .a(w_539_16b),
  .b(w_540_16b),
  .c(w_541_16b),
  .clk(clk)
);
ADD_16b_pe add_113 (
  .a(w_541_16b),
  .b(w_537_16b),
  .c(w_542_16b),
  .clk(clk)
);
assign  w_543_16b  =  r57_w_p2_sum_xa12_0_16b ;
assign  w_544_16b  =  w_p2_in_bounded_stencil_4_6_8b ;
assign  w_545_16b  =  w_544_16b ;
assign  w_546_16b  = 1'b0;
MULT_16b_pe mult_114 (
  .a(w_546_16b),
  .b(w_545_16b),
  .c(w_547_16b),
  .clk(clk)
);
ADD_16b_pe add_115 (
  .a(w_543_16b),
  .b(w_547_16b),
  .c(w_548_16b),
  .clk(clk)
);
assign  w_549_16b  =  r58_w_p2_sum_xa12_0_16b ;
assign  w_550_16b  =  w_p2_in_bounded_stencil_5_6_8b ;
assign  w_551_16b  =  w_550_16b ;
assign  w_552_16b  = 1'b0;
MULT_16b_pe mult_116 (
  .a(w_551_16b),
  .b(w_552_16b),
  .c(w_553_16b),
  .clk(clk)
);
ADD_16b_pe add_117 (
  .a(w_553_16b),
  .b(w_549_16b),
  .c(w_554_16b),
  .clk(clk)
);
assign  w_555_16b  =  r59_w_p2_sum_xa12_0_16b ;
assign  w_556_16b  =  w_p2_in_bounded_stencil_6_6_8b ;
assign  w_557_16b  =  w_556_16b ;
assign  w_558_16b  = 1'b0;
MULT_16b_pe mult_118 (
  .a(w_558_16b),
  .b(w_557_16b),
  .c(w_559_16b),
  .clk(clk)
);
ADD_16b_pe add_119 (
  .a(w_559_16b),
  .b(w_555_16b),
  .c(w_560_16b),
  .clk(clk)
);
assign  w_561_16b  =  r60_w_p2_sum_xa12_0_16b ;
assign  w_562_16b  =  w_p2_in_bounded_stencil_7_6_8b ;
assign  w_563_16b  =  w_562_16b ;
assign  w_564_16b  = 1'b0;
MULT_16b_pe mult_120 (
  .a(w_563_16b),
  .b(w_564_16b),
  .c(w_565_16b),
  .clk(clk)
);
ADD_16b_pe add_121 (
  .a(w_561_16b),
  .b(w_565_16b),
  .c(w_566_16b),
  .clk(clk)
);
assign  w_567_16b  =  r61_w_p2_sum_xa12_0_16b ;
assign  w_568_16b  =  w_p2_in_bounded_stencil_8_6_8b ;
assign  w_569_16b  =  w_568_16b ;
assign  w_570_16b  = 1'b0;
MULT_16b_pe mult_122 (
  .a(w_569_16b),
  .b(w_570_16b),
  .c(w_571_16b),
  .clk(clk)
);
ADD_16b_pe add_123 (
  .a(w_571_16b),
  .b(w_567_16b),
  .c(w_572_16b),
  .clk(clk)
);
assign  w_573_16b  =  r62_w_p2_sum_xa12_0_16b ;
assign  w_574_16b  =  w_p2_in_bounded_stencil_0_7_8b ;
assign  w_575_16b  =  w_574_16b ;
assign  w_576_16b  = 1'b0;
MULT_16b_pe mult_124 (
  .a(w_576_16b),
  .b(w_575_16b),
  .c(w_577_16b),
  .clk(clk)
);
ADD_16b_pe add_125 (
  .a(w_577_16b),
  .b(w_573_16b),
  .c(w_578_16b),
  .clk(clk)
);
assign  w_579_16b  =  r63_w_p2_sum_xa12_0_16b ;
assign  w_580_16b  =  w_p2_in_bounded_stencil_1_7_8b ;
assign  w_581_16b  =  w_580_16b ;
assign  w_582_16b  = 1'b0;
MULT_16b_pe mult_126 (
  .a(w_582_16b),
  .b(w_581_16b),
  .c(w_583_16b),
  .clk(clk)
);
ADD_16b_pe add_127 (
  .a(w_583_16b),
  .b(w_579_16b),
  .c(w_584_16b),
  .clk(clk)
);
assign  w_585_16b  =  r64_w_p2_sum_xa12_0_16b ;
assign  w_586_16b  =  w_p2_in_bounded_stencil_2_7_8b ;
assign  w_587_16b  =  w_586_16b ;
assign  w_588_16b  = 1'b0;
MULT_16b_pe mult_128 (
  .a(w_587_16b),
  .b(w_588_16b),
  .c(w_589_16b),
  .clk(clk)
);
ADD_16b_pe add_129 (
  .a(w_585_16b),
  .b(w_589_16b),
  .c(w_590_16b),
  .clk(clk)
);
assign  w_591_16b  =  r65_w_p2_sum_xa12_0_16b ;
assign  w_592_16b  =  w_p2_in_bounded_stencil_3_7_8b ;
assign  w_593_16b  =  w_592_16b ;
assign  w_594_16b  = 1'b0;
MULT_16b_pe mult_130 (
  .a(w_594_16b),
  .b(w_593_16b),
  .c(w_595_16b),
  .clk(clk)
);
ADD_16b_pe add_131 (
  .a(w_595_16b),
  .b(w_591_16b),
  .c(w_596_16b),
  .clk(clk)
);
assign  w_597_16b  =  r66_w_p2_sum_xa12_0_16b ;
assign  w_598_16b  =  w_p2_in_bounded_stencil_4_7_8b ;
assign  w_599_16b  =  w_598_16b ;
assign  w_600_16b  = 1'b0;
MULT_16b_pe mult_132 (
  .a(w_599_16b),
  .b(w_600_16b),
  .c(w_601_16b),
  .clk(clk)
);
ADD_16b_pe add_133 (
  .a(w_597_16b),
  .b(w_601_16b),
  .c(w_602_16b),
  .clk(clk)
);
assign  w_603_16b  =  r67_w_p2_sum_xa12_0_16b ;
assign  w_604_16b  =  w_p2_in_bounded_stencil_5_7_8b ;
assign  w_605_16b  =  w_604_16b ;
assign  w_606_16b  = 1'b0;
MULT_16b_pe mult_134 (
  .a(w_605_16b),
  .b(w_606_16b),
  .c(w_607_16b),
  .clk(clk)
);
ADD_16b_pe add_135 (
  .a(w_607_16b),
  .b(w_603_16b),
  .c(w_608_16b),
  .clk(clk)
);
assign  w_609_16b  =  r68_w_p2_sum_xa12_0_16b ;
assign  w_610_16b  =  w_p2_in_bounded_stencil_6_7_8b ;
assign  w_611_16b  =  w_610_16b ;
assign  w_612_16b  = 1'b0;
MULT_16b_pe mult_136 (
  .a(w_612_16b),
  .b(w_611_16b),
  .c(w_613_16b),
  .clk(clk)
);
ADD_16b_pe add_137 (
  .a(w_609_16b),
  .b(w_613_16b),
  .c(w_614_16b),
  .clk(clk)
);
assign  w_615_16b  =  r69_w_p2_sum_xa12_0_16b ;
assign  w_616_16b  =  w_p2_in_bounded_stencil_7_7_8b ;
assign  w_617_16b  =  w_616_16b ;
assign  w_618_16b  = 1'b0;
MULT_16b_pe mult_138 (
  .a(w_617_16b),
  .b(w_618_16b),
  .c(w_619_16b),
  .clk(clk)
);
ADD_16b_pe add_139 (
  .a(w_615_16b),
  .b(w_619_16b),
  .c(w_620_16b),
  .clk(clk)
);
assign  w_621_16b  =  r70_w_p2_sum_xa12_0_16b ;
assign  w_622_16b  =  w_p2_in_bounded_stencil_8_7_8b ;
assign  w_623_16b  =  w_622_16b ;
assign  w_624_16b  = 1'b0;
MULT_16b_pe mult_140 (
  .a(w_623_16b),
  .b(w_624_16b),
  .c(w_625_16b),
  .clk(clk)
);
ADD_16b_pe add_141 (
  .a(w_621_16b),
  .b(w_625_16b),
  .c(w_626_16b),
  .clk(clk)
);
assign  w_627_16b  =  r71_w_p2_sum_xa12_0_16b ;
assign  w_628_16b  =  w_p2_in_bounded_stencil_0_8_8b ;
assign  w_629_16b  =  w_628_16b ;
ADD_16b_pe add_142 (
  .a(w_629_16b),
  .b(w_627_16b),
  .c(w_630_16b),
  .clk(clk)
);
assign  w_631_16b  =  r72_w_p2_sum_xa12_0_16b ;
assign  w_632_16b  =  w_p2_in_bounded_stencil_1_8_8b ;
assign  w_633_16b  =  w_632_16b ;
assign  w_634_16b  = 1'b0;
MULT_16b_pe mult_143 (
  .a(w_634_16b),
  .b(w_633_16b),
  .c(w_635_16b),
  .clk(clk)
);
ADD_16b_pe add_144 (
  .a(w_635_16b),
  .b(w_631_16b),
  .c(w_636_16b),
  .clk(clk)
);
assign  w_637_16b  =  r73_w_p2_sum_xa12_0_16b ;
assign  w_638_16b  =  w_p2_in_bounded_stencil_2_8_8b ;
assign  w_639_16b  =  w_638_16b ;
assign  w_640_16b  = 1'b0;
MULT_16b_pe mult_145 (
  .a(w_640_16b),
  .b(w_639_16b),
  .c(w_641_16b),
  .clk(clk)
);
ADD_16b_pe add_146 (
  .a(w_641_16b),
  .b(w_637_16b),
  .c(w_642_16b),
  .clk(clk)
);
assign  w_643_16b  =  r74_w_p2_sum_xa12_0_16b ;
assign  w_644_16b  =  w_p2_in_bounded_stencil_3_8_8b ;
assign  w_645_16b  =  w_644_16b ;
assign  w_646_16b  = 1'b0;
MULT_16b_pe mult_147 (
  .a(w_645_16b),
  .b(w_646_16b),
  .c(w_647_16b),
  .clk(clk)
);
ADD_16b_pe add_148 (
  .a(w_643_16b),
  .b(w_647_16b),
  .c(w_648_16b),
  .clk(clk)
);
assign  w_649_16b  =  r75_w_p2_sum_xa12_0_16b ;
assign  w_650_16b  =  w_p2_in_bounded_stencil_4_8_8b ;
assign  w_651_16b  =  w_650_16b ;
assign  w_652_16b  = 1'b0;
MULT_16b_pe mult_149 (
  .a(w_652_16b),
  .b(w_651_16b),
  .c(w_653_16b),
  .clk(clk)
);
ADD_16b_pe add_150 (
  .a(w_649_16b),
  .b(w_653_16b),
  .c(w_654_16b),
  .clk(clk)
);
assign  w_655_16b  =  r76_w_p2_sum_xa12_0_16b ;
assign  w_656_16b  =  w_p2_in_bounded_stencil_5_8_8b ;
assign  w_657_16b  =  w_656_16b ;
assign  w_658_16b  = 1'b0;
MULT_16b_pe mult_151 (
  .a(w_658_16b),
  .b(w_657_16b),
  .c(w_659_16b),
  .clk(clk)
);
ADD_16b_pe add_152 (
  .a(w_659_16b),
  .b(w_655_16b),
  .c(w_660_16b),
  .clk(clk)
);
assign  w_661_16b  =  r77_w_p2_sum_xa12_0_16b ;
assign  w_662_16b  =  w_p2_in_bounded_stencil_6_8_8b ;
assign  w_663_16b  =  w_662_16b ;
assign  w_664_16b  = 1'b0;
MULT_16b_pe mult_153 (
  .a(w_664_16b),
  .b(w_663_16b),
  .c(w_665_16b),
  .clk(clk)
);
ADD_16b_pe add_154 (
  .a(w_665_16b),
  .b(w_661_16b),
  .c(w_666_16b),
  .clk(clk)
);
assign  w_667_16b  =  r78_w_p2_sum_xa12_0_16b ;
assign  w_668_16b  =  w_p2_in_bounded_stencil_7_8_8b ;
assign  w_669_16b  =  w_668_16b ;
assign  w_670_16b  = 1'b0;
MULT_16b_pe mult_155 (
  .a(w_670_16b),
  .b(w_669_16b),
  .c(w_671_16b),
  .clk(clk)
);
ADD_16b_pe add_156 (
  .a(w_667_16b),
  .b(w_671_16b),
  .c(w_672_16b),
  .clk(clk)
);
assign  w_673_16b  =  r79_w_p2_sum_xa12_0_16b ;
assign  w_674_16b  =  w_p2_in_bounded_stencil_8_8_8b ;
assign  w_675_16b  =  w_674_16b ;
ADD_16b_pe add_157 (
  .a(w_673_16b),
  .b(w_675_16b),
  .c(w_676_16b),
  .clk(clk)
);
assign  w_677_16b  =  r80_w_p2_sum_xa12_0_16b ;
LSHIFT_16b_pe lshift_158 (
  .a(1'b0),
  .b(w_677_16b),
  .c(w_678_16b),
  .clk(clk)
);
assign  w_679_16b  =  w_678_16b ;
assign  w_hw_output_1_stencil_0_0_8b  =  w_679_16b ;
assign  w_hw_output_1_stencil_packed_16b  =  w_hw_output_1_stencil_0_0_8b ;
assign  w_p2_sum_xa12_0_16b  = 1'b0;

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


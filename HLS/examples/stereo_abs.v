// Source:  /home/tema8/projects/Halide-HLS/apps/hls_examples/stereo_hls/hls_target.cpp 

module top(
//Inputs
  w_pass_5_stencil_update_stream_0_0_8b,

  w_pass_4_stencil_update_stream_0_0_8b,

//Outputs
  w_hw_output_2_stencil_stream_0_0_8b,

  clk
);

//Inputs
input    w_pass_5_stencil_update_stream_0_0_8b;

input    w_pass_4_stencil_update_stream_0_0_8b;

//Outputs
output   w_hw_output_2_stencil_stream_0_0_8b;

input   clk;

wire   w_pass_4_stencil_stream_0_0_8b;
wire   w_pass_4_stencil_stream_0_1_8b;
wire   w_pass_4_stencil_stream_0_2_8b;
wire   w_pass_4_stencil_stream_0_3_8b;
wire   w_pass_4_stencil_stream_0_4_8b;
wire   w_pass_4_stencil_stream_0_5_8b;
wire   w_pass_4_stencil_stream_0_6_8b;
wire   w_pass_4_stencil_stream_0_7_8b;
wire   w_pass_4_stencil_stream_1_0_8b;
wire   w_pass_4_stencil_stream_1_1_8b;
wire   w_pass_4_stencil_stream_1_2_8b;
wire   w_pass_4_stencil_stream_1_3_8b;
wire   w_pass_4_stencil_stream_1_4_8b;
wire   w_pass_4_stencil_stream_1_5_8b;
wire   w_pass_4_stencil_stream_1_6_8b;
wire   w_pass_4_stencil_stream_1_7_8b;
wire   w_pass_4_stencil_stream_2_0_8b;
wire   w_pass_4_stencil_stream_2_1_8b;
wire   w_pass_4_stencil_stream_2_2_8b;
wire   w_pass_4_stencil_stream_2_3_8b;
wire   w_pass_4_stencil_stream_2_4_8b;
wire   w_pass_4_stencil_stream_2_5_8b;
wire   w_pass_4_stencil_stream_2_6_8b;
wire   w_pass_4_stencil_stream_2_7_8b;
wire   w_pass_4_stencil_stream_3_0_8b;
wire   w_pass_4_stencil_stream_3_1_8b;
wire   w_pass_4_stencil_stream_3_2_8b;
wire   w_pass_4_stencil_stream_3_3_8b;
wire   w_pass_4_stencil_stream_3_4_8b;
wire   w_pass_4_stencil_stream_3_5_8b;
wire   w_pass_4_stencil_stream_3_6_8b;
wire   w_pass_4_stencil_stream_3_7_8b;
wire   w_pass_4_stencil_stream_4_0_8b;
wire   w_pass_4_stencil_stream_4_1_8b;
wire   w_pass_4_stencil_stream_4_2_8b;
wire   w_pass_4_stencil_stream_4_3_8b;
wire   w_pass_4_stencil_stream_4_4_8b;
wire   w_pass_4_stencil_stream_4_5_8b;
wire   w_pass_4_stencil_stream_4_6_8b;
wire   w_pass_4_stencil_stream_4_7_8b;
wire   w_pass_4_stencil_stream_5_0_8b;
wire   w_pass_4_stencil_stream_5_1_8b;
wire   w_pass_4_stencil_stream_5_2_8b;
wire   w_pass_4_stencil_stream_5_3_8b;
wire   w_pass_4_stencil_stream_5_4_8b;
wire   w_pass_4_stencil_stream_5_5_8b;
wire   w_pass_4_stencil_stream_5_6_8b;
wire   w_pass_4_stencil_stream_5_7_8b;
wire   w_pass_4_stencil_stream_6_0_8b;
wire   w_pass_4_stencil_stream_6_1_8b;
wire   w_pass_4_stencil_stream_6_2_8b;
wire   w_pass_4_stencil_stream_6_3_8b;
wire   w_pass_4_stencil_stream_6_4_8b;
wire   w_pass_4_stencil_stream_6_5_8b;
wire   w_pass_4_stencil_stream_6_6_8b;
wire   w_pass_4_stencil_stream_6_7_8b;
wire   w_pass_4_stencil_stream_7_0_8b;
wire   w_pass_4_stencil_stream_7_1_8b;
wire   w_pass_4_stencil_stream_7_2_8b;
wire   w_pass_4_stencil_stream_7_3_8b;
wire   w_pass_4_stencil_stream_7_4_8b;
wire   w_pass_4_stencil_stream_7_5_8b;
wire   w_pass_4_stencil_stream_7_6_8b;
wire   w_pass_4_stencil_stream_7_7_8b;

wire   w_pass_5_stencil_stream_0_0_8b;
wire   w_pass_5_stencil_stream_0_1_8b;
wire   w_pass_5_stencil_stream_0_2_8b;
wire   w_pass_5_stencil_stream_0_3_8b;
wire   w_pass_5_stencil_stream_0_4_8b;
wire   w_pass_5_stencil_stream_0_5_8b;
wire   w_pass_5_stencil_stream_0_6_8b;
wire   w_pass_5_stencil_stream_0_7_8b;
wire   w_pass_5_stencil_stream_1_0_8b;
wire   w_pass_5_stencil_stream_1_1_8b;
wire   w_pass_5_stencil_stream_1_2_8b;
wire   w_pass_5_stencil_stream_1_3_8b;
wire   w_pass_5_stencil_stream_1_4_8b;
wire   w_pass_5_stencil_stream_1_5_8b;
wire   w_pass_5_stencil_stream_1_6_8b;
wire   w_pass_5_stencil_stream_1_7_8b;
wire   w_pass_5_stencil_stream_2_0_8b;
wire   w_pass_5_stencil_stream_2_1_8b;
wire   w_pass_5_stencil_stream_2_2_8b;
wire   w_pass_5_stencil_stream_2_3_8b;
wire   w_pass_5_stencil_stream_2_4_8b;
wire   w_pass_5_stencil_stream_2_5_8b;
wire   w_pass_5_stencil_stream_2_6_8b;
wire   w_pass_5_stencil_stream_2_7_8b;
wire   w_pass_5_stencil_stream_3_0_8b;
wire   w_pass_5_stencil_stream_3_1_8b;
wire   w_pass_5_stencil_stream_3_2_8b;
wire   w_pass_5_stencil_stream_3_3_8b;
wire   w_pass_5_stencil_stream_3_4_8b;
wire   w_pass_5_stencil_stream_3_5_8b;
wire   w_pass_5_stencil_stream_3_6_8b;
wire   w_pass_5_stencil_stream_3_7_8b;
wire   w_pass_5_stencil_stream_4_0_8b;
wire   w_pass_5_stencil_stream_4_1_8b;
wire   w_pass_5_stencil_stream_4_2_8b;
wire   w_pass_5_stencil_stream_4_3_8b;
wire   w_pass_5_stencil_stream_4_4_8b;
wire   w_pass_5_stencil_stream_4_5_8b;
wire   w_pass_5_stencil_stream_4_6_8b;
wire   w_pass_5_stencil_stream_4_7_8b;
wire   w_pass_5_stencil_stream_5_0_8b;
wire   w_pass_5_stencil_stream_5_1_8b;
wire   w_pass_5_stencil_stream_5_2_8b;
wire   w_pass_5_stencil_stream_5_3_8b;
wire   w_pass_5_stencil_stream_5_4_8b;
wire   w_pass_5_stencil_stream_5_5_8b;
wire   w_pass_5_stencil_stream_5_6_8b;
wire   w_pass_5_stencil_stream_5_7_8b;
wire   w_pass_5_stencil_stream_6_0_8b;
wire   w_pass_5_stencil_stream_6_1_8b;
wire   w_pass_5_stencil_stream_6_2_8b;
wire   w_pass_5_stencil_stream_6_3_8b;
wire   w_pass_5_stencil_stream_6_4_8b;
wire   w_pass_5_stencil_stream_6_5_8b;
wire   w_pass_5_stencil_stream_6_6_8b;
wire   w_pass_5_stencil_stream_6_7_8b;
wire   w_pass_5_stencil_stream_7_0_8b;
wire   w_pass_5_stencil_stream_7_1_8b;
wire   w_pass_5_stencil_stream_7_2_8b;
wire   w_pass_5_stencil_stream_7_3_8b;
wire   w_pass_5_stencil_stream_7_4_8b;
wire   w_pass_5_stencil_stream_7_5_8b;
wire   w_pass_5_stencil_stream_7_6_8b;
wire   w_pass_5_stencil_stream_7_7_8b;
wire   w_pass_5_stencil_stream_8_0_8b;
wire   w_pass_5_stencil_stream_8_1_8b;
wire   w_pass_5_stencil_stream_8_2_8b;
wire   w_pass_5_stencil_stream_8_3_8b;
wire   w_pass_5_stencil_stream_8_4_8b;
wire   w_pass_5_stencil_stream_8_5_8b;
wire   w_pass_5_stencil_stream_8_6_8b;
wire   w_pass_5_stencil_stream_8_7_8b;
wire   w_pass_5_stencil_stream_9_0_8b;
wire   w_pass_5_stencil_stream_9_1_8b;
wire   w_pass_5_stencil_stream_9_2_8b;
wire   w_pass_5_stencil_stream_9_3_8b;
wire   w_pass_5_stencil_stream_9_4_8b;
wire   w_pass_5_stencil_stream_9_5_8b;
wire   w_pass_5_stencil_stream_9_6_8b;
wire   w_pass_5_stencil_stream_9_7_8b;
wire   w_pass_5_stencil_stream_10_0_8b;
wire   w_pass_5_stencil_stream_10_1_8b;
wire   w_pass_5_stencil_stream_10_2_8b;
wire   w_pass_5_stencil_stream_10_3_8b;
wire   w_pass_5_stencil_stream_10_4_8b;
wire   w_pass_5_stencil_stream_10_5_8b;
wire   w_pass_5_stencil_stream_10_6_8b;
wire   w_pass_5_stencil_stream_10_7_8b;
wire   w_pass_5_stencil_stream_11_0_8b;
wire   w_pass_5_stencil_stream_11_1_8b;
wire   w_pass_5_stencil_stream_11_2_8b;
wire   w_pass_5_stencil_stream_11_3_8b;
wire   w_pass_5_stencil_stream_11_4_8b;
wire   w_pass_5_stencil_stream_11_5_8b;
wire   w_pass_5_stencil_stream_11_6_8b;
wire   w_pass_5_stencil_stream_11_7_8b;
wire   w_pass_5_stencil_stream_12_0_8b;
wire   w_pass_5_stencil_stream_12_1_8b;
wire   w_pass_5_stencil_stream_12_2_8b;
wire   w_pass_5_stencil_stream_12_3_8b;
wire   w_pass_5_stencil_stream_12_4_8b;
wire   w_pass_5_stencil_stream_12_5_8b;
wire   w_pass_5_stencil_stream_12_6_8b;
wire   w_pass_5_stencil_stream_12_7_8b;
wire   w_pass_5_stencil_stream_13_0_8b;
wire   w_pass_5_stencil_stream_13_1_8b;
wire   w_pass_5_stencil_stream_13_2_8b;
wire   w_pass_5_stencil_stream_13_3_8b;
wire   w_pass_5_stencil_stream_13_4_8b;
wire   w_pass_5_stencil_stream_13_5_8b;
wire   w_pass_5_stencil_stream_13_6_8b;
wire   w_pass_5_stencil_stream_13_7_8b;
wire   w_pass_5_stencil_stream_14_0_8b;
wire   w_pass_5_stencil_stream_14_1_8b;
wire   w_pass_5_stencil_stream_14_2_8b;
wire   w_pass_5_stencil_stream_14_3_8b;
wire   w_pass_5_stencil_stream_14_4_8b;
wire   w_pass_5_stencil_stream_14_5_8b;
wire   w_pass_5_stencil_stream_14_6_8b;
wire   w_pass_5_stencil_stream_14_7_8b;
wire   w_pass_5_stencil_stream_15_0_8b;
wire   w_pass_5_stencil_stream_15_1_8b;
wire   w_pass_5_stencil_stream_15_2_8b;
wire   w_pass_5_stencil_stream_15_3_8b;
wire   w_pass_5_stencil_stream_15_4_8b;
wire   w_pass_5_stencil_stream_15_5_8b;
wire   w_pass_5_stencil_stream_15_6_8b;
wire   w_pass_5_stencil_stream_15_7_8b;
wire   w_pass_5_stencil_stream_16_0_8b;
wire   w_pass_5_stencil_stream_16_1_8b;
wire   w_pass_5_stencil_stream_16_2_8b;
wire   w_pass_5_stencil_stream_16_3_8b;
wire   w_pass_5_stencil_stream_16_4_8b;
wire   w_pass_5_stencil_stream_16_5_8b;
wire   w_pass_5_stencil_stream_16_6_8b;
wire   w_pass_5_stencil_stream_16_7_8b;
wire   w_pass_5_stencil_stream_17_0_8b;
wire   w_pass_5_stencil_stream_17_1_8b;
wire   w_pass_5_stencil_stream_17_2_8b;
wire   w_pass_5_stencil_stream_17_3_8b;
wire   w_pass_5_stencil_stream_17_4_8b;
wire   w_pass_5_stencil_stream_17_5_8b;
wire   w_pass_5_stencil_stream_17_6_8b;
wire   w_pass_5_stencil_stream_17_7_8b;
wire   w_pass_5_stencil_stream_18_0_8b;
wire   w_pass_5_stencil_stream_18_1_8b;
wire   w_pass_5_stencil_stream_18_2_8b;
wire   w_pass_5_stencil_stream_18_3_8b;
wire   w_pass_5_stencil_stream_18_4_8b;
wire   w_pass_5_stencil_stream_18_5_8b;
wire   w_pass_5_stencil_stream_18_6_8b;
wire   w_pass_5_stencil_stream_18_7_8b;
wire   w_pass_5_stencil_stream_19_0_8b;
wire   w_pass_5_stencil_stream_19_1_8b;
wire   w_pass_5_stencil_stream_19_2_8b;
wire   w_pass_5_stencil_stream_19_3_8b;
wire   w_pass_5_stencil_stream_19_4_8b;
wire   w_pass_5_stencil_stream_19_5_8b;
wire   w_pass_5_stencil_stream_19_6_8b;
wire   w_pass_5_stencil_stream_19_7_8b;
wire   w_pass_5_stencil_stream_20_0_8b;
wire   w_pass_5_stencil_stream_20_1_8b;
wire   w_pass_5_stencil_stream_20_2_8b;
wire   w_pass_5_stencil_stream_20_3_8b;
wire   w_pass_5_stencil_stream_20_4_8b;
wire   w_pass_5_stencil_stream_20_5_8b;
wire   w_pass_5_stencil_stream_20_6_8b;
wire   w_pass_5_stencil_stream_20_7_8b;
wire   w_pass_5_stencil_stream_21_0_8b;
wire   w_pass_5_stencil_stream_21_1_8b;
wire   w_pass_5_stencil_stream_21_2_8b;
wire   w_pass_5_stencil_stream_21_3_8b;
wire   w_pass_5_stencil_stream_21_4_8b;
wire   w_pass_5_stencil_stream_21_5_8b;
wire   w_pass_5_stencil_stream_21_6_8b;
wire   w_pass_5_stencil_stream_21_7_8b;
wire   w_pass_5_stencil_stream_22_0_8b;
wire   w_pass_5_stencil_stream_22_1_8b;
wire   w_pass_5_stencil_stream_22_2_8b;
wire   w_pass_5_stencil_stream_22_3_8b;
wire   w_pass_5_stencil_stream_22_4_8b;
wire   w_pass_5_stencil_stream_22_5_8b;
wire   w_pass_5_stencil_stream_22_6_8b;
wire   w_pass_5_stencil_stream_22_7_8b;
wire   w_pass_5_stencil_stream_23_0_8b;
wire   w_pass_5_stencil_stream_23_1_8b;
wire   w_pass_5_stencil_stream_23_2_8b;
wire   w_pass_5_stencil_stream_23_3_8b;
wire   w_pass_5_stencil_stream_23_4_8b;
wire   w_pass_5_stencil_stream_23_5_8b;
wire   w_pass_5_stencil_stream_23_6_8b;
wire   w_pass_5_stencil_stream_23_7_8b;
wire   w_pass_5_stencil_stream_24_0_8b;
wire   w_pass_5_stencil_stream_24_1_8b;
wire   w_pass_5_stencil_stream_24_2_8b;
wire   w_pass_5_stencil_stream_24_3_8b;
wire   w_pass_5_stencil_stream_24_4_8b;
wire   w_pass_5_stencil_stream_24_5_8b;
wire   w_pass_5_stencil_stream_24_6_8b;
wire   w_pass_5_stencil_stream_24_7_8b;
wire   w_pass_5_stencil_stream_25_0_8b;
wire   w_pass_5_stencil_stream_25_1_8b;
wire   w_pass_5_stencil_stream_25_2_8b;
wire   w_pass_5_stencil_stream_25_3_8b;
wire   w_pass_5_stencil_stream_25_4_8b;
wire   w_pass_5_stencil_stream_25_5_8b;
wire   w_pass_5_stencil_stream_25_6_8b;
wire   w_pass_5_stencil_stream_25_7_8b;
wire   w_pass_5_stencil_stream_26_0_8b;
wire   w_pass_5_stencil_stream_26_1_8b;
wire   w_pass_5_stencil_stream_26_2_8b;
wire   w_pass_5_stencil_stream_26_3_8b;
wire   w_pass_5_stencil_stream_26_4_8b;
wire   w_pass_5_stencil_stream_26_5_8b;
wire   w_pass_5_stencil_stream_26_6_8b;
wire   w_pass_5_stencil_stream_26_7_8b;
wire   w_pass_5_stencil_stream_27_0_8b;
wire   w_pass_5_stencil_stream_27_1_8b;
wire   w_pass_5_stencil_stream_27_2_8b;
wire   w_pass_5_stencil_stream_27_3_8b;
wire   w_pass_5_stencil_stream_27_4_8b;
wire   w_pass_5_stencil_stream_27_5_8b;
wire   w_pass_5_stencil_stream_27_6_8b;
wire   w_pass_5_stencil_stream_27_7_8b;
wire   w_pass_5_stencil_stream_28_0_8b;
wire   w_pass_5_stencil_stream_28_1_8b;
wire   w_pass_5_stencil_stream_28_2_8b;
wire   w_pass_5_stencil_stream_28_3_8b;
wire   w_pass_5_stencil_stream_28_4_8b;
wire   w_pass_5_stencil_stream_28_5_8b;
wire   w_pass_5_stencil_stream_28_6_8b;
wire   w_pass_5_stencil_stream_28_7_8b;
wire   w_pass_5_stencil_stream_29_0_8b;
wire   w_pass_5_stencil_stream_29_1_8b;
wire   w_pass_5_stencil_stream_29_2_8b;
wire   w_pass_5_stencil_stream_29_3_8b;
wire   w_pass_5_stencil_stream_29_4_8b;
wire   w_pass_5_stencil_stream_29_5_8b;
wire   w_pass_5_stencil_stream_29_6_8b;
wire   w_pass_5_stencil_stream_29_7_8b;
wire   w_pass_5_stencil_stream_30_0_8b;
wire   w_pass_5_stencil_stream_30_1_8b;
wire   w_pass_5_stencil_stream_30_2_8b;
wire   w_pass_5_stencil_stream_30_3_8b;
wire   w_pass_5_stencil_stream_30_4_8b;
wire   w_pass_5_stencil_stream_30_5_8b;
wire   w_pass_5_stencil_stream_30_6_8b;
wire   w_pass_5_stencil_stream_30_7_8b;
wire   w_pass_5_stencil_stream_31_0_8b;
wire   w_pass_5_stencil_stream_31_1_8b;
wire   w_pass_5_stencil_stream_31_2_8b;
wire   w_pass_5_stencil_stream_31_3_8b;
wire   w_pass_5_stencil_stream_31_4_8b;
wire   w_pass_5_stencil_stream_31_5_8b;
wire   w_pass_5_stencil_stream_31_6_8b;
wire   w_pass_5_stencil_stream_31_7_8b;
wire   w_pass_5_stencil_stream_32_0_8b;
wire   w_pass_5_stencil_stream_32_1_8b;
wire   w_pass_5_stencil_stream_32_2_8b;
wire   w_pass_5_stencil_stream_32_3_8b;
wire   w_pass_5_stencil_stream_32_4_8b;
wire   w_pass_5_stencil_stream_32_5_8b;
wire   w_pass_5_stencil_stream_32_6_8b;
wire   w_pass_5_stencil_stream_32_7_8b;
wire   w_pass_5_stencil_stream_33_0_8b;
wire   w_pass_5_stencil_stream_33_1_8b;
wire   w_pass_5_stencil_stream_33_2_8b;
wire   w_pass_5_stencil_stream_33_3_8b;
wire   w_pass_5_stencil_stream_33_4_8b;
wire   w_pass_5_stencil_stream_33_5_8b;
wire   w_pass_5_stencil_stream_33_6_8b;
wire   w_pass_5_stencil_stream_33_7_8b;
wire   w_pass_5_stencil_stream_34_0_8b;
wire   w_pass_5_stencil_stream_34_1_8b;
wire   w_pass_5_stencil_stream_34_2_8b;
wire   w_pass_5_stencil_stream_34_3_8b;
wire   w_pass_5_stencil_stream_34_4_8b;
wire   w_pass_5_stencil_stream_34_5_8b;
wire   w_pass_5_stencil_stream_34_6_8b;
wire   w_pass_5_stencil_stream_34_7_8b;
wire   w_pass_5_stencil_stream_35_0_8b;
wire   w_pass_5_stencil_stream_35_1_8b;
wire   w_pass_5_stencil_stream_35_2_8b;
wire   w_pass_5_stencil_stream_35_3_8b;
wire   w_pass_5_stencil_stream_35_4_8b;
wire   w_pass_5_stencil_stream_35_5_8b;
wire   w_pass_5_stencil_stream_35_6_8b;
wire   w_pass_5_stencil_stream_35_7_8b;
wire   w_pass_5_stencil_stream_36_0_8b;
wire   w_pass_5_stencil_stream_36_1_8b;
wire   w_pass_5_stencil_stream_36_2_8b;
wire   w_pass_5_stencil_stream_36_3_8b;
wire   w_pass_5_stencil_stream_36_4_8b;
wire   w_pass_5_stencil_stream_36_5_8b;
wire   w_pass_5_stencil_stream_36_6_8b;
wire   w_pass_5_stencil_stream_36_7_8b;
wire   w_pass_5_stencil_stream_37_0_8b;
wire   w_pass_5_stencil_stream_37_1_8b;
wire   w_pass_5_stencil_stream_37_2_8b;
wire   w_pass_5_stencil_stream_37_3_8b;
wire   w_pass_5_stencil_stream_37_4_8b;
wire   w_pass_5_stencil_stream_37_5_8b;
wire   w_pass_5_stencil_stream_37_6_8b;
wire   w_pass_5_stencil_stream_37_7_8b;
wire   w_pass_5_stencil_stream_38_0_8b;
wire   w_pass_5_stencil_stream_38_1_8b;
wire   w_pass_5_stencil_stream_38_2_8b;
wire   w_pass_5_stencil_stream_38_3_8b;
wire   w_pass_5_stencil_stream_38_4_8b;
wire   w_pass_5_stencil_stream_38_5_8b;
wire   w_pass_5_stencil_stream_38_6_8b;
wire   w_pass_5_stencil_stream_38_7_8b;
wire   w_pass_5_stencil_stream_39_0_8b;
wire   w_pass_5_stencil_stream_39_1_8b;
wire   w_pass_5_stencil_stream_39_2_8b;
wire   w_pass_5_stencil_stream_39_3_8b;
wire   w_pass_5_stencil_stream_39_4_8b;
wire   w_pass_5_stencil_stream_39_5_8b;
wire   w_pass_5_stencil_stream_39_6_8b;
wire   w_pass_5_stencil_stream_39_7_8b;
wire   w_pass_5_stencil_stream_40_0_8b;
wire   w_pass_5_stencil_stream_40_1_8b;
wire   w_pass_5_stencil_stream_40_2_8b;
wire   w_pass_5_stencil_stream_40_3_8b;
wire   w_pass_5_stencil_stream_40_4_8b;
wire   w_pass_5_stencil_stream_40_5_8b;
wire   w_pass_5_stencil_stream_40_6_8b;
wire   w_pass_5_stencil_stream_40_7_8b;
wire   w_pass_5_stencil_stream_41_0_8b;
wire   w_pass_5_stencil_stream_41_1_8b;
wire   w_pass_5_stencil_stream_41_2_8b;
wire   w_pass_5_stencil_stream_41_3_8b;
wire   w_pass_5_stencil_stream_41_4_8b;
wire   w_pass_5_stencil_stream_41_5_8b;
wire   w_pass_5_stencil_stream_41_6_8b;
wire   w_pass_5_stencil_stream_41_7_8b;
wire   w_pass_5_stencil_stream_42_0_8b;
wire   w_pass_5_stencil_stream_42_1_8b;
wire   w_pass_5_stencil_stream_42_2_8b;
wire   w_pass_5_stencil_stream_42_3_8b;
wire   w_pass_5_stencil_stream_42_4_8b;
wire   w_pass_5_stencil_stream_42_5_8b;
wire   w_pass_5_stencil_stream_42_6_8b;
wire   w_pass_5_stencil_stream_42_7_8b;
wire   w_pass_5_stencil_stream_43_0_8b;
wire   w_pass_5_stencil_stream_43_1_8b;
wire   w_pass_5_stencil_stream_43_2_8b;
wire   w_pass_5_stencil_stream_43_3_8b;
wire   w_pass_5_stencil_stream_43_4_8b;
wire   w_pass_5_stencil_stream_43_5_8b;
wire   w_pass_5_stencil_stream_43_6_8b;
wire   w_pass_5_stencil_stream_43_7_8b;
wire   w_pass_5_stencil_stream_44_0_8b;
wire   w_pass_5_stencil_stream_44_1_8b;
wire   w_pass_5_stencil_stream_44_2_8b;
wire   w_pass_5_stencil_stream_44_3_8b;
wire   w_pass_5_stencil_stream_44_4_8b;
wire   w_pass_5_stencil_stream_44_5_8b;
wire   w_pass_5_stencil_stream_44_6_8b;
wire   w_pass_5_stencil_stream_44_7_8b;
wire   w_pass_5_stencil_stream_45_0_8b;
wire   w_pass_5_stencil_stream_45_1_8b;
wire   w_pass_5_stencil_stream_45_2_8b;
wire   w_pass_5_stencil_stream_45_3_8b;
wire   w_pass_5_stencil_stream_45_4_8b;
wire   w_pass_5_stencil_stream_45_5_8b;
wire   w_pass_5_stencil_stream_45_6_8b;
wire   w_pass_5_stencil_stream_45_7_8b;
wire   w_pass_5_stencil_stream_46_0_8b;
wire   w_pass_5_stencil_stream_46_1_8b;
wire   w_pass_5_stencil_stream_46_2_8b;
wire   w_pass_5_stencil_stream_46_3_8b;
wire   w_pass_5_stencil_stream_46_4_8b;
wire   w_pass_5_stencil_stream_46_5_8b;
wire   w_pass_5_stencil_stream_46_6_8b;
wire   w_pass_5_stencil_stream_46_7_8b;
wire   w_pass_5_stencil_stream_47_0_8b;
wire   w_pass_5_stencil_stream_47_1_8b;
wire   w_pass_5_stencil_stream_47_2_8b;
wire   w_pass_5_stencil_stream_47_3_8b;
wire   w_pass_5_stencil_stream_47_4_8b;
wire   w_pass_5_stencil_stream_47_5_8b;
wire   w_pass_5_stencil_stream_47_6_8b;
wire   w_pass_5_stencil_stream_47_7_8b;
wire   w_pass_5_stencil_stream_48_0_8b;
wire   w_pass_5_stencil_stream_48_1_8b;
wire   w_pass_5_stencil_stream_48_2_8b;
wire   w_pass_5_stencil_stream_48_3_8b;
wire   w_pass_5_stencil_stream_48_4_8b;
wire   w_pass_5_stencil_stream_48_5_8b;
wire   w_pass_5_stencil_stream_48_6_8b;
wire   w_pass_5_stencil_stream_48_7_8b;
wire   w_pass_5_stencil_stream_49_0_8b;
wire   w_pass_5_stencil_stream_49_1_8b;
wire   w_pass_5_stencil_stream_49_2_8b;
wire   w_pass_5_stencil_stream_49_3_8b;
wire   w_pass_5_stencil_stream_49_4_8b;
wire   w_pass_5_stencil_stream_49_5_8b;
wire   w_pass_5_stencil_stream_49_6_8b;
wire   w_pass_5_stencil_stream_49_7_8b;
wire   w_pass_5_stencil_stream_50_0_8b;
wire   w_pass_5_stencil_stream_50_1_8b;
wire   w_pass_5_stencil_stream_50_2_8b;
wire   w_pass_5_stencil_stream_50_3_8b;
wire   w_pass_5_stencil_stream_50_4_8b;
wire   w_pass_5_stencil_stream_50_5_8b;
wire   w_pass_5_stencil_stream_50_6_8b;
wire   w_pass_5_stencil_stream_50_7_8b;
wire   w_pass_5_stencil_stream_51_0_8b;
wire   w_pass_5_stencil_stream_51_1_8b;
wire   w_pass_5_stencil_stream_51_2_8b;
wire   w_pass_5_stencil_stream_51_3_8b;
wire   w_pass_5_stencil_stream_51_4_8b;
wire   w_pass_5_stencil_stream_51_5_8b;
wire   w_pass_5_stencil_stream_51_6_8b;
wire   w_pass_5_stencil_stream_51_7_8b;
wire   w_pass_5_stencil_stream_52_0_8b;
wire   w_pass_5_stencil_stream_52_1_8b;
wire   w_pass_5_stencil_stream_52_2_8b;
wire   w_pass_5_stencil_stream_52_3_8b;
wire   w_pass_5_stencil_stream_52_4_8b;
wire   w_pass_5_stencil_stream_52_5_8b;
wire   w_pass_5_stencil_stream_52_6_8b;
wire   w_pass_5_stencil_stream_52_7_8b;
wire   w_pass_5_stencil_stream_53_0_8b;
wire   w_pass_5_stencil_stream_53_1_8b;
wire   w_pass_5_stencil_stream_53_2_8b;
wire   w_pass_5_stencil_stream_53_3_8b;
wire   w_pass_5_stencil_stream_53_4_8b;
wire   w_pass_5_stencil_stream_53_5_8b;
wire   w_pass_5_stencil_stream_53_6_8b;
wire   w_pass_5_stencil_stream_53_7_8b;
wire   w_pass_5_stencil_stream_54_0_8b;
wire   w_pass_5_stencil_stream_54_1_8b;
wire   w_pass_5_stencil_stream_54_2_8b;
wire   w_pass_5_stencil_stream_54_3_8b;
wire   w_pass_5_stencil_stream_54_4_8b;
wire   w_pass_5_stencil_stream_54_5_8b;
wire   w_pass_5_stencil_stream_54_6_8b;
wire   w_pass_5_stencil_stream_54_7_8b;
wire   w_pass_5_stencil_stream_55_0_8b;
wire   w_pass_5_stencil_stream_55_1_8b;
wire   w_pass_5_stencil_stream_55_2_8b;
wire   w_pass_5_stencil_stream_55_3_8b;
wire   w_pass_5_stencil_stream_55_4_8b;
wire   w_pass_5_stencil_stream_55_5_8b;
wire   w_pass_5_stencil_stream_55_6_8b;
wire   w_pass_5_stencil_stream_55_7_8b;
wire   w_pass_5_stencil_stream_56_0_8b;
wire   w_pass_5_stencil_stream_56_1_8b;
wire   w_pass_5_stencil_stream_56_2_8b;
wire   w_pass_5_stencil_stream_56_3_8b;
wire   w_pass_5_stencil_stream_56_4_8b;
wire   w_pass_5_stencil_stream_56_5_8b;
wire   w_pass_5_stencil_stream_56_6_8b;
wire   w_pass_5_stencil_stream_56_7_8b;
wire   w_pass_5_stencil_stream_57_0_8b;
wire   w_pass_5_stencil_stream_57_1_8b;
wire   w_pass_5_stencil_stream_57_2_8b;
wire   w_pass_5_stencil_stream_57_3_8b;
wire   w_pass_5_stencil_stream_57_4_8b;
wire   w_pass_5_stencil_stream_57_5_8b;
wire   w_pass_5_stencil_stream_57_6_8b;
wire   w_pass_5_stencil_stream_57_7_8b;
wire   w_pass_5_stencil_stream_58_0_8b;
wire   w_pass_5_stencil_stream_58_1_8b;
wire   w_pass_5_stencil_stream_58_2_8b;
wire   w_pass_5_stencil_stream_58_3_8b;
wire   w_pass_5_stencil_stream_58_4_8b;
wire   w_pass_5_stencil_stream_58_5_8b;
wire   w_pass_5_stencil_stream_58_6_8b;
wire   w_pass_5_stencil_stream_58_7_8b;
wire   w_pass_5_stencil_stream_59_0_8b;
wire   w_pass_5_stencil_stream_59_1_8b;
wire   w_pass_5_stencil_stream_59_2_8b;
wire   w_pass_5_stencil_stream_59_3_8b;
wire   w_pass_5_stencil_stream_59_4_8b;
wire   w_pass_5_stencil_stream_59_5_8b;
wire   w_pass_5_stencil_stream_59_6_8b;
wire   w_pass_5_stencil_stream_59_7_8b;
wire   w_pass_5_stencil_stream_60_0_8b;
wire   w_pass_5_stencil_stream_60_1_8b;
wire   w_pass_5_stencil_stream_60_2_8b;
wire   w_pass_5_stencil_stream_60_3_8b;
wire   w_pass_5_stencil_stream_60_4_8b;
wire   w_pass_5_stencil_stream_60_5_8b;
wire   w_pass_5_stencil_stream_60_6_8b;
wire   w_pass_5_stencil_stream_60_7_8b;
wire   w_pass_5_stencil_stream_61_0_8b;
wire   w_pass_5_stencil_stream_61_1_8b;
wire   w_pass_5_stencil_stream_61_2_8b;
wire   w_pass_5_stencil_stream_61_3_8b;
wire   w_pass_5_stencil_stream_61_4_8b;
wire   w_pass_5_stencil_stream_61_5_8b;
wire   w_pass_5_stencil_stream_61_6_8b;
wire   w_pass_5_stencil_stream_61_7_8b;
wire   w_pass_5_stencil_stream_62_0_8b;
wire   w_pass_5_stencil_stream_62_1_8b;
wire   w_pass_5_stencil_stream_62_2_8b;
wire   w_pass_5_stencil_stream_62_3_8b;
wire   w_pass_5_stencil_stream_62_4_8b;
wire   w_pass_5_stencil_stream_62_5_8b;
wire   w_pass_5_stencil_stream_62_6_8b;
wire   w_pass_5_stencil_stream_62_7_8b;
wire   w_pass_5_stencil_stream_63_0_8b;
wire   w_pass_5_stencil_stream_63_1_8b;
wire   w_pass_5_stencil_stream_63_2_8b;
wire   w_pass_5_stencil_stream_63_3_8b;
wire   w_pass_5_stencil_stream_63_4_8b;
wire   w_pass_5_stencil_stream_63_5_8b;
wire   w_pass_5_stencil_stream_63_6_8b;
wire   w_pass_5_stencil_stream_63_7_8b;
wire   w_pass_5_stencil_stream_64_0_8b;
wire   w_pass_5_stencil_stream_64_1_8b;
wire   w_pass_5_stencil_stream_64_2_8b;
wire   w_pass_5_stencil_stream_64_3_8b;
wire   w_pass_5_stencil_stream_64_4_8b;
wire   w_pass_5_stencil_stream_64_5_8b;
wire   w_pass_5_stencil_stream_64_6_8b;
wire   w_pass_5_stencil_stream_64_7_8b;
wire   w_pass_5_stencil_stream_65_0_8b;
wire   w_pass_5_stencil_stream_65_1_8b;
wire   w_pass_5_stencil_stream_65_2_8b;
wire   w_pass_5_stencil_stream_65_3_8b;
wire   w_pass_5_stencil_stream_65_4_8b;
wire   w_pass_5_stencil_stream_65_5_8b;
wire   w_pass_5_stencil_stream_65_6_8b;
wire   w_pass_5_stencil_stream_65_7_8b;
wire   w_pass_5_stencil_stream_66_0_8b;
wire   w_pass_5_stencil_stream_66_1_8b;
wire   w_pass_5_stencil_stream_66_2_8b;
wire   w_pass_5_stencil_stream_66_3_8b;
wire   w_pass_5_stencil_stream_66_4_8b;
wire   w_pass_5_stencil_stream_66_5_8b;
wire   w_pass_5_stencil_stream_66_6_8b;
wire   w_pass_5_stencil_stream_66_7_8b;
wire   w_pass_5_stencil_stream_67_0_8b;
wire   w_pass_5_stencil_stream_67_1_8b;
wire   w_pass_5_stencil_stream_67_2_8b;
wire   w_pass_5_stencil_stream_67_3_8b;
wire   w_pass_5_stencil_stream_67_4_8b;
wire   w_pass_5_stencil_stream_67_5_8b;
wire   w_pass_5_stencil_stream_67_6_8b;
wire   w_pass_5_stencil_stream_67_7_8b;
wire   w_pass_5_stencil_stream_68_0_8b;
wire   w_pass_5_stencil_stream_68_1_8b;
wire   w_pass_5_stencil_stream_68_2_8b;
wire   w_pass_5_stencil_stream_68_3_8b;
wire   w_pass_5_stencil_stream_68_4_8b;
wire   w_pass_5_stencil_stream_68_5_8b;
wire   w_pass_5_stencil_stream_68_6_8b;
wire   w_pass_5_stencil_stream_68_7_8b;
wire   w_pass_5_stencil_stream_69_0_8b;
wire   w_pass_5_stencil_stream_69_1_8b;
wire   w_pass_5_stencil_stream_69_2_8b;
wire   w_pass_5_stencil_stream_69_3_8b;
wire   w_pass_5_stencil_stream_69_4_8b;
wire   w_pass_5_stencil_stream_69_5_8b;
wire   w_pass_5_stencil_stream_69_6_8b;
wire   w_pass_5_stencil_stream_69_7_8b;
wire   w_pass_5_stencil_stream_70_0_8b;
wire   w_pass_5_stencil_stream_70_1_8b;
wire   w_pass_5_stencil_stream_70_2_8b;
wire   w_pass_5_stencil_stream_70_3_8b;
wire   w_pass_5_stencil_stream_70_4_8b;
wire   w_pass_5_stencil_stream_70_5_8b;
wire   w_pass_5_stencil_stream_70_6_8b;
wire   w_pass_5_stencil_stream_70_7_8b;

wire   gnd;
assign gnd=1'b0;

LB_8_8_1_8bit_False LB__pass_4_stencil_stream (
    .clk(clk),

    .in0(w_pass_4_stencil_update_stream_0_0_8b),

    .out0(w_pass_4_stencil_stream_0_0_8b),
    .out1(w_pass_4_stencil_stream_0_1_8b),
    .out2(w_pass_4_stencil_stream_0_2_8b),
    .out3(w_pass_4_stencil_stream_0_3_8b),
    .out4(w_pass_4_stencil_stream_0_4_8b),
    .out5(w_pass_4_stencil_stream_0_5_8b),
    .out6(w_pass_4_stencil_stream_0_6_8b),
    .out7(w_pass_4_stencil_stream_0_7_8b),
    .out8(w_pass_4_stencil_stream_1_0_8b),
    .out9(w_pass_4_stencil_stream_1_1_8b),
    .out10(w_pass_4_stencil_stream_1_2_8b),
    .out11(w_pass_4_stencil_stream_1_3_8b),
    .out12(w_pass_4_stencil_stream_1_4_8b),
    .out13(w_pass_4_stencil_stream_1_5_8b),
    .out14(w_pass_4_stencil_stream_1_6_8b),
    .out15(w_pass_4_stencil_stream_1_7_8b),
    .out16(w_pass_4_stencil_stream_2_0_8b),
    .out17(w_pass_4_stencil_stream_2_1_8b),
    .out18(w_pass_4_stencil_stream_2_2_8b),
    .out19(w_pass_4_stencil_stream_2_3_8b),
    .out20(w_pass_4_stencil_stream_2_4_8b),
    .out21(w_pass_4_stencil_stream_2_5_8b),
    .out22(w_pass_4_stencil_stream_2_6_8b),
    .out23(w_pass_4_stencil_stream_2_7_8b),
    .out24(w_pass_4_stencil_stream_3_0_8b),
    .out25(w_pass_4_stencil_stream_3_1_8b),
    .out26(w_pass_4_stencil_stream_3_2_8b),
    .out27(w_pass_4_stencil_stream_3_3_8b),
    .out28(w_pass_4_stencil_stream_3_4_8b),
    .out29(w_pass_4_stencil_stream_3_5_8b),
    .out30(w_pass_4_stencil_stream_3_6_8b),
    .out31(w_pass_4_stencil_stream_3_7_8b),
    .out32(w_pass_4_stencil_stream_4_0_8b),
    .out33(w_pass_4_stencil_stream_4_1_8b),
    .out34(w_pass_4_stencil_stream_4_2_8b),
    .out35(w_pass_4_stencil_stream_4_3_8b),
    .out36(w_pass_4_stencil_stream_4_4_8b),
    .out37(w_pass_4_stencil_stream_4_5_8b),
    .out38(w_pass_4_stencil_stream_4_6_8b),
    .out39(w_pass_4_stencil_stream_4_7_8b),
    .out40(w_pass_4_stencil_stream_5_0_8b),
    .out41(w_pass_4_stencil_stream_5_1_8b),
    .out42(w_pass_4_stencil_stream_5_2_8b),
    .out43(w_pass_4_stencil_stream_5_3_8b),
    .out44(w_pass_4_stencil_stream_5_4_8b),
    .out45(w_pass_4_stencil_stream_5_5_8b),
    .out46(w_pass_4_stencil_stream_5_6_8b),
    .out47(w_pass_4_stencil_stream_5_7_8b),
    .out48(w_pass_4_stencil_stream_6_0_8b),
    .out49(w_pass_4_stencil_stream_6_1_8b),
    .out50(w_pass_4_stencil_stream_6_2_8b),
    .out51(w_pass_4_stencil_stream_6_3_8b),
    .out52(w_pass_4_stencil_stream_6_4_8b),
    .out53(w_pass_4_stencil_stream_6_5_8b),
    .out54(w_pass_4_stencil_stream_6_6_8b),
    .out55(w_pass_4_stencil_stream_6_7_8b),
    .out56(w_pass_4_stencil_stream_7_0_8b),
    .out57(w_pass_4_stencil_stream_7_1_8b),
    .out58(w_pass_4_stencil_stream_7_2_8b),
    .out59(w_pass_4_stencil_stream_7_3_8b),
    .out60(w_pass_4_stencil_stream_7_4_8b),
    .out61(w_pass_4_stencil_stream_7_5_8b),
    .out62(w_pass_4_stencil_stream_7_6_8b),
    .out63(w_pass_4_stencil_stream_7_7_8b)
);

kernel__hw_output_2_stencil_stream KERN__hw_output_2_stencil_stream (
    .w_pass_4_stencil_0_0_8b(w_pass_4_stencil_stream_0_0_8b),
    .w_pass_4_stencil_0_1_8b(w_pass_4_stencil_stream_0_1_8b),
    .w_pass_4_stencil_0_2_8b(w_pass_4_stencil_stream_0_2_8b),
    .w_pass_4_stencil_0_3_8b(w_pass_4_stencil_stream_0_3_8b),
    .w_pass_4_stencil_0_4_8b(w_pass_4_stencil_stream_0_4_8b),
    .w_pass_4_stencil_0_5_8b(w_pass_4_stencil_stream_0_5_8b),
    .w_pass_4_stencil_0_6_8b(w_pass_4_stencil_stream_0_6_8b),
    .w_pass_4_stencil_0_7_8b(w_pass_4_stencil_stream_0_7_8b),
    .w_pass_4_stencil_1_0_8b(w_pass_4_stencil_stream_1_0_8b),
    .w_pass_4_stencil_1_1_8b(w_pass_4_stencil_stream_1_1_8b),
    .w_pass_4_stencil_1_2_8b(w_pass_4_stencil_stream_1_2_8b),
    .w_pass_4_stencil_1_3_8b(w_pass_4_stencil_stream_1_3_8b),
    .w_pass_4_stencil_1_4_8b(w_pass_4_stencil_stream_1_4_8b),
    .w_pass_4_stencil_1_5_8b(w_pass_4_stencil_stream_1_5_8b),
    .w_pass_4_stencil_1_6_8b(w_pass_4_stencil_stream_1_6_8b),
    .w_pass_4_stencil_1_7_8b(w_pass_4_stencil_stream_1_7_8b),
    .w_pass_4_stencil_2_0_8b(w_pass_4_stencil_stream_2_0_8b),
    .w_pass_4_stencil_2_1_8b(w_pass_4_stencil_stream_2_1_8b),
    .w_pass_4_stencil_2_2_8b(w_pass_4_stencil_stream_2_2_8b),
    .w_pass_4_stencil_2_3_8b(w_pass_4_stencil_stream_2_3_8b),
    .w_pass_4_stencil_2_4_8b(w_pass_4_stencil_stream_2_4_8b),
    .w_pass_4_stencil_2_5_8b(w_pass_4_stencil_stream_2_5_8b),
    .w_pass_4_stencil_2_6_8b(w_pass_4_stencil_stream_2_6_8b),
    .w_pass_4_stencil_2_7_8b(w_pass_4_stencil_stream_2_7_8b),
    .w_pass_4_stencil_3_0_8b(w_pass_4_stencil_stream_3_0_8b),
    .w_pass_4_stencil_3_1_8b(w_pass_4_stencil_stream_3_1_8b),
    .w_pass_4_stencil_3_2_8b(w_pass_4_stencil_stream_3_2_8b),
    .w_pass_4_stencil_3_3_8b(w_pass_4_stencil_stream_3_3_8b),
    .w_pass_4_stencil_3_4_8b(w_pass_4_stencil_stream_3_4_8b),
    .w_pass_4_stencil_3_5_8b(w_pass_4_stencil_stream_3_5_8b),
    .w_pass_4_stencil_3_6_8b(w_pass_4_stencil_stream_3_6_8b),
    .w_pass_4_stencil_3_7_8b(w_pass_4_stencil_stream_3_7_8b),
    .w_pass_4_stencil_4_0_8b(w_pass_4_stencil_stream_4_0_8b),
    .w_pass_4_stencil_4_1_8b(w_pass_4_stencil_stream_4_1_8b),
    .w_pass_4_stencil_4_2_8b(w_pass_4_stencil_stream_4_2_8b),
    .w_pass_4_stencil_4_3_8b(w_pass_4_stencil_stream_4_3_8b),
    .w_pass_4_stencil_4_4_8b(w_pass_4_stencil_stream_4_4_8b),
    .w_pass_4_stencil_4_5_8b(w_pass_4_stencil_stream_4_5_8b),
    .w_pass_4_stencil_4_6_8b(w_pass_4_stencil_stream_4_6_8b),
    .w_pass_4_stencil_4_7_8b(w_pass_4_stencil_stream_4_7_8b),
    .w_pass_4_stencil_5_0_8b(w_pass_4_stencil_stream_5_0_8b),
    .w_pass_4_stencil_5_1_8b(w_pass_4_stencil_stream_5_1_8b),
    .w_pass_4_stencil_5_2_8b(w_pass_4_stencil_stream_5_2_8b),
    .w_pass_4_stencil_5_3_8b(w_pass_4_stencil_stream_5_3_8b),
    .w_pass_4_stencil_5_4_8b(w_pass_4_stencil_stream_5_4_8b),
    .w_pass_4_stencil_5_5_8b(w_pass_4_stencil_stream_5_5_8b),
    .w_pass_4_stencil_5_6_8b(w_pass_4_stencil_stream_5_6_8b),
    .w_pass_4_stencil_5_7_8b(w_pass_4_stencil_stream_5_7_8b),
    .w_pass_4_stencil_6_0_8b(w_pass_4_stencil_stream_6_0_8b),
    .w_pass_4_stencil_6_1_8b(w_pass_4_stencil_stream_6_1_8b),
    .w_pass_4_stencil_6_2_8b(w_pass_4_stencil_stream_6_2_8b),
    .w_pass_4_stencil_6_3_8b(w_pass_4_stencil_stream_6_3_8b),
    .w_pass_4_stencil_6_4_8b(w_pass_4_stencil_stream_6_4_8b),
    .w_pass_4_stencil_6_5_8b(w_pass_4_stencil_stream_6_5_8b),
    .w_pass_4_stencil_6_6_8b(w_pass_4_stencil_stream_6_6_8b),
    .w_pass_4_stencil_6_7_8b(w_pass_4_stencil_stream_6_7_8b),
    .w_pass_4_stencil_7_0_8b(w_pass_4_stencil_stream_7_0_8b),
    .w_pass_4_stencil_7_1_8b(w_pass_4_stencil_stream_7_1_8b),
    .w_pass_4_stencil_7_2_8b(w_pass_4_stencil_stream_7_2_8b),
    .w_pass_4_stencil_7_3_8b(w_pass_4_stencil_stream_7_3_8b),
    .w_pass_4_stencil_7_4_8b(w_pass_4_stencil_stream_7_4_8b),
    .w_pass_4_stencil_7_5_8b(w_pass_4_stencil_stream_7_5_8b),
    .w_pass_4_stencil_7_6_8b(w_pass_4_stencil_stream_7_6_8b),
    .w_pass_4_stencil_7_7_8b(w_pass_4_stencil_stream_7_7_8b),
    .w_pass_5_stencil_16_0_8b(w_pass_5_stencil_stream_0_0_8b),
    .w_pass_5_stencil_16_1_8b(w_pass_5_stencil_stream_0_1_8b),
    .w_pass_5_stencil_16_2_8b(w_pass_5_stencil_stream_0_2_8b),
    .w_pass_5_stencil_16_3_8b(w_pass_5_stencil_stream_0_3_8b),
    .w_pass_5_stencil_16_4_8b(w_pass_5_stencil_stream_0_4_8b),
    .w_pass_5_stencil_16_5_8b(w_pass_5_stencil_stream_0_5_8b),
    .w_pass_5_stencil_16_6_8b(w_pass_5_stencil_stream_0_6_8b),
    .w_pass_5_stencil_16_7_8b(w_pass_5_stencil_stream_0_7_8b),
    .w_pass_5_stencil_17_0_8b(w_pass_5_stencil_stream_1_0_8b),
    .w_pass_5_stencil_17_1_8b(w_pass_5_stencil_stream_1_1_8b),
    .w_pass_5_stencil_17_2_8b(w_pass_5_stencil_stream_1_2_8b),
    .w_pass_5_stencil_18_0_8b(w_pass_5_stencil_stream_1_3_8b),
    .w_pass_5_stencil_18_1_8b(w_pass_5_stencil_stream_1_4_8b),
    .w_pass_5_stencil_18_2_8b(w_pass_5_stencil_stream_1_5_8b),
    .w_pass_5_stencil_19_0_8b(w_pass_5_stencil_stream_1_6_8b),
    .w_pass_5_stencil_19_1_8b(w_pass_5_stencil_stream_1_7_8b),
    .w_pass_5_stencil_19_2_8b(w_pass_5_stencil_stream_2_0_8b),
    .w_pass_5_stencil_20_0_8b(w_pass_5_stencil_stream_2_1_8b),
    .w_pass_5_stencil_20_1_8b(w_pass_5_stencil_stream_2_2_8b),
    .w_pass_5_stencil_20_2_8b(w_pass_5_stencil_stream_2_3_8b),
    .w_pass_5_stencil_21_0_8b(w_pass_5_stencil_stream_2_4_8b),
    .w_pass_5_stencil_21_1_8b(w_pass_5_stencil_stream_2_5_8b),
    .w_pass_5_stencil_21_2_8b(w_pass_5_stencil_stream_2_6_8b),
    .w_pass_5_stencil_22_0_8b(w_pass_5_stencil_stream_2_7_8b),
    .w_pass_5_stencil_22_1_8b(w_pass_5_stencil_stream_3_0_8b),
    .w_pass_5_stencil_23_0_8b(w_pass_5_stencil_stream_3_1_8b),
    .w_pass_5_stencil_23_1_8b(w_pass_5_stencil_stream_3_2_8b),
    .w_offset_2_s1_p2_search_x_search_xo_16b(w_pass_5_stencil_stream_3_3_8b),

    .out_w_hw_output_2_stencil_packed_8b(w_hw_output_2_stencil_stream_0_0_8b),

    .clk(clk)
);

LB_8_71_1_8bit_False LB__pass_5_stencil_stream (
    .clk(clk),

    .in0(w_pass_5_stencil_update_stream_0_0_8b),

    .out0(w_pass_5_stencil_stream_0_0_8b),
    .out1(w_pass_5_stencil_stream_0_1_8b),
    .out2(w_pass_5_stencil_stream_0_2_8b),
    .out3(w_pass_5_stencil_stream_0_3_8b),
    .out4(w_pass_5_stencil_stream_0_4_8b),
    .out5(w_pass_5_stencil_stream_0_5_8b),
    .out6(w_pass_5_stencil_stream_0_6_8b),
    .out7(w_pass_5_stencil_stream_0_7_8b),
    .out8(w_pass_5_stencil_stream_1_0_8b),
    .out9(w_pass_5_stencil_stream_1_1_8b),
    .out10(w_pass_5_stencil_stream_1_2_8b),
    .out11(w_pass_5_stencil_stream_1_3_8b),
    .out12(w_pass_5_stencil_stream_1_4_8b),
    .out13(w_pass_5_stencil_stream_1_5_8b),
    .out14(w_pass_5_stencil_stream_1_6_8b),
    .out15(w_pass_5_stencil_stream_1_7_8b),
    .out16(w_pass_5_stencil_stream_2_0_8b),
    .out17(w_pass_5_stencil_stream_2_1_8b),
    .out18(w_pass_5_stencil_stream_2_2_8b),
    .out19(w_pass_5_stencil_stream_2_3_8b),
    .out20(w_pass_5_stencil_stream_2_4_8b),
    .out21(w_pass_5_stencil_stream_2_5_8b),
    .out22(w_pass_5_stencil_stream_2_6_8b),
    .out23(w_pass_5_stencil_stream_2_7_8b),
    .out24(w_pass_5_stencil_stream_3_0_8b),
    .out25(w_pass_5_stencil_stream_3_1_8b),
    .out26(w_pass_5_stencil_stream_3_2_8b),
    .out27(w_pass_5_stencil_stream_3_3_8b),
    .out28(w_pass_5_stencil_stream_3_4_8b),
    .out29(w_pass_5_stencil_stream_3_5_8b),
    .out30(w_pass_5_stencil_stream_3_6_8b),
    .out31(w_pass_5_stencil_stream_3_7_8b),
    .out32(w_pass_5_stencil_stream_4_0_8b),
    .out33(w_pass_5_stencil_stream_4_1_8b),
    .out34(w_pass_5_stencil_stream_4_2_8b),
    .out35(w_pass_5_stencil_stream_4_3_8b),
    .out36(w_pass_5_stencil_stream_4_4_8b),
    .out37(w_pass_5_stencil_stream_4_5_8b),
    .out38(w_pass_5_stencil_stream_4_6_8b),
    .out39(w_pass_5_stencil_stream_4_7_8b),
    .out40(w_pass_5_stencil_stream_5_0_8b),
    .out41(w_pass_5_stencil_stream_5_1_8b),
    .out42(w_pass_5_stencil_stream_5_2_8b),
    .out43(w_pass_5_stencil_stream_5_3_8b),
    .out44(w_pass_5_stencil_stream_5_4_8b),
    .out45(w_pass_5_stencil_stream_5_5_8b),
    .out46(w_pass_5_stencil_stream_5_6_8b),
    .out47(w_pass_5_stencil_stream_5_7_8b),
    .out48(w_pass_5_stencil_stream_6_0_8b),
    .out49(w_pass_5_stencil_stream_6_1_8b),
    .out50(w_pass_5_stencil_stream_6_2_8b),
    .out51(w_pass_5_stencil_stream_6_3_8b),
    .out52(w_pass_5_stencil_stream_6_4_8b),
    .out53(w_pass_5_stencil_stream_6_5_8b),
    .out54(w_pass_5_stencil_stream_6_6_8b),
    .out55(w_pass_5_stencil_stream_6_7_8b),
    .out56(w_pass_5_stencil_stream_7_0_8b),
    .out57(w_pass_5_stencil_stream_7_1_8b),
    .out58(w_pass_5_stencil_stream_7_2_8b),
    .out59(w_pass_5_stencil_stream_7_3_8b),
    .out60(w_pass_5_stencil_stream_7_4_8b),
    .out61(w_pass_5_stencil_stream_7_5_8b),
    .out62(w_pass_5_stencil_stream_7_6_8b),
    .out63(w_pass_5_stencil_stream_7_7_8b),
    .out64(w_pass_5_stencil_stream_8_0_8b),
    .out65(w_pass_5_stencil_stream_8_1_8b),
    .out66(w_pass_5_stencil_stream_8_2_8b),
    .out67(w_pass_5_stencil_stream_8_3_8b),
    .out68(w_pass_5_stencil_stream_8_4_8b),
    .out69(w_pass_5_stencil_stream_8_5_8b),
    .out70(w_pass_5_stencil_stream_8_6_8b),
    .out71(w_pass_5_stencil_stream_8_7_8b),
    .out72(w_pass_5_stencil_stream_9_0_8b),
    .out73(w_pass_5_stencil_stream_9_1_8b),
    .out74(w_pass_5_stencil_stream_9_2_8b),
    .out75(w_pass_5_stencil_stream_9_3_8b),
    .out76(w_pass_5_stencil_stream_9_4_8b),
    .out77(w_pass_5_stencil_stream_9_5_8b),
    .out78(w_pass_5_stencil_stream_9_6_8b),
    .out79(w_pass_5_stencil_stream_9_7_8b),
    .out80(w_pass_5_stencil_stream_10_0_8b),
    .out81(w_pass_5_stencil_stream_10_1_8b),
    .out82(w_pass_5_stencil_stream_10_2_8b),
    .out83(w_pass_5_stencil_stream_10_3_8b),
    .out84(w_pass_5_stencil_stream_10_4_8b),
    .out85(w_pass_5_stencil_stream_10_5_8b),
    .out86(w_pass_5_stencil_stream_10_6_8b),
    .out87(w_pass_5_stencil_stream_10_7_8b),
    .out88(w_pass_5_stencil_stream_11_0_8b),
    .out89(w_pass_5_stencil_stream_11_1_8b),
    .out90(w_pass_5_stencil_stream_11_2_8b),
    .out91(w_pass_5_stencil_stream_11_3_8b),
    .out92(w_pass_5_stencil_stream_11_4_8b),
    .out93(w_pass_5_stencil_stream_11_5_8b),
    .out94(w_pass_5_stencil_stream_11_6_8b),
    .out95(w_pass_5_stencil_stream_11_7_8b),
    .out96(w_pass_5_stencil_stream_12_0_8b),
    .out97(w_pass_5_stencil_stream_12_1_8b),
    .out98(w_pass_5_stencil_stream_12_2_8b),
    .out99(w_pass_5_stencil_stream_12_3_8b),
    .out100(w_pass_5_stencil_stream_12_4_8b),
    .out101(w_pass_5_stencil_stream_12_5_8b),
    .out102(w_pass_5_stencil_stream_12_6_8b),
    .out103(w_pass_5_stencil_stream_12_7_8b),
    .out104(w_pass_5_stencil_stream_13_0_8b),
    .out105(w_pass_5_stencil_stream_13_1_8b),
    .out106(w_pass_5_stencil_stream_13_2_8b),
    .out107(w_pass_5_stencil_stream_13_3_8b),
    .out108(w_pass_5_stencil_stream_13_4_8b),
    .out109(w_pass_5_stencil_stream_13_5_8b),
    .out110(w_pass_5_stencil_stream_13_6_8b),
    .out111(w_pass_5_stencil_stream_13_7_8b),
    .out112(w_pass_5_stencil_stream_14_0_8b),
    .out113(w_pass_5_stencil_stream_14_1_8b),
    .out114(w_pass_5_stencil_stream_14_2_8b),
    .out115(w_pass_5_stencil_stream_14_3_8b),
    .out116(w_pass_5_stencil_stream_14_4_8b),
    .out117(w_pass_5_stencil_stream_14_5_8b),
    .out118(w_pass_5_stencil_stream_14_6_8b),
    .out119(w_pass_5_stencil_stream_14_7_8b),
    .out120(w_pass_5_stencil_stream_15_0_8b),
    .out121(w_pass_5_stencil_stream_15_1_8b),
    .out122(w_pass_5_stencil_stream_15_2_8b),
    .out123(w_pass_5_stencil_stream_15_3_8b),
    .out124(w_pass_5_stencil_stream_15_4_8b),
    .out125(w_pass_5_stencil_stream_15_5_8b),
    .out126(w_pass_5_stencil_stream_15_6_8b),
    .out127(w_pass_5_stencil_stream_15_7_8b),
    .out128(w_pass_5_stencil_stream_16_0_8b),
    .out129(w_pass_5_stencil_stream_16_1_8b),
    .out130(w_pass_5_stencil_stream_16_2_8b),
    .out131(w_pass_5_stencil_stream_16_3_8b),
    .out132(w_pass_5_stencil_stream_16_4_8b),
    .out133(w_pass_5_stencil_stream_16_5_8b),
    .out134(w_pass_5_stencil_stream_16_6_8b),
    .out135(w_pass_5_stencil_stream_16_7_8b),
    .out136(w_pass_5_stencil_stream_17_0_8b),
    .out137(w_pass_5_stencil_stream_17_1_8b),
    .out138(w_pass_5_stencil_stream_17_2_8b),
    .out139(w_pass_5_stencil_stream_17_3_8b),
    .out140(w_pass_5_stencil_stream_17_4_8b),
    .out141(w_pass_5_stencil_stream_17_5_8b),
    .out142(w_pass_5_stencil_stream_17_6_8b),
    .out143(w_pass_5_stencil_stream_17_7_8b),
    .out144(w_pass_5_stencil_stream_18_0_8b),
    .out145(w_pass_5_stencil_stream_18_1_8b),
    .out146(w_pass_5_stencil_stream_18_2_8b),
    .out147(w_pass_5_stencil_stream_18_3_8b),
    .out148(w_pass_5_stencil_stream_18_4_8b),
    .out149(w_pass_5_stencil_stream_18_5_8b),
    .out150(w_pass_5_stencil_stream_18_6_8b),
    .out151(w_pass_5_stencil_stream_18_7_8b),
    .out152(w_pass_5_stencil_stream_19_0_8b),
    .out153(w_pass_5_stencil_stream_19_1_8b),
    .out154(w_pass_5_stencil_stream_19_2_8b),
    .out155(w_pass_5_stencil_stream_19_3_8b),
    .out156(w_pass_5_stencil_stream_19_4_8b),
    .out157(w_pass_5_stencil_stream_19_5_8b),
    .out158(w_pass_5_stencil_stream_19_6_8b),
    .out159(w_pass_5_stencil_stream_19_7_8b),
    .out160(w_pass_5_stencil_stream_20_0_8b),
    .out161(w_pass_5_stencil_stream_20_1_8b),
    .out162(w_pass_5_stencil_stream_20_2_8b),
    .out163(w_pass_5_stencil_stream_20_3_8b),
    .out164(w_pass_5_stencil_stream_20_4_8b),
    .out165(w_pass_5_stencil_stream_20_5_8b),
    .out166(w_pass_5_stencil_stream_20_6_8b),
    .out167(w_pass_5_stencil_stream_20_7_8b),
    .out168(w_pass_5_stencil_stream_21_0_8b),
    .out169(w_pass_5_stencil_stream_21_1_8b),
    .out170(w_pass_5_stencil_stream_21_2_8b),
    .out171(w_pass_5_stencil_stream_21_3_8b),
    .out172(w_pass_5_stencil_stream_21_4_8b),
    .out173(w_pass_5_stencil_stream_21_5_8b),
    .out174(w_pass_5_stencil_stream_21_6_8b),
    .out175(w_pass_5_stencil_stream_21_7_8b),
    .out176(w_pass_5_stencil_stream_22_0_8b),
    .out177(w_pass_5_stencil_stream_22_1_8b),
    .out178(w_pass_5_stencil_stream_22_2_8b),
    .out179(w_pass_5_stencil_stream_22_3_8b),
    .out180(w_pass_5_stencil_stream_22_4_8b),
    .out181(w_pass_5_stencil_stream_22_5_8b),
    .out182(w_pass_5_stencil_stream_22_6_8b),
    .out183(w_pass_5_stencil_stream_22_7_8b),
    .out184(w_pass_5_stencil_stream_23_0_8b),
    .out185(w_pass_5_stencil_stream_23_1_8b),
    .out186(w_pass_5_stencil_stream_23_2_8b),
    .out187(w_pass_5_stencil_stream_23_3_8b),
    .out188(w_pass_5_stencil_stream_23_4_8b),
    .out189(w_pass_5_stencil_stream_23_5_8b),
    .out190(w_pass_5_stencil_stream_23_6_8b),
    .out191(w_pass_5_stencil_stream_23_7_8b),
    .out192(w_pass_5_stencil_stream_24_0_8b),
    .out193(w_pass_5_stencil_stream_24_1_8b),
    .out194(w_pass_5_stencil_stream_24_2_8b),
    .out195(w_pass_5_stencil_stream_24_3_8b),
    .out196(w_pass_5_stencil_stream_24_4_8b),
    .out197(w_pass_5_stencil_stream_24_5_8b),
    .out198(w_pass_5_stencil_stream_24_6_8b),
    .out199(w_pass_5_stencil_stream_24_7_8b),
    .out200(w_pass_5_stencil_stream_25_0_8b),
    .out201(w_pass_5_stencil_stream_25_1_8b),
    .out202(w_pass_5_stencil_stream_25_2_8b),
    .out203(w_pass_5_stencil_stream_25_3_8b),
    .out204(w_pass_5_stencil_stream_25_4_8b),
    .out205(w_pass_5_stencil_stream_25_5_8b),
    .out206(w_pass_5_stencil_stream_25_6_8b),
    .out207(w_pass_5_stencil_stream_25_7_8b),
    .out208(w_pass_5_stencil_stream_26_0_8b),
    .out209(w_pass_5_stencil_stream_26_1_8b),
    .out210(w_pass_5_stencil_stream_26_2_8b),
    .out211(w_pass_5_stencil_stream_26_3_8b),
    .out212(w_pass_5_stencil_stream_26_4_8b),
    .out213(w_pass_5_stencil_stream_26_5_8b),
    .out214(w_pass_5_stencil_stream_26_6_8b),
    .out215(w_pass_5_stencil_stream_26_7_8b),
    .out216(w_pass_5_stencil_stream_27_0_8b),
    .out217(w_pass_5_stencil_stream_27_1_8b),
    .out218(w_pass_5_stencil_stream_27_2_8b),
    .out219(w_pass_5_stencil_stream_27_3_8b),
    .out220(w_pass_5_stencil_stream_27_4_8b),
    .out221(w_pass_5_stencil_stream_27_5_8b),
    .out222(w_pass_5_stencil_stream_27_6_8b),
    .out223(w_pass_5_stencil_stream_27_7_8b),
    .out224(w_pass_5_stencil_stream_28_0_8b),
    .out225(w_pass_5_stencil_stream_28_1_8b),
    .out226(w_pass_5_stencil_stream_28_2_8b),
    .out227(w_pass_5_stencil_stream_28_3_8b),
    .out228(w_pass_5_stencil_stream_28_4_8b),
    .out229(w_pass_5_stencil_stream_28_5_8b),
    .out230(w_pass_5_stencil_stream_28_6_8b),
    .out231(w_pass_5_stencil_stream_28_7_8b),
    .out232(w_pass_5_stencil_stream_29_0_8b),
    .out233(w_pass_5_stencil_stream_29_1_8b),
    .out234(w_pass_5_stencil_stream_29_2_8b),
    .out235(w_pass_5_stencil_stream_29_3_8b),
    .out236(w_pass_5_stencil_stream_29_4_8b),
    .out237(w_pass_5_stencil_stream_29_5_8b),
    .out238(w_pass_5_stencil_stream_29_6_8b),
    .out239(w_pass_5_stencil_stream_29_7_8b),
    .out240(w_pass_5_stencil_stream_30_0_8b),
    .out241(w_pass_5_stencil_stream_30_1_8b),
    .out242(w_pass_5_stencil_stream_30_2_8b),
    .out243(w_pass_5_stencil_stream_30_3_8b),
    .out244(w_pass_5_stencil_stream_30_4_8b),
    .out245(w_pass_5_stencil_stream_30_5_8b),
    .out246(w_pass_5_stencil_stream_30_6_8b),
    .out247(w_pass_5_stencil_stream_30_7_8b),
    .out248(w_pass_5_stencil_stream_31_0_8b),
    .out249(w_pass_5_stencil_stream_31_1_8b),
    .out250(w_pass_5_stencil_stream_31_2_8b),
    .out251(w_pass_5_stencil_stream_31_3_8b),
    .out252(w_pass_5_stencil_stream_31_4_8b),
    .out253(w_pass_5_stencil_stream_31_5_8b),
    .out254(w_pass_5_stencil_stream_31_6_8b),
    .out255(w_pass_5_stencil_stream_31_7_8b),
    .out256(w_pass_5_stencil_stream_32_0_8b),
    .out257(w_pass_5_stencil_stream_32_1_8b),
    .out258(w_pass_5_stencil_stream_32_2_8b),
    .out259(w_pass_5_stencil_stream_32_3_8b),
    .out260(w_pass_5_stencil_stream_32_4_8b),
    .out261(w_pass_5_stencil_stream_32_5_8b),
    .out262(w_pass_5_stencil_stream_32_6_8b),
    .out263(w_pass_5_stencil_stream_32_7_8b),
    .out264(w_pass_5_stencil_stream_33_0_8b),
    .out265(w_pass_5_stencil_stream_33_1_8b),
    .out266(w_pass_5_stencil_stream_33_2_8b),
    .out267(w_pass_5_stencil_stream_33_3_8b),
    .out268(w_pass_5_stencil_stream_33_4_8b),
    .out269(w_pass_5_stencil_stream_33_5_8b),
    .out270(w_pass_5_stencil_stream_33_6_8b),
    .out271(w_pass_5_stencil_stream_33_7_8b),
    .out272(w_pass_5_stencil_stream_34_0_8b),
    .out273(w_pass_5_stencil_stream_34_1_8b),
    .out274(w_pass_5_stencil_stream_34_2_8b),
    .out275(w_pass_5_stencil_stream_34_3_8b),
    .out276(w_pass_5_stencil_stream_34_4_8b),
    .out277(w_pass_5_stencil_stream_34_5_8b),
    .out278(w_pass_5_stencil_stream_34_6_8b),
    .out279(w_pass_5_stencil_stream_34_7_8b),
    .out280(w_pass_5_stencil_stream_35_0_8b),
    .out281(w_pass_5_stencil_stream_35_1_8b),
    .out282(w_pass_5_stencil_stream_35_2_8b),
    .out283(w_pass_5_stencil_stream_35_3_8b),
    .out284(w_pass_5_stencil_stream_35_4_8b),
    .out285(w_pass_5_stencil_stream_35_5_8b),
    .out286(w_pass_5_stencil_stream_35_6_8b),
    .out287(w_pass_5_stencil_stream_35_7_8b),
    .out288(w_pass_5_stencil_stream_36_0_8b),
    .out289(w_pass_5_stencil_stream_36_1_8b),
    .out290(w_pass_5_stencil_stream_36_2_8b),
    .out291(w_pass_5_stencil_stream_36_3_8b),
    .out292(w_pass_5_stencil_stream_36_4_8b),
    .out293(w_pass_5_stencil_stream_36_5_8b),
    .out294(w_pass_5_stencil_stream_36_6_8b),
    .out295(w_pass_5_stencil_stream_36_7_8b),
    .out296(w_pass_5_stencil_stream_37_0_8b),
    .out297(w_pass_5_stencil_stream_37_1_8b),
    .out298(w_pass_5_stencil_stream_37_2_8b),
    .out299(w_pass_5_stencil_stream_37_3_8b),
    .out300(w_pass_5_stencil_stream_37_4_8b),
    .out301(w_pass_5_stencil_stream_37_5_8b),
    .out302(w_pass_5_stencil_stream_37_6_8b),
    .out303(w_pass_5_stencil_stream_37_7_8b),
    .out304(w_pass_5_stencil_stream_38_0_8b),
    .out305(w_pass_5_stencil_stream_38_1_8b),
    .out306(w_pass_5_stencil_stream_38_2_8b),
    .out307(w_pass_5_stencil_stream_38_3_8b),
    .out308(w_pass_5_stencil_stream_38_4_8b),
    .out309(w_pass_5_stencil_stream_38_5_8b),
    .out310(w_pass_5_stencil_stream_38_6_8b),
    .out311(w_pass_5_stencil_stream_38_7_8b),
    .out312(w_pass_5_stencil_stream_39_0_8b),
    .out313(w_pass_5_stencil_stream_39_1_8b),
    .out314(w_pass_5_stencil_stream_39_2_8b),
    .out315(w_pass_5_stencil_stream_39_3_8b),
    .out316(w_pass_5_stencil_stream_39_4_8b),
    .out317(w_pass_5_stencil_stream_39_5_8b),
    .out318(w_pass_5_stencil_stream_39_6_8b),
    .out319(w_pass_5_stencil_stream_39_7_8b),
    .out320(w_pass_5_stencil_stream_40_0_8b),
    .out321(w_pass_5_stencil_stream_40_1_8b),
    .out322(w_pass_5_stencil_stream_40_2_8b),
    .out323(w_pass_5_stencil_stream_40_3_8b),
    .out324(w_pass_5_stencil_stream_40_4_8b),
    .out325(w_pass_5_stencil_stream_40_5_8b),
    .out326(w_pass_5_stencil_stream_40_6_8b),
    .out327(w_pass_5_stencil_stream_40_7_8b),
    .out328(w_pass_5_stencil_stream_41_0_8b),
    .out329(w_pass_5_stencil_stream_41_1_8b),
    .out330(w_pass_5_stencil_stream_41_2_8b),
    .out331(w_pass_5_stencil_stream_41_3_8b),
    .out332(w_pass_5_stencil_stream_41_4_8b),
    .out333(w_pass_5_stencil_stream_41_5_8b),
    .out334(w_pass_5_stencil_stream_41_6_8b),
    .out335(w_pass_5_stencil_stream_41_7_8b),
    .out336(w_pass_5_stencil_stream_42_0_8b),
    .out337(w_pass_5_stencil_stream_42_1_8b),
    .out338(w_pass_5_stencil_stream_42_2_8b),
    .out339(w_pass_5_stencil_stream_42_3_8b),
    .out340(w_pass_5_stencil_stream_42_4_8b),
    .out341(w_pass_5_stencil_stream_42_5_8b),
    .out342(w_pass_5_stencil_stream_42_6_8b),
    .out343(w_pass_5_stencil_stream_42_7_8b),
    .out344(w_pass_5_stencil_stream_43_0_8b),
    .out345(w_pass_5_stencil_stream_43_1_8b),
    .out346(w_pass_5_stencil_stream_43_2_8b),
    .out347(w_pass_5_stencil_stream_43_3_8b),
    .out348(w_pass_5_stencil_stream_43_4_8b),
    .out349(w_pass_5_stencil_stream_43_5_8b),
    .out350(w_pass_5_stencil_stream_43_6_8b),
    .out351(w_pass_5_stencil_stream_43_7_8b),
    .out352(w_pass_5_stencil_stream_44_0_8b),
    .out353(w_pass_5_stencil_stream_44_1_8b),
    .out354(w_pass_5_stencil_stream_44_2_8b),
    .out355(w_pass_5_stencil_stream_44_3_8b),
    .out356(w_pass_5_stencil_stream_44_4_8b),
    .out357(w_pass_5_stencil_stream_44_5_8b),
    .out358(w_pass_5_stencil_stream_44_6_8b),
    .out359(w_pass_5_stencil_stream_44_7_8b),
    .out360(w_pass_5_stencil_stream_45_0_8b),
    .out361(w_pass_5_stencil_stream_45_1_8b),
    .out362(w_pass_5_stencil_stream_45_2_8b),
    .out363(w_pass_5_stencil_stream_45_3_8b),
    .out364(w_pass_5_stencil_stream_45_4_8b),
    .out365(w_pass_5_stencil_stream_45_5_8b),
    .out366(w_pass_5_stencil_stream_45_6_8b),
    .out367(w_pass_5_stencil_stream_45_7_8b),
    .out368(w_pass_5_stencil_stream_46_0_8b),
    .out369(w_pass_5_stencil_stream_46_1_8b),
    .out370(w_pass_5_stencil_stream_46_2_8b),
    .out371(w_pass_5_stencil_stream_46_3_8b),
    .out372(w_pass_5_stencil_stream_46_4_8b),
    .out373(w_pass_5_stencil_stream_46_5_8b),
    .out374(w_pass_5_stencil_stream_46_6_8b),
    .out375(w_pass_5_stencil_stream_46_7_8b),
    .out376(w_pass_5_stencil_stream_47_0_8b),
    .out377(w_pass_5_stencil_stream_47_1_8b),
    .out378(w_pass_5_stencil_stream_47_2_8b),
    .out379(w_pass_5_stencil_stream_47_3_8b),
    .out380(w_pass_5_stencil_stream_47_4_8b),
    .out381(w_pass_5_stencil_stream_47_5_8b),
    .out382(w_pass_5_stencil_stream_47_6_8b),
    .out383(w_pass_5_stencil_stream_47_7_8b),
    .out384(w_pass_5_stencil_stream_48_0_8b),
    .out385(w_pass_5_stencil_stream_48_1_8b),
    .out386(w_pass_5_stencil_stream_48_2_8b),
    .out387(w_pass_5_stencil_stream_48_3_8b),
    .out388(w_pass_5_stencil_stream_48_4_8b),
    .out389(w_pass_5_stencil_stream_48_5_8b),
    .out390(w_pass_5_stencil_stream_48_6_8b),
    .out391(w_pass_5_stencil_stream_48_7_8b),
    .out392(w_pass_5_stencil_stream_49_0_8b),
    .out393(w_pass_5_stencil_stream_49_1_8b),
    .out394(w_pass_5_stencil_stream_49_2_8b),
    .out395(w_pass_5_stencil_stream_49_3_8b),
    .out396(w_pass_5_stencil_stream_49_4_8b),
    .out397(w_pass_5_stencil_stream_49_5_8b),
    .out398(w_pass_5_stencil_stream_49_6_8b),
    .out399(w_pass_5_stencil_stream_49_7_8b),
    .out400(w_pass_5_stencil_stream_50_0_8b),
    .out401(w_pass_5_stencil_stream_50_1_8b),
    .out402(w_pass_5_stencil_stream_50_2_8b),
    .out403(w_pass_5_stencil_stream_50_3_8b),
    .out404(w_pass_5_stencil_stream_50_4_8b),
    .out405(w_pass_5_stencil_stream_50_5_8b),
    .out406(w_pass_5_stencil_stream_50_6_8b),
    .out407(w_pass_5_stencil_stream_50_7_8b),
    .out408(w_pass_5_stencil_stream_51_0_8b),
    .out409(w_pass_5_stencil_stream_51_1_8b),
    .out410(w_pass_5_stencil_stream_51_2_8b),
    .out411(w_pass_5_stencil_stream_51_3_8b),
    .out412(w_pass_5_stencil_stream_51_4_8b),
    .out413(w_pass_5_stencil_stream_51_5_8b),
    .out414(w_pass_5_stencil_stream_51_6_8b),
    .out415(w_pass_5_stencil_stream_51_7_8b),
    .out416(w_pass_5_stencil_stream_52_0_8b),
    .out417(w_pass_5_stencil_stream_52_1_8b),
    .out418(w_pass_5_stencil_stream_52_2_8b),
    .out419(w_pass_5_stencil_stream_52_3_8b),
    .out420(w_pass_5_stencil_stream_52_4_8b),
    .out421(w_pass_5_stencil_stream_52_5_8b),
    .out422(w_pass_5_stencil_stream_52_6_8b),
    .out423(w_pass_5_stencil_stream_52_7_8b),
    .out424(w_pass_5_stencil_stream_53_0_8b),
    .out425(w_pass_5_stencil_stream_53_1_8b),
    .out426(w_pass_5_stencil_stream_53_2_8b),
    .out427(w_pass_5_stencil_stream_53_3_8b),
    .out428(w_pass_5_stencil_stream_53_4_8b),
    .out429(w_pass_5_stencil_stream_53_5_8b),
    .out430(w_pass_5_stencil_stream_53_6_8b),
    .out431(w_pass_5_stencil_stream_53_7_8b),
    .out432(w_pass_5_stencil_stream_54_0_8b),
    .out433(w_pass_5_stencil_stream_54_1_8b),
    .out434(w_pass_5_stencil_stream_54_2_8b),
    .out435(w_pass_5_stencil_stream_54_3_8b),
    .out436(w_pass_5_stencil_stream_54_4_8b),
    .out437(w_pass_5_stencil_stream_54_5_8b),
    .out438(w_pass_5_stencil_stream_54_6_8b),
    .out439(w_pass_5_stencil_stream_54_7_8b),
    .out440(w_pass_5_stencil_stream_55_0_8b),
    .out441(w_pass_5_stencil_stream_55_1_8b),
    .out442(w_pass_5_stencil_stream_55_2_8b),
    .out443(w_pass_5_stencil_stream_55_3_8b),
    .out444(w_pass_5_stencil_stream_55_4_8b),
    .out445(w_pass_5_stencil_stream_55_5_8b),
    .out446(w_pass_5_stencil_stream_55_6_8b),
    .out447(w_pass_5_stencil_stream_55_7_8b),
    .out448(w_pass_5_stencil_stream_56_0_8b),
    .out449(w_pass_5_stencil_stream_56_1_8b),
    .out450(w_pass_5_stencil_stream_56_2_8b),
    .out451(w_pass_5_stencil_stream_56_3_8b),
    .out452(w_pass_5_stencil_stream_56_4_8b),
    .out453(w_pass_5_stencil_stream_56_5_8b),
    .out454(w_pass_5_stencil_stream_56_6_8b),
    .out455(w_pass_5_stencil_stream_56_7_8b),
    .out456(w_pass_5_stencil_stream_57_0_8b),
    .out457(w_pass_5_stencil_stream_57_1_8b),
    .out458(w_pass_5_stencil_stream_57_2_8b),
    .out459(w_pass_5_stencil_stream_57_3_8b),
    .out460(w_pass_5_stencil_stream_57_4_8b),
    .out461(w_pass_5_stencil_stream_57_5_8b),
    .out462(w_pass_5_stencil_stream_57_6_8b),
    .out463(w_pass_5_stencil_stream_57_7_8b),
    .out464(w_pass_5_stencil_stream_58_0_8b),
    .out465(w_pass_5_stencil_stream_58_1_8b),
    .out466(w_pass_5_stencil_stream_58_2_8b),
    .out467(w_pass_5_stencil_stream_58_3_8b),
    .out468(w_pass_5_stencil_stream_58_4_8b),
    .out469(w_pass_5_stencil_stream_58_5_8b),
    .out470(w_pass_5_stencil_stream_58_6_8b),
    .out471(w_pass_5_stencil_stream_58_7_8b),
    .out472(w_pass_5_stencil_stream_59_0_8b),
    .out473(w_pass_5_stencil_stream_59_1_8b),
    .out474(w_pass_5_stencil_stream_59_2_8b),
    .out475(w_pass_5_stencil_stream_59_3_8b),
    .out476(w_pass_5_stencil_stream_59_4_8b),
    .out477(w_pass_5_stencil_stream_59_5_8b),
    .out478(w_pass_5_stencil_stream_59_6_8b),
    .out479(w_pass_5_stencil_stream_59_7_8b),
    .out480(w_pass_5_stencil_stream_60_0_8b),
    .out481(w_pass_5_stencil_stream_60_1_8b),
    .out482(w_pass_5_stencil_stream_60_2_8b),
    .out483(w_pass_5_stencil_stream_60_3_8b),
    .out484(w_pass_5_stencil_stream_60_4_8b),
    .out485(w_pass_5_stencil_stream_60_5_8b),
    .out486(w_pass_5_stencil_stream_60_6_8b),
    .out487(w_pass_5_stencil_stream_60_7_8b),
    .out488(w_pass_5_stencil_stream_61_0_8b),
    .out489(w_pass_5_stencil_stream_61_1_8b),
    .out490(w_pass_5_stencil_stream_61_2_8b),
    .out491(w_pass_5_stencil_stream_61_3_8b),
    .out492(w_pass_5_stencil_stream_61_4_8b),
    .out493(w_pass_5_stencil_stream_61_5_8b),
    .out494(w_pass_5_stencil_stream_61_6_8b),
    .out495(w_pass_5_stencil_stream_61_7_8b),
    .out496(w_pass_5_stencil_stream_62_0_8b),
    .out497(w_pass_5_stencil_stream_62_1_8b),
    .out498(w_pass_5_stencil_stream_62_2_8b),
    .out499(w_pass_5_stencil_stream_62_3_8b),
    .out500(w_pass_5_stencil_stream_62_4_8b),
    .out501(w_pass_5_stencil_stream_62_5_8b),
    .out502(w_pass_5_stencil_stream_62_6_8b),
    .out503(w_pass_5_stencil_stream_62_7_8b),
    .out504(w_pass_5_stencil_stream_63_0_8b),
    .out505(w_pass_5_stencil_stream_63_1_8b),
    .out506(w_pass_5_stencil_stream_63_2_8b),
    .out507(w_pass_5_stencil_stream_63_3_8b),
    .out508(w_pass_5_stencil_stream_63_4_8b),
    .out509(w_pass_5_stencil_stream_63_5_8b),
    .out510(w_pass_5_stencil_stream_63_6_8b),
    .out511(w_pass_5_stencil_stream_63_7_8b),
    .out512(w_pass_5_stencil_stream_64_0_8b),
    .out513(w_pass_5_stencil_stream_64_1_8b),
    .out514(w_pass_5_stencil_stream_64_2_8b),
    .out515(w_pass_5_stencil_stream_64_3_8b),
    .out516(w_pass_5_stencil_stream_64_4_8b),
    .out517(w_pass_5_stencil_stream_64_5_8b),
    .out518(w_pass_5_stencil_stream_64_6_8b),
    .out519(w_pass_5_stencil_stream_64_7_8b),
    .out520(w_pass_5_stencil_stream_65_0_8b),
    .out521(w_pass_5_stencil_stream_65_1_8b),
    .out522(w_pass_5_stencil_stream_65_2_8b),
    .out523(w_pass_5_stencil_stream_65_3_8b),
    .out524(w_pass_5_stencil_stream_65_4_8b),
    .out525(w_pass_5_stencil_stream_65_5_8b),
    .out526(w_pass_5_stencil_stream_65_6_8b),
    .out527(w_pass_5_stencil_stream_65_7_8b),
    .out528(w_pass_5_stencil_stream_66_0_8b),
    .out529(w_pass_5_stencil_stream_66_1_8b),
    .out530(w_pass_5_stencil_stream_66_2_8b),
    .out531(w_pass_5_stencil_stream_66_3_8b),
    .out532(w_pass_5_stencil_stream_66_4_8b),
    .out533(w_pass_5_stencil_stream_66_5_8b),
    .out534(w_pass_5_stencil_stream_66_6_8b),
    .out535(w_pass_5_stencil_stream_66_7_8b),
    .out536(w_pass_5_stencil_stream_67_0_8b),
    .out537(w_pass_5_stencil_stream_67_1_8b),
    .out538(w_pass_5_stencil_stream_67_2_8b),
    .out539(w_pass_5_stencil_stream_67_3_8b),
    .out540(w_pass_5_stencil_stream_67_4_8b),
    .out541(w_pass_5_stencil_stream_67_5_8b),
    .out542(w_pass_5_stencil_stream_67_6_8b),
    .out543(w_pass_5_stencil_stream_67_7_8b),
    .out544(w_pass_5_stencil_stream_68_0_8b),
    .out545(w_pass_5_stencil_stream_68_1_8b),
    .out546(w_pass_5_stencil_stream_68_2_8b),
    .out547(w_pass_5_stencil_stream_68_3_8b),
    .out548(w_pass_5_stencil_stream_68_4_8b),
    .out549(w_pass_5_stencil_stream_68_5_8b),
    .out550(w_pass_5_stencil_stream_68_6_8b),
    .out551(w_pass_5_stencil_stream_68_7_8b),
    .out552(w_pass_5_stencil_stream_69_0_8b),
    .out553(w_pass_5_stencil_stream_69_1_8b),
    .out554(w_pass_5_stencil_stream_69_2_8b),
    .out555(w_pass_5_stencil_stream_69_3_8b),
    .out556(w_pass_5_stencil_stream_69_4_8b),
    .out557(w_pass_5_stencil_stream_69_5_8b),
    .out558(w_pass_5_stencil_stream_69_6_8b),
    .out559(w_pass_5_stencil_stream_69_7_8b),
    .out560(w_pass_5_stencil_stream_70_0_8b),
    .out561(w_pass_5_stencil_stream_70_1_8b),
    .out562(w_pass_5_stencil_stream_70_2_8b),
    .out563(w_pass_5_stencil_stream_70_3_8b),
    .out564(w_pass_5_stencil_stream_70_4_8b),
    .out565(w_pass_5_stencil_stream_70_5_8b),
    .out566(w_pass_5_stencil_stream_70_6_8b),
    .out567(w_pass_5_stencil_stream_70_7_8b)
);

endmodule



module kernel__hw_output_2_stencil_stream(
//Inputs
  w_pass_4_stencil_0_0_8b,
  w_pass_4_stencil_0_1_8b,
  w_pass_4_stencil_0_2_8b,
  w_pass_4_stencil_0_3_8b,
  w_pass_4_stencil_0_4_8b,
  w_pass_4_stencil_0_5_8b,
  w_pass_4_stencil_0_6_8b,
  w_pass_4_stencil_0_7_8b,
  w_pass_4_stencil_1_0_8b,
  w_pass_4_stencil_1_1_8b,
  w_pass_4_stencil_1_2_8b,
  w_pass_4_stencil_1_3_8b,
  w_pass_4_stencil_1_4_8b,
  w_pass_4_stencil_1_5_8b,
  w_pass_4_stencil_1_6_8b,
  w_pass_4_stencil_1_7_8b,
  w_pass_4_stencil_2_0_8b,
  w_pass_4_stencil_2_1_8b,
  w_pass_4_stencil_2_2_8b,
  w_pass_4_stencil_2_3_8b,
  w_pass_4_stencil_2_4_8b,
  w_pass_4_stencil_2_5_8b,
  w_pass_4_stencil_2_6_8b,
  w_pass_4_stencil_2_7_8b,
  w_pass_4_stencil_3_0_8b,
  w_pass_4_stencil_3_1_8b,
  w_pass_4_stencil_3_2_8b,
  w_pass_4_stencil_3_3_8b,
  w_pass_4_stencil_3_4_8b,
  w_pass_4_stencil_3_5_8b,
  w_pass_4_stencil_3_6_8b,
  w_pass_4_stencil_3_7_8b,
  w_pass_4_stencil_4_0_8b,
  w_pass_4_stencil_4_1_8b,
  w_pass_4_stencil_4_2_8b,
  w_pass_4_stencil_4_3_8b,
  w_pass_4_stencil_4_4_8b,
  w_pass_4_stencil_4_5_8b,
  w_pass_4_stencil_4_6_8b,
  w_pass_4_stencil_4_7_8b,
  w_pass_4_stencil_5_0_8b,
  w_pass_4_stencil_5_1_8b,
  w_pass_4_stencil_5_2_8b,
  w_pass_4_stencil_5_3_8b,
  w_pass_4_stencil_5_4_8b,
  w_pass_4_stencil_5_5_8b,
  w_pass_4_stencil_5_6_8b,
  w_pass_4_stencil_5_7_8b,
  w_pass_4_stencil_6_0_8b,
  w_pass_4_stencil_6_1_8b,
  w_pass_4_stencil_6_2_8b,
  w_pass_4_stencil_6_3_8b,
  w_pass_4_stencil_6_4_8b,
  w_pass_4_stencil_6_5_8b,
  w_pass_4_stencil_6_6_8b,
  w_pass_4_stencil_6_7_8b,
  w_pass_4_stencil_7_0_8b,
  w_pass_4_stencil_7_1_8b,
  w_pass_4_stencil_7_2_8b,
  w_pass_4_stencil_7_3_8b,
  w_pass_4_stencil_7_4_8b,
  w_pass_4_stencil_7_5_8b,
  w_pass_4_stencil_7_6_8b,
  w_pass_4_stencil_7_7_8b,
  w_pass_5_stencil_16_0_8b,
  w_pass_5_stencil_16_1_8b,
  w_pass_5_stencil_16_2_8b,
  w_pass_5_stencil_16_3_8b,
  w_pass_5_stencil_16_4_8b,
  w_pass_5_stencil_16_5_8b,
  w_pass_5_stencil_16_6_8b,
  w_pass_5_stencil_16_7_8b,
  w_pass_5_stencil_17_0_8b,
  w_pass_5_stencil_17_1_8b,
  w_pass_5_stencil_17_2_8b,
  w_pass_5_stencil_18_0_8b,
  w_pass_5_stencil_18_1_8b,
  w_pass_5_stencil_18_2_8b,
  w_pass_5_stencil_19_0_8b,
  w_pass_5_stencil_19_1_8b,
  w_pass_5_stencil_19_2_8b,
  w_pass_5_stencil_20_0_8b,
  w_pass_5_stencil_20_1_8b,
  w_pass_5_stencil_20_2_8b,
  w_pass_5_stencil_21_0_8b,
  w_pass_5_stencil_21_1_8b,
  w_pass_5_stencil_21_2_8b,
  w_pass_5_stencil_22_0_8b,
  w_pass_5_stencil_22_1_8b,
  w_pass_5_stencil_23_0_8b,
  w_pass_5_stencil_23_1_8b,
  w_offset_2_s1_p2_search_x_search_xo_16b,
//Outputs
  out_w_hw_output_2_stencil_packed_8b,

  clk
);

//Inputs
input  w_pass_4_stencil_3_6_8b;
input  w_pass_4_stencil_3_7_8b;
input  w_pass_4_stencil_3_4_8b;
input  w_pass_4_stencil_3_5_8b;
input  w_pass_4_stencil_3_2_8b;
input  w_pass_4_stencil_3_3_8b;
input  w_pass_4_stencil_3_0_8b;
input  w_pass_4_stencil_3_1_8b;
input  w_pass_4_stencil_4_0_8b;
input  w_pass_5_stencil_19_1_8b;
input  w_pass_4_stencil_1_1_8b;
input  w_pass_4_stencil_1_2_8b;
input  w_pass_4_stencil_1_3_8b;
input  w_pass_4_stencil_1_4_8b;
input  w_pass_4_stencil_1_5_8b;
input  w_pass_4_stencil_1_6_8b;
input  w_pass_4_stencil_1_7_8b;
input  w_pass_4_stencil_6_3_8b;
input  w_pass_4_stencil_6_2_8b;
input  w_pass_4_stencil_6_1_8b;
input  w_pass_4_stencil_6_0_8b;
input  w_pass_4_stencil_6_7_8b;
input  w_pass_4_stencil_6_6_8b;
input  w_pass_4_stencil_6_5_8b;
input  w_pass_4_stencil_6_4_8b;
input  w_pass_4_stencil_0_1_8b;
input  w_pass_4_stencil_0_0_8b;
input  w_pass_4_stencil_4_5_8b;
input  w_pass_4_stencil_4_4_8b;
input  w_pass_4_stencil_4_7_8b;
input  w_pass_4_stencil_4_6_8b;
input  w_pass_4_stencil_4_1_8b;
input  w_pass_4_stencil_0_3_8b;
input  w_pass_4_stencil_4_3_8b;
input  w_pass_4_stencil_4_2_8b;
input  w_pass_5_stencil_17_2_8b;
input  w_pass_5_stencil_17_1_8b;
input  w_pass_5_stencil_17_0_8b;
input  w_pass_5_stencil_22_1_8b;
input  w_pass_5_stencil_22_0_8b;
input  w_pass_4_stencil_2_7_8b;
input  w_pass_4_stencil_2_6_8b;
input  w_pass_4_stencil_2_5_8b;
input  w_pass_4_stencil_2_4_8b;
input  w_pass_4_stencil_2_3_8b;
input  w_pass_4_stencil_2_2_8b;
input  w_pass_4_stencil_2_1_8b;
input  w_pass_4_stencil_2_0_8b;
input  w_pass_5_stencil_18_0_8b;
input  w_pass_5_stencil_18_1_8b;
input  w_pass_5_stencil_18_2_8b;
input  w_pass_4_stencil_0_2_8b;
input  w_pass_4_stencil_0_5_8b;
input  w_pass_4_stencil_0_4_8b;
input  w_pass_4_stencil_0_7_8b;
input  w_pass_4_stencil_0_6_8b;
input  w_pass_5_stencil_21_0_8b;
input  w_pass_5_stencil_21_1_8b;
input  w_pass_5_stencil_21_2_8b;
input  w_pass_5_stencil_16_5_8b;
input  w_pass_5_stencil_16_2_8b;
input  w_pass_5_stencil_16_3_8b;
input  w_pass_5_stencil_16_0_8b;
input  w_pass_5_stencil_16_1_8b;
input  w_pass_5_stencil_16_6_8b;
input  w_pass_5_stencil_16_7_8b;
input  w_pass_5_stencil_23_0_8b;
input  w_pass_5_stencil_23_1_8b;
input  w_pass_4_stencil_1_0_8b;
input  w_pass_5_stencil_19_0_8b;
input  w_pass_5_stencil_19_2_8b;
input  w_offset_2_s1_p2_search_x_search_xo_16b;
input  w_pass_5_stencil_20_1_8b;
input  w_pass_5_stencil_20_0_8b;
input  w_pass_5_stencil_20_2_8b;
input  w_pass_4_stencil_5_4_8b;
input  w_pass_4_stencil_5_5_8b;
input  w_pass_4_stencil_5_6_8b;
input  w_pass_4_stencil_5_7_8b;
input  w_pass_4_stencil_5_0_8b;
input  w_pass_4_stencil_5_1_8b;
input  w_pass_4_stencil_5_2_8b;
input  w_pass_4_stencil_5_3_8b;
input  w_pass_5_stencil_16_4_8b;
input  w_pass_4_stencil_7_2_8b;
input  w_pass_4_stencil_7_3_8b;
input  w_pass_4_stencil_7_0_8b;
input  w_pass_4_stencil_7_1_8b;
input  w_pass_4_stencil_7_6_8b;
input  w_pass_4_stencil_7_7_8b;
input  w_pass_4_stencil_7_4_8b;
input  w_pass_4_stencil_7_5_8b;
//Outputs
output  out_w_hw_output_2_stencil_packed_8b;

input  clk;


wire  r0_w_SAD_2a163_0_16b;
wire  r0_w_SAD_2a163_1_16b;
wire  r0_w_SAD_2a163_10_16b;
wire  r0_w_SAD_2a163_11_16b;
wire  r0_w_SAD_2a163_12_16b;
wire  r0_w_SAD_2a163_13_16b;
wire  r0_w_SAD_2a163_14_16b;
wire  r0_w_SAD_2a163_15_16b;
wire  r0_w_SAD_2a163_2_16b;
wire  r0_w_SAD_2a163_3_16b;
wire  r0_w_SAD_2a163_4_16b;
wire  r0_w_SAD_2a163_5_16b;
wire  r0_w_SAD_2a163_6_16b;
wire  r0_w_SAD_2a163_7_16b;
wire  r0_w_SAD_2a163_8_16b;
wire  r0_w_SAD_2a163_9_16b;
wire  r0_w_offset_2_0a160_0_16b;
wire  r0_w_offset_2_1a159_0_16b;
wire  r0_w_p2_offset_l1_0a162_0_16b;
wire  r0_w_p2_offset_l1_0a162_1_16b;
wire  r0_w_p2_offset_l1_0a162_2_16b;
wire  r0_w_p2_offset_l1_0a162_3_16b;
wire  r0_w_p2_offset_l1_1a161_0_16b;
wire  r0_w_p2_offset_l1_1a161_1_16b;
wire  r0_w_p2_offset_l1_1a161_2_16b;
wire  r0_w_p2_offset_l1_1a161_3_16b;
wire  r10_w_SAD_2a163_0_16b;
wire  r10_w_SAD_2a163_1_16b;
wire  r10_w_SAD_2a163_10_16b;
wire  r10_w_SAD_2a163_11_16b;
wire  r10_w_SAD_2a163_12_16b;
wire  r10_w_SAD_2a163_13_16b;
wire  r10_w_SAD_2a163_14_16b;
wire  r10_w_SAD_2a163_15_16b;
wire  r10_w_SAD_2a163_2_16b;
wire  r10_w_SAD_2a163_3_16b;
wire  r10_w_SAD_2a163_4_16b;
wire  r10_w_SAD_2a163_5_16b;
wire  r10_w_SAD_2a163_6_16b;
wire  r10_w_SAD_2a163_7_16b;
wire  r10_w_SAD_2a163_8_16b;
wire  r10_w_SAD_2a163_9_16b;
wire  r11_w_SAD_2a163_0_16b;
wire  r11_w_SAD_2a163_1_16b;
wire  r11_w_SAD_2a163_10_16b;
wire  r11_w_SAD_2a163_11_16b;
wire  r11_w_SAD_2a163_12_16b;
wire  r11_w_SAD_2a163_13_16b;
wire  r11_w_SAD_2a163_14_16b;
wire  r11_w_SAD_2a163_15_16b;
wire  r11_w_SAD_2a163_2_16b;
wire  r11_w_SAD_2a163_3_16b;
wire  r11_w_SAD_2a163_4_16b;
wire  r11_w_SAD_2a163_5_16b;
wire  r11_w_SAD_2a163_6_16b;
wire  r11_w_SAD_2a163_7_16b;
wire  r11_w_SAD_2a163_8_16b;
wire  r11_w_SAD_2a163_9_16b;
wire  r12_w_SAD_2a163_0_16b;
wire  r12_w_SAD_2a163_1_16b;
wire  r12_w_SAD_2a163_10_16b;
wire  r12_w_SAD_2a163_11_16b;
wire  r12_w_SAD_2a163_12_16b;
wire  r12_w_SAD_2a163_13_16b;
wire  r12_w_SAD_2a163_14_16b;
wire  r12_w_SAD_2a163_15_16b;
wire  r12_w_SAD_2a163_2_16b;
wire  r12_w_SAD_2a163_3_16b;
wire  r12_w_SAD_2a163_4_16b;
wire  r12_w_SAD_2a163_5_16b;
wire  r12_w_SAD_2a163_6_16b;
wire  r12_w_SAD_2a163_7_16b;
wire  r12_w_SAD_2a163_8_16b;
wire  r12_w_SAD_2a163_9_16b;
wire  r13_w_SAD_2a163_0_16b;
wire  r13_w_SAD_2a163_1_16b;
wire  r13_w_SAD_2a163_10_16b;
wire  r13_w_SAD_2a163_11_16b;
wire  r13_w_SAD_2a163_12_16b;
wire  r13_w_SAD_2a163_13_16b;
wire  r13_w_SAD_2a163_14_16b;
wire  r13_w_SAD_2a163_15_16b;
wire  r13_w_SAD_2a163_2_16b;
wire  r13_w_SAD_2a163_3_16b;
wire  r13_w_SAD_2a163_4_16b;
wire  r13_w_SAD_2a163_5_16b;
wire  r13_w_SAD_2a163_6_16b;
wire  r13_w_SAD_2a163_7_16b;
wire  r13_w_SAD_2a163_8_16b;
wire  r13_w_SAD_2a163_9_16b;
wire  r14_w_SAD_2a163_0_16b;
wire  r14_w_SAD_2a163_1_16b;
wire  r14_w_SAD_2a163_10_16b;
wire  r14_w_SAD_2a163_11_16b;
wire  r14_w_SAD_2a163_12_16b;
wire  r14_w_SAD_2a163_13_16b;
wire  r14_w_SAD_2a163_14_16b;
wire  r14_w_SAD_2a163_15_16b;
wire  r14_w_SAD_2a163_2_16b;
wire  r14_w_SAD_2a163_3_16b;
wire  r14_w_SAD_2a163_4_16b;
wire  r14_w_SAD_2a163_5_16b;
wire  r14_w_SAD_2a163_6_16b;
wire  r14_w_SAD_2a163_7_16b;
wire  r14_w_SAD_2a163_8_16b;
wire  r14_w_SAD_2a163_9_16b;
wire  r15_w_SAD_2a163_0_16b;
wire  r15_w_SAD_2a163_1_16b;
wire  r15_w_SAD_2a163_10_16b;
wire  r15_w_SAD_2a163_11_16b;
wire  r15_w_SAD_2a163_12_16b;
wire  r15_w_SAD_2a163_13_16b;
wire  r15_w_SAD_2a163_14_16b;
wire  r15_w_SAD_2a163_15_16b;
wire  r15_w_SAD_2a163_2_16b;
wire  r15_w_SAD_2a163_3_16b;
wire  r15_w_SAD_2a163_4_16b;
wire  r15_w_SAD_2a163_5_16b;
wire  r15_w_SAD_2a163_6_16b;
wire  r15_w_SAD_2a163_7_16b;
wire  r15_w_SAD_2a163_8_16b;
wire  r15_w_SAD_2a163_9_16b;
wire  r16_w_SAD_2a163_0_16b;
wire  r16_w_SAD_2a163_1_16b;
wire  r16_w_SAD_2a163_10_16b;
wire  r16_w_SAD_2a163_11_16b;
wire  r16_w_SAD_2a163_12_16b;
wire  r16_w_SAD_2a163_13_16b;
wire  r16_w_SAD_2a163_14_16b;
wire  r16_w_SAD_2a163_15_16b;
wire  r16_w_SAD_2a163_2_16b;
wire  r16_w_SAD_2a163_3_16b;
wire  r16_w_SAD_2a163_4_16b;
wire  r16_w_SAD_2a163_5_16b;
wire  r16_w_SAD_2a163_6_16b;
wire  r16_w_SAD_2a163_7_16b;
wire  r16_w_SAD_2a163_8_16b;
wire  r16_w_SAD_2a163_9_16b;
wire  r17_w_SAD_2a163_0_16b;
wire  r17_w_SAD_2a163_1_16b;
wire  r17_w_SAD_2a163_10_16b;
wire  r17_w_SAD_2a163_11_16b;
wire  r17_w_SAD_2a163_12_16b;
wire  r17_w_SAD_2a163_13_16b;
wire  r17_w_SAD_2a163_14_16b;
wire  r17_w_SAD_2a163_15_16b;
wire  r17_w_SAD_2a163_2_16b;
wire  r17_w_SAD_2a163_3_16b;
wire  r17_w_SAD_2a163_4_16b;
wire  r17_w_SAD_2a163_5_16b;
wire  r17_w_SAD_2a163_6_16b;
wire  r17_w_SAD_2a163_7_16b;
wire  r17_w_SAD_2a163_8_16b;
wire  r17_w_SAD_2a163_9_16b;
wire  r18_w_SAD_2a163_0_16b;
wire  r18_w_SAD_2a163_1_16b;
wire  r18_w_SAD_2a163_10_16b;
wire  r18_w_SAD_2a163_11_16b;
wire  r18_w_SAD_2a163_12_16b;
wire  r18_w_SAD_2a163_13_16b;
wire  r18_w_SAD_2a163_14_16b;
wire  r18_w_SAD_2a163_15_16b;
wire  r18_w_SAD_2a163_2_16b;
wire  r18_w_SAD_2a163_3_16b;
wire  r18_w_SAD_2a163_4_16b;
wire  r18_w_SAD_2a163_5_16b;
wire  r18_w_SAD_2a163_6_16b;
wire  r18_w_SAD_2a163_7_16b;
wire  r18_w_SAD_2a163_8_16b;
wire  r18_w_SAD_2a163_9_16b;
wire  r19_w_SAD_2a163_0_16b;
wire  r19_w_SAD_2a163_1_16b;
wire  r19_w_SAD_2a163_10_16b;
wire  r19_w_SAD_2a163_11_16b;
wire  r19_w_SAD_2a163_12_16b;
wire  r19_w_SAD_2a163_13_16b;
wire  r19_w_SAD_2a163_14_16b;
wire  r19_w_SAD_2a163_15_16b;
wire  r19_w_SAD_2a163_2_16b;
wire  r19_w_SAD_2a163_3_16b;
wire  r19_w_SAD_2a163_4_16b;
wire  r19_w_SAD_2a163_5_16b;
wire  r19_w_SAD_2a163_6_16b;
wire  r19_w_SAD_2a163_7_16b;
wire  r19_w_SAD_2a163_8_16b;
wire  r19_w_SAD_2a163_9_16b;
wire  r1_w_SAD_2a163_0_16b;
wire  r1_w_SAD_2a163_1_16b;
wire  r1_w_SAD_2a163_10_16b;
wire  r1_w_SAD_2a163_11_16b;
wire  r1_w_SAD_2a163_12_16b;
wire  r1_w_SAD_2a163_13_16b;
wire  r1_w_SAD_2a163_14_16b;
wire  r1_w_SAD_2a163_15_16b;
wire  r1_w_SAD_2a163_2_16b;
wire  r1_w_SAD_2a163_3_16b;
wire  r1_w_SAD_2a163_4_16b;
wire  r1_w_SAD_2a163_5_16b;
wire  r1_w_SAD_2a163_6_16b;
wire  r1_w_SAD_2a163_7_16b;
wire  r1_w_SAD_2a163_8_16b;
wire  r1_w_SAD_2a163_9_16b;
wire  r1_w_offset_2_0a160_0_16b;
wire  r1_w_offset_2_1a159_0_16b;
wire  r1_w_p2_offset_l1_0a162_0_16b;
wire  r1_w_p2_offset_l1_0a162_1_16b;
wire  r1_w_p2_offset_l1_0a162_2_16b;
wire  r1_w_p2_offset_l1_0a162_3_16b;
wire  r1_w_p2_offset_l1_1a161_0_16b;
wire  r1_w_p2_offset_l1_1a161_1_16b;
wire  r1_w_p2_offset_l1_1a161_2_16b;
wire  r1_w_p2_offset_l1_1a161_3_16b;
wire  r20_w_SAD_2a163_0_16b;
wire  r20_w_SAD_2a163_1_16b;
wire  r20_w_SAD_2a163_10_16b;
wire  r20_w_SAD_2a163_11_16b;
wire  r20_w_SAD_2a163_12_16b;
wire  r20_w_SAD_2a163_13_16b;
wire  r20_w_SAD_2a163_14_16b;
wire  r20_w_SAD_2a163_15_16b;
wire  r20_w_SAD_2a163_2_16b;
wire  r20_w_SAD_2a163_3_16b;
wire  r20_w_SAD_2a163_4_16b;
wire  r20_w_SAD_2a163_5_16b;
wire  r20_w_SAD_2a163_6_16b;
wire  r20_w_SAD_2a163_7_16b;
wire  r20_w_SAD_2a163_8_16b;
wire  r20_w_SAD_2a163_9_16b;
wire  r21_w_SAD_2a163_0_16b;
wire  r21_w_SAD_2a163_1_16b;
wire  r21_w_SAD_2a163_10_16b;
wire  r21_w_SAD_2a163_11_16b;
wire  r21_w_SAD_2a163_12_16b;
wire  r21_w_SAD_2a163_13_16b;
wire  r21_w_SAD_2a163_14_16b;
wire  r21_w_SAD_2a163_15_16b;
wire  r21_w_SAD_2a163_2_16b;
wire  r21_w_SAD_2a163_3_16b;
wire  r21_w_SAD_2a163_4_16b;
wire  r21_w_SAD_2a163_5_16b;
wire  r21_w_SAD_2a163_6_16b;
wire  r21_w_SAD_2a163_7_16b;
wire  r21_w_SAD_2a163_8_16b;
wire  r21_w_SAD_2a163_9_16b;
wire  r22_w_SAD_2a163_0_16b;
wire  r22_w_SAD_2a163_1_16b;
wire  r22_w_SAD_2a163_10_16b;
wire  r22_w_SAD_2a163_11_16b;
wire  r22_w_SAD_2a163_12_16b;
wire  r22_w_SAD_2a163_13_16b;
wire  r22_w_SAD_2a163_14_16b;
wire  r22_w_SAD_2a163_15_16b;
wire  r22_w_SAD_2a163_2_16b;
wire  r22_w_SAD_2a163_3_16b;
wire  r22_w_SAD_2a163_4_16b;
wire  r22_w_SAD_2a163_5_16b;
wire  r22_w_SAD_2a163_6_16b;
wire  r22_w_SAD_2a163_7_16b;
wire  r22_w_SAD_2a163_8_16b;
wire  r22_w_SAD_2a163_9_16b;
wire  r23_w_SAD_2a163_0_16b;
wire  r23_w_SAD_2a163_1_16b;
wire  r23_w_SAD_2a163_10_16b;
wire  r23_w_SAD_2a163_11_16b;
wire  r23_w_SAD_2a163_12_16b;
wire  r23_w_SAD_2a163_13_16b;
wire  r23_w_SAD_2a163_14_16b;
wire  r23_w_SAD_2a163_15_16b;
wire  r23_w_SAD_2a163_2_16b;
wire  r23_w_SAD_2a163_3_16b;
wire  r23_w_SAD_2a163_4_16b;
wire  r23_w_SAD_2a163_5_16b;
wire  r23_w_SAD_2a163_6_16b;
wire  r23_w_SAD_2a163_7_16b;
wire  r23_w_SAD_2a163_8_16b;
wire  r23_w_SAD_2a163_9_16b;
wire  r24_w_SAD_2a163_0_16b;
wire  r24_w_SAD_2a163_1_16b;
wire  r24_w_SAD_2a163_10_16b;
wire  r24_w_SAD_2a163_11_16b;
wire  r24_w_SAD_2a163_12_16b;
wire  r24_w_SAD_2a163_13_16b;
wire  r24_w_SAD_2a163_14_16b;
wire  r24_w_SAD_2a163_15_16b;
wire  r24_w_SAD_2a163_2_16b;
wire  r24_w_SAD_2a163_3_16b;
wire  r24_w_SAD_2a163_4_16b;
wire  r24_w_SAD_2a163_5_16b;
wire  r24_w_SAD_2a163_6_16b;
wire  r24_w_SAD_2a163_7_16b;
wire  r24_w_SAD_2a163_8_16b;
wire  r24_w_SAD_2a163_9_16b;
wire  r25_w_SAD_2a163_0_16b;
wire  r25_w_SAD_2a163_1_16b;
wire  r25_w_SAD_2a163_10_16b;
wire  r25_w_SAD_2a163_11_16b;
wire  r25_w_SAD_2a163_12_16b;
wire  r25_w_SAD_2a163_13_16b;
wire  r25_w_SAD_2a163_14_16b;
wire  r25_w_SAD_2a163_15_16b;
wire  r25_w_SAD_2a163_2_16b;
wire  r25_w_SAD_2a163_3_16b;
wire  r25_w_SAD_2a163_4_16b;
wire  r25_w_SAD_2a163_5_16b;
wire  r25_w_SAD_2a163_6_16b;
wire  r25_w_SAD_2a163_7_16b;
wire  r25_w_SAD_2a163_8_16b;
wire  r25_w_SAD_2a163_9_16b;
wire  r26_w_SAD_2a163_0_16b;
wire  r26_w_SAD_2a163_1_16b;
wire  r26_w_SAD_2a163_10_16b;
wire  r26_w_SAD_2a163_11_16b;
wire  r26_w_SAD_2a163_12_16b;
wire  r26_w_SAD_2a163_13_16b;
wire  r26_w_SAD_2a163_14_16b;
wire  r26_w_SAD_2a163_15_16b;
wire  r26_w_SAD_2a163_2_16b;
wire  r26_w_SAD_2a163_3_16b;
wire  r26_w_SAD_2a163_4_16b;
wire  r26_w_SAD_2a163_5_16b;
wire  r26_w_SAD_2a163_6_16b;
wire  r26_w_SAD_2a163_7_16b;
wire  r26_w_SAD_2a163_8_16b;
wire  r26_w_SAD_2a163_9_16b;
wire  r27_w_SAD_2a163_0_16b;
wire  r27_w_SAD_2a163_1_16b;
wire  r27_w_SAD_2a163_10_16b;
wire  r27_w_SAD_2a163_11_16b;
wire  r27_w_SAD_2a163_12_16b;
wire  r27_w_SAD_2a163_13_16b;
wire  r27_w_SAD_2a163_14_16b;
wire  r27_w_SAD_2a163_15_16b;
wire  r27_w_SAD_2a163_2_16b;
wire  r27_w_SAD_2a163_3_16b;
wire  r27_w_SAD_2a163_4_16b;
wire  r27_w_SAD_2a163_5_16b;
wire  r27_w_SAD_2a163_6_16b;
wire  r27_w_SAD_2a163_7_16b;
wire  r27_w_SAD_2a163_8_16b;
wire  r27_w_SAD_2a163_9_16b;
wire  r28_w_SAD_2a163_0_16b;
wire  r28_w_SAD_2a163_1_16b;
wire  r28_w_SAD_2a163_10_16b;
wire  r28_w_SAD_2a163_11_16b;
wire  r28_w_SAD_2a163_12_16b;
wire  r28_w_SAD_2a163_13_16b;
wire  r28_w_SAD_2a163_14_16b;
wire  r28_w_SAD_2a163_15_16b;
wire  r28_w_SAD_2a163_2_16b;
wire  r28_w_SAD_2a163_3_16b;
wire  r28_w_SAD_2a163_4_16b;
wire  r28_w_SAD_2a163_5_16b;
wire  r28_w_SAD_2a163_6_16b;
wire  r28_w_SAD_2a163_7_16b;
wire  r28_w_SAD_2a163_8_16b;
wire  r28_w_SAD_2a163_9_16b;
wire  r29_w_SAD_2a163_0_16b;
wire  r29_w_SAD_2a163_1_16b;
wire  r29_w_SAD_2a163_10_16b;
wire  r29_w_SAD_2a163_11_16b;
wire  r29_w_SAD_2a163_12_16b;
wire  r29_w_SAD_2a163_13_16b;
wire  r29_w_SAD_2a163_14_16b;
wire  r29_w_SAD_2a163_15_16b;
wire  r29_w_SAD_2a163_2_16b;
wire  r29_w_SAD_2a163_3_16b;
wire  r29_w_SAD_2a163_4_16b;
wire  r29_w_SAD_2a163_5_16b;
wire  r29_w_SAD_2a163_6_16b;
wire  r29_w_SAD_2a163_7_16b;
wire  r29_w_SAD_2a163_8_16b;
wire  r29_w_SAD_2a163_9_16b;
wire  r2_w_SAD_2a163_0_16b;
wire  r2_w_SAD_2a163_1_16b;
wire  r2_w_SAD_2a163_10_16b;
wire  r2_w_SAD_2a163_11_16b;
wire  r2_w_SAD_2a163_12_16b;
wire  r2_w_SAD_2a163_13_16b;
wire  r2_w_SAD_2a163_14_16b;
wire  r2_w_SAD_2a163_15_16b;
wire  r2_w_SAD_2a163_2_16b;
wire  r2_w_SAD_2a163_3_16b;
wire  r2_w_SAD_2a163_4_16b;
wire  r2_w_SAD_2a163_5_16b;
wire  r2_w_SAD_2a163_6_16b;
wire  r2_w_SAD_2a163_7_16b;
wire  r2_w_SAD_2a163_8_16b;
wire  r2_w_SAD_2a163_9_16b;
wire  r2_w_offset_2_0a160_0_16b;
wire  r2_w_offset_2_1a159_0_16b;
wire  r2_w_p2_offset_l1_0a162_0_16b;
wire  r2_w_p2_offset_l1_0a162_1_16b;
wire  r2_w_p2_offset_l1_0a162_2_16b;
wire  r2_w_p2_offset_l1_0a162_3_16b;
wire  r2_w_p2_offset_l1_1a161_0_16b;
wire  r2_w_p2_offset_l1_1a161_1_16b;
wire  r2_w_p2_offset_l1_1a161_2_16b;
wire  r2_w_p2_offset_l1_1a161_3_16b;
wire  r30_w_SAD_2a163_0_16b;
wire  r30_w_SAD_2a163_1_16b;
wire  r30_w_SAD_2a163_10_16b;
wire  r30_w_SAD_2a163_11_16b;
wire  r30_w_SAD_2a163_12_16b;
wire  r30_w_SAD_2a163_13_16b;
wire  r30_w_SAD_2a163_14_16b;
wire  r30_w_SAD_2a163_15_16b;
wire  r30_w_SAD_2a163_2_16b;
wire  r30_w_SAD_2a163_3_16b;
wire  r30_w_SAD_2a163_4_16b;
wire  r30_w_SAD_2a163_5_16b;
wire  r30_w_SAD_2a163_6_16b;
wire  r30_w_SAD_2a163_7_16b;
wire  r30_w_SAD_2a163_8_16b;
wire  r30_w_SAD_2a163_9_16b;
wire  r31_w_SAD_2a163_0_16b;
wire  r31_w_SAD_2a163_1_16b;
wire  r31_w_SAD_2a163_10_16b;
wire  r31_w_SAD_2a163_11_16b;
wire  r31_w_SAD_2a163_12_16b;
wire  r31_w_SAD_2a163_13_16b;
wire  r31_w_SAD_2a163_14_16b;
wire  r31_w_SAD_2a163_15_16b;
wire  r31_w_SAD_2a163_2_16b;
wire  r31_w_SAD_2a163_3_16b;
wire  r31_w_SAD_2a163_4_16b;
wire  r31_w_SAD_2a163_5_16b;
wire  r31_w_SAD_2a163_6_16b;
wire  r31_w_SAD_2a163_7_16b;
wire  r31_w_SAD_2a163_8_16b;
wire  r31_w_SAD_2a163_9_16b;
wire  r32_w_SAD_2a163_0_16b;
wire  r32_w_SAD_2a163_1_16b;
wire  r32_w_SAD_2a163_10_16b;
wire  r32_w_SAD_2a163_11_16b;
wire  r32_w_SAD_2a163_12_16b;
wire  r32_w_SAD_2a163_13_16b;
wire  r32_w_SAD_2a163_14_16b;
wire  r32_w_SAD_2a163_15_16b;
wire  r32_w_SAD_2a163_2_16b;
wire  r32_w_SAD_2a163_3_16b;
wire  r32_w_SAD_2a163_4_16b;
wire  r32_w_SAD_2a163_5_16b;
wire  r32_w_SAD_2a163_6_16b;
wire  r32_w_SAD_2a163_7_16b;
wire  r32_w_SAD_2a163_8_16b;
wire  r32_w_SAD_2a163_9_16b;
wire  r33_w_SAD_2a163_0_16b;
wire  r33_w_SAD_2a163_1_16b;
wire  r33_w_SAD_2a163_10_16b;
wire  r33_w_SAD_2a163_11_16b;
wire  r33_w_SAD_2a163_12_16b;
wire  r33_w_SAD_2a163_13_16b;
wire  r33_w_SAD_2a163_14_16b;
wire  r33_w_SAD_2a163_15_16b;
wire  r33_w_SAD_2a163_2_16b;
wire  r33_w_SAD_2a163_3_16b;
wire  r33_w_SAD_2a163_4_16b;
wire  r33_w_SAD_2a163_5_16b;
wire  r33_w_SAD_2a163_6_16b;
wire  r33_w_SAD_2a163_7_16b;
wire  r33_w_SAD_2a163_8_16b;
wire  r33_w_SAD_2a163_9_16b;
wire  r34_w_SAD_2a163_0_16b;
wire  r34_w_SAD_2a163_1_16b;
wire  r34_w_SAD_2a163_10_16b;
wire  r34_w_SAD_2a163_11_16b;
wire  r34_w_SAD_2a163_12_16b;
wire  r34_w_SAD_2a163_13_16b;
wire  r34_w_SAD_2a163_14_16b;
wire  r34_w_SAD_2a163_15_16b;
wire  r34_w_SAD_2a163_2_16b;
wire  r34_w_SAD_2a163_3_16b;
wire  r34_w_SAD_2a163_4_16b;
wire  r34_w_SAD_2a163_5_16b;
wire  r34_w_SAD_2a163_6_16b;
wire  r34_w_SAD_2a163_7_16b;
wire  r34_w_SAD_2a163_8_16b;
wire  r34_w_SAD_2a163_9_16b;
wire  r35_w_SAD_2a163_0_16b;
wire  r35_w_SAD_2a163_1_16b;
wire  r35_w_SAD_2a163_10_16b;
wire  r35_w_SAD_2a163_11_16b;
wire  r35_w_SAD_2a163_12_16b;
wire  r35_w_SAD_2a163_13_16b;
wire  r35_w_SAD_2a163_14_16b;
wire  r35_w_SAD_2a163_15_16b;
wire  r35_w_SAD_2a163_2_16b;
wire  r35_w_SAD_2a163_3_16b;
wire  r35_w_SAD_2a163_4_16b;
wire  r35_w_SAD_2a163_5_16b;
wire  r35_w_SAD_2a163_6_16b;
wire  r35_w_SAD_2a163_7_16b;
wire  r35_w_SAD_2a163_8_16b;
wire  r35_w_SAD_2a163_9_16b;
wire  r36_w_SAD_2a163_0_16b;
wire  r36_w_SAD_2a163_1_16b;
wire  r36_w_SAD_2a163_10_16b;
wire  r36_w_SAD_2a163_11_16b;
wire  r36_w_SAD_2a163_12_16b;
wire  r36_w_SAD_2a163_13_16b;
wire  r36_w_SAD_2a163_14_16b;
wire  r36_w_SAD_2a163_15_16b;
wire  r36_w_SAD_2a163_2_16b;
wire  r36_w_SAD_2a163_3_16b;
wire  r36_w_SAD_2a163_4_16b;
wire  r36_w_SAD_2a163_5_16b;
wire  r36_w_SAD_2a163_6_16b;
wire  r36_w_SAD_2a163_7_16b;
wire  r36_w_SAD_2a163_8_16b;
wire  r36_w_SAD_2a163_9_16b;
wire  r37_w_SAD_2a163_0_16b;
wire  r37_w_SAD_2a163_1_16b;
wire  r37_w_SAD_2a163_10_16b;
wire  r37_w_SAD_2a163_11_16b;
wire  r37_w_SAD_2a163_12_16b;
wire  r37_w_SAD_2a163_13_16b;
wire  r37_w_SAD_2a163_14_16b;
wire  r37_w_SAD_2a163_15_16b;
wire  r37_w_SAD_2a163_2_16b;
wire  r37_w_SAD_2a163_3_16b;
wire  r37_w_SAD_2a163_4_16b;
wire  r37_w_SAD_2a163_5_16b;
wire  r37_w_SAD_2a163_6_16b;
wire  r37_w_SAD_2a163_7_16b;
wire  r37_w_SAD_2a163_8_16b;
wire  r37_w_SAD_2a163_9_16b;
wire  r38_w_SAD_2a163_0_16b;
wire  r38_w_SAD_2a163_1_16b;
wire  r38_w_SAD_2a163_10_16b;
wire  r38_w_SAD_2a163_11_16b;
wire  r38_w_SAD_2a163_12_16b;
wire  r38_w_SAD_2a163_13_16b;
wire  r38_w_SAD_2a163_14_16b;
wire  r38_w_SAD_2a163_15_16b;
wire  r38_w_SAD_2a163_2_16b;
wire  r38_w_SAD_2a163_3_16b;
wire  r38_w_SAD_2a163_4_16b;
wire  r38_w_SAD_2a163_5_16b;
wire  r38_w_SAD_2a163_6_16b;
wire  r38_w_SAD_2a163_7_16b;
wire  r38_w_SAD_2a163_8_16b;
wire  r38_w_SAD_2a163_9_16b;
wire  r39_w_SAD_2a163_0_16b;
wire  r39_w_SAD_2a163_1_16b;
wire  r39_w_SAD_2a163_10_16b;
wire  r39_w_SAD_2a163_11_16b;
wire  r39_w_SAD_2a163_12_16b;
wire  r39_w_SAD_2a163_13_16b;
wire  r39_w_SAD_2a163_14_16b;
wire  r39_w_SAD_2a163_15_16b;
wire  r39_w_SAD_2a163_2_16b;
wire  r39_w_SAD_2a163_3_16b;
wire  r39_w_SAD_2a163_4_16b;
wire  r39_w_SAD_2a163_5_16b;
wire  r39_w_SAD_2a163_6_16b;
wire  r39_w_SAD_2a163_7_16b;
wire  r39_w_SAD_2a163_8_16b;
wire  r39_w_SAD_2a163_9_16b;
wire  r3_w_SAD_2a163_0_16b;
wire  r3_w_SAD_2a163_1_16b;
wire  r3_w_SAD_2a163_10_16b;
wire  r3_w_SAD_2a163_11_16b;
wire  r3_w_SAD_2a163_12_16b;
wire  r3_w_SAD_2a163_13_16b;
wire  r3_w_SAD_2a163_14_16b;
wire  r3_w_SAD_2a163_15_16b;
wire  r3_w_SAD_2a163_2_16b;
wire  r3_w_SAD_2a163_3_16b;
wire  r3_w_SAD_2a163_4_16b;
wire  r3_w_SAD_2a163_5_16b;
wire  r3_w_SAD_2a163_6_16b;
wire  r3_w_SAD_2a163_7_16b;
wire  r3_w_SAD_2a163_8_16b;
wire  r3_w_SAD_2a163_9_16b;
wire  r3_w_offset_2_0a160_0_16b;
wire  r3_w_p2_offset_l1_0a162_0_16b;
wire  r3_w_p2_offset_l1_0a162_1_16b;
wire  r3_w_p2_offset_l1_0a162_2_16b;
wire  r3_w_p2_offset_l1_0a162_3_16b;
wire  r3_w_p2_offset_l1_1a161_0_16b;
wire  r3_w_p2_offset_l1_1a161_1_16b;
wire  r3_w_p2_offset_l1_1a161_2_16b;
wire  r3_w_p2_offset_l1_1a161_3_16b;
wire  r40_w_SAD_2a163_0_16b;
wire  r40_w_SAD_2a163_1_16b;
wire  r40_w_SAD_2a163_10_16b;
wire  r40_w_SAD_2a163_11_16b;
wire  r40_w_SAD_2a163_12_16b;
wire  r40_w_SAD_2a163_13_16b;
wire  r40_w_SAD_2a163_14_16b;
wire  r40_w_SAD_2a163_15_16b;
wire  r40_w_SAD_2a163_2_16b;
wire  r40_w_SAD_2a163_3_16b;
wire  r40_w_SAD_2a163_4_16b;
wire  r40_w_SAD_2a163_5_16b;
wire  r40_w_SAD_2a163_6_16b;
wire  r40_w_SAD_2a163_7_16b;
wire  r40_w_SAD_2a163_8_16b;
wire  r40_w_SAD_2a163_9_16b;
wire  r41_w_SAD_2a163_0_16b;
wire  r41_w_SAD_2a163_1_16b;
wire  r41_w_SAD_2a163_10_16b;
wire  r41_w_SAD_2a163_11_16b;
wire  r41_w_SAD_2a163_12_16b;
wire  r41_w_SAD_2a163_13_16b;
wire  r41_w_SAD_2a163_14_16b;
wire  r41_w_SAD_2a163_15_16b;
wire  r41_w_SAD_2a163_2_16b;
wire  r41_w_SAD_2a163_3_16b;
wire  r41_w_SAD_2a163_4_16b;
wire  r41_w_SAD_2a163_5_16b;
wire  r41_w_SAD_2a163_6_16b;
wire  r41_w_SAD_2a163_7_16b;
wire  r41_w_SAD_2a163_8_16b;
wire  r41_w_SAD_2a163_9_16b;
wire  r42_w_SAD_2a163_0_16b;
wire  r42_w_SAD_2a163_1_16b;
wire  r42_w_SAD_2a163_10_16b;
wire  r42_w_SAD_2a163_11_16b;
wire  r42_w_SAD_2a163_12_16b;
wire  r42_w_SAD_2a163_13_16b;
wire  r42_w_SAD_2a163_14_16b;
wire  r42_w_SAD_2a163_15_16b;
wire  r42_w_SAD_2a163_2_16b;
wire  r42_w_SAD_2a163_3_16b;
wire  r42_w_SAD_2a163_4_16b;
wire  r42_w_SAD_2a163_5_16b;
wire  r42_w_SAD_2a163_6_16b;
wire  r42_w_SAD_2a163_7_16b;
wire  r42_w_SAD_2a163_8_16b;
wire  r42_w_SAD_2a163_9_16b;
wire  r43_w_SAD_2a163_0_16b;
wire  r43_w_SAD_2a163_1_16b;
wire  r43_w_SAD_2a163_10_16b;
wire  r43_w_SAD_2a163_11_16b;
wire  r43_w_SAD_2a163_12_16b;
wire  r43_w_SAD_2a163_13_16b;
wire  r43_w_SAD_2a163_14_16b;
wire  r43_w_SAD_2a163_15_16b;
wire  r43_w_SAD_2a163_2_16b;
wire  r43_w_SAD_2a163_3_16b;
wire  r43_w_SAD_2a163_4_16b;
wire  r43_w_SAD_2a163_5_16b;
wire  r43_w_SAD_2a163_6_16b;
wire  r43_w_SAD_2a163_7_16b;
wire  r43_w_SAD_2a163_8_16b;
wire  r43_w_SAD_2a163_9_16b;
wire  r44_w_SAD_2a163_0_16b;
wire  r44_w_SAD_2a163_1_16b;
wire  r44_w_SAD_2a163_10_16b;
wire  r44_w_SAD_2a163_11_16b;
wire  r44_w_SAD_2a163_12_16b;
wire  r44_w_SAD_2a163_13_16b;
wire  r44_w_SAD_2a163_14_16b;
wire  r44_w_SAD_2a163_15_16b;
wire  r44_w_SAD_2a163_2_16b;
wire  r44_w_SAD_2a163_3_16b;
wire  r44_w_SAD_2a163_4_16b;
wire  r44_w_SAD_2a163_5_16b;
wire  r44_w_SAD_2a163_6_16b;
wire  r44_w_SAD_2a163_7_16b;
wire  r44_w_SAD_2a163_8_16b;
wire  r44_w_SAD_2a163_9_16b;
wire  r45_w_SAD_2a163_0_16b;
wire  r45_w_SAD_2a163_1_16b;
wire  r45_w_SAD_2a163_10_16b;
wire  r45_w_SAD_2a163_11_16b;
wire  r45_w_SAD_2a163_12_16b;
wire  r45_w_SAD_2a163_13_16b;
wire  r45_w_SAD_2a163_14_16b;
wire  r45_w_SAD_2a163_15_16b;
wire  r45_w_SAD_2a163_2_16b;
wire  r45_w_SAD_2a163_3_16b;
wire  r45_w_SAD_2a163_4_16b;
wire  r45_w_SAD_2a163_5_16b;
wire  r45_w_SAD_2a163_6_16b;
wire  r45_w_SAD_2a163_7_16b;
wire  r45_w_SAD_2a163_8_16b;
wire  r45_w_SAD_2a163_9_16b;
wire  r46_w_SAD_2a163_0_16b;
wire  r46_w_SAD_2a163_1_16b;
wire  r46_w_SAD_2a163_10_16b;
wire  r46_w_SAD_2a163_11_16b;
wire  r46_w_SAD_2a163_12_16b;
wire  r46_w_SAD_2a163_13_16b;
wire  r46_w_SAD_2a163_14_16b;
wire  r46_w_SAD_2a163_15_16b;
wire  r46_w_SAD_2a163_2_16b;
wire  r46_w_SAD_2a163_3_16b;
wire  r46_w_SAD_2a163_4_16b;
wire  r46_w_SAD_2a163_5_16b;
wire  r46_w_SAD_2a163_6_16b;
wire  r46_w_SAD_2a163_7_16b;
wire  r46_w_SAD_2a163_8_16b;
wire  r46_w_SAD_2a163_9_16b;
wire  r47_w_SAD_2a163_0_16b;
wire  r47_w_SAD_2a163_1_16b;
wire  r47_w_SAD_2a163_10_16b;
wire  r47_w_SAD_2a163_11_16b;
wire  r47_w_SAD_2a163_12_16b;
wire  r47_w_SAD_2a163_13_16b;
wire  r47_w_SAD_2a163_14_16b;
wire  r47_w_SAD_2a163_15_16b;
wire  r47_w_SAD_2a163_2_16b;
wire  r47_w_SAD_2a163_3_16b;
wire  r47_w_SAD_2a163_4_16b;
wire  r47_w_SAD_2a163_5_16b;
wire  r47_w_SAD_2a163_6_16b;
wire  r47_w_SAD_2a163_7_16b;
wire  r47_w_SAD_2a163_8_16b;
wire  r47_w_SAD_2a163_9_16b;
wire  r48_w_SAD_2a163_0_16b;
wire  r48_w_SAD_2a163_1_16b;
wire  r48_w_SAD_2a163_10_16b;
wire  r48_w_SAD_2a163_11_16b;
wire  r48_w_SAD_2a163_12_16b;
wire  r48_w_SAD_2a163_13_16b;
wire  r48_w_SAD_2a163_14_16b;
wire  r48_w_SAD_2a163_15_16b;
wire  r48_w_SAD_2a163_2_16b;
wire  r48_w_SAD_2a163_3_16b;
wire  r48_w_SAD_2a163_4_16b;
wire  r48_w_SAD_2a163_5_16b;
wire  r48_w_SAD_2a163_6_16b;
wire  r48_w_SAD_2a163_7_16b;
wire  r48_w_SAD_2a163_8_16b;
wire  r48_w_SAD_2a163_9_16b;
wire  r49_w_SAD_2a163_0_16b;
wire  r49_w_SAD_2a163_1_16b;
wire  r49_w_SAD_2a163_10_16b;
wire  r49_w_SAD_2a163_11_16b;
wire  r49_w_SAD_2a163_12_16b;
wire  r49_w_SAD_2a163_13_16b;
wire  r49_w_SAD_2a163_14_16b;
wire  r49_w_SAD_2a163_15_16b;
wire  r49_w_SAD_2a163_2_16b;
wire  r49_w_SAD_2a163_3_16b;
wire  r49_w_SAD_2a163_4_16b;
wire  r49_w_SAD_2a163_5_16b;
wire  r49_w_SAD_2a163_6_16b;
wire  r49_w_SAD_2a163_7_16b;
wire  r49_w_SAD_2a163_8_16b;
wire  r49_w_SAD_2a163_9_16b;
wire  r4_w_SAD_2a163_0_16b;
wire  r4_w_SAD_2a163_1_16b;
wire  r4_w_SAD_2a163_10_16b;
wire  r4_w_SAD_2a163_11_16b;
wire  r4_w_SAD_2a163_12_16b;
wire  r4_w_SAD_2a163_13_16b;
wire  r4_w_SAD_2a163_14_16b;
wire  r4_w_SAD_2a163_15_16b;
wire  r4_w_SAD_2a163_2_16b;
wire  r4_w_SAD_2a163_3_16b;
wire  r4_w_SAD_2a163_4_16b;
wire  r4_w_SAD_2a163_5_16b;
wire  r4_w_SAD_2a163_6_16b;
wire  r4_w_SAD_2a163_7_16b;
wire  r4_w_SAD_2a163_8_16b;
wire  r4_w_SAD_2a163_9_16b;
wire  r50_w_SAD_2a163_0_16b;
wire  r50_w_SAD_2a163_1_16b;
wire  r50_w_SAD_2a163_10_16b;
wire  r50_w_SAD_2a163_11_16b;
wire  r50_w_SAD_2a163_12_16b;
wire  r50_w_SAD_2a163_13_16b;
wire  r50_w_SAD_2a163_14_16b;
wire  r50_w_SAD_2a163_15_16b;
wire  r50_w_SAD_2a163_2_16b;
wire  r50_w_SAD_2a163_3_16b;
wire  r50_w_SAD_2a163_4_16b;
wire  r50_w_SAD_2a163_5_16b;
wire  r50_w_SAD_2a163_6_16b;
wire  r50_w_SAD_2a163_7_16b;
wire  r50_w_SAD_2a163_8_16b;
wire  r50_w_SAD_2a163_9_16b;
wire  r51_w_SAD_2a163_0_16b;
wire  r51_w_SAD_2a163_1_16b;
wire  r51_w_SAD_2a163_10_16b;
wire  r51_w_SAD_2a163_11_16b;
wire  r51_w_SAD_2a163_12_16b;
wire  r51_w_SAD_2a163_13_16b;
wire  r51_w_SAD_2a163_14_16b;
wire  r51_w_SAD_2a163_15_16b;
wire  r51_w_SAD_2a163_2_16b;
wire  r51_w_SAD_2a163_3_16b;
wire  r51_w_SAD_2a163_4_16b;
wire  r51_w_SAD_2a163_5_16b;
wire  r51_w_SAD_2a163_6_16b;
wire  r51_w_SAD_2a163_7_16b;
wire  r51_w_SAD_2a163_8_16b;
wire  r51_w_SAD_2a163_9_16b;
wire  r52_w_SAD_2a163_0_16b;
wire  r52_w_SAD_2a163_1_16b;
wire  r52_w_SAD_2a163_10_16b;
wire  r52_w_SAD_2a163_11_16b;
wire  r52_w_SAD_2a163_12_16b;
wire  r52_w_SAD_2a163_13_16b;
wire  r52_w_SAD_2a163_14_16b;
wire  r52_w_SAD_2a163_15_16b;
wire  r52_w_SAD_2a163_2_16b;
wire  r52_w_SAD_2a163_3_16b;
wire  r52_w_SAD_2a163_4_16b;
wire  r52_w_SAD_2a163_5_16b;
wire  r52_w_SAD_2a163_6_16b;
wire  r52_w_SAD_2a163_7_16b;
wire  r52_w_SAD_2a163_8_16b;
wire  r52_w_SAD_2a163_9_16b;
wire  r53_w_SAD_2a163_0_16b;
wire  r53_w_SAD_2a163_1_16b;
wire  r53_w_SAD_2a163_10_16b;
wire  r53_w_SAD_2a163_11_16b;
wire  r53_w_SAD_2a163_12_16b;
wire  r53_w_SAD_2a163_13_16b;
wire  r53_w_SAD_2a163_14_16b;
wire  r53_w_SAD_2a163_15_16b;
wire  r53_w_SAD_2a163_2_16b;
wire  r53_w_SAD_2a163_3_16b;
wire  r53_w_SAD_2a163_4_16b;
wire  r53_w_SAD_2a163_5_16b;
wire  r53_w_SAD_2a163_6_16b;
wire  r53_w_SAD_2a163_7_16b;
wire  r53_w_SAD_2a163_8_16b;
wire  r53_w_SAD_2a163_9_16b;
wire  r54_w_SAD_2a163_0_16b;
wire  r54_w_SAD_2a163_1_16b;
wire  r54_w_SAD_2a163_10_16b;
wire  r54_w_SAD_2a163_11_16b;
wire  r54_w_SAD_2a163_12_16b;
wire  r54_w_SAD_2a163_13_16b;
wire  r54_w_SAD_2a163_14_16b;
wire  r54_w_SAD_2a163_15_16b;
wire  r54_w_SAD_2a163_2_16b;
wire  r54_w_SAD_2a163_3_16b;
wire  r54_w_SAD_2a163_4_16b;
wire  r54_w_SAD_2a163_5_16b;
wire  r54_w_SAD_2a163_6_16b;
wire  r54_w_SAD_2a163_7_16b;
wire  r54_w_SAD_2a163_8_16b;
wire  r54_w_SAD_2a163_9_16b;
wire  r55_w_SAD_2a163_0_16b;
wire  r55_w_SAD_2a163_1_16b;
wire  r55_w_SAD_2a163_10_16b;
wire  r55_w_SAD_2a163_11_16b;
wire  r55_w_SAD_2a163_12_16b;
wire  r55_w_SAD_2a163_13_16b;
wire  r55_w_SAD_2a163_14_16b;
wire  r55_w_SAD_2a163_15_16b;
wire  r55_w_SAD_2a163_2_16b;
wire  r55_w_SAD_2a163_3_16b;
wire  r55_w_SAD_2a163_4_16b;
wire  r55_w_SAD_2a163_5_16b;
wire  r55_w_SAD_2a163_6_16b;
wire  r55_w_SAD_2a163_7_16b;
wire  r55_w_SAD_2a163_8_16b;
wire  r55_w_SAD_2a163_9_16b;
wire  r56_w_SAD_2a163_0_16b;
wire  r56_w_SAD_2a163_1_16b;
wire  r56_w_SAD_2a163_10_16b;
wire  r56_w_SAD_2a163_11_16b;
wire  r56_w_SAD_2a163_12_16b;
wire  r56_w_SAD_2a163_13_16b;
wire  r56_w_SAD_2a163_14_16b;
wire  r56_w_SAD_2a163_15_16b;
wire  r56_w_SAD_2a163_2_16b;
wire  r56_w_SAD_2a163_3_16b;
wire  r56_w_SAD_2a163_4_16b;
wire  r56_w_SAD_2a163_5_16b;
wire  r56_w_SAD_2a163_6_16b;
wire  r56_w_SAD_2a163_7_16b;
wire  r56_w_SAD_2a163_8_16b;
wire  r56_w_SAD_2a163_9_16b;
wire  r57_w_SAD_2a163_0_16b;
wire  r57_w_SAD_2a163_1_16b;
wire  r57_w_SAD_2a163_10_16b;
wire  r57_w_SAD_2a163_11_16b;
wire  r57_w_SAD_2a163_12_16b;
wire  r57_w_SAD_2a163_13_16b;
wire  r57_w_SAD_2a163_14_16b;
wire  r57_w_SAD_2a163_15_16b;
wire  r57_w_SAD_2a163_2_16b;
wire  r57_w_SAD_2a163_3_16b;
wire  r57_w_SAD_2a163_4_16b;
wire  r57_w_SAD_2a163_5_16b;
wire  r57_w_SAD_2a163_6_16b;
wire  r57_w_SAD_2a163_7_16b;
wire  r57_w_SAD_2a163_8_16b;
wire  r57_w_SAD_2a163_9_16b;
wire  r58_w_SAD_2a163_0_16b;
wire  r58_w_SAD_2a163_1_16b;
wire  r58_w_SAD_2a163_10_16b;
wire  r58_w_SAD_2a163_11_16b;
wire  r58_w_SAD_2a163_12_16b;
wire  r58_w_SAD_2a163_13_16b;
wire  r58_w_SAD_2a163_14_16b;
wire  r58_w_SAD_2a163_15_16b;
wire  r58_w_SAD_2a163_2_16b;
wire  r58_w_SAD_2a163_3_16b;
wire  r58_w_SAD_2a163_4_16b;
wire  r58_w_SAD_2a163_5_16b;
wire  r58_w_SAD_2a163_6_16b;
wire  r58_w_SAD_2a163_7_16b;
wire  r58_w_SAD_2a163_8_16b;
wire  r58_w_SAD_2a163_9_16b;
wire  r59_w_SAD_2a163_0_16b;
wire  r59_w_SAD_2a163_1_16b;
wire  r59_w_SAD_2a163_10_16b;
wire  r59_w_SAD_2a163_11_16b;
wire  r59_w_SAD_2a163_12_16b;
wire  r59_w_SAD_2a163_13_16b;
wire  r59_w_SAD_2a163_14_16b;
wire  r59_w_SAD_2a163_15_16b;
wire  r59_w_SAD_2a163_2_16b;
wire  r59_w_SAD_2a163_3_16b;
wire  r59_w_SAD_2a163_4_16b;
wire  r59_w_SAD_2a163_5_16b;
wire  r59_w_SAD_2a163_6_16b;
wire  r59_w_SAD_2a163_7_16b;
wire  r59_w_SAD_2a163_8_16b;
wire  r59_w_SAD_2a163_9_16b;
wire  r5_w_SAD_2a163_0_16b;
wire  r5_w_SAD_2a163_1_16b;
wire  r5_w_SAD_2a163_10_16b;
wire  r5_w_SAD_2a163_11_16b;
wire  r5_w_SAD_2a163_12_16b;
wire  r5_w_SAD_2a163_13_16b;
wire  r5_w_SAD_2a163_14_16b;
wire  r5_w_SAD_2a163_15_16b;
wire  r5_w_SAD_2a163_2_16b;
wire  r5_w_SAD_2a163_3_16b;
wire  r5_w_SAD_2a163_4_16b;
wire  r5_w_SAD_2a163_5_16b;
wire  r5_w_SAD_2a163_6_16b;
wire  r5_w_SAD_2a163_7_16b;
wire  r5_w_SAD_2a163_8_16b;
wire  r5_w_SAD_2a163_9_16b;
wire  r60_w_SAD_2a163_0_16b;
wire  r60_w_SAD_2a163_1_16b;
wire  r60_w_SAD_2a163_10_16b;
wire  r60_w_SAD_2a163_11_16b;
wire  r60_w_SAD_2a163_12_16b;
wire  r60_w_SAD_2a163_13_16b;
wire  r60_w_SAD_2a163_14_16b;
wire  r60_w_SAD_2a163_15_16b;
wire  r60_w_SAD_2a163_2_16b;
wire  r60_w_SAD_2a163_3_16b;
wire  r60_w_SAD_2a163_4_16b;
wire  r60_w_SAD_2a163_5_16b;
wire  r60_w_SAD_2a163_6_16b;
wire  r60_w_SAD_2a163_7_16b;
wire  r60_w_SAD_2a163_8_16b;
wire  r60_w_SAD_2a163_9_16b;
wire  r61_w_SAD_2a163_0_16b;
wire  r61_w_SAD_2a163_1_16b;
wire  r61_w_SAD_2a163_10_16b;
wire  r61_w_SAD_2a163_11_16b;
wire  r61_w_SAD_2a163_12_16b;
wire  r61_w_SAD_2a163_13_16b;
wire  r61_w_SAD_2a163_14_16b;
wire  r61_w_SAD_2a163_15_16b;
wire  r61_w_SAD_2a163_2_16b;
wire  r61_w_SAD_2a163_3_16b;
wire  r61_w_SAD_2a163_4_16b;
wire  r61_w_SAD_2a163_5_16b;
wire  r61_w_SAD_2a163_6_16b;
wire  r61_w_SAD_2a163_7_16b;
wire  r61_w_SAD_2a163_8_16b;
wire  r61_w_SAD_2a163_9_16b;
wire  r62_w_SAD_2a163_0_16b;
wire  r62_w_SAD_2a163_1_16b;
wire  r62_w_SAD_2a163_10_16b;
wire  r62_w_SAD_2a163_11_16b;
wire  r62_w_SAD_2a163_12_16b;
wire  r62_w_SAD_2a163_13_16b;
wire  r62_w_SAD_2a163_14_16b;
wire  r62_w_SAD_2a163_15_16b;
wire  r62_w_SAD_2a163_2_16b;
wire  r62_w_SAD_2a163_3_16b;
wire  r62_w_SAD_2a163_4_16b;
wire  r62_w_SAD_2a163_5_16b;
wire  r62_w_SAD_2a163_6_16b;
wire  r62_w_SAD_2a163_7_16b;
wire  r62_w_SAD_2a163_8_16b;
wire  r62_w_SAD_2a163_9_16b;
wire  r63_w_SAD_2a163_0_16b;
wire  r63_w_SAD_2a163_1_16b;
wire  r63_w_SAD_2a163_10_16b;
wire  r63_w_SAD_2a163_11_16b;
wire  r63_w_SAD_2a163_12_16b;
wire  r63_w_SAD_2a163_13_16b;
wire  r63_w_SAD_2a163_14_16b;
wire  r63_w_SAD_2a163_15_16b;
wire  r63_w_SAD_2a163_2_16b;
wire  r63_w_SAD_2a163_3_16b;
wire  r63_w_SAD_2a163_4_16b;
wire  r63_w_SAD_2a163_5_16b;
wire  r63_w_SAD_2a163_6_16b;
wire  r63_w_SAD_2a163_7_16b;
wire  r63_w_SAD_2a163_8_16b;
wire  r63_w_SAD_2a163_9_16b;
wire  r6_w_SAD_2a163_0_16b;
wire  r6_w_SAD_2a163_1_16b;
wire  r6_w_SAD_2a163_10_16b;
wire  r6_w_SAD_2a163_11_16b;
wire  r6_w_SAD_2a163_12_16b;
wire  r6_w_SAD_2a163_13_16b;
wire  r6_w_SAD_2a163_14_16b;
wire  r6_w_SAD_2a163_15_16b;
wire  r6_w_SAD_2a163_2_16b;
wire  r6_w_SAD_2a163_3_16b;
wire  r6_w_SAD_2a163_4_16b;
wire  r6_w_SAD_2a163_5_16b;
wire  r6_w_SAD_2a163_6_16b;
wire  r6_w_SAD_2a163_7_16b;
wire  r6_w_SAD_2a163_8_16b;
wire  r6_w_SAD_2a163_9_16b;
wire  r7_w_SAD_2a163_0_16b;
wire  r7_w_SAD_2a163_1_16b;
wire  r7_w_SAD_2a163_10_16b;
wire  r7_w_SAD_2a163_11_16b;
wire  r7_w_SAD_2a163_12_16b;
wire  r7_w_SAD_2a163_13_16b;
wire  r7_w_SAD_2a163_14_16b;
wire  r7_w_SAD_2a163_15_16b;
wire  r7_w_SAD_2a163_2_16b;
wire  r7_w_SAD_2a163_3_16b;
wire  r7_w_SAD_2a163_4_16b;
wire  r7_w_SAD_2a163_5_16b;
wire  r7_w_SAD_2a163_6_16b;
wire  r7_w_SAD_2a163_7_16b;
wire  r7_w_SAD_2a163_8_16b;
wire  r7_w_SAD_2a163_9_16b;
wire  r8_w_SAD_2a163_0_16b;
wire  r8_w_SAD_2a163_1_16b;
wire  r8_w_SAD_2a163_10_16b;
wire  r8_w_SAD_2a163_11_16b;
wire  r8_w_SAD_2a163_12_16b;
wire  r8_w_SAD_2a163_13_16b;
wire  r8_w_SAD_2a163_14_16b;
wire  r8_w_SAD_2a163_15_16b;
wire  r8_w_SAD_2a163_2_16b;
wire  r8_w_SAD_2a163_3_16b;
wire  r8_w_SAD_2a163_4_16b;
wire  r8_w_SAD_2a163_5_16b;
wire  r8_w_SAD_2a163_6_16b;
wire  r8_w_SAD_2a163_7_16b;
wire  r8_w_SAD_2a163_8_16b;
wire  r8_w_SAD_2a163_9_16b;
wire  r9_w_SAD_2a163_0_16b;
wire  r9_w_SAD_2a163_1_16b;
wire  r9_w_SAD_2a163_10_16b;
wire  r9_w_SAD_2a163_11_16b;
wire  r9_w_SAD_2a163_12_16b;
wire  r9_w_SAD_2a163_13_16b;
wire  r9_w_SAD_2a163_14_16b;
wire  r9_w_SAD_2a163_15_16b;
wire  r9_w_SAD_2a163_2_16b;
wire  r9_w_SAD_2a163_3_16b;
wire  r9_w_SAD_2a163_4_16b;
wire  r9_w_SAD_2a163_5_16b;
wire  r9_w_SAD_2a163_6_16b;
wire  r9_w_SAD_2a163_7_16b;
wire  r9_w_SAD_2a163_8_16b;
wire  r9_w_SAD_2a163_9_16b;
wire  w_1000_16b;
wire  w_10000_8b;
wire  w_10001_8b;
wire  w_10004_8b;
wire  w_10005_8b;
wire  w_10006_16b;
wire  w_10007_16b;
wire  w_10008_16b;
wire  w_10011_8b;
wire  w_10012_8b;
wire  w_10013_8b;
wire  w_10016_8b;
wire  w_10017_8b;
wire  w_10018_16b;
wire  w_10019_16b;
wire  w_10020_16b;
wire  w_10023_8b;
wire  w_10024_8b;
wire  w_10025_8b;
wire  w_10028_8b;
wire  w_10029_8b;
wire  w_1003_8b;
wire  w_10030_16b;
wire  w_10031_16b;
wire  w_10032_16b;
wire  w_10035_8b;
wire  w_10036_8b;
wire  w_10037_8b;
wire  w_1004_8b;
wire  w_10040_8b;
wire  w_10041_8b;
wire  w_10042_16b;
wire  w_10043_16b;
wire  w_10044_16b;
wire  w_10047_8b;
wire  w_10048_8b;
wire  w_10049_8b;
wire  w_1005_8b;
wire  w_10052_8b;
wire  w_10053_8b;
wire  w_10054_16b;
wire  w_10055_16b;
wire  w_10056_16b;
wire  w_10059_8b;
wire  w_10060_8b;
wire  w_10061_8b;
wire  w_10064_8b;
wire  w_10065_8b;
wire  w_10066_16b;
wire  w_10067_16b;
wire  w_10068_16b;
wire  w_10071_8b;
wire  w_10072_8b;
wire  w_10073_8b;
wire  w_10076_8b;
wire  w_10077_8b;
wire  w_10078_16b;
wire  w_10079_16b;
wire  w_1008_8b;
wire  w_10080_16b;
wire  w_10083_8b;
wire  w_10084_8b;
wire  w_10085_8b;
wire  w_10088_8b;
wire  w_10089_8b;
wire  w_1009_8b;
wire  w_10090_16b;
wire  w_10091_16b;
wire  w_10092_16b;
wire  w_10095_8b;
wire  w_10096_8b;
wire  w_10097_8b;
wire  w_1010_16b;
wire  w_10100_8b;
wire  w_10101_8b;
wire  w_10102_16b;
wire  w_10103_16b;
wire  w_10104_16b;
wire  w_10107_8b;
wire  w_10108_8b;
wire  w_10109_8b;
wire  w_1011_16b;
wire  w_10112_8b;
wire  w_10113_8b;
wire  w_10114_16b;
wire  w_10115_16b;
wire  w_10116_16b;
wire  w_10119_8b;
wire  w_1012_16b;
wire  w_10120_8b;
wire  w_10121_8b;
wire  w_10124_8b;
wire  w_10125_8b;
wire  w_10126_16b;
wire  w_10127_16b;
wire  w_10128_16b;
wire  w_10131_8b;
wire  w_10132_8b;
wire  w_10133_8b;
wire  w_10136_8b;
wire  w_10137_8b;
wire  w_10138_16b;
wire  w_10139_16b;
wire  w_10140_16b;
wire  w_10143_8b;
wire  w_10144_8b;
wire  w_10145_8b;
wire  w_10148_8b;
wire  w_10149_8b;
wire  w_1015_8b;
wire  w_10150_16b;
wire  w_10151_16b;
wire  w_10152_16b;
wire  w_10155_8b;
wire  w_10156_8b;
wire  w_10157_8b;
wire  w_1016_8b;
wire  w_10160_8b;
wire  w_10161_8b;
wire  w_10162_16b;
wire  w_10163_16b;
wire  w_10164_16b;
wire  w_10167_8b;
wire  w_10168_8b;
wire  w_10169_8b;
wire  w_1017_8b;
wire  w_10172_8b;
wire  w_10173_8b;
wire  w_10174_16b;
wire  w_10175_16b;
wire  w_10176_16b;
wire  w_10179_8b;
wire  w_10180_8b;
wire  w_10181_8b;
wire  w_10184_8b;
wire  w_10185_8b;
wire  w_10186_16b;
wire  w_10187_16b;
wire  w_10188_16b;
wire  w_10191_8b;
wire  w_10192_8b;
wire  w_10193_8b;
wire  w_10196_8b;
wire  w_10197_8b;
wire  w_10198_16b;
wire  w_10199_16b;
wire  w_1020_8b;
wire  w_10200_16b;
wire  w_10203_8b;
wire  w_10204_8b;
wire  w_10205_8b;
wire  w_10208_8b;
wire  w_10209_8b;
wire  w_1021_8b;
wire  w_10210_16b;
wire  w_10211_16b;
wire  w_10212_16b;
wire  w_10215_8b;
wire  w_10216_8b;
wire  w_10217_8b;
wire  w_1022_16b;
wire  w_10220_8b;
wire  w_10221_8b;
wire  w_10222_16b;
wire  w_10223_16b;
wire  w_10224_16b;
wire  w_10227_8b;
wire  w_10228_8b;
wire  w_10229_8b;
wire  w_1023_16b;
wire  w_10232_8b;
wire  w_10233_8b;
wire  w_10234_16b;
wire  w_10235_16b;
wire  w_10236_16b;
wire  w_10239_8b;
wire  w_1024_16b;
wire  w_10240_8b;
wire  w_10241_8b;
wire  w_10244_8b;
wire  w_10245_8b;
wire  w_10246_16b;
wire  w_10247_16b;
wire  w_10248_16b;
wire  w_10251_8b;
wire  w_10252_8b;
wire  w_10253_8b;
wire  w_10256_8b;
wire  w_10257_8b;
wire  w_10258_16b;
wire  w_10259_16b;
wire  w_10260_16b;
wire  w_10263_8b;
wire  w_10264_8b;
wire  w_10265_8b;
wire  w_10268_8b;
wire  w_10269_8b;
wire  w_1027_8b;
wire  w_10270_16b;
wire  w_10271_16b;
wire  w_10272_16b;
wire  w_10275_8b;
wire  w_10276_8b;
wire  w_10277_8b;
wire  w_1028_8b;
wire  w_10280_8b;
wire  w_10281_8b;
wire  w_10282_16b;
wire  w_10283_16b;
wire  w_10284_16b;
wire  w_10287_8b;
wire  w_10288_8b;
wire  w_10289_8b;
wire  w_1029_8b;
wire  w_10292_8b;
wire  w_10293_8b;
wire  w_10294_16b;
wire  w_10295_16b;
wire  w_10296_16b;
wire  w_10299_8b;
wire  w_10300_8b;
wire  w_10301_8b;
wire  w_10304_8b;
wire  w_10305_8b;
wire  w_10306_16b;
wire  w_10307_16b;
wire  w_10308_16b;
wire  w_10311_8b;
wire  w_10312_8b;
wire  w_10313_8b;
wire  w_10316_8b;
wire  w_10317_8b;
wire  w_10318_16b;
wire  w_10319_16b;
wire  w_1032_8b;
wire  w_10320_16b;
wire  w_10323_8b;
wire  w_10324_8b;
wire  w_10325_8b;
wire  w_10328_8b;
wire  w_10329_8b;
wire  w_1033_8b;
wire  w_10330_16b;
wire  w_10331_16b;
wire  w_10332_16b;
wire  w_10335_8b;
wire  w_10336_8b;
wire  w_10337_8b;
wire  w_1034_16b;
wire  w_10340_8b;
wire  w_10341_8b;
wire  w_10342_16b;
wire  w_10343_16b;
wire  w_10344_16b;
wire  w_10347_8b;
wire  w_10348_8b;
wire  w_10349_8b;
wire  w_1035_16b;
wire  w_10352_8b;
wire  w_10353_8b;
wire  w_10354_16b;
wire  w_10355_16b;
wire  w_10356_16b;
wire  w_10359_8b;
wire  w_1036_16b;
wire  w_10360_8b;
wire  w_10361_8b;
wire  w_10364_8b;
wire  w_10365_8b;
wire  w_10366_16b;
wire  w_10367_16b;
wire  w_10368_16b;
wire  w_10371_8b;
wire  w_10372_8b;
wire  w_10373_8b;
wire  w_10376_8b;
wire  w_10377_8b;
wire  w_10378_16b;
wire  w_10379_16b;
wire  w_1038_8b;
wire  w_10380_16b;
wire  w_10383_8b;
wire  w_10384_8b;
wire  w_10385_8b;
wire  w_10388_8b;
wire  w_10389_8b;
wire  w_1039_8b;
wire  w_10390_16b;
wire  w_10391_16b;
wire  w_10392_16b;
wire  w_10395_8b;
wire  w_10396_8b;
wire  w_10397_8b;
wire  w_1040_8b;
wire  w_10400_8b;
wire  w_10401_8b;
wire  w_10402_16b;
wire  w_10403_16b;
wire  w_10404_16b;
wire  w_10407_8b;
wire  w_10408_8b;
wire  w_10409_8b;
wire  w_10412_8b;
wire  w_10413_8b;
wire  w_10414_16b;
wire  w_10415_16b;
wire  w_10416_16b;
wire  w_10419_8b;
wire  w_10420_8b;
wire  w_10421_8b;
wire  w_10424_8b;
wire  w_10425_8b;
wire  w_10426_16b;
wire  w_10427_16b;
wire  w_10428_16b;
wire  w_1043_8b;
wire  w_10431_8b;
wire  w_10432_8b;
wire  w_10433_8b;
wire  w_10436_8b;
wire  w_10437_8b;
wire  w_10438_16b;
wire  w_10439_16b;
wire  w_1044_8b;
wire  w_10440_16b;
wire  w_10443_8b;
wire  w_10444_8b;
wire  w_10445_8b;
wire  w_10448_8b;
wire  w_10449_8b;
wire  w_1045_16b;
wire  w_10450_16b;
wire  w_10451_16b;
wire  w_10452_16b;
wire  w_10455_8b;
wire  w_10456_8b;
wire  w_10457_8b;
wire  w_1046_16b;
wire  w_10460_8b;
wire  w_10461_8b;
wire  w_10462_16b;
wire  w_10463_16b;
wire  w_10464_16b;
wire  w_10467_8b;
wire  w_10468_8b;
wire  w_10469_8b;
wire  w_1047_16b;
wire  w_10472_8b;
wire  w_10473_8b;
wire  w_10474_16b;
wire  w_10475_16b;
wire  w_10476_16b;
wire  w_10479_8b;
wire  w_10480_8b;
wire  w_10481_8b;
wire  w_10484_8b;
wire  w_10485_8b;
wire  w_10486_16b;
wire  w_10487_16b;
wire  w_10488_16b;
wire  w_10491_8b;
wire  w_10492_8b;
wire  w_10493_8b;
wire  w_10496_8b;
wire  w_10497_8b;
wire  w_10498_16b;
wire  w_10499_16b;
wire  w_1050_8b;
wire  w_10500_16b;
wire  w_10503_8b;
wire  w_10504_8b;
wire  w_10505_8b;
wire  w_10508_8b;
wire  w_10509_8b;
wire  w_1051_8b;
wire  w_10510_16b;
wire  w_10511_16b;
wire  w_10512_16b;
wire  w_10515_8b;
wire  w_10516_8b;
wire  w_10517_8b;
wire  w_1052_8b;
wire  w_10520_8b;
wire  w_10521_8b;
wire  w_10522_16b;
wire  w_10523_16b;
wire  w_10524_16b;
wire  w_10527_8b;
wire  w_10528_8b;
wire  w_10529_8b;
wire  w_10532_8b;
wire  w_10533_8b;
wire  w_10534_16b;
wire  w_10535_16b;
wire  w_10536_16b;
wire  w_10539_8b;
wire  w_10540_8b;
wire  w_10541_8b;
wire  w_10544_8b;
wire  w_10545_8b;
wire  w_10546_16b;
wire  w_10547_16b;
wire  w_10548_16b;
wire  w_1055_8b;
wire  w_10551_8b;
wire  w_10552_8b;
wire  w_10553_8b;
wire  w_10556_8b;
wire  w_10557_8b;
wire  w_10558_16b;
wire  w_10559_16b;
wire  w_1056_8b;
wire  w_10560_16b;
wire  w_10563_8b;
wire  w_10564_8b;
wire  w_10565_8b;
wire  w_10568_8b;
wire  w_10569_8b;
wire  w_1057_16b;
wire  w_10570_16b;
wire  w_10571_16b;
wire  w_10572_16b;
wire  w_10575_8b;
wire  w_10576_8b;
wire  w_10577_8b;
wire  w_1058_16b;
wire  w_10580_8b;
wire  w_10581_8b;
wire  w_10582_16b;
wire  w_10583_16b;
wire  w_10584_16b;
wire  w_10587_8b;
wire  w_10588_8b;
wire  w_10589_8b;
wire  w_1059_16b;
wire  w_10592_8b;
wire  w_10593_8b;
wire  w_10594_16b;
wire  w_10595_16b;
wire  w_10596_16b;
wire  w_10599_8b;
wire  w_10600_8b;
wire  w_10601_8b;
wire  w_10604_8b;
wire  w_10605_8b;
wire  w_10606_16b;
wire  w_10607_16b;
wire  w_10608_16b;
wire  w_10611_8b;
wire  w_10612_8b;
wire  w_10613_8b;
wire  w_10616_8b;
wire  w_10617_8b;
wire  w_10618_16b;
wire  w_10619_16b;
wire  w_1062_8b;
wire  w_10620_16b;
wire  w_10623_8b;
wire  w_10624_8b;
wire  w_10625_8b;
wire  w_10628_8b;
wire  w_10629_8b;
wire  w_1063_8b;
wire  w_10630_16b;
wire  w_10631_16b;
wire  w_10632_16b;
wire  w_10635_8b;
wire  w_10636_8b;
wire  w_10637_8b;
wire  w_1064_8b;
wire  w_10640_8b;
wire  w_10641_8b;
wire  w_10642_16b;
wire  w_10643_16b;
wire  w_10644_16b;
wire  w_10647_8b;
wire  w_10648_8b;
wire  w_10649_8b;
wire  w_10652_8b;
wire  w_10653_8b;
wire  w_10654_16b;
wire  w_10655_16b;
wire  w_10656_16b;
wire  w_10659_8b;
wire  w_10660_8b;
wire  w_10661_8b;
wire  w_10664_8b;
wire  w_10665_8b;
wire  w_10666_16b;
wire  w_10667_16b;
wire  w_10668_16b;
wire  w_1067_8b;
wire  w_10671_8b;
wire  w_10672_8b;
wire  w_10673_8b;
wire  w_10676_8b;
wire  w_10677_8b;
wire  w_10678_16b;
wire  w_10679_16b;
wire  w_1068_8b;
wire  w_10680_16b;
wire  w_10683_8b;
wire  w_10684_8b;
wire  w_10685_8b;
wire  w_10688_8b;
wire  w_10689_8b;
wire  w_1069_16b;
wire  w_10690_16b;
wire  w_10691_16b;
wire  w_10692_16b;
wire  w_10695_8b;
wire  w_10696_8b;
wire  w_10697_8b;
wire  w_1070_16b;
wire  w_10700_8b;
wire  w_10701_8b;
wire  w_10702_16b;
wire  w_10703_16b;
wire  w_10704_16b;
wire  w_10707_8b;
wire  w_10708_8b;
wire  w_10709_8b;
wire  w_1071_16b;
wire  w_10712_8b;
wire  w_10713_8b;
wire  w_10714_16b;
wire  w_10715_16b;
wire  w_10716_16b;
wire  w_10719_8b;
wire  w_10720_8b;
wire  w_10721_8b;
wire  w_10724_8b;
wire  w_10725_8b;
wire  w_10726_16b;
wire  w_10727_16b;
wire  w_10728_16b;
wire  w_10731_8b;
wire  w_10732_8b;
wire  w_10733_8b;
wire  w_10736_8b;
wire  w_10737_8b;
wire  w_10738_16b;
wire  w_10739_16b;
wire  w_1074_8b;
wire  w_10740_16b;
wire  w_10743_8b;
wire  w_10744_8b;
wire  w_10745_8b;
wire  w_10748_8b;
wire  w_10749_8b;
wire  w_1075_8b;
wire  w_10750_16b;
wire  w_10751_16b;
wire  w_10752_16b;
wire  w_10755_8b;
wire  w_10756_8b;
wire  w_10757_8b;
wire  w_1076_8b;
wire  w_10760_8b;
wire  w_10761_8b;
wire  w_10762_16b;
wire  w_10763_16b;
wire  w_10764_16b;
wire  w_10767_8b;
wire  w_10768_8b;
wire  w_10769_8b;
wire  w_10772_8b;
wire  w_10773_8b;
wire  w_10774_16b;
wire  w_10775_16b;
wire  w_10776_16b;
wire  w_10779_8b;
wire  w_10780_8b;
wire  w_10781_8b;
wire  w_10784_8b;
wire  w_10785_8b;
wire  w_10786_16b;
wire  w_10787_16b;
wire  w_10788_16b;
wire  w_1079_8b;
wire  w_10791_8b;
wire  w_10792_8b;
wire  w_10793_8b;
wire  w_10796_8b;
wire  w_10797_8b;
wire  w_10798_16b;
wire  w_10799_16b;
wire  w_1080_8b;
wire  w_10800_16b;
wire  w_10803_8b;
wire  w_10804_8b;
wire  w_10805_8b;
wire  w_10808_8b;
wire  w_10809_8b;
wire  w_1081_16b;
wire  w_10810_16b;
wire  w_10811_16b;
wire  w_10812_16b;
wire  w_10815_8b;
wire  w_10816_8b;
wire  w_10817_8b;
wire  w_1082_16b;
wire  w_10820_8b;
wire  w_10821_8b;
wire  w_10822_16b;
wire  w_10823_16b;
wire  w_10824_16b;
wire  w_10827_8b;
wire  w_10828_8b;
wire  w_10829_8b;
wire  w_1083_16b;
wire  w_10832_8b;
wire  w_10833_8b;
wire  w_10834_16b;
wire  w_10835_16b;
wire  w_10836_16b;
wire  w_10839_8b;
wire  w_10840_8b;
wire  w_10841_8b;
wire  w_10844_8b;
wire  w_10845_8b;
wire  w_10846_16b;
wire  w_10847_16b;
wire  w_10848_16b;
wire  w_10851_8b;
wire  w_10852_8b;
wire  w_10853_8b;
wire  w_10856_8b;
wire  w_10857_8b;
wire  w_10858_16b;
wire  w_10859_16b;
wire  w_1086_8b;
wire  w_10860_16b;
wire  w_10863_8b;
wire  w_10864_8b;
wire  w_10865_8b;
wire  w_10868_8b;
wire  w_10869_8b;
wire  w_1087_8b;
wire  w_10870_16b;
wire  w_10871_16b;
wire  w_10872_16b;
wire  w_10875_8b;
wire  w_10876_8b;
wire  w_10877_8b;
wire  w_1088_8b;
wire  w_10880_8b;
wire  w_10881_8b;
wire  w_10882_16b;
wire  w_10883_16b;
wire  w_10884_16b;
wire  w_10887_8b;
wire  w_10888_8b;
wire  w_10889_8b;
wire  w_10892_8b;
wire  w_10893_8b;
wire  w_10894_16b;
wire  w_10895_16b;
wire  w_10896_16b;
wire  w_10899_8b;
wire  w_10900_8b;
wire  w_10901_8b;
wire  w_10904_8b;
wire  w_10905_8b;
wire  w_10906_16b;
wire  w_10907_16b;
wire  w_10908_16b;
wire  w_1091_8b;
wire  w_10911_8b;
wire  w_10912_8b;
wire  w_10913_8b;
wire  w_10916_8b;
wire  w_10917_8b;
wire  w_10918_16b;
wire  w_10919_16b;
wire  w_1092_8b;
wire  w_10920_16b;
wire  w_10923_8b;
wire  w_10924_8b;
wire  w_10925_8b;
wire  w_10928_8b;
wire  w_10929_8b;
wire  w_1093_16b;
wire  w_10930_16b;
wire  w_10931_16b;
wire  w_10932_16b;
wire  w_10935_8b;
wire  w_10936_8b;
wire  w_10937_8b;
wire  w_1094_16b;
wire  w_10940_8b;
wire  w_10941_8b;
wire  w_10942_16b;
wire  w_10943_16b;
wire  w_10944_16b;
wire  w_10947_8b;
wire  w_10948_8b;
wire  w_10949_8b;
wire  w_1095_16b;
wire  w_10952_8b;
wire  w_10953_8b;
wire  w_10954_16b;
wire  w_10955_16b;
wire  w_10956_16b;
wire  w_10959_8b;
wire  w_10960_8b;
wire  w_10961_8b;
wire  w_10964_8b;
wire  w_10965_8b;
wire  w_10966_16b;
wire  w_10967_16b;
wire  w_10968_16b;
wire  w_10971_8b;
wire  w_10972_8b;
wire  w_10973_8b;
wire  w_10976_8b;
wire  w_10977_8b;
wire  w_10978_16b;
wire  w_10979_16b;
wire  w_1098_8b;
wire  w_10980_16b;
wire  w_10983_8b;
wire  w_10984_8b;
wire  w_10985_8b;
wire  w_10988_8b;
wire  w_10989_8b;
wire  w_1099_8b;
wire  w_10990_16b;
wire  w_10991_16b;
wire  w_10992_16b;
wire  w_10995_8b;
wire  w_10996_8b;
wire  w_10997_8b;
wire  w_1100_8b;
wire  w_11000_8b;
wire  w_11001_8b;
wire  w_11002_16b;
wire  w_11003_16b;
wire  w_11004_16b;
wire  w_11007_8b;
wire  w_11008_8b;
wire  w_11009_8b;
wire  w_11012_8b;
wire  w_11013_8b;
wire  w_11014_16b;
wire  w_11015_16b;
wire  w_11016_16b;
wire  w_11019_8b;
wire  w_11020_8b;
wire  w_11021_8b;
wire  w_11024_8b;
wire  w_11025_8b;
wire  w_11026_16b;
wire  w_11027_16b;
wire  w_11028_16b;
wire  w_1103_8b;
wire  w_11031_8b;
wire  w_11032_8b;
wire  w_11033_8b;
wire  w_11036_8b;
wire  w_11037_8b;
wire  w_11038_16b;
wire  w_11039_16b;
wire  w_1104_8b;
wire  w_11040_16b;
wire  w_11043_8b;
wire  w_11044_8b;
wire  w_11045_8b;
wire  w_11048_8b;
wire  w_11049_8b;
wire  w_1105_16b;
wire  w_11050_16b;
wire  w_11051_16b;
wire  w_11052_16b;
wire  w_11055_8b;
wire  w_11056_8b;
wire  w_11057_8b;
wire  w_1106_16b;
wire  w_11060_8b;
wire  w_11061_8b;
wire  w_11062_16b;
wire  w_11063_16b;
wire  w_11064_16b;
wire  w_11067_8b;
wire  w_11068_8b;
wire  w_11069_8b;
wire  w_1107_16b;
wire  w_11072_8b;
wire  w_11073_8b;
wire  w_11074_16b;
wire  w_11075_16b;
wire  w_11076_16b;
wire  w_11079_8b;
wire  w_11080_8b;
wire  w_11081_8b;
wire  w_11084_8b;
wire  w_11085_8b;
wire  w_11086_16b;
wire  w_11087_16b;
wire  w_11088_16b;
wire  w_11091_8b;
wire  w_11092_8b;
wire  w_11093_8b;
wire  w_11096_8b;
wire  w_11097_8b;
wire  w_11098_16b;
wire  w_11099_16b;
wire  w_1110_8b;
wire  w_11100_16b;
wire  w_11103_8b;
wire  w_11104_8b;
wire  w_11105_8b;
wire  w_11108_8b;
wire  w_11109_8b;
wire  w_1111_8b;
wire  w_11110_16b;
wire  w_11111_16b;
wire  w_11112_16b;
wire  w_11115_8b;
wire  w_11116_8b;
wire  w_11117_8b;
wire  w_1112_8b;
wire  w_11120_8b;
wire  w_11121_8b;
wire  w_11122_16b;
wire  w_11123_16b;
wire  w_11124_16b;
wire  w_11127_8b;
wire  w_11128_8b;
wire  w_11129_8b;
wire  w_11132_8b;
wire  w_11133_8b;
wire  w_11134_16b;
wire  w_11135_16b;
wire  w_11136_16b;
wire  w_11139_8b;
wire  w_11140_8b;
wire  w_11141_8b;
wire  w_11144_8b;
wire  w_11145_8b;
wire  w_11146_16b;
wire  w_11147_16b;
wire  w_11148_16b;
wire  w_1115_8b;
wire  w_11151_8b;
wire  w_11152_8b;
wire  w_11153_8b;
wire  w_11156_8b;
wire  w_11157_8b;
wire  w_11158_16b;
wire  w_11159_16b;
wire  w_1116_8b;
wire  w_11160_16b;
wire  w_11163_8b;
wire  w_11164_8b;
wire  w_11165_8b;
wire  w_11168_8b;
wire  w_11169_8b;
wire  w_1117_16b;
wire  w_11170_16b;
wire  w_11171_16b;
wire  w_11172_16b;
wire  w_11175_8b;
wire  w_11176_8b;
wire  w_11177_8b;
wire  w_1118_16b;
wire  w_11180_8b;
wire  w_11181_8b;
wire  w_11182_16b;
wire  w_11183_16b;
wire  w_11184_16b;
wire  w_11187_8b;
wire  w_11188_8b;
wire  w_11189_8b;
wire  w_1119_16b;
wire  w_11192_8b;
wire  w_11193_8b;
wire  w_11194_16b;
wire  w_11195_16b;
wire  w_11196_16b;
wire  w_11199_8b;
wire  w_11200_8b;
wire  w_11201_8b;
wire  w_11204_8b;
wire  w_11205_8b;
wire  w_11206_16b;
wire  w_11207_16b;
wire  w_11208_16b;
wire  w_11211_8b;
wire  w_11212_8b;
wire  w_11213_8b;
wire  w_11216_8b;
wire  w_11217_8b;
wire  w_11218_16b;
wire  w_11219_16b;
wire  w_1122_8b;
wire  w_11220_16b;
wire  w_11223_8b;
wire  w_11224_8b;
wire  w_11225_8b;
wire  w_11228_8b;
wire  w_11229_8b;
wire  w_1123_8b;
wire  w_11230_16b;
wire  w_11231_16b;
wire  w_11232_16b;
wire  w_11235_8b;
wire  w_11236_8b;
wire  w_11237_8b;
wire  w_1124_8b;
wire  w_11240_8b;
wire  w_11241_8b;
wire  w_11242_16b;
wire  w_11243_16b;
wire  w_11244_16b;
wire  w_11247_8b;
wire  w_11248_8b;
wire  w_11249_8b;
wire  w_11252_8b;
wire  w_11253_8b;
wire  w_11254_16b;
wire  w_11255_16b;
wire  w_11256_16b;
wire  w_11259_8b;
wire  w_11260_8b;
wire  w_11261_8b;
wire  w_11264_8b;
wire  w_11265_8b;
wire  w_11266_16b;
wire  w_11267_16b;
wire  w_11268_16b;
wire  w_1127_8b;
wire  w_11271_8b;
wire  w_11272_8b;
wire  w_11273_8b;
wire  w_11276_8b;
wire  w_11277_8b;
wire  w_11278_16b;
wire  w_11279_16b;
wire  w_1128_8b;
wire  w_11280_16b;
wire  w_11283_8b;
wire  w_11284_8b;
wire  w_11285_8b;
wire  w_11288_8b;
wire  w_11289_8b;
wire  w_1129_16b;
wire  w_11290_16b;
wire  w_11291_16b;
wire  w_11292_16b;
wire  w_11295_8b;
wire  w_11296_8b;
wire  w_11297_8b;
wire  w_1130_16b;
wire  w_11300_8b;
wire  w_11301_8b;
wire  w_11302_16b;
wire  w_11303_16b;
wire  w_11304_16b;
wire  w_11307_8b;
wire  w_11308_8b;
wire  w_11309_8b;
wire  w_1131_16b;
wire  w_11312_8b;
wire  w_11313_8b;
wire  w_11314_16b;
wire  w_11315_16b;
wire  w_11316_16b;
wire  w_11319_8b;
wire  w_11320_8b;
wire  w_11321_8b;
wire  w_11324_8b;
wire  w_11325_8b;
wire  w_11326_16b;
wire  w_11327_16b;
wire  w_11328_16b;
wire  w_1133_8b;
wire  w_11331_8b;
wire  w_11332_8b;
wire  w_11333_8b;
wire  w_11336_8b;
wire  w_11337_8b;
wire  w_11338_16b;
wire  w_11339_16b;
wire  w_1134_8b;
wire  w_11340_16b;
wire  w_11343_8b;
wire  w_11344_8b;
wire  w_11345_8b;
wire  w_11348_8b;
wire  w_11349_8b;
wire  w_1135_8b;
wire  w_11350_16b;
wire  w_11351_16b;
wire  w_11352_16b;
wire  w_11355_8b;
wire  w_11356_8b;
wire  w_11357_8b;
wire  w_11360_8b;
wire  w_11361_8b;
wire  w_11362_16b;
wire  w_11363_16b;
wire  w_11364_16b;
wire  w_11367_8b;
wire  w_11368_8b;
wire  w_11369_8b;
wire  w_11372_8b;
wire  w_11373_8b;
wire  w_11374_16b;
wire  w_11375_16b;
wire  w_11376_16b;
wire  w_11379_8b;
wire  w_1138_8b;
wire  w_11380_8b;
wire  w_11381_8b;
wire  w_11384_8b;
wire  w_11385_8b;
wire  w_11386_16b;
wire  w_11387_16b;
wire  w_11388_16b;
wire  w_1139_8b;
wire  w_11391_8b;
wire  w_11392_8b;
wire  w_11393_8b;
wire  w_11396_8b;
wire  w_11397_8b;
wire  w_11398_16b;
wire  w_11399_16b;
wire  w_1140_16b;
wire  w_11400_16b;
wire  w_11403_8b;
wire  w_11404_8b;
wire  w_11405_8b;
wire  w_11408_8b;
wire  w_11409_8b;
wire  w_1141_16b;
wire  w_11410_16b;
wire  w_11411_16b;
wire  w_11412_16b;
wire  w_11415_8b;
wire  w_11416_8b;
wire  w_11417_8b;
wire  w_1142_16b;
wire  w_11420_8b;
wire  w_11421_8b;
wire  w_11422_16b;
wire  w_11423_16b;
wire  w_11424_16b;
wire  w_11427_8b;
wire  w_11428_8b;
wire  w_11429_8b;
wire  w_11432_8b;
wire  w_11433_8b;
wire  w_11434_16b;
wire  w_11435_16b;
wire  w_11436_16b;
wire  w_11439_8b;
wire  w_11440_8b;
wire  w_11441_8b;
wire  w_11444_8b;
wire  w_11445_8b;
wire  w_11446_16b;
wire  w_11447_16b;
wire  w_11448_16b;
wire  w_1145_8b;
wire  w_11451_8b;
wire  w_11452_8b;
wire  w_11453_8b;
wire  w_11456_8b;
wire  w_11457_8b;
wire  w_11458_16b;
wire  w_11459_16b;
wire  w_1146_8b;
wire  w_11460_16b;
wire  w_11463_8b;
wire  w_11464_8b;
wire  w_11465_8b;
wire  w_11468_8b;
wire  w_11469_8b;
wire  w_1147_8b;
wire  w_11470_16b;
wire  w_11471_16b;
wire  w_11472_16b;
wire  w_11475_8b;
wire  w_11476_8b;
wire  w_11477_8b;
wire  w_11480_8b;
wire  w_11481_8b;
wire  w_11482_16b;
wire  w_11483_16b;
wire  w_11484_16b;
wire  w_11487_8b;
wire  w_11488_8b;
wire  w_11489_8b;
wire  w_11492_8b;
wire  w_11493_8b;
wire  w_11494_16b;
wire  w_11495_16b;
wire  w_11496_16b;
wire  w_11499_8b;
wire  w_1150_8b;
wire  w_11500_8b;
wire  w_11501_8b;
wire  w_11504_8b;
wire  w_11505_8b;
wire  w_11506_16b;
wire  w_11507_16b;
wire  w_11508_16b;
wire  w_1151_8b;
wire  w_11511_8b;
wire  w_11512_8b;
wire  w_11513_8b;
wire  w_11516_8b;
wire  w_11517_8b;
wire  w_11518_16b;
wire  w_11519_16b;
wire  w_1152_16b;
wire  w_11520_16b;
wire  w_11523_8b;
wire  w_11524_8b;
wire  w_11525_8b;
wire  w_11528_8b;
wire  w_11529_8b;
wire  w_1153_16b;
wire  w_11530_16b;
wire  w_11531_16b;
wire  w_11532_16b;
wire  w_11535_8b;
wire  w_11536_8b;
wire  w_11537_8b;
wire  w_1154_16b;
wire  w_11540_8b;
wire  w_11541_8b;
wire  w_11542_16b;
wire  w_11543_16b;
wire  w_11544_16b;
wire  w_11547_8b;
wire  w_11548_8b;
wire  w_11549_8b;
wire  w_11552_8b;
wire  w_11553_8b;
wire  w_11554_16b;
wire  w_11555_16b;
wire  w_11556_16b;
wire  w_11559_8b;
wire  w_11560_8b;
wire  w_11561_8b;
wire  w_11564_8b;
wire  w_11565_8b;
wire  w_11566_16b;
wire  w_11567_16b;
wire  w_11568_16b;
wire  w_1157_8b;
wire  w_11571_8b;
wire  w_11572_8b;
wire  w_11573_8b;
wire  w_11576_8b;
wire  w_11577_8b;
wire  w_11578_16b;
wire  w_11579_16b;
wire  w_1158_8b;
wire  w_11580_16b;
wire  w_11583_8b;
wire  w_11584_8b;
wire  w_11585_8b;
wire  w_11588_8b;
wire  w_11589_8b;
wire  w_1159_8b;
wire  w_11590_16b;
wire  w_11591_16b;
wire  w_11592_16b;
wire  w_11595_8b;
wire  w_11596_8b;
wire  w_11597_8b;
wire  w_11600_8b;
wire  w_11601_8b;
wire  w_11602_16b;
wire  w_11603_16b;
wire  w_11604_16b;
wire  w_11607_8b;
wire  w_11608_8b;
wire  w_11609_8b;
wire  w_11612_8b;
wire  w_11613_8b;
wire  w_11614_16b;
wire  w_11615_16b;
wire  w_11616_16b;
wire  w_11619_8b;
wire  w_1162_8b;
wire  w_11620_8b;
wire  w_11621_8b;
wire  w_11624_8b;
wire  w_11625_8b;
wire  w_11626_16b;
wire  w_11627_16b;
wire  w_11628_16b;
wire  w_1163_8b;
wire  w_11631_8b;
wire  w_11632_8b;
wire  w_11633_8b;
wire  w_11636_8b;
wire  w_11637_8b;
wire  w_11638_16b;
wire  w_11639_16b;
wire  w_1164_16b;
wire  w_11640_16b;
wire  w_11643_8b;
wire  w_11644_8b;
wire  w_11645_8b;
wire  w_11648_8b;
wire  w_11649_8b;
wire  w_1165_16b;
wire  w_11650_16b;
wire  w_11651_16b;
wire  w_11652_16b;
wire  w_11655_8b;
wire  w_11656_8b;
wire  w_11657_8b;
wire  w_1166_16b;
wire  w_11660_8b;
wire  w_11661_8b;
wire  w_11662_16b;
wire  w_11663_16b;
wire  w_11664_16b;
wire  w_11667_8b;
wire  w_11668_8b;
wire  w_11669_8b;
wire  w_11672_8b;
wire  w_11673_8b;
wire  w_11674_16b;
wire  w_11675_16b;
wire  w_11676_16b;
wire  w_11679_8b;
wire  w_11680_8b;
wire  w_11681_8b;
wire  w_11684_8b;
wire  w_11685_8b;
wire  w_11686_16b;
wire  w_11687_16b;
wire  w_11688_16b;
wire  w_1169_8b;
wire  w_11691_8b;
wire  w_11692_8b;
wire  w_11693_8b;
wire  w_11696_8b;
wire  w_11697_8b;
wire  w_11698_16b;
wire  w_11699_16b;
wire  w_1170_8b;
wire  w_11700_16b;
wire  w_11703_8b;
wire  w_11704_8b;
wire  w_11705_8b;
wire  w_11708_8b;
wire  w_11709_8b;
wire  w_1171_8b;
wire  w_11710_16b;
wire  w_11711_16b;
wire  w_11712_16b;
wire  w_11715_8b;
wire  w_11716_8b;
wire  w_11717_8b;
wire  w_11720_8b;
wire  w_11721_8b;
wire  w_11722_16b;
wire  w_11723_16b;
wire  w_11724_16b;
wire  w_11727_8b;
wire  w_11728_8b;
wire  w_11729_8b;
wire  w_11732_8b;
wire  w_11733_8b;
wire  w_11734_16b;
wire  w_11735_16b;
wire  w_11736_16b;
wire  w_11739_8b;
wire  w_1174_8b;
wire  w_11740_8b;
wire  w_11741_8b;
wire  w_11744_8b;
wire  w_11745_8b;
wire  w_11746_16b;
wire  w_11747_16b;
wire  w_11748_16b;
wire  w_1175_8b;
wire  w_11751_8b;
wire  w_11752_8b;
wire  w_11753_8b;
wire  w_11756_8b;
wire  w_11757_8b;
wire  w_11758_16b;
wire  w_11759_16b;
wire  w_1176_16b;
wire  w_11760_16b;
wire  w_11763_8b;
wire  w_11764_8b;
wire  w_11765_8b;
wire  w_11768_8b;
wire  w_11769_8b;
wire  w_1177_16b;
wire  w_11770_16b;
wire  w_11771_16b;
wire  w_11772_16b;
wire  w_11775_8b;
wire  w_11776_8b;
wire  w_11777_8b;
wire  w_1178_16b;
wire  w_11780_8b;
wire  w_11781_8b;
wire  w_11782_16b;
wire  w_11783_16b;
wire  w_11784_16b;
wire  w_11787_8b;
wire  w_11788_8b;
wire  w_11789_8b;
wire  w_11792_8b;
wire  w_11793_8b;
wire  w_11794_16b;
wire  w_11795_16b;
wire  w_11796_16b;
wire  w_11799_8b;
wire  w_11800_8b;
wire  w_11801_8b;
wire  w_11804_8b;
wire  w_11805_8b;
wire  w_11806_16b;
wire  w_11807_16b;
wire  w_11808_16b;
wire  w_1181_8b;
wire  w_11811_8b;
wire  w_11812_8b;
wire  w_11813_8b;
wire  w_11816_8b;
wire  w_11817_8b;
wire  w_11818_16b;
wire  w_11819_16b;
wire  w_1182_8b;
wire  w_11820_16b;
wire  w_11823_8b;
wire  w_11824_8b;
wire  w_11825_8b;
wire  w_11828_8b;
wire  w_11829_8b;
wire  w_1183_8b;
wire  w_11830_16b;
wire  w_11831_16b;
wire  w_11832_16b;
wire  w_11835_8b;
wire  w_11836_8b;
wire  w_11837_8b;
wire  w_11840_8b;
wire  w_11841_8b;
wire  w_11842_16b;
wire  w_11843_16b;
wire  w_11844_16b;
wire  w_11847_8b;
wire  w_11848_8b;
wire  w_11849_8b;
wire  w_11852_8b;
wire  w_11853_8b;
wire  w_11854_16b;
wire  w_11855_16b;
wire  w_11856_16b;
wire  w_11859_8b;
wire  w_1186_8b;
wire  w_11860_8b;
wire  w_11861_8b;
wire  w_11864_8b;
wire  w_11865_8b;
wire  w_11866_16b;
wire  w_11867_16b;
wire  w_11868_16b;
wire  w_1187_8b;
wire  w_11871_8b;
wire  w_11872_8b;
wire  w_11873_8b;
wire  w_11876_8b;
wire  w_11877_8b;
wire  w_11878_16b;
wire  w_11879_16b;
wire  w_1188_16b;
wire  w_11880_16b;
wire  w_11883_8b;
wire  w_11884_8b;
wire  w_11885_8b;
wire  w_11888_8b;
wire  w_11889_8b;
wire  w_1189_16b;
wire  w_11890_16b;
wire  w_11891_16b;
wire  w_11892_16b;
wire  w_11895_8b;
wire  w_11896_8b;
wire  w_11897_8b;
wire  w_1190_16b;
wire  w_11900_8b;
wire  w_11901_8b;
wire  w_11902_16b;
wire  w_11903_16b;
wire  w_11904_16b;
wire  w_11907_8b;
wire  w_11908_8b;
wire  w_11909_8b;
wire  w_11912_8b;
wire  w_11913_8b;
wire  w_11914_16b;
wire  w_11915_16b;
wire  w_11916_16b;
wire  w_11919_8b;
wire  w_11920_8b;
wire  w_11921_8b;
wire  w_11924_8b;
wire  w_11925_8b;
wire  w_11926_16b;
wire  w_11927_16b;
wire  w_11928_16b;
wire  w_1193_8b;
wire  w_11931_8b;
wire  w_11932_8b;
wire  w_11933_8b;
wire  w_11936_8b;
wire  w_11937_8b;
wire  w_11938_16b;
wire  w_11939_16b;
wire  w_1194_8b;
wire  w_11940_16b;
wire  w_11943_8b;
wire  w_11944_8b;
wire  w_11945_8b;
wire  w_11948_8b;
wire  w_11949_8b;
wire  w_1195_8b;
wire  w_11950_16b;
wire  w_11951_16b;
wire  w_11952_16b;
wire  w_11955_8b;
wire  w_11956_8b;
wire  w_11957_8b;
wire  w_11960_8b;
wire  w_11961_8b;
wire  w_11962_16b;
wire  w_11963_16b;
wire  w_11964_16b;
wire  w_11967_8b;
wire  w_11968_8b;
wire  w_11969_8b;
wire  w_11972_8b;
wire  w_11973_8b;
wire  w_11974_16b;
wire  w_11975_16b;
wire  w_11976_16b;
wire  w_11979_8b;
wire  w_1198_8b;
wire  w_11980_8b;
wire  w_11981_8b;
wire  w_11984_8b;
wire  w_11985_8b;
wire  w_11986_16b;
wire  w_11987_16b;
wire  w_11988_16b;
wire  w_1199_8b;
wire  w_11991_8b;
wire  w_11992_8b;
wire  w_11993_8b;
wire  w_11996_8b;
wire  w_11997_8b;
wire  w_11998_16b;
wire  w_11999_16b;
wire  w_1200_16b;
wire  w_12000_16b;
wire  w_12003_8b;
wire  w_12004_8b;
wire  w_12005_8b;
wire  w_12008_8b;
wire  w_12009_8b;
wire  w_1201_16b;
wire  w_12010_16b;
wire  w_12011_16b;
wire  w_12012_16b;
wire  w_12015_8b;
wire  w_12016_8b;
wire  w_12017_8b;
wire  w_1202_16b;
wire  w_12020_8b;
wire  w_12021_8b;
wire  w_12022_16b;
wire  w_12023_16b;
wire  w_12024_16b;
wire  w_12027_8b;
wire  w_12028_8b;
wire  w_12029_8b;
wire  w_12032_8b;
wire  w_12033_8b;
wire  w_12034_16b;
wire  w_12035_16b;
wire  w_12036_16b;
wire  w_12039_8b;
wire  w_12040_8b;
wire  w_12041_8b;
wire  w_12044_8b;
wire  w_12045_8b;
wire  w_12046_16b;
wire  w_12047_16b;
wire  w_12048_16b;
wire  w_1205_8b;
wire  w_12051_8b;
wire  w_12052_8b;
wire  w_12053_8b;
wire  w_12056_8b;
wire  w_12057_8b;
wire  w_12058_16b;
wire  w_12059_16b;
wire  w_1206_8b;
wire  w_12060_16b;
wire  w_12063_8b;
wire  w_12064_8b;
wire  w_12065_8b;
wire  w_12068_8b;
wire  w_12069_8b;
wire  w_1207_8b;
wire  w_12070_16b;
wire  w_12071_16b;
wire  w_12072_16b;
wire  w_12075_8b;
wire  w_12076_8b;
wire  w_12077_8b;
wire  w_12080_8b;
wire  w_12081_8b;
wire  w_12082_16b;
wire  w_12083_16b;
wire  w_12084_16b;
wire  w_12087_8b;
wire  w_12088_8b;
wire  w_12089_8b;
wire  w_12092_8b;
wire  w_12093_8b;
wire  w_12094_16b;
wire  w_12095_16b;
wire  w_12096_16b;
wire  w_12099_8b;
wire  w_1210_8b;
wire  w_12100_8b;
wire  w_12101_8b;
wire  w_12104_8b;
wire  w_12105_8b;
wire  w_12106_16b;
wire  w_12107_16b;
wire  w_12108_16b;
wire  w_1211_8b;
wire  w_12111_8b;
wire  w_12112_8b;
wire  w_12113_8b;
wire  w_12116_8b;
wire  w_12117_8b;
wire  w_12118_16b;
wire  w_12119_16b;
wire  w_1212_16b;
wire  w_12120_16b;
wire  w_12123_8b;
wire  w_12124_8b;
wire  w_12125_8b;
wire  w_12128_8b;
wire  w_12129_8b;
wire  w_1213_16b;
wire  w_12130_16b;
wire  w_12131_16b;
wire  w_12132_16b;
wire  w_12135_8b;
wire  w_12136_8b;
wire  w_12137_8b;
wire  w_1214_16b;
wire  w_12140_8b;
wire  w_12141_8b;
wire  w_12142_16b;
wire  w_12143_16b;
wire  w_12144_16b;
wire  w_12147_8b;
wire  w_12148_8b;
wire  w_12149_8b;
wire  w_12152_8b;
wire  w_12153_8b;
wire  w_12154_16b;
wire  w_12155_16b;
wire  w_12156_16b;
wire  w_12159_8b;
wire  w_12160_8b;
wire  w_12161_8b;
wire  w_12164_8b;
wire  w_12165_8b;
wire  w_12166_16b;
wire  w_12167_16b;
wire  w_12168_16b;
wire  w_1217_8b;
wire  w_12171_8b;
wire  w_12172_8b;
wire  w_12173_8b;
wire  w_12176_8b;
wire  w_12177_8b;
wire  w_12178_16b;
wire  w_12179_16b;
wire  w_1218_8b;
wire  w_12180_16b;
wire  w_12183_8b;
wire  w_12184_8b;
wire  w_12185_8b;
wire  w_12188_8b;
wire  w_12189_8b;
wire  w_1219_8b;
wire  w_12190_16b;
wire  w_12191_16b;
wire  w_12192_16b;
wire  w_12195_8b;
wire  w_12196_8b;
wire  w_12197_8b;
wire  w_12200_8b;
wire  w_12201_8b;
wire  w_12202_16b;
wire  w_12203_16b;
wire  w_12204_16b;
wire  w_12207_8b;
wire  w_12208_8b;
wire  w_12209_8b;
wire  w_12212_8b;
wire  w_12213_8b;
wire  w_12214_16b;
wire  w_12215_16b;
wire  w_12216_16b;
wire  w_12219_8b;
wire  w_1222_8b;
wire  w_12220_8b;
wire  w_12221_8b;
wire  w_12224_8b;
wire  w_12225_8b;
wire  w_12226_16b;
wire  w_12227_16b;
wire  w_12228_16b;
wire  w_1223_8b;
wire  w_12231_8b;
wire  w_12232_8b;
wire  w_12233_8b;
wire  w_12236_8b;
wire  w_12237_8b;
wire  w_12238_16b;
wire  w_12239_16b;
wire  w_1224_16b;
wire  w_12240_16b;
wire  w_12243_8b;
wire  w_12244_8b;
wire  w_12245_8b;
wire  w_12248_8b;
wire  w_12249_8b;
wire  w_1225_16b;
wire  w_12250_16b;
wire  w_12251_16b;
wire  w_12252_16b;
wire  w_12255_8b;
wire  w_12256_8b;
wire  w_12257_8b;
wire  w_1226_16b;
wire  w_12260_8b;
wire  w_12261_8b;
wire  w_12262_16b;
wire  w_12263_16b;
wire  w_12264_16b;
wire  w_12267_8b;
wire  w_12268_8b;
wire  w_12269_8b;
wire  w_12272_8b;
wire  w_12273_8b;
wire  w_12274_16b;
wire  w_12275_16b;
wire  w_12276_16b;
wire  w_12279_8b;
wire  w_1228_8b;
wire  w_12280_8b;
wire  w_12281_8b;
wire  w_12284_8b;
wire  w_12285_8b;
wire  w_12286_16b;
wire  w_12287_16b;
wire  w_12288_16b;
wire  w_1229_8b;
wire  w_12291_8b;
wire  w_12292_8b;
wire  w_12293_8b;
wire  w_12296_8b;
wire  w_12297_8b;
wire  w_12298_16b;
wire  w_12299_16b;
wire  w_1230_8b;
wire  w_12300_16b;
wire  w_12303_8b;
wire  w_12304_8b;
wire  w_12305_8b;
wire  w_12308_8b;
wire  w_12309_8b;
wire  w_12310_16b;
wire  w_12311_16b;
wire  w_12312_16b;
wire  w_12315_8b;
wire  w_12316_8b;
wire  w_12317_8b;
wire  w_12320_8b;
wire  w_12321_8b;
wire  w_12322_16b;
wire  w_12323_16b;
wire  w_12324_16b;
wire  w_12327_8b;
wire  w_12328_8b;
wire  w_12329_8b;
wire  w_1233_8b;
wire  w_12332_8b;
wire  w_12333_8b;
wire  w_12334_16b;
wire  w_12335_16b;
wire  w_12336_16b;
wire  w_12339_8b;
wire  w_1234_8b;
wire  w_12340_8b;
wire  w_12341_8b;
wire  w_12344_8b;
wire  w_12345_8b;
wire  w_12346_16b;
wire  w_12347_16b;
wire  w_12348_16b;
wire  w_1235_16b;
wire  w_12351_8b;
wire  w_12352_8b;
wire  w_12353_8b;
wire  w_12356_8b;
wire  w_12357_8b;
wire  w_12358_16b;
wire  w_12359_16b;
wire  w_1236_16b;
wire  w_12360_16b;
wire  w_12363_8b;
wire  w_12364_8b;
wire  w_12365_8b;
wire  w_12368_8b;
wire  w_12369_8b;
wire  w_1237_16b;
wire  w_12370_16b;
wire  w_12371_16b;
wire  w_12372_16b;
wire  w_12375_8b;
wire  w_12376_8b;
wire  w_12377_8b;
wire  w_12380_8b;
wire  w_12381_8b;
wire  w_12382_16b;
wire  w_12383_16b;
wire  w_12384_16b;
wire  w_12387_8b;
wire  w_12388_8b;
wire  w_12389_8b;
wire  w_12392_8b;
wire  w_12393_8b;
wire  w_12394_16b;
wire  w_12395_16b;
wire  w_12396_16b;
wire  w_12399_8b;
wire  w_1240_8b;
wire  w_12400_8b;
wire  w_12401_8b;
wire  w_12404_8b;
wire  w_12405_8b;
wire  w_12406_16b;
wire  w_12407_16b;
wire  w_12408_16b;
wire  w_1241_8b;
wire  w_12411_8b;
wire  w_12412_8b;
wire  w_12413_8b;
wire  w_12416_8b;
wire  w_12417_8b;
wire  w_12418_16b;
wire  w_12419_16b;
wire  w_1242_8b;
wire  w_12420_16b;
wire  w_12423_8b;
wire  w_12424_8b;
wire  w_12425_8b;
wire  w_12428_8b;
wire  w_12429_8b;
wire  w_12430_16b;
wire  w_12431_16b;
wire  w_12432_16b;
wire  w_12435_8b;
wire  w_12436_8b;
wire  w_12437_8b;
wire  w_12440_8b;
wire  w_12441_8b;
wire  w_12442_16b;
wire  w_12443_16b;
wire  w_12444_16b;
wire  w_12447_8b;
wire  w_12448_8b;
wire  w_12449_8b;
wire  w_1245_8b;
wire  w_12452_8b;
wire  w_12453_8b;
wire  w_12454_16b;
wire  w_12455_16b;
wire  w_12456_16b;
wire  w_12459_8b;
wire  w_1246_8b;
wire  w_12460_8b;
wire  w_12461_8b;
wire  w_12464_8b;
wire  w_12465_8b;
wire  w_12466_16b;
wire  w_12467_16b;
wire  w_12468_16b;
wire  w_1247_16b;
wire  w_12471_8b;
wire  w_12472_8b;
wire  w_12473_8b;
wire  w_12476_8b;
wire  w_12477_8b;
wire  w_12478_16b;
wire  w_12479_16b;
wire  w_1248_16b;
wire  w_12480_16b;
wire  w_12483_8b;
wire  w_12484_8b;
wire  w_12485_8b;
wire  w_12488_8b;
wire  w_12489_8b;
wire  w_1249_16b;
wire  w_12490_16b;
wire  w_12491_16b;
wire  w_12492_16b;
wire  w_12495_8b;
wire  w_12496_8b;
wire  w_12497_8b;
wire  w_12500_8b;
wire  w_12501_8b;
wire  w_12502_16b;
wire  w_12503_16b;
wire  w_12504_16b;
wire  w_12507_8b;
wire  w_12508_8b;
wire  w_12509_8b;
wire  w_12512_8b;
wire  w_12513_8b;
wire  w_12514_16b;
wire  w_12515_16b;
wire  w_12516_16b;
wire  w_12519_8b;
wire  w_1252_8b;
wire  w_12520_8b;
wire  w_12521_8b;
wire  w_12524_8b;
wire  w_12525_8b;
wire  w_12526_16b;
wire  w_12527_16b;
wire  w_12528_16b;
wire  w_1253_8b;
wire  w_12531_8b;
wire  w_12532_8b;
wire  w_12533_8b;
wire  w_12536_8b;
wire  w_12537_8b;
wire  w_12538_16b;
wire  w_12539_16b;
wire  w_1254_8b;
wire  w_12540_16b;
wire  w_12543_8b;
wire  w_12544_8b;
wire  w_12545_8b;
wire  w_12548_8b;
wire  w_12549_8b;
wire  w_12550_16b;
wire  w_12551_16b;
wire  w_12552_16b;
wire  w_12555_8b;
wire  w_12556_8b;
wire  w_12557_8b;
wire  w_12560_8b;
wire  w_12561_8b;
wire  w_12562_16b;
wire  w_12563_16b;
wire  w_12564_16b;
wire  w_12567_8b;
wire  w_12568_8b;
wire  w_12569_8b;
wire  w_1257_8b;
wire  w_12572_8b;
wire  w_12573_8b;
wire  w_12574_16b;
wire  w_12575_16b;
wire  w_12576_16b;
wire  w_12579_8b;
wire  w_1258_8b;
wire  w_12580_8b;
wire  w_12581_8b;
wire  w_12584_8b;
wire  w_12585_8b;
wire  w_12586_16b;
wire  w_12587_16b;
wire  w_12588_16b;
wire  w_1259_16b;
wire  w_12591_8b;
wire  w_12592_8b;
wire  w_12593_8b;
wire  w_12596_8b;
wire  w_12597_8b;
wire  w_12598_16b;
wire  w_12599_16b;
wire  w_1260_16b;
wire  w_12600_16b;
wire  w_12603_8b;
wire  w_12604_8b;
wire  w_12605_8b;
wire  w_12608_8b;
wire  w_12609_8b;
wire  w_1261_16b;
wire  w_12610_16b;
wire  w_12611_16b;
wire  w_12612_16b;
wire  w_12615_8b;
wire  w_12616_8b;
wire  w_12617_8b;
wire  w_12620_8b;
wire  w_12621_8b;
wire  w_12622_16b;
wire  w_12623_16b;
wire  w_12624_16b;
wire  w_12627_8b;
wire  w_12628_8b;
wire  w_12629_8b;
wire  w_12632_8b;
wire  w_12633_8b;
wire  w_12634_16b;
wire  w_12635_16b;
wire  w_12636_16b;
wire  w_12639_8b;
wire  w_1264_8b;
wire  w_12640_8b;
wire  w_12641_8b;
wire  w_12644_8b;
wire  w_12645_8b;
wire  w_12646_16b;
wire  w_12647_16b;
wire  w_12648_16b;
wire  w_1265_8b;
wire  w_12651_8b;
wire  w_12652_8b;
wire  w_12653_8b;
wire  w_12656_8b;
wire  w_12657_8b;
wire  w_12658_16b;
wire  w_12659_16b;
wire  w_1266_8b;
wire  w_12660_16b;
wire  w_12663_8b;
wire  w_12664_8b;
wire  w_12665_8b;
wire  w_12668_8b;
wire  w_12669_8b;
wire  w_12670_16b;
wire  w_12671_16b;
wire  w_12672_16b;
wire  w_12675_8b;
wire  w_12676_8b;
wire  w_12677_8b;
wire  w_12680_8b;
wire  w_12681_8b;
wire  w_12682_16b;
wire  w_12683_16b;
wire  w_12684_16b;
wire  w_12687_8b;
wire  w_12688_8b;
wire  w_12689_8b;
wire  w_1269_8b;
wire  w_12692_8b;
wire  w_12693_8b;
wire  w_12694_16b;
wire  w_12695_16b;
wire  w_12696_16b;
wire  w_12699_8b;
wire  w_1270_8b;
wire  w_12700_8b;
wire  w_12701_8b;
wire  w_12704_8b;
wire  w_12705_8b;
wire  w_12706_16b;
wire  w_12707_16b;
wire  w_12708_16b;
wire  w_1271_16b;
wire  w_12711_8b;
wire  w_12712_8b;
wire  w_12713_8b;
wire  w_12716_8b;
wire  w_12717_8b;
wire  w_12718_16b;
wire  w_12719_16b;
wire  w_1272_16b;
wire  w_12720_16b;
wire  w_12723_8b;
wire  w_12724_8b;
wire  w_12725_8b;
wire  w_12728_8b;
wire  w_12729_8b;
wire  w_1273_16b;
wire  w_12730_16b;
wire  w_12731_16b;
wire  w_12732_16b;
wire  w_12735_8b;
wire  w_12736_8b;
wire  w_12737_8b;
wire  w_12740_8b;
wire  w_12741_8b;
wire  w_12742_16b;
wire  w_12743_16b;
wire  w_12744_16b;
wire  w_12747_8b;
wire  w_12748_8b;
wire  w_12749_8b;
wire  w_12752_8b;
wire  w_12753_8b;
wire  w_12754_16b;
wire  w_12755_16b;
wire  w_12756_16b;
wire  w_12759_8b;
wire  w_1276_8b;
wire  w_12760_8b;
wire  w_12761_8b;
wire  w_12764_8b;
wire  w_12765_8b;
wire  w_12766_16b;
wire  w_12767_16b;
wire  w_12768_16b;
wire  w_1277_8b;
wire  w_12771_8b;
wire  w_12772_8b;
wire  w_12773_8b;
wire  w_12776_8b;
wire  w_12777_8b;
wire  w_12778_16b;
wire  w_12779_16b;
wire  w_1278_8b;
wire  w_12780_16b;
wire  w_12783_8b;
wire  w_12784_8b;
wire  w_12785_8b;
wire  w_12788_8b;
wire  w_12789_8b;
wire  w_12790_16b;
wire  w_12791_16b;
wire  w_12792_16b;
wire  w_12795_8b;
wire  w_12796_8b;
wire  w_12797_8b;
wire  w_12800_8b;
wire  w_12801_8b;
wire  w_12802_16b;
wire  w_12803_16b;
wire  w_12804_16b;
wire  w_12807_8b;
wire  w_12808_8b;
wire  w_12809_8b;
wire  w_1281_8b;
wire  w_12812_8b;
wire  w_12813_8b;
wire  w_12814_16b;
wire  w_12815_16b;
wire  w_12816_16b;
wire  w_12819_8b;
wire  w_1282_8b;
wire  w_12820_8b;
wire  w_12821_8b;
wire  w_12824_8b;
wire  w_12825_8b;
wire  w_12826_16b;
wire  w_12827_16b;
wire  w_12828_16b;
wire  w_1283_16b;
wire  w_12831_8b;
wire  w_12832_8b;
wire  w_12833_8b;
wire  w_12836_8b;
wire  w_12837_8b;
wire  w_12838_16b;
wire  w_12839_16b;
wire  w_1284_16b;
wire  w_12840_16b;
wire  w_12843_8b;
wire  w_12844_8b;
wire  w_12845_8b;
wire  w_12848_8b;
wire  w_12849_8b;
wire  w_1285_16b;
wire  w_12850_16b;
wire  w_12851_16b;
wire  w_12852_16b;
wire  w_12855_8b;
wire  w_12856_8b;
wire  w_12857_8b;
wire  w_12860_8b;
wire  w_12861_8b;
wire  w_12862_16b;
wire  w_12863_16b;
wire  w_12864_16b;
wire  w_12867_8b;
wire  w_12868_8b;
wire  w_12869_8b;
wire  w_12872_8b;
wire  w_12873_8b;
wire  w_12874_16b;
wire  w_12875_16b;
wire  w_12876_16b;
wire  w_12879_8b;
wire  w_1288_8b;
wire  w_12880_8b;
wire  w_12881_8b;
wire  w_12884_8b;
wire  w_12885_8b;
wire  w_12886_16b;
wire  w_12887_16b;
wire  w_12888_16b;
wire  w_1289_8b;
wire  w_12891_8b;
wire  w_12892_8b;
wire  w_12893_8b;
wire  w_12896_8b;
wire  w_12897_8b;
wire  w_12898_16b;
wire  w_12899_16b;
wire  w_1290_8b;
wire  w_12900_16b;
wire  w_12903_8b;
wire  w_12904_8b;
wire  w_12905_8b;
wire  w_12908_8b;
wire  w_12909_8b;
wire  w_12910_16b;
wire  w_12911_16b;
wire  w_12912_16b;
wire  w_12915_8b;
wire  w_12916_8b;
wire  w_12917_8b;
wire  w_12920_8b;
wire  w_12921_8b;
wire  w_12922_16b;
wire  w_12923_16b;
wire  w_12924_16b;
wire  w_12927_8b;
wire  w_12928_8b;
wire  w_12929_8b;
wire  w_1293_8b;
wire  w_12932_8b;
wire  w_12933_8b;
wire  w_12934_16b;
wire  w_12935_16b;
wire  w_12936_16b;
wire  w_12937_8b;
wire  w_12938_8b;
wire  w_12939_16b;
wire  w_1294_8b;
wire  w_12940_16b;
wire  w_12941_1b;
wire  w_12942_8b;
wire  w_12943_16b;
wire  w_12944_16b;
wire  w_12945_16b;
wire  w_12946_8b;
wire  w_12947_8b;
wire  w_12948_16b;
wire  w_12949_16b;
wire  w_1295_16b;
wire  w_12950_1b;
wire  w_12951_8b;
wire  w_12952_16b;
wire  w_12953_16b;
wire  w_12954_16b;
wire  w_12955_8b;
wire  w_12956_8b;
wire  w_12957_16b;
wire  w_12958_16b;
wire  w_12959_1b;
wire  w_1296_16b;
wire  w_12960_8b;
wire  w_12961_16b;
wire  w_12962_16b;
wire  w_12963_16b;
wire  w_12964_8b;
wire  w_12965_8b;
wire  w_12966_16b;
wire  w_12967_16b;
wire  w_12968_1b;
wire  w_12969_8b;
wire  w_1297_16b;
wire  w_12970_16b;
wire  w_12971_16b;
wire  w_12972_16b;
wire  w_12973_8b;
wire  w_12974_8b;
wire  w_12975_16b;
wire  w_12976_16b;
wire  w_12977_1b;
wire  w_12978_8b;
wire  w_12979_16b;
wire  w_12980_16b;
wire  w_12981_16b;
wire  w_12982_8b;
wire  w_12983_8b;
wire  w_12984_16b;
wire  w_12985_16b;
wire  w_12986_1b;
wire  w_12987_8b;
wire  w_12988_16b;
wire  w_12989_16b;
wire  w_12990_16b;
wire  w_12991_8b;
wire  w_12992_8b;
wire  w_12993_16b;
wire  w_12994_16b;
wire  w_12995_1b;
wire  w_12996_8b;
wire  w_12997_16b;
wire  w_12998_16b;
wire  w_12999_16b;
wire  w_1300_8b;
wire  w_13000_8b;
wire  w_13001_8b;
wire  w_13002_16b;
wire  w_13003_16b;
wire  w_13004_1b;
wire  w_13005_8b;
wire  w_13006_16b;
wire  w_13007_16b;
wire  w_13008_16b;
wire  w_13009_8b;
wire  w_1301_8b;
wire  w_13010_8b;
wire  w_13011_16b;
wire  w_13012_16b;
wire  w_13013_1b;
wire  w_13014_8b;
wire  w_13015_16b;
wire  w_13016_16b;
wire  w_13017_16b;
wire  w_13018_8b;
wire  w_13019_8b;
wire  w_1302_8b;
wire  w_13020_16b;
wire  w_13021_16b;
wire  w_13022_1b;
wire  w_13023_8b;
wire  w_13024_16b;
wire  w_13025_16b;
wire  w_13026_16b;
wire  w_13027_8b;
wire  w_13028_8b;
wire  w_13029_16b;
wire  w_13030_16b;
wire  w_13031_1b;
wire  w_13032_8b;
wire  w_13033_16b;
wire  w_13034_16b;
wire  w_13035_16b;
wire  w_13036_8b;
wire  w_13037_8b;
wire  w_13038_16b;
wire  w_13039_16b;
wire  w_13040_1b;
wire  w_13041_8b;
wire  w_13042_16b;
wire  w_13043_16b;
wire  w_13044_16b;
wire  w_13045_8b;
wire  w_13046_8b;
wire  w_13047_16b;
wire  w_13048_16b;
wire  w_13049_1b;
wire  w_1305_8b;
wire  w_13050_8b;
wire  w_13051_16b;
wire  w_13052_16b;
wire  w_13053_16b;
wire  w_13054_8b;
wire  w_13055_8b;
wire  w_13056_16b;
wire  w_13057_16b;
wire  w_13058_1b;
wire  w_13059_8b;
wire  w_1306_8b;
wire  w_13060_16b;
wire  w_13061_16b;
wire  w_13062_16b;
wire  w_13063_8b;
wire  w_13064_8b;
wire  w_13065_16b;
wire  w_13066_16b;
wire  w_13067_1b;
wire  w_13068_8b;
wire  w_13069_16b;
wire  w_1307_16b;
wire  w_13070_16b;
wire  w_13071_16b;
wire  w_13072_8b;
wire  w_13073_8b;
wire  w_13074_16b;
wire  w_13075_16b;
wire  w_13076_1b;
wire  w_13077_8b;
wire  w_13078_16b;
wire  w_13079_8b;
wire  w_1308_16b;
wire  w_13080_8b;
wire  w_13081_16b;
wire  w_13082_16b;
wire  w_13083_1b;
wire  w_13084_8b;
wire  w_13085_16b;
wire  w_13086_8b;
wire  w_13087_8b;
wire  w_13088_16b;
wire  w_13089_16b;
wire  w_1309_16b;
wire  w_13090_1b;
wire  w_13091_8b;
wire  w_13092_16b;
wire  w_13093_8b;
wire  w_13094_8b;
wire  w_13095_16b;
wire  w_13096_16b;
wire  w_13097_1b;
wire  w_13098_8b;
wire  w_13099_16b;
wire  w_13100_8b;
wire  w_13101_8b;
wire  w_13102_16b;
wire  w_13103_16b;
wire  w_13104_1b;
wire  w_13105_8b;
wire  w_13108_8b;
wire  w_13109_16b;
wire  w_13110_16b;
wire  w_13111_16b;
wire  w_13112_16b;
wire  w_13113_8b;
wire  w_1312_8b;
wire  w_1313_8b;
wire  w_1314_8b;
wire  w_1317_8b;
wire  w_1318_8b;
wire  w_1319_16b;
wire  w_1320_16b;
wire  w_1321_16b;
wire  w_1323_8b;
wire  w_1324_8b;
wire  w_1325_8b;
wire  w_1328_8b;
wire  w_1329_8b;
wire  w_1330_16b;
wire  w_1331_16b;
wire  w_1332_16b;
wire  w_1335_8b;
wire  w_1336_8b;
wire  w_1337_8b;
wire  w_1340_8b;
wire  w_1341_8b;
wire  w_1342_16b;
wire  w_1343_16b;
wire  w_1344_16b;
wire  w_1347_8b;
wire  w_1348_8b;
wire  w_1349_8b;
wire  w_1352_8b;
wire  w_1353_8b;
wire  w_1354_16b;
wire  w_1355_16b;
wire  w_1356_16b;
wire  w_1359_8b;
wire  w_1360_8b;
wire  w_1361_8b;
wire  w_1364_8b;
wire  w_1365_8b;
wire  w_1366_16b;
wire  w_1367_16b;
wire  w_1368_16b;
wire  w_1371_8b;
wire  w_1372_8b;
wire  w_1373_8b;
wire  w_1376_8b;
wire  w_1377_8b;
wire  w_1378_16b;
wire  w_1379_16b;
wire  w_1380_16b;
wire  w_1383_8b;
wire  w_1384_8b;
wire  w_1385_8b;
wire  w_1388_8b;
wire  w_1389_8b;
wire  w_1390_16b;
wire  w_1391_16b;
wire  w_1392_16b;
wire  w_1395_8b;
wire  w_1396_8b;
wire  w_1397_8b;
wire  w_1400_8b;
wire  w_1401_8b;
wire  w_1402_16b;
wire  w_1403_16b;
wire  w_1404_16b;
wire  w_1407_8b;
wire  w_1408_8b;
wire  w_1409_8b;
wire  w_1412_8b;
wire  w_1413_8b;
wire  w_1414_16b;
wire  w_1415_16b;
wire  w_1416_16b;
wire  w_1419_8b;
wire  w_1420_8b;
wire  w_1421_8b;
wire  w_1424_8b;
wire  w_1425_8b;
wire  w_1426_16b;
wire  w_1427_16b;
wire  w_1428_16b;
wire  w_1431_8b;
wire  w_1432_8b;
wire  w_1433_8b;
wire  w_1436_8b;
wire  w_1437_8b;
wire  w_1438_16b;
wire  w_1439_16b;
wire  w_1440_16b;
wire  w_1443_8b;
wire  w_1444_8b;
wire  w_1445_8b;
wire  w_1448_8b;
wire  w_1449_8b;
wire  w_1450_16b;
wire  w_1451_16b;
wire  w_1452_16b;
wire  w_1455_8b;
wire  w_1456_8b;
wire  w_1457_8b;
wire  w_1460_8b;
wire  w_1461_8b;
wire  w_1462_16b;
wire  w_1463_16b;
wire  w_1464_16b;
wire  w_1467_8b;
wire  w_1468_8b;
wire  w_1469_8b;
wire  w_1472_8b;
wire  w_1473_8b;
wire  w_1474_16b;
wire  w_1475_16b;
wire  w_1476_16b;
wire  w_1479_8b;
wire  w_1480_8b;
wire  w_1481_8b;
wire  w_1484_8b;
wire  w_1485_8b;
wire  w_1486_16b;
wire  w_1487_16b;
wire  w_1488_16b;
wire  w_1491_8b;
wire  w_1492_8b;
wire  w_1493_8b;
wire  w_1496_8b;
wire  w_1497_8b;
wire  w_1498_16b;
wire  w_1499_16b;
wire  w_1500_16b;
wire  w_1503_8b;
wire  w_1504_8b;
wire  w_1505_8b;
wire  w_1508_8b;
wire  w_1509_8b;
wire  w_1510_16b;
wire  w_1511_16b;
wire  w_1512_16b;
wire  w_1515_8b;
wire  w_1516_8b;
wire  w_1517_8b;
wire  w_1520_8b;
wire  w_1521_8b;
wire  w_1522_16b;
wire  w_1523_16b;
wire  w_1524_16b;
wire  w_1527_8b;
wire  w_1528_8b;
wire  w_1529_8b;
wire  w_1532_8b;
wire  w_1533_8b;
wire  w_1534_16b;
wire  w_1535_16b;
wire  w_1536_16b;
wire  w_1539_8b;
wire  w_1540_8b;
wire  w_1541_8b;
wire  w_1544_8b;
wire  w_1545_8b;
wire  w_1546_16b;
wire  w_1547_16b;
wire  w_1548_16b;
wire  w_1551_8b;
wire  w_1552_8b;
wire  w_1553_8b;
wire  w_1556_8b;
wire  w_1557_8b;
wire  w_1558_16b;
wire  w_1559_16b;
wire  w_1560_16b;
wire  w_1563_8b;
wire  w_1564_8b;
wire  w_1565_8b;
wire  w_1568_8b;
wire  w_1569_8b;
wire  w_1570_16b;
wire  w_1571_16b;
wire  w_1572_16b;
wire  w_1575_8b;
wire  w_1576_8b;
wire  w_1577_8b;
wire  w_1580_8b;
wire  w_1581_8b;
wire  w_1582_16b;
wire  w_1583_16b;
wire  w_1584_16b;
wire  w_1587_8b;
wire  w_1588_8b;
wire  w_1589_8b;
wire  w_1592_8b;
wire  w_1593_8b;
wire  w_1594_16b;
wire  w_1595_16b;
wire  w_1596_16b;
wire  w_1599_8b;
wire  w_1600_8b;
wire  w_1601_8b;
wire  w_1604_8b;
wire  w_1605_8b;
wire  w_1606_16b;
wire  w_1607_16b;
wire  w_1608_16b;
wire  w_1611_8b;
wire  w_1612_8b;
wire  w_1613_8b;
wire  w_1616_8b;
wire  w_1617_8b;
wire  w_1618_16b;
wire  w_1619_16b;
wire  w_1620_16b;
wire  w_1623_8b;
wire  w_1624_8b;
wire  w_1625_8b;
wire  w_1628_8b;
wire  w_1629_8b;
wire  w_1630_16b;
wire  w_1631_16b;
wire  w_1632_16b;
wire  w_1635_8b;
wire  w_1636_8b;
wire  w_1637_8b;
wire  w_1640_8b;
wire  w_1641_8b;
wire  w_1642_16b;
wire  w_1643_16b;
wire  w_1644_16b;
wire  w_1647_8b;
wire  w_1648_8b;
wire  w_1649_8b;
wire  w_1652_8b;
wire  w_1653_8b;
wire  w_1654_16b;
wire  w_1655_16b;
wire  w_1656_16b;
wire  w_1659_8b;
wire  w_1660_8b;
wire  w_1661_8b;
wire  w_1664_8b;
wire  w_1665_8b;
wire  w_1666_16b;
wire  w_1667_16b;
wire  w_1668_16b;
wire  w_1671_8b;
wire  w_1672_8b;
wire  w_1673_8b;
wire  w_1676_8b;
wire  w_1677_8b;
wire  w_1678_16b;
wire  w_1679_16b;
wire  w_1680_16b;
wire  w_1683_8b;
wire  w_1684_8b;
wire  w_1685_8b;
wire  w_1688_8b;
wire  w_1689_8b;
wire  w_1690_16b;
wire  w_1691_16b;
wire  w_1692_16b;
wire  w_1695_8b;
wire  w_1696_8b;
wire  w_1697_8b;
wire  w_1700_8b;
wire  w_1701_8b;
wire  w_1702_16b;
wire  w_1703_16b;
wire  w_1704_16b;
wire  w_1707_8b;
wire  w_1708_8b;
wire  w_1709_8b;
wire  w_1712_8b;
wire  w_1713_8b;
wire  w_1714_16b;
wire  w_1715_16b;
wire  w_1716_16b;
wire  w_1719_8b;
wire  w_1720_8b;
wire  w_1721_8b;
wire  w_1724_8b;
wire  w_1725_8b;
wire  w_1726_16b;
wire  w_1727_16b;
wire  w_1728_16b;
wire  w_1731_8b;
wire  w_1732_8b;
wire  w_1733_8b;
wire  w_1736_8b;
wire  w_1737_8b;
wire  w_1738_16b;
wire  w_1739_16b;
wire  w_1740_16b;
wire  w_1743_8b;
wire  w_1744_8b;
wire  w_1745_8b;
wire  w_1748_8b;
wire  w_1749_8b;
wire  w_1750_16b;
wire  w_1751_16b;
wire  w_1752_16b;
wire  w_1755_8b;
wire  w_1756_8b;
wire  w_1757_8b;
wire  w_1760_8b;
wire  w_1761_8b;
wire  w_1762_16b;
wire  w_1763_16b;
wire  w_1764_16b;
wire  w_1767_8b;
wire  w_1768_8b;
wire  w_1769_8b;
wire  w_1772_8b;
wire  w_1773_8b;
wire  w_1774_16b;
wire  w_1775_16b;
wire  w_1776_16b;
wire  w_1779_8b;
wire  w_1780_8b;
wire  w_1781_8b;
wire  w_1784_8b;
wire  w_1785_8b;
wire  w_1786_16b;
wire  w_1787_16b;
wire  w_1788_16b;
wire  w_1791_8b;
wire  w_1792_8b;
wire  w_1793_8b;
wire  w_1796_8b;
wire  w_1797_8b;
wire  w_1798_16b;
wire  w_1799_16b;
wire  w_1800_16b;
wire  w_1803_8b;
wire  w_1804_8b;
wire  w_1805_8b;
wire  w_1808_8b;
wire  w_1809_8b;
wire  w_1810_16b;
wire  w_1811_16b;
wire  w_1812_16b;
wire  w_1815_8b;
wire  w_1816_8b;
wire  w_1817_8b;
wire  w_1820_8b;
wire  w_1821_8b;
wire  w_1822_16b;
wire  w_1823_16b;
wire  w_1824_16b;
wire  w_1827_8b;
wire  w_1828_8b;
wire  w_1829_8b;
wire  w_1832_8b;
wire  w_1833_8b;
wire  w_1834_16b;
wire  w_1835_16b;
wire  w_1836_16b;
wire  w_1839_8b;
wire  w_1840_8b;
wire  w_1841_8b;
wire  w_1844_8b;
wire  w_1845_8b;
wire  w_1846_16b;
wire  w_1847_16b;
wire  w_1848_16b;
wire  w_1851_8b;
wire  w_1852_8b;
wire  w_1853_8b;
wire  w_1856_8b;
wire  w_1857_8b;
wire  w_1858_16b;
wire  w_1859_16b;
wire  w_1860_16b;
wire  w_1863_8b;
wire  w_1864_8b;
wire  w_1865_8b;
wire  w_1868_8b;
wire  w_1869_8b;
wire  w_1870_16b;
wire  w_1871_16b;
wire  w_1872_16b;
wire  w_1875_8b;
wire  w_1876_8b;
wire  w_1877_8b;
wire  w_1880_8b;
wire  w_1881_8b;
wire  w_1882_16b;
wire  w_1883_16b;
wire  w_1884_16b;
wire  w_1887_8b;
wire  w_1888_8b;
wire  w_1889_8b;
wire  w_1892_8b;
wire  w_1893_8b;
wire  w_1894_16b;
wire  w_1895_16b;
wire  w_1896_16b;
wire  w_1899_8b;
wire  w_1900_8b;
wire  w_1901_8b;
wire  w_1904_8b;
wire  w_1905_8b;
wire  w_1906_16b;
wire  w_1907_16b;
wire  w_1908_16b;
wire  w_1911_8b;
wire  w_1912_8b;
wire  w_1913_8b;
wire  w_1916_8b;
wire  w_1917_8b;
wire  w_1918_16b;
wire  w_1919_16b;
wire  w_1920_16b;
wire  w_1923_8b;
wire  w_1924_8b;
wire  w_1925_8b;
wire  w_1928_8b;
wire  w_1929_8b;
wire  w_1930_16b;
wire  w_1931_16b;
wire  w_1932_16b;
wire  w_1935_8b;
wire  w_1936_8b;
wire  w_1937_8b;
wire  w_1940_8b;
wire  w_1941_8b;
wire  w_1942_16b;
wire  w_1943_16b;
wire  w_1944_16b;
wire  w_1947_8b;
wire  w_1948_8b;
wire  w_1949_8b;
wire  w_1952_8b;
wire  w_1953_8b;
wire  w_1954_16b;
wire  w_1955_16b;
wire  w_1956_16b;
wire  w_1959_8b;
wire  w_1960_8b;
wire  w_1961_8b;
wire  w_1964_8b;
wire  w_1965_8b;
wire  w_1966_16b;
wire  w_1967_16b;
wire  w_1968_16b;
wire  w_1971_8b;
wire  w_1972_8b;
wire  w_1973_8b;
wire  w_1976_8b;
wire  w_1977_8b;
wire  w_1978_16b;
wire  w_1979_16b;
wire  w_1980_16b;
wire  w_1983_8b;
wire  w_1984_8b;
wire  w_1985_8b;
wire  w_1988_8b;
wire  w_1989_8b;
wire  w_1990_16b;
wire  w_1991_16b;
wire  w_1992_16b;
wire  w_1995_8b;
wire  w_1996_8b;
wire  w_1997_8b;
wire  w_2000_8b;
wire  w_2001_8b;
wire  w_2002_16b;
wire  w_2003_16b;
wire  w_2004_16b;
wire  w_2007_8b;
wire  w_2008_8b;
wire  w_2009_8b;
wire  w_2012_8b;
wire  w_2013_8b;
wire  w_2014_16b;
wire  w_2015_16b;
wire  w_2016_16b;
wire  w_2019_8b;
wire  w_2020_8b;
wire  w_2021_8b;
wire  w_2024_8b;
wire  w_2025_8b;
wire  w_2026_16b;
wire  w_2027_16b;
wire  w_2028_16b;
wire  w_2031_8b;
wire  w_2032_8b;
wire  w_2033_8b;
wire  w_2036_8b;
wire  w_2037_8b;
wire  w_2038_16b;
wire  w_2039_16b;
wire  w_2040_16b;
wire  w_2043_8b;
wire  w_2044_8b;
wire  w_2045_8b;
wire  w_2048_8b;
wire  w_2049_8b;
wire  w_2050_16b;
wire  w_2051_16b;
wire  w_2052_16b;
wire  w_2055_8b;
wire  w_2056_8b;
wire  w_2057_8b;
wire  w_2060_8b;
wire  w_2061_8b;
wire  w_2062_16b;
wire  w_2063_16b;
wire  w_2064_16b;
wire  w_2067_8b;
wire  w_2068_8b;
wire  w_2069_8b;
wire  w_2072_8b;
wire  w_2073_8b;
wire  w_2074_16b;
wire  w_2075_16b;
wire  w_2076_16b;
wire  w_2079_8b;
wire  w_2080_8b;
wire  w_2081_8b;
wire  w_2084_8b;
wire  w_2085_8b;
wire  w_2086_16b;
wire  w_2087_16b;
wire  w_2088_16b;
wire  w_2091_8b;
wire  w_2092_8b;
wire  w_2093_8b;
wire  w_2096_8b;
wire  w_2097_8b;
wire  w_2098_16b;
wire  w_2099_16b;
wire  w_2100_16b;
wire  w_2103_8b;
wire  w_2104_8b;
wire  w_2105_8b;
wire  w_2108_8b;
wire  w_2109_8b;
wire  w_2110_16b;
wire  w_2111_16b;
wire  w_2112_16b;
wire  w_2115_8b;
wire  w_2116_8b;
wire  w_2117_8b;
wire  w_2120_8b;
wire  w_2121_8b;
wire  w_2122_16b;
wire  w_2123_16b;
wire  w_2124_16b;
wire  w_2127_8b;
wire  w_2128_8b;
wire  w_2129_8b;
wire  w_2132_8b;
wire  w_2133_8b;
wire  w_2134_16b;
wire  w_2135_16b;
wire  w_2136_16b;
wire  w_2139_8b;
wire  w_2140_8b;
wire  w_2141_8b;
wire  w_2144_8b;
wire  w_2145_8b;
wire  w_2146_16b;
wire  w_2147_16b;
wire  w_2148_16b;
wire  w_2151_8b;
wire  w_2152_8b;
wire  w_2153_8b;
wire  w_2156_8b;
wire  w_2157_8b;
wire  w_2158_16b;
wire  w_2159_16b;
wire  w_2160_16b;
wire  w_2163_8b;
wire  w_2164_8b;
wire  w_2165_8b;
wire  w_2168_8b;
wire  w_2169_8b;
wire  w_2170_16b;
wire  w_2171_16b;
wire  w_2172_16b;
wire  w_2175_8b;
wire  w_2176_8b;
wire  w_2177_8b;
wire  w_2180_8b;
wire  w_2181_8b;
wire  w_2182_16b;
wire  w_2183_16b;
wire  w_2184_16b;
wire  w_2187_8b;
wire  w_2188_8b;
wire  w_2189_8b;
wire  w_2192_8b;
wire  w_2193_8b;
wire  w_2194_16b;
wire  w_2195_16b;
wire  w_2196_16b;
wire  w_2199_8b;
wire  w_2200_8b;
wire  w_2201_8b;
wire  w_2204_8b;
wire  w_2205_8b;
wire  w_2206_16b;
wire  w_2207_16b;
wire  w_2208_16b;
wire  w_2211_8b;
wire  w_2212_8b;
wire  w_2213_8b;
wire  w_2216_8b;
wire  w_2217_8b;
wire  w_2218_16b;
wire  w_2219_16b;
wire  w_2220_16b;
wire  w_2223_8b;
wire  w_2224_8b;
wire  w_2225_8b;
wire  w_2228_8b;
wire  w_2229_8b;
wire  w_2230_16b;
wire  w_2231_16b;
wire  w_2232_16b;
wire  w_2235_8b;
wire  w_2236_8b;
wire  w_2237_8b;
wire  w_2240_8b;
wire  w_2241_8b;
wire  w_2242_16b;
wire  w_2243_16b;
wire  w_2244_16b;
wire  w_2247_8b;
wire  w_2248_8b;
wire  w_2249_8b;
wire  w_2252_8b;
wire  w_2253_8b;
wire  w_2254_16b;
wire  w_2255_16b;
wire  w_2256_16b;
wire  w_2259_8b;
wire  w_2260_8b;
wire  w_2261_8b;
wire  w_2264_8b;
wire  w_2265_8b;
wire  w_2266_16b;
wire  w_2267_16b;
wire  w_2268_16b;
wire  w_2271_8b;
wire  w_2272_8b;
wire  w_2273_8b;
wire  w_2276_8b;
wire  w_2277_8b;
wire  w_2278_16b;
wire  w_2279_16b;
wire  w_2280_16b;
wire  w_2283_8b;
wire  w_2284_8b;
wire  w_2285_8b;
wire  w_2288_8b;
wire  w_2289_8b;
wire  w_2290_16b;
wire  w_2291_16b;
wire  w_2292_16b;
wire  w_2295_8b;
wire  w_2296_8b;
wire  w_2297_8b;
wire  w_2300_8b;
wire  w_2301_8b;
wire  w_2302_16b;
wire  w_2303_16b;
wire  w_2304_16b;
wire  w_2307_8b;
wire  w_2308_8b;
wire  w_2309_8b;
wire  w_2312_8b;
wire  w_2313_8b;
wire  w_2314_16b;
wire  w_2315_16b;
wire  w_2316_16b;
wire  w_2319_8b;
wire  w_2320_8b;
wire  w_2321_8b;
wire  w_2324_8b;
wire  w_2325_8b;
wire  w_2326_16b;
wire  w_2327_16b;
wire  w_2328_16b;
wire  w_2331_8b;
wire  w_2332_8b;
wire  w_2333_8b;
wire  w_2336_8b;
wire  w_2337_8b;
wire  w_2338_16b;
wire  w_2339_16b;
wire  w_2340_16b;
wire  w_2343_8b;
wire  w_2344_8b;
wire  w_2345_8b;
wire  w_2348_8b;
wire  w_2349_8b;
wire  w_2350_16b;
wire  w_2351_16b;
wire  w_2352_16b;
wire  w_2355_8b;
wire  w_2356_8b;
wire  w_2357_8b;
wire  w_2360_8b;
wire  w_2361_8b;
wire  w_2362_16b;
wire  w_2363_16b;
wire  w_2364_16b;
wire  w_2367_8b;
wire  w_2368_8b;
wire  w_2369_8b;
wire  w_2372_8b;
wire  w_2373_8b;
wire  w_2374_16b;
wire  w_2375_16b;
wire  w_2376_16b;
wire  w_2379_8b;
wire  w_2380_8b;
wire  w_2381_8b;
wire  w_2384_8b;
wire  w_2385_8b;
wire  w_2386_16b;
wire  w_2387_16b;
wire  w_2388_16b;
wire  w_2391_8b;
wire  w_2392_8b;
wire  w_2393_8b;
wire  w_2396_8b;
wire  w_2397_8b;
wire  w_2398_16b;
wire  w_2399_16b;
wire  w_2400_16b;
wire  w_2403_8b;
wire  w_2404_8b;
wire  w_2405_8b;
wire  w_2408_8b;
wire  w_2409_8b;
wire  w_2410_16b;
wire  w_2411_16b;
wire  w_2412_16b;
wire  w_2415_8b;
wire  w_2416_8b;
wire  w_2417_8b;
wire  w_2420_8b;
wire  w_2421_8b;
wire  w_2422_16b;
wire  w_2423_16b;
wire  w_2424_16b;
wire  w_2427_8b;
wire  w_2428_8b;
wire  w_2429_8b;
wire  w_2432_8b;
wire  w_2433_8b;
wire  w_2434_16b;
wire  w_2435_16b;
wire  w_2436_16b;
wire  w_2439_8b;
wire  w_2440_8b;
wire  w_2441_8b;
wire  w_2444_8b;
wire  w_2445_8b;
wire  w_2446_16b;
wire  w_2447_16b;
wire  w_2448_16b;
wire  w_2451_8b;
wire  w_2452_8b;
wire  w_2453_8b;
wire  w_2456_8b;
wire  w_2457_8b;
wire  w_2458_16b;
wire  w_2459_16b;
wire  w_2460_16b;
wire  w_2463_8b;
wire  w_2464_8b;
wire  w_2465_8b;
wire  w_2468_8b;
wire  w_2469_8b;
wire  w_2470_16b;
wire  w_2471_16b;
wire  w_2472_16b;
wire  w_2475_8b;
wire  w_2476_8b;
wire  w_2477_8b;
wire  w_2480_8b;
wire  w_2481_8b;
wire  w_2482_16b;
wire  w_2483_16b;
wire  w_2484_16b;
wire  w_2487_8b;
wire  w_2488_8b;
wire  w_2489_8b;
wire  w_2492_8b;
wire  w_2493_8b;
wire  w_2494_16b;
wire  w_2495_16b;
wire  w_2496_16b;
wire  w_2499_8b;
wire  w_2500_8b;
wire  w_2501_8b;
wire  w_2504_8b;
wire  w_2505_8b;
wire  w_2506_16b;
wire  w_2507_16b;
wire  w_2508_16b;
wire  w_2511_8b;
wire  w_2512_8b;
wire  w_2513_8b;
wire  w_2516_8b;
wire  w_2517_8b;
wire  w_2518_16b;
wire  w_2519_16b;
wire  w_2520_16b;
wire  w_2523_8b;
wire  w_2524_8b;
wire  w_2525_8b;
wire  w_2528_8b;
wire  w_2529_8b;
wire  w_2530_16b;
wire  w_2531_16b;
wire  w_2532_16b;
wire  w_2535_8b;
wire  w_2536_8b;
wire  w_2537_8b;
wire  w_2540_8b;
wire  w_2541_8b;
wire  w_2542_16b;
wire  w_2543_16b;
wire  w_2544_16b;
wire  w_2547_8b;
wire  w_2548_8b;
wire  w_2549_8b;
wire  w_2552_8b;
wire  w_2553_8b;
wire  w_2554_16b;
wire  w_2555_16b;
wire  w_2556_16b;
wire  w_2559_8b;
wire  w_2560_8b;
wire  w_2561_8b;
wire  w_2564_8b;
wire  w_2565_8b;
wire  w_2566_16b;
wire  w_2567_16b;
wire  w_2568_16b;
wire  w_2571_8b;
wire  w_2572_8b;
wire  w_2573_8b;
wire  w_2576_8b;
wire  w_2577_8b;
wire  w_2578_16b;
wire  w_2579_16b;
wire  w_2580_16b;
wire  w_2583_8b;
wire  w_2584_8b;
wire  w_2585_8b;
wire  w_2588_8b;
wire  w_2589_8b;
wire  w_2590_16b;
wire  w_2591_16b;
wire  w_2592_16b;
wire  w_2595_8b;
wire  w_2596_8b;
wire  w_2597_8b;
wire  w_2600_8b;
wire  w_2601_8b;
wire  w_2602_16b;
wire  w_2603_16b;
wire  w_2604_16b;
wire  w_2607_8b;
wire  w_2608_8b;
wire  w_2609_8b;
wire  w_2612_8b;
wire  w_2613_8b;
wire  w_2614_16b;
wire  w_2615_16b;
wire  w_2616_16b;
wire  w_2619_8b;
wire  w_2620_8b;
wire  w_2621_8b;
wire  w_2624_8b;
wire  w_2625_8b;
wire  w_2626_16b;
wire  w_2627_16b;
wire  w_2628_16b;
wire  w_2631_8b;
wire  w_2632_8b;
wire  w_2633_8b;
wire  w_2636_8b;
wire  w_2637_8b;
wire  w_2638_16b;
wire  w_2639_16b;
wire  w_2640_16b;
wire  w_2643_8b;
wire  w_2644_8b;
wire  w_2645_8b;
wire  w_2648_8b;
wire  w_2649_8b;
wire  w_2650_16b;
wire  w_2651_16b;
wire  w_2652_16b;
wire  w_2655_8b;
wire  w_2656_8b;
wire  w_2657_8b;
wire  w_2660_8b;
wire  w_2661_8b;
wire  w_2662_16b;
wire  w_2663_16b;
wire  w_2664_16b;
wire  w_2667_8b;
wire  w_2668_8b;
wire  w_2669_8b;
wire  w_2672_8b;
wire  w_2673_8b;
wire  w_2674_16b;
wire  w_2675_16b;
wire  w_2676_16b;
wire  w_2679_8b;
wire  w_2680_8b;
wire  w_2681_8b;
wire  w_2684_8b;
wire  w_2685_8b;
wire  w_2686_16b;
wire  w_2687_16b;
wire  w_2688_16b;
wire  w_2691_8b;
wire  w_2692_8b;
wire  w_2693_8b;
wire  w_2696_8b;
wire  w_2697_8b;
wire  w_2698_16b;
wire  w_2699_16b;
wire  w_2700_16b;
wire  w_2703_8b;
wire  w_2704_8b;
wire  w_2705_8b;
wire  w_2708_8b;
wire  w_2709_8b;
wire  w_2710_16b;
wire  w_2711_16b;
wire  w_2712_16b;
wire  w_2715_8b;
wire  w_2716_8b;
wire  w_2717_8b;
wire  w_2720_8b;
wire  w_2721_8b;
wire  w_2722_16b;
wire  w_2723_16b;
wire  w_2724_16b;
wire  w_2727_8b;
wire  w_2728_8b;
wire  w_2729_8b;
wire  w_2732_8b;
wire  w_2733_8b;
wire  w_2734_16b;
wire  w_2735_16b;
wire  w_2736_16b;
wire  w_2739_8b;
wire  w_2740_8b;
wire  w_2741_8b;
wire  w_2744_8b;
wire  w_2745_8b;
wire  w_2746_16b;
wire  w_2747_16b;
wire  w_2748_16b;
wire  w_2751_8b;
wire  w_2752_8b;
wire  w_2753_8b;
wire  w_2756_8b;
wire  w_2757_8b;
wire  w_2758_16b;
wire  w_2759_16b;
wire  w_2760_16b;
wire  w_2763_8b;
wire  w_2764_8b;
wire  w_2765_8b;
wire  w_2768_8b;
wire  w_2769_8b;
wire  w_2770_16b;
wire  w_2771_16b;
wire  w_2772_16b;
wire  w_2775_8b;
wire  w_2776_8b;
wire  w_2777_8b;
wire  w_2780_8b;
wire  w_2781_8b;
wire  w_2782_16b;
wire  w_2783_16b;
wire  w_2784_16b;
wire  w_2787_8b;
wire  w_2788_8b;
wire  w_2789_8b;
wire  w_2792_8b;
wire  w_2793_8b;
wire  w_2794_16b;
wire  w_2795_16b;
wire  w_2796_16b;
wire  w_2799_8b;
wire  w_2800_8b;
wire  w_2801_8b;
wire  w_2804_8b;
wire  w_2805_8b;
wire  w_2806_16b;
wire  w_2807_16b;
wire  w_2808_16b;
wire  w_2811_8b;
wire  w_2812_8b;
wire  w_2813_8b;
wire  w_2816_8b;
wire  w_2817_8b;
wire  w_2818_16b;
wire  w_2819_16b;
wire  w_2820_16b;
wire  w_2823_8b;
wire  w_2824_8b;
wire  w_2825_8b;
wire  w_2828_8b;
wire  w_2829_8b;
wire  w_2830_16b;
wire  w_2831_16b;
wire  w_2832_16b;
wire  w_2835_8b;
wire  w_2836_8b;
wire  w_2837_8b;
wire  w_2840_8b;
wire  w_2841_8b;
wire  w_2842_16b;
wire  w_2843_16b;
wire  w_2844_16b;
wire  w_2847_8b;
wire  w_2848_8b;
wire  w_2849_8b;
wire  w_2852_8b;
wire  w_2853_8b;
wire  w_2854_16b;
wire  w_2855_16b;
wire  w_2856_16b;
wire  w_2859_8b;
wire  w_2860_8b;
wire  w_2861_8b;
wire  w_2864_8b;
wire  w_2865_8b;
wire  w_2866_16b;
wire  w_2867_16b;
wire  w_2868_16b;
wire  w_2871_8b;
wire  w_2872_8b;
wire  w_2873_8b;
wire  w_2876_8b;
wire  w_2877_8b;
wire  w_2878_16b;
wire  w_2879_16b;
wire  w_2880_16b;
wire  w_2883_8b;
wire  w_2884_8b;
wire  w_2885_8b;
wire  w_2888_8b;
wire  w_2889_8b;
wire  w_2890_16b;
wire  w_2891_16b;
wire  w_2892_16b;
wire  w_2895_8b;
wire  w_2896_8b;
wire  w_2897_8b;
wire  w_2900_8b;
wire  w_2901_8b;
wire  w_2902_16b;
wire  w_2903_16b;
wire  w_2904_16b;
wire  w_2907_8b;
wire  w_2908_8b;
wire  w_2909_8b;
wire  w_2912_8b;
wire  w_2913_8b;
wire  w_2914_16b;
wire  w_2915_16b;
wire  w_2916_16b;
wire  w_2919_8b;
wire  w_2920_8b;
wire  w_2921_8b;
wire  w_2924_8b;
wire  w_2925_8b;
wire  w_2926_16b;
wire  w_2927_16b;
wire  w_2928_16b;
wire  w_2931_8b;
wire  w_2932_8b;
wire  w_2933_8b;
wire  w_2936_8b;
wire  w_2937_8b;
wire  w_2938_16b;
wire  w_2939_16b;
wire  w_2940_16b;
wire  w_2943_8b;
wire  w_2944_8b;
wire  w_2945_8b;
wire  w_2948_8b;
wire  w_2949_8b;
wire  w_2950_16b;
wire  w_2951_16b;
wire  w_2952_16b;
wire  w_2955_8b;
wire  w_2956_8b;
wire  w_2957_8b;
wire  w_2960_8b;
wire  w_2961_8b;
wire  w_2962_16b;
wire  w_2963_16b;
wire  w_2964_16b;
wire  w_2967_8b;
wire  w_2968_8b;
wire  w_2969_8b;
wire  w_2972_8b;
wire  w_2973_8b;
wire  w_2974_16b;
wire  w_2975_16b;
wire  w_2976_16b;
wire  w_2979_8b;
wire  w_2980_8b;
wire  w_2981_8b;
wire  w_2984_8b;
wire  w_2985_8b;
wire  w_2986_16b;
wire  w_2987_16b;
wire  w_2988_16b;
wire  w_2991_8b;
wire  w_2992_8b;
wire  w_2993_8b;
wire  w_2996_8b;
wire  w_2997_8b;
wire  w_2998_16b;
wire  w_2999_16b;
wire  w_3000_16b;
wire  w_3003_8b;
wire  w_3004_8b;
wire  w_3005_8b;
wire  w_3008_8b;
wire  w_3009_8b;
wire  w_3010_16b;
wire  w_3011_16b;
wire  w_3012_16b;
wire  w_3015_8b;
wire  w_3016_8b;
wire  w_3017_8b;
wire  w_3020_8b;
wire  w_3021_8b;
wire  w_3022_16b;
wire  w_3023_16b;
wire  w_3024_16b;
wire  w_3027_8b;
wire  w_3028_8b;
wire  w_3029_8b;
wire  w_3032_8b;
wire  w_3033_8b;
wire  w_3034_16b;
wire  w_3035_16b;
wire  w_3036_16b;
wire  w_3039_8b;
wire  w_3040_8b;
wire  w_3041_8b;
wire  w_3044_8b;
wire  w_3045_8b;
wire  w_3046_16b;
wire  w_3047_16b;
wire  w_3048_16b;
wire  w_3051_8b;
wire  w_3052_8b;
wire  w_3053_8b;
wire  w_3056_8b;
wire  w_3057_8b;
wire  w_3058_16b;
wire  w_3059_16b;
wire  w_3060_16b;
wire  w_3063_8b;
wire  w_3064_8b;
wire  w_3065_8b;
wire  w_3068_8b;
wire  w_3069_8b;
wire  w_3070_16b;
wire  w_3071_16b;
wire  w_3072_16b;
wire  w_3075_8b;
wire  w_3076_8b;
wire  w_3077_8b;
wire  w_3080_8b;
wire  w_3081_8b;
wire  w_3082_16b;
wire  w_3083_16b;
wire  w_3084_16b;
wire  w_3087_8b;
wire  w_3088_8b;
wire  w_3089_8b;
wire  w_3092_8b;
wire  w_3093_8b;
wire  w_3094_16b;
wire  w_3095_16b;
wire  w_3096_16b;
wire  w_3099_8b;
wire  w_3100_8b;
wire  w_3101_8b;
wire  w_3104_8b;
wire  w_3105_8b;
wire  w_3106_16b;
wire  w_3107_16b;
wire  w_3108_16b;
wire  w_3111_8b;
wire  w_3112_8b;
wire  w_3113_8b;
wire  w_3116_8b;
wire  w_3117_8b;
wire  w_3118_16b;
wire  w_3119_16b;
wire  w_3120_16b;
wire  w_3123_8b;
wire  w_3124_8b;
wire  w_3125_8b;
wire  w_3128_8b;
wire  w_3129_8b;
wire  w_3130_16b;
wire  w_3131_16b;
wire  w_3132_16b;
wire  w_3135_8b;
wire  w_3136_8b;
wire  w_3137_8b;
wire  w_3140_8b;
wire  w_3141_8b;
wire  w_3142_16b;
wire  w_3143_16b;
wire  w_3144_16b;
wire  w_3147_8b;
wire  w_3148_8b;
wire  w_3149_8b;
wire  w_3152_8b;
wire  w_3153_8b;
wire  w_3154_16b;
wire  w_3155_16b;
wire  w_3156_16b;
wire  w_3159_8b;
wire  w_3160_8b;
wire  w_3161_8b;
wire  w_3164_8b;
wire  w_3165_8b;
wire  w_3166_16b;
wire  w_3167_16b;
wire  w_3168_16b;
wire  w_3171_8b;
wire  w_3172_8b;
wire  w_3173_8b;
wire  w_3176_8b;
wire  w_3177_8b;
wire  w_3178_16b;
wire  w_3179_16b;
wire  w_3180_16b;
wire  w_3183_8b;
wire  w_3184_8b;
wire  w_3185_8b;
wire  w_3188_8b;
wire  w_3189_8b;
wire  w_3190_16b;
wire  w_3191_16b;
wire  w_3192_16b;
wire  w_3195_8b;
wire  w_3196_8b;
wire  w_3197_8b;
wire  w_3200_8b;
wire  w_3201_8b;
wire  w_3202_16b;
wire  w_3203_16b;
wire  w_3204_16b;
wire  w_3207_8b;
wire  w_3208_8b;
wire  w_3209_8b;
wire  w_3212_8b;
wire  w_3213_8b;
wire  w_3214_16b;
wire  w_3215_16b;
wire  w_3216_16b;
wire  w_3219_8b;
wire  w_3220_8b;
wire  w_3221_8b;
wire  w_3224_8b;
wire  w_3225_8b;
wire  w_3226_16b;
wire  w_3227_16b;
wire  w_3228_16b;
wire  w_3231_8b;
wire  w_3232_8b;
wire  w_3233_8b;
wire  w_3236_8b;
wire  w_3237_8b;
wire  w_3238_16b;
wire  w_3239_16b;
wire  w_3240_16b;
wire  w_3243_8b;
wire  w_3244_8b;
wire  w_3245_8b;
wire  w_3248_8b;
wire  w_3249_8b;
wire  w_3250_16b;
wire  w_3251_16b;
wire  w_3252_16b;
wire  w_3255_8b;
wire  w_3256_8b;
wire  w_3257_8b;
wire  w_3260_8b;
wire  w_3261_8b;
wire  w_3262_16b;
wire  w_3263_16b;
wire  w_3264_16b;
wire  w_3267_8b;
wire  w_3268_8b;
wire  w_3269_8b;
wire  w_3272_8b;
wire  w_3273_8b;
wire  w_3274_16b;
wire  w_3275_16b;
wire  w_3276_16b;
wire  w_3279_8b;
wire  w_3280_8b;
wire  w_3281_8b;
wire  w_3284_8b;
wire  w_3285_8b;
wire  w_3286_16b;
wire  w_3287_16b;
wire  w_3288_16b;
wire  w_3291_8b;
wire  w_3292_8b;
wire  w_3293_8b;
wire  w_3296_8b;
wire  w_3297_8b;
wire  w_3298_16b;
wire  w_3299_16b;
wire  w_3300_16b;
wire  w_3303_8b;
wire  w_3304_8b;
wire  w_3305_8b;
wire  w_3308_8b;
wire  w_3309_8b;
wire  w_3310_16b;
wire  w_3311_16b;
wire  w_3312_16b;
wire  w_3315_8b;
wire  w_3316_8b;
wire  w_3317_8b;
wire  w_3320_8b;
wire  w_3321_8b;
wire  w_3322_16b;
wire  w_3323_16b;
wire  w_3324_16b;
wire  w_3327_8b;
wire  w_3328_8b;
wire  w_3329_8b;
wire  w_3332_8b;
wire  w_3333_8b;
wire  w_3334_16b;
wire  w_3335_16b;
wire  w_3336_16b;
wire  w_3339_8b;
wire  w_3340_8b;
wire  w_3341_8b;
wire  w_3344_8b;
wire  w_3345_8b;
wire  w_3346_16b;
wire  w_3347_16b;
wire  w_3348_16b;
wire  w_3351_8b;
wire  w_3352_8b;
wire  w_3353_8b;
wire  w_3356_8b;
wire  w_3357_8b;
wire  w_3358_16b;
wire  w_3359_16b;
wire  w_3360_16b;
wire  w_3363_8b;
wire  w_3364_8b;
wire  w_3365_8b;
wire  w_3368_8b;
wire  w_3369_8b;
wire  w_3370_16b;
wire  w_3371_16b;
wire  w_3372_16b;
wire  w_3375_8b;
wire  w_3376_8b;
wire  w_3377_8b;
wire  w_3380_8b;
wire  w_3381_8b;
wire  w_3382_16b;
wire  w_3383_16b;
wire  w_3384_16b;
wire  w_3387_8b;
wire  w_3388_8b;
wire  w_3389_8b;
wire  w_3392_8b;
wire  w_3393_8b;
wire  w_3394_16b;
wire  w_3395_16b;
wire  w_3396_16b;
wire  w_3399_8b;
wire  w_3400_8b;
wire  w_3401_8b;
wire  w_3404_8b;
wire  w_3405_8b;
wire  w_3406_16b;
wire  w_3407_16b;
wire  w_3408_16b;
wire  w_3411_8b;
wire  w_3412_8b;
wire  w_3413_8b;
wire  w_3416_8b;
wire  w_3417_8b;
wire  w_3418_16b;
wire  w_3419_16b;
wire  w_3420_16b;
wire  w_3423_8b;
wire  w_3424_8b;
wire  w_3425_8b;
wire  w_3428_8b;
wire  w_3429_8b;
wire  w_3430_16b;
wire  w_3431_16b;
wire  w_3432_16b;
wire  w_3435_8b;
wire  w_3436_8b;
wire  w_3437_8b;
wire  w_3440_8b;
wire  w_3441_8b;
wire  w_3442_16b;
wire  w_3443_16b;
wire  w_3444_16b;
wire  w_3447_8b;
wire  w_3448_8b;
wire  w_3449_8b;
wire  w_3452_8b;
wire  w_3453_8b;
wire  w_3454_16b;
wire  w_3455_16b;
wire  w_3456_16b;
wire  w_3459_8b;
wire  w_3460_8b;
wire  w_3461_8b;
wire  w_3464_8b;
wire  w_3465_8b;
wire  w_3466_16b;
wire  w_3467_16b;
wire  w_3468_16b;
wire  w_3471_8b;
wire  w_3472_8b;
wire  w_3473_8b;
wire  w_3476_8b;
wire  w_3477_8b;
wire  w_3478_16b;
wire  w_3479_16b;
wire  w_3480_16b;
wire  w_3483_8b;
wire  w_3484_8b;
wire  w_3485_8b;
wire  w_3488_8b;
wire  w_3489_8b;
wire  w_3490_16b;
wire  w_3491_16b;
wire  w_3492_16b;
wire  w_3495_8b;
wire  w_3496_8b;
wire  w_3497_8b;
wire  w_3500_8b;
wire  w_3501_8b;
wire  w_3502_16b;
wire  w_3503_16b;
wire  w_3504_16b;
wire  w_3507_8b;
wire  w_3508_8b;
wire  w_3509_8b;
wire  w_3512_8b;
wire  w_3513_8b;
wire  w_3514_16b;
wire  w_3515_16b;
wire  w_3516_16b;
wire  w_3519_8b;
wire  w_3520_8b;
wire  w_3521_8b;
wire  w_3524_8b;
wire  w_3525_8b;
wire  w_3526_16b;
wire  w_3527_16b;
wire  w_3528_16b;
wire  w_3531_8b;
wire  w_3532_8b;
wire  w_3533_8b;
wire  w_3536_8b;
wire  w_3537_8b;
wire  w_3538_16b;
wire  w_3539_16b;
wire  w_3540_16b;
wire  w_3543_8b;
wire  w_3544_8b;
wire  w_3545_8b;
wire  w_3548_8b;
wire  w_3549_8b;
wire  w_3550_16b;
wire  w_3551_16b;
wire  w_3552_16b;
wire  w_3555_8b;
wire  w_3556_8b;
wire  w_3557_8b;
wire  w_3560_8b;
wire  w_3561_8b;
wire  w_3562_16b;
wire  w_3563_16b;
wire  w_3564_16b;
wire  w_3567_8b;
wire  w_3568_8b;
wire  w_3569_8b;
wire  w_3572_8b;
wire  w_3573_8b;
wire  w_3574_16b;
wire  w_3575_16b;
wire  w_3576_16b;
wire  w_3579_8b;
wire  w_3580_8b;
wire  w_3581_8b;
wire  w_3584_8b;
wire  w_3585_8b;
wire  w_3586_16b;
wire  w_3587_16b;
wire  w_3588_16b;
wire  w_3591_8b;
wire  w_3592_8b;
wire  w_3593_8b;
wire  w_3596_8b;
wire  w_3597_8b;
wire  w_3598_16b;
wire  w_3599_16b;
wire  w_3600_16b;
wire  w_3603_8b;
wire  w_3604_8b;
wire  w_3605_8b;
wire  w_3608_8b;
wire  w_3609_8b;
wire  w_3610_16b;
wire  w_3611_16b;
wire  w_3612_16b;
wire  w_3615_8b;
wire  w_3616_8b;
wire  w_3617_8b;
wire  w_3620_8b;
wire  w_3621_8b;
wire  w_3622_16b;
wire  w_3623_16b;
wire  w_3624_16b;
wire  w_3627_8b;
wire  w_3628_8b;
wire  w_3629_8b;
wire  w_3632_8b;
wire  w_3633_8b;
wire  w_3634_16b;
wire  w_3635_16b;
wire  w_3636_16b;
wire  w_3639_8b;
wire  w_3640_8b;
wire  w_3641_8b;
wire  w_3644_8b;
wire  w_3645_8b;
wire  w_3646_16b;
wire  w_3647_16b;
wire  w_3648_16b;
wire  w_3651_8b;
wire  w_3652_8b;
wire  w_3653_8b;
wire  w_3656_8b;
wire  w_3657_8b;
wire  w_3658_16b;
wire  w_3659_16b;
wire  w_3660_16b;
wire  w_3663_8b;
wire  w_3664_8b;
wire  w_3665_8b;
wire  w_3668_8b;
wire  w_3669_8b;
wire  w_3670_16b;
wire  w_3671_16b;
wire  w_3672_16b;
wire  w_3675_8b;
wire  w_3676_8b;
wire  w_3677_8b;
wire  w_3680_8b;
wire  w_3681_8b;
wire  w_3682_16b;
wire  w_3683_16b;
wire  w_3684_16b;
wire  w_3687_8b;
wire  w_3688_8b;
wire  w_3689_8b;
wire  w_3692_8b;
wire  w_3693_8b;
wire  w_3694_16b;
wire  w_3695_16b;
wire  w_3696_16b;
wire  w_3699_8b;
wire  w_3700_8b;
wire  w_3701_8b;
wire  w_3704_8b;
wire  w_3705_8b;
wire  w_3706_16b;
wire  w_3707_16b;
wire  w_3708_16b;
wire  w_3711_8b;
wire  w_3712_8b;
wire  w_3713_8b;
wire  w_3716_8b;
wire  w_3717_8b;
wire  w_3718_16b;
wire  w_3719_16b;
wire  w_3720_16b;
wire  w_3723_8b;
wire  w_3724_8b;
wire  w_3725_8b;
wire  w_3728_8b;
wire  w_3729_8b;
wire  w_3730_16b;
wire  w_3731_16b;
wire  w_3732_16b;
wire  w_3735_8b;
wire  w_3736_8b;
wire  w_3737_8b;
wire  w_3740_8b;
wire  w_3741_8b;
wire  w_3742_16b;
wire  w_3743_16b;
wire  w_3744_16b;
wire  w_3747_8b;
wire  w_3748_8b;
wire  w_3749_8b;
wire  w_3752_8b;
wire  w_3753_8b;
wire  w_3754_16b;
wire  w_3755_16b;
wire  w_3756_16b;
wire  w_3759_8b;
wire  w_3760_8b;
wire  w_3761_8b;
wire  w_3764_8b;
wire  w_3765_8b;
wire  w_3766_16b;
wire  w_3767_16b;
wire  w_3768_16b;
wire  w_3771_8b;
wire  w_3772_8b;
wire  w_3773_8b;
wire  w_3776_8b;
wire  w_3777_8b;
wire  w_3778_16b;
wire  w_3779_16b;
wire  w_3780_16b;
wire  w_3783_8b;
wire  w_3784_8b;
wire  w_3785_8b;
wire  w_3788_8b;
wire  w_3789_8b;
wire  w_3790_16b;
wire  w_3791_16b;
wire  w_3792_16b;
wire  w_3795_8b;
wire  w_3796_8b;
wire  w_3797_8b;
wire  w_3800_8b;
wire  w_3801_8b;
wire  w_3802_16b;
wire  w_3803_16b;
wire  w_3804_16b;
wire  w_3807_8b;
wire  w_3808_8b;
wire  w_3809_8b;
wire  w_3812_8b;
wire  w_3813_8b;
wire  w_3814_16b;
wire  w_3815_16b;
wire  w_3816_16b;
wire  w_3819_8b;
wire  w_3820_8b;
wire  w_3821_8b;
wire  w_3824_8b;
wire  w_3825_8b;
wire  w_3826_16b;
wire  w_3827_16b;
wire  w_3828_16b;
wire  w_3831_8b;
wire  w_3832_8b;
wire  w_3833_8b;
wire  w_3836_8b;
wire  w_3837_8b;
wire  w_3838_16b;
wire  w_3839_16b;
wire  w_3840_16b;
wire  w_3843_8b;
wire  w_3844_8b;
wire  w_3845_8b;
wire  w_3848_8b;
wire  w_3849_8b;
wire  w_3850_16b;
wire  w_3851_16b;
wire  w_3852_16b;
wire  w_3855_8b;
wire  w_3856_8b;
wire  w_3857_8b;
wire  w_3860_8b;
wire  w_3861_8b;
wire  w_3862_16b;
wire  w_3863_16b;
wire  w_3864_16b;
wire  w_3867_8b;
wire  w_3868_8b;
wire  w_3869_8b;
wire  w_3872_8b;
wire  w_3873_8b;
wire  w_3874_16b;
wire  w_3875_16b;
wire  w_3876_16b;
wire  w_3879_8b;
wire  w_3880_8b;
wire  w_3881_8b;
wire  w_3884_8b;
wire  w_3885_8b;
wire  w_3886_16b;
wire  w_3887_16b;
wire  w_3888_16b;
wire  w_3891_8b;
wire  w_3892_8b;
wire  w_3893_8b;
wire  w_3896_8b;
wire  w_3897_8b;
wire  w_3898_16b;
wire  w_3899_16b;
wire  w_3900_16b;
wire  w_3903_8b;
wire  w_3904_8b;
wire  w_3905_8b;
wire  w_3908_8b;
wire  w_3909_8b;
wire  w_3910_16b;
wire  w_3911_16b;
wire  w_3912_16b;
wire  w_3915_8b;
wire  w_3916_8b;
wire  w_3917_8b;
wire  w_3920_8b;
wire  w_3921_8b;
wire  w_3922_16b;
wire  w_3923_16b;
wire  w_3924_16b;
wire  w_3927_8b;
wire  w_3928_8b;
wire  w_3929_8b;
wire  w_3932_8b;
wire  w_3933_8b;
wire  w_3934_16b;
wire  w_3935_16b;
wire  w_3936_16b;
wire  w_3939_8b;
wire  w_3940_8b;
wire  w_3941_8b;
wire  w_3944_8b;
wire  w_3945_8b;
wire  w_3946_16b;
wire  w_3947_16b;
wire  w_3948_16b;
wire  w_3951_8b;
wire  w_3952_8b;
wire  w_3953_8b;
wire  w_3956_8b;
wire  w_3957_8b;
wire  w_3958_16b;
wire  w_3959_16b;
wire  w_3960_16b;
wire  w_3963_8b;
wire  w_3964_8b;
wire  w_3965_8b;
wire  w_3968_8b;
wire  w_3969_8b;
wire  w_3970_16b;
wire  w_3971_16b;
wire  w_3972_16b;
wire  w_3975_8b;
wire  w_3976_8b;
wire  w_3977_8b;
wire  w_3980_8b;
wire  w_3981_8b;
wire  w_3982_16b;
wire  w_3983_16b;
wire  w_3984_16b;
wire  w_3987_8b;
wire  w_3988_8b;
wire  w_3989_8b;
wire  w_3992_8b;
wire  w_3993_8b;
wire  w_3994_16b;
wire  w_3995_16b;
wire  w_3996_16b;
wire  w_3999_8b;
wire  w_4000_8b;
wire  w_4001_8b;
wire  w_4004_8b;
wire  w_4005_8b;
wire  w_4006_16b;
wire  w_4007_16b;
wire  w_4008_16b;
wire  w_4011_8b;
wire  w_4012_8b;
wire  w_4013_8b;
wire  w_4016_8b;
wire  w_4017_8b;
wire  w_4018_16b;
wire  w_4019_16b;
wire  w_4020_16b;
wire  w_4023_8b;
wire  w_4024_8b;
wire  w_4025_8b;
wire  w_4028_8b;
wire  w_4029_8b;
wire  w_4030_16b;
wire  w_4031_16b;
wire  w_4032_16b;
wire  w_4035_8b;
wire  w_4036_8b;
wire  w_4037_8b;
wire  w_4040_8b;
wire  w_4041_8b;
wire  w_4042_16b;
wire  w_4043_16b;
wire  w_4044_16b;
wire  w_4047_8b;
wire  w_4048_8b;
wire  w_4049_8b;
wire  w_4052_8b;
wire  w_4053_8b;
wire  w_4054_16b;
wire  w_4055_16b;
wire  w_4056_16b;
wire  w_4059_8b;
wire  w_4060_8b;
wire  w_4061_8b;
wire  w_4064_8b;
wire  w_4065_8b;
wire  w_4066_16b;
wire  w_4067_16b;
wire  w_4068_16b;
wire  w_4071_8b;
wire  w_4072_8b;
wire  w_4073_8b;
wire  w_4076_8b;
wire  w_4077_8b;
wire  w_4078_16b;
wire  w_4079_16b;
wire  w_4080_16b;
wire  w_4083_8b;
wire  w_4084_8b;
wire  w_4085_8b;
wire  w_4088_8b;
wire  w_4089_8b;
wire  w_4090_16b;
wire  w_4091_16b;
wire  w_4092_16b;
wire  w_4095_8b;
wire  w_4096_8b;
wire  w_4097_8b;
wire  w_4100_8b;
wire  w_4101_8b;
wire  w_4102_16b;
wire  w_4103_16b;
wire  w_4104_16b;
wire  w_4107_8b;
wire  w_4108_8b;
wire  w_4109_8b;
wire  w_4112_8b;
wire  w_4113_8b;
wire  w_4114_16b;
wire  w_4115_16b;
wire  w_4116_16b;
wire  w_4119_8b;
wire  w_4120_8b;
wire  w_4121_8b;
wire  w_4124_8b;
wire  w_4125_8b;
wire  w_4126_16b;
wire  w_4127_16b;
wire  w_4128_16b;
wire  w_4131_8b;
wire  w_4132_8b;
wire  w_4133_8b;
wire  w_4136_8b;
wire  w_4137_8b;
wire  w_4138_16b;
wire  w_4139_16b;
wire  w_4140_16b;
wire  w_4143_8b;
wire  w_4144_8b;
wire  w_4145_8b;
wire  w_4148_8b;
wire  w_4149_8b;
wire  w_4150_16b;
wire  w_4151_16b;
wire  w_4152_16b;
wire  w_4155_8b;
wire  w_4156_8b;
wire  w_4157_8b;
wire  w_4160_8b;
wire  w_4161_8b;
wire  w_4162_16b;
wire  w_4163_16b;
wire  w_4164_16b;
wire  w_4167_8b;
wire  w_4168_8b;
wire  w_4169_8b;
wire  w_4172_8b;
wire  w_4173_8b;
wire  w_4174_16b;
wire  w_4175_16b;
wire  w_4176_16b;
wire  w_4179_8b;
wire  w_4180_8b;
wire  w_4181_8b;
wire  w_4184_8b;
wire  w_4185_8b;
wire  w_4186_16b;
wire  w_4187_16b;
wire  w_4188_16b;
wire  w_4191_8b;
wire  w_4192_8b;
wire  w_4193_8b;
wire  w_4196_8b;
wire  w_4197_8b;
wire  w_4198_16b;
wire  w_4199_16b;
wire  w_4200_16b;
wire  w_4203_8b;
wire  w_4204_8b;
wire  w_4205_8b;
wire  w_4208_8b;
wire  w_4209_8b;
wire  w_4210_16b;
wire  w_4211_16b;
wire  w_4212_16b;
wire  w_4215_8b;
wire  w_4216_8b;
wire  w_4217_8b;
wire  w_4220_8b;
wire  w_4221_8b;
wire  w_4222_16b;
wire  w_4223_16b;
wire  w_4224_16b;
wire  w_4227_8b;
wire  w_4228_8b;
wire  w_4229_8b;
wire  w_4232_8b;
wire  w_4233_8b;
wire  w_4234_16b;
wire  w_4235_16b;
wire  w_4236_16b;
wire  w_4239_8b;
wire  w_4240_8b;
wire  w_4241_8b;
wire  w_4244_8b;
wire  w_4245_8b;
wire  w_4246_16b;
wire  w_4247_16b;
wire  w_4248_16b;
wire  w_4251_8b;
wire  w_4252_8b;
wire  w_4253_8b;
wire  w_4256_8b;
wire  w_4257_8b;
wire  w_4258_16b;
wire  w_4259_16b;
wire  w_4260_16b;
wire  w_4263_8b;
wire  w_4264_8b;
wire  w_4265_8b;
wire  w_4268_8b;
wire  w_4269_8b;
wire  w_4270_16b;
wire  w_4271_16b;
wire  w_4272_16b;
wire  w_4275_8b;
wire  w_4276_8b;
wire  w_4277_8b;
wire  w_4280_8b;
wire  w_4281_8b;
wire  w_4282_16b;
wire  w_4283_16b;
wire  w_4284_16b;
wire  w_4287_8b;
wire  w_4288_8b;
wire  w_4289_8b;
wire  w_4292_8b;
wire  w_4293_8b;
wire  w_4294_16b;
wire  w_4295_16b;
wire  w_4296_16b;
wire  w_4299_8b;
wire  w_4300_8b;
wire  w_4301_8b;
wire  w_4304_8b;
wire  w_4305_8b;
wire  w_4306_16b;
wire  w_4307_16b;
wire  w_4308_16b;
wire  w_4311_8b;
wire  w_4312_8b;
wire  w_4313_8b;
wire  w_4316_8b;
wire  w_4317_8b;
wire  w_4318_16b;
wire  w_4319_16b;
wire  w_4320_16b;
wire  w_4323_8b;
wire  w_4324_8b;
wire  w_4325_8b;
wire  w_4328_8b;
wire  w_4329_8b;
wire  w_4330_16b;
wire  w_4331_16b;
wire  w_4332_16b;
wire  w_4335_8b;
wire  w_4336_8b;
wire  w_4337_8b;
wire  w_4340_8b;
wire  w_4341_8b;
wire  w_4342_16b;
wire  w_4343_16b;
wire  w_4344_16b;
wire  w_4347_8b;
wire  w_4348_8b;
wire  w_4349_8b;
wire  w_4352_8b;
wire  w_4353_8b;
wire  w_4354_16b;
wire  w_4355_16b;
wire  w_4356_16b;
wire  w_4359_8b;
wire  w_4360_8b;
wire  w_4361_8b;
wire  w_4364_8b;
wire  w_4365_8b;
wire  w_4366_16b;
wire  w_4367_16b;
wire  w_4368_16b;
wire  w_4371_8b;
wire  w_4372_8b;
wire  w_4373_8b;
wire  w_4376_8b;
wire  w_4377_8b;
wire  w_4378_16b;
wire  w_4379_16b;
wire  w_4380_16b;
wire  w_4383_8b;
wire  w_4384_8b;
wire  w_4385_8b;
wire  w_4388_8b;
wire  w_4389_8b;
wire  w_4390_16b;
wire  w_4391_16b;
wire  w_4392_16b;
wire  w_4395_8b;
wire  w_4396_8b;
wire  w_4397_8b;
wire  w_4400_8b;
wire  w_4401_8b;
wire  w_4402_16b;
wire  w_4403_16b;
wire  w_4404_16b;
wire  w_4407_8b;
wire  w_4408_8b;
wire  w_4409_8b;
wire  w_4412_8b;
wire  w_4413_8b;
wire  w_4414_16b;
wire  w_4415_16b;
wire  w_4416_16b;
wire  w_4419_8b;
wire  w_4420_8b;
wire  w_4421_8b;
wire  w_4424_8b;
wire  w_4425_8b;
wire  w_4426_16b;
wire  w_4427_16b;
wire  w_4428_16b;
wire  w_4431_8b;
wire  w_4432_8b;
wire  w_4433_8b;
wire  w_4436_8b;
wire  w_4437_8b;
wire  w_4438_16b;
wire  w_4439_16b;
wire  w_4440_16b;
wire  w_4443_8b;
wire  w_4444_8b;
wire  w_4445_8b;
wire  w_4448_8b;
wire  w_4449_8b;
wire  w_4450_16b;
wire  w_4451_16b;
wire  w_4452_16b;
wire  w_4455_8b;
wire  w_4456_8b;
wire  w_4457_8b;
wire  w_4460_8b;
wire  w_4461_8b;
wire  w_4462_16b;
wire  w_4463_16b;
wire  w_4464_16b;
wire  w_4467_8b;
wire  w_4468_8b;
wire  w_4469_8b;
wire  w_4472_8b;
wire  w_4473_8b;
wire  w_4474_16b;
wire  w_4475_16b;
wire  w_4476_16b;
wire  w_4479_8b;
wire  w_4480_8b;
wire  w_4481_8b;
wire  w_4484_8b;
wire  w_4485_8b;
wire  w_4486_16b;
wire  w_4487_16b;
wire  w_4488_16b;
wire  w_4491_8b;
wire  w_4492_8b;
wire  w_4493_8b;
wire  w_4496_8b;
wire  w_4497_8b;
wire  w_4498_16b;
wire  w_4499_16b;
wire  w_4500_16b;
wire  w_4503_8b;
wire  w_4504_8b;
wire  w_4505_8b;
wire  w_4508_8b;
wire  w_4509_8b;
wire  w_4510_16b;
wire  w_4511_16b;
wire  w_4512_16b;
wire  w_4515_8b;
wire  w_4516_8b;
wire  w_4517_8b;
wire  w_4520_8b;
wire  w_4521_8b;
wire  w_4522_16b;
wire  w_4523_16b;
wire  w_4524_16b;
wire  w_4527_8b;
wire  w_4528_8b;
wire  w_4529_8b;
wire  w_4532_8b;
wire  w_4533_8b;
wire  w_4534_16b;
wire  w_4535_16b;
wire  w_4536_16b;
wire  w_4539_8b;
wire  w_4540_8b;
wire  w_4541_8b;
wire  w_4544_8b;
wire  w_4545_8b;
wire  w_4546_16b;
wire  w_4547_16b;
wire  w_4548_16b;
wire  w_4551_8b;
wire  w_4552_8b;
wire  w_4553_8b;
wire  w_4556_8b;
wire  w_4557_8b;
wire  w_4558_16b;
wire  w_4559_16b;
wire  w_4560_16b;
wire  w_4563_8b;
wire  w_4564_8b;
wire  w_4565_8b;
wire  w_4568_8b;
wire  w_4569_8b;
wire  w_4570_16b;
wire  w_4571_16b;
wire  w_4572_16b;
wire  w_4575_8b;
wire  w_4576_8b;
wire  w_4577_8b;
wire  w_4580_8b;
wire  w_4581_8b;
wire  w_4582_16b;
wire  w_4583_16b;
wire  w_4584_16b;
wire  w_4587_8b;
wire  w_4588_8b;
wire  w_4589_8b;
wire  w_4592_8b;
wire  w_4593_8b;
wire  w_4594_16b;
wire  w_4595_16b;
wire  w_4596_16b;
wire  w_4599_8b;
wire  w_4600_8b;
wire  w_4601_8b;
wire  w_4604_8b;
wire  w_4605_8b;
wire  w_4606_16b;
wire  w_4607_16b;
wire  w_4608_16b;
wire  w_4611_8b;
wire  w_4612_8b;
wire  w_4613_8b;
wire  w_4616_8b;
wire  w_4617_8b;
wire  w_4618_16b;
wire  w_4619_16b;
wire  w_4620_16b;
wire  w_4623_8b;
wire  w_4624_8b;
wire  w_4625_8b;
wire  w_4628_8b;
wire  w_4629_8b;
wire  w_4630_16b;
wire  w_4631_16b;
wire  w_4632_16b;
wire  w_4635_8b;
wire  w_4636_8b;
wire  w_4637_8b;
wire  w_4640_8b;
wire  w_4641_8b;
wire  w_4642_16b;
wire  w_4643_16b;
wire  w_4644_16b;
wire  w_4647_8b;
wire  w_4648_8b;
wire  w_4649_8b;
wire  w_4652_8b;
wire  w_4653_8b;
wire  w_4654_16b;
wire  w_4655_16b;
wire  w_4656_16b;
wire  w_4659_8b;
wire  w_4660_8b;
wire  w_4661_8b;
wire  w_4664_8b;
wire  w_4665_8b;
wire  w_4666_16b;
wire  w_4667_16b;
wire  w_4668_16b;
wire  w_4671_8b;
wire  w_4672_8b;
wire  w_4673_8b;
wire  w_4676_8b;
wire  w_4677_8b;
wire  w_4678_16b;
wire  w_4679_16b;
wire  w_4680_16b;
wire  w_4683_8b;
wire  w_4684_8b;
wire  w_4685_8b;
wire  w_4688_8b;
wire  w_4689_8b;
wire  w_4690_16b;
wire  w_4691_16b;
wire  w_4692_16b;
wire  w_4695_8b;
wire  w_4696_8b;
wire  w_4697_8b;
wire  w_4700_8b;
wire  w_4701_8b;
wire  w_4702_16b;
wire  w_4703_16b;
wire  w_4704_16b;
wire  w_4707_8b;
wire  w_4708_8b;
wire  w_4709_8b;
wire  w_4712_8b;
wire  w_4713_8b;
wire  w_4714_16b;
wire  w_4715_16b;
wire  w_4716_16b;
wire  w_4719_8b;
wire  w_4720_8b;
wire  w_4721_8b;
wire  w_4724_8b;
wire  w_4725_8b;
wire  w_4726_16b;
wire  w_4727_16b;
wire  w_4728_16b;
wire  w_4731_8b;
wire  w_4732_8b;
wire  w_4733_8b;
wire  w_4736_8b;
wire  w_4737_8b;
wire  w_4738_16b;
wire  w_4739_16b;
wire  w_4740_16b;
wire  w_4743_8b;
wire  w_4744_8b;
wire  w_4745_8b;
wire  w_4748_8b;
wire  w_4749_8b;
wire  w_4750_16b;
wire  w_4751_16b;
wire  w_4752_16b;
wire  w_4755_8b;
wire  w_4756_8b;
wire  w_4757_8b;
wire  w_4760_8b;
wire  w_4761_8b;
wire  w_4762_16b;
wire  w_4763_16b;
wire  w_4764_16b;
wire  w_4767_8b;
wire  w_4768_8b;
wire  w_4769_8b;
wire  w_4772_8b;
wire  w_4773_8b;
wire  w_4774_16b;
wire  w_4775_16b;
wire  w_4776_16b;
wire  w_4779_8b;
wire  w_4780_8b;
wire  w_4781_8b;
wire  w_4784_8b;
wire  w_4785_8b;
wire  w_4786_16b;
wire  w_4787_16b;
wire  w_4788_16b;
wire  w_4791_8b;
wire  w_4792_8b;
wire  w_4793_8b;
wire  w_4796_8b;
wire  w_4797_8b;
wire  w_4798_16b;
wire  w_4799_16b;
wire  w_4800_16b;
wire  w_4803_8b;
wire  w_4804_8b;
wire  w_4805_8b;
wire  w_4808_8b;
wire  w_4809_8b;
wire  w_4810_16b;
wire  w_4811_16b;
wire  w_4812_16b;
wire  w_4815_8b;
wire  w_4816_8b;
wire  w_4817_8b;
wire  w_4820_8b;
wire  w_4821_8b;
wire  w_4822_16b;
wire  w_4823_16b;
wire  w_4824_16b;
wire  w_4827_8b;
wire  w_4828_8b;
wire  w_4829_8b;
wire  w_4832_8b;
wire  w_4833_8b;
wire  w_4834_16b;
wire  w_4835_16b;
wire  w_4836_16b;
wire  w_4839_8b;
wire  w_4840_8b;
wire  w_4841_8b;
wire  w_4844_8b;
wire  w_4845_8b;
wire  w_4846_16b;
wire  w_4847_16b;
wire  w_4848_16b;
wire  w_4851_8b;
wire  w_4852_8b;
wire  w_4853_8b;
wire  w_4856_8b;
wire  w_4857_8b;
wire  w_4858_16b;
wire  w_4859_16b;
wire  w_4860_16b;
wire  w_4863_8b;
wire  w_4864_8b;
wire  w_4865_8b;
wire  w_4868_8b;
wire  w_4869_8b;
wire  w_4870_16b;
wire  w_4871_16b;
wire  w_4872_16b;
wire  w_4875_8b;
wire  w_4876_8b;
wire  w_4877_8b;
wire  w_4880_8b;
wire  w_4881_8b;
wire  w_4882_16b;
wire  w_4883_16b;
wire  w_4884_16b;
wire  w_4887_8b;
wire  w_4888_8b;
wire  w_4889_8b;
wire  w_4892_8b;
wire  w_4893_8b;
wire  w_4894_16b;
wire  w_4895_16b;
wire  w_4896_16b;
wire  w_4899_8b;
wire  w_4900_8b;
wire  w_4901_8b;
wire  w_4904_8b;
wire  w_4905_8b;
wire  w_4906_16b;
wire  w_4907_16b;
wire  w_4908_16b;
wire  w_4911_8b;
wire  w_4912_8b;
wire  w_4913_8b;
wire  w_4916_8b;
wire  w_4917_8b;
wire  w_4918_16b;
wire  w_4919_16b;
wire  w_4920_16b;
wire  w_4923_8b;
wire  w_4924_8b;
wire  w_4925_8b;
wire  w_4928_8b;
wire  w_4929_8b;
wire  w_4930_16b;
wire  w_4931_16b;
wire  w_4932_16b;
wire  w_4935_8b;
wire  w_4936_8b;
wire  w_4937_8b;
wire  w_4940_8b;
wire  w_4941_8b;
wire  w_4942_16b;
wire  w_4943_16b;
wire  w_4944_16b;
wire  w_4947_8b;
wire  w_4948_8b;
wire  w_4949_8b;
wire  w_4952_8b;
wire  w_4953_8b;
wire  w_4954_16b;
wire  w_4955_16b;
wire  w_4956_16b;
wire  w_4959_8b;
wire  w_4960_8b;
wire  w_4961_8b;
wire  w_4964_8b;
wire  w_4965_8b;
wire  w_4966_16b;
wire  w_4967_16b;
wire  w_4968_16b;
wire  w_4971_8b;
wire  w_4972_8b;
wire  w_4973_8b;
wire  w_4976_8b;
wire  w_4977_8b;
wire  w_4978_16b;
wire  w_4979_16b;
wire  w_4980_16b;
wire  w_4983_8b;
wire  w_4984_8b;
wire  w_4985_8b;
wire  w_4988_8b;
wire  w_4989_8b;
wire  w_4990_16b;
wire  w_4991_16b;
wire  w_4992_16b;
wire  w_4995_8b;
wire  w_4996_8b;
wire  w_4997_8b;
wire  w_5000_8b;
wire  w_5001_8b;
wire  w_5002_16b;
wire  w_5003_16b;
wire  w_5004_16b;
wire  w_5007_8b;
wire  w_5008_8b;
wire  w_5009_8b;
wire  w_5012_8b;
wire  w_5013_8b;
wire  w_5014_16b;
wire  w_5015_16b;
wire  w_5016_16b;
wire  w_5019_8b;
wire  w_5020_8b;
wire  w_5021_8b;
wire  w_5024_8b;
wire  w_5025_8b;
wire  w_5026_16b;
wire  w_5027_16b;
wire  w_5028_16b;
wire  w_5031_8b;
wire  w_5032_8b;
wire  w_5033_8b;
wire  w_5036_8b;
wire  w_5037_8b;
wire  w_5038_16b;
wire  w_5039_16b;
wire  w_5040_16b;
wire  w_5043_8b;
wire  w_5044_8b;
wire  w_5045_8b;
wire  w_5048_8b;
wire  w_5049_8b;
wire  w_5050_16b;
wire  w_5051_16b;
wire  w_5052_16b;
wire  w_5055_8b;
wire  w_5056_8b;
wire  w_5057_8b;
wire  w_5060_8b;
wire  w_5061_8b;
wire  w_5062_16b;
wire  w_5063_16b;
wire  w_5064_16b;
wire  w_5067_8b;
wire  w_5068_8b;
wire  w_5069_8b;
wire  w_5072_8b;
wire  w_5073_8b;
wire  w_5074_16b;
wire  w_5075_16b;
wire  w_5076_16b;
wire  w_5079_8b;
wire  w_5080_8b;
wire  w_5081_8b;
wire  w_5084_8b;
wire  w_5085_8b;
wire  w_5086_16b;
wire  w_5087_16b;
wire  w_5088_16b;
wire  w_5091_8b;
wire  w_5092_8b;
wire  w_5093_8b;
wire  w_5096_8b;
wire  w_5097_8b;
wire  w_5098_16b;
wire  w_5099_16b;
wire  w_5100_16b;
wire  w_5103_8b;
wire  w_5104_8b;
wire  w_5105_8b;
wire  w_5108_8b;
wire  w_5109_8b;
wire  w_5110_16b;
wire  w_5111_16b;
wire  w_5112_16b;
wire  w_5115_8b;
wire  w_5116_8b;
wire  w_5117_8b;
wire  w_5120_8b;
wire  w_5121_8b;
wire  w_5122_16b;
wire  w_5123_16b;
wire  w_5124_16b;
wire  w_5127_8b;
wire  w_5128_8b;
wire  w_5129_8b;
wire  w_5132_8b;
wire  w_5133_8b;
wire  w_5134_16b;
wire  w_5135_16b;
wire  w_5136_16b;
wire  w_5139_8b;
wire  w_5140_8b;
wire  w_5141_8b;
wire  w_5144_8b;
wire  w_5145_8b;
wire  w_5146_16b;
wire  w_5147_16b;
wire  w_5148_16b;
wire  w_5151_8b;
wire  w_5152_8b;
wire  w_5153_8b;
wire  w_5156_8b;
wire  w_5157_8b;
wire  w_5158_16b;
wire  w_5159_16b;
wire  w_5160_16b;
wire  w_5163_8b;
wire  w_5164_8b;
wire  w_5165_8b;
wire  w_5168_8b;
wire  w_5169_8b;
wire  w_5170_16b;
wire  w_5171_16b;
wire  w_5172_16b;
wire  w_5175_8b;
wire  w_5176_8b;
wire  w_5177_8b;
wire  w_5180_8b;
wire  w_5181_8b;
wire  w_5182_16b;
wire  w_5183_16b;
wire  w_5184_16b;
wire  w_5187_8b;
wire  w_5188_8b;
wire  w_5189_8b;
wire  w_5192_8b;
wire  w_5193_8b;
wire  w_5194_16b;
wire  w_5195_16b;
wire  w_5196_16b;
wire  w_5199_8b;
wire  w_5200_8b;
wire  w_5201_8b;
wire  w_5204_8b;
wire  w_5205_8b;
wire  w_5206_16b;
wire  w_5207_16b;
wire  w_5208_16b;
wire  w_5211_8b;
wire  w_5212_8b;
wire  w_5213_8b;
wire  w_5216_8b;
wire  w_5217_8b;
wire  w_5218_16b;
wire  w_5219_16b;
wire  w_5220_16b;
wire  w_5223_8b;
wire  w_5224_8b;
wire  w_5225_8b;
wire  w_5228_8b;
wire  w_5229_8b;
wire  w_5230_16b;
wire  w_5231_16b;
wire  w_5232_16b;
wire  w_5235_8b;
wire  w_5236_8b;
wire  w_5237_8b;
wire  w_5240_8b;
wire  w_5241_8b;
wire  w_5242_16b;
wire  w_5243_16b;
wire  w_5244_16b;
wire  w_5247_8b;
wire  w_5248_8b;
wire  w_5249_8b;
wire  w_5252_8b;
wire  w_5253_8b;
wire  w_5254_16b;
wire  w_5255_16b;
wire  w_5256_16b;
wire  w_5259_8b;
wire  w_5260_8b;
wire  w_5261_8b;
wire  w_5264_8b;
wire  w_5265_8b;
wire  w_5266_16b;
wire  w_5267_16b;
wire  w_5268_16b;
wire  w_5271_8b;
wire  w_5272_8b;
wire  w_5273_8b;
wire  w_5276_8b;
wire  w_5277_8b;
wire  w_5278_16b;
wire  w_5279_16b;
wire  w_5280_16b;
wire  w_5283_8b;
wire  w_5284_8b;
wire  w_5285_8b;
wire  w_5288_8b;
wire  w_5289_8b;
wire  w_5290_16b;
wire  w_5291_16b;
wire  w_5292_16b;
wire  w_5295_8b;
wire  w_5296_8b;
wire  w_5297_8b;
wire  w_5300_8b;
wire  w_5301_8b;
wire  w_5302_16b;
wire  w_5303_16b;
wire  w_5304_16b;
wire  w_5307_8b;
wire  w_5308_8b;
wire  w_5309_8b;
wire  w_5312_8b;
wire  w_5313_8b;
wire  w_5314_16b;
wire  w_5315_16b;
wire  w_5316_16b;
wire  w_5319_8b;
wire  w_5320_8b;
wire  w_5321_8b;
wire  w_5324_8b;
wire  w_5325_8b;
wire  w_5326_16b;
wire  w_5327_16b;
wire  w_5328_16b;
wire  w_5331_8b;
wire  w_5332_8b;
wire  w_5333_8b;
wire  w_5336_8b;
wire  w_5337_8b;
wire  w_5338_16b;
wire  w_5339_16b;
wire  w_5340_16b;
wire  w_5343_8b;
wire  w_5344_8b;
wire  w_5345_8b;
wire  w_5348_8b;
wire  w_5349_8b;
wire  w_5350_16b;
wire  w_5351_16b;
wire  w_5352_16b;
wire  w_5355_8b;
wire  w_5356_8b;
wire  w_5357_8b;
wire  w_5360_8b;
wire  w_5361_8b;
wire  w_5362_16b;
wire  w_5363_16b;
wire  w_5364_16b;
wire  w_5367_8b;
wire  w_5368_8b;
wire  w_5369_8b;
wire  w_5372_8b;
wire  w_5373_8b;
wire  w_5374_16b;
wire  w_5375_16b;
wire  w_5376_16b;
wire  w_5379_8b;
wire  w_5380_8b;
wire  w_5381_8b;
wire  w_5384_8b;
wire  w_5385_8b;
wire  w_5386_16b;
wire  w_5387_16b;
wire  w_5388_16b;
wire  w_5391_8b;
wire  w_5392_8b;
wire  w_5393_8b;
wire  w_5396_8b;
wire  w_5397_8b;
wire  w_5398_16b;
wire  w_5399_16b;
wire  w_5400_16b;
wire  w_5403_8b;
wire  w_5404_8b;
wire  w_5405_8b;
wire  w_5408_8b;
wire  w_5409_8b;
wire  w_5410_16b;
wire  w_5411_16b;
wire  w_5412_16b;
wire  w_5415_8b;
wire  w_5416_8b;
wire  w_5417_8b;
wire  w_5420_8b;
wire  w_5421_8b;
wire  w_5422_16b;
wire  w_5423_16b;
wire  w_5424_16b;
wire  w_5427_8b;
wire  w_5428_8b;
wire  w_5429_8b;
wire  w_5432_8b;
wire  w_5433_8b;
wire  w_5434_16b;
wire  w_5435_16b;
wire  w_5436_16b;
wire  w_5439_8b;
wire  w_5440_8b;
wire  w_5441_8b;
wire  w_5444_8b;
wire  w_5445_8b;
wire  w_5446_16b;
wire  w_5447_16b;
wire  w_5448_16b;
wire  w_5451_8b;
wire  w_5452_8b;
wire  w_5453_8b;
wire  w_5456_8b;
wire  w_5457_8b;
wire  w_5458_16b;
wire  w_5459_16b;
wire  w_5460_16b;
wire  w_5463_8b;
wire  w_5464_8b;
wire  w_5465_8b;
wire  w_5468_8b;
wire  w_5469_8b;
wire  w_5470_16b;
wire  w_5471_16b;
wire  w_5472_16b;
wire  w_5475_8b;
wire  w_5476_8b;
wire  w_5477_8b;
wire  w_5480_8b;
wire  w_5481_8b;
wire  w_5482_16b;
wire  w_5483_16b;
wire  w_5484_16b;
wire  w_5487_8b;
wire  w_5488_8b;
wire  w_5489_8b;
wire  w_5492_8b;
wire  w_5493_8b;
wire  w_5494_16b;
wire  w_5495_16b;
wire  w_5496_16b;
wire  w_5499_8b;
wire  w_5500_8b;
wire  w_5501_8b;
wire  w_5504_8b;
wire  w_5505_8b;
wire  w_5506_16b;
wire  w_5507_16b;
wire  w_5508_16b;
wire  w_5511_8b;
wire  w_5512_8b;
wire  w_5513_8b;
wire  w_5516_8b;
wire  w_5517_8b;
wire  w_5518_16b;
wire  w_5519_16b;
wire  w_5520_16b;
wire  w_5523_8b;
wire  w_5524_8b;
wire  w_5525_8b;
wire  w_5528_8b;
wire  w_5529_8b;
wire  w_5530_16b;
wire  w_5531_16b;
wire  w_5532_16b;
wire  w_5535_8b;
wire  w_5536_8b;
wire  w_5537_8b;
wire  w_5540_8b;
wire  w_5541_8b;
wire  w_5542_16b;
wire  w_5543_16b;
wire  w_5544_16b;
wire  w_5547_8b;
wire  w_5548_8b;
wire  w_5549_8b;
wire  w_5552_8b;
wire  w_5553_8b;
wire  w_5554_16b;
wire  w_5555_16b;
wire  w_5556_16b;
wire  w_5559_8b;
wire  w_5560_8b;
wire  w_5561_8b;
wire  w_5564_8b;
wire  w_5565_8b;
wire  w_5566_16b;
wire  w_5567_16b;
wire  w_5568_16b;
wire  w_5571_8b;
wire  w_5572_8b;
wire  w_5573_8b;
wire  w_5576_8b;
wire  w_5577_8b;
wire  w_5578_16b;
wire  w_5579_16b;
wire  w_5580_16b;
wire  w_5583_8b;
wire  w_5584_8b;
wire  w_5585_8b;
wire  w_5588_8b;
wire  w_5589_8b;
wire  w_5590_16b;
wire  w_5591_16b;
wire  w_5592_16b;
wire  w_5595_8b;
wire  w_5596_8b;
wire  w_5597_8b;
wire  w_5600_8b;
wire  w_5601_8b;
wire  w_5602_16b;
wire  w_5603_16b;
wire  w_5604_16b;
wire  w_5607_8b;
wire  w_5608_8b;
wire  w_5609_8b;
wire  w_5612_8b;
wire  w_5613_8b;
wire  w_5614_16b;
wire  w_5615_16b;
wire  w_5616_16b;
wire  w_5619_8b;
wire  w_5620_8b;
wire  w_5621_8b;
wire  w_5624_8b;
wire  w_5625_8b;
wire  w_5626_16b;
wire  w_5627_16b;
wire  w_5628_16b;
wire  w_5631_8b;
wire  w_5632_8b;
wire  w_5633_8b;
wire  w_5636_8b;
wire  w_5637_8b;
wire  w_5638_16b;
wire  w_5639_16b;
wire  w_5640_16b;
wire  w_5643_8b;
wire  w_5644_8b;
wire  w_5645_8b;
wire  w_5648_8b;
wire  w_5649_8b;
wire  w_5650_16b;
wire  w_5651_16b;
wire  w_5652_16b;
wire  w_5655_8b;
wire  w_5656_8b;
wire  w_5657_8b;
wire  w_5660_8b;
wire  w_5661_8b;
wire  w_5662_16b;
wire  w_5663_16b;
wire  w_5664_16b;
wire  w_5667_8b;
wire  w_5668_8b;
wire  w_5669_8b;
wire  w_5672_8b;
wire  w_5673_8b;
wire  w_5674_16b;
wire  w_5675_16b;
wire  w_5676_16b;
wire  w_5679_8b;
wire  w_5680_8b;
wire  w_5681_8b;
wire  w_5684_8b;
wire  w_5685_8b;
wire  w_5686_16b;
wire  w_5687_16b;
wire  w_5688_16b;
wire  w_5691_8b;
wire  w_5692_8b;
wire  w_5693_8b;
wire  w_5696_8b;
wire  w_5697_8b;
wire  w_5698_16b;
wire  w_5699_16b;
wire  w_5700_16b;
wire  w_5703_8b;
wire  w_5704_8b;
wire  w_5705_8b;
wire  w_5708_8b;
wire  w_5709_8b;
wire  w_5710_16b;
wire  w_5711_16b;
wire  w_5712_16b;
wire  w_5715_8b;
wire  w_5716_8b;
wire  w_5717_8b;
wire  w_5720_8b;
wire  w_5721_8b;
wire  w_5722_16b;
wire  w_5723_16b;
wire  w_5724_16b;
wire  w_5727_8b;
wire  w_5728_8b;
wire  w_5729_8b;
wire  w_5732_8b;
wire  w_5733_8b;
wire  w_5734_16b;
wire  w_5735_16b;
wire  w_5736_16b;
wire  w_5739_8b;
wire  w_5740_8b;
wire  w_5741_8b;
wire  w_5744_8b;
wire  w_5745_8b;
wire  w_5746_16b;
wire  w_5747_16b;
wire  w_5748_16b;
wire  w_5751_8b;
wire  w_5752_8b;
wire  w_5753_8b;
wire  w_5756_8b;
wire  w_5757_8b;
wire  w_5758_16b;
wire  w_5759_16b;
wire  w_5760_16b;
wire  w_5763_8b;
wire  w_5764_8b;
wire  w_5765_8b;
wire  w_5768_8b;
wire  w_5769_8b;
wire  w_5770_16b;
wire  w_5771_16b;
wire  w_5772_16b;
wire  w_5775_8b;
wire  w_5776_8b;
wire  w_5777_8b;
wire  w_5780_8b;
wire  w_5781_8b;
wire  w_5782_16b;
wire  w_5783_16b;
wire  w_5784_16b;
wire  w_5787_8b;
wire  w_5788_8b;
wire  w_5789_8b;
wire  w_5792_8b;
wire  w_5793_8b;
wire  w_5794_16b;
wire  w_5795_16b;
wire  w_5796_16b;
wire  w_5799_8b;
wire  w_5800_8b;
wire  w_5801_8b;
wire  w_5804_8b;
wire  w_5805_8b;
wire  w_5806_16b;
wire  w_5807_16b;
wire  w_5808_16b;
wire  w_5811_8b;
wire  w_5812_8b;
wire  w_5813_8b;
wire  w_5816_8b;
wire  w_5817_8b;
wire  w_5818_16b;
wire  w_5819_16b;
wire  w_5820_16b;
wire  w_5823_8b;
wire  w_5824_8b;
wire  w_5825_8b;
wire  w_5828_8b;
wire  w_5829_8b;
wire  w_5830_16b;
wire  w_5831_16b;
wire  w_5832_16b;
wire  w_5835_8b;
wire  w_5836_8b;
wire  w_5837_8b;
wire  w_5840_8b;
wire  w_5841_8b;
wire  w_5842_16b;
wire  w_5843_16b;
wire  w_5844_16b;
wire  w_5847_8b;
wire  w_5848_8b;
wire  w_5849_8b;
wire  w_5852_8b;
wire  w_5853_8b;
wire  w_5854_16b;
wire  w_5855_16b;
wire  w_5856_16b;
wire  w_5859_8b;
wire  w_5860_8b;
wire  w_5861_8b;
wire  w_5864_8b;
wire  w_5865_8b;
wire  w_5866_16b;
wire  w_5867_16b;
wire  w_5868_16b;
wire  w_5871_8b;
wire  w_5872_8b;
wire  w_5873_8b;
wire  w_5876_8b;
wire  w_5877_8b;
wire  w_5878_16b;
wire  w_5879_16b;
wire  w_5880_16b;
wire  w_5883_8b;
wire  w_5884_8b;
wire  w_5885_8b;
wire  w_5888_8b;
wire  w_5889_8b;
wire  w_5890_16b;
wire  w_5891_16b;
wire  w_5892_16b;
wire  w_5895_8b;
wire  w_5896_8b;
wire  w_5897_8b;
wire  w_5900_8b;
wire  w_5901_8b;
wire  w_5902_16b;
wire  w_5903_16b;
wire  w_5904_16b;
wire  w_5907_8b;
wire  w_5908_8b;
wire  w_5909_8b;
wire  w_5912_8b;
wire  w_5913_8b;
wire  w_5914_16b;
wire  w_5915_16b;
wire  w_5916_16b;
wire  w_5919_8b;
wire  w_5920_8b;
wire  w_5921_8b;
wire  w_5924_8b;
wire  w_5925_8b;
wire  w_5926_16b;
wire  w_5927_16b;
wire  w_5928_16b;
wire  w_5931_8b;
wire  w_5932_8b;
wire  w_5933_8b;
wire  w_5936_8b;
wire  w_5937_8b;
wire  w_5938_16b;
wire  w_5939_16b;
wire  w_5940_16b;
wire  w_5943_8b;
wire  w_5944_8b;
wire  w_5945_8b;
wire  w_5948_8b;
wire  w_5949_8b;
wire  w_5950_16b;
wire  w_5951_16b;
wire  w_5952_16b;
wire  w_5955_8b;
wire  w_5956_8b;
wire  w_5957_8b;
wire  w_5960_8b;
wire  w_5961_8b;
wire  w_5962_16b;
wire  w_5963_16b;
wire  w_5964_16b;
wire  w_5967_8b;
wire  w_5968_8b;
wire  w_5969_8b;
wire  w_5972_8b;
wire  w_5973_8b;
wire  w_5974_16b;
wire  w_5975_16b;
wire  w_5976_16b;
wire  w_5979_8b;
wire  w_5980_8b;
wire  w_5981_8b;
wire  w_5984_8b;
wire  w_5985_8b;
wire  w_5986_16b;
wire  w_5987_16b;
wire  w_5988_16b;
wire  w_5991_8b;
wire  w_5992_8b;
wire  w_5993_8b;
wire  w_5996_8b;
wire  w_5997_8b;
wire  w_5998_16b;
wire  w_5999_16b;
wire  w_6000_16b;
wire  w_6003_8b;
wire  w_6004_8b;
wire  w_6005_8b;
wire  w_6008_8b;
wire  w_6009_8b;
wire  w_6010_16b;
wire  w_6011_16b;
wire  w_6012_16b;
wire  w_6015_8b;
wire  w_6016_8b;
wire  w_6017_8b;
wire  w_6020_8b;
wire  w_6021_8b;
wire  w_6022_16b;
wire  w_6023_16b;
wire  w_6024_16b;
wire  w_6027_8b;
wire  w_6028_8b;
wire  w_6029_8b;
wire  w_6032_8b;
wire  w_6033_8b;
wire  w_6034_16b;
wire  w_6035_16b;
wire  w_6036_16b;
wire  w_6039_8b;
wire  w_6040_8b;
wire  w_6041_8b;
wire  w_6044_8b;
wire  w_6045_8b;
wire  w_6046_16b;
wire  w_6047_16b;
wire  w_6048_16b;
wire  w_6051_8b;
wire  w_6052_8b;
wire  w_6053_8b;
wire  w_6056_8b;
wire  w_6057_8b;
wire  w_6058_16b;
wire  w_6059_16b;
wire  w_6060_16b;
wire  w_6063_8b;
wire  w_6064_8b;
wire  w_6065_8b;
wire  w_6068_8b;
wire  w_6069_8b;
wire  w_6070_16b;
wire  w_6071_16b;
wire  w_6072_16b;
wire  w_6075_8b;
wire  w_6076_8b;
wire  w_6077_8b;
wire  w_6080_8b;
wire  w_6081_8b;
wire  w_6082_16b;
wire  w_6083_16b;
wire  w_6084_16b;
wire  w_6087_8b;
wire  w_6088_8b;
wire  w_6089_8b;
wire  w_6092_8b;
wire  w_6093_8b;
wire  w_6094_16b;
wire  w_6095_16b;
wire  w_6096_16b;
wire  w_6099_8b;
wire  w_6100_8b;
wire  w_6101_8b;
wire  w_6104_8b;
wire  w_6105_8b;
wire  w_6106_16b;
wire  w_6107_16b;
wire  w_6108_16b;
wire  w_6111_8b;
wire  w_6112_8b;
wire  w_6113_8b;
wire  w_6116_8b;
wire  w_6117_8b;
wire  w_6118_16b;
wire  w_6119_16b;
wire  w_6120_16b;
wire  w_6123_8b;
wire  w_6124_8b;
wire  w_6125_8b;
wire  w_6128_8b;
wire  w_6129_8b;
wire  w_6130_16b;
wire  w_6131_16b;
wire  w_6132_16b;
wire  w_6135_8b;
wire  w_6136_8b;
wire  w_6137_8b;
wire  w_6140_8b;
wire  w_6141_8b;
wire  w_6142_16b;
wire  w_6143_16b;
wire  w_6144_16b;
wire  w_6147_8b;
wire  w_6148_8b;
wire  w_6149_8b;
wire  w_6152_8b;
wire  w_6153_8b;
wire  w_6154_16b;
wire  w_6155_16b;
wire  w_6156_16b;
wire  w_6159_8b;
wire  w_6160_8b;
wire  w_6161_8b;
wire  w_6164_8b;
wire  w_6165_8b;
wire  w_6166_16b;
wire  w_6167_16b;
wire  w_6168_16b;
wire  w_6171_8b;
wire  w_6172_8b;
wire  w_6173_8b;
wire  w_6176_8b;
wire  w_6177_8b;
wire  w_6178_16b;
wire  w_6179_16b;
wire  w_6180_16b;
wire  w_6183_8b;
wire  w_6184_8b;
wire  w_6185_8b;
wire  w_6188_8b;
wire  w_6189_8b;
wire  w_6190_16b;
wire  w_6191_16b;
wire  w_6192_16b;
wire  w_6195_8b;
wire  w_6196_8b;
wire  w_6197_8b;
wire  w_6200_8b;
wire  w_6201_8b;
wire  w_6202_16b;
wire  w_6203_16b;
wire  w_6204_16b;
wire  w_6207_8b;
wire  w_6208_8b;
wire  w_6209_8b;
wire  w_6212_8b;
wire  w_6213_8b;
wire  w_6214_16b;
wire  w_6215_16b;
wire  w_6216_16b;
wire  w_6219_8b;
wire  w_6220_8b;
wire  w_6221_8b;
wire  w_6224_8b;
wire  w_6225_8b;
wire  w_6226_16b;
wire  w_6227_16b;
wire  w_6228_16b;
wire  w_6231_8b;
wire  w_6232_8b;
wire  w_6233_8b;
wire  w_6236_8b;
wire  w_6237_8b;
wire  w_6238_16b;
wire  w_6239_16b;
wire  w_6240_16b;
wire  w_6243_8b;
wire  w_6244_8b;
wire  w_6245_8b;
wire  w_6248_8b;
wire  w_6249_8b;
wire  w_6250_16b;
wire  w_6251_16b;
wire  w_6252_16b;
wire  w_6255_8b;
wire  w_6256_8b;
wire  w_6257_8b;
wire  w_6260_8b;
wire  w_6261_8b;
wire  w_6262_16b;
wire  w_6263_16b;
wire  w_6264_16b;
wire  w_6267_8b;
wire  w_6268_8b;
wire  w_6269_8b;
wire  w_6272_8b;
wire  w_6273_8b;
wire  w_6274_16b;
wire  w_6275_16b;
wire  w_6276_16b;
wire  w_6279_8b;
wire  w_6280_8b;
wire  w_6281_8b;
wire  w_6284_8b;
wire  w_6285_8b;
wire  w_6286_16b;
wire  w_6287_16b;
wire  w_6288_16b;
wire  w_6291_8b;
wire  w_6292_8b;
wire  w_6293_8b;
wire  w_6296_8b;
wire  w_6297_8b;
wire  w_6298_16b;
wire  w_6299_16b;
wire  w_630_8b;
wire  w_6300_16b;
wire  w_6303_8b;
wire  w_6304_8b;
wire  w_6305_8b;
wire  w_6308_8b;
wire  w_6309_8b;
wire  w_631_16b;
wire  w_6310_16b;
wire  w_6311_16b;
wire  w_6312_16b;
wire  w_6315_8b;
wire  w_6316_8b;
wire  w_6317_8b;
wire  w_632_8b;
wire  w_6320_8b;
wire  w_6321_8b;
wire  w_6322_16b;
wire  w_6323_16b;
wire  w_6324_16b;
wire  w_6327_8b;
wire  w_6328_8b;
wire  w_6329_8b;
wire  w_633_16b;
wire  w_6332_8b;
wire  w_6333_8b;
wire  w_6334_16b;
wire  w_6335_16b;
wire  w_6336_16b;
wire  w_6339_8b;
wire  w_634_8b;
wire  w_6340_8b;
wire  w_6341_8b;
wire  w_6344_8b;
wire  w_6345_8b;
wire  w_6346_16b;
wire  w_6347_16b;
wire  w_6348_16b;
wire  w_635_16b;
wire  w_6351_8b;
wire  w_6352_8b;
wire  w_6353_8b;
wire  w_6356_8b;
wire  w_6357_8b;
wire  w_6358_16b;
wire  w_6359_16b;
wire  w_636_8b;
wire  w_6360_16b;
wire  w_6363_8b;
wire  w_6364_8b;
wire  w_6365_8b;
wire  w_6368_8b;
wire  w_6369_8b;
wire  w_637_16b;
wire  w_6370_16b;
wire  w_6371_16b;
wire  w_6372_16b;
wire  w_6375_8b;
wire  w_6376_8b;
wire  w_6377_8b;
wire  w_638_8b;
wire  w_6380_8b;
wire  w_6381_8b;
wire  w_6382_16b;
wire  w_6383_16b;
wire  w_6384_16b;
wire  w_6387_8b;
wire  w_6388_8b;
wire  w_6389_8b;
wire  w_639_16b;
wire  w_6392_8b;
wire  w_6393_8b;
wire  w_6394_16b;
wire  w_6395_16b;
wire  w_6396_16b;
wire  w_6399_8b;
wire  w_640_16b;
wire  w_6400_8b;
wire  w_6401_8b;
wire  w_6404_8b;
wire  w_6405_8b;
wire  w_6406_16b;
wire  w_6407_16b;
wire  w_6408_16b;
wire  w_641_16b;
wire  w_6411_8b;
wire  w_6412_8b;
wire  w_6413_8b;
wire  w_6416_8b;
wire  w_6417_8b;
wire  w_6418_16b;
wire  w_6419_16b;
wire  w_642_16b;
wire  w_6420_16b;
wire  w_6423_8b;
wire  w_6424_8b;
wire  w_6425_8b;
wire  w_6428_8b;
wire  w_6429_8b;
wire  w_643_16b;
wire  w_6430_16b;
wire  w_6431_16b;
wire  w_6432_16b;
wire  w_6435_8b;
wire  w_6436_8b;
wire  w_6437_8b;
wire  w_644_16b;
wire  w_6440_8b;
wire  w_6441_8b;
wire  w_6442_16b;
wire  w_6443_16b;
wire  w_6444_16b;
wire  w_6447_8b;
wire  w_6448_8b;
wire  w_6449_8b;
wire  w_645_16b;
wire  w_6452_8b;
wire  w_6453_8b;
wire  w_6454_16b;
wire  w_6455_16b;
wire  w_6456_16b;
wire  w_6459_8b;
wire  w_646_16b;
wire  w_6460_8b;
wire  w_6461_8b;
wire  w_6464_8b;
wire  w_6465_8b;
wire  w_6466_16b;
wire  w_6467_16b;
wire  w_6468_16b;
wire  w_647_16b;
wire  w_6471_8b;
wire  w_6472_8b;
wire  w_6473_8b;
wire  w_6476_8b;
wire  w_6477_8b;
wire  w_6478_16b;
wire  w_6479_16b;
wire  w_648_16b;
wire  w_6480_16b;
wire  w_6483_8b;
wire  w_6484_8b;
wire  w_6485_8b;
wire  w_6488_8b;
wire  w_6489_8b;
wire  w_649_16b;
wire  w_6490_16b;
wire  w_6491_16b;
wire  w_6492_16b;
wire  w_6495_8b;
wire  w_6496_8b;
wire  w_6497_8b;
wire  w_650_16b;
wire  w_6500_8b;
wire  w_6501_8b;
wire  w_6502_16b;
wire  w_6503_16b;
wire  w_6504_16b;
wire  w_6507_8b;
wire  w_6508_8b;
wire  w_6509_8b;
wire  w_651_16b;
wire  w_6512_8b;
wire  w_6513_8b;
wire  w_6514_16b;
wire  w_6515_16b;
wire  w_6516_16b;
wire  w_6519_8b;
wire  w_652_16b;
wire  w_6520_8b;
wire  w_6521_8b;
wire  w_6524_8b;
wire  w_6525_8b;
wire  w_6526_16b;
wire  w_6527_16b;
wire  w_6528_16b;
wire  w_653_16b;
wire  w_6531_8b;
wire  w_6532_8b;
wire  w_6533_8b;
wire  w_6536_8b;
wire  w_6537_8b;
wire  w_6538_16b;
wire  w_6539_16b;
wire  w_654_16b;
wire  w_6540_16b;
wire  w_6543_8b;
wire  w_6544_8b;
wire  w_6545_8b;
wire  w_6548_8b;
wire  w_6549_8b;
wire  w_655_16b;
wire  w_6550_16b;
wire  w_6551_16b;
wire  w_6552_16b;
wire  w_6555_8b;
wire  w_6556_8b;
wire  w_6557_8b;
wire  w_656_16b;
wire  w_6560_8b;
wire  w_6561_8b;
wire  w_6562_16b;
wire  w_6563_16b;
wire  w_6564_16b;
wire  w_6567_8b;
wire  w_6568_8b;
wire  w_6569_8b;
wire  w_6572_8b;
wire  w_6573_8b;
wire  w_6574_16b;
wire  w_6575_16b;
wire  w_6576_16b;
wire  w_6579_8b;
wire  w_658_8b;
wire  w_6580_8b;
wire  w_6581_8b;
wire  w_6584_8b;
wire  w_6585_8b;
wire  w_6586_16b;
wire  w_6587_16b;
wire  w_6588_16b;
wire  w_659_8b;
wire  w_6591_8b;
wire  w_6592_8b;
wire  w_6593_8b;
wire  w_6596_8b;
wire  w_6597_8b;
wire  w_6598_16b;
wire  w_6599_16b;
wire  w_660_8b;
wire  w_6600_16b;
wire  w_6603_8b;
wire  w_6604_8b;
wire  w_6605_8b;
wire  w_6608_8b;
wire  w_6609_8b;
wire  w_6610_16b;
wire  w_6611_16b;
wire  w_6612_16b;
wire  w_6615_8b;
wire  w_6616_8b;
wire  w_6617_8b;
wire  w_6620_8b;
wire  w_6621_8b;
wire  w_6622_16b;
wire  w_6623_16b;
wire  w_6624_16b;
wire  w_6627_8b;
wire  w_6628_8b;
wire  w_6629_8b;
wire  w_663_8b;
wire  w_6632_8b;
wire  w_6633_8b;
wire  w_6634_16b;
wire  w_6635_16b;
wire  w_6636_16b;
wire  w_6639_8b;
wire  w_664_8b;
wire  w_6640_8b;
wire  w_6641_8b;
wire  w_6644_8b;
wire  w_6645_8b;
wire  w_6646_16b;
wire  w_6647_16b;
wire  w_6648_16b;
wire  w_665_16b;
wire  w_6651_8b;
wire  w_6652_8b;
wire  w_6653_8b;
wire  w_6656_8b;
wire  w_6657_8b;
wire  w_6658_16b;
wire  w_6659_16b;
wire  w_666_16b;
wire  w_6660_16b;
wire  w_6663_8b;
wire  w_6664_8b;
wire  w_6665_8b;
wire  w_6668_8b;
wire  w_6669_8b;
wire  w_667_16b;
wire  w_6670_16b;
wire  w_6671_16b;
wire  w_6672_16b;
wire  w_6675_8b;
wire  w_6676_8b;
wire  w_6677_8b;
wire  w_6680_8b;
wire  w_6681_8b;
wire  w_6682_16b;
wire  w_6683_16b;
wire  w_6684_16b;
wire  w_6687_8b;
wire  w_6688_8b;
wire  w_6689_8b;
wire  w_6692_8b;
wire  w_6693_8b;
wire  w_6694_16b;
wire  w_6695_16b;
wire  w_6696_16b;
wire  w_6699_8b;
wire  w_670_8b;
wire  w_6700_8b;
wire  w_6701_8b;
wire  w_6704_8b;
wire  w_6705_8b;
wire  w_6706_16b;
wire  w_6707_16b;
wire  w_6708_16b;
wire  w_671_8b;
wire  w_6711_8b;
wire  w_6712_8b;
wire  w_6713_8b;
wire  w_6716_8b;
wire  w_6717_8b;
wire  w_6718_16b;
wire  w_6719_16b;
wire  w_672_8b;
wire  w_6720_16b;
wire  w_6723_8b;
wire  w_6724_8b;
wire  w_6725_8b;
wire  w_6728_8b;
wire  w_6729_8b;
wire  w_6730_16b;
wire  w_6731_16b;
wire  w_6732_16b;
wire  w_6735_8b;
wire  w_6736_8b;
wire  w_6737_8b;
wire  w_6740_8b;
wire  w_6741_8b;
wire  w_6742_16b;
wire  w_6743_16b;
wire  w_6744_16b;
wire  w_6747_8b;
wire  w_6748_8b;
wire  w_6749_8b;
wire  w_675_8b;
wire  w_6752_8b;
wire  w_6753_8b;
wire  w_6754_16b;
wire  w_6755_16b;
wire  w_6756_16b;
wire  w_6759_8b;
wire  w_676_8b;
wire  w_6760_8b;
wire  w_6761_8b;
wire  w_6764_8b;
wire  w_6765_8b;
wire  w_6766_16b;
wire  w_6767_16b;
wire  w_6768_16b;
wire  w_677_16b;
wire  w_6771_8b;
wire  w_6772_8b;
wire  w_6773_8b;
wire  w_6776_8b;
wire  w_6777_8b;
wire  w_6778_16b;
wire  w_6779_16b;
wire  w_678_16b;
wire  w_6780_16b;
wire  w_6783_8b;
wire  w_6784_8b;
wire  w_6785_8b;
wire  w_6788_8b;
wire  w_6789_8b;
wire  w_679_16b;
wire  w_6790_16b;
wire  w_6791_16b;
wire  w_6792_16b;
wire  w_6795_8b;
wire  w_6796_8b;
wire  w_6797_8b;
wire  w_6800_8b;
wire  w_6801_8b;
wire  w_6802_16b;
wire  w_6803_16b;
wire  w_6804_16b;
wire  w_6807_8b;
wire  w_6808_8b;
wire  w_6809_8b;
wire  w_6812_8b;
wire  w_6813_8b;
wire  w_6814_16b;
wire  w_6815_16b;
wire  w_6816_16b;
wire  w_6819_8b;
wire  w_682_8b;
wire  w_6820_8b;
wire  w_6821_8b;
wire  w_6824_8b;
wire  w_6825_8b;
wire  w_6826_16b;
wire  w_6827_16b;
wire  w_6828_16b;
wire  w_683_8b;
wire  w_6831_8b;
wire  w_6832_8b;
wire  w_6833_8b;
wire  w_6836_8b;
wire  w_6837_8b;
wire  w_6838_16b;
wire  w_6839_16b;
wire  w_684_8b;
wire  w_6840_16b;
wire  w_6843_8b;
wire  w_6844_8b;
wire  w_6845_8b;
wire  w_6848_8b;
wire  w_6849_8b;
wire  w_6850_16b;
wire  w_6851_16b;
wire  w_6852_16b;
wire  w_6855_8b;
wire  w_6856_8b;
wire  w_6857_8b;
wire  w_6860_8b;
wire  w_6861_8b;
wire  w_6862_16b;
wire  w_6863_16b;
wire  w_6864_16b;
wire  w_6867_8b;
wire  w_6868_8b;
wire  w_6869_8b;
wire  w_687_8b;
wire  w_6872_8b;
wire  w_6873_8b;
wire  w_6874_16b;
wire  w_6875_16b;
wire  w_6876_16b;
wire  w_6879_8b;
wire  w_688_8b;
wire  w_6880_8b;
wire  w_6881_8b;
wire  w_6884_8b;
wire  w_6885_8b;
wire  w_6886_16b;
wire  w_6887_16b;
wire  w_6888_16b;
wire  w_689_16b;
wire  w_6891_8b;
wire  w_6892_8b;
wire  w_6893_8b;
wire  w_6896_8b;
wire  w_6897_8b;
wire  w_6898_16b;
wire  w_6899_16b;
wire  w_690_16b;
wire  w_6900_16b;
wire  w_6903_8b;
wire  w_6904_8b;
wire  w_6905_8b;
wire  w_6908_8b;
wire  w_6909_8b;
wire  w_691_16b;
wire  w_6910_16b;
wire  w_6911_16b;
wire  w_6912_16b;
wire  w_6915_8b;
wire  w_6916_8b;
wire  w_6917_8b;
wire  w_6920_8b;
wire  w_6921_8b;
wire  w_6922_16b;
wire  w_6923_16b;
wire  w_6924_16b;
wire  w_6927_8b;
wire  w_6928_8b;
wire  w_6929_8b;
wire  w_6932_8b;
wire  w_6933_8b;
wire  w_6934_16b;
wire  w_6935_16b;
wire  w_6936_16b;
wire  w_6939_8b;
wire  w_694_8b;
wire  w_6940_8b;
wire  w_6941_8b;
wire  w_6944_8b;
wire  w_6945_8b;
wire  w_6946_16b;
wire  w_6947_16b;
wire  w_6948_16b;
wire  w_695_8b;
wire  w_6951_8b;
wire  w_6952_8b;
wire  w_6953_8b;
wire  w_6956_8b;
wire  w_6957_8b;
wire  w_6958_16b;
wire  w_6959_16b;
wire  w_696_8b;
wire  w_6960_16b;
wire  w_6963_8b;
wire  w_6964_8b;
wire  w_6965_8b;
wire  w_6968_8b;
wire  w_6969_8b;
wire  w_6970_16b;
wire  w_6971_16b;
wire  w_6972_16b;
wire  w_6975_8b;
wire  w_6976_8b;
wire  w_6977_8b;
wire  w_6980_8b;
wire  w_6981_8b;
wire  w_6982_16b;
wire  w_6983_16b;
wire  w_6984_16b;
wire  w_6987_8b;
wire  w_6988_8b;
wire  w_6989_8b;
wire  w_699_8b;
wire  w_6992_8b;
wire  w_6993_8b;
wire  w_6994_16b;
wire  w_6995_16b;
wire  w_6996_16b;
wire  w_6999_8b;
wire  w_700_8b;
wire  w_7000_8b;
wire  w_7001_8b;
wire  w_7004_8b;
wire  w_7005_8b;
wire  w_7006_16b;
wire  w_7007_16b;
wire  w_7008_16b;
wire  w_701_16b;
wire  w_7011_8b;
wire  w_7012_8b;
wire  w_7013_8b;
wire  w_7016_8b;
wire  w_7017_8b;
wire  w_7018_16b;
wire  w_7019_16b;
wire  w_702_16b;
wire  w_7020_16b;
wire  w_7023_8b;
wire  w_7024_8b;
wire  w_7025_8b;
wire  w_7028_8b;
wire  w_7029_8b;
wire  w_703_16b;
wire  w_7030_16b;
wire  w_7031_16b;
wire  w_7032_16b;
wire  w_7035_8b;
wire  w_7036_8b;
wire  w_7037_8b;
wire  w_7040_8b;
wire  w_7041_8b;
wire  w_7042_16b;
wire  w_7043_16b;
wire  w_7044_16b;
wire  w_7047_8b;
wire  w_7048_8b;
wire  w_7049_8b;
wire  w_7052_8b;
wire  w_7053_8b;
wire  w_7054_16b;
wire  w_7055_16b;
wire  w_7056_16b;
wire  w_7059_8b;
wire  w_706_8b;
wire  w_7060_8b;
wire  w_7061_8b;
wire  w_7064_8b;
wire  w_7065_8b;
wire  w_7066_16b;
wire  w_7067_16b;
wire  w_7068_16b;
wire  w_707_8b;
wire  w_7071_8b;
wire  w_7072_8b;
wire  w_7073_8b;
wire  w_7076_8b;
wire  w_7077_8b;
wire  w_7078_16b;
wire  w_7079_16b;
wire  w_708_8b;
wire  w_7080_16b;
wire  w_7083_8b;
wire  w_7084_8b;
wire  w_7085_8b;
wire  w_7088_8b;
wire  w_7089_8b;
wire  w_7090_16b;
wire  w_7091_16b;
wire  w_7092_16b;
wire  w_7095_8b;
wire  w_7096_8b;
wire  w_7097_8b;
wire  w_7100_8b;
wire  w_7101_8b;
wire  w_7102_16b;
wire  w_7103_16b;
wire  w_7104_16b;
wire  w_7107_8b;
wire  w_7108_8b;
wire  w_7109_8b;
wire  w_711_8b;
wire  w_7112_8b;
wire  w_7113_8b;
wire  w_7114_16b;
wire  w_7115_16b;
wire  w_7116_16b;
wire  w_7119_8b;
wire  w_712_8b;
wire  w_7120_8b;
wire  w_7121_8b;
wire  w_7124_8b;
wire  w_7125_8b;
wire  w_7126_16b;
wire  w_7127_16b;
wire  w_7128_16b;
wire  w_713_16b;
wire  w_7131_8b;
wire  w_7132_8b;
wire  w_7133_8b;
wire  w_7136_8b;
wire  w_7137_8b;
wire  w_7138_16b;
wire  w_7139_16b;
wire  w_714_16b;
wire  w_7140_16b;
wire  w_7143_8b;
wire  w_7144_8b;
wire  w_7145_8b;
wire  w_7148_8b;
wire  w_7149_8b;
wire  w_715_16b;
wire  w_7150_16b;
wire  w_7151_16b;
wire  w_7152_16b;
wire  w_7155_8b;
wire  w_7156_8b;
wire  w_7157_8b;
wire  w_7160_8b;
wire  w_7161_8b;
wire  w_7162_16b;
wire  w_7163_16b;
wire  w_7164_16b;
wire  w_7167_8b;
wire  w_7168_8b;
wire  w_7169_8b;
wire  w_7172_8b;
wire  w_7173_8b;
wire  w_7174_16b;
wire  w_7175_16b;
wire  w_7176_16b;
wire  w_7179_8b;
wire  w_718_8b;
wire  w_7180_8b;
wire  w_7181_8b;
wire  w_7184_8b;
wire  w_7185_8b;
wire  w_7186_16b;
wire  w_7187_16b;
wire  w_7188_16b;
wire  w_719_8b;
wire  w_7191_8b;
wire  w_7192_8b;
wire  w_7193_8b;
wire  w_7196_8b;
wire  w_7197_8b;
wire  w_7198_16b;
wire  w_7199_16b;
wire  w_720_8b;
wire  w_7200_16b;
wire  w_7203_8b;
wire  w_7204_8b;
wire  w_7205_8b;
wire  w_7208_8b;
wire  w_7209_8b;
wire  w_7210_16b;
wire  w_7211_16b;
wire  w_7212_16b;
wire  w_7215_8b;
wire  w_7216_8b;
wire  w_7217_8b;
wire  w_7220_8b;
wire  w_7221_8b;
wire  w_7222_16b;
wire  w_7223_16b;
wire  w_7224_16b;
wire  w_7227_8b;
wire  w_7228_8b;
wire  w_7229_8b;
wire  w_723_8b;
wire  w_7232_8b;
wire  w_7233_8b;
wire  w_7234_16b;
wire  w_7235_16b;
wire  w_7236_16b;
wire  w_7239_8b;
wire  w_724_8b;
wire  w_7240_8b;
wire  w_7241_8b;
wire  w_7244_8b;
wire  w_7245_8b;
wire  w_7246_16b;
wire  w_7247_16b;
wire  w_7248_16b;
wire  w_725_16b;
wire  w_7251_8b;
wire  w_7252_8b;
wire  w_7253_8b;
wire  w_7256_8b;
wire  w_7257_8b;
wire  w_7258_16b;
wire  w_7259_16b;
wire  w_726_16b;
wire  w_7260_16b;
wire  w_7263_8b;
wire  w_7264_8b;
wire  w_7265_8b;
wire  w_7268_8b;
wire  w_7269_8b;
wire  w_727_16b;
wire  w_7270_16b;
wire  w_7271_16b;
wire  w_7272_16b;
wire  w_7275_8b;
wire  w_7276_8b;
wire  w_7277_8b;
wire  w_7280_8b;
wire  w_7281_8b;
wire  w_7282_16b;
wire  w_7283_16b;
wire  w_7284_16b;
wire  w_7287_8b;
wire  w_7288_8b;
wire  w_7289_8b;
wire  w_7292_8b;
wire  w_7293_8b;
wire  w_7294_16b;
wire  w_7295_16b;
wire  w_7296_16b;
wire  w_7299_8b;
wire  w_730_8b;
wire  w_7300_8b;
wire  w_7301_8b;
wire  w_7304_8b;
wire  w_7305_8b;
wire  w_7306_16b;
wire  w_7307_16b;
wire  w_7308_16b;
wire  w_731_8b;
wire  w_7311_8b;
wire  w_7312_8b;
wire  w_7313_8b;
wire  w_7316_8b;
wire  w_7317_8b;
wire  w_7318_16b;
wire  w_7319_16b;
wire  w_732_8b;
wire  w_7320_16b;
wire  w_7323_8b;
wire  w_7324_8b;
wire  w_7325_8b;
wire  w_7328_8b;
wire  w_7329_8b;
wire  w_7330_16b;
wire  w_7331_16b;
wire  w_7332_16b;
wire  w_7335_8b;
wire  w_7336_8b;
wire  w_7337_8b;
wire  w_7340_8b;
wire  w_7341_8b;
wire  w_7342_16b;
wire  w_7343_16b;
wire  w_7344_16b;
wire  w_7347_8b;
wire  w_7348_8b;
wire  w_7349_8b;
wire  w_735_8b;
wire  w_7352_8b;
wire  w_7353_8b;
wire  w_7354_16b;
wire  w_7355_16b;
wire  w_7356_16b;
wire  w_7359_8b;
wire  w_736_8b;
wire  w_7360_8b;
wire  w_7361_8b;
wire  w_7364_8b;
wire  w_7365_8b;
wire  w_7366_16b;
wire  w_7367_16b;
wire  w_7368_16b;
wire  w_737_16b;
wire  w_7371_8b;
wire  w_7372_8b;
wire  w_7373_8b;
wire  w_7376_8b;
wire  w_7377_8b;
wire  w_7378_16b;
wire  w_7379_16b;
wire  w_738_16b;
wire  w_7380_16b;
wire  w_7383_8b;
wire  w_7384_8b;
wire  w_7385_8b;
wire  w_7388_8b;
wire  w_7389_8b;
wire  w_739_16b;
wire  w_7390_16b;
wire  w_7391_16b;
wire  w_7392_16b;
wire  w_7395_8b;
wire  w_7396_8b;
wire  w_7397_8b;
wire  w_7400_8b;
wire  w_7401_8b;
wire  w_7402_16b;
wire  w_7403_16b;
wire  w_7404_16b;
wire  w_7407_8b;
wire  w_7408_8b;
wire  w_7409_8b;
wire  w_7412_8b;
wire  w_7413_8b;
wire  w_7414_16b;
wire  w_7415_16b;
wire  w_7416_16b;
wire  w_7419_8b;
wire  w_742_8b;
wire  w_7420_8b;
wire  w_7421_8b;
wire  w_7424_8b;
wire  w_7425_8b;
wire  w_7426_16b;
wire  w_7427_16b;
wire  w_7428_16b;
wire  w_743_8b;
wire  w_7431_8b;
wire  w_7432_8b;
wire  w_7433_8b;
wire  w_7436_8b;
wire  w_7437_8b;
wire  w_7438_16b;
wire  w_7439_16b;
wire  w_744_8b;
wire  w_7440_16b;
wire  w_7443_8b;
wire  w_7444_8b;
wire  w_7445_8b;
wire  w_7448_8b;
wire  w_7449_8b;
wire  w_7450_16b;
wire  w_7451_16b;
wire  w_7452_16b;
wire  w_7455_8b;
wire  w_7456_8b;
wire  w_7457_8b;
wire  w_7460_8b;
wire  w_7461_8b;
wire  w_7462_16b;
wire  w_7463_16b;
wire  w_7464_16b;
wire  w_7467_8b;
wire  w_7468_8b;
wire  w_7469_8b;
wire  w_747_8b;
wire  w_7472_8b;
wire  w_7473_8b;
wire  w_7474_16b;
wire  w_7475_16b;
wire  w_7476_16b;
wire  w_7479_8b;
wire  w_748_8b;
wire  w_7480_8b;
wire  w_7481_8b;
wire  w_7484_8b;
wire  w_7485_8b;
wire  w_7486_16b;
wire  w_7487_16b;
wire  w_7488_16b;
wire  w_749_16b;
wire  w_7491_8b;
wire  w_7492_8b;
wire  w_7493_8b;
wire  w_7496_8b;
wire  w_7497_8b;
wire  w_7498_16b;
wire  w_7499_16b;
wire  w_750_16b;
wire  w_7500_16b;
wire  w_7503_8b;
wire  w_7504_8b;
wire  w_7505_8b;
wire  w_7508_8b;
wire  w_7509_8b;
wire  w_751_16b;
wire  w_7510_16b;
wire  w_7511_16b;
wire  w_7512_16b;
wire  w_7515_8b;
wire  w_7516_8b;
wire  w_7517_8b;
wire  w_7520_8b;
wire  w_7521_8b;
wire  w_7522_16b;
wire  w_7523_16b;
wire  w_7524_16b;
wire  w_7527_8b;
wire  w_7528_8b;
wire  w_7529_8b;
wire  w_753_8b;
wire  w_7532_8b;
wire  w_7533_8b;
wire  w_7534_16b;
wire  w_7535_16b;
wire  w_7536_16b;
wire  w_7539_8b;
wire  w_754_8b;
wire  w_7540_8b;
wire  w_7541_8b;
wire  w_7544_8b;
wire  w_7545_8b;
wire  w_7546_16b;
wire  w_7547_16b;
wire  w_7548_16b;
wire  w_755_8b;
wire  w_7551_8b;
wire  w_7552_8b;
wire  w_7553_8b;
wire  w_7556_8b;
wire  w_7557_8b;
wire  w_7558_16b;
wire  w_7559_16b;
wire  w_7560_16b;
wire  w_7563_8b;
wire  w_7564_8b;
wire  w_7565_8b;
wire  w_7568_8b;
wire  w_7569_8b;
wire  w_7570_16b;
wire  w_7571_16b;
wire  w_7572_16b;
wire  w_7575_8b;
wire  w_7576_8b;
wire  w_7577_8b;
wire  w_758_8b;
wire  w_7580_8b;
wire  w_7581_8b;
wire  w_7582_16b;
wire  w_7583_16b;
wire  w_7584_16b;
wire  w_7587_8b;
wire  w_7588_8b;
wire  w_7589_8b;
wire  w_759_8b;
wire  w_7592_8b;
wire  w_7593_8b;
wire  w_7594_16b;
wire  w_7595_16b;
wire  w_7596_16b;
wire  w_7599_8b;
wire  w_760_16b;
wire  w_7600_8b;
wire  w_7601_8b;
wire  w_7604_8b;
wire  w_7605_8b;
wire  w_7606_16b;
wire  w_7607_16b;
wire  w_7608_16b;
wire  w_761_16b;
wire  w_7611_8b;
wire  w_7612_8b;
wire  w_7613_8b;
wire  w_7616_8b;
wire  w_7617_8b;
wire  w_7618_16b;
wire  w_7619_16b;
wire  w_762_16b;
wire  w_7620_16b;
wire  w_7623_8b;
wire  w_7624_8b;
wire  w_7625_8b;
wire  w_7628_8b;
wire  w_7629_8b;
wire  w_7630_16b;
wire  w_7631_16b;
wire  w_7632_16b;
wire  w_7635_8b;
wire  w_7636_8b;
wire  w_7637_8b;
wire  w_7640_8b;
wire  w_7641_8b;
wire  w_7642_16b;
wire  w_7643_16b;
wire  w_7644_16b;
wire  w_7647_8b;
wire  w_7648_8b;
wire  w_7649_8b;
wire  w_765_8b;
wire  w_7652_8b;
wire  w_7653_8b;
wire  w_7654_16b;
wire  w_7655_16b;
wire  w_7656_16b;
wire  w_7659_8b;
wire  w_766_8b;
wire  w_7660_8b;
wire  w_7661_8b;
wire  w_7664_8b;
wire  w_7665_8b;
wire  w_7666_16b;
wire  w_7667_16b;
wire  w_7668_16b;
wire  w_767_8b;
wire  w_7671_8b;
wire  w_7672_8b;
wire  w_7673_8b;
wire  w_7676_8b;
wire  w_7677_8b;
wire  w_7678_16b;
wire  w_7679_16b;
wire  w_7680_16b;
wire  w_7683_8b;
wire  w_7684_8b;
wire  w_7685_8b;
wire  w_7688_8b;
wire  w_7689_8b;
wire  w_7690_16b;
wire  w_7691_16b;
wire  w_7692_16b;
wire  w_7695_8b;
wire  w_7696_8b;
wire  w_7697_8b;
wire  w_770_8b;
wire  w_7700_8b;
wire  w_7701_8b;
wire  w_7702_16b;
wire  w_7703_16b;
wire  w_7704_16b;
wire  w_7707_8b;
wire  w_7708_8b;
wire  w_7709_8b;
wire  w_771_8b;
wire  w_7712_8b;
wire  w_7713_8b;
wire  w_7714_16b;
wire  w_7715_16b;
wire  w_7716_16b;
wire  w_7719_8b;
wire  w_772_16b;
wire  w_7720_8b;
wire  w_7721_8b;
wire  w_7724_8b;
wire  w_7725_8b;
wire  w_7726_16b;
wire  w_7727_16b;
wire  w_7728_16b;
wire  w_773_16b;
wire  w_7731_8b;
wire  w_7732_8b;
wire  w_7733_8b;
wire  w_7736_8b;
wire  w_7737_8b;
wire  w_7738_16b;
wire  w_7739_16b;
wire  w_774_16b;
wire  w_7740_16b;
wire  w_7743_8b;
wire  w_7744_8b;
wire  w_7745_8b;
wire  w_7748_8b;
wire  w_7749_8b;
wire  w_7750_16b;
wire  w_7751_16b;
wire  w_7752_16b;
wire  w_7755_8b;
wire  w_7756_8b;
wire  w_7757_8b;
wire  w_7760_8b;
wire  w_7761_8b;
wire  w_7762_16b;
wire  w_7763_16b;
wire  w_7764_16b;
wire  w_7767_8b;
wire  w_7768_8b;
wire  w_7769_8b;
wire  w_777_8b;
wire  w_7772_8b;
wire  w_7773_8b;
wire  w_7774_16b;
wire  w_7775_16b;
wire  w_7776_16b;
wire  w_7779_8b;
wire  w_778_8b;
wire  w_7780_8b;
wire  w_7781_8b;
wire  w_7784_8b;
wire  w_7785_8b;
wire  w_7786_16b;
wire  w_7787_16b;
wire  w_7788_16b;
wire  w_779_8b;
wire  w_7791_8b;
wire  w_7792_8b;
wire  w_7793_8b;
wire  w_7796_8b;
wire  w_7797_8b;
wire  w_7798_16b;
wire  w_7799_16b;
wire  w_7800_16b;
wire  w_7803_8b;
wire  w_7804_8b;
wire  w_7805_8b;
wire  w_7808_8b;
wire  w_7809_8b;
wire  w_7810_16b;
wire  w_7811_16b;
wire  w_7812_16b;
wire  w_7815_8b;
wire  w_7816_8b;
wire  w_7817_8b;
wire  w_782_8b;
wire  w_7820_8b;
wire  w_7821_8b;
wire  w_7822_16b;
wire  w_7823_16b;
wire  w_7824_16b;
wire  w_7827_8b;
wire  w_7828_8b;
wire  w_7829_8b;
wire  w_783_8b;
wire  w_7832_8b;
wire  w_7833_8b;
wire  w_7834_16b;
wire  w_7835_16b;
wire  w_7836_16b;
wire  w_7839_8b;
wire  w_784_16b;
wire  w_7840_8b;
wire  w_7841_8b;
wire  w_7844_8b;
wire  w_7845_8b;
wire  w_7846_16b;
wire  w_7847_16b;
wire  w_7848_16b;
wire  w_785_16b;
wire  w_7851_8b;
wire  w_7852_8b;
wire  w_7853_8b;
wire  w_7856_8b;
wire  w_7857_8b;
wire  w_7858_16b;
wire  w_7859_16b;
wire  w_786_16b;
wire  w_7860_16b;
wire  w_7863_8b;
wire  w_7864_8b;
wire  w_7865_8b;
wire  w_7868_8b;
wire  w_7869_8b;
wire  w_7870_16b;
wire  w_7871_16b;
wire  w_7872_16b;
wire  w_7875_8b;
wire  w_7876_8b;
wire  w_7877_8b;
wire  w_7880_8b;
wire  w_7881_8b;
wire  w_7882_16b;
wire  w_7883_16b;
wire  w_7884_16b;
wire  w_7887_8b;
wire  w_7888_8b;
wire  w_7889_8b;
wire  w_789_8b;
wire  w_7892_8b;
wire  w_7893_8b;
wire  w_7894_16b;
wire  w_7895_16b;
wire  w_7896_16b;
wire  w_7899_8b;
wire  w_790_8b;
wire  w_7900_8b;
wire  w_7901_8b;
wire  w_7904_8b;
wire  w_7905_8b;
wire  w_7906_16b;
wire  w_7907_16b;
wire  w_7908_16b;
wire  w_791_8b;
wire  w_7911_8b;
wire  w_7912_8b;
wire  w_7913_8b;
wire  w_7916_8b;
wire  w_7917_8b;
wire  w_7918_16b;
wire  w_7919_16b;
wire  w_7920_16b;
wire  w_7923_8b;
wire  w_7924_8b;
wire  w_7925_8b;
wire  w_7928_8b;
wire  w_7929_8b;
wire  w_7930_16b;
wire  w_7931_16b;
wire  w_7932_16b;
wire  w_7935_8b;
wire  w_7936_8b;
wire  w_7937_8b;
wire  w_794_8b;
wire  w_7940_8b;
wire  w_7941_8b;
wire  w_7942_16b;
wire  w_7943_16b;
wire  w_7944_16b;
wire  w_7947_8b;
wire  w_7948_8b;
wire  w_7949_8b;
wire  w_795_8b;
wire  w_7952_8b;
wire  w_7953_8b;
wire  w_7954_16b;
wire  w_7955_16b;
wire  w_7956_16b;
wire  w_7959_8b;
wire  w_796_16b;
wire  w_7960_8b;
wire  w_7961_8b;
wire  w_7964_8b;
wire  w_7965_8b;
wire  w_7966_16b;
wire  w_7967_16b;
wire  w_7968_16b;
wire  w_797_16b;
wire  w_7971_8b;
wire  w_7972_8b;
wire  w_7973_8b;
wire  w_7976_8b;
wire  w_7977_8b;
wire  w_7978_16b;
wire  w_7979_16b;
wire  w_798_16b;
wire  w_7980_16b;
wire  w_7983_8b;
wire  w_7984_8b;
wire  w_7985_8b;
wire  w_7988_8b;
wire  w_7989_8b;
wire  w_7990_16b;
wire  w_7991_16b;
wire  w_7992_16b;
wire  w_7995_8b;
wire  w_7996_8b;
wire  w_7997_8b;
wire  w_8000_8b;
wire  w_8001_8b;
wire  w_8002_16b;
wire  w_8003_16b;
wire  w_8004_16b;
wire  w_8007_8b;
wire  w_8008_8b;
wire  w_8009_8b;
wire  w_801_8b;
wire  w_8012_8b;
wire  w_8013_8b;
wire  w_8014_16b;
wire  w_8015_16b;
wire  w_8016_16b;
wire  w_8019_8b;
wire  w_802_8b;
wire  w_8020_8b;
wire  w_8021_8b;
wire  w_8024_8b;
wire  w_8025_8b;
wire  w_8026_16b;
wire  w_8027_16b;
wire  w_8028_16b;
wire  w_803_8b;
wire  w_8031_8b;
wire  w_8032_8b;
wire  w_8033_8b;
wire  w_8036_8b;
wire  w_8037_8b;
wire  w_8038_16b;
wire  w_8039_16b;
wire  w_8040_16b;
wire  w_8043_8b;
wire  w_8044_8b;
wire  w_8045_8b;
wire  w_8048_8b;
wire  w_8049_8b;
wire  w_8050_16b;
wire  w_8051_16b;
wire  w_8052_16b;
wire  w_8055_8b;
wire  w_8056_8b;
wire  w_8057_8b;
wire  w_806_8b;
wire  w_8060_8b;
wire  w_8061_8b;
wire  w_8062_16b;
wire  w_8063_16b;
wire  w_8064_16b;
wire  w_8067_8b;
wire  w_8068_8b;
wire  w_8069_8b;
wire  w_807_8b;
wire  w_8072_8b;
wire  w_8073_8b;
wire  w_8074_16b;
wire  w_8075_16b;
wire  w_8076_16b;
wire  w_8079_8b;
wire  w_808_16b;
wire  w_8080_8b;
wire  w_8081_8b;
wire  w_8084_8b;
wire  w_8085_8b;
wire  w_8086_16b;
wire  w_8087_16b;
wire  w_8088_16b;
wire  w_809_16b;
wire  w_8091_8b;
wire  w_8092_8b;
wire  w_8093_8b;
wire  w_8096_8b;
wire  w_8097_8b;
wire  w_8098_16b;
wire  w_8099_16b;
wire  w_810_16b;
wire  w_8100_16b;
wire  w_8103_8b;
wire  w_8104_8b;
wire  w_8105_8b;
wire  w_8108_8b;
wire  w_8109_8b;
wire  w_8110_16b;
wire  w_8111_16b;
wire  w_8112_16b;
wire  w_8115_8b;
wire  w_8116_8b;
wire  w_8117_8b;
wire  w_8120_8b;
wire  w_8121_8b;
wire  w_8122_16b;
wire  w_8123_16b;
wire  w_8124_16b;
wire  w_8127_8b;
wire  w_8128_8b;
wire  w_8129_8b;
wire  w_813_8b;
wire  w_8132_8b;
wire  w_8133_8b;
wire  w_8134_16b;
wire  w_8135_16b;
wire  w_8136_16b;
wire  w_8139_8b;
wire  w_814_8b;
wire  w_8140_8b;
wire  w_8141_8b;
wire  w_8144_8b;
wire  w_8145_8b;
wire  w_8146_16b;
wire  w_8147_16b;
wire  w_8148_16b;
wire  w_815_8b;
wire  w_8151_8b;
wire  w_8152_8b;
wire  w_8153_8b;
wire  w_8156_8b;
wire  w_8157_8b;
wire  w_8158_16b;
wire  w_8159_16b;
wire  w_8160_16b;
wire  w_8163_8b;
wire  w_8164_8b;
wire  w_8165_8b;
wire  w_8168_8b;
wire  w_8169_8b;
wire  w_8170_16b;
wire  w_8171_16b;
wire  w_8172_16b;
wire  w_8175_8b;
wire  w_8176_8b;
wire  w_8177_8b;
wire  w_818_8b;
wire  w_8180_8b;
wire  w_8181_8b;
wire  w_8182_16b;
wire  w_8183_16b;
wire  w_8184_16b;
wire  w_8187_8b;
wire  w_8188_8b;
wire  w_8189_8b;
wire  w_819_8b;
wire  w_8192_8b;
wire  w_8193_8b;
wire  w_8194_16b;
wire  w_8195_16b;
wire  w_8196_16b;
wire  w_8199_8b;
wire  w_820_16b;
wire  w_8200_8b;
wire  w_8201_8b;
wire  w_8204_8b;
wire  w_8205_8b;
wire  w_8206_16b;
wire  w_8207_16b;
wire  w_8208_16b;
wire  w_821_16b;
wire  w_8211_8b;
wire  w_8212_8b;
wire  w_8213_8b;
wire  w_8216_8b;
wire  w_8217_8b;
wire  w_8218_16b;
wire  w_8219_16b;
wire  w_822_16b;
wire  w_8220_16b;
wire  w_8223_8b;
wire  w_8224_8b;
wire  w_8225_8b;
wire  w_8228_8b;
wire  w_8229_8b;
wire  w_8230_16b;
wire  w_8231_16b;
wire  w_8232_16b;
wire  w_8235_8b;
wire  w_8236_8b;
wire  w_8237_8b;
wire  w_8240_8b;
wire  w_8241_8b;
wire  w_8242_16b;
wire  w_8243_16b;
wire  w_8244_16b;
wire  w_8247_8b;
wire  w_8248_8b;
wire  w_8249_8b;
wire  w_825_8b;
wire  w_8252_8b;
wire  w_8253_8b;
wire  w_8254_16b;
wire  w_8255_16b;
wire  w_8256_16b;
wire  w_8259_8b;
wire  w_826_8b;
wire  w_8260_8b;
wire  w_8261_8b;
wire  w_8264_8b;
wire  w_8265_8b;
wire  w_8266_16b;
wire  w_8267_16b;
wire  w_8268_16b;
wire  w_827_8b;
wire  w_8271_8b;
wire  w_8272_8b;
wire  w_8273_8b;
wire  w_8276_8b;
wire  w_8277_8b;
wire  w_8278_16b;
wire  w_8279_16b;
wire  w_8280_16b;
wire  w_8283_8b;
wire  w_8284_8b;
wire  w_8285_8b;
wire  w_8288_8b;
wire  w_8289_8b;
wire  w_8290_16b;
wire  w_8291_16b;
wire  w_8292_16b;
wire  w_8295_8b;
wire  w_8296_8b;
wire  w_8297_8b;
wire  w_830_8b;
wire  w_8300_8b;
wire  w_8301_8b;
wire  w_8302_16b;
wire  w_8303_16b;
wire  w_8304_16b;
wire  w_8307_8b;
wire  w_8308_8b;
wire  w_8309_8b;
wire  w_831_8b;
wire  w_8312_8b;
wire  w_8313_8b;
wire  w_8314_16b;
wire  w_8315_16b;
wire  w_8316_16b;
wire  w_8319_8b;
wire  w_832_16b;
wire  w_8320_8b;
wire  w_8321_8b;
wire  w_8324_8b;
wire  w_8325_8b;
wire  w_8326_16b;
wire  w_8327_16b;
wire  w_8328_16b;
wire  w_833_16b;
wire  w_8331_8b;
wire  w_8332_8b;
wire  w_8333_8b;
wire  w_8336_8b;
wire  w_8337_8b;
wire  w_8338_16b;
wire  w_8339_16b;
wire  w_834_16b;
wire  w_8340_16b;
wire  w_8343_8b;
wire  w_8344_8b;
wire  w_8345_8b;
wire  w_8348_8b;
wire  w_8349_8b;
wire  w_8350_16b;
wire  w_8351_16b;
wire  w_8352_16b;
wire  w_8355_8b;
wire  w_8356_8b;
wire  w_8357_8b;
wire  w_8360_8b;
wire  w_8361_8b;
wire  w_8362_16b;
wire  w_8363_16b;
wire  w_8364_16b;
wire  w_8367_8b;
wire  w_8368_8b;
wire  w_8369_8b;
wire  w_837_8b;
wire  w_8372_8b;
wire  w_8373_8b;
wire  w_8374_16b;
wire  w_8375_16b;
wire  w_8376_16b;
wire  w_8379_8b;
wire  w_838_8b;
wire  w_8380_8b;
wire  w_8381_8b;
wire  w_8384_8b;
wire  w_8385_8b;
wire  w_8386_16b;
wire  w_8387_16b;
wire  w_8388_16b;
wire  w_839_8b;
wire  w_8391_8b;
wire  w_8392_8b;
wire  w_8393_8b;
wire  w_8396_8b;
wire  w_8397_8b;
wire  w_8398_16b;
wire  w_8399_16b;
wire  w_8400_16b;
wire  w_8403_8b;
wire  w_8404_8b;
wire  w_8405_8b;
wire  w_8408_8b;
wire  w_8409_8b;
wire  w_8410_16b;
wire  w_8411_16b;
wire  w_8412_16b;
wire  w_8415_8b;
wire  w_8416_8b;
wire  w_8417_8b;
wire  w_842_8b;
wire  w_8420_8b;
wire  w_8421_8b;
wire  w_8422_16b;
wire  w_8423_16b;
wire  w_8424_16b;
wire  w_8427_8b;
wire  w_8428_8b;
wire  w_8429_8b;
wire  w_843_8b;
wire  w_8432_8b;
wire  w_8433_8b;
wire  w_8434_16b;
wire  w_8435_16b;
wire  w_8436_16b;
wire  w_8439_8b;
wire  w_844_16b;
wire  w_8440_8b;
wire  w_8441_8b;
wire  w_8444_8b;
wire  w_8445_8b;
wire  w_8446_16b;
wire  w_8447_16b;
wire  w_8448_16b;
wire  w_845_16b;
wire  w_8451_8b;
wire  w_8452_8b;
wire  w_8453_8b;
wire  w_8456_8b;
wire  w_8457_8b;
wire  w_8458_16b;
wire  w_8459_16b;
wire  w_846_16b;
wire  w_8460_16b;
wire  w_8463_8b;
wire  w_8464_8b;
wire  w_8465_8b;
wire  w_8468_8b;
wire  w_8469_8b;
wire  w_8470_16b;
wire  w_8471_16b;
wire  w_8472_16b;
wire  w_8475_8b;
wire  w_8476_8b;
wire  w_8477_8b;
wire  w_848_8b;
wire  w_8480_8b;
wire  w_8481_8b;
wire  w_8482_16b;
wire  w_8483_16b;
wire  w_8484_16b;
wire  w_8487_8b;
wire  w_8488_8b;
wire  w_8489_8b;
wire  w_849_8b;
wire  w_8492_8b;
wire  w_8493_8b;
wire  w_8494_16b;
wire  w_8495_16b;
wire  w_8496_16b;
wire  w_8499_8b;
wire  w_850_8b;
wire  w_8500_8b;
wire  w_8501_8b;
wire  w_8504_8b;
wire  w_8505_8b;
wire  w_8506_16b;
wire  w_8507_16b;
wire  w_8508_16b;
wire  w_8511_8b;
wire  w_8512_8b;
wire  w_8513_8b;
wire  w_8516_8b;
wire  w_8517_8b;
wire  w_8518_16b;
wire  w_8519_16b;
wire  w_8520_16b;
wire  w_8523_8b;
wire  w_8524_8b;
wire  w_8525_8b;
wire  w_8528_8b;
wire  w_8529_8b;
wire  w_853_8b;
wire  w_8530_16b;
wire  w_8531_16b;
wire  w_8532_16b;
wire  w_8535_8b;
wire  w_8536_8b;
wire  w_8537_8b;
wire  w_854_8b;
wire  w_8540_8b;
wire  w_8541_8b;
wire  w_8542_16b;
wire  w_8543_16b;
wire  w_8544_16b;
wire  w_8547_8b;
wire  w_8548_8b;
wire  w_8549_8b;
wire  w_855_16b;
wire  w_8552_8b;
wire  w_8553_8b;
wire  w_8554_16b;
wire  w_8555_16b;
wire  w_8556_16b;
wire  w_8559_8b;
wire  w_856_16b;
wire  w_8560_8b;
wire  w_8561_8b;
wire  w_8564_8b;
wire  w_8565_8b;
wire  w_8566_16b;
wire  w_8567_16b;
wire  w_8568_16b;
wire  w_857_16b;
wire  w_8571_8b;
wire  w_8572_8b;
wire  w_8573_8b;
wire  w_8576_8b;
wire  w_8577_8b;
wire  w_8578_16b;
wire  w_8579_16b;
wire  w_8580_16b;
wire  w_8583_8b;
wire  w_8584_8b;
wire  w_8585_8b;
wire  w_8588_8b;
wire  w_8589_8b;
wire  w_8590_16b;
wire  w_8591_16b;
wire  w_8592_16b;
wire  w_8595_8b;
wire  w_8596_8b;
wire  w_8597_8b;
wire  w_860_8b;
wire  w_8600_8b;
wire  w_8601_8b;
wire  w_8602_16b;
wire  w_8603_16b;
wire  w_8604_16b;
wire  w_8607_8b;
wire  w_8608_8b;
wire  w_8609_8b;
wire  w_861_8b;
wire  w_8612_8b;
wire  w_8613_8b;
wire  w_8614_16b;
wire  w_8615_16b;
wire  w_8616_16b;
wire  w_8619_8b;
wire  w_862_8b;
wire  w_8620_8b;
wire  w_8621_8b;
wire  w_8624_8b;
wire  w_8625_8b;
wire  w_8626_16b;
wire  w_8627_16b;
wire  w_8628_16b;
wire  w_8631_8b;
wire  w_8632_8b;
wire  w_8633_8b;
wire  w_8636_8b;
wire  w_8637_8b;
wire  w_8638_16b;
wire  w_8639_16b;
wire  w_8640_16b;
wire  w_8643_8b;
wire  w_8644_8b;
wire  w_8645_8b;
wire  w_8648_8b;
wire  w_8649_8b;
wire  w_865_8b;
wire  w_8650_16b;
wire  w_8651_16b;
wire  w_8652_16b;
wire  w_8655_8b;
wire  w_8656_8b;
wire  w_8657_8b;
wire  w_866_8b;
wire  w_8660_8b;
wire  w_8661_8b;
wire  w_8662_16b;
wire  w_8663_16b;
wire  w_8664_16b;
wire  w_8667_8b;
wire  w_8668_8b;
wire  w_8669_8b;
wire  w_867_16b;
wire  w_8672_8b;
wire  w_8673_8b;
wire  w_8674_16b;
wire  w_8675_16b;
wire  w_8676_16b;
wire  w_8679_8b;
wire  w_868_16b;
wire  w_8680_8b;
wire  w_8681_8b;
wire  w_8684_8b;
wire  w_8685_8b;
wire  w_8686_16b;
wire  w_8687_16b;
wire  w_8688_16b;
wire  w_869_16b;
wire  w_8691_8b;
wire  w_8692_8b;
wire  w_8693_8b;
wire  w_8696_8b;
wire  w_8697_8b;
wire  w_8698_16b;
wire  w_8699_16b;
wire  w_8700_16b;
wire  w_8703_8b;
wire  w_8704_8b;
wire  w_8705_8b;
wire  w_8708_8b;
wire  w_8709_8b;
wire  w_8710_16b;
wire  w_8711_16b;
wire  w_8712_16b;
wire  w_8715_8b;
wire  w_8716_8b;
wire  w_8717_8b;
wire  w_872_8b;
wire  w_8720_8b;
wire  w_8721_8b;
wire  w_8722_16b;
wire  w_8723_16b;
wire  w_8724_16b;
wire  w_8727_8b;
wire  w_8728_8b;
wire  w_8729_8b;
wire  w_873_8b;
wire  w_8732_8b;
wire  w_8733_8b;
wire  w_8734_16b;
wire  w_8735_16b;
wire  w_8736_16b;
wire  w_8739_8b;
wire  w_874_8b;
wire  w_8740_8b;
wire  w_8741_8b;
wire  w_8744_8b;
wire  w_8745_8b;
wire  w_8746_16b;
wire  w_8747_16b;
wire  w_8748_16b;
wire  w_8751_8b;
wire  w_8752_8b;
wire  w_8753_8b;
wire  w_8756_8b;
wire  w_8757_8b;
wire  w_8758_16b;
wire  w_8759_16b;
wire  w_8760_16b;
wire  w_8763_8b;
wire  w_8764_8b;
wire  w_8765_8b;
wire  w_8768_8b;
wire  w_8769_8b;
wire  w_877_8b;
wire  w_8770_16b;
wire  w_8771_16b;
wire  w_8772_16b;
wire  w_8775_8b;
wire  w_8776_8b;
wire  w_8777_8b;
wire  w_878_8b;
wire  w_8780_8b;
wire  w_8781_8b;
wire  w_8782_16b;
wire  w_8783_16b;
wire  w_8784_16b;
wire  w_8787_8b;
wire  w_8788_8b;
wire  w_8789_8b;
wire  w_879_16b;
wire  w_8792_8b;
wire  w_8793_8b;
wire  w_8794_16b;
wire  w_8795_16b;
wire  w_8796_16b;
wire  w_8799_8b;
wire  w_880_16b;
wire  w_8800_8b;
wire  w_8801_8b;
wire  w_8804_8b;
wire  w_8805_8b;
wire  w_8806_16b;
wire  w_8807_16b;
wire  w_8808_16b;
wire  w_881_16b;
wire  w_8811_8b;
wire  w_8812_8b;
wire  w_8813_8b;
wire  w_8816_8b;
wire  w_8817_8b;
wire  w_8818_16b;
wire  w_8819_16b;
wire  w_8820_16b;
wire  w_8823_8b;
wire  w_8824_8b;
wire  w_8825_8b;
wire  w_8828_8b;
wire  w_8829_8b;
wire  w_8830_16b;
wire  w_8831_16b;
wire  w_8832_16b;
wire  w_8835_8b;
wire  w_8836_8b;
wire  w_8837_8b;
wire  w_884_8b;
wire  w_8840_8b;
wire  w_8841_8b;
wire  w_8842_16b;
wire  w_8843_16b;
wire  w_8844_16b;
wire  w_8847_8b;
wire  w_8848_8b;
wire  w_8849_8b;
wire  w_885_8b;
wire  w_8852_8b;
wire  w_8853_8b;
wire  w_8854_16b;
wire  w_8855_16b;
wire  w_8856_16b;
wire  w_8859_8b;
wire  w_886_8b;
wire  w_8860_8b;
wire  w_8861_8b;
wire  w_8864_8b;
wire  w_8865_8b;
wire  w_8866_16b;
wire  w_8867_16b;
wire  w_8868_16b;
wire  w_8871_8b;
wire  w_8872_8b;
wire  w_8873_8b;
wire  w_8876_8b;
wire  w_8877_8b;
wire  w_8878_16b;
wire  w_8879_16b;
wire  w_8880_16b;
wire  w_8883_8b;
wire  w_8884_8b;
wire  w_8885_8b;
wire  w_8888_8b;
wire  w_8889_8b;
wire  w_889_8b;
wire  w_8890_16b;
wire  w_8891_16b;
wire  w_8892_16b;
wire  w_8895_8b;
wire  w_8896_8b;
wire  w_8897_8b;
wire  w_890_8b;
wire  w_8900_8b;
wire  w_8901_8b;
wire  w_8902_16b;
wire  w_8903_16b;
wire  w_8904_16b;
wire  w_8907_8b;
wire  w_8908_8b;
wire  w_8909_8b;
wire  w_891_16b;
wire  w_8912_8b;
wire  w_8913_8b;
wire  w_8914_16b;
wire  w_8915_16b;
wire  w_8916_16b;
wire  w_8919_8b;
wire  w_892_16b;
wire  w_8920_8b;
wire  w_8921_8b;
wire  w_8924_8b;
wire  w_8925_8b;
wire  w_8926_16b;
wire  w_8927_16b;
wire  w_8928_16b;
wire  w_893_16b;
wire  w_8931_8b;
wire  w_8932_8b;
wire  w_8933_8b;
wire  w_8936_8b;
wire  w_8937_8b;
wire  w_8938_16b;
wire  w_8939_16b;
wire  w_8940_16b;
wire  w_8943_8b;
wire  w_8944_8b;
wire  w_8945_8b;
wire  w_8948_8b;
wire  w_8949_8b;
wire  w_8950_16b;
wire  w_8951_16b;
wire  w_8952_16b;
wire  w_8955_8b;
wire  w_8956_8b;
wire  w_8957_8b;
wire  w_896_8b;
wire  w_8960_8b;
wire  w_8961_8b;
wire  w_8962_16b;
wire  w_8963_16b;
wire  w_8964_16b;
wire  w_8967_8b;
wire  w_8968_8b;
wire  w_8969_8b;
wire  w_897_8b;
wire  w_8972_8b;
wire  w_8973_8b;
wire  w_8974_16b;
wire  w_8975_16b;
wire  w_8976_16b;
wire  w_8979_8b;
wire  w_898_8b;
wire  w_8980_8b;
wire  w_8981_8b;
wire  w_8984_8b;
wire  w_8985_8b;
wire  w_8986_16b;
wire  w_8987_16b;
wire  w_8988_16b;
wire  w_8991_8b;
wire  w_8992_8b;
wire  w_8993_8b;
wire  w_8996_8b;
wire  w_8997_8b;
wire  w_8998_16b;
wire  w_8999_16b;
wire  w_9000_16b;
wire  w_9003_8b;
wire  w_9004_8b;
wire  w_9005_8b;
wire  w_9008_8b;
wire  w_9009_8b;
wire  w_901_8b;
wire  w_9010_16b;
wire  w_9011_16b;
wire  w_9012_16b;
wire  w_9015_8b;
wire  w_9016_8b;
wire  w_9017_8b;
wire  w_902_8b;
wire  w_9020_8b;
wire  w_9021_8b;
wire  w_9022_16b;
wire  w_9023_16b;
wire  w_9024_16b;
wire  w_9027_8b;
wire  w_9028_8b;
wire  w_9029_8b;
wire  w_903_16b;
wire  w_9032_8b;
wire  w_9033_8b;
wire  w_9034_16b;
wire  w_9035_16b;
wire  w_9036_16b;
wire  w_9039_8b;
wire  w_904_16b;
wire  w_9040_8b;
wire  w_9041_8b;
wire  w_9044_8b;
wire  w_9045_8b;
wire  w_9046_16b;
wire  w_9047_16b;
wire  w_9048_16b;
wire  w_905_16b;
wire  w_9051_8b;
wire  w_9052_8b;
wire  w_9053_8b;
wire  w_9056_8b;
wire  w_9057_8b;
wire  w_9058_16b;
wire  w_9059_16b;
wire  w_9060_16b;
wire  w_9063_8b;
wire  w_9064_8b;
wire  w_9065_8b;
wire  w_9068_8b;
wire  w_9069_8b;
wire  w_9070_16b;
wire  w_9071_16b;
wire  w_9072_16b;
wire  w_9075_8b;
wire  w_9076_8b;
wire  w_9077_8b;
wire  w_908_8b;
wire  w_9080_8b;
wire  w_9081_8b;
wire  w_9082_16b;
wire  w_9083_16b;
wire  w_9084_16b;
wire  w_9087_8b;
wire  w_9088_8b;
wire  w_9089_8b;
wire  w_909_8b;
wire  w_9092_8b;
wire  w_9093_8b;
wire  w_9094_16b;
wire  w_9095_16b;
wire  w_9096_16b;
wire  w_9099_8b;
wire  w_910_8b;
wire  w_9100_8b;
wire  w_9101_8b;
wire  w_9104_8b;
wire  w_9105_8b;
wire  w_9106_16b;
wire  w_9107_16b;
wire  w_9108_16b;
wire  w_9111_8b;
wire  w_9112_8b;
wire  w_9113_8b;
wire  w_9116_8b;
wire  w_9117_8b;
wire  w_9118_16b;
wire  w_9119_16b;
wire  w_9120_16b;
wire  w_9123_8b;
wire  w_9124_8b;
wire  w_9125_8b;
wire  w_9128_8b;
wire  w_9129_8b;
wire  w_913_8b;
wire  w_9130_16b;
wire  w_9131_16b;
wire  w_9132_16b;
wire  w_9135_8b;
wire  w_9136_8b;
wire  w_9137_8b;
wire  w_914_8b;
wire  w_9140_8b;
wire  w_9141_8b;
wire  w_9142_16b;
wire  w_9143_16b;
wire  w_9144_16b;
wire  w_9147_8b;
wire  w_9148_8b;
wire  w_9149_8b;
wire  w_915_16b;
wire  w_9152_8b;
wire  w_9153_8b;
wire  w_9154_16b;
wire  w_9155_16b;
wire  w_9156_16b;
wire  w_9159_8b;
wire  w_916_16b;
wire  w_9160_8b;
wire  w_9161_8b;
wire  w_9164_8b;
wire  w_9165_8b;
wire  w_9166_16b;
wire  w_9167_16b;
wire  w_9168_16b;
wire  w_917_16b;
wire  w_9171_8b;
wire  w_9172_8b;
wire  w_9173_8b;
wire  w_9176_8b;
wire  w_9177_8b;
wire  w_9178_16b;
wire  w_9179_16b;
wire  w_9180_16b;
wire  w_9183_8b;
wire  w_9184_8b;
wire  w_9185_8b;
wire  w_9188_8b;
wire  w_9189_8b;
wire  w_9190_16b;
wire  w_9191_16b;
wire  w_9192_16b;
wire  w_9195_8b;
wire  w_9196_8b;
wire  w_9197_8b;
wire  w_920_8b;
wire  w_9200_8b;
wire  w_9201_8b;
wire  w_9202_16b;
wire  w_9203_16b;
wire  w_9204_16b;
wire  w_9207_8b;
wire  w_9208_8b;
wire  w_9209_8b;
wire  w_921_8b;
wire  w_9212_8b;
wire  w_9213_8b;
wire  w_9214_16b;
wire  w_9215_16b;
wire  w_9216_16b;
wire  w_9219_8b;
wire  w_922_8b;
wire  w_9220_8b;
wire  w_9221_8b;
wire  w_9224_8b;
wire  w_9225_8b;
wire  w_9226_16b;
wire  w_9227_16b;
wire  w_9228_16b;
wire  w_9231_8b;
wire  w_9232_8b;
wire  w_9233_8b;
wire  w_9236_8b;
wire  w_9237_8b;
wire  w_9238_16b;
wire  w_9239_16b;
wire  w_9240_16b;
wire  w_9243_8b;
wire  w_9244_8b;
wire  w_9245_8b;
wire  w_9248_8b;
wire  w_9249_8b;
wire  w_925_8b;
wire  w_9250_16b;
wire  w_9251_16b;
wire  w_9252_16b;
wire  w_9255_8b;
wire  w_9256_8b;
wire  w_9257_8b;
wire  w_926_8b;
wire  w_9260_8b;
wire  w_9261_8b;
wire  w_9262_16b;
wire  w_9263_16b;
wire  w_9264_16b;
wire  w_9267_8b;
wire  w_9268_8b;
wire  w_9269_8b;
wire  w_927_16b;
wire  w_9272_8b;
wire  w_9273_8b;
wire  w_9274_16b;
wire  w_9275_16b;
wire  w_9276_16b;
wire  w_9279_8b;
wire  w_928_16b;
wire  w_9280_8b;
wire  w_9281_8b;
wire  w_9284_8b;
wire  w_9285_8b;
wire  w_9286_16b;
wire  w_9287_16b;
wire  w_9288_16b;
wire  w_929_16b;
wire  w_9291_8b;
wire  w_9292_8b;
wire  w_9293_8b;
wire  w_9296_8b;
wire  w_9297_8b;
wire  w_9298_16b;
wire  w_9299_16b;
wire  w_9300_16b;
wire  w_9303_8b;
wire  w_9304_8b;
wire  w_9305_8b;
wire  w_9308_8b;
wire  w_9309_8b;
wire  w_9310_16b;
wire  w_9311_16b;
wire  w_9312_16b;
wire  w_9315_8b;
wire  w_9316_8b;
wire  w_9317_8b;
wire  w_932_8b;
wire  w_9320_8b;
wire  w_9321_8b;
wire  w_9322_16b;
wire  w_9323_16b;
wire  w_9324_16b;
wire  w_9327_8b;
wire  w_9328_8b;
wire  w_9329_8b;
wire  w_933_8b;
wire  w_9332_8b;
wire  w_9333_8b;
wire  w_9334_16b;
wire  w_9335_16b;
wire  w_9336_16b;
wire  w_9339_8b;
wire  w_934_8b;
wire  w_9340_8b;
wire  w_9341_8b;
wire  w_9344_8b;
wire  w_9345_8b;
wire  w_9346_16b;
wire  w_9347_16b;
wire  w_9348_16b;
wire  w_9351_8b;
wire  w_9352_8b;
wire  w_9353_8b;
wire  w_9356_8b;
wire  w_9357_8b;
wire  w_9358_16b;
wire  w_9359_16b;
wire  w_9360_16b;
wire  w_9363_8b;
wire  w_9364_8b;
wire  w_9365_8b;
wire  w_9368_8b;
wire  w_9369_8b;
wire  w_937_8b;
wire  w_9370_16b;
wire  w_9371_16b;
wire  w_9372_16b;
wire  w_9375_8b;
wire  w_9376_8b;
wire  w_9377_8b;
wire  w_938_8b;
wire  w_9380_8b;
wire  w_9381_8b;
wire  w_9382_16b;
wire  w_9383_16b;
wire  w_9384_16b;
wire  w_9387_8b;
wire  w_9388_8b;
wire  w_9389_8b;
wire  w_939_16b;
wire  w_9392_8b;
wire  w_9393_8b;
wire  w_9394_16b;
wire  w_9395_16b;
wire  w_9396_16b;
wire  w_9399_8b;
wire  w_940_16b;
wire  w_9400_8b;
wire  w_9401_8b;
wire  w_9404_8b;
wire  w_9405_8b;
wire  w_9406_16b;
wire  w_9407_16b;
wire  w_9408_16b;
wire  w_941_16b;
wire  w_9411_8b;
wire  w_9412_8b;
wire  w_9413_8b;
wire  w_9416_8b;
wire  w_9417_8b;
wire  w_9418_16b;
wire  w_9419_16b;
wire  w_9420_16b;
wire  w_9423_8b;
wire  w_9424_8b;
wire  w_9425_8b;
wire  w_9428_8b;
wire  w_9429_8b;
wire  w_943_8b;
wire  w_9430_16b;
wire  w_9431_16b;
wire  w_9432_16b;
wire  w_9435_8b;
wire  w_9436_8b;
wire  w_9437_8b;
wire  w_944_8b;
wire  w_9440_8b;
wire  w_9441_8b;
wire  w_9442_16b;
wire  w_9443_16b;
wire  w_9444_16b;
wire  w_9447_8b;
wire  w_9448_8b;
wire  w_9449_8b;
wire  w_945_8b;
wire  w_9452_8b;
wire  w_9453_8b;
wire  w_9454_16b;
wire  w_9455_16b;
wire  w_9456_16b;
wire  w_9459_8b;
wire  w_9460_8b;
wire  w_9461_8b;
wire  w_9464_8b;
wire  w_9465_8b;
wire  w_9466_16b;
wire  w_9467_16b;
wire  w_9468_16b;
wire  w_9471_8b;
wire  w_9472_8b;
wire  w_9473_8b;
wire  w_9476_8b;
wire  w_9477_8b;
wire  w_9478_16b;
wire  w_9479_16b;
wire  w_948_8b;
wire  w_9480_16b;
wire  w_9483_8b;
wire  w_9484_8b;
wire  w_9485_8b;
wire  w_9488_8b;
wire  w_9489_8b;
wire  w_949_8b;
wire  w_9490_16b;
wire  w_9491_16b;
wire  w_9492_16b;
wire  w_9495_8b;
wire  w_9496_8b;
wire  w_9497_8b;
wire  w_950_16b;
wire  w_9500_8b;
wire  w_9501_8b;
wire  w_9502_16b;
wire  w_9503_16b;
wire  w_9504_16b;
wire  w_9507_8b;
wire  w_9508_8b;
wire  w_9509_8b;
wire  w_951_16b;
wire  w_9512_8b;
wire  w_9513_8b;
wire  w_9514_16b;
wire  w_9515_16b;
wire  w_9516_16b;
wire  w_9519_8b;
wire  w_952_16b;
wire  w_9520_8b;
wire  w_9521_8b;
wire  w_9524_8b;
wire  w_9525_8b;
wire  w_9526_16b;
wire  w_9527_16b;
wire  w_9528_16b;
wire  w_9531_8b;
wire  w_9532_8b;
wire  w_9533_8b;
wire  w_9536_8b;
wire  w_9537_8b;
wire  w_9538_16b;
wire  w_9539_16b;
wire  w_9540_16b;
wire  w_9543_8b;
wire  w_9544_8b;
wire  w_9545_8b;
wire  w_9548_8b;
wire  w_9549_8b;
wire  w_955_8b;
wire  w_9550_16b;
wire  w_9551_16b;
wire  w_9552_16b;
wire  w_9555_8b;
wire  w_9556_8b;
wire  w_9557_8b;
wire  w_956_8b;
wire  w_9560_8b;
wire  w_9561_8b;
wire  w_9562_16b;
wire  w_9563_16b;
wire  w_9564_16b;
wire  w_9567_8b;
wire  w_9568_8b;
wire  w_9569_8b;
wire  w_957_8b;
wire  w_9572_8b;
wire  w_9573_8b;
wire  w_9574_16b;
wire  w_9575_16b;
wire  w_9576_16b;
wire  w_9579_8b;
wire  w_9580_8b;
wire  w_9581_8b;
wire  w_9584_8b;
wire  w_9585_8b;
wire  w_9586_16b;
wire  w_9587_16b;
wire  w_9588_16b;
wire  w_9591_8b;
wire  w_9592_8b;
wire  w_9593_8b;
wire  w_9596_8b;
wire  w_9597_8b;
wire  w_9598_16b;
wire  w_9599_16b;
wire  w_960_8b;
wire  w_9600_16b;
wire  w_9603_8b;
wire  w_9604_8b;
wire  w_9605_8b;
wire  w_9608_8b;
wire  w_9609_8b;
wire  w_961_8b;
wire  w_9610_16b;
wire  w_9611_16b;
wire  w_9612_16b;
wire  w_9615_8b;
wire  w_9616_8b;
wire  w_9617_8b;
wire  w_962_16b;
wire  w_9620_8b;
wire  w_9621_8b;
wire  w_9622_16b;
wire  w_9623_16b;
wire  w_9624_16b;
wire  w_9627_8b;
wire  w_9628_8b;
wire  w_9629_8b;
wire  w_963_16b;
wire  w_9632_8b;
wire  w_9633_8b;
wire  w_9634_16b;
wire  w_9635_16b;
wire  w_9636_16b;
wire  w_9639_8b;
wire  w_964_16b;
wire  w_9640_8b;
wire  w_9641_8b;
wire  w_9644_8b;
wire  w_9645_8b;
wire  w_9646_16b;
wire  w_9647_16b;
wire  w_9648_16b;
wire  w_9651_8b;
wire  w_9652_8b;
wire  w_9653_8b;
wire  w_9656_8b;
wire  w_9657_8b;
wire  w_9658_16b;
wire  w_9659_16b;
wire  w_9660_16b;
wire  w_9663_8b;
wire  w_9664_8b;
wire  w_9665_8b;
wire  w_9668_8b;
wire  w_9669_8b;
wire  w_967_8b;
wire  w_9670_16b;
wire  w_9671_16b;
wire  w_9672_16b;
wire  w_9675_8b;
wire  w_9676_8b;
wire  w_9677_8b;
wire  w_968_8b;
wire  w_9680_8b;
wire  w_9681_8b;
wire  w_9682_16b;
wire  w_9683_16b;
wire  w_9684_16b;
wire  w_9687_8b;
wire  w_9688_8b;
wire  w_9689_8b;
wire  w_969_8b;
wire  w_9692_8b;
wire  w_9693_8b;
wire  w_9694_16b;
wire  w_9695_16b;
wire  w_9696_16b;
wire  w_9699_8b;
wire  w_9700_8b;
wire  w_9701_8b;
wire  w_9704_8b;
wire  w_9705_8b;
wire  w_9706_16b;
wire  w_9707_16b;
wire  w_9708_16b;
wire  w_9711_8b;
wire  w_9712_8b;
wire  w_9713_8b;
wire  w_9716_8b;
wire  w_9717_8b;
wire  w_9718_16b;
wire  w_9719_16b;
wire  w_972_8b;
wire  w_9720_16b;
wire  w_9723_8b;
wire  w_9724_8b;
wire  w_9725_8b;
wire  w_9728_8b;
wire  w_9729_8b;
wire  w_973_8b;
wire  w_9730_16b;
wire  w_9731_16b;
wire  w_9732_16b;
wire  w_9735_8b;
wire  w_9736_8b;
wire  w_9737_8b;
wire  w_974_16b;
wire  w_9740_8b;
wire  w_9741_8b;
wire  w_9742_16b;
wire  w_9743_16b;
wire  w_9744_16b;
wire  w_9747_8b;
wire  w_9748_8b;
wire  w_9749_8b;
wire  w_975_16b;
wire  w_9752_8b;
wire  w_9753_8b;
wire  w_9754_16b;
wire  w_9755_16b;
wire  w_9756_16b;
wire  w_9759_8b;
wire  w_976_16b;
wire  w_9760_8b;
wire  w_9761_8b;
wire  w_9764_8b;
wire  w_9765_8b;
wire  w_9766_16b;
wire  w_9767_16b;
wire  w_9768_16b;
wire  w_9771_8b;
wire  w_9772_8b;
wire  w_9773_8b;
wire  w_9776_8b;
wire  w_9777_8b;
wire  w_9778_16b;
wire  w_9779_16b;
wire  w_9780_16b;
wire  w_9783_8b;
wire  w_9784_8b;
wire  w_9785_8b;
wire  w_9788_8b;
wire  w_9789_8b;
wire  w_979_8b;
wire  w_9790_16b;
wire  w_9791_16b;
wire  w_9792_16b;
wire  w_9795_8b;
wire  w_9796_8b;
wire  w_9797_8b;
wire  w_980_8b;
wire  w_9800_8b;
wire  w_9801_8b;
wire  w_9802_16b;
wire  w_9803_16b;
wire  w_9804_16b;
wire  w_9807_8b;
wire  w_9808_8b;
wire  w_9809_8b;
wire  w_981_8b;
wire  w_9812_8b;
wire  w_9813_8b;
wire  w_9814_16b;
wire  w_9815_16b;
wire  w_9816_16b;
wire  w_9819_8b;
wire  w_9820_8b;
wire  w_9821_8b;
wire  w_9824_8b;
wire  w_9825_8b;
wire  w_9826_16b;
wire  w_9827_16b;
wire  w_9828_16b;
wire  w_9831_8b;
wire  w_9832_8b;
wire  w_9833_8b;
wire  w_9836_8b;
wire  w_9837_8b;
wire  w_9838_16b;
wire  w_9839_16b;
wire  w_984_8b;
wire  w_9840_16b;
wire  w_9843_8b;
wire  w_9844_8b;
wire  w_9845_8b;
wire  w_9848_8b;
wire  w_9849_8b;
wire  w_985_8b;
wire  w_9850_16b;
wire  w_9851_16b;
wire  w_9852_16b;
wire  w_9855_8b;
wire  w_9856_8b;
wire  w_9857_8b;
wire  w_986_16b;
wire  w_9860_8b;
wire  w_9861_8b;
wire  w_9862_16b;
wire  w_9863_16b;
wire  w_9864_16b;
wire  w_9867_8b;
wire  w_9868_8b;
wire  w_9869_8b;
wire  w_987_16b;
wire  w_9872_8b;
wire  w_9873_8b;
wire  w_9874_16b;
wire  w_9875_16b;
wire  w_9876_16b;
wire  w_9879_8b;
wire  w_988_16b;
wire  w_9880_8b;
wire  w_9881_8b;
wire  w_9884_8b;
wire  w_9885_8b;
wire  w_9886_16b;
wire  w_9887_16b;
wire  w_9888_16b;
wire  w_9891_8b;
wire  w_9892_8b;
wire  w_9893_8b;
wire  w_9896_8b;
wire  w_9897_8b;
wire  w_9898_16b;
wire  w_9899_16b;
wire  w_9900_16b;
wire  w_9903_8b;
wire  w_9904_8b;
wire  w_9905_8b;
wire  w_9908_8b;
wire  w_9909_8b;
wire  w_991_8b;
wire  w_9910_16b;
wire  w_9911_16b;
wire  w_9912_16b;
wire  w_9915_8b;
wire  w_9916_8b;
wire  w_9917_8b;
wire  w_992_8b;
wire  w_9920_8b;
wire  w_9921_8b;
wire  w_9922_16b;
wire  w_9923_16b;
wire  w_9924_16b;
wire  w_9927_8b;
wire  w_9928_8b;
wire  w_9929_8b;
wire  w_993_8b;
wire  w_9932_8b;
wire  w_9933_8b;
wire  w_9934_16b;
wire  w_9935_16b;
wire  w_9936_16b;
wire  w_9939_8b;
wire  w_9940_8b;
wire  w_9941_8b;
wire  w_9944_8b;
wire  w_9945_8b;
wire  w_9946_16b;
wire  w_9947_16b;
wire  w_9948_16b;
wire  w_9951_8b;
wire  w_9952_8b;
wire  w_9953_8b;
wire  w_9956_8b;
wire  w_9957_8b;
wire  w_9958_16b;
wire  w_9959_16b;
wire  w_996_8b;
wire  w_9960_16b;
wire  w_9963_8b;
wire  w_9964_8b;
wire  w_9965_8b;
wire  w_9968_8b;
wire  w_9969_8b;
wire  w_997_8b;
wire  w_9970_16b;
wire  w_9971_16b;
wire  w_9972_16b;
wire  w_9975_8b;
wire  w_9976_8b;
wire  w_9977_8b;
wire  w_998_16b;
wire  w_9980_8b;
wire  w_9981_8b;
wire  w_9982_16b;
wire  w_9983_16b;
wire  w_9984_16b;
wire  w_9987_8b;
wire  w_9988_8b;
wire  w_9989_8b;
wire  w_999_16b;
wire  w_9992_8b;
wire  w_9993_8b;
wire  w_9994_16b;
wire  w_9995_16b;
wire  w_9996_16b;
wire  w_9999_8b;
wire  w_SAD_2a163_0_16b;
wire  w_SAD_2a163_1_16b;
wire  w_SAD_2a163_10_16b;
wire  w_SAD_2a163_11_16b;
wire  w_SAD_2a163_12_16b;
wire  w_SAD_2a163_13_16b;
wire  w_SAD_2a163_14_16b;
wire  w_SAD_2a163_15_16b;
wire  w_SAD_2a163_2_16b;
wire  w_SAD_2a163_3_16b;
wire  w_SAD_2a163_4_16b;
wire  w_SAD_2a163_5_16b;
wire  w_SAD_2a163_6_16b;
wire  w_SAD_2a163_7_16b;
wire  w_SAD_2a163_8_16b;
wire  w_SAD_2a163_9_16b;
wire  w_hw_output_2_stencil_0_0_16b;
wire  w_hw_output_2_stencil_packed_8b;
wire  w_offset_2_0a160_0_16b;
wire  w_offset_2_1a159_0_16b;
wire  w_p2_offset_l1_0a162_0_16b;
wire  w_p2_offset_l1_0a162_1_16b;
wire  w_p2_offset_l1_0a162_2_16b;
wire  w_p2_offset_l1_0a162_3_16b;
wire  w_p2_offset_l1_1a161_0_16b;
wire  w_p2_offset_l1_1a161_1_16b;
wire  w_p2_offset_l1_1a161_2_16b;
wire  w_p2_offset_l1_1a161_3_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_hw_output_2_stencil_packed_8b = w_hw_output_2_stencil_packed_8b;
assign  r0_w_SAD_2a163_0_16b  =  w_666_16b ;
assign  r0_w_SAD_2a163_1_16b  =  w_1427_16b ;
assign  r0_w_SAD_2a163_10_16b  =  w_8339_16b ;
assign  r0_w_SAD_2a163_11_16b  =  w_9107_16b ;
assign  r0_w_SAD_2a163_12_16b  =  w_9875_16b ;
assign  r0_w_SAD_2a163_13_16b  =  w_10643_16b ;
assign  r0_w_SAD_2a163_14_16b  =  w_11411_16b ;
assign  r0_w_SAD_2a163_15_16b  =  w_12179_16b ;
assign  r0_w_SAD_2a163_2_16b  =  w_2195_16b ;
assign  r0_w_SAD_2a163_3_16b  =  w_2963_16b ;
assign  r0_w_SAD_2a163_4_16b  =  w_3731_16b ;
assign  r0_w_SAD_2a163_5_16b  =  w_4499_16b ;
assign  r0_w_SAD_2a163_6_16b  =  w_5267_16b ;
assign  r0_w_SAD_2a163_7_16b  =  w_6035_16b ;
assign  r0_w_SAD_2a163_8_16b  =  w_6803_16b ;
assign  r0_w_SAD_2a163_9_16b  =  w_7571_16b ;
assign  r0_w_offset_2_0a160_0_16b  =  w_13084_8b ;
assign  r0_w_offset_2_1a159_0_16b  =  w_13085_16b ;
assign  r0_w_p2_offset_l1_0a162_0_16b  =  w_12942_8b ;
assign  r0_w_p2_offset_l1_0a162_1_16b  =  w_12978_8b ;
assign  r0_w_p2_offset_l1_0a162_2_16b  =  w_13014_8b ;
assign  r0_w_p2_offset_l1_0a162_3_16b  =  w_13050_8b ;
assign  r0_w_p2_offset_l1_1a161_0_16b  =  w_12943_16b ;
assign  r0_w_p2_offset_l1_1a161_1_16b  =  w_12979_16b ;
assign  r0_w_p2_offset_l1_1a161_2_16b  =  w_13015_16b ;
assign  r0_w_p2_offset_l1_1a161_3_16b  =  w_13051_16b ;
assign  r10_w_SAD_2a163_0_16b  =  w_785_16b ;
assign  r10_w_SAD_2a163_1_16b  =  w_1547_16b ;
assign  r10_w_SAD_2a163_10_16b  =  w_8459_16b ;
assign  r10_w_SAD_2a163_11_16b  =  w_9227_16b ;
assign  r10_w_SAD_2a163_12_16b  =  w_9995_16b ;
assign  r10_w_SAD_2a163_13_16b  =  w_10763_16b ;
assign  r10_w_SAD_2a163_14_16b  =  w_11531_16b ;
assign  r10_w_SAD_2a163_15_16b  =  w_12299_16b ;
assign  r10_w_SAD_2a163_2_16b  =  w_2315_16b ;
assign  r10_w_SAD_2a163_3_16b  =  w_3083_16b ;
assign  r10_w_SAD_2a163_4_16b  =  w_3851_16b ;
assign  r10_w_SAD_2a163_5_16b  =  w_4619_16b ;
assign  r10_w_SAD_2a163_6_16b  =  w_5387_16b ;
assign  r10_w_SAD_2a163_7_16b  =  w_6155_16b ;
assign  r10_w_SAD_2a163_8_16b  =  w_6923_16b ;
assign  r10_w_SAD_2a163_9_16b  =  w_7691_16b ;
assign  r11_w_SAD_2a163_0_16b  =  w_797_16b ;
assign  r11_w_SAD_2a163_1_16b  =  w_1559_16b ;
assign  r11_w_SAD_2a163_10_16b  =  w_8471_16b ;
assign  r11_w_SAD_2a163_11_16b  =  w_9239_16b ;
assign  r11_w_SAD_2a163_12_16b  =  w_10007_16b ;
assign  r11_w_SAD_2a163_13_16b  =  w_10775_16b ;
assign  r11_w_SAD_2a163_14_16b  =  w_11543_16b ;
assign  r11_w_SAD_2a163_15_16b  =  w_12311_16b ;
assign  r11_w_SAD_2a163_2_16b  =  w_2327_16b ;
assign  r11_w_SAD_2a163_3_16b  =  w_3095_16b ;
assign  r11_w_SAD_2a163_4_16b  =  w_3863_16b ;
assign  r11_w_SAD_2a163_5_16b  =  w_4631_16b ;
assign  r11_w_SAD_2a163_6_16b  =  w_5399_16b ;
assign  r11_w_SAD_2a163_7_16b  =  w_6167_16b ;
assign  r11_w_SAD_2a163_8_16b  =  w_6935_16b ;
assign  r11_w_SAD_2a163_9_16b  =  w_7703_16b ;
assign  r12_w_SAD_2a163_0_16b  =  w_809_16b ;
assign  r12_w_SAD_2a163_1_16b  =  w_1571_16b ;
assign  r12_w_SAD_2a163_10_16b  =  w_8483_16b ;
assign  r12_w_SAD_2a163_11_16b  =  w_9251_16b ;
assign  r12_w_SAD_2a163_12_16b  =  w_10019_16b ;
assign  r12_w_SAD_2a163_13_16b  =  w_10787_16b ;
assign  r12_w_SAD_2a163_14_16b  =  w_11555_16b ;
assign  r12_w_SAD_2a163_15_16b  =  w_12323_16b ;
assign  r12_w_SAD_2a163_2_16b  =  w_2339_16b ;
assign  r12_w_SAD_2a163_3_16b  =  w_3107_16b ;
assign  r12_w_SAD_2a163_4_16b  =  w_3875_16b ;
assign  r12_w_SAD_2a163_5_16b  =  w_4643_16b ;
assign  r12_w_SAD_2a163_6_16b  =  w_5411_16b ;
assign  r12_w_SAD_2a163_7_16b  =  w_6179_16b ;
assign  r12_w_SAD_2a163_8_16b  =  w_6947_16b ;
assign  r12_w_SAD_2a163_9_16b  =  w_7715_16b ;
assign  r13_w_SAD_2a163_0_16b  =  w_821_16b ;
assign  r13_w_SAD_2a163_1_16b  =  w_1583_16b ;
assign  r13_w_SAD_2a163_10_16b  =  w_8495_16b ;
assign  r13_w_SAD_2a163_11_16b  =  w_9263_16b ;
assign  r13_w_SAD_2a163_12_16b  =  w_10031_16b ;
assign  r13_w_SAD_2a163_13_16b  =  w_10799_16b ;
assign  r13_w_SAD_2a163_14_16b  =  w_11567_16b ;
assign  r13_w_SAD_2a163_15_16b  =  w_12335_16b ;
assign  r13_w_SAD_2a163_2_16b  =  w_2351_16b ;
assign  r13_w_SAD_2a163_3_16b  =  w_3119_16b ;
assign  r13_w_SAD_2a163_4_16b  =  w_3887_16b ;
assign  r13_w_SAD_2a163_5_16b  =  w_4655_16b ;
assign  r13_w_SAD_2a163_6_16b  =  w_5423_16b ;
assign  r13_w_SAD_2a163_7_16b  =  w_6191_16b ;
assign  r13_w_SAD_2a163_8_16b  =  w_6959_16b ;
assign  r13_w_SAD_2a163_9_16b  =  w_7727_16b ;
assign  r14_w_SAD_2a163_0_16b  =  w_833_16b ;
assign  r14_w_SAD_2a163_1_16b  =  w_1595_16b ;
assign  r14_w_SAD_2a163_10_16b  =  w_8507_16b ;
assign  r14_w_SAD_2a163_11_16b  =  w_9275_16b ;
assign  r14_w_SAD_2a163_12_16b  =  w_10043_16b ;
assign  r14_w_SAD_2a163_13_16b  =  w_10811_16b ;
assign  r14_w_SAD_2a163_14_16b  =  w_11579_16b ;
assign  r14_w_SAD_2a163_15_16b  =  w_12347_16b ;
assign  r14_w_SAD_2a163_2_16b  =  w_2363_16b ;
assign  r14_w_SAD_2a163_3_16b  =  w_3131_16b ;
assign  r14_w_SAD_2a163_4_16b  =  w_3899_16b ;
assign  r14_w_SAD_2a163_5_16b  =  w_4667_16b ;
assign  r14_w_SAD_2a163_6_16b  =  w_5435_16b ;
assign  r14_w_SAD_2a163_7_16b  =  w_6203_16b ;
assign  r14_w_SAD_2a163_8_16b  =  w_6971_16b ;
assign  r14_w_SAD_2a163_9_16b  =  w_7739_16b ;
assign  r15_w_SAD_2a163_0_16b  =  w_845_16b ;
assign  r15_w_SAD_2a163_1_16b  =  w_1607_16b ;
assign  r15_w_SAD_2a163_10_16b  =  w_8519_16b ;
assign  r15_w_SAD_2a163_11_16b  =  w_9287_16b ;
assign  r15_w_SAD_2a163_12_16b  =  w_10055_16b ;
assign  r15_w_SAD_2a163_13_16b  =  w_10823_16b ;
assign  r15_w_SAD_2a163_14_16b  =  w_11591_16b ;
assign  r15_w_SAD_2a163_15_16b  =  w_12359_16b ;
assign  r15_w_SAD_2a163_2_16b  =  w_2375_16b ;
assign  r15_w_SAD_2a163_3_16b  =  w_3143_16b ;
assign  r15_w_SAD_2a163_4_16b  =  w_3911_16b ;
assign  r15_w_SAD_2a163_5_16b  =  w_4679_16b ;
assign  r15_w_SAD_2a163_6_16b  =  w_5447_16b ;
assign  r15_w_SAD_2a163_7_16b  =  w_6215_16b ;
assign  r15_w_SAD_2a163_8_16b  =  w_6983_16b ;
assign  r15_w_SAD_2a163_9_16b  =  w_7751_16b ;
assign  r16_w_SAD_2a163_0_16b  =  w_856_16b ;
assign  r16_w_SAD_2a163_1_16b  =  w_1619_16b ;
assign  r16_w_SAD_2a163_10_16b  =  w_8531_16b ;
assign  r16_w_SAD_2a163_11_16b  =  w_9299_16b ;
assign  r16_w_SAD_2a163_12_16b  =  w_10067_16b ;
assign  r16_w_SAD_2a163_13_16b  =  w_10835_16b ;
assign  r16_w_SAD_2a163_14_16b  =  w_11603_16b ;
assign  r16_w_SAD_2a163_15_16b  =  w_12371_16b ;
assign  r16_w_SAD_2a163_2_16b  =  w_2387_16b ;
assign  r16_w_SAD_2a163_3_16b  =  w_3155_16b ;
assign  r16_w_SAD_2a163_4_16b  =  w_3923_16b ;
assign  r16_w_SAD_2a163_5_16b  =  w_4691_16b ;
assign  r16_w_SAD_2a163_6_16b  =  w_5459_16b ;
assign  r16_w_SAD_2a163_7_16b  =  w_6227_16b ;
assign  r16_w_SAD_2a163_8_16b  =  w_6995_16b ;
assign  r16_w_SAD_2a163_9_16b  =  w_7763_16b ;
assign  r17_w_SAD_2a163_0_16b  =  w_868_16b ;
assign  r17_w_SAD_2a163_1_16b  =  w_1631_16b ;
assign  r17_w_SAD_2a163_10_16b  =  w_8543_16b ;
assign  r17_w_SAD_2a163_11_16b  =  w_9311_16b ;
assign  r17_w_SAD_2a163_12_16b  =  w_10079_16b ;
assign  r17_w_SAD_2a163_13_16b  =  w_10847_16b ;
assign  r17_w_SAD_2a163_14_16b  =  w_11615_16b ;
assign  r17_w_SAD_2a163_15_16b  =  w_12383_16b ;
assign  r17_w_SAD_2a163_2_16b  =  w_2399_16b ;
assign  r17_w_SAD_2a163_3_16b  =  w_3167_16b ;
assign  r17_w_SAD_2a163_4_16b  =  w_3935_16b ;
assign  r17_w_SAD_2a163_5_16b  =  w_4703_16b ;
assign  r17_w_SAD_2a163_6_16b  =  w_5471_16b ;
assign  r17_w_SAD_2a163_7_16b  =  w_6239_16b ;
assign  r17_w_SAD_2a163_8_16b  =  w_7007_16b ;
assign  r17_w_SAD_2a163_9_16b  =  w_7775_16b ;
assign  r18_w_SAD_2a163_0_16b  =  w_880_16b ;
assign  r18_w_SAD_2a163_1_16b  =  w_1643_16b ;
assign  r18_w_SAD_2a163_10_16b  =  w_8555_16b ;
assign  r18_w_SAD_2a163_11_16b  =  w_9323_16b ;
assign  r18_w_SAD_2a163_12_16b  =  w_10091_16b ;
assign  r18_w_SAD_2a163_13_16b  =  w_10859_16b ;
assign  r18_w_SAD_2a163_14_16b  =  w_11627_16b ;
assign  r18_w_SAD_2a163_15_16b  =  w_12395_16b ;
assign  r18_w_SAD_2a163_2_16b  =  w_2411_16b ;
assign  r18_w_SAD_2a163_3_16b  =  w_3179_16b ;
assign  r18_w_SAD_2a163_4_16b  =  w_3947_16b ;
assign  r18_w_SAD_2a163_5_16b  =  w_4715_16b ;
assign  r18_w_SAD_2a163_6_16b  =  w_5483_16b ;
assign  r18_w_SAD_2a163_7_16b  =  w_6251_16b ;
assign  r18_w_SAD_2a163_8_16b  =  w_7019_16b ;
assign  r18_w_SAD_2a163_9_16b  =  w_7787_16b ;
assign  r19_w_SAD_2a163_0_16b  =  w_892_16b ;
assign  r19_w_SAD_2a163_1_16b  =  w_1655_16b ;
assign  r19_w_SAD_2a163_10_16b  =  w_8567_16b ;
assign  r19_w_SAD_2a163_11_16b  =  w_9335_16b ;
assign  r19_w_SAD_2a163_12_16b  =  w_10103_16b ;
assign  r19_w_SAD_2a163_13_16b  =  w_10871_16b ;
assign  r19_w_SAD_2a163_14_16b  =  w_11639_16b ;
assign  r19_w_SAD_2a163_15_16b  =  w_12407_16b ;
assign  r19_w_SAD_2a163_2_16b  =  w_2423_16b ;
assign  r19_w_SAD_2a163_3_16b  =  w_3191_16b ;
assign  r19_w_SAD_2a163_4_16b  =  w_3959_16b ;
assign  r19_w_SAD_2a163_5_16b  =  w_4727_16b ;
assign  r19_w_SAD_2a163_6_16b  =  w_5495_16b ;
assign  r19_w_SAD_2a163_7_16b  =  w_6263_16b ;
assign  r19_w_SAD_2a163_8_16b  =  w_7031_16b ;
assign  r19_w_SAD_2a163_9_16b  =  w_7799_16b ;
assign  r1_w_SAD_2a163_0_16b  =  w_678_16b ;
assign  r1_w_SAD_2a163_1_16b  =  w_1439_16b ;
assign  r1_w_SAD_2a163_10_16b  =  w_8351_16b ;
assign  r1_w_SAD_2a163_11_16b  =  w_9119_16b ;
assign  r1_w_SAD_2a163_12_16b  =  w_9887_16b ;
assign  r1_w_SAD_2a163_13_16b  =  w_10655_16b ;
assign  r1_w_SAD_2a163_14_16b  =  w_11423_16b ;
assign  r1_w_SAD_2a163_15_16b  =  w_12191_16b ;
assign  r1_w_SAD_2a163_2_16b  =  w_2207_16b ;
assign  r1_w_SAD_2a163_3_16b  =  w_2975_16b ;
assign  r1_w_SAD_2a163_4_16b  =  w_3743_16b ;
assign  r1_w_SAD_2a163_5_16b  =  w_4511_16b ;
assign  r1_w_SAD_2a163_6_16b  =  w_5279_16b ;
assign  r1_w_SAD_2a163_7_16b  =  w_6047_16b ;
assign  r1_w_SAD_2a163_8_16b  =  w_6815_16b ;
assign  r1_w_SAD_2a163_9_16b  =  w_7583_16b ;
assign  r1_w_offset_2_0a160_0_16b  =  w_13091_8b ;
assign  r1_w_offset_2_1a159_0_16b  =  w_13092_16b ;
assign  r1_w_p2_offset_l1_0a162_0_16b  =  w_12951_8b ;
assign  r1_w_p2_offset_l1_0a162_1_16b  =  w_12987_8b ;
assign  r1_w_p2_offset_l1_0a162_2_16b  =  w_13023_8b ;
assign  r1_w_p2_offset_l1_0a162_3_16b  =  w_13059_8b ;
assign  r1_w_p2_offset_l1_1a161_0_16b  =  w_12952_16b ;
assign  r1_w_p2_offset_l1_1a161_1_16b  =  w_12988_16b ;
assign  r1_w_p2_offset_l1_1a161_2_16b  =  w_13024_16b ;
assign  r1_w_p2_offset_l1_1a161_3_16b  =  w_13060_16b ;
assign  r20_w_SAD_2a163_0_16b  =  w_904_16b ;
assign  r20_w_SAD_2a163_1_16b  =  w_1667_16b ;
assign  r20_w_SAD_2a163_10_16b  =  w_8579_16b ;
assign  r20_w_SAD_2a163_11_16b  =  w_9347_16b ;
assign  r20_w_SAD_2a163_12_16b  =  w_10115_16b ;
assign  r20_w_SAD_2a163_13_16b  =  w_10883_16b ;
assign  r20_w_SAD_2a163_14_16b  =  w_11651_16b ;
assign  r20_w_SAD_2a163_15_16b  =  w_12419_16b ;
assign  r20_w_SAD_2a163_2_16b  =  w_2435_16b ;
assign  r20_w_SAD_2a163_3_16b  =  w_3203_16b ;
assign  r20_w_SAD_2a163_4_16b  =  w_3971_16b ;
assign  r20_w_SAD_2a163_5_16b  =  w_4739_16b ;
assign  r20_w_SAD_2a163_6_16b  =  w_5507_16b ;
assign  r20_w_SAD_2a163_7_16b  =  w_6275_16b ;
assign  r20_w_SAD_2a163_8_16b  =  w_7043_16b ;
assign  r20_w_SAD_2a163_9_16b  =  w_7811_16b ;
assign  r21_w_SAD_2a163_0_16b  =  w_916_16b ;
assign  r21_w_SAD_2a163_1_16b  =  w_1679_16b ;
assign  r21_w_SAD_2a163_10_16b  =  w_8591_16b ;
assign  r21_w_SAD_2a163_11_16b  =  w_9359_16b ;
assign  r21_w_SAD_2a163_12_16b  =  w_10127_16b ;
assign  r21_w_SAD_2a163_13_16b  =  w_10895_16b ;
assign  r21_w_SAD_2a163_14_16b  =  w_11663_16b ;
assign  r21_w_SAD_2a163_15_16b  =  w_12431_16b ;
assign  r21_w_SAD_2a163_2_16b  =  w_2447_16b ;
assign  r21_w_SAD_2a163_3_16b  =  w_3215_16b ;
assign  r21_w_SAD_2a163_4_16b  =  w_3983_16b ;
assign  r21_w_SAD_2a163_5_16b  =  w_4751_16b ;
assign  r21_w_SAD_2a163_6_16b  =  w_5519_16b ;
assign  r21_w_SAD_2a163_7_16b  =  w_6287_16b ;
assign  r21_w_SAD_2a163_8_16b  =  w_7055_16b ;
assign  r21_w_SAD_2a163_9_16b  =  w_7823_16b ;
assign  r22_w_SAD_2a163_0_16b  =  w_928_16b ;
assign  r22_w_SAD_2a163_1_16b  =  w_1691_16b ;
assign  r22_w_SAD_2a163_10_16b  =  w_8603_16b ;
assign  r22_w_SAD_2a163_11_16b  =  w_9371_16b ;
assign  r22_w_SAD_2a163_12_16b  =  w_10139_16b ;
assign  r22_w_SAD_2a163_13_16b  =  w_10907_16b ;
assign  r22_w_SAD_2a163_14_16b  =  w_11675_16b ;
assign  r22_w_SAD_2a163_15_16b  =  w_12443_16b ;
assign  r22_w_SAD_2a163_2_16b  =  w_2459_16b ;
assign  r22_w_SAD_2a163_3_16b  =  w_3227_16b ;
assign  r22_w_SAD_2a163_4_16b  =  w_3995_16b ;
assign  r22_w_SAD_2a163_5_16b  =  w_4763_16b ;
assign  r22_w_SAD_2a163_6_16b  =  w_5531_16b ;
assign  r22_w_SAD_2a163_7_16b  =  w_6299_16b ;
assign  r22_w_SAD_2a163_8_16b  =  w_7067_16b ;
assign  r22_w_SAD_2a163_9_16b  =  w_7835_16b ;
assign  r23_w_SAD_2a163_0_16b  =  w_940_16b ;
assign  r23_w_SAD_2a163_1_16b  =  w_1703_16b ;
assign  r23_w_SAD_2a163_10_16b  =  w_8615_16b ;
assign  r23_w_SAD_2a163_11_16b  =  w_9383_16b ;
assign  r23_w_SAD_2a163_12_16b  =  w_10151_16b ;
assign  r23_w_SAD_2a163_13_16b  =  w_10919_16b ;
assign  r23_w_SAD_2a163_14_16b  =  w_11687_16b ;
assign  r23_w_SAD_2a163_15_16b  =  w_12455_16b ;
assign  r23_w_SAD_2a163_2_16b  =  w_2471_16b ;
assign  r23_w_SAD_2a163_3_16b  =  w_3239_16b ;
assign  r23_w_SAD_2a163_4_16b  =  w_4007_16b ;
assign  r23_w_SAD_2a163_5_16b  =  w_4775_16b ;
assign  r23_w_SAD_2a163_6_16b  =  w_5543_16b ;
assign  r23_w_SAD_2a163_7_16b  =  w_6311_16b ;
assign  r23_w_SAD_2a163_8_16b  =  w_7079_16b ;
assign  r23_w_SAD_2a163_9_16b  =  w_7847_16b ;
assign  r24_w_SAD_2a163_0_16b  =  w_951_16b ;
assign  r24_w_SAD_2a163_1_16b  =  w_1715_16b ;
assign  r24_w_SAD_2a163_10_16b  =  w_8627_16b ;
assign  r24_w_SAD_2a163_11_16b  =  w_9395_16b ;
assign  r24_w_SAD_2a163_12_16b  =  w_10163_16b ;
assign  r24_w_SAD_2a163_13_16b  =  w_10931_16b ;
assign  r24_w_SAD_2a163_14_16b  =  w_11699_16b ;
assign  r24_w_SAD_2a163_15_16b  =  w_12467_16b ;
assign  r24_w_SAD_2a163_2_16b  =  w_2483_16b ;
assign  r24_w_SAD_2a163_3_16b  =  w_3251_16b ;
assign  r24_w_SAD_2a163_4_16b  =  w_4019_16b ;
assign  r24_w_SAD_2a163_5_16b  =  w_4787_16b ;
assign  r24_w_SAD_2a163_6_16b  =  w_5555_16b ;
assign  r24_w_SAD_2a163_7_16b  =  w_6323_16b ;
assign  r24_w_SAD_2a163_8_16b  =  w_7091_16b ;
assign  r24_w_SAD_2a163_9_16b  =  w_7859_16b ;
assign  r25_w_SAD_2a163_0_16b  =  w_963_16b ;
assign  r25_w_SAD_2a163_1_16b  =  w_1727_16b ;
assign  r25_w_SAD_2a163_10_16b  =  w_8639_16b ;
assign  r25_w_SAD_2a163_11_16b  =  w_9407_16b ;
assign  r25_w_SAD_2a163_12_16b  =  w_10175_16b ;
assign  r25_w_SAD_2a163_13_16b  =  w_10943_16b ;
assign  r25_w_SAD_2a163_14_16b  =  w_11711_16b ;
assign  r25_w_SAD_2a163_15_16b  =  w_12479_16b ;
assign  r25_w_SAD_2a163_2_16b  =  w_2495_16b ;
assign  r25_w_SAD_2a163_3_16b  =  w_3263_16b ;
assign  r25_w_SAD_2a163_4_16b  =  w_4031_16b ;
assign  r25_w_SAD_2a163_5_16b  =  w_4799_16b ;
assign  r25_w_SAD_2a163_6_16b  =  w_5567_16b ;
assign  r25_w_SAD_2a163_7_16b  =  w_6335_16b ;
assign  r25_w_SAD_2a163_8_16b  =  w_7103_16b ;
assign  r25_w_SAD_2a163_9_16b  =  w_7871_16b ;
assign  r26_w_SAD_2a163_0_16b  =  w_975_16b ;
assign  r26_w_SAD_2a163_1_16b  =  w_1739_16b ;
assign  r26_w_SAD_2a163_10_16b  =  w_8651_16b ;
assign  r26_w_SAD_2a163_11_16b  =  w_9419_16b ;
assign  r26_w_SAD_2a163_12_16b  =  w_10187_16b ;
assign  r26_w_SAD_2a163_13_16b  =  w_10955_16b ;
assign  r26_w_SAD_2a163_14_16b  =  w_11723_16b ;
assign  r26_w_SAD_2a163_15_16b  =  w_12491_16b ;
assign  r26_w_SAD_2a163_2_16b  =  w_2507_16b ;
assign  r26_w_SAD_2a163_3_16b  =  w_3275_16b ;
assign  r26_w_SAD_2a163_4_16b  =  w_4043_16b ;
assign  r26_w_SAD_2a163_5_16b  =  w_4811_16b ;
assign  r26_w_SAD_2a163_6_16b  =  w_5579_16b ;
assign  r26_w_SAD_2a163_7_16b  =  w_6347_16b ;
assign  r26_w_SAD_2a163_8_16b  =  w_7115_16b ;
assign  r26_w_SAD_2a163_9_16b  =  w_7883_16b ;
assign  r27_w_SAD_2a163_0_16b  =  w_987_16b ;
assign  r27_w_SAD_2a163_1_16b  =  w_1751_16b ;
assign  r27_w_SAD_2a163_10_16b  =  w_8663_16b ;
assign  r27_w_SAD_2a163_11_16b  =  w_9431_16b ;
assign  r27_w_SAD_2a163_12_16b  =  w_10199_16b ;
assign  r27_w_SAD_2a163_13_16b  =  w_10967_16b ;
assign  r27_w_SAD_2a163_14_16b  =  w_11735_16b ;
assign  r27_w_SAD_2a163_15_16b  =  w_12503_16b ;
assign  r27_w_SAD_2a163_2_16b  =  w_2519_16b ;
assign  r27_w_SAD_2a163_3_16b  =  w_3287_16b ;
assign  r27_w_SAD_2a163_4_16b  =  w_4055_16b ;
assign  r27_w_SAD_2a163_5_16b  =  w_4823_16b ;
assign  r27_w_SAD_2a163_6_16b  =  w_5591_16b ;
assign  r27_w_SAD_2a163_7_16b  =  w_6359_16b ;
assign  r27_w_SAD_2a163_8_16b  =  w_7127_16b ;
assign  r27_w_SAD_2a163_9_16b  =  w_7895_16b ;
assign  r28_w_SAD_2a163_0_16b  =  w_999_16b ;
assign  r28_w_SAD_2a163_1_16b  =  w_1763_16b ;
assign  r28_w_SAD_2a163_10_16b  =  w_8675_16b ;
assign  r28_w_SAD_2a163_11_16b  =  w_9443_16b ;
assign  r28_w_SAD_2a163_12_16b  =  w_10211_16b ;
assign  r28_w_SAD_2a163_13_16b  =  w_10979_16b ;
assign  r28_w_SAD_2a163_14_16b  =  w_11747_16b ;
assign  r28_w_SAD_2a163_15_16b  =  w_12515_16b ;
assign  r28_w_SAD_2a163_2_16b  =  w_2531_16b ;
assign  r28_w_SAD_2a163_3_16b  =  w_3299_16b ;
assign  r28_w_SAD_2a163_4_16b  =  w_4067_16b ;
assign  r28_w_SAD_2a163_5_16b  =  w_4835_16b ;
assign  r28_w_SAD_2a163_6_16b  =  w_5603_16b ;
assign  r28_w_SAD_2a163_7_16b  =  w_6371_16b ;
assign  r28_w_SAD_2a163_8_16b  =  w_7139_16b ;
assign  r28_w_SAD_2a163_9_16b  =  w_7907_16b ;
assign  r29_w_SAD_2a163_0_16b  =  w_1011_16b ;
assign  r29_w_SAD_2a163_1_16b  =  w_1775_16b ;
assign  r29_w_SAD_2a163_10_16b  =  w_8687_16b ;
assign  r29_w_SAD_2a163_11_16b  =  w_9455_16b ;
assign  r29_w_SAD_2a163_12_16b  =  w_10223_16b ;
assign  r29_w_SAD_2a163_13_16b  =  w_10991_16b ;
assign  r29_w_SAD_2a163_14_16b  =  w_11759_16b ;
assign  r29_w_SAD_2a163_15_16b  =  w_12527_16b ;
assign  r29_w_SAD_2a163_2_16b  =  w_2543_16b ;
assign  r29_w_SAD_2a163_3_16b  =  w_3311_16b ;
assign  r29_w_SAD_2a163_4_16b  =  w_4079_16b ;
assign  r29_w_SAD_2a163_5_16b  =  w_4847_16b ;
assign  r29_w_SAD_2a163_6_16b  =  w_5615_16b ;
assign  r29_w_SAD_2a163_7_16b  =  w_6383_16b ;
assign  r29_w_SAD_2a163_8_16b  =  w_7151_16b ;
assign  r29_w_SAD_2a163_9_16b  =  w_7919_16b ;
assign  r2_w_SAD_2a163_0_16b  =  w_690_16b ;
assign  r2_w_SAD_2a163_1_16b  =  w_1451_16b ;
assign  r2_w_SAD_2a163_10_16b  =  w_8363_16b ;
assign  r2_w_SAD_2a163_11_16b  =  w_9131_16b ;
assign  r2_w_SAD_2a163_12_16b  =  w_9899_16b ;
assign  r2_w_SAD_2a163_13_16b  =  w_10667_16b ;
assign  r2_w_SAD_2a163_14_16b  =  w_11435_16b ;
assign  r2_w_SAD_2a163_15_16b  =  w_12203_16b ;
assign  r2_w_SAD_2a163_2_16b  =  w_2219_16b ;
assign  r2_w_SAD_2a163_3_16b  =  w_2987_16b ;
assign  r2_w_SAD_2a163_4_16b  =  w_3755_16b ;
assign  r2_w_SAD_2a163_5_16b  =  w_4523_16b ;
assign  r2_w_SAD_2a163_6_16b  =  w_5291_16b ;
assign  r2_w_SAD_2a163_7_16b  =  w_6059_16b ;
assign  r2_w_SAD_2a163_8_16b  =  w_6827_16b ;
assign  r2_w_SAD_2a163_9_16b  =  w_7595_16b ;
assign  r2_w_offset_2_0a160_0_16b  =  w_13098_8b ;
assign  r2_w_offset_2_1a159_0_16b  =  w_13099_16b ;
assign  r2_w_p2_offset_l1_0a162_0_16b  =  w_12960_8b ;
assign  r2_w_p2_offset_l1_0a162_1_16b  =  w_12996_8b ;
assign  r2_w_p2_offset_l1_0a162_2_16b  =  w_13032_8b ;
assign  r2_w_p2_offset_l1_0a162_3_16b  =  w_13068_8b ;
assign  r2_w_p2_offset_l1_1a161_0_16b  =  w_12961_16b ;
assign  r2_w_p2_offset_l1_1a161_1_16b  =  w_12997_16b ;
assign  r2_w_p2_offset_l1_1a161_2_16b  =  w_13033_16b ;
assign  r2_w_p2_offset_l1_1a161_3_16b  =  w_13069_16b ;
assign  r30_w_SAD_2a163_0_16b  =  w_1023_16b ;
assign  r30_w_SAD_2a163_1_16b  =  w_1787_16b ;
assign  r30_w_SAD_2a163_10_16b  =  w_8699_16b ;
assign  r30_w_SAD_2a163_11_16b  =  w_9467_16b ;
assign  r30_w_SAD_2a163_12_16b  =  w_10235_16b ;
assign  r30_w_SAD_2a163_13_16b  =  w_11003_16b ;
assign  r30_w_SAD_2a163_14_16b  =  w_11771_16b ;
assign  r30_w_SAD_2a163_15_16b  =  w_12539_16b ;
assign  r30_w_SAD_2a163_2_16b  =  w_2555_16b ;
assign  r30_w_SAD_2a163_3_16b  =  w_3323_16b ;
assign  r30_w_SAD_2a163_4_16b  =  w_4091_16b ;
assign  r30_w_SAD_2a163_5_16b  =  w_4859_16b ;
assign  r30_w_SAD_2a163_6_16b  =  w_5627_16b ;
assign  r30_w_SAD_2a163_7_16b  =  w_6395_16b ;
assign  r30_w_SAD_2a163_8_16b  =  w_7163_16b ;
assign  r30_w_SAD_2a163_9_16b  =  w_7931_16b ;
assign  r31_w_SAD_2a163_0_16b  =  w_1035_16b ;
assign  r31_w_SAD_2a163_1_16b  =  w_1799_16b ;
assign  r31_w_SAD_2a163_10_16b  =  w_8711_16b ;
assign  r31_w_SAD_2a163_11_16b  =  w_9479_16b ;
assign  r31_w_SAD_2a163_12_16b  =  w_10247_16b ;
assign  r31_w_SAD_2a163_13_16b  =  w_11015_16b ;
assign  r31_w_SAD_2a163_14_16b  =  w_11783_16b ;
assign  r31_w_SAD_2a163_15_16b  =  w_12551_16b ;
assign  r31_w_SAD_2a163_2_16b  =  w_2567_16b ;
assign  r31_w_SAD_2a163_3_16b  =  w_3335_16b ;
assign  r31_w_SAD_2a163_4_16b  =  w_4103_16b ;
assign  r31_w_SAD_2a163_5_16b  =  w_4871_16b ;
assign  r31_w_SAD_2a163_6_16b  =  w_5639_16b ;
assign  r31_w_SAD_2a163_7_16b  =  w_6407_16b ;
assign  r31_w_SAD_2a163_8_16b  =  w_7175_16b ;
assign  r31_w_SAD_2a163_9_16b  =  w_7943_16b ;
assign  r32_w_SAD_2a163_0_16b  =  w_1046_16b ;
assign  r32_w_SAD_2a163_1_16b  =  w_1811_16b ;
assign  r32_w_SAD_2a163_10_16b  =  w_8723_16b ;
assign  r32_w_SAD_2a163_11_16b  =  w_9491_16b ;
assign  r32_w_SAD_2a163_12_16b  =  w_10259_16b ;
assign  r32_w_SAD_2a163_13_16b  =  w_11027_16b ;
assign  r32_w_SAD_2a163_14_16b  =  w_11795_16b ;
assign  r32_w_SAD_2a163_15_16b  =  w_12563_16b ;
assign  r32_w_SAD_2a163_2_16b  =  w_2579_16b ;
assign  r32_w_SAD_2a163_3_16b  =  w_3347_16b ;
assign  r32_w_SAD_2a163_4_16b  =  w_4115_16b ;
assign  r32_w_SAD_2a163_5_16b  =  w_4883_16b ;
assign  r32_w_SAD_2a163_6_16b  =  w_5651_16b ;
assign  r32_w_SAD_2a163_7_16b  =  w_6419_16b ;
assign  r32_w_SAD_2a163_8_16b  =  w_7187_16b ;
assign  r32_w_SAD_2a163_9_16b  =  w_7955_16b ;
assign  r33_w_SAD_2a163_0_16b  =  w_1058_16b ;
assign  r33_w_SAD_2a163_1_16b  =  w_1823_16b ;
assign  r33_w_SAD_2a163_10_16b  =  w_8735_16b ;
assign  r33_w_SAD_2a163_11_16b  =  w_9503_16b ;
assign  r33_w_SAD_2a163_12_16b  =  w_10271_16b ;
assign  r33_w_SAD_2a163_13_16b  =  w_11039_16b ;
assign  r33_w_SAD_2a163_14_16b  =  w_11807_16b ;
assign  r33_w_SAD_2a163_15_16b  =  w_12575_16b ;
assign  r33_w_SAD_2a163_2_16b  =  w_2591_16b ;
assign  r33_w_SAD_2a163_3_16b  =  w_3359_16b ;
assign  r33_w_SAD_2a163_4_16b  =  w_4127_16b ;
assign  r33_w_SAD_2a163_5_16b  =  w_4895_16b ;
assign  r33_w_SAD_2a163_6_16b  =  w_5663_16b ;
assign  r33_w_SAD_2a163_7_16b  =  w_6431_16b ;
assign  r33_w_SAD_2a163_8_16b  =  w_7199_16b ;
assign  r33_w_SAD_2a163_9_16b  =  w_7967_16b ;
assign  r34_w_SAD_2a163_0_16b  =  w_1070_16b ;
assign  r34_w_SAD_2a163_1_16b  =  w_1835_16b ;
assign  r34_w_SAD_2a163_10_16b  =  w_8747_16b ;
assign  r34_w_SAD_2a163_11_16b  =  w_9515_16b ;
assign  r34_w_SAD_2a163_12_16b  =  w_10283_16b ;
assign  r34_w_SAD_2a163_13_16b  =  w_11051_16b ;
assign  r34_w_SAD_2a163_14_16b  =  w_11819_16b ;
assign  r34_w_SAD_2a163_15_16b  =  w_12587_16b ;
assign  r34_w_SAD_2a163_2_16b  =  w_2603_16b ;
assign  r34_w_SAD_2a163_3_16b  =  w_3371_16b ;
assign  r34_w_SAD_2a163_4_16b  =  w_4139_16b ;
assign  r34_w_SAD_2a163_5_16b  =  w_4907_16b ;
assign  r34_w_SAD_2a163_6_16b  =  w_5675_16b ;
assign  r34_w_SAD_2a163_7_16b  =  w_6443_16b ;
assign  r34_w_SAD_2a163_8_16b  =  w_7211_16b ;
assign  r34_w_SAD_2a163_9_16b  =  w_7979_16b ;
assign  r35_w_SAD_2a163_0_16b  =  w_1082_16b ;
assign  r35_w_SAD_2a163_1_16b  =  w_1847_16b ;
assign  r35_w_SAD_2a163_10_16b  =  w_8759_16b ;
assign  r35_w_SAD_2a163_11_16b  =  w_9527_16b ;
assign  r35_w_SAD_2a163_12_16b  =  w_10295_16b ;
assign  r35_w_SAD_2a163_13_16b  =  w_11063_16b ;
assign  r35_w_SAD_2a163_14_16b  =  w_11831_16b ;
assign  r35_w_SAD_2a163_15_16b  =  w_12599_16b ;
assign  r35_w_SAD_2a163_2_16b  =  w_2615_16b ;
assign  r35_w_SAD_2a163_3_16b  =  w_3383_16b ;
assign  r35_w_SAD_2a163_4_16b  =  w_4151_16b ;
assign  r35_w_SAD_2a163_5_16b  =  w_4919_16b ;
assign  r35_w_SAD_2a163_6_16b  =  w_5687_16b ;
assign  r35_w_SAD_2a163_7_16b  =  w_6455_16b ;
assign  r35_w_SAD_2a163_8_16b  =  w_7223_16b ;
assign  r35_w_SAD_2a163_9_16b  =  w_7991_16b ;
assign  r36_w_SAD_2a163_0_16b  =  w_1094_16b ;
assign  r36_w_SAD_2a163_1_16b  =  w_1859_16b ;
assign  r36_w_SAD_2a163_10_16b  =  w_8771_16b ;
assign  r36_w_SAD_2a163_11_16b  =  w_9539_16b ;
assign  r36_w_SAD_2a163_12_16b  =  w_10307_16b ;
assign  r36_w_SAD_2a163_13_16b  =  w_11075_16b ;
assign  r36_w_SAD_2a163_14_16b  =  w_11843_16b ;
assign  r36_w_SAD_2a163_15_16b  =  w_12611_16b ;
assign  r36_w_SAD_2a163_2_16b  =  w_2627_16b ;
assign  r36_w_SAD_2a163_3_16b  =  w_3395_16b ;
assign  r36_w_SAD_2a163_4_16b  =  w_4163_16b ;
assign  r36_w_SAD_2a163_5_16b  =  w_4931_16b ;
assign  r36_w_SAD_2a163_6_16b  =  w_5699_16b ;
assign  r36_w_SAD_2a163_7_16b  =  w_6467_16b ;
assign  r36_w_SAD_2a163_8_16b  =  w_7235_16b ;
assign  r36_w_SAD_2a163_9_16b  =  w_8003_16b ;
assign  r37_w_SAD_2a163_0_16b  =  w_1106_16b ;
assign  r37_w_SAD_2a163_1_16b  =  w_1871_16b ;
assign  r37_w_SAD_2a163_10_16b  =  w_8783_16b ;
assign  r37_w_SAD_2a163_11_16b  =  w_9551_16b ;
assign  r37_w_SAD_2a163_12_16b  =  w_10319_16b ;
assign  r37_w_SAD_2a163_13_16b  =  w_11087_16b ;
assign  r37_w_SAD_2a163_14_16b  =  w_11855_16b ;
assign  r37_w_SAD_2a163_15_16b  =  w_12623_16b ;
assign  r37_w_SAD_2a163_2_16b  =  w_2639_16b ;
assign  r37_w_SAD_2a163_3_16b  =  w_3407_16b ;
assign  r37_w_SAD_2a163_4_16b  =  w_4175_16b ;
assign  r37_w_SAD_2a163_5_16b  =  w_4943_16b ;
assign  r37_w_SAD_2a163_6_16b  =  w_5711_16b ;
assign  r37_w_SAD_2a163_7_16b  =  w_6479_16b ;
assign  r37_w_SAD_2a163_8_16b  =  w_7247_16b ;
assign  r37_w_SAD_2a163_9_16b  =  w_8015_16b ;
assign  r38_w_SAD_2a163_0_16b  =  w_1118_16b ;
assign  r38_w_SAD_2a163_1_16b  =  w_1883_16b ;
assign  r38_w_SAD_2a163_10_16b  =  w_8795_16b ;
assign  r38_w_SAD_2a163_11_16b  =  w_9563_16b ;
assign  r38_w_SAD_2a163_12_16b  =  w_10331_16b ;
assign  r38_w_SAD_2a163_13_16b  =  w_11099_16b ;
assign  r38_w_SAD_2a163_14_16b  =  w_11867_16b ;
assign  r38_w_SAD_2a163_15_16b  =  w_12635_16b ;
assign  r38_w_SAD_2a163_2_16b  =  w_2651_16b ;
assign  r38_w_SAD_2a163_3_16b  =  w_3419_16b ;
assign  r38_w_SAD_2a163_4_16b  =  w_4187_16b ;
assign  r38_w_SAD_2a163_5_16b  =  w_4955_16b ;
assign  r38_w_SAD_2a163_6_16b  =  w_5723_16b ;
assign  r38_w_SAD_2a163_7_16b  =  w_6491_16b ;
assign  r38_w_SAD_2a163_8_16b  =  w_7259_16b ;
assign  r38_w_SAD_2a163_9_16b  =  w_8027_16b ;
assign  r39_w_SAD_2a163_0_16b  =  w_1130_16b ;
assign  r39_w_SAD_2a163_1_16b  =  w_1895_16b ;
assign  r39_w_SAD_2a163_10_16b  =  w_8807_16b ;
assign  r39_w_SAD_2a163_11_16b  =  w_9575_16b ;
assign  r39_w_SAD_2a163_12_16b  =  w_10343_16b ;
assign  r39_w_SAD_2a163_13_16b  =  w_11111_16b ;
assign  r39_w_SAD_2a163_14_16b  =  w_11879_16b ;
assign  r39_w_SAD_2a163_15_16b  =  w_12647_16b ;
assign  r39_w_SAD_2a163_2_16b  =  w_2663_16b ;
assign  r39_w_SAD_2a163_3_16b  =  w_3431_16b ;
assign  r39_w_SAD_2a163_4_16b  =  w_4199_16b ;
assign  r39_w_SAD_2a163_5_16b  =  w_4967_16b ;
assign  r39_w_SAD_2a163_6_16b  =  w_5735_16b ;
assign  r39_w_SAD_2a163_7_16b  =  w_6503_16b ;
assign  r39_w_SAD_2a163_8_16b  =  w_7271_16b ;
assign  r39_w_SAD_2a163_9_16b  =  w_8039_16b ;
assign  r3_w_SAD_2a163_0_16b  =  w_702_16b ;
assign  r3_w_SAD_2a163_1_16b  =  w_1463_16b ;
assign  r3_w_SAD_2a163_10_16b  =  w_8375_16b ;
assign  r3_w_SAD_2a163_11_16b  =  w_9143_16b ;
assign  r3_w_SAD_2a163_12_16b  =  w_9911_16b ;
assign  r3_w_SAD_2a163_13_16b  =  w_10679_16b ;
assign  r3_w_SAD_2a163_14_16b  =  w_11447_16b ;
assign  r3_w_SAD_2a163_15_16b  =  w_12215_16b ;
assign  r3_w_SAD_2a163_2_16b  =  w_2231_16b ;
assign  r3_w_SAD_2a163_3_16b  =  w_2999_16b ;
assign  r3_w_SAD_2a163_4_16b  =  w_3767_16b ;
assign  r3_w_SAD_2a163_5_16b  =  w_4535_16b ;
assign  r3_w_SAD_2a163_6_16b  =  w_5303_16b ;
assign  r3_w_SAD_2a163_7_16b  =  w_6071_16b ;
assign  r3_w_SAD_2a163_8_16b  =  w_6839_16b ;
assign  r3_w_SAD_2a163_9_16b  =  w_7607_16b ;
assign  r3_w_offset_2_0a160_0_16b  =  w_13105_8b ;
assign  r3_w_p2_offset_l1_0a162_0_16b  =  w_12969_8b ;
assign  r3_w_p2_offset_l1_0a162_1_16b  =  w_13005_8b ;
assign  r3_w_p2_offset_l1_0a162_2_16b  =  w_13041_8b ;
assign  r3_w_p2_offset_l1_0a162_3_16b  =  w_13077_8b ;
assign  r3_w_p2_offset_l1_1a161_0_16b  =  w_12970_16b ;
assign  r3_w_p2_offset_l1_1a161_1_16b  =  w_13006_16b ;
assign  r3_w_p2_offset_l1_1a161_2_16b  =  w_13042_16b ;
assign  r3_w_p2_offset_l1_1a161_3_16b  =  w_13078_16b ;
assign  r40_w_SAD_2a163_0_16b  =  w_1141_16b ;
assign  r40_w_SAD_2a163_1_16b  =  w_1907_16b ;
assign  r40_w_SAD_2a163_10_16b  =  w_8819_16b ;
assign  r40_w_SAD_2a163_11_16b  =  w_9587_16b ;
assign  r40_w_SAD_2a163_12_16b  =  w_10355_16b ;
assign  r40_w_SAD_2a163_13_16b  =  w_11123_16b ;
assign  r40_w_SAD_2a163_14_16b  =  w_11891_16b ;
assign  r40_w_SAD_2a163_15_16b  =  w_12659_16b ;
assign  r40_w_SAD_2a163_2_16b  =  w_2675_16b ;
assign  r40_w_SAD_2a163_3_16b  =  w_3443_16b ;
assign  r40_w_SAD_2a163_4_16b  =  w_4211_16b ;
assign  r40_w_SAD_2a163_5_16b  =  w_4979_16b ;
assign  r40_w_SAD_2a163_6_16b  =  w_5747_16b ;
assign  r40_w_SAD_2a163_7_16b  =  w_6515_16b ;
assign  r40_w_SAD_2a163_8_16b  =  w_7283_16b ;
assign  r40_w_SAD_2a163_9_16b  =  w_8051_16b ;
assign  r41_w_SAD_2a163_0_16b  =  w_1153_16b ;
assign  r41_w_SAD_2a163_1_16b  =  w_1919_16b ;
assign  r41_w_SAD_2a163_10_16b  =  w_8831_16b ;
assign  r41_w_SAD_2a163_11_16b  =  w_9599_16b ;
assign  r41_w_SAD_2a163_12_16b  =  w_10367_16b ;
assign  r41_w_SAD_2a163_13_16b  =  w_11135_16b ;
assign  r41_w_SAD_2a163_14_16b  =  w_11903_16b ;
assign  r41_w_SAD_2a163_15_16b  =  w_12671_16b ;
assign  r41_w_SAD_2a163_2_16b  =  w_2687_16b ;
assign  r41_w_SAD_2a163_3_16b  =  w_3455_16b ;
assign  r41_w_SAD_2a163_4_16b  =  w_4223_16b ;
assign  r41_w_SAD_2a163_5_16b  =  w_4991_16b ;
assign  r41_w_SAD_2a163_6_16b  =  w_5759_16b ;
assign  r41_w_SAD_2a163_7_16b  =  w_6527_16b ;
assign  r41_w_SAD_2a163_8_16b  =  w_7295_16b ;
assign  r41_w_SAD_2a163_9_16b  =  w_8063_16b ;
assign  r42_w_SAD_2a163_0_16b  =  w_1165_16b ;
assign  r42_w_SAD_2a163_1_16b  =  w_1931_16b ;
assign  r42_w_SAD_2a163_10_16b  =  w_8843_16b ;
assign  r42_w_SAD_2a163_11_16b  =  w_9611_16b ;
assign  r42_w_SAD_2a163_12_16b  =  w_10379_16b ;
assign  r42_w_SAD_2a163_13_16b  =  w_11147_16b ;
assign  r42_w_SAD_2a163_14_16b  =  w_11915_16b ;
assign  r42_w_SAD_2a163_15_16b  =  w_12683_16b ;
assign  r42_w_SAD_2a163_2_16b  =  w_2699_16b ;
assign  r42_w_SAD_2a163_3_16b  =  w_3467_16b ;
assign  r42_w_SAD_2a163_4_16b  =  w_4235_16b ;
assign  r42_w_SAD_2a163_5_16b  =  w_5003_16b ;
assign  r42_w_SAD_2a163_6_16b  =  w_5771_16b ;
assign  r42_w_SAD_2a163_7_16b  =  w_6539_16b ;
assign  r42_w_SAD_2a163_8_16b  =  w_7307_16b ;
assign  r42_w_SAD_2a163_9_16b  =  w_8075_16b ;
assign  r43_w_SAD_2a163_0_16b  =  w_1177_16b ;
assign  r43_w_SAD_2a163_1_16b  =  w_1943_16b ;
assign  r43_w_SAD_2a163_10_16b  =  w_8855_16b ;
assign  r43_w_SAD_2a163_11_16b  =  w_9623_16b ;
assign  r43_w_SAD_2a163_12_16b  =  w_10391_16b ;
assign  r43_w_SAD_2a163_13_16b  =  w_11159_16b ;
assign  r43_w_SAD_2a163_14_16b  =  w_11927_16b ;
assign  r43_w_SAD_2a163_15_16b  =  w_12695_16b ;
assign  r43_w_SAD_2a163_2_16b  =  w_2711_16b ;
assign  r43_w_SAD_2a163_3_16b  =  w_3479_16b ;
assign  r43_w_SAD_2a163_4_16b  =  w_4247_16b ;
assign  r43_w_SAD_2a163_5_16b  =  w_5015_16b ;
assign  r43_w_SAD_2a163_6_16b  =  w_5783_16b ;
assign  r43_w_SAD_2a163_7_16b  =  w_6551_16b ;
assign  r43_w_SAD_2a163_8_16b  =  w_7319_16b ;
assign  r43_w_SAD_2a163_9_16b  =  w_8087_16b ;
assign  r44_w_SAD_2a163_0_16b  =  w_1189_16b ;
assign  r44_w_SAD_2a163_1_16b  =  w_1955_16b ;
assign  r44_w_SAD_2a163_10_16b  =  w_8867_16b ;
assign  r44_w_SAD_2a163_11_16b  =  w_9635_16b ;
assign  r44_w_SAD_2a163_12_16b  =  w_10403_16b ;
assign  r44_w_SAD_2a163_13_16b  =  w_11171_16b ;
assign  r44_w_SAD_2a163_14_16b  =  w_11939_16b ;
assign  r44_w_SAD_2a163_15_16b  =  w_12707_16b ;
assign  r44_w_SAD_2a163_2_16b  =  w_2723_16b ;
assign  r44_w_SAD_2a163_3_16b  =  w_3491_16b ;
assign  r44_w_SAD_2a163_4_16b  =  w_4259_16b ;
assign  r44_w_SAD_2a163_5_16b  =  w_5027_16b ;
assign  r44_w_SAD_2a163_6_16b  =  w_5795_16b ;
assign  r44_w_SAD_2a163_7_16b  =  w_6563_16b ;
assign  r44_w_SAD_2a163_8_16b  =  w_7331_16b ;
assign  r44_w_SAD_2a163_9_16b  =  w_8099_16b ;
assign  r45_w_SAD_2a163_0_16b  =  w_1201_16b ;
assign  r45_w_SAD_2a163_1_16b  =  w_1967_16b ;
assign  r45_w_SAD_2a163_10_16b  =  w_8879_16b ;
assign  r45_w_SAD_2a163_11_16b  =  w_9647_16b ;
assign  r45_w_SAD_2a163_12_16b  =  w_10415_16b ;
assign  r45_w_SAD_2a163_13_16b  =  w_11183_16b ;
assign  r45_w_SAD_2a163_14_16b  =  w_11951_16b ;
assign  r45_w_SAD_2a163_15_16b  =  w_12719_16b ;
assign  r45_w_SAD_2a163_2_16b  =  w_2735_16b ;
assign  r45_w_SAD_2a163_3_16b  =  w_3503_16b ;
assign  r45_w_SAD_2a163_4_16b  =  w_4271_16b ;
assign  r45_w_SAD_2a163_5_16b  =  w_5039_16b ;
assign  r45_w_SAD_2a163_6_16b  =  w_5807_16b ;
assign  r45_w_SAD_2a163_7_16b  =  w_6575_16b ;
assign  r45_w_SAD_2a163_8_16b  =  w_7343_16b ;
assign  r45_w_SAD_2a163_9_16b  =  w_8111_16b ;
assign  r46_w_SAD_2a163_0_16b  =  w_1213_16b ;
assign  r46_w_SAD_2a163_1_16b  =  w_1979_16b ;
assign  r46_w_SAD_2a163_10_16b  =  w_8891_16b ;
assign  r46_w_SAD_2a163_11_16b  =  w_9659_16b ;
assign  r46_w_SAD_2a163_12_16b  =  w_10427_16b ;
assign  r46_w_SAD_2a163_13_16b  =  w_11195_16b ;
assign  r46_w_SAD_2a163_14_16b  =  w_11963_16b ;
assign  r46_w_SAD_2a163_15_16b  =  w_12731_16b ;
assign  r46_w_SAD_2a163_2_16b  =  w_2747_16b ;
assign  r46_w_SAD_2a163_3_16b  =  w_3515_16b ;
assign  r46_w_SAD_2a163_4_16b  =  w_4283_16b ;
assign  r46_w_SAD_2a163_5_16b  =  w_5051_16b ;
assign  r46_w_SAD_2a163_6_16b  =  w_5819_16b ;
assign  r46_w_SAD_2a163_7_16b  =  w_6587_16b ;
assign  r46_w_SAD_2a163_8_16b  =  w_7355_16b ;
assign  r46_w_SAD_2a163_9_16b  =  w_8123_16b ;
assign  r47_w_SAD_2a163_0_16b  =  w_1225_16b ;
assign  r47_w_SAD_2a163_1_16b  =  w_1991_16b ;
assign  r47_w_SAD_2a163_10_16b  =  w_8903_16b ;
assign  r47_w_SAD_2a163_11_16b  =  w_9671_16b ;
assign  r47_w_SAD_2a163_12_16b  =  w_10439_16b ;
assign  r47_w_SAD_2a163_13_16b  =  w_11207_16b ;
assign  r47_w_SAD_2a163_14_16b  =  w_11975_16b ;
assign  r47_w_SAD_2a163_15_16b  =  w_12743_16b ;
assign  r47_w_SAD_2a163_2_16b  =  w_2759_16b ;
assign  r47_w_SAD_2a163_3_16b  =  w_3527_16b ;
assign  r47_w_SAD_2a163_4_16b  =  w_4295_16b ;
assign  r47_w_SAD_2a163_5_16b  =  w_5063_16b ;
assign  r47_w_SAD_2a163_6_16b  =  w_5831_16b ;
assign  r47_w_SAD_2a163_7_16b  =  w_6599_16b ;
assign  r47_w_SAD_2a163_8_16b  =  w_7367_16b ;
assign  r47_w_SAD_2a163_9_16b  =  w_8135_16b ;
assign  r48_w_SAD_2a163_0_16b  =  w_1236_16b ;
assign  r48_w_SAD_2a163_1_16b  =  w_2003_16b ;
assign  r48_w_SAD_2a163_10_16b  =  w_8915_16b ;
assign  r48_w_SAD_2a163_11_16b  =  w_9683_16b ;
assign  r48_w_SAD_2a163_12_16b  =  w_10451_16b ;
assign  r48_w_SAD_2a163_13_16b  =  w_11219_16b ;
assign  r48_w_SAD_2a163_14_16b  =  w_11987_16b ;
assign  r48_w_SAD_2a163_15_16b  =  w_12755_16b ;
assign  r48_w_SAD_2a163_2_16b  =  w_2771_16b ;
assign  r48_w_SAD_2a163_3_16b  =  w_3539_16b ;
assign  r48_w_SAD_2a163_4_16b  =  w_4307_16b ;
assign  r48_w_SAD_2a163_5_16b  =  w_5075_16b ;
assign  r48_w_SAD_2a163_6_16b  =  w_5843_16b ;
assign  r48_w_SAD_2a163_7_16b  =  w_6611_16b ;
assign  r48_w_SAD_2a163_8_16b  =  w_7379_16b ;
assign  r48_w_SAD_2a163_9_16b  =  w_8147_16b ;
assign  r49_w_SAD_2a163_0_16b  =  w_1248_16b ;
assign  r49_w_SAD_2a163_1_16b  =  w_2015_16b ;
assign  r49_w_SAD_2a163_10_16b  =  w_8927_16b ;
assign  r49_w_SAD_2a163_11_16b  =  w_9695_16b ;
assign  r49_w_SAD_2a163_12_16b  =  w_10463_16b ;
assign  r49_w_SAD_2a163_13_16b  =  w_11231_16b ;
assign  r49_w_SAD_2a163_14_16b  =  w_11999_16b ;
assign  r49_w_SAD_2a163_15_16b  =  w_12767_16b ;
assign  r49_w_SAD_2a163_2_16b  =  w_2783_16b ;
assign  r49_w_SAD_2a163_3_16b  =  w_3551_16b ;
assign  r49_w_SAD_2a163_4_16b  =  w_4319_16b ;
assign  r49_w_SAD_2a163_5_16b  =  w_5087_16b ;
assign  r49_w_SAD_2a163_6_16b  =  w_5855_16b ;
assign  r49_w_SAD_2a163_7_16b  =  w_6623_16b ;
assign  r49_w_SAD_2a163_8_16b  =  w_7391_16b ;
assign  r49_w_SAD_2a163_9_16b  =  w_8159_16b ;
assign  r4_w_SAD_2a163_0_16b  =  w_714_16b ;
assign  r4_w_SAD_2a163_1_16b  =  w_1475_16b ;
assign  r4_w_SAD_2a163_10_16b  =  w_8387_16b ;
assign  r4_w_SAD_2a163_11_16b  =  w_9155_16b ;
assign  r4_w_SAD_2a163_12_16b  =  w_9923_16b ;
assign  r4_w_SAD_2a163_13_16b  =  w_10691_16b ;
assign  r4_w_SAD_2a163_14_16b  =  w_11459_16b ;
assign  r4_w_SAD_2a163_15_16b  =  w_12227_16b ;
assign  r4_w_SAD_2a163_2_16b  =  w_2243_16b ;
assign  r4_w_SAD_2a163_3_16b  =  w_3011_16b ;
assign  r4_w_SAD_2a163_4_16b  =  w_3779_16b ;
assign  r4_w_SAD_2a163_5_16b  =  w_4547_16b ;
assign  r4_w_SAD_2a163_6_16b  =  w_5315_16b ;
assign  r4_w_SAD_2a163_7_16b  =  w_6083_16b ;
assign  r4_w_SAD_2a163_8_16b  =  w_6851_16b ;
assign  r4_w_SAD_2a163_9_16b  =  w_7619_16b ;
assign  r50_w_SAD_2a163_0_16b  =  w_1260_16b ;
assign  r50_w_SAD_2a163_1_16b  =  w_2027_16b ;
assign  r50_w_SAD_2a163_10_16b  =  w_8939_16b ;
assign  r50_w_SAD_2a163_11_16b  =  w_9707_16b ;
assign  r50_w_SAD_2a163_12_16b  =  w_10475_16b ;
assign  r50_w_SAD_2a163_13_16b  =  w_11243_16b ;
assign  r50_w_SAD_2a163_14_16b  =  w_12011_16b ;
assign  r50_w_SAD_2a163_15_16b  =  w_12779_16b ;
assign  r50_w_SAD_2a163_2_16b  =  w_2795_16b ;
assign  r50_w_SAD_2a163_3_16b  =  w_3563_16b ;
assign  r50_w_SAD_2a163_4_16b  =  w_4331_16b ;
assign  r50_w_SAD_2a163_5_16b  =  w_5099_16b ;
assign  r50_w_SAD_2a163_6_16b  =  w_5867_16b ;
assign  r50_w_SAD_2a163_7_16b  =  w_6635_16b ;
assign  r50_w_SAD_2a163_8_16b  =  w_7403_16b ;
assign  r50_w_SAD_2a163_9_16b  =  w_8171_16b ;
assign  r51_w_SAD_2a163_0_16b  =  w_1272_16b ;
assign  r51_w_SAD_2a163_1_16b  =  w_2039_16b ;
assign  r51_w_SAD_2a163_10_16b  =  w_8951_16b ;
assign  r51_w_SAD_2a163_11_16b  =  w_9719_16b ;
assign  r51_w_SAD_2a163_12_16b  =  w_10487_16b ;
assign  r51_w_SAD_2a163_13_16b  =  w_11255_16b ;
assign  r51_w_SAD_2a163_14_16b  =  w_12023_16b ;
assign  r51_w_SAD_2a163_15_16b  =  w_12791_16b ;
assign  r51_w_SAD_2a163_2_16b  =  w_2807_16b ;
assign  r51_w_SAD_2a163_3_16b  =  w_3575_16b ;
assign  r51_w_SAD_2a163_4_16b  =  w_4343_16b ;
assign  r51_w_SAD_2a163_5_16b  =  w_5111_16b ;
assign  r51_w_SAD_2a163_6_16b  =  w_5879_16b ;
assign  r51_w_SAD_2a163_7_16b  =  w_6647_16b ;
assign  r51_w_SAD_2a163_8_16b  =  w_7415_16b ;
assign  r51_w_SAD_2a163_9_16b  =  w_8183_16b ;
assign  r52_w_SAD_2a163_0_16b  =  w_1284_16b ;
assign  r52_w_SAD_2a163_1_16b  =  w_2051_16b ;
assign  r52_w_SAD_2a163_10_16b  =  w_8963_16b ;
assign  r52_w_SAD_2a163_11_16b  =  w_9731_16b ;
assign  r52_w_SAD_2a163_12_16b  =  w_10499_16b ;
assign  r52_w_SAD_2a163_13_16b  =  w_11267_16b ;
assign  r52_w_SAD_2a163_14_16b  =  w_12035_16b ;
assign  r52_w_SAD_2a163_15_16b  =  w_12803_16b ;
assign  r52_w_SAD_2a163_2_16b  =  w_2819_16b ;
assign  r52_w_SAD_2a163_3_16b  =  w_3587_16b ;
assign  r52_w_SAD_2a163_4_16b  =  w_4355_16b ;
assign  r52_w_SAD_2a163_5_16b  =  w_5123_16b ;
assign  r52_w_SAD_2a163_6_16b  =  w_5891_16b ;
assign  r52_w_SAD_2a163_7_16b  =  w_6659_16b ;
assign  r52_w_SAD_2a163_8_16b  =  w_7427_16b ;
assign  r52_w_SAD_2a163_9_16b  =  w_8195_16b ;
assign  r53_w_SAD_2a163_0_16b  =  w_1296_16b ;
assign  r53_w_SAD_2a163_1_16b  =  w_2063_16b ;
assign  r53_w_SAD_2a163_10_16b  =  w_8975_16b ;
assign  r53_w_SAD_2a163_11_16b  =  w_9743_16b ;
assign  r53_w_SAD_2a163_12_16b  =  w_10511_16b ;
assign  r53_w_SAD_2a163_13_16b  =  w_11279_16b ;
assign  r53_w_SAD_2a163_14_16b  =  w_12047_16b ;
assign  r53_w_SAD_2a163_15_16b  =  w_12815_16b ;
assign  r53_w_SAD_2a163_2_16b  =  w_2831_16b ;
assign  r53_w_SAD_2a163_3_16b  =  w_3599_16b ;
assign  r53_w_SAD_2a163_4_16b  =  w_4367_16b ;
assign  r53_w_SAD_2a163_5_16b  =  w_5135_16b ;
assign  r53_w_SAD_2a163_6_16b  =  w_5903_16b ;
assign  r53_w_SAD_2a163_7_16b  =  w_6671_16b ;
assign  r53_w_SAD_2a163_8_16b  =  w_7439_16b ;
assign  r53_w_SAD_2a163_9_16b  =  w_8207_16b ;
assign  r54_w_SAD_2a163_0_16b  =  w_1308_16b ;
assign  r54_w_SAD_2a163_1_16b  =  w_2075_16b ;
assign  r54_w_SAD_2a163_10_16b  =  w_8987_16b ;
assign  r54_w_SAD_2a163_11_16b  =  w_9755_16b ;
assign  r54_w_SAD_2a163_12_16b  =  w_10523_16b ;
assign  r54_w_SAD_2a163_13_16b  =  w_11291_16b ;
assign  r54_w_SAD_2a163_14_16b  =  w_12059_16b ;
assign  r54_w_SAD_2a163_15_16b  =  w_12827_16b ;
assign  r54_w_SAD_2a163_2_16b  =  w_2843_16b ;
assign  r54_w_SAD_2a163_3_16b  =  w_3611_16b ;
assign  r54_w_SAD_2a163_4_16b  =  w_4379_16b ;
assign  r54_w_SAD_2a163_5_16b  =  w_5147_16b ;
assign  r54_w_SAD_2a163_6_16b  =  w_5915_16b ;
assign  r54_w_SAD_2a163_7_16b  =  w_6683_16b ;
assign  r54_w_SAD_2a163_8_16b  =  w_7451_16b ;
assign  r54_w_SAD_2a163_9_16b  =  w_8219_16b ;
assign  r55_w_SAD_2a163_0_16b  =  w_1320_16b ;
assign  r55_w_SAD_2a163_1_16b  =  w_2087_16b ;
assign  r55_w_SAD_2a163_10_16b  =  w_8999_16b ;
assign  r55_w_SAD_2a163_11_16b  =  w_9767_16b ;
assign  r55_w_SAD_2a163_12_16b  =  w_10535_16b ;
assign  r55_w_SAD_2a163_13_16b  =  w_11303_16b ;
assign  r55_w_SAD_2a163_14_16b  =  w_12071_16b ;
assign  r55_w_SAD_2a163_15_16b  =  w_12839_16b ;
assign  r55_w_SAD_2a163_2_16b  =  w_2855_16b ;
assign  r55_w_SAD_2a163_3_16b  =  w_3623_16b ;
assign  r55_w_SAD_2a163_4_16b  =  w_4391_16b ;
assign  r55_w_SAD_2a163_5_16b  =  w_5159_16b ;
assign  r55_w_SAD_2a163_6_16b  =  w_5927_16b ;
assign  r55_w_SAD_2a163_7_16b  =  w_6695_16b ;
assign  r55_w_SAD_2a163_8_16b  =  w_7463_16b ;
assign  r55_w_SAD_2a163_9_16b  =  w_8231_16b ;
assign  r56_w_SAD_2a163_0_16b  =  w_1331_16b ;
assign  r56_w_SAD_2a163_1_16b  =  w_2099_16b ;
assign  r56_w_SAD_2a163_10_16b  =  w_9011_16b ;
assign  r56_w_SAD_2a163_11_16b  =  w_9779_16b ;
assign  r56_w_SAD_2a163_12_16b  =  w_10547_16b ;
assign  r56_w_SAD_2a163_13_16b  =  w_11315_16b ;
assign  r56_w_SAD_2a163_14_16b  =  w_12083_16b ;
assign  r56_w_SAD_2a163_15_16b  =  w_12851_16b ;
assign  r56_w_SAD_2a163_2_16b  =  w_2867_16b ;
assign  r56_w_SAD_2a163_3_16b  =  w_3635_16b ;
assign  r56_w_SAD_2a163_4_16b  =  w_4403_16b ;
assign  r56_w_SAD_2a163_5_16b  =  w_5171_16b ;
assign  r56_w_SAD_2a163_6_16b  =  w_5939_16b ;
assign  r56_w_SAD_2a163_7_16b  =  w_6707_16b ;
assign  r56_w_SAD_2a163_8_16b  =  w_7475_16b ;
assign  r56_w_SAD_2a163_9_16b  =  w_8243_16b ;
assign  r57_w_SAD_2a163_0_16b  =  w_1343_16b ;
assign  r57_w_SAD_2a163_1_16b  =  w_2111_16b ;
assign  r57_w_SAD_2a163_10_16b  =  w_9023_16b ;
assign  r57_w_SAD_2a163_11_16b  =  w_9791_16b ;
assign  r57_w_SAD_2a163_12_16b  =  w_10559_16b ;
assign  r57_w_SAD_2a163_13_16b  =  w_11327_16b ;
assign  r57_w_SAD_2a163_14_16b  =  w_12095_16b ;
assign  r57_w_SAD_2a163_15_16b  =  w_12863_16b ;
assign  r57_w_SAD_2a163_2_16b  =  w_2879_16b ;
assign  r57_w_SAD_2a163_3_16b  =  w_3647_16b ;
assign  r57_w_SAD_2a163_4_16b  =  w_4415_16b ;
assign  r57_w_SAD_2a163_5_16b  =  w_5183_16b ;
assign  r57_w_SAD_2a163_6_16b  =  w_5951_16b ;
assign  r57_w_SAD_2a163_7_16b  =  w_6719_16b ;
assign  r57_w_SAD_2a163_8_16b  =  w_7487_16b ;
assign  r57_w_SAD_2a163_9_16b  =  w_8255_16b ;
assign  r58_w_SAD_2a163_0_16b  =  w_1355_16b ;
assign  r58_w_SAD_2a163_1_16b  =  w_2123_16b ;
assign  r58_w_SAD_2a163_10_16b  =  w_9035_16b ;
assign  r58_w_SAD_2a163_11_16b  =  w_9803_16b ;
assign  r58_w_SAD_2a163_12_16b  =  w_10571_16b ;
assign  r58_w_SAD_2a163_13_16b  =  w_11339_16b ;
assign  r58_w_SAD_2a163_14_16b  =  w_12107_16b ;
assign  r58_w_SAD_2a163_15_16b  =  w_12875_16b ;
assign  r58_w_SAD_2a163_2_16b  =  w_2891_16b ;
assign  r58_w_SAD_2a163_3_16b  =  w_3659_16b ;
assign  r58_w_SAD_2a163_4_16b  =  w_4427_16b ;
assign  r58_w_SAD_2a163_5_16b  =  w_5195_16b ;
assign  r58_w_SAD_2a163_6_16b  =  w_5963_16b ;
assign  r58_w_SAD_2a163_7_16b  =  w_6731_16b ;
assign  r58_w_SAD_2a163_8_16b  =  w_7499_16b ;
assign  r58_w_SAD_2a163_9_16b  =  w_8267_16b ;
assign  r59_w_SAD_2a163_0_16b  =  w_1367_16b ;
assign  r59_w_SAD_2a163_1_16b  =  w_2135_16b ;
assign  r59_w_SAD_2a163_10_16b  =  w_9047_16b ;
assign  r59_w_SAD_2a163_11_16b  =  w_9815_16b ;
assign  r59_w_SAD_2a163_12_16b  =  w_10583_16b ;
assign  r59_w_SAD_2a163_13_16b  =  w_11351_16b ;
assign  r59_w_SAD_2a163_14_16b  =  w_12119_16b ;
assign  r59_w_SAD_2a163_15_16b  =  w_12887_16b ;
assign  r59_w_SAD_2a163_2_16b  =  w_2903_16b ;
assign  r59_w_SAD_2a163_3_16b  =  w_3671_16b ;
assign  r59_w_SAD_2a163_4_16b  =  w_4439_16b ;
assign  r59_w_SAD_2a163_5_16b  =  w_5207_16b ;
assign  r59_w_SAD_2a163_6_16b  =  w_5975_16b ;
assign  r59_w_SAD_2a163_7_16b  =  w_6743_16b ;
assign  r59_w_SAD_2a163_8_16b  =  w_7511_16b ;
assign  r59_w_SAD_2a163_9_16b  =  w_8279_16b ;
assign  r5_w_SAD_2a163_0_16b  =  w_726_16b ;
assign  r5_w_SAD_2a163_1_16b  =  w_1487_16b ;
assign  r5_w_SAD_2a163_10_16b  =  w_8399_16b ;
assign  r5_w_SAD_2a163_11_16b  =  w_9167_16b ;
assign  r5_w_SAD_2a163_12_16b  =  w_9935_16b ;
assign  r5_w_SAD_2a163_13_16b  =  w_10703_16b ;
assign  r5_w_SAD_2a163_14_16b  =  w_11471_16b ;
assign  r5_w_SAD_2a163_15_16b  =  w_12239_16b ;
assign  r5_w_SAD_2a163_2_16b  =  w_2255_16b ;
assign  r5_w_SAD_2a163_3_16b  =  w_3023_16b ;
assign  r5_w_SAD_2a163_4_16b  =  w_3791_16b ;
assign  r5_w_SAD_2a163_5_16b  =  w_4559_16b ;
assign  r5_w_SAD_2a163_6_16b  =  w_5327_16b ;
assign  r5_w_SAD_2a163_7_16b  =  w_6095_16b ;
assign  r5_w_SAD_2a163_8_16b  =  w_6863_16b ;
assign  r5_w_SAD_2a163_9_16b  =  w_7631_16b ;
assign  r60_w_SAD_2a163_0_16b  =  w_1379_16b ;
assign  r60_w_SAD_2a163_1_16b  =  w_2147_16b ;
assign  r60_w_SAD_2a163_10_16b  =  w_9059_16b ;
assign  r60_w_SAD_2a163_11_16b  =  w_9827_16b ;
assign  r60_w_SAD_2a163_12_16b  =  w_10595_16b ;
assign  r60_w_SAD_2a163_13_16b  =  w_11363_16b ;
assign  r60_w_SAD_2a163_14_16b  =  w_12131_16b ;
assign  r60_w_SAD_2a163_15_16b  =  w_12899_16b ;
assign  r60_w_SAD_2a163_2_16b  =  w_2915_16b ;
assign  r60_w_SAD_2a163_3_16b  =  w_3683_16b ;
assign  r60_w_SAD_2a163_4_16b  =  w_4451_16b ;
assign  r60_w_SAD_2a163_5_16b  =  w_5219_16b ;
assign  r60_w_SAD_2a163_6_16b  =  w_5987_16b ;
assign  r60_w_SAD_2a163_7_16b  =  w_6755_16b ;
assign  r60_w_SAD_2a163_8_16b  =  w_7523_16b ;
assign  r60_w_SAD_2a163_9_16b  =  w_8291_16b ;
assign  r61_w_SAD_2a163_0_16b  =  w_1391_16b ;
assign  r61_w_SAD_2a163_1_16b  =  w_2159_16b ;
assign  r61_w_SAD_2a163_10_16b  =  w_9071_16b ;
assign  r61_w_SAD_2a163_11_16b  =  w_9839_16b ;
assign  r61_w_SAD_2a163_12_16b  =  w_10607_16b ;
assign  r61_w_SAD_2a163_13_16b  =  w_11375_16b ;
assign  r61_w_SAD_2a163_14_16b  =  w_12143_16b ;
assign  r61_w_SAD_2a163_15_16b  =  w_12911_16b ;
assign  r61_w_SAD_2a163_2_16b  =  w_2927_16b ;
assign  r61_w_SAD_2a163_3_16b  =  w_3695_16b ;
assign  r61_w_SAD_2a163_4_16b  =  w_4463_16b ;
assign  r61_w_SAD_2a163_5_16b  =  w_5231_16b ;
assign  r61_w_SAD_2a163_6_16b  =  w_5999_16b ;
assign  r61_w_SAD_2a163_7_16b  =  w_6767_16b ;
assign  r61_w_SAD_2a163_8_16b  =  w_7535_16b ;
assign  r61_w_SAD_2a163_9_16b  =  w_8303_16b ;
assign  r62_w_SAD_2a163_0_16b  =  w_1403_16b ;
assign  r62_w_SAD_2a163_1_16b  =  w_2171_16b ;
assign  r62_w_SAD_2a163_10_16b  =  w_9083_16b ;
assign  r62_w_SAD_2a163_11_16b  =  w_9851_16b ;
assign  r62_w_SAD_2a163_12_16b  =  w_10619_16b ;
assign  r62_w_SAD_2a163_13_16b  =  w_11387_16b ;
assign  r62_w_SAD_2a163_14_16b  =  w_12155_16b ;
assign  r62_w_SAD_2a163_15_16b  =  w_12923_16b ;
assign  r62_w_SAD_2a163_2_16b  =  w_2939_16b ;
assign  r62_w_SAD_2a163_3_16b  =  w_3707_16b ;
assign  r62_w_SAD_2a163_4_16b  =  w_4475_16b ;
assign  r62_w_SAD_2a163_5_16b  =  w_5243_16b ;
assign  r62_w_SAD_2a163_6_16b  =  w_6011_16b ;
assign  r62_w_SAD_2a163_7_16b  =  w_6779_16b ;
assign  r62_w_SAD_2a163_8_16b  =  w_7547_16b ;
assign  r62_w_SAD_2a163_9_16b  =  w_8315_16b ;
assign  r63_w_SAD_2a163_0_16b  =  w_1415_16b ;
assign  r63_w_SAD_2a163_1_16b  =  w_2183_16b ;
assign  r63_w_SAD_2a163_10_16b  =  w_9095_16b ;
assign  r63_w_SAD_2a163_11_16b  =  w_9863_16b ;
assign  r63_w_SAD_2a163_12_16b  =  w_10631_16b ;
assign  r63_w_SAD_2a163_13_16b  =  w_11399_16b ;
assign  r63_w_SAD_2a163_14_16b  =  w_12167_16b ;
assign  r63_w_SAD_2a163_15_16b  =  w_12935_16b ;
assign  r63_w_SAD_2a163_2_16b  =  w_2951_16b ;
assign  r63_w_SAD_2a163_3_16b  =  w_3719_16b ;
assign  r63_w_SAD_2a163_4_16b  =  w_4487_16b ;
assign  r63_w_SAD_2a163_5_16b  =  w_5255_16b ;
assign  r63_w_SAD_2a163_6_16b  =  w_6023_16b ;
assign  r63_w_SAD_2a163_7_16b  =  w_6791_16b ;
assign  r63_w_SAD_2a163_8_16b  =  w_7559_16b ;
assign  r63_w_SAD_2a163_9_16b  =  w_8327_16b ;
assign  r6_w_SAD_2a163_0_16b  =  w_738_16b ;
assign  r6_w_SAD_2a163_1_16b  =  w_1499_16b ;
assign  r6_w_SAD_2a163_10_16b  =  w_8411_16b ;
assign  r6_w_SAD_2a163_11_16b  =  w_9179_16b ;
assign  r6_w_SAD_2a163_12_16b  =  w_9947_16b ;
assign  r6_w_SAD_2a163_13_16b  =  w_10715_16b ;
assign  r6_w_SAD_2a163_14_16b  =  w_11483_16b ;
assign  r6_w_SAD_2a163_15_16b  =  w_12251_16b ;
assign  r6_w_SAD_2a163_2_16b  =  w_2267_16b ;
assign  r6_w_SAD_2a163_3_16b  =  w_3035_16b ;
assign  r6_w_SAD_2a163_4_16b  =  w_3803_16b ;
assign  r6_w_SAD_2a163_5_16b  =  w_4571_16b ;
assign  r6_w_SAD_2a163_6_16b  =  w_5339_16b ;
assign  r6_w_SAD_2a163_7_16b  =  w_6107_16b ;
assign  r6_w_SAD_2a163_8_16b  =  w_6875_16b ;
assign  r6_w_SAD_2a163_9_16b  =  w_7643_16b ;
assign  r7_w_SAD_2a163_0_16b  =  w_750_16b ;
assign  r7_w_SAD_2a163_1_16b  =  w_1511_16b ;
assign  r7_w_SAD_2a163_10_16b  =  w_8423_16b ;
assign  r7_w_SAD_2a163_11_16b  =  w_9191_16b ;
assign  r7_w_SAD_2a163_12_16b  =  w_9959_16b ;
assign  r7_w_SAD_2a163_13_16b  =  w_10727_16b ;
assign  r7_w_SAD_2a163_14_16b  =  w_11495_16b ;
assign  r7_w_SAD_2a163_15_16b  =  w_12263_16b ;
assign  r7_w_SAD_2a163_2_16b  =  w_2279_16b ;
assign  r7_w_SAD_2a163_3_16b  =  w_3047_16b ;
assign  r7_w_SAD_2a163_4_16b  =  w_3815_16b ;
assign  r7_w_SAD_2a163_5_16b  =  w_4583_16b ;
assign  r7_w_SAD_2a163_6_16b  =  w_5351_16b ;
assign  r7_w_SAD_2a163_7_16b  =  w_6119_16b ;
assign  r7_w_SAD_2a163_8_16b  =  w_6887_16b ;
assign  r7_w_SAD_2a163_9_16b  =  w_7655_16b ;
assign  r8_w_SAD_2a163_0_16b  =  w_761_16b ;
assign  r8_w_SAD_2a163_1_16b  =  w_1523_16b ;
assign  r8_w_SAD_2a163_10_16b  =  w_8435_16b ;
assign  r8_w_SAD_2a163_11_16b  =  w_9203_16b ;
assign  r8_w_SAD_2a163_12_16b  =  w_9971_16b ;
assign  r8_w_SAD_2a163_13_16b  =  w_10739_16b ;
assign  r8_w_SAD_2a163_14_16b  =  w_11507_16b ;
assign  r8_w_SAD_2a163_15_16b  =  w_12275_16b ;
assign  r8_w_SAD_2a163_2_16b  =  w_2291_16b ;
assign  r8_w_SAD_2a163_3_16b  =  w_3059_16b ;
assign  r8_w_SAD_2a163_4_16b  =  w_3827_16b ;
assign  r8_w_SAD_2a163_5_16b  =  w_4595_16b ;
assign  r8_w_SAD_2a163_6_16b  =  w_5363_16b ;
assign  r8_w_SAD_2a163_7_16b  =  w_6131_16b ;
assign  r8_w_SAD_2a163_8_16b  =  w_6899_16b ;
assign  r8_w_SAD_2a163_9_16b  =  w_7667_16b ;
assign  r9_w_SAD_2a163_0_16b  =  w_773_16b ;
assign  r9_w_SAD_2a163_1_16b  =  w_1535_16b ;
assign  r9_w_SAD_2a163_10_16b  =  w_8447_16b ;
assign  r9_w_SAD_2a163_11_16b  =  w_9215_16b ;
assign  r9_w_SAD_2a163_12_16b  =  w_9983_16b ;
assign  r9_w_SAD_2a163_13_16b  =  w_10751_16b ;
assign  r9_w_SAD_2a163_14_16b  =  w_11519_16b ;
assign  r9_w_SAD_2a163_15_16b  =  w_12287_16b ;
assign  r9_w_SAD_2a163_2_16b  =  w_2303_16b ;
assign  r9_w_SAD_2a163_3_16b  =  w_3071_16b ;
assign  r9_w_SAD_2a163_4_16b  =  w_3839_16b ;
assign  r9_w_SAD_2a163_5_16b  =  w_4607_16b ;
assign  r9_w_SAD_2a163_6_16b  =  w_5375_16b ;
assign  r9_w_SAD_2a163_7_16b  =  w_6143_16b ;
assign  r9_w_SAD_2a163_8_16b  =  w_6911_16b ;
assign  r9_w_SAD_2a163_9_16b  =  w_7679_16b ;
assign  w_1000_16b  =  r28_w_SAD_2a163_0_16b ;
assign  w_10000_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_0 (
  .a(w_9999_8b),
  .b(w_10000_8b),
  .c(w_10001_8b),
  .clk(clk)
);
ABS_16b_pe abs_1 (
  .a(w_10001_8b),
  .b(1'b0),
  .c(w_10004_8b),
  .clk(clk)
);
assign  w_10005_8b  =  w_10004_8b ;
assign  w_10006_16b  =  w_10005_8b ;
ADD_16b_pe add_2 (
  .a(w_10006_16b),
  .b(w_9996_16b),
  .c(w_10007_16b),
  .clk(clk)
);
assign  w_10008_16b  =  r11_w_SAD_2a163_12_16b ;
assign  w_10011_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10012_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_3 (
  .a(w_10012_8b),
  .b(w_10011_8b),
  .c(w_10013_8b),
  .clk(clk)
);
ABS_16b_pe abs_4 (
  .a(w_10013_8b),
  .b(1'b0),
  .c(w_10016_8b),
  .clk(clk)
);
assign  w_10017_8b  =  w_10016_8b ;
assign  w_10018_16b  =  w_10017_8b ;
ADD_16b_pe add_5 (
  .a(w_10008_16b),
  .b(w_10018_16b),
  .c(w_10019_16b),
  .clk(clk)
);
assign  w_10020_16b  =  r12_w_SAD_2a163_12_16b ;
assign  w_10023_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10024_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_6 (
  .a(w_10023_8b),
  .b(w_10024_8b),
  .c(w_10025_8b),
  .clk(clk)
);
ABS_16b_pe abs_7 (
  .a(w_10025_8b),
  .b(1'b0),
  .c(w_10028_8b),
  .clk(clk)
);
assign  w_10029_8b  =  w_10028_8b ;
assign  w_1003_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10030_16b  =  w_10029_8b ;
ADD_16b_pe add_8 (
  .a(w_10020_16b),
  .b(w_10030_16b),
  .c(w_10031_16b),
  .clk(clk)
);
assign  w_10032_16b  =  r13_w_SAD_2a163_12_16b ;
assign  w_10035_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10036_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_9 (
  .a(w_10035_8b),
  .b(w_10036_8b),
  .c(w_10037_8b),
  .clk(clk)
);
assign  w_1004_8b  =  w_pass_4_stencil_5_3_8b ;
ABS_16b_pe abs_10 (
  .a(w_10037_8b),
  .b(1'b0),
  .c(w_10040_8b),
  .clk(clk)
);
assign  w_10041_8b  =  w_10040_8b ;
assign  w_10042_16b  =  w_10041_8b ;
ADD_16b_pe add_11 (
  .a(w_10042_16b),
  .b(w_10032_16b),
  .c(w_10043_16b),
  .clk(clk)
);
assign  w_10044_16b  =  r14_w_SAD_2a163_12_16b ;
assign  w_10047_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10048_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_12 (
  .a(w_10047_8b),
  .b(w_10048_8b),
  .c(w_10049_8b),
  .clk(clk)
);
SUB_16b_pe sub_13 (
  .a(w_1003_8b),
  .b(w_1004_8b),
  .c(w_1005_8b),
  .clk(clk)
);
ABS_16b_pe abs_14 (
  .a(w_10049_8b),
  .b(1'b0),
  .c(w_10052_8b),
  .clk(clk)
);
assign  w_10053_8b  =  w_10052_8b ;
assign  w_10054_16b  =  w_10053_8b ;
ADD_16b_pe add_15 (
  .a(w_10044_16b),
  .b(w_10054_16b),
  .c(w_10055_16b),
  .clk(clk)
);
assign  w_10056_16b  =  r15_w_SAD_2a163_12_16b ;
assign  w_10059_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10060_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_16 (
  .a(w_10060_8b),
  .b(w_10059_8b),
  .c(w_10061_8b),
  .clk(clk)
);
ABS_16b_pe abs_17 (
  .a(w_10061_8b),
  .b(1'b0),
  .c(w_10064_8b),
  .clk(clk)
);
assign  w_10065_8b  =  w_10064_8b ;
assign  w_10066_16b  =  w_10065_8b ;
ADD_16b_pe add_18 (
  .a(w_10066_16b),
  .b(w_10056_16b),
  .c(w_10067_16b),
  .clk(clk)
);
assign  w_10068_16b  =  r16_w_SAD_2a163_12_16b ;
assign  w_10071_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10072_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_19 (
  .a(w_10071_8b),
  .b(w_10072_8b),
  .c(w_10073_8b),
  .clk(clk)
);
ABS_16b_pe abs_20 (
  .a(w_10073_8b),
  .b(1'b0),
  .c(w_10076_8b),
  .clk(clk)
);
assign  w_10077_8b  =  w_10076_8b ;
assign  w_10078_16b  =  w_10077_8b ;
ADD_16b_pe add_21 (
  .a(w_10078_16b),
  .b(w_10068_16b),
  .c(w_10079_16b),
  .clk(clk)
);
ABS_16b_pe abs_22 (
  .a(w_1005_8b),
  .b(1'b0),
  .c(w_1008_8b),
  .clk(clk)
);
assign  w_10080_16b  =  r17_w_SAD_2a163_12_16b ;
assign  w_10083_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10084_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_23 (
  .a(w_10083_8b),
  .b(w_10084_8b),
  .c(w_10085_8b),
  .clk(clk)
);
ABS_16b_pe abs_24 (
  .a(w_10085_8b),
  .b(1'b0),
  .c(w_10088_8b),
  .clk(clk)
);
assign  w_10089_8b  =  w_10088_8b ;
assign  w_1009_8b  =  w_1008_8b ;
assign  w_10090_16b  =  w_10089_8b ;
ADD_16b_pe add_25 (
  .a(w_10080_16b),
  .b(w_10090_16b),
  .c(w_10091_16b),
  .clk(clk)
);
assign  w_10092_16b  =  r18_w_SAD_2a163_12_16b ;
assign  w_10095_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10096_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_26 (
  .a(w_10096_8b),
  .b(w_10095_8b),
  .c(w_10097_8b),
  .clk(clk)
);
assign  w_1010_16b  =  w_1009_8b ;
ABS_16b_pe abs_27 (
  .a(w_10097_8b),
  .b(1'b0),
  .c(w_10100_8b),
  .clk(clk)
);
assign  w_10101_8b  =  w_10100_8b ;
assign  w_10102_16b  =  w_10101_8b ;
ADD_16b_pe add_28 (
  .a(w_10092_16b),
  .b(w_10102_16b),
  .c(w_10103_16b),
  .clk(clk)
);
assign  w_10104_16b  =  r19_w_SAD_2a163_12_16b ;
assign  w_10107_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10108_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_29 (
  .a(w_10108_8b),
  .b(w_10107_8b),
  .c(w_10109_8b),
  .clk(clk)
);
ADD_16b_pe add_30 (
  .a(w_1000_16b),
  .b(w_1010_16b),
  .c(w_1011_16b),
  .clk(clk)
);
ABS_16b_pe abs_31 (
  .a(w_10109_8b),
  .b(1'b0),
  .c(w_10112_8b),
  .clk(clk)
);
assign  w_10113_8b  =  w_10112_8b ;
assign  w_10114_16b  =  w_10113_8b ;
ADD_16b_pe add_32 (
  .a(w_10114_16b),
  .b(w_10104_16b),
  .c(w_10115_16b),
  .clk(clk)
);
assign  w_10116_16b  =  r20_w_SAD_2a163_12_16b ;
assign  w_10119_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_1012_16b  =  r29_w_SAD_2a163_0_16b ;
assign  w_10120_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_33 (
  .a(w_10120_8b),
  .b(w_10119_8b),
  .c(w_10121_8b),
  .clk(clk)
);
ABS_16b_pe abs_34 (
  .a(w_10121_8b),
  .b(1'b0),
  .c(w_10124_8b),
  .clk(clk)
);
assign  w_10125_8b  =  w_10124_8b ;
assign  w_10126_16b  =  w_10125_8b ;
ADD_16b_pe add_35 (
  .a(w_10116_16b),
  .b(w_10126_16b),
  .c(w_10127_16b),
  .clk(clk)
);
assign  w_10128_16b  =  r21_w_SAD_2a163_12_16b ;
assign  w_10131_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10132_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_36 (
  .a(w_10131_8b),
  .b(w_10132_8b),
  .c(w_10133_8b),
  .clk(clk)
);
ABS_16b_pe abs_37 (
  .a(w_10133_8b),
  .b(1'b0),
  .c(w_10136_8b),
  .clk(clk)
);
assign  w_10137_8b  =  w_10136_8b ;
assign  w_10138_16b  =  w_10137_8b ;
ADD_16b_pe add_38 (
  .a(w_10138_16b),
  .b(w_10128_16b),
  .c(w_10139_16b),
  .clk(clk)
);
assign  w_10140_16b  =  r22_w_SAD_2a163_12_16b ;
assign  w_10143_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10144_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_39 (
  .a(w_10144_8b),
  .b(w_10143_8b),
  .c(w_10145_8b),
  .clk(clk)
);
ABS_16b_pe abs_40 (
  .a(w_10145_8b),
  .b(1'b0),
  .c(w_10148_8b),
  .clk(clk)
);
assign  w_10149_8b  =  w_10148_8b ;
assign  w_1015_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10150_16b  =  w_10149_8b ;
ADD_16b_pe add_41 (
  .a(w_10150_16b),
  .b(w_10140_16b),
  .c(w_10151_16b),
  .clk(clk)
);
assign  w_10152_16b  =  r23_w_SAD_2a163_12_16b ;
assign  w_10155_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10156_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_42 (
  .a(w_10156_8b),
  .b(w_10155_8b),
  .c(w_10157_8b),
  .clk(clk)
);
assign  w_1016_8b  =  w_pass_4_stencil_6_3_8b ;
ABS_16b_pe abs_43 (
  .a(w_10157_8b),
  .b(1'b0),
  .c(w_10160_8b),
  .clk(clk)
);
assign  w_10161_8b  =  w_10160_8b ;
assign  w_10162_16b  =  w_10161_8b ;
ADD_16b_pe add_44 (
  .a(w_10152_16b),
  .b(w_10162_16b),
  .c(w_10163_16b),
  .clk(clk)
);
assign  w_10164_16b  =  r24_w_SAD_2a163_12_16b ;
assign  w_10167_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10168_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_45 (
  .a(w_10168_8b),
  .b(w_10167_8b),
  .c(w_10169_8b),
  .clk(clk)
);
SUB_16b_pe sub_46 (
  .a(w_1015_8b),
  .b(w_1016_8b),
  .c(w_1017_8b),
  .clk(clk)
);
ABS_16b_pe abs_47 (
  .a(w_10169_8b),
  .b(1'b0),
  .c(w_10172_8b),
  .clk(clk)
);
assign  w_10173_8b  =  w_10172_8b ;
assign  w_10174_16b  =  w_10173_8b ;
ADD_16b_pe add_48 (
  .a(w_10174_16b),
  .b(w_10164_16b),
  .c(w_10175_16b),
  .clk(clk)
);
assign  w_10176_16b  =  r25_w_SAD_2a163_12_16b ;
assign  w_10179_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10180_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_49 (
  .a(w_10179_8b),
  .b(w_10180_8b),
  .c(w_10181_8b),
  .clk(clk)
);
ABS_16b_pe abs_50 (
  .a(w_10181_8b),
  .b(1'b0),
  .c(w_10184_8b),
  .clk(clk)
);
assign  w_10185_8b  =  w_10184_8b ;
assign  w_10186_16b  =  w_10185_8b ;
ADD_16b_pe add_51 (
  .a(w_10176_16b),
  .b(w_10186_16b),
  .c(w_10187_16b),
  .clk(clk)
);
assign  w_10188_16b  =  r26_w_SAD_2a163_12_16b ;
assign  w_10191_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10192_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_52 (
  .a(w_10192_8b),
  .b(w_10191_8b),
  .c(w_10193_8b),
  .clk(clk)
);
ABS_16b_pe abs_53 (
  .a(w_10193_8b),
  .b(1'b0),
  .c(w_10196_8b),
  .clk(clk)
);
assign  w_10197_8b  =  w_10196_8b ;
assign  w_10198_16b  =  w_10197_8b ;
ADD_16b_pe add_54 (
  .a(w_10188_16b),
  .b(w_10198_16b),
  .c(w_10199_16b),
  .clk(clk)
);
ABS_16b_pe abs_55 (
  .a(w_1017_8b),
  .b(1'b0),
  .c(w_1020_8b),
  .clk(clk)
);
assign  w_10200_16b  =  r27_w_SAD_2a163_12_16b ;
assign  w_10203_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10204_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_56 (
  .a(w_10203_8b),
  .b(w_10204_8b),
  .c(w_10205_8b),
  .clk(clk)
);
ABS_16b_pe abs_57 (
  .a(w_10205_8b),
  .b(1'b0),
  .c(w_10208_8b),
  .clk(clk)
);
assign  w_10209_8b  =  w_10208_8b ;
assign  w_1021_8b  =  w_1020_8b ;
assign  w_10210_16b  =  w_10209_8b ;
ADD_16b_pe add_58 (
  .a(w_10200_16b),
  .b(w_10210_16b),
  .c(w_10211_16b),
  .clk(clk)
);
assign  w_10212_16b  =  r28_w_SAD_2a163_12_16b ;
assign  w_10215_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10216_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_59 (
  .a(w_10215_8b),
  .b(w_10216_8b),
  .c(w_10217_8b),
  .clk(clk)
);
assign  w_1022_16b  =  w_1021_8b ;
ABS_16b_pe abs_60 (
  .a(w_10217_8b),
  .b(1'b0),
  .c(w_10220_8b),
  .clk(clk)
);
assign  w_10221_8b  =  w_10220_8b ;
assign  w_10222_16b  =  w_10221_8b ;
ADD_16b_pe add_61 (
  .a(w_10222_16b),
  .b(w_10212_16b),
  .c(w_10223_16b),
  .clk(clk)
);
assign  w_10224_16b  =  r29_w_SAD_2a163_12_16b ;
assign  w_10227_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10228_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_62 (
  .a(w_10228_8b),
  .b(w_10227_8b),
  .c(w_10229_8b),
  .clk(clk)
);
ADD_16b_pe add_63 (
  .a(w_1022_16b),
  .b(w_1012_16b),
  .c(w_1023_16b),
  .clk(clk)
);
ABS_16b_pe abs_64 (
  .a(w_10229_8b),
  .b(1'b0),
  .c(w_10232_8b),
  .clk(clk)
);
assign  w_10233_8b  =  w_10232_8b ;
assign  w_10234_16b  =  w_10233_8b ;
ADD_16b_pe add_65 (
  .a(w_10224_16b),
  .b(w_10234_16b),
  .c(w_10235_16b),
  .clk(clk)
);
assign  w_10236_16b  =  r30_w_SAD_2a163_12_16b ;
assign  w_10239_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_1024_16b  =  r30_w_SAD_2a163_0_16b ;
assign  w_10240_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_66 (
  .a(w_10239_8b),
  .b(w_10240_8b),
  .c(w_10241_8b),
  .clk(clk)
);
ABS_16b_pe abs_67 (
  .a(w_10241_8b),
  .b(1'b0),
  .c(w_10244_8b),
  .clk(clk)
);
assign  w_10245_8b  =  w_10244_8b ;
assign  w_10246_16b  =  w_10245_8b ;
ADD_16b_pe add_68 (
  .a(w_10246_16b),
  .b(w_10236_16b),
  .c(w_10247_16b),
  .clk(clk)
);
assign  w_10248_16b  =  r31_w_SAD_2a163_12_16b ;
assign  w_10251_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10252_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_69 (
  .a(w_10251_8b),
  .b(w_10252_8b),
  .c(w_10253_8b),
  .clk(clk)
);
ABS_16b_pe abs_70 (
  .a(w_10253_8b),
  .b(1'b0),
  .c(w_10256_8b),
  .clk(clk)
);
assign  w_10257_8b  =  w_10256_8b ;
assign  w_10258_16b  =  w_10257_8b ;
ADD_16b_pe add_71 (
  .a(w_10258_16b),
  .b(w_10248_16b),
  .c(w_10259_16b),
  .clk(clk)
);
assign  w_10260_16b  =  r32_w_SAD_2a163_12_16b ;
assign  w_10263_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10264_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_72 (
  .a(w_10264_8b),
  .b(w_10263_8b),
  .c(w_10265_8b),
  .clk(clk)
);
ABS_16b_pe abs_73 (
  .a(w_10265_8b),
  .b(1'b0),
  .c(w_10268_8b),
  .clk(clk)
);
assign  w_10269_8b  =  w_10268_8b ;
assign  w_1027_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10270_16b  =  w_10269_8b ;
ADD_16b_pe add_74 (
  .a(w_10260_16b),
  .b(w_10270_16b),
  .c(w_10271_16b),
  .clk(clk)
);
assign  w_10272_16b  =  r33_w_SAD_2a163_12_16b ;
assign  w_10275_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10276_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_75 (
  .a(w_10276_8b),
  .b(w_10275_8b),
  .c(w_10277_8b),
  .clk(clk)
);
assign  w_1028_8b  =  w_pass_4_stencil_7_3_8b ;
ABS_16b_pe abs_76 (
  .a(w_10277_8b),
  .b(1'b0),
  .c(w_10280_8b),
  .clk(clk)
);
assign  w_10281_8b  =  w_10280_8b ;
assign  w_10282_16b  =  w_10281_8b ;
ADD_16b_pe add_77 (
  .a(w_10282_16b),
  .b(w_10272_16b),
  .c(w_10283_16b),
  .clk(clk)
);
assign  w_10284_16b  =  r34_w_SAD_2a163_12_16b ;
assign  w_10287_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10288_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_78 (
  .a(w_10288_8b),
  .b(w_10287_8b),
  .c(w_10289_8b),
  .clk(clk)
);
SUB_16b_pe sub_79 (
  .a(w_1028_8b),
  .b(w_1027_8b),
  .c(w_1029_8b),
  .clk(clk)
);
ABS_16b_pe abs_80 (
  .a(w_10289_8b),
  .b(1'b0),
  .c(w_10292_8b),
  .clk(clk)
);
assign  w_10293_8b  =  w_10292_8b ;
assign  w_10294_16b  =  w_10293_8b ;
ADD_16b_pe add_81 (
  .a(w_10294_16b),
  .b(w_10284_16b),
  .c(w_10295_16b),
  .clk(clk)
);
assign  w_10296_16b  =  r35_w_SAD_2a163_12_16b ;
assign  w_10299_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10300_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_82 (
  .a(w_10300_8b),
  .b(w_10299_8b),
  .c(w_10301_8b),
  .clk(clk)
);
ABS_16b_pe abs_83 (
  .a(w_10301_8b),
  .b(1'b0),
  .c(w_10304_8b),
  .clk(clk)
);
assign  w_10305_8b  =  w_10304_8b ;
assign  w_10306_16b  =  w_10305_8b ;
ADD_16b_pe add_84 (
  .a(w_10296_16b),
  .b(w_10306_16b),
  .c(w_10307_16b),
  .clk(clk)
);
assign  w_10308_16b  =  r36_w_SAD_2a163_12_16b ;
assign  w_10311_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10312_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_85 (
  .a(w_10311_8b),
  .b(w_10312_8b),
  .c(w_10313_8b),
  .clk(clk)
);
ABS_16b_pe abs_86 (
  .a(w_10313_8b),
  .b(1'b0),
  .c(w_10316_8b),
  .clk(clk)
);
assign  w_10317_8b  =  w_10316_8b ;
assign  w_10318_16b  =  w_10317_8b ;
ADD_16b_pe add_87 (
  .a(w_10318_16b),
  .b(w_10308_16b),
  .c(w_10319_16b),
  .clk(clk)
);
ABS_16b_pe abs_88 (
  .a(w_1029_8b),
  .b(1'b0),
  .c(w_1032_8b),
  .clk(clk)
);
assign  w_10320_16b  =  r37_w_SAD_2a163_12_16b ;
assign  w_10323_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10324_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_89 (
  .a(w_10324_8b),
  .b(w_10323_8b),
  .c(w_10325_8b),
  .clk(clk)
);
ABS_16b_pe abs_90 (
  .a(w_10325_8b),
  .b(1'b0),
  .c(w_10328_8b),
  .clk(clk)
);
assign  w_10329_8b  =  w_10328_8b ;
assign  w_1033_8b  =  w_1032_8b ;
assign  w_10330_16b  =  w_10329_8b ;
ADD_16b_pe add_91 (
  .a(w_10330_16b),
  .b(w_10320_16b),
  .c(w_10331_16b),
  .clk(clk)
);
assign  w_10332_16b  =  r38_w_SAD_2a163_12_16b ;
assign  w_10335_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10336_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_92 (
  .a(w_10336_8b),
  .b(w_10335_8b),
  .c(w_10337_8b),
  .clk(clk)
);
assign  w_1034_16b  =  w_1033_8b ;
ABS_16b_pe abs_93 (
  .a(w_10337_8b),
  .b(1'b0),
  .c(w_10340_8b),
  .clk(clk)
);
assign  w_10341_8b  =  w_10340_8b ;
assign  w_10342_16b  =  w_10341_8b ;
ADD_16b_pe add_94 (
  .a(w_10332_16b),
  .b(w_10342_16b),
  .c(w_10343_16b),
  .clk(clk)
);
assign  w_10344_16b  =  r39_w_SAD_2a163_12_16b ;
assign  w_10347_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_10348_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_95 (
  .a(w_10347_8b),
  .b(w_10348_8b),
  .c(w_10349_8b),
  .clk(clk)
);
ADD_16b_pe add_96 (
  .a(w_1024_16b),
  .b(w_1034_16b),
  .c(w_1035_16b),
  .clk(clk)
);
ABS_16b_pe abs_97 (
  .a(w_10349_8b),
  .b(1'b0),
  .c(w_10352_8b),
  .clk(clk)
);
assign  w_10353_8b  =  w_10352_8b ;
assign  w_10354_16b  =  w_10353_8b ;
ADD_16b_pe add_98 (
  .a(w_10354_16b),
  .b(w_10344_16b),
  .c(w_10355_16b),
  .clk(clk)
);
assign  w_10356_16b  =  r40_w_SAD_2a163_12_16b ;
assign  w_10359_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_1036_16b  =  r31_w_SAD_2a163_0_16b ;
assign  w_10360_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_99 (
  .a(w_10360_8b),
  .b(w_10359_8b),
  .c(w_10361_8b),
  .clk(clk)
);
ABS_16b_pe abs_100 (
  .a(w_10361_8b),
  .b(1'b0),
  .c(w_10364_8b),
  .clk(clk)
);
assign  w_10365_8b  =  w_10364_8b ;
assign  w_10366_16b  =  w_10365_8b ;
ADD_16b_pe add_101 (
  .a(w_10356_16b),
  .b(w_10366_16b),
  .c(w_10367_16b),
  .clk(clk)
);
assign  w_10368_16b  =  r41_w_SAD_2a163_12_16b ;
assign  w_10371_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_10372_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_102 (
  .a(w_10372_8b),
  .b(w_10371_8b),
  .c(w_10373_8b),
  .clk(clk)
);
ABS_16b_pe abs_103 (
  .a(w_10373_8b),
  .b(1'b0),
  .c(w_10376_8b),
  .clk(clk)
);
assign  w_10377_8b  =  w_10376_8b ;
assign  w_10378_16b  =  w_10377_8b ;
ADD_16b_pe add_104 (
  .a(w_10368_16b),
  .b(w_10378_16b),
  .c(w_10379_16b),
  .clk(clk)
);
assign  w_1038_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10380_16b  =  r42_w_SAD_2a163_12_16b ;
assign  w_10383_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_10384_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_105 (
  .a(w_10383_8b),
  .b(w_10384_8b),
  .c(w_10385_8b),
  .clk(clk)
);
ABS_16b_pe abs_106 (
  .a(w_10385_8b),
  .b(1'b0),
  .c(w_10388_8b),
  .clk(clk)
);
assign  w_10389_8b  =  w_10388_8b ;
assign  w_1039_8b  =  w_pass_4_stencil_0_4_8b ;
assign  w_10390_16b  =  w_10389_8b ;
ADD_16b_pe add_107 (
  .a(w_10390_16b),
  .b(w_10380_16b),
  .c(w_10391_16b),
  .clk(clk)
);
assign  w_10392_16b  =  r43_w_SAD_2a163_12_16b ;
assign  w_10395_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_10396_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_108 (
  .a(w_10395_8b),
  .b(w_10396_8b),
  .c(w_10397_8b),
  .clk(clk)
);
SUB_16b_pe sub_109 (
  .a(w_1038_8b),
  .b(w_1039_8b),
  .c(w_1040_8b),
  .clk(clk)
);
ABS_16b_pe abs_110 (
  .a(w_10397_8b),
  .b(1'b0),
  .c(w_10400_8b),
  .clk(clk)
);
assign  w_10401_8b  =  w_10400_8b ;
assign  w_10402_16b  =  w_10401_8b ;
ADD_16b_pe add_111 (
  .a(w_10392_16b),
  .b(w_10402_16b),
  .c(w_10403_16b),
  .clk(clk)
);
assign  w_10404_16b  =  r44_w_SAD_2a163_12_16b ;
assign  w_10407_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_10408_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_112 (
  .a(w_10407_8b),
  .b(w_10408_8b),
  .c(w_10409_8b),
  .clk(clk)
);
ABS_16b_pe abs_113 (
  .a(w_10409_8b),
  .b(1'b0),
  .c(w_10412_8b),
  .clk(clk)
);
assign  w_10413_8b  =  w_10412_8b ;
assign  w_10414_16b  =  w_10413_8b ;
ADD_16b_pe add_114 (
  .a(w_10404_16b),
  .b(w_10414_16b),
  .c(w_10415_16b),
  .clk(clk)
);
assign  w_10416_16b  =  r45_w_SAD_2a163_12_16b ;
assign  w_10419_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_10420_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_115 (
  .a(w_10420_8b),
  .b(w_10419_8b),
  .c(w_10421_8b),
  .clk(clk)
);
ABS_16b_pe abs_116 (
  .a(w_10421_8b),
  .b(1'b0),
  .c(w_10424_8b),
  .clk(clk)
);
assign  w_10425_8b  =  w_10424_8b ;
assign  w_10426_16b  =  w_10425_8b ;
ADD_16b_pe add_117 (
  .a(w_10426_16b),
  .b(w_10416_16b),
  .c(w_10427_16b),
  .clk(clk)
);
assign  w_10428_16b  =  r46_w_SAD_2a163_12_16b ;
ABS_16b_pe abs_118 (
  .a(w_1040_8b),
  .b(1'b0),
  .c(w_1043_8b),
  .clk(clk)
);
assign  w_10431_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_10432_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_119 (
  .a(w_10431_8b),
  .b(w_10432_8b),
  .c(w_10433_8b),
  .clk(clk)
);
ABS_16b_pe abs_120 (
  .a(w_10433_8b),
  .b(1'b0),
  .c(w_10436_8b),
  .clk(clk)
);
assign  w_10437_8b  =  w_10436_8b ;
assign  w_10438_16b  =  w_10437_8b ;
ADD_16b_pe add_121 (
  .a(w_10438_16b),
  .b(w_10428_16b),
  .c(w_10439_16b),
  .clk(clk)
);
assign  w_1044_8b  =  w_1043_8b ;
assign  w_10440_16b  =  r47_w_SAD_2a163_12_16b ;
assign  w_10443_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_10444_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_122 (
  .a(w_10443_8b),
  .b(w_10444_8b),
  .c(w_10445_8b),
  .clk(clk)
);
ABS_16b_pe abs_123 (
  .a(w_10445_8b),
  .b(1'b0),
  .c(w_10448_8b),
  .clk(clk)
);
assign  w_10449_8b  =  w_10448_8b ;
assign  w_1045_16b  =  w_1044_8b ;
assign  w_10450_16b  =  w_10449_8b ;
ADD_16b_pe add_124 (
  .a(w_10440_16b),
  .b(w_10450_16b),
  .c(w_10451_16b),
  .clk(clk)
);
assign  w_10452_16b  =  r48_w_SAD_2a163_12_16b ;
assign  w_10455_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_10456_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_125 (
  .a(w_10456_8b),
  .b(w_10455_8b),
  .c(w_10457_8b),
  .clk(clk)
);
ADD_16b_pe add_126 (
  .a(w_1045_16b),
  .b(w_1036_16b),
  .c(w_1046_16b),
  .clk(clk)
);
ABS_16b_pe abs_127 (
  .a(w_10457_8b),
  .b(1'b0),
  .c(w_10460_8b),
  .clk(clk)
);
assign  w_10461_8b  =  w_10460_8b ;
assign  w_10462_16b  =  w_10461_8b ;
ADD_16b_pe add_128 (
  .a(w_10462_16b),
  .b(w_10452_16b),
  .c(w_10463_16b),
  .clk(clk)
);
assign  w_10464_16b  =  r49_w_SAD_2a163_12_16b ;
assign  w_10467_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_10468_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_129 (
  .a(w_10468_8b),
  .b(w_10467_8b),
  .c(w_10469_8b),
  .clk(clk)
);
assign  w_1047_16b  =  r32_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_130 (
  .a(w_10469_8b),
  .b(1'b0),
  .c(w_10472_8b),
  .clk(clk)
);
assign  w_10473_8b  =  w_10472_8b ;
assign  w_10474_16b  =  w_10473_8b ;
ADD_16b_pe add_131 (
  .a(w_10474_16b),
  .b(w_10464_16b),
  .c(w_10475_16b),
  .clk(clk)
);
assign  w_10476_16b  =  r50_w_SAD_2a163_12_16b ;
assign  w_10479_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_10480_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_132 (
  .a(w_10480_8b),
  .b(w_10479_8b),
  .c(w_10481_8b),
  .clk(clk)
);
ABS_16b_pe abs_133 (
  .a(w_10481_8b),
  .b(1'b0),
  .c(w_10484_8b),
  .clk(clk)
);
assign  w_10485_8b  =  w_10484_8b ;
assign  w_10486_16b  =  w_10485_8b ;
ADD_16b_pe add_134 (
  .a(w_10486_16b),
  .b(w_10476_16b),
  .c(w_10487_16b),
  .clk(clk)
);
assign  w_10488_16b  =  r51_w_SAD_2a163_12_16b ;
assign  w_10491_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_10492_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_135 (
  .a(w_10492_8b),
  .b(w_10491_8b),
  .c(w_10493_8b),
  .clk(clk)
);
ABS_16b_pe abs_136 (
  .a(w_10493_8b),
  .b(1'b0),
  .c(w_10496_8b),
  .clk(clk)
);
assign  w_10497_8b  =  w_10496_8b ;
assign  w_10498_16b  =  w_10497_8b ;
ADD_16b_pe add_137 (
  .a(w_10488_16b),
  .b(w_10498_16b),
  .c(w_10499_16b),
  .clk(clk)
);
assign  w_1050_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10500_16b  =  r52_w_SAD_2a163_12_16b ;
assign  w_10503_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_10504_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_138 (
  .a(w_10504_8b),
  .b(w_10503_8b),
  .c(w_10505_8b),
  .clk(clk)
);
ABS_16b_pe abs_139 (
  .a(w_10505_8b),
  .b(1'b0),
  .c(w_10508_8b),
  .clk(clk)
);
assign  w_10509_8b  =  w_10508_8b ;
assign  w_1051_8b  =  w_pass_4_stencil_1_4_8b ;
assign  w_10510_16b  =  w_10509_8b ;
ADD_16b_pe add_140 (
  .a(w_10510_16b),
  .b(w_10500_16b),
  .c(w_10511_16b),
  .clk(clk)
);
assign  w_10512_16b  =  r53_w_SAD_2a163_12_16b ;
assign  w_10515_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_10516_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_141 (
  .a(w_10516_8b),
  .b(w_10515_8b),
  .c(w_10517_8b),
  .clk(clk)
);
SUB_16b_pe sub_142 (
  .a(w_1050_8b),
  .b(w_1051_8b),
  .c(w_1052_8b),
  .clk(clk)
);
ABS_16b_pe abs_143 (
  .a(w_10517_8b),
  .b(1'b0),
  .c(w_10520_8b),
  .clk(clk)
);
assign  w_10521_8b  =  w_10520_8b ;
assign  w_10522_16b  =  w_10521_8b ;
ADD_16b_pe add_144 (
  .a(w_10512_16b),
  .b(w_10522_16b),
  .c(w_10523_16b),
  .clk(clk)
);
assign  w_10524_16b  =  r54_w_SAD_2a163_12_16b ;
assign  w_10527_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_10528_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_145 (
  .a(w_10528_8b),
  .b(w_10527_8b),
  .c(w_10529_8b),
  .clk(clk)
);
ABS_16b_pe abs_146 (
  .a(w_10529_8b),
  .b(1'b0),
  .c(w_10532_8b),
  .clk(clk)
);
assign  w_10533_8b  =  w_10532_8b ;
assign  w_10534_16b  =  w_10533_8b ;
ADD_16b_pe add_147 (
  .a(w_10534_16b),
  .b(w_10524_16b),
  .c(w_10535_16b),
  .clk(clk)
);
assign  w_10536_16b  =  r55_w_SAD_2a163_12_16b ;
assign  w_10539_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_10540_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_148 (
  .a(w_10539_8b),
  .b(w_10540_8b),
  .c(w_10541_8b),
  .clk(clk)
);
ABS_16b_pe abs_149 (
  .a(w_10541_8b),
  .b(1'b0),
  .c(w_10544_8b),
  .clk(clk)
);
assign  w_10545_8b  =  w_10544_8b ;
assign  w_10546_16b  =  w_10545_8b ;
ADD_16b_pe add_150 (
  .a(w_10536_16b),
  .b(w_10546_16b),
  .c(w_10547_16b),
  .clk(clk)
);
assign  w_10548_16b  =  r56_w_SAD_2a163_12_16b ;
ABS_16b_pe abs_151 (
  .a(w_1052_8b),
  .b(1'b0),
  .c(w_1055_8b),
  .clk(clk)
);
assign  w_10551_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_10552_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_152 (
  .a(w_10552_8b),
  .b(w_10551_8b),
  .c(w_10553_8b),
  .clk(clk)
);
ABS_16b_pe abs_153 (
  .a(w_10553_8b),
  .b(1'b0),
  .c(w_10556_8b),
  .clk(clk)
);
assign  w_10557_8b  =  w_10556_8b ;
assign  w_10558_16b  =  w_10557_8b ;
ADD_16b_pe add_154 (
  .a(w_10548_16b),
  .b(w_10558_16b),
  .c(w_10559_16b),
  .clk(clk)
);
assign  w_1056_8b  =  w_1055_8b ;
assign  w_10560_16b  =  r57_w_SAD_2a163_12_16b ;
assign  w_10563_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_10564_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_155 (
  .a(w_10564_8b),
  .b(w_10563_8b),
  .c(w_10565_8b),
  .clk(clk)
);
ABS_16b_pe abs_156 (
  .a(w_10565_8b),
  .b(1'b0),
  .c(w_10568_8b),
  .clk(clk)
);
assign  w_10569_8b  =  w_10568_8b ;
assign  w_1057_16b  =  w_1056_8b ;
assign  w_10570_16b  =  w_10569_8b ;
ADD_16b_pe add_157 (
  .a(w_10570_16b),
  .b(w_10560_16b),
  .c(w_10571_16b),
  .clk(clk)
);
assign  w_10572_16b  =  r58_w_SAD_2a163_12_16b ;
assign  w_10575_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_10576_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_158 (
  .a(w_10575_8b),
  .b(w_10576_8b),
  .c(w_10577_8b),
  .clk(clk)
);
ADD_16b_pe add_159 (
  .a(w_1047_16b),
  .b(w_1057_16b),
  .c(w_1058_16b),
  .clk(clk)
);
ABS_16b_pe abs_160 (
  .a(w_10577_8b),
  .b(1'b0),
  .c(w_10580_8b),
  .clk(clk)
);
assign  w_10581_8b  =  w_10580_8b ;
assign  w_10582_16b  =  w_10581_8b ;
ADD_16b_pe add_161 (
  .a(w_10572_16b),
  .b(w_10582_16b),
  .c(w_10583_16b),
  .clk(clk)
);
assign  w_10584_16b  =  r59_w_SAD_2a163_12_16b ;
assign  w_10587_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_10588_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_162 (
  .a(w_10587_8b),
  .b(w_10588_8b),
  .c(w_10589_8b),
  .clk(clk)
);
assign  w_1059_16b  =  r33_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_163 (
  .a(w_10589_8b),
  .b(1'b0),
  .c(w_10592_8b),
  .clk(clk)
);
assign  w_10593_8b  =  w_10592_8b ;
assign  w_10594_16b  =  w_10593_8b ;
ADD_16b_pe add_164 (
  .a(w_10584_16b),
  .b(w_10594_16b),
  .c(w_10595_16b),
  .clk(clk)
);
assign  w_10596_16b  =  r60_w_SAD_2a163_12_16b ;
assign  w_10599_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_10600_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_165 (
  .a(w_10599_8b),
  .b(w_10600_8b),
  .c(w_10601_8b),
  .clk(clk)
);
ABS_16b_pe abs_166 (
  .a(w_10601_8b),
  .b(1'b0),
  .c(w_10604_8b),
  .clk(clk)
);
assign  w_10605_8b  =  w_10604_8b ;
assign  w_10606_16b  =  w_10605_8b ;
ADD_16b_pe add_167 (
  .a(w_10606_16b),
  .b(w_10596_16b),
  .c(w_10607_16b),
  .clk(clk)
);
assign  w_10608_16b  =  r61_w_SAD_2a163_12_16b ;
assign  w_10611_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_10612_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_168 (
  .a(w_10611_8b),
  .b(w_10612_8b),
  .c(w_10613_8b),
  .clk(clk)
);
ABS_16b_pe abs_169 (
  .a(w_10613_8b),
  .b(1'b0),
  .c(w_10616_8b),
  .clk(clk)
);
assign  w_10617_8b  =  w_10616_8b ;
assign  w_10618_16b  =  w_10617_8b ;
ADD_16b_pe add_170 (
  .a(w_10618_16b),
  .b(w_10608_16b),
  .c(w_10619_16b),
  .clk(clk)
);
assign  w_1062_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10620_16b  =  r62_w_SAD_2a163_12_16b ;
assign  w_10623_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_10624_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_171 (
  .a(w_10624_8b),
  .b(w_10623_8b),
  .c(w_10625_8b),
  .clk(clk)
);
ABS_16b_pe abs_172 (
  .a(w_10625_8b),
  .b(1'b0),
  .c(w_10628_8b),
  .clk(clk)
);
assign  w_10629_8b  =  w_10628_8b ;
assign  w_1063_8b  =  w_pass_4_stencil_2_4_8b ;
assign  w_10630_16b  =  w_10629_8b ;
ADD_16b_pe add_173 (
  .a(w_10620_16b),
  .b(w_10630_16b),
  .c(w_10631_16b),
  .clk(clk)
);
assign  w_10632_16b  = 1'b0;
assign  w_10635_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_10636_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_174 (
  .a(w_10636_8b),
  .b(w_10635_8b),
  .c(w_10637_8b),
  .clk(clk)
);
SUB_16b_pe sub_175 (
  .a(w_1063_8b),
  .b(w_1062_8b),
  .c(w_1064_8b),
  .clk(clk)
);
ABS_16b_pe abs_176 (
  .a(w_10637_8b),
  .b(1'b0),
  .c(w_10640_8b),
  .clk(clk)
);
assign  w_10641_8b  =  w_10640_8b ;
assign  w_10642_16b  =  w_10641_8b ;
ADD_16b_pe add_177 (
  .a(w_10642_16b),
  .b(w_10632_16b),
  .c(w_10643_16b),
  .clk(clk)
);
assign  w_10644_16b  =  r0_w_SAD_2a163_13_16b ;
assign  w_10647_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_10648_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_178 (
  .a(w_10648_8b),
  .b(w_10647_8b),
  .c(w_10649_8b),
  .clk(clk)
);
ABS_16b_pe abs_179 (
  .a(w_10649_8b),
  .b(1'b0),
  .c(w_10652_8b),
  .clk(clk)
);
assign  w_10653_8b  =  w_10652_8b ;
assign  w_10654_16b  =  w_10653_8b ;
ADD_16b_pe add_180 (
  .a(w_10654_16b),
  .b(w_10644_16b),
  .c(w_10655_16b),
  .clk(clk)
);
assign  w_10656_16b  =  r1_w_SAD_2a163_13_16b ;
assign  w_10659_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_10660_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_181 (
  .a(w_10660_8b),
  .b(w_10659_8b),
  .c(w_10661_8b),
  .clk(clk)
);
ABS_16b_pe abs_182 (
  .a(w_10661_8b),
  .b(1'b0),
  .c(w_10664_8b),
  .clk(clk)
);
assign  w_10665_8b  =  w_10664_8b ;
assign  w_10666_16b  =  w_10665_8b ;
ADD_16b_pe add_183 (
  .a(w_10656_16b),
  .b(w_10666_16b),
  .c(w_10667_16b),
  .clk(clk)
);
assign  w_10668_16b  =  r2_w_SAD_2a163_13_16b ;
ABS_16b_pe abs_184 (
  .a(w_1064_8b),
  .b(1'b0),
  .c(w_1067_8b),
  .clk(clk)
);
assign  w_10671_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_10672_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_185 (
  .a(w_10672_8b),
  .b(w_10671_8b),
  .c(w_10673_8b),
  .clk(clk)
);
ABS_16b_pe abs_186 (
  .a(w_10673_8b),
  .b(1'b0),
  .c(w_10676_8b),
  .clk(clk)
);
assign  w_10677_8b  =  w_10676_8b ;
assign  w_10678_16b  =  w_10677_8b ;
ADD_16b_pe add_187 (
  .a(w_10668_16b),
  .b(w_10678_16b),
  .c(w_10679_16b),
  .clk(clk)
);
assign  w_1068_8b  =  w_1067_8b ;
assign  w_10680_16b  =  r3_w_SAD_2a163_13_16b ;
assign  w_10683_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_10684_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_188 (
  .a(w_10684_8b),
  .b(w_10683_8b),
  .c(w_10685_8b),
  .clk(clk)
);
ABS_16b_pe abs_189 (
  .a(w_10685_8b),
  .b(1'b0),
  .c(w_10688_8b),
  .clk(clk)
);
assign  w_10689_8b  =  w_10688_8b ;
assign  w_1069_16b  =  w_1068_8b ;
assign  w_10690_16b  =  w_10689_8b ;
ADD_16b_pe add_190 (
  .a(w_10690_16b),
  .b(w_10680_16b),
  .c(w_10691_16b),
  .clk(clk)
);
assign  w_10692_16b  =  r4_w_SAD_2a163_13_16b ;
assign  w_10695_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_10696_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_191 (
  .a(w_10695_8b),
  .b(w_10696_8b),
  .c(w_10697_8b),
  .clk(clk)
);
ADD_16b_pe add_192 (
  .a(w_1059_16b),
  .b(w_1069_16b),
  .c(w_1070_16b),
  .clk(clk)
);
ABS_16b_pe abs_193 (
  .a(w_10697_8b),
  .b(1'b0),
  .c(w_10700_8b),
  .clk(clk)
);
assign  w_10701_8b  =  w_10700_8b ;
assign  w_10702_16b  =  w_10701_8b ;
ADD_16b_pe add_194 (
  .a(w_10692_16b),
  .b(w_10702_16b),
  .c(w_10703_16b),
  .clk(clk)
);
assign  w_10704_16b  =  r5_w_SAD_2a163_13_16b ;
assign  w_10707_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_10708_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_195 (
  .a(w_10707_8b),
  .b(w_10708_8b),
  .c(w_10709_8b),
  .clk(clk)
);
assign  w_1071_16b  =  r34_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_196 (
  .a(w_10709_8b),
  .b(1'b0),
  .c(w_10712_8b),
  .clk(clk)
);
assign  w_10713_8b  =  w_10712_8b ;
assign  w_10714_16b  =  w_10713_8b ;
ADD_16b_pe add_197 (
  .a(w_10714_16b),
  .b(w_10704_16b),
  .c(w_10715_16b),
  .clk(clk)
);
assign  w_10716_16b  =  r6_w_SAD_2a163_13_16b ;
assign  w_10719_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_10720_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_198 (
  .a(w_10720_8b),
  .b(w_10719_8b),
  .c(w_10721_8b),
  .clk(clk)
);
ABS_16b_pe abs_199 (
  .a(w_10721_8b),
  .b(1'b0),
  .c(w_10724_8b),
  .clk(clk)
);
assign  w_10725_8b  =  w_10724_8b ;
assign  w_10726_16b  =  w_10725_8b ;
ADD_16b_pe add_200 (
  .a(w_10716_16b),
  .b(w_10726_16b),
  .c(w_10727_16b),
  .clk(clk)
);
assign  w_10728_16b  =  r7_w_SAD_2a163_13_16b ;
assign  w_10731_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10732_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_201 (
  .a(w_10732_8b),
  .b(w_10731_8b),
  .c(w_10733_8b),
  .clk(clk)
);
ABS_16b_pe abs_202 (
  .a(w_10733_8b),
  .b(1'b0),
  .c(w_10736_8b),
  .clk(clk)
);
assign  w_10737_8b  =  w_10736_8b ;
assign  w_10738_16b  =  w_10737_8b ;
ADD_16b_pe add_203 (
  .a(w_10728_16b),
  .b(w_10738_16b),
  .c(w_10739_16b),
  .clk(clk)
);
assign  w_1074_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10740_16b  =  r8_w_SAD_2a163_13_16b ;
assign  w_10743_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10744_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_204 (
  .a(w_10743_8b),
  .b(w_10744_8b),
  .c(w_10745_8b),
  .clk(clk)
);
ABS_16b_pe abs_205 (
  .a(w_10745_8b),
  .b(1'b0),
  .c(w_10748_8b),
  .clk(clk)
);
assign  w_10749_8b  =  w_10748_8b ;
assign  w_1075_8b  =  w_pass_4_stencil_3_4_8b ;
assign  w_10750_16b  =  w_10749_8b ;
ADD_16b_pe add_206 (
  .a(w_10750_16b),
  .b(w_10740_16b),
  .c(w_10751_16b),
  .clk(clk)
);
assign  w_10752_16b  =  r9_w_SAD_2a163_13_16b ;
assign  w_10755_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10756_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_207 (
  .a(w_10755_8b),
  .b(w_10756_8b),
  .c(w_10757_8b),
  .clk(clk)
);
SUB_16b_pe sub_208 (
  .a(w_1074_8b),
  .b(w_1075_8b),
  .c(w_1076_8b),
  .clk(clk)
);
ABS_16b_pe abs_209 (
  .a(w_10757_8b),
  .b(1'b0),
  .c(w_10760_8b),
  .clk(clk)
);
assign  w_10761_8b  =  w_10760_8b ;
assign  w_10762_16b  =  w_10761_8b ;
ADD_16b_pe add_210 (
  .a(w_10752_16b),
  .b(w_10762_16b),
  .c(w_10763_16b),
  .clk(clk)
);
assign  w_10764_16b  =  r10_w_SAD_2a163_13_16b ;
assign  w_10767_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10768_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_211 (
  .a(w_10767_8b),
  .b(w_10768_8b),
  .c(w_10769_8b),
  .clk(clk)
);
ABS_16b_pe abs_212 (
  .a(w_10769_8b),
  .b(1'b0),
  .c(w_10772_8b),
  .clk(clk)
);
assign  w_10773_8b  =  w_10772_8b ;
assign  w_10774_16b  =  w_10773_8b ;
ADD_16b_pe add_213 (
  .a(w_10764_16b),
  .b(w_10774_16b),
  .c(w_10775_16b),
  .clk(clk)
);
assign  w_10776_16b  =  r11_w_SAD_2a163_13_16b ;
assign  w_10779_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10780_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_214 (
  .a(w_10779_8b),
  .b(w_10780_8b),
  .c(w_10781_8b),
  .clk(clk)
);
ABS_16b_pe abs_215 (
  .a(w_10781_8b),
  .b(1'b0),
  .c(w_10784_8b),
  .clk(clk)
);
assign  w_10785_8b  =  w_10784_8b ;
assign  w_10786_16b  =  w_10785_8b ;
ADD_16b_pe add_216 (
  .a(w_10786_16b),
  .b(w_10776_16b),
  .c(w_10787_16b),
  .clk(clk)
);
assign  w_10788_16b  =  r12_w_SAD_2a163_13_16b ;
ABS_16b_pe abs_217 (
  .a(w_1076_8b),
  .b(1'b0),
  .c(w_1079_8b),
  .clk(clk)
);
assign  w_10791_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10792_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_218 (
  .a(w_10791_8b),
  .b(w_10792_8b),
  .c(w_10793_8b),
  .clk(clk)
);
ABS_16b_pe abs_219 (
  .a(w_10793_8b),
  .b(1'b0),
  .c(w_10796_8b),
  .clk(clk)
);
assign  w_10797_8b  =  w_10796_8b ;
assign  w_10798_16b  =  w_10797_8b ;
ADD_16b_pe add_220 (
  .a(w_10798_16b),
  .b(w_10788_16b),
  .c(w_10799_16b),
  .clk(clk)
);
assign  w_1080_8b  =  w_1079_8b ;
assign  w_10800_16b  =  r13_w_SAD_2a163_13_16b ;
assign  w_10803_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10804_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_221 (
  .a(w_10803_8b),
  .b(w_10804_8b),
  .c(w_10805_8b),
  .clk(clk)
);
ABS_16b_pe abs_222 (
  .a(w_10805_8b),
  .b(1'b0),
  .c(w_10808_8b),
  .clk(clk)
);
assign  w_10809_8b  =  w_10808_8b ;
assign  w_1081_16b  =  w_1080_8b ;
assign  w_10810_16b  =  w_10809_8b ;
ADD_16b_pe add_223 (
  .a(w_10800_16b),
  .b(w_10810_16b),
  .c(w_10811_16b),
  .clk(clk)
);
assign  w_10812_16b  =  r14_w_SAD_2a163_13_16b ;
assign  w_10815_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_10816_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_224 (
  .a(w_10816_8b),
  .b(w_10815_8b),
  .c(w_10817_8b),
  .clk(clk)
);
ADD_16b_pe add_225 (
  .a(w_1081_16b),
  .b(w_1071_16b),
  .c(w_1082_16b),
  .clk(clk)
);
ABS_16b_pe abs_226 (
  .a(w_10817_8b),
  .b(1'b0),
  .c(w_10820_8b),
  .clk(clk)
);
assign  w_10821_8b  =  w_10820_8b ;
assign  w_10822_16b  =  w_10821_8b ;
ADD_16b_pe add_227 (
  .a(w_10822_16b),
  .b(w_10812_16b),
  .c(w_10823_16b),
  .clk(clk)
);
assign  w_10824_16b  =  r15_w_SAD_2a163_13_16b ;
assign  w_10827_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10828_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_228 (
  .a(w_10828_8b),
  .b(w_10827_8b),
  .c(w_10829_8b),
  .clk(clk)
);
assign  w_1083_16b  =  r35_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_229 (
  .a(w_10829_8b),
  .b(1'b0),
  .c(w_10832_8b),
  .clk(clk)
);
assign  w_10833_8b  =  w_10832_8b ;
assign  w_10834_16b  =  w_10833_8b ;
ADD_16b_pe add_230 (
  .a(w_10834_16b),
  .b(w_10824_16b),
  .c(w_10835_16b),
  .clk(clk)
);
assign  w_10836_16b  =  r16_w_SAD_2a163_13_16b ;
assign  w_10839_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10840_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_231 (
  .a(w_10840_8b),
  .b(w_10839_8b),
  .c(w_10841_8b),
  .clk(clk)
);
ABS_16b_pe abs_232 (
  .a(w_10841_8b),
  .b(1'b0),
  .c(w_10844_8b),
  .clk(clk)
);
assign  w_10845_8b  =  w_10844_8b ;
assign  w_10846_16b  =  w_10845_8b ;
ADD_16b_pe add_233 (
  .a(w_10846_16b),
  .b(w_10836_16b),
  .c(w_10847_16b),
  .clk(clk)
);
assign  w_10848_16b  =  r17_w_SAD_2a163_13_16b ;
assign  w_10851_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10852_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_234 (
  .a(w_10852_8b),
  .b(w_10851_8b),
  .c(w_10853_8b),
  .clk(clk)
);
ABS_16b_pe abs_235 (
  .a(w_10853_8b),
  .b(1'b0),
  .c(w_10856_8b),
  .clk(clk)
);
assign  w_10857_8b  =  w_10856_8b ;
assign  w_10858_16b  =  w_10857_8b ;
ADD_16b_pe add_236 (
  .a(w_10848_16b),
  .b(w_10858_16b),
  .c(w_10859_16b),
  .clk(clk)
);
assign  w_1086_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10860_16b  =  r18_w_SAD_2a163_13_16b ;
assign  w_10863_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10864_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_237 (
  .a(w_10864_8b),
  .b(w_10863_8b),
  .c(w_10865_8b),
  .clk(clk)
);
ABS_16b_pe abs_238 (
  .a(w_10865_8b),
  .b(1'b0),
  .c(w_10868_8b),
  .clk(clk)
);
assign  w_10869_8b  =  w_10868_8b ;
assign  w_1087_8b  =  w_pass_4_stencil_4_4_8b ;
assign  w_10870_16b  =  w_10869_8b ;
ADD_16b_pe add_239 (
  .a(w_10870_16b),
  .b(w_10860_16b),
  .c(w_10871_16b),
  .clk(clk)
);
assign  w_10872_16b  =  r19_w_SAD_2a163_13_16b ;
assign  w_10875_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10876_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_240 (
  .a(w_10875_8b),
  .b(w_10876_8b),
  .c(w_10877_8b),
  .clk(clk)
);
SUB_16b_pe sub_241 (
  .a(w_1087_8b),
  .b(w_1086_8b),
  .c(w_1088_8b),
  .clk(clk)
);
ABS_16b_pe abs_242 (
  .a(w_10877_8b),
  .b(1'b0),
  .c(w_10880_8b),
  .clk(clk)
);
assign  w_10881_8b  =  w_10880_8b ;
assign  w_10882_16b  =  w_10881_8b ;
ADD_16b_pe add_243 (
  .a(w_10882_16b),
  .b(w_10872_16b),
  .c(w_10883_16b),
  .clk(clk)
);
assign  w_10884_16b  =  r20_w_SAD_2a163_13_16b ;
assign  w_10887_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10888_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_244 (
  .a(w_10888_8b),
  .b(w_10887_8b),
  .c(w_10889_8b),
  .clk(clk)
);
ABS_16b_pe abs_245 (
  .a(w_10889_8b),
  .b(1'b0),
  .c(w_10892_8b),
  .clk(clk)
);
assign  w_10893_8b  =  w_10892_8b ;
assign  w_10894_16b  =  w_10893_8b ;
ADD_16b_pe add_246 (
  .a(w_10884_16b),
  .b(w_10894_16b),
  .c(w_10895_16b),
  .clk(clk)
);
assign  w_10896_16b  =  r21_w_SAD_2a163_13_16b ;
assign  w_10899_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10900_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_247 (
  .a(w_10900_8b),
  .b(w_10899_8b),
  .c(w_10901_8b),
  .clk(clk)
);
ABS_16b_pe abs_248 (
  .a(w_10901_8b),
  .b(1'b0),
  .c(w_10904_8b),
  .clk(clk)
);
assign  w_10905_8b  =  w_10904_8b ;
assign  w_10906_16b  =  w_10905_8b ;
ADD_16b_pe add_249 (
  .a(w_10896_16b),
  .b(w_10906_16b),
  .c(w_10907_16b),
  .clk(clk)
);
assign  w_10908_16b  =  r22_w_SAD_2a163_13_16b ;
ABS_16b_pe abs_250 (
  .a(w_1088_8b),
  .b(1'b0),
  .c(w_1091_8b),
  .clk(clk)
);
assign  w_10911_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_10912_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_251 (
  .a(w_10912_8b),
  .b(w_10911_8b),
  .c(w_10913_8b),
  .clk(clk)
);
ABS_16b_pe abs_252 (
  .a(w_10913_8b),
  .b(1'b0),
  .c(w_10916_8b),
  .clk(clk)
);
assign  w_10917_8b  =  w_10916_8b ;
assign  w_10918_16b  =  w_10917_8b ;
ADD_16b_pe add_253 (
  .a(w_10908_16b),
  .b(w_10918_16b),
  .c(w_10919_16b),
  .clk(clk)
);
assign  w_1092_8b  =  w_1091_8b ;
assign  w_10920_16b  =  r23_w_SAD_2a163_13_16b ;
assign  w_10923_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10924_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_254 (
  .a(w_10924_8b),
  .b(w_10923_8b),
  .c(w_10925_8b),
  .clk(clk)
);
ABS_16b_pe abs_255 (
  .a(w_10925_8b),
  .b(1'b0),
  .c(w_10928_8b),
  .clk(clk)
);
assign  w_10929_8b  =  w_10928_8b ;
assign  w_1093_16b  =  w_1092_8b ;
assign  w_10930_16b  =  w_10929_8b ;
ADD_16b_pe add_256 (
  .a(w_10930_16b),
  .b(w_10920_16b),
  .c(w_10931_16b),
  .clk(clk)
);
assign  w_10932_16b  =  r24_w_SAD_2a163_13_16b ;
assign  w_10935_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10936_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_257 (
  .a(w_10935_8b),
  .b(w_10936_8b),
  .c(w_10937_8b),
  .clk(clk)
);
ADD_16b_pe add_258 (
  .a(w_1083_16b),
  .b(w_1093_16b),
  .c(w_1094_16b),
  .clk(clk)
);
ABS_16b_pe abs_259 (
  .a(w_10937_8b),
  .b(1'b0),
  .c(w_10940_8b),
  .clk(clk)
);
assign  w_10941_8b  =  w_10940_8b ;
assign  w_10942_16b  =  w_10941_8b ;
ADD_16b_pe add_260 (
  .a(w_10932_16b),
  .b(w_10942_16b),
  .c(w_10943_16b),
  .clk(clk)
);
assign  w_10944_16b  =  r25_w_SAD_2a163_13_16b ;
assign  w_10947_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10948_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_261 (
  .a(w_10947_8b),
  .b(w_10948_8b),
  .c(w_10949_8b),
  .clk(clk)
);
assign  w_1095_16b  =  r36_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_262 (
  .a(w_10949_8b),
  .b(1'b0),
  .c(w_10952_8b),
  .clk(clk)
);
assign  w_10953_8b  =  w_10952_8b ;
assign  w_10954_16b  =  w_10953_8b ;
ADD_16b_pe add_263 (
  .a(w_10944_16b),
  .b(w_10954_16b),
  .c(w_10955_16b),
  .clk(clk)
);
assign  w_10956_16b  =  r26_w_SAD_2a163_13_16b ;
assign  w_10959_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10960_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_264 (
  .a(w_10960_8b),
  .b(w_10959_8b),
  .c(w_10961_8b),
  .clk(clk)
);
ABS_16b_pe abs_265 (
  .a(w_10961_8b),
  .b(1'b0),
  .c(w_10964_8b),
  .clk(clk)
);
assign  w_10965_8b  =  w_10964_8b ;
assign  w_10966_16b  =  w_10965_8b ;
ADD_16b_pe add_266 (
  .a(w_10956_16b),
  .b(w_10966_16b),
  .c(w_10967_16b),
  .clk(clk)
);
assign  w_10968_16b  =  r27_w_SAD_2a163_13_16b ;
assign  w_10971_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10972_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_267 (
  .a(w_10971_8b),
  .b(w_10972_8b),
  .c(w_10973_8b),
  .clk(clk)
);
ABS_16b_pe abs_268 (
  .a(w_10973_8b),
  .b(1'b0),
  .c(w_10976_8b),
  .clk(clk)
);
assign  w_10977_8b  =  w_10976_8b ;
assign  w_10978_16b  =  w_10977_8b ;
ADD_16b_pe add_269 (
  .a(w_10978_16b),
  .b(w_10968_16b),
  .c(w_10979_16b),
  .clk(clk)
);
assign  w_1098_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_10980_16b  =  r28_w_SAD_2a163_13_16b ;
assign  w_10983_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10984_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_270 (
  .a(w_10983_8b),
  .b(w_10984_8b),
  .c(w_10985_8b),
  .clk(clk)
);
ABS_16b_pe abs_271 (
  .a(w_10985_8b),
  .b(1'b0),
  .c(w_10988_8b),
  .clk(clk)
);
assign  w_10989_8b  =  w_10988_8b ;
assign  w_1099_8b  =  w_pass_4_stencil_5_4_8b ;
assign  w_10990_16b  =  w_10989_8b ;
ADD_16b_pe add_272 (
  .a(w_10980_16b),
  .b(w_10990_16b),
  .c(w_10991_16b),
  .clk(clk)
);
assign  w_10992_16b  =  r29_w_SAD_2a163_13_16b ;
assign  w_10995_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_10996_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_273 (
  .a(w_10996_8b),
  .b(w_10995_8b),
  .c(w_10997_8b),
  .clk(clk)
);
SUB_16b_pe sub_274 (
  .a(w_1098_8b),
  .b(w_1099_8b),
  .c(w_1100_8b),
  .clk(clk)
);
ABS_16b_pe abs_275 (
  .a(w_10997_8b),
  .b(1'b0),
  .c(w_11000_8b),
  .clk(clk)
);
assign  w_11001_8b  =  w_11000_8b ;
assign  w_11002_16b  =  w_11001_8b ;
ADD_16b_pe add_276 (
  .a(w_11002_16b),
  .b(w_10992_16b),
  .c(w_11003_16b),
  .clk(clk)
);
assign  w_11004_16b  =  r30_w_SAD_2a163_13_16b ;
assign  w_11007_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_11008_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_277 (
  .a(w_11008_8b),
  .b(w_11007_8b),
  .c(w_11009_8b),
  .clk(clk)
);
ABS_16b_pe abs_278 (
  .a(w_11009_8b),
  .b(1'b0),
  .c(w_11012_8b),
  .clk(clk)
);
assign  w_11013_8b  =  w_11012_8b ;
assign  w_11014_16b  =  w_11013_8b ;
ADD_16b_pe add_279 (
  .a(w_11014_16b),
  .b(w_11004_16b),
  .c(w_11015_16b),
  .clk(clk)
);
assign  w_11016_16b  =  r31_w_SAD_2a163_13_16b ;
assign  w_11019_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11020_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_280 (
  .a(w_11019_8b),
  .b(w_11020_8b),
  .c(w_11021_8b),
  .clk(clk)
);
ABS_16b_pe abs_281 (
  .a(w_11021_8b),
  .b(1'b0),
  .c(w_11024_8b),
  .clk(clk)
);
assign  w_11025_8b  =  w_11024_8b ;
assign  w_11026_16b  =  w_11025_8b ;
ADD_16b_pe add_282 (
  .a(w_11026_16b),
  .b(w_11016_16b),
  .c(w_11027_16b),
  .clk(clk)
);
assign  w_11028_16b  =  r32_w_SAD_2a163_13_16b ;
ABS_16b_pe abs_283 (
  .a(w_1100_8b),
  .b(1'b0),
  .c(w_1103_8b),
  .clk(clk)
);
assign  w_11031_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11032_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_284 (
  .a(w_11032_8b),
  .b(w_11031_8b),
  .c(w_11033_8b),
  .clk(clk)
);
ABS_16b_pe abs_285 (
  .a(w_11033_8b),
  .b(1'b0),
  .c(w_11036_8b),
  .clk(clk)
);
assign  w_11037_8b  =  w_11036_8b ;
assign  w_11038_16b  =  w_11037_8b ;
ADD_16b_pe add_286 (
  .a(w_11038_16b),
  .b(w_11028_16b),
  .c(w_11039_16b),
  .clk(clk)
);
assign  w_1104_8b  =  w_1103_8b ;
assign  w_11040_16b  =  r33_w_SAD_2a163_13_16b ;
assign  w_11043_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11044_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_287 (
  .a(w_11044_8b),
  .b(w_11043_8b),
  .c(w_11045_8b),
  .clk(clk)
);
ABS_16b_pe abs_288 (
  .a(w_11045_8b),
  .b(1'b0),
  .c(w_11048_8b),
  .clk(clk)
);
assign  w_11049_8b  =  w_11048_8b ;
assign  w_1105_16b  =  w_1104_8b ;
assign  w_11050_16b  =  w_11049_8b ;
ADD_16b_pe add_289 (
  .a(w_11050_16b),
  .b(w_11040_16b),
  .c(w_11051_16b),
  .clk(clk)
);
assign  w_11052_16b  =  r34_w_SAD_2a163_13_16b ;
assign  w_11055_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11056_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_290 (
  .a(w_11055_8b),
  .b(w_11056_8b),
  .c(w_11057_8b),
  .clk(clk)
);
ADD_16b_pe add_291 (
  .a(w_1095_16b),
  .b(w_1105_16b),
  .c(w_1106_16b),
  .clk(clk)
);
ABS_16b_pe abs_292 (
  .a(w_11057_8b),
  .b(1'b0),
  .c(w_11060_8b),
  .clk(clk)
);
assign  w_11061_8b  =  w_11060_8b ;
assign  w_11062_16b  =  w_11061_8b ;
ADD_16b_pe add_293 (
  .a(w_11062_16b),
  .b(w_11052_16b),
  .c(w_11063_16b),
  .clk(clk)
);
assign  w_11064_16b  =  r35_w_SAD_2a163_13_16b ;
assign  w_11067_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11068_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_294 (
  .a(w_11068_8b),
  .b(w_11067_8b),
  .c(w_11069_8b),
  .clk(clk)
);
assign  w_1107_16b  =  r37_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_295 (
  .a(w_11069_8b),
  .b(1'b0),
  .c(w_11072_8b),
  .clk(clk)
);
assign  w_11073_8b  =  w_11072_8b ;
assign  w_11074_16b  =  w_11073_8b ;
ADD_16b_pe add_296 (
  .a(w_11074_16b),
  .b(w_11064_16b),
  .c(w_11075_16b),
  .clk(clk)
);
assign  w_11076_16b  =  r36_w_SAD_2a163_13_16b ;
assign  w_11079_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11080_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_297 (
  .a(w_11080_8b),
  .b(w_11079_8b),
  .c(w_11081_8b),
  .clk(clk)
);
ABS_16b_pe abs_298 (
  .a(w_11081_8b),
  .b(1'b0),
  .c(w_11084_8b),
  .clk(clk)
);
assign  w_11085_8b  =  w_11084_8b ;
assign  w_11086_16b  =  w_11085_8b ;
ADD_16b_pe add_299 (
  .a(w_11076_16b),
  .b(w_11086_16b),
  .c(w_11087_16b),
  .clk(clk)
);
assign  w_11088_16b  =  r37_w_SAD_2a163_13_16b ;
assign  w_11091_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11092_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_300 (
  .a(w_11091_8b),
  .b(w_11092_8b),
  .c(w_11093_8b),
  .clk(clk)
);
ABS_16b_pe abs_301 (
  .a(w_11093_8b),
  .b(1'b0),
  .c(w_11096_8b),
  .clk(clk)
);
assign  w_11097_8b  =  w_11096_8b ;
assign  w_11098_16b  =  w_11097_8b ;
ADD_16b_pe add_302 (
  .a(w_11098_16b),
  .b(w_11088_16b),
  .c(w_11099_16b),
  .clk(clk)
);
assign  w_1110_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11100_16b  =  r38_w_SAD_2a163_13_16b ;
assign  w_11103_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11104_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_303 (
  .a(w_11103_8b),
  .b(w_11104_8b),
  .c(w_11105_8b),
  .clk(clk)
);
ABS_16b_pe abs_304 (
  .a(w_11105_8b),
  .b(1'b0),
  .c(w_11108_8b),
  .clk(clk)
);
assign  w_11109_8b  =  w_11108_8b ;
assign  w_1111_8b  =  w_pass_4_stencil_6_4_8b ;
assign  w_11110_16b  =  w_11109_8b ;
ADD_16b_pe add_305 (
  .a(w_11100_16b),
  .b(w_11110_16b),
  .c(w_11111_16b),
  .clk(clk)
);
assign  w_11112_16b  =  r39_w_SAD_2a163_13_16b ;
assign  w_11115_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11116_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_306 (
  .a(w_11115_8b),
  .b(w_11116_8b),
  .c(w_11117_8b),
  .clk(clk)
);
SUB_16b_pe sub_307 (
  .a(w_1111_8b),
  .b(w_1110_8b),
  .c(w_1112_8b),
  .clk(clk)
);
ABS_16b_pe abs_308 (
  .a(w_11117_8b),
  .b(1'b0),
  .c(w_11120_8b),
  .clk(clk)
);
assign  w_11121_8b  =  w_11120_8b ;
assign  w_11122_16b  =  w_11121_8b ;
ADD_16b_pe add_309 (
  .a(w_11122_16b),
  .b(w_11112_16b),
  .c(w_11123_16b),
  .clk(clk)
);
assign  w_11124_16b  =  r40_w_SAD_2a163_13_16b ;
assign  w_11127_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11128_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_310 (
  .a(w_11128_8b),
  .b(w_11127_8b),
  .c(w_11129_8b),
  .clk(clk)
);
ABS_16b_pe abs_311 (
  .a(w_11129_8b),
  .b(1'b0),
  .c(w_11132_8b),
  .clk(clk)
);
assign  w_11133_8b  =  w_11132_8b ;
assign  w_11134_16b  =  w_11133_8b ;
ADD_16b_pe add_312 (
  .a(w_11124_16b),
  .b(w_11134_16b),
  .c(w_11135_16b),
  .clk(clk)
);
assign  w_11136_16b  =  r41_w_SAD_2a163_13_16b ;
assign  w_11139_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11140_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_313 (
  .a(w_11139_8b),
  .b(w_11140_8b),
  .c(w_11141_8b),
  .clk(clk)
);
ABS_16b_pe abs_314 (
  .a(w_11141_8b),
  .b(1'b0),
  .c(w_11144_8b),
  .clk(clk)
);
assign  w_11145_8b  =  w_11144_8b ;
assign  w_11146_16b  =  w_11145_8b ;
ADD_16b_pe add_315 (
  .a(w_11146_16b),
  .b(w_11136_16b),
  .c(w_11147_16b),
  .clk(clk)
);
assign  w_11148_16b  =  r42_w_SAD_2a163_13_16b ;
ABS_16b_pe abs_316 (
  .a(w_1112_8b),
  .b(1'b0),
  .c(w_1115_8b),
  .clk(clk)
);
assign  w_11151_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11152_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_317 (
  .a(w_11151_8b),
  .b(w_11152_8b),
  .c(w_11153_8b),
  .clk(clk)
);
ABS_16b_pe abs_318 (
  .a(w_11153_8b),
  .b(1'b0),
  .c(w_11156_8b),
  .clk(clk)
);
assign  w_11157_8b  =  w_11156_8b ;
assign  w_11158_16b  =  w_11157_8b ;
ADD_16b_pe add_319 (
  .a(w_11158_16b),
  .b(w_11148_16b),
  .c(w_11159_16b),
  .clk(clk)
);
assign  w_1116_8b  =  w_1115_8b ;
assign  w_11160_16b  =  r43_w_SAD_2a163_13_16b ;
assign  w_11163_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11164_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_320 (
  .a(w_11164_8b),
  .b(w_11163_8b),
  .c(w_11165_8b),
  .clk(clk)
);
ABS_16b_pe abs_321 (
  .a(w_11165_8b),
  .b(1'b0),
  .c(w_11168_8b),
  .clk(clk)
);
assign  w_11169_8b  =  w_11168_8b ;
assign  w_1117_16b  =  w_1116_8b ;
assign  w_11170_16b  =  w_11169_8b ;
ADD_16b_pe add_322 (
  .a(w_11160_16b),
  .b(w_11170_16b),
  .c(w_11171_16b),
  .clk(clk)
);
assign  w_11172_16b  =  r44_w_SAD_2a163_13_16b ;
assign  w_11175_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11176_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_323 (
  .a(w_11176_8b),
  .b(w_11175_8b),
  .c(w_11177_8b),
  .clk(clk)
);
ADD_16b_pe add_324 (
  .a(w_1107_16b),
  .b(w_1117_16b),
  .c(w_1118_16b),
  .clk(clk)
);
ABS_16b_pe abs_325 (
  .a(w_11177_8b),
  .b(1'b0),
  .c(w_11180_8b),
  .clk(clk)
);
assign  w_11181_8b  =  w_11180_8b ;
assign  w_11182_16b  =  w_11181_8b ;
ADD_16b_pe add_326 (
  .a(w_11182_16b),
  .b(w_11172_16b),
  .c(w_11183_16b),
  .clk(clk)
);
assign  w_11184_16b  =  r45_w_SAD_2a163_13_16b ;
assign  w_11187_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11188_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_327 (
  .a(w_11188_8b),
  .b(w_11187_8b),
  .c(w_11189_8b),
  .clk(clk)
);
assign  w_1119_16b  =  r38_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_328 (
  .a(w_11189_8b),
  .b(1'b0),
  .c(w_11192_8b),
  .clk(clk)
);
assign  w_11193_8b  =  w_11192_8b ;
assign  w_11194_16b  =  w_11193_8b ;
ADD_16b_pe add_329 (
  .a(w_11194_16b),
  .b(w_11184_16b),
  .c(w_11195_16b),
  .clk(clk)
);
assign  w_11196_16b  =  r46_w_SAD_2a163_13_16b ;
assign  w_11199_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11200_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_330 (
  .a(w_11200_8b),
  .b(w_11199_8b),
  .c(w_11201_8b),
  .clk(clk)
);
ABS_16b_pe abs_331 (
  .a(w_11201_8b),
  .b(1'b0),
  .c(w_11204_8b),
  .clk(clk)
);
assign  w_11205_8b  =  w_11204_8b ;
assign  w_11206_16b  =  w_11205_8b ;
ADD_16b_pe add_332 (
  .a(w_11196_16b),
  .b(w_11206_16b),
  .c(w_11207_16b),
  .clk(clk)
);
assign  w_11208_16b  =  r47_w_SAD_2a163_13_16b ;
assign  w_11211_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_11212_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_333 (
  .a(w_11212_8b),
  .b(w_11211_8b),
  .c(w_11213_8b),
  .clk(clk)
);
ABS_16b_pe abs_334 (
  .a(w_11213_8b),
  .b(1'b0),
  .c(w_11216_8b),
  .clk(clk)
);
assign  w_11217_8b  =  w_11216_8b ;
assign  w_11218_16b  =  w_11217_8b ;
ADD_16b_pe add_335 (
  .a(w_11208_16b),
  .b(w_11218_16b),
  .c(w_11219_16b),
  .clk(clk)
);
assign  w_1122_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11220_16b  =  r48_w_SAD_2a163_13_16b ;
assign  w_11223_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_11224_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_336 (
  .a(w_11224_8b),
  .b(w_11223_8b),
  .c(w_11225_8b),
  .clk(clk)
);
ABS_16b_pe abs_337 (
  .a(w_11225_8b),
  .b(1'b0),
  .c(w_11228_8b),
  .clk(clk)
);
assign  w_11229_8b  =  w_11228_8b ;
assign  w_1123_8b  =  w_pass_4_stencil_7_4_8b ;
assign  w_11230_16b  =  w_11229_8b ;
ADD_16b_pe add_338 (
  .a(w_11230_16b),
  .b(w_11220_16b),
  .c(w_11231_16b),
  .clk(clk)
);
assign  w_11232_16b  =  r49_w_SAD_2a163_13_16b ;
assign  w_11235_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_11236_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_339 (
  .a(w_11235_8b),
  .b(w_11236_8b),
  .c(w_11237_8b),
  .clk(clk)
);
SUB_16b_pe sub_340 (
  .a(w_1122_8b),
  .b(w_1123_8b),
  .c(w_1124_8b),
  .clk(clk)
);
ABS_16b_pe abs_341 (
  .a(w_11237_8b),
  .b(1'b0),
  .c(w_11240_8b),
  .clk(clk)
);
assign  w_11241_8b  =  w_11240_8b ;
assign  w_11242_16b  =  w_11241_8b ;
ADD_16b_pe add_342 (
  .a(w_11232_16b),
  .b(w_11242_16b),
  .c(w_11243_16b),
  .clk(clk)
);
assign  w_11244_16b  =  r50_w_SAD_2a163_13_16b ;
assign  w_11247_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_11248_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_343 (
  .a(w_11247_8b),
  .b(w_11248_8b),
  .c(w_11249_8b),
  .clk(clk)
);
ABS_16b_pe abs_344 (
  .a(w_11249_8b),
  .b(1'b0),
  .c(w_11252_8b),
  .clk(clk)
);
assign  w_11253_8b  =  w_11252_8b ;
assign  w_11254_16b  =  w_11253_8b ;
ADD_16b_pe add_345 (
  .a(w_11244_16b),
  .b(w_11254_16b),
  .c(w_11255_16b),
  .clk(clk)
);
assign  w_11256_16b  =  r51_w_SAD_2a163_13_16b ;
assign  w_11259_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_11260_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_346 (
  .a(w_11259_8b),
  .b(w_11260_8b),
  .c(w_11261_8b),
  .clk(clk)
);
ABS_16b_pe abs_347 (
  .a(w_11261_8b),
  .b(1'b0),
  .c(w_11264_8b),
  .clk(clk)
);
assign  w_11265_8b  =  w_11264_8b ;
assign  w_11266_16b  =  w_11265_8b ;
ADD_16b_pe add_348 (
  .a(w_11256_16b),
  .b(w_11266_16b),
  .c(w_11267_16b),
  .clk(clk)
);
assign  w_11268_16b  =  r52_w_SAD_2a163_13_16b ;
ABS_16b_pe abs_349 (
  .a(w_1124_8b),
  .b(1'b0),
  .c(w_1127_8b),
  .clk(clk)
);
assign  w_11271_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_11272_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_350 (
  .a(w_11271_8b),
  .b(w_11272_8b),
  .c(w_11273_8b),
  .clk(clk)
);
ABS_16b_pe abs_351 (
  .a(w_11273_8b),
  .b(1'b0),
  .c(w_11276_8b),
  .clk(clk)
);
assign  w_11277_8b  =  w_11276_8b ;
assign  w_11278_16b  =  w_11277_8b ;
ADD_16b_pe add_352 (
  .a(w_11278_16b),
  .b(w_11268_16b),
  .c(w_11279_16b),
  .clk(clk)
);
assign  w_1128_8b  =  w_1127_8b ;
assign  w_11280_16b  =  r53_w_SAD_2a163_13_16b ;
assign  w_11283_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_11284_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_353 (
  .a(w_11283_8b),
  .b(w_11284_8b),
  .c(w_11285_8b),
  .clk(clk)
);
ABS_16b_pe abs_354 (
  .a(w_11285_8b),
  .b(1'b0),
  .c(w_11288_8b),
  .clk(clk)
);
assign  w_11289_8b  =  w_11288_8b ;
assign  w_1129_16b  =  w_1128_8b ;
assign  w_11290_16b  =  w_11289_8b ;
ADD_16b_pe add_355 (
  .a(w_11280_16b),
  .b(w_11290_16b),
  .c(w_11291_16b),
  .clk(clk)
);
assign  w_11292_16b  =  r54_w_SAD_2a163_13_16b ;
assign  w_11295_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_11296_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_356 (
  .a(w_11296_8b),
  .b(w_11295_8b),
  .c(w_11297_8b),
  .clk(clk)
);
ADD_16b_pe add_357 (
  .a(w_1119_16b),
  .b(w_1129_16b),
  .c(w_1130_16b),
  .clk(clk)
);
ABS_16b_pe abs_358 (
  .a(w_11297_8b),
  .b(1'b0),
  .c(w_11300_8b),
  .clk(clk)
);
assign  w_11301_8b  =  w_11300_8b ;
assign  w_11302_16b  =  w_11301_8b ;
ADD_16b_pe add_359 (
  .a(w_11302_16b),
  .b(w_11292_16b),
  .c(w_11303_16b),
  .clk(clk)
);
assign  w_11304_16b  =  r55_w_SAD_2a163_13_16b ;
assign  w_11307_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_11308_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_360 (
  .a(w_11308_8b),
  .b(w_11307_8b),
  .c(w_11309_8b),
  .clk(clk)
);
assign  w_1131_16b  =  r39_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_361 (
  .a(w_11309_8b),
  .b(1'b0),
  .c(w_11312_8b),
  .clk(clk)
);
assign  w_11313_8b  =  w_11312_8b ;
assign  w_11314_16b  =  w_11313_8b ;
ADD_16b_pe add_362 (
  .a(w_11304_16b),
  .b(w_11314_16b),
  .c(w_11315_16b),
  .clk(clk)
);
assign  w_11316_16b  =  r56_w_SAD_2a163_13_16b ;
assign  w_11319_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_11320_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_363 (
  .a(w_11319_8b),
  .b(w_11320_8b),
  .c(w_11321_8b),
  .clk(clk)
);
ABS_16b_pe abs_364 (
  .a(w_11321_8b),
  .b(1'b0),
  .c(w_11324_8b),
  .clk(clk)
);
assign  w_11325_8b  =  w_11324_8b ;
assign  w_11326_16b  =  w_11325_8b ;
ADD_16b_pe add_365 (
  .a(w_11326_16b),
  .b(w_11316_16b),
  .c(w_11327_16b),
  .clk(clk)
);
assign  w_11328_16b  =  r57_w_SAD_2a163_13_16b ;
assign  w_1133_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11331_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_11332_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_366 (
  .a(w_11331_8b),
  .b(w_11332_8b),
  .c(w_11333_8b),
  .clk(clk)
);
ABS_16b_pe abs_367 (
  .a(w_11333_8b),
  .b(1'b0),
  .c(w_11336_8b),
  .clk(clk)
);
assign  w_11337_8b  =  w_11336_8b ;
assign  w_11338_16b  =  w_11337_8b ;
ADD_16b_pe add_368 (
  .a(w_11328_16b),
  .b(w_11338_16b),
  .c(w_11339_16b),
  .clk(clk)
);
assign  w_1134_8b  =  w_pass_4_stencil_0_5_8b ;
assign  w_11340_16b  =  r58_w_SAD_2a163_13_16b ;
assign  w_11343_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_11344_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_369 (
  .a(w_11344_8b),
  .b(w_11343_8b),
  .c(w_11345_8b),
  .clk(clk)
);
ABS_16b_pe abs_370 (
  .a(w_11345_8b),
  .b(1'b0),
  .c(w_11348_8b),
  .clk(clk)
);
assign  w_11349_8b  =  w_11348_8b ;
SUB_16b_pe sub_371 (
  .a(w_1133_8b),
  .b(w_1134_8b),
  .c(w_1135_8b),
  .clk(clk)
);
assign  w_11350_16b  =  w_11349_8b ;
ADD_16b_pe add_372 (
  .a(w_11340_16b),
  .b(w_11350_16b),
  .c(w_11351_16b),
  .clk(clk)
);
assign  w_11352_16b  =  r59_w_SAD_2a163_13_16b ;
assign  w_11355_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_11356_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_373 (
  .a(w_11356_8b),
  .b(w_11355_8b),
  .c(w_11357_8b),
  .clk(clk)
);
ABS_16b_pe abs_374 (
  .a(w_11357_8b),
  .b(1'b0),
  .c(w_11360_8b),
  .clk(clk)
);
assign  w_11361_8b  =  w_11360_8b ;
assign  w_11362_16b  =  w_11361_8b ;
ADD_16b_pe add_375 (
  .a(w_11362_16b),
  .b(w_11352_16b),
  .c(w_11363_16b),
  .clk(clk)
);
assign  w_11364_16b  =  r60_w_SAD_2a163_13_16b ;
assign  w_11367_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_11368_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_376 (
  .a(w_11367_8b),
  .b(w_11368_8b),
  .c(w_11369_8b),
  .clk(clk)
);
ABS_16b_pe abs_377 (
  .a(w_11369_8b),
  .b(1'b0),
  .c(w_11372_8b),
  .clk(clk)
);
assign  w_11373_8b  =  w_11372_8b ;
assign  w_11374_16b  =  w_11373_8b ;
ADD_16b_pe add_378 (
  .a(w_11364_16b),
  .b(w_11374_16b),
  .c(w_11375_16b),
  .clk(clk)
);
assign  w_11376_16b  =  r61_w_SAD_2a163_13_16b ;
assign  w_11379_8b  =  w_pass_5_stencil_16_7_8b ;
ABS_16b_pe abs_379 (
  .a(w_1135_8b),
  .b(1'b0),
  .c(w_1138_8b),
  .clk(clk)
);
assign  w_11380_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_380 (
  .a(w_11379_8b),
  .b(w_11380_8b),
  .c(w_11381_8b),
  .clk(clk)
);
ABS_16b_pe abs_381 (
  .a(w_11381_8b),
  .b(1'b0),
  .c(w_11384_8b),
  .clk(clk)
);
assign  w_11385_8b  =  w_11384_8b ;
assign  w_11386_16b  =  w_11385_8b ;
ADD_16b_pe add_382 (
  .a(w_11386_16b),
  .b(w_11376_16b),
  .c(w_11387_16b),
  .clk(clk)
);
assign  w_11388_16b  =  r62_w_SAD_2a163_13_16b ;
assign  w_1139_8b  =  w_1138_8b ;
assign  w_11391_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_11392_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_383 (
  .a(w_11392_8b),
  .b(w_11391_8b),
  .c(w_11393_8b),
  .clk(clk)
);
ABS_16b_pe abs_384 (
  .a(w_11393_8b),
  .b(1'b0),
  .c(w_11396_8b),
  .clk(clk)
);
assign  w_11397_8b  =  w_11396_8b ;
assign  w_11398_16b  =  w_11397_8b ;
ADD_16b_pe add_385 (
  .a(w_11388_16b),
  .b(w_11398_16b),
  .c(w_11399_16b),
  .clk(clk)
);
assign  w_1140_16b  =  w_1139_8b ;
assign  w_11400_16b  = 1'b0;
assign  w_11403_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_11404_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_386 (
  .a(w_11404_8b),
  .b(w_11403_8b),
  .c(w_11405_8b),
  .clk(clk)
);
ABS_16b_pe abs_387 (
  .a(w_11405_8b),
  .b(1'b0),
  .c(w_11408_8b),
  .clk(clk)
);
assign  w_11409_8b  =  w_11408_8b ;
ADD_16b_pe add_388 (
  .a(w_1131_16b),
  .b(w_1140_16b),
  .c(w_1141_16b),
  .clk(clk)
);
assign  w_11410_16b  =  w_11409_8b ;
ADD_16b_pe add_389 (
  .a(w_11410_16b),
  .b(w_11400_16b),
  .c(w_11411_16b),
  .clk(clk)
);
assign  w_11412_16b  =  r0_w_SAD_2a163_14_16b ;
assign  w_11415_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_11416_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_390 (
  .a(w_11415_8b),
  .b(w_11416_8b),
  .c(w_11417_8b),
  .clk(clk)
);
assign  w_1142_16b  =  r40_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_391 (
  .a(w_11417_8b),
  .b(1'b0),
  .c(w_11420_8b),
  .clk(clk)
);
assign  w_11421_8b  =  w_11420_8b ;
assign  w_11422_16b  =  w_11421_8b ;
ADD_16b_pe add_392 (
  .a(w_11422_16b),
  .b(w_11412_16b),
  .c(w_11423_16b),
  .clk(clk)
);
assign  w_11424_16b  =  r1_w_SAD_2a163_14_16b ;
assign  w_11427_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_11428_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_393 (
  .a(w_11428_8b),
  .b(w_11427_8b),
  .c(w_11429_8b),
  .clk(clk)
);
ABS_16b_pe abs_394 (
  .a(w_11429_8b),
  .b(1'b0),
  .c(w_11432_8b),
  .clk(clk)
);
assign  w_11433_8b  =  w_11432_8b ;
assign  w_11434_16b  =  w_11433_8b ;
ADD_16b_pe add_395 (
  .a(w_11434_16b),
  .b(w_11424_16b),
  .c(w_11435_16b),
  .clk(clk)
);
assign  w_11436_16b  =  r2_w_SAD_2a163_14_16b ;
assign  w_11439_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_11440_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_396 (
  .a(w_11440_8b),
  .b(w_11439_8b),
  .c(w_11441_8b),
  .clk(clk)
);
ABS_16b_pe abs_397 (
  .a(w_11441_8b),
  .b(1'b0),
  .c(w_11444_8b),
  .clk(clk)
);
assign  w_11445_8b  =  w_11444_8b ;
assign  w_11446_16b  =  w_11445_8b ;
ADD_16b_pe add_398 (
  .a(w_11436_16b),
  .b(w_11446_16b),
  .c(w_11447_16b),
  .clk(clk)
);
assign  w_11448_16b  =  r3_w_SAD_2a163_14_16b ;
assign  w_1145_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11451_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_11452_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_399 (
  .a(w_11451_8b),
  .b(w_11452_8b),
  .c(w_11453_8b),
  .clk(clk)
);
ABS_16b_pe abs_400 (
  .a(w_11453_8b),
  .b(1'b0),
  .c(w_11456_8b),
  .clk(clk)
);
assign  w_11457_8b  =  w_11456_8b ;
assign  w_11458_16b  =  w_11457_8b ;
ADD_16b_pe add_401 (
  .a(w_11458_16b),
  .b(w_11448_16b),
  .c(w_11459_16b),
  .clk(clk)
);
assign  w_1146_8b  =  w_pass_4_stencil_1_5_8b ;
assign  w_11460_16b  =  r4_w_SAD_2a163_14_16b ;
assign  w_11463_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_11464_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_402 (
  .a(w_11464_8b),
  .b(w_11463_8b),
  .c(w_11465_8b),
  .clk(clk)
);
ABS_16b_pe abs_403 (
  .a(w_11465_8b),
  .b(1'b0),
  .c(w_11468_8b),
  .clk(clk)
);
assign  w_11469_8b  =  w_11468_8b ;
SUB_16b_pe sub_404 (
  .a(w_1146_8b),
  .b(w_1145_8b),
  .c(w_1147_8b),
  .clk(clk)
);
assign  w_11470_16b  =  w_11469_8b ;
ADD_16b_pe add_405 (
  .a(w_11470_16b),
  .b(w_11460_16b),
  .c(w_11471_16b),
  .clk(clk)
);
assign  w_11472_16b  =  r5_w_SAD_2a163_14_16b ;
assign  w_11475_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_11476_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_406 (
  .a(w_11476_8b),
  .b(w_11475_8b),
  .c(w_11477_8b),
  .clk(clk)
);
ABS_16b_pe abs_407 (
  .a(w_11477_8b),
  .b(1'b0),
  .c(w_11480_8b),
  .clk(clk)
);
assign  w_11481_8b  =  w_11480_8b ;
assign  w_11482_16b  =  w_11481_8b ;
ADD_16b_pe add_408 (
  .a(w_11472_16b),
  .b(w_11482_16b),
  .c(w_11483_16b),
  .clk(clk)
);
assign  w_11484_16b  =  r6_w_SAD_2a163_14_16b ;
assign  w_11487_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_11488_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_409 (
  .a(w_11487_8b),
  .b(w_11488_8b),
  .c(w_11489_8b),
  .clk(clk)
);
ABS_16b_pe abs_410 (
  .a(w_11489_8b),
  .b(1'b0),
  .c(w_11492_8b),
  .clk(clk)
);
assign  w_11493_8b  =  w_11492_8b ;
assign  w_11494_16b  =  w_11493_8b ;
ADD_16b_pe add_411 (
  .a(w_11494_16b),
  .b(w_11484_16b),
  .c(w_11495_16b),
  .clk(clk)
);
assign  w_11496_16b  =  r7_w_SAD_2a163_14_16b ;
assign  w_11499_8b  =  w_pass_5_stencil_16_1_8b ;
ABS_16b_pe abs_412 (
  .a(w_1147_8b),
  .b(1'b0),
  .c(w_1150_8b),
  .clk(clk)
);
assign  w_11500_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_413 (
  .a(w_11499_8b),
  .b(w_11500_8b),
  .c(w_11501_8b),
  .clk(clk)
);
ABS_16b_pe abs_414 (
  .a(w_11501_8b),
  .b(1'b0),
  .c(w_11504_8b),
  .clk(clk)
);
assign  w_11505_8b  =  w_11504_8b ;
assign  w_11506_16b  =  w_11505_8b ;
ADD_16b_pe add_415 (
  .a(w_11506_16b),
  .b(w_11496_16b),
  .c(w_11507_16b),
  .clk(clk)
);
assign  w_11508_16b  =  r8_w_SAD_2a163_14_16b ;
assign  w_1151_8b  =  w_1150_8b ;
assign  w_11511_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_11512_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_416 (
  .a(w_11511_8b),
  .b(w_11512_8b),
  .c(w_11513_8b),
  .clk(clk)
);
ABS_16b_pe abs_417 (
  .a(w_11513_8b),
  .b(1'b0),
  .c(w_11516_8b),
  .clk(clk)
);
assign  w_11517_8b  =  w_11516_8b ;
assign  w_11518_16b  =  w_11517_8b ;
ADD_16b_pe add_418 (
  .a(w_11518_16b),
  .b(w_11508_16b),
  .c(w_11519_16b),
  .clk(clk)
);
assign  w_1152_16b  =  w_1151_8b ;
assign  w_11520_16b  =  r9_w_SAD_2a163_14_16b ;
assign  w_11523_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_11524_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_419 (
  .a(w_11524_8b),
  .b(w_11523_8b),
  .c(w_11525_8b),
  .clk(clk)
);
ABS_16b_pe abs_420 (
  .a(w_11525_8b),
  .b(1'b0),
  .c(w_11528_8b),
  .clk(clk)
);
assign  w_11529_8b  =  w_11528_8b ;
ADD_16b_pe add_421 (
  .a(w_1142_16b),
  .b(w_1152_16b),
  .c(w_1153_16b),
  .clk(clk)
);
assign  w_11530_16b  =  w_11529_8b ;
ADD_16b_pe add_422 (
  .a(w_11520_16b),
  .b(w_11530_16b),
  .c(w_11531_16b),
  .clk(clk)
);
assign  w_11532_16b  =  r10_w_SAD_2a163_14_16b ;
assign  w_11535_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_11536_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_423 (
  .a(w_11536_8b),
  .b(w_11535_8b),
  .c(w_11537_8b),
  .clk(clk)
);
assign  w_1154_16b  =  r41_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_424 (
  .a(w_11537_8b),
  .b(1'b0),
  .c(w_11540_8b),
  .clk(clk)
);
assign  w_11541_8b  =  w_11540_8b ;
assign  w_11542_16b  =  w_11541_8b ;
ADD_16b_pe add_425 (
  .a(w_11542_16b),
  .b(w_11532_16b),
  .c(w_11543_16b),
  .clk(clk)
);
assign  w_11544_16b  =  r11_w_SAD_2a163_14_16b ;
assign  w_11547_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_11548_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_426 (
  .a(w_11548_8b),
  .b(w_11547_8b),
  .c(w_11549_8b),
  .clk(clk)
);
ABS_16b_pe abs_427 (
  .a(w_11549_8b),
  .b(1'b0),
  .c(w_11552_8b),
  .clk(clk)
);
assign  w_11553_8b  =  w_11552_8b ;
assign  w_11554_16b  =  w_11553_8b ;
ADD_16b_pe add_428 (
  .a(w_11554_16b),
  .b(w_11544_16b),
  .c(w_11555_16b),
  .clk(clk)
);
assign  w_11556_16b  =  r12_w_SAD_2a163_14_16b ;
assign  w_11559_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_11560_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_429 (
  .a(w_11560_8b),
  .b(w_11559_8b),
  .c(w_11561_8b),
  .clk(clk)
);
ABS_16b_pe abs_430 (
  .a(w_11561_8b),
  .b(1'b0),
  .c(w_11564_8b),
  .clk(clk)
);
assign  w_11565_8b  =  w_11564_8b ;
assign  w_11566_16b  =  w_11565_8b ;
ADD_16b_pe add_431 (
  .a(w_11556_16b),
  .b(w_11566_16b),
  .c(w_11567_16b),
  .clk(clk)
);
assign  w_11568_16b  =  r13_w_SAD_2a163_14_16b ;
assign  w_1157_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11571_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_11572_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_432 (
  .a(w_11572_8b),
  .b(w_11571_8b),
  .c(w_11573_8b),
  .clk(clk)
);
ABS_16b_pe abs_433 (
  .a(w_11573_8b),
  .b(1'b0),
  .c(w_11576_8b),
  .clk(clk)
);
assign  w_11577_8b  =  w_11576_8b ;
assign  w_11578_16b  =  w_11577_8b ;
ADD_16b_pe add_434 (
  .a(w_11568_16b),
  .b(w_11578_16b),
  .c(w_11579_16b),
  .clk(clk)
);
assign  w_1158_8b  =  w_pass_4_stencil_2_5_8b ;
assign  w_11580_16b  =  r14_w_SAD_2a163_14_16b ;
assign  w_11583_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_11584_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_435 (
  .a(w_11584_8b),
  .b(w_11583_8b),
  .c(w_11585_8b),
  .clk(clk)
);
ABS_16b_pe abs_436 (
  .a(w_11585_8b),
  .b(1'b0),
  .c(w_11588_8b),
  .clk(clk)
);
assign  w_11589_8b  =  w_11588_8b ;
SUB_16b_pe sub_437 (
  .a(w_1157_8b),
  .b(w_1158_8b),
  .c(w_1159_8b),
  .clk(clk)
);
assign  w_11590_16b  =  w_11589_8b ;
ADD_16b_pe add_438 (
  .a(w_11590_16b),
  .b(w_11580_16b),
  .c(w_11591_16b),
  .clk(clk)
);
assign  w_11592_16b  =  r15_w_SAD_2a163_14_16b ;
assign  w_11595_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_11596_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_439 (
  .a(w_11595_8b),
  .b(w_11596_8b),
  .c(w_11597_8b),
  .clk(clk)
);
ABS_16b_pe abs_440 (
  .a(w_11597_8b),
  .b(1'b0),
  .c(w_11600_8b),
  .clk(clk)
);
assign  w_11601_8b  =  w_11600_8b ;
assign  w_11602_16b  =  w_11601_8b ;
ADD_16b_pe add_441 (
  .a(w_11592_16b),
  .b(w_11602_16b),
  .c(w_11603_16b),
  .clk(clk)
);
assign  w_11604_16b  =  r16_w_SAD_2a163_14_16b ;
assign  w_11607_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_11608_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_442 (
  .a(w_11607_8b),
  .b(w_11608_8b),
  .c(w_11609_8b),
  .clk(clk)
);
ABS_16b_pe abs_443 (
  .a(w_11609_8b),
  .b(1'b0),
  .c(w_11612_8b),
  .clk(clk)
);
assign  w_11613_8b  =  w_11612_8b ;
assign  w_11614_16b  =  w_11613_8b ;
ADD_16b_pe add_444 (
  .a(w_11604_16b),
  .b(w_11614_16b),
  .c(w_11615_16b),
  .clk(clk)
);
assign  w_11616_16b  =  r17_w_SAD_2a163_14_16b ;
assign  w_11619_8b  =  w_pass_5_stencil_16_2_8b ;
ABS_16b_pe abs_445 (
  .a(w_1159_8b),
  .b(1'b0),
  .c(w_1162_8b),
  .clk(clk)
);
assign  w_11620_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_446 (
  .a(w_11620_8b),
  .b(w_11619_8b),
  .c(w_11621_8b),
  .clk(clk)
);
ABS_16b_pe abs_447 (
  .a(w_11621_8b),
  .b(1'b0),
  .c(w_11624_8b),
  .clk(clk)
);
assign  w_11625_8b  =  w_11624_8b ;
assign  w_11626_16b  =  w_11625_8b ;
ADD_16b_pe add_448 (
  .a(w_11616_16b),
  .b(w_11626_16b),
  .c(w_11627_16b),
  .clk(clk)
);
assign  w_11628_16b  =  r18_w_SAD_2a163_14_16b ;
assign  w_1163_8b  =  w_1162_8b ;
assign  w_11631_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_11632_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_449 (
  .a(w_11631_8b),
  .b(w_11632_8b),
  .c(w_11633_8b),
  .clk(clk)
);
ABS_16b_pe abs_450 (
  .a(w_11633_8b),
  .b(1'b0),
  .c(w_11636_8b),
  .clk(clk)
);
assign  w_11637_8b  =  w_11636_8b ;
assign  w_11638_16b  =  w_11637_8b ;
ADD_16b_pe add_451 (
  .a(w_11638_16b),
  .b(w_11628_16b),
  .c(w_11639_16b),
  .clk(clk)
);
assign  w_1164_16b  =  w_1163_8b ;
assign  w_11640_16b  =  r19_w_SAD_2a163_14_16b ;
assign  w_11643_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_11644_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_452 (
  .a(w_11643_8b),
  .b(w_11644_8b),
  .c(w_11645_8b),
  .clk(clk)
);
ABS_16b_pe abs_453 (
  .a(w_11645_8b),
  .b(1'b0),
  .c(w_11648_8b),
  .clk(clk)
);
assign  w_11649_8b  =  w_11648_8b ;
ADD_16b_pe add_454 (
  .a(w_1154_16b),
  .b(w_1164_16b),
  .c(w_1165_16b),
  .clk(clk)
);
assign  w_11650_16b  =  w_11649_8b ;
ADD_16b_pe add_455 (
  .a(w_11640_16b),
  .b(w_11650_16b),
  .c(w_11651_16b),
  .clk(clk)
);
assign  w_11652_16b  =  r20_w_SAD_2a163_14_16b ;
assign  w_11655_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_11656_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_456 (
  .a(w_11656_8b),
  .b(w_11655_8b),
  .c(w_11657_8b),
  .clk(clk)
);
assign  w_1166_16b  =  r42_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_457 (
  .a(w_11657_8b),
  .b(1'b0),
  .c(w_11660_8b),
  .clk(clk)
);
assign  w_11661_8b  =  w_11660_8b ;
assign  w_11662_16b  =  w_11661_8b ;
ADD_16b_pe add_458 (
  .a(w_11652_16b),
  .b(w_11662_16b),
  .c(w_11663_16b),
  .clk(clk)
);
assign  w_11664_16b  =  r21_w_SAD_2a163_14_16b ;
assign  w_11667_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_11668_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_459 (
  .a(w_11667_8b),
  .b(w_11668_8b),
  .c(w_11669_8b),
  .clk(clk)
);
ABS_16b_pe abs_460 (
  .a(w_11669_8b),
  .b(1'b0),
  .c(w_11672_8b),
  .clk(clk)
);
assign  w_11673_8b  =  w_11672_8b ;
assign  w_11674_16b  =  w_11673_8b ;
ADD_16b_pe add_461 (
  .a(w_11674_16b),
  .b(w_11664_16b),
  .c(w_11675_16b),
  .clk(clk)
);
assign  w_11676_16b  =  r22_w_SAD_2a163_14_16b ;
assign  w_11679_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_11680_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_462 (
  .a(w_11679_8b),
  .b(w_11680_8b),
  .c(w_11681_8b),
  .clk(clk)
);
ABS_16b_pe abs_463 (
  .a(w_11681_8b),
  .b(1'b0),
  .c(w_11684_8b),
  .clk(clk)
);
assign  w_11685_8b  =  w_11684_8b ;
assign  w_11686_16b  =  w_11685_8b ;
ADD_16b_pe add_464 (
  .a(w_11676_16b),
  .b(w_11686_16b),
  .c(w_11687_16b),
  .clk(clk)
);
assign  w_11688_16b  =  r23_w_SAD_2a163_14_16b ;
assign  w_1169_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11691_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_11692_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_465 (
  .a(w_11692_8b),
  .b(w_11691_8b),
  .c(w_11693_8b),
  .clk(clk)
);
ABS_16b_pe abs_466 (
  .a(w_11693_8b),
  .b(1'b0),
  .c(w_11696_8b),
  .clk(clk)
);
assign  w_11697_8b  =  w_11696_8b ;
assign  w_11698_16b  =  w_11697_8b ;
ADD_16b_pe add_467 (
  .a(w_11698_16b),
  .b(w_11688_16b),
  .c(w_11699_16b),
  .clk(clk)
);
assign  w_1170_8b  =  w_pass_4_stencil_3_5_8b ;
assign  w_11700_16b  =  r24_w_SAD_2a163_14_16b ;
assign  w_11703_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_11704_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_468 (
  .a(w_11704_8b),
  .b(w_11703_8b),
  .c(w_11705_8b),
  .clk(clk)
);
ABS_16b_pe abs_469 (
  .a(w_11705_8b),
  .b(1'b0),
  .c(w_11708_8b),
  .clk(clk)
);
assign  w_11709_8b  =  w_11708_8b ;
SUB_16b_pe sub_470 (
  .a(w_1169_8b),
  .b(w_1170_8b),
  .c(w_1171_8b),
  .clk(clk)
);
assign  w_11710_16b  =  w_11709_8b ;
ADD_16b_pe add_471 (
  .a(w_11700_16b),
  .b(w_11710_16b),
  .c(w_11711_16b),
  .clk(clk)
);
assign  w_11712_16b  =  r25_w_SAD_2a163_14_16b ;
assign  w_11715_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_11716_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_472 (
  .a(w_11716_8b),
  .b(w_11715_8b),
  .c(w_11717_8b),
  .clk(clk)
);
ABS_16b_pe abs_473 (
  .a(w_11717_8b),
  .b(1'b0),
  .c(w_11720_8b),
  .clk(clk)
);
assign  w_11721_8b  =  w_11720_8b ;
assign  w_11722_16b  =  w_11721_8b ;
ADD_16b_pe add_474 (
  .a(w_11722_16b),
  .b(w_11712_16b),
  .c(w_11723_16b),
  .clk(clk)
);
assign  w_11724_16b  =  r26_w_SAD_2a163_14_16b ;
assign  w_11727_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_11728_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_475 (
  .a(w_11727_8b),
  .b(w_11728_8b),
  .c(w_11729_8b),
  .clk(clk)
);
ABS_16b_pe abs_476 (
  .a(w_11729_8b),
  .b(1'b0),
  .c(w_11732_8b),
  .clk(clk)
);
assign  w_11733_8b  =  w_11732_8b ;
assign  w_11734_16b  =  w_11733_8b ;
ADD_16b_pe add_477 (
  .a(w_11724_16b),
  .b(w_11734_16b),
  .c(w_11735_16b),
  .clk(clk)
);
assign  w_11736_16b  =  r27_w_SAD_2a163_14_16b ;
assign  w_11739_8b  =  w_pass_5_stencil_16_3_8b ;
ABS_16b_pe abs_478 (
  .a(w_1171_8b),
  .b(1'b0),
  .c(w_1174_8b),
  .clk(clk)
);
assign  w_11740_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_479 (
  .a(w_11739_8b),
  .b(w_11740_8b),
  .c(w_11741_8b),
  .clk(clk)
);
ABS_16b_pe abs_480 (
  .a(w_11741_8b),
  .b(1'b0),
  .c(w_11744_8b),
  .clk(clk)
);
assign  w_11745_8b  =  w_11744_8b ;
assign  w_11746_16b  =  w_11745_8b ;
ADD_16b_pe add_481 (
  .a(w_11746_16b),
  .b(w_11736_16b),
  .c(w_11747_16b),
  .clk(clk)
);
assign  w_11748_16b  =  r28_w_SAD_2a163_14_16b ;
assign  w_1175_8b  =  w_1174_8b ;
assign  w_11751_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_11752_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_482 (
  .a(w_11752_8b),
  .b(w_11751_8b),
  .c(w_11753_8b),
  .clk(clk)
);
ABS_16b_pe abs_483 (
  .a(w_11753_8b),
  .b(1'b0),
  .c(w_11756_8b),
  .clk(clk)
);
assign  w_11757_8b  =  w_11756_8b ;
assign  w_11758_16b  =  w_11757_8b ;
ADD_16b_pe add_484 (
  .a(w_11748_16b),
  .b(w_11758_16b),
  .c(w_11759_16b),
  .clk(clk)
);
assign  w_1176_16b  =  w_1175_8b ;
assign  w_11760_16b  =  r29_w_SAD_2a163_14_16b ;
assign  w_11763_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_11764_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_485 (
  .a(w_11763_8b),
  .b(w_11764_8b),
  .c(w_11765_8b),
  .clk(clk)
);
ABS_16b_pe abs_486 (
  .a(w_11765_8b),
  .b(1'b0),
  .c(w_11768_8b),
  .clk(clk)
);
assign  w_11769_8b  =  w_11768_8b ;
ADD_16b_pe add_487 (
  .a(w_1176_16b),
  .b(w_1166_16b),
  .c(w_1177_16b),
  .clk(clk)
);
assign  w_11770_16b  =  w_11769_8b ;
ADD_16b_pe add_488 (
  .a(w_11760_16b),
  .b(w_11770_16b),
  .c(w_11771_16b),
  .clk(clk)
);
assign  w_11772_16b  =  r30_w_SAD_2a163_14_16b ;
assign  w_11775_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_11776_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_489 (
  .a(w_11775_8b),
  .b(w_11776_8b),
  .c(w_11777_8b),
  .clk(clk)
);
assign  w_1178_16b  =  r43_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_490 (
  .a(w_11777_8b),
  .b(1'b0),
  .c(w_11780_8b),
  .clk(clk)
);
assign  w_11781_8b  =  w_11780_8b ;
assign  w_11782_16b  =  w_11781_8b ;
ADD_16b_pe add_491 (
  .a(w_11782_16b),
  .b(w_11772_16b),
  .c(w_11783_16b),
  .clk(clk)
);
assign  w_11784_16b  =  r31_w_SAD_2a163_14_16b ;
assign  w_11787_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11788_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_492 (
  .a(w_11787_8b),
  .b(w_11788_8b),
  .c(w_11789_8b),
  .clk(clk)
);
ABS_16b_pe abs_493 (
  .a(w_11789_8b),
  .b(1'b0),
  .c(w_11792_8b),
  .clk(clk)
);
assign  w_11793_8b  =  w_11792_8b ;
assign  w_11794_16b  =  w_11793_8b ;
ADD_16b_pe add_494 (
  .a(w_11784_16b),
  .b(w_11794_16b),
  .c(w_11795_16b),
  .clk(clk)
);
assign  w_11796_16b  =  r32_w_SAD_2a163_14_16b ;
assign  w_11799_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11800_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_495 (
  .a(w_11800_8b),
  .b(w_11799_8b),
  .c(w_11801_8b),
  .clk(clk)
);
ABS_16b_pe abs_496 (
  .a(w_11801_8b),
  .b(1'b0),
  .c(w_11804_8b),
  .clk(clk)
);
assign  w_11805_8b  =  w_11804_8b ;
assign  w_11806_16b  =  w_11805_8b ;
ADD_16b_pe add_497 (
  .a(w_11796_16b),
  .b(w_11806_16b),
  .c(w_11807_16b),
  .clk(clk)
);
assign  w_11808_16b  =  r33_w_SAD_2a163_14_16b ;
assign  w_1181_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11811_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11812_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_498 (
  .a(w_11811_8b),
  .b(w_11812_8b),
  .c(w_11813_8b),
  .clk(clk)
);
ABS_16b_pe abs_499 (
  .a(w_11813_8b),
  .b(1'b0),
  .c(w_11816_8b),
  .clk(clk)
);
assign  w_11817_8b  =  w_11816_8b ;
assign  w_11818_16b  =  w_11817_8b ;
ADD_16b_pe add_500 (
  .a(w_11818_16b),
  .b(w_11808_16b),
  .c(w_11819_16b),
  .clk(clk)
);
assign  w_1182_8b  =  w_pass_4_stencil_4_5_8b ;
assign  w_11820_16b  =  r34_w_SAD_2a163_14_16b ;
assign  w_11823_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11824_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_501 (
  .a(w_11824_8b),
  .b(w_11823_8b),
  .c(w_11825_8b),
  .clk(clk)
);
ABS_16b_pe abs_502 (
  .a(w_11825_8b),
  .b(1'b0),
  .c(w_11828_8b),
  .clk(clk)
);
assign  w_11829_8b  =  w_11828_8b ;
SUB_16b_pe sub_503 (
  .a(w_1182_8b),
  .b(w_1181_8b),
  .c(w_1183_8b),
  .clk(clk)
);
assign  w_11830_16b  =  w_11829_8b ;
ADD_16b_pe add_504 (
  .a(w_11830_16b),
  .b(w_11820_16b),
  .c(w_11831_16b),
  .clk(clk)
);
assign  w_11832_16b  =  r35_w_SAD_2a163_14_16b ;
assign  w_11835_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11836_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_505 (
  .a(w_11836_8b),
  .b(w_11835_8b),
  .c(w_11837_8b),
  .clk(clk)
);
ABS_16b_pe abs_506 (
  .a(w_11837_8b),
  .b(1'b0),
  .c(w_11840_8b),
  .clk(clk)
);
assign  w_11841_8b  =  w_11840_8b ;
assign  w_11842_16b  =  w_11841_8b ;
ADD_16b_pe add_507 (
  .a(w_11832_16b),
  .b(w_11842_16b),
  .c(w_11843_16b),
  .clk(clk)
);
assign  w_11844_16b  =  r36_w_SAD_2a163_14_16b ;
assign  w_11847_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11848_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_508 (
  .a(w_11847_8b),
  .b(w_11848_8b),
  .c(w_11849_8b),
  .clk(clk)
);
ABS_16b_pe abs_509 (
  .a(w_11849_8b),
  .b(1'b0),
  .c(w_11852_8b),
  .clk(clk)
);
assign  w_11853_8b  =  w_11852_8b ;
assign  w_11854_16b  =  w_11853_8b ;
ADD_16b_pe add_510 (
  .a(w_11854_16b),
  .b(w_11844_16b),
  .c(w_11855_16b),
  .clk(clk)
);
assign  w_11856_16b  =  r37_w_SAD_2a163_14_16b ;
assign  w_11859_8b  =  w_pass_5_stencil_16_4_8b ;
ABS_16b_pe abs_511 (
  .a(w_1183_8b),
  .b(1'b0),
  .c(w_1186_8b),
  .clk(clk)
);
assign  w_11860_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_512 (
  .a(w_11860_8b),
  .b(w_11859_8b),
  .c(w_11861_8b),
  .clk(clk)
);
ABS_16b_pe abs_513 (
  .a(w_11861_8b),
  .b(1'b0),
  .c(w_11864_8b),
  .clk(clk)
);
assign  w_11865_8b  =  w_11864_8b ;
assign  w_11866_16b  =  w_11865_8b ;
ADD_16b_pe add_514 (
  .a(w_11856_16b),
  .b(w_11866_16b),
  .c(w_11867_16b),
  .clk(clk)
);
assign  w_11868_16b  =  r38_w_SAD_2a163_14_16b ;
assign  w_1187_8b  =  w_1186_8b ;
assign  w_11871_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_11872_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_515 (
  .a(w_11872_8b),
  .b(w_11871_8b),
  .c(w_11873_8b),
  .clk(clk)
);
ABS_16b_pe abs_516 (
  .a(w_11873_8b),
  .b(1'b0),
  .c(w_11876_8b),
  .clk(clk)
);
assign  w_11877_8b  =  w_11876_8b ;
assign  w_11878_16b  =  w_11877_8b ;
ADD_16b_pe add_517 (
  .a(w_11868_16b),
  .b(w_11878_16b),
  .c(w_11879_16b),
  .clk(clk)
);
assign  w_1188_16b  =  w_1187_8b ;
assign  w_11880_16b  =  r39_w_SAD_2a163_14_16b ;
assign  w_11883_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11884_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_518 (
  .a(w_11883_8b),
  .b(w_11884_8b),
  .c(w_11885_8b),
  .clk(clk)
);
ABS_16b_pe abs_519 (
  .a(w_11885_8b),
  .b(1'b0),
  .c(w_11888_8b),
  .clk(clk)
);
assign  w_11889_8b  =  w_11888_8b ;
ADD_16b_pe add_520 (
  .a(w_1188_16b),
  .b(w_1178_16b),
  .c(w_1189_16b),
  .clk(clk)
);
assign  w_11890_16b  =  w_11889_8b ;
ADD_16b_pe add_521 (
  .a(w_11890_16b),
  .b(w_11880_16b),
  .c(w_11891_16b),
  .clk(clk)
);
assign  w_11892_16b  =  r40_w_SAD_2a163_14_16b ;
assign  w_11895_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11896_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_522 (
  .a(w_11895_8b),
  .b(w_11896_8b),
  .c(w_11897_8b),
  .clk(clk)
);
assign  w_1190_16b  =  r44_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_523 (
  .a(w_11897_8b),
  .b(1'b0),
  .c(w_11900_8b),
  .clk(clk)
);
assign  w_11901_8b  =  w_11900_8b ;
assign  w_11902_16b  =  w_11901_8b ;
ADD_16b_pe add_524 (
  .a(w_11902_16b),
  .b(w_11892_16b),
  .c(w_11903_16b),
  .clk(clk)
);
assign  w_11904_16b  =  r41_w_SAD_2a163_14_16b ;
assign  w_11907_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11908_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_525 (
  .a(w_11908_8b),
  .b(w_11907_8b),
  .c(w_11909_8b),
  .clk(clk)
);
ABS_16b_pe abs_526 (
  .a(w_11909_8b),
  .b(1'b0),
  .c(w_11912_8b),
  .clk(clk)
);
assign  w_11913_8b  =  w_11912_8b ;
assign  w_11914_16b  =  w_11913_8b ;
ADD_16b_pe add_527 (
  .a(w_11914_16b),
  .b(w_11904_16b),
  .c(w_11915_16b),
  .clk(clk)
);
assign  w_11916_16b  =  r42_w_SAD_2a163_14_16b ;
assign  w_11919_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11920_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_528 (
  .a(w_11920_8b),
  .b(w_11919_8b),
  .c(w_11921_8b),
  .clk(clk)
);
ABS_16b_pe abs_529 (
  .a(w_11921_8b),
  .b(1'b0),
  .c(w_11924_8b),
  .clk(clk)
);
assign  w_11925_8b  =  w_11924_8b ;
assign  w_11926_16b  =  w_11925_8b ;
ADD_16b_pe add_530 (
  .a(w_11916_16b),
  .b(w_11926_16b),
  .c(w_11927_16b),
  .clk(clk)
);
assign  w_11928_16b  =  r43_w_SAD_2a163_14_16b ;
assign  w_1193_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11931_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11932_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_531 (
  .a(w_11932_8b),
  .b(w_11931_8b),
  .c(w_11933_8b),
  .clk(clk)
);
ABS_16b_pe abs_532 (
  .a(w_11933_8b),
  .b(1'b0),
  .c(w_11936_8b),
  .clk(clk)
);
assign  w_11937_8b  =  w_11936_8b ;
assign  w_11938_16b  =  w_11937_8b ;
ADD_16b_pe add_533 (
  .a(w_11928_16b),
  .b(w_11938_16b),
  .c(w_11939_16b),
  .clk(clk)
);
assign  w_1194_8b  =  w_pass_4_stencil_5_5_8b ;
assign  w_11940_16b  =  r44_w_SAD_2a163_14_16b ;
assign  w_11943_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11944_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_534 (
  .a(w_11944_8b),
  .b(w_11943_8b),
  .c(w_11945_8b),
  .clk(clk)
);
ABS_16b_pe abs_535 (
  .a(w_11945_8b),
  .b(1'b0),
  .c(w_11948_8b),
  .clk(clk)
);
assign  w_11949_8b  =  w_11948_8b ;
SUB_16b_pe sub_536 (
  .a(w_1193_8b),
  .b(w_1194_8b),
  .c(w_1195_8b),
  .clk(clk)
);
assign  w_11950_16b  =  w_11949_8b ;
ADD_16b_pe add_537 (
  .a(w_11950_16b),
  .b(w_11940_16b),
  .c(w_11951_16b),
  .clk(clk)
);
assign  w_11952_16b  =  r45_w_SAD_2a163_14_16b ;
assign  w_11955_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11956_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_538 (
  .a(w_11955_8b),
  .b(w_11956_8b),
  .c(w_11957_8b),
  .clk(clk)
);
ABS_16b_pe abs_539 (
  .a(w_11957_8b),
  .b(1'b0),
  .c(w_11960_8b),
  .clk(clk)
);
assign  w_11961_8b  =  w_11960_8b ;
assign  w_11962_16b  =  w_11961_8b ;
ADD_16b_pe add_540 (
  .a(w_11952_16b),
  .b(w_11962_16b),
  .c(w_11963_16b),
  .clk(clk)
);
assign  w_11964_16b  =  r46_w_SAD_2a163_14_16b ;
assign  w_11967_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_11968_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_541 (
  .a(w_11967_8b),
  .b(w_11968_8b),
  .c(w_11969_8b),
  .clk(clk)
);
ABS_16b_pe abs_542 (
  .a(w_11969_8b),
  .b(1'b0),
  .c(w_11972_8b),
  .clk(clk)
);
assign  w_11973_8b  =  w_11972_8b ;
assign  w_11974_16b  =  w_11973_8b ;
ADD_16b_pe add_543 (
  .a(w_11964_16b),
  .b(w_11974_16b),
  .c(w_11975_16b),
  .clk(clk)
);
assign  w_11976_16b  =  r47_w_SAD_2a163_14_16b ;
assign  w_11979_8b  =  w_pass_5_stencil_16_6_8b ;
ABS_16b_pe abs_544 (
  .a(w_1195_8b),
  .b(1'b0),
  .c(w_1198_8b),
  .clk(clk)
);
assign  w_11980_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_545 (
  .a(w_11980_8b),
  .b(w_11979_8b),
  .c(w_11981_8b),
  .clk(clk)
);
ABS_16b_pe abs_546 (
  .a(w_11981_8b),
  .b(1'b0),
  .c(w_11984_8b),
  .clk(clk)
);
assign  w_11985_8b  =  w_11984_8b ;
assign  w_11986_16b  =  w_11985_8b ;
ADD_16b_pe add_547 (
  .a(w_11976_16b),
  .b(w_11986_16b),
  .c(w_11987_16b),
  .clk(clk)
);
assign  w_11988_16b  =  r48_w_SAD_2a163_14_16b ;
assign  w_1199_8b  =  w_1198_8b ;
assign  w_11991_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_11992_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_548 (
  .a(w_11991_8b),
  .b(w_11992_8b),
  .c(w_11993_8b),
  .clk(clk)
);
ABS_16b_pe abs_549 (
  .a(w_11993_8b),
  .b(1'b0),
  .c(w_11996_8b),
  .clk(clk)
);
assign  w_11997_8b  =  w_11996_8b ;
assign  w_11998_16b  =  w_11997_8b ;
ADD_16b_pe add_550 (
  .a(w_11988_16b),
  .b(w_11998_16b),
  .c(w_11999_16b),
  .clk(clk)
);
assign  w_1200_16b  =  w_1199_8b ;
assign  w_12000_16b  =  r49_w_SAD_2a163_14_16b ;
assign  w_12003_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12004_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_551 (
  .a(w_12003_8b),
  .b(w_12004_8b),
  .c(w_12005_8b),
  .clk(clk)
);
ABS_16b_pe abs_552 (
  .a(w_12005_8b),
  .b(1'b0),
  .c(w_12008_8b),
  .clk(clk)
);
assign  w_12009_8b  =  w_12008_8b ;
ADD_16b_pe add_553 (
  .a(w_1190_16b),
  .b(w_1200_16b),
  .c(w_1201_16b),
  .clk(clk)
);
assign  w_12010_16b  =  w_12009_8b ;
ADD_16b_pe add_554 (
  .a(w_12000_16b),
  .b(w_12010_16b),
  .c(w_12011_16b),
  .clk(clk)
);
assign  w_12012_16b  =  r50_w_SAD_2a163_14_16b ;
assign  w_12015_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12016_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_555 (
  .a(w_12015_8b),
  .b(w_12016_8b),
  .c(w_12017_8b),
  .clk(clk)
);
assign  w_1202_16b  =  r45_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_556 (
  .a(w_12017_8b),
  .b(1'b0),
  .c(w_12020_8b),
  .clk(clk)
);
assign  w_12021_8b  =  w_12020_8b ;
assign  w_12022_16b  =  w_12021_8b ;
ADD_16b_pe add_557 (
  .a(w_12022_16b),
  .b(w_12012_16b),
  .c(w_12023_16b),
  .clk(clk)
);
assign  w_12024_16b  =  r51_w_SAD_2a163_14_16b ;
assign  w_12027_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12028_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_558 (
  .a(w_12028_8b),
  .b(w_12027_8b),
  .c(w_12029_8b),
  .clk(clk)
);
ABS_16b_pe abs_559 (
  .a(w_12029_8b),
  .b(1'b0),
  .c(w_12032_8b),
  .clk(clk)
);
assign  w_12033_8b  =  w_12032_8b ;
assign  w_12034_16b  =  w_12033_8b ;
ADD_16b_pe add_560 (
  .a(w_12024_16b),
  .b(w_12034_16b),
  .c(w_12035_16b),
  .clk(clk)
);
assign  w_12036_16b  =  r52_w_SAD_2a163_14_16b ;
assign  w_12039_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12040_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_561 (
  .a(w_12039_8b),
  .b(w_12040_8b),
  .c(w_12041_8b),
  .clk(clk)
);
ABS_16b_pe abs_562 (
  .a(w_12041_8b),
  .b(1'b0),
  .c(w_12044_8b),
  .clk(clk)
);
assign  w_12045_8b  =  w_12044_8b ;
assign  w_12046_16b  =  w_12045_8b ;
ADD_16b_pe add_563 (
  .a(w_12046_16b),
  .b(w_12036_16b),
  .c(w_12047_16b),
  .clk(clk)
);
assign  w_12048_16b  =  r53_w_SAD_2a163_14_16b ;
assign  w_1205_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_12051_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12052_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_564 (
  .a(w_12051_8b),
  .b(w_12052_8b),
  .c(w_12053_8b),
  .clk(clk)
);
ABS_16b_pe abs_565 (
  .a(w_12053_8b),
  .b(1'b0),
  .c(w_12056_8b),
  .clk(clk)
);
assign  w_12057_8b  =  w_12056_8b ;
assign  w_12058_16b  =  w_12057_8b ;
ADD_16b_pe add_566 (
  .a(w_12058_16b),
  .b(w_12048_16b),
  .c(w_12059_16b),
  .clk(clk)
);
assign  w_1206_8b  =  w_pass_4_stencil_6_5_8b ;
assign  w_12060_16b  =  r54_w_SAD_2a163_14_16b ;
assign  w_12063_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12064_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_567 (
  .a(w_12064_8b),
  .b(w_12063_8b),
  .c(w_12065_8b),
  .clk(clk)
);
ABS_16b_pe abs_568 (
  .a(w_12065_8b),
  .b(1'b0),
  .c(w_12068_8b),
  .clk(clk)
);
assign  w_12069_8b  =  w_12068_8b ;
SUB_16b_pe sub_569 (
  .a(w_1205_8b),
  .b(w_1206_8b),
  .c(w_1207_8b),
  .clk(clk)
);
assign  w_12070_16b  =  w_12069_8b ;
ADD_16b_pe add_570 (
  .a(w_12060_16b),
  .b(w_12070_16b),
  .c(w_12071_16b),
  .clk(clk)
);
assign  w_12072_16b  =  r55_w_SAD_2a163_14_16b ;
assign  w_12075_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12076_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_571 (
  .a(w_12076_8b),
  .b(w_12075_8b),
  .c(w_12077_8b),
  .clk(clk)
);
ABS_16b_pe abs_572 (
  .a(w_12077_8b),
  .b(1'b0),
  .c(w_12080_8b),
  .clk(clk)
);
assign  w_12081_8b  =  w_12080_8b ;
assign  w_12082_16b  =  w_12081_8b ;
ADD_16b_pe add_573 (
  .a(w_12082_16b),
  .b(w_12072_16b),
  .c(w_12083_16b),
  .clk(clk)
);
assign  w_12084_16b  =  r56_w_SAD_2a163_14_16b ;
assign  w_12087_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12088_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_574 (
  .a(w_12088_8b),
  .b(w_12087_8b),
  .c(w_12089_8b),
  .clk(clk)
);
ABS_16b_pe abs_575 (
  .a(w_12089_8b),
  .b(1'b0),
  .c(w_12092_8b),
  .clk(clk)
);
assign  w_12093_8b  =  w_12092_8b ;
assign  w_12094_16b  =  w_12093_8b ;
ADD_16b_pe add_576 (
  .a(w_12094_16b),
  .b(w_12084_16b),
  .c(w_12095_16b),
  .clk(clk)
);
assign  w_12096_16b  =  r57_w_SAD_2a163_14_16b ;
assign  w_12099_8b  =  w_pass_5_stencil_16_7_8b ;
ABS_16b_pe abs_577 (
  .a(w_1207_8b),
  .b(1'b0),
  .c(w_1210_8b),
  .clk(clk)
);
assign  w_12100_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_578 (
  .a(w_12100_8b),
  .b(w_12099_8b),
  .c(w_12101_8b),
  .clk(clk)
);
ABS_16b_pe abs_579 (
  .a(w_12101_8b),
  .b(1'b0),
  .c(w_12104_8b),
  .clk(clk)
);
assign  w_12105_8b  =  w_12104_8b ;
assign  w_12106_16b  =  w_12105_8b ;
ADD_16b_pe add_580 (
  .a(w_12096_16b),
  .b(w_12106_16b),
  .c(w_12107_16b),
  .clk(clk)
);
assign  w_12108_16b  =  r58_w_SAD_2a163_14_16b ;
assign  w_1211_8b  =  w_1210_8b ;
assign  w_12111_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12112_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_581 (
  .a(w_12111_8b),
  .b(w_12112_8b),
  .c(w_12113_8b),
  .clk(clk)
);
ABS_16b_pe abs_582 (
  .a(w_12113_8b),
  .b(1'b0),
  .c(w_12116_8b),
  .clk(clk)
);
assign  w_12117_8b  =  w_12116_8b ;
assign  w_12118_16b  =  w_12117_8b ;
ADD_16b_pe add_583 (
  .a(w_12118_16b),
  .b(w_12108_16b),
  .c(w_12119_16b),
  .clk(clk)
);
assign  w_1212_16b  =  w_1211_8b ;
assign  w_12120_16b  =  r59_w_SAD_2a163_14_16b ;
assign  w_12123_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12124_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_584 (
  .a(w_12124_8b),
  .b(w_12123_8b),
  .c(w_12125_8b),
  .clk(clk)
);
ABS_16b_pe abs_585 (
  .a(w_12125_8b),
  .b(1'b0),
  .c(w_12128_8b),
  .clk(clk)
);
assign  w_12129_8b  =  w_12128_8b ;
ADD_16b_pe add_586 (
  .a(w_1212_16b),
  .b(w_1202_16b),
  .c(w_1213_16b),
  .clk(clk)
);
assign  w_12130_16b  =  w_12129_8b ;
ADD_16b_pe add_587 (
  .a(w_12130_16b),
  .b(w_12120_16b),
  .c(w_12131_16b),
  .clk(clk)
);
assign  w_12132_16b  =  r60_w_SAD_2a163_14_16b ;
assign  w_12135_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12136_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_588 (
  .a(w_12136_8b),
  .b(w_12135_8b),
  .c(w_12137_8b),
  .clk(clk)
);
assign  w_1214_16b  =  r46_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_589 (
  .a(w_12137_8b),
  .b(1'b0),
  .c(w_12140_8b),
  .clk(clk)
);
assign  w_12141_8b  =  w_12140_8b ;
assign  w_12142_16b  =  w_12141_8b ;
ADD_16b_pe add_590 (
  .a(w_12132_16b),
  .b(w_12142_16b),
  .c(w_12143_16b),
  .clk(clk)
);
assign  w_12144_16b  =  r61_w_SAD_2a163_14_16b ;
assign  w_12147_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12148_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_591 (
  .a(w_12147_8b),
  .b(w_12148_8b),
  .c(w_12149_8b),
  .clk(clk)
);
ABS_16b_pe abs_592 (
  .a(w_12149_8b),
  .b(1'b0),
  .c(w_12152_8b),
  .clk(clk)
);
assign  w_12153_8b  =  w_12152_8b ;
assign  w_12154_16b  =  w_12153_8b ;
ADD_16b_pe add_593 (
  .a(w_12154_16b),
  .b(w_12144_16b),
  .c(w_12155_16b),
  .clk(clk)
);
assign  w_12156_16b  =  r62_w_SAD_2a163_14_16b ;
assign  w_12159_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12160_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_594 (
  .a(w_12160_8b),
  .b(w_12159_8b),
  .c(w_12161_8b),
  .clk(clk)
);
ABS_16b_pe abs_595 (
  .a(w_12161_8b),
  .b(1'b0),
  .c(w_12164_8b),
  .clk(clk)
);
assign  w_12165_8b  =  w_12164_8b ;
assign  w_12166_16b  =  w_12165_8b ;
ADD_16b_pe add_596 (
  .a(w_12156_16b),
  .b(w_12166_16b),
  .c(w_12167_16b),
  .clk(clk)
);
assign  w_12168_16b  = 1'b0;
assign  w_1217_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_12171_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_12172_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_597 (
  .a(w_12172_8b),
  .b(w_12171_8b),
  .c(w_12173_8b),
  .clk(clk)
);
ABS_16b_pe abs_598 (
  .a(w_12173_8b),
  .b(1'b0),
  .c(w_12176_8b),
  .clk(clk)
);
assign  w_12177_8b  =  w_12176_8b ;
assign  w_12178_16b  =  w_12177_8b ;
ADD_16b_pe add_599 (
  .a(w_12168_16b),
  .b(w_12178_16b),
  .c(w_12179_16b),
  .clk(clk)
);
assign  w_1218_8b  =  w_pass_4_stencil_7_5_8b ;
assign  w_12180_16b  =  r0_w_SAD_2a163_15_16b ;
assign  w_12183_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_12184_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_600 (
  .a(w_12183_8b),
  .b(w_12184_8b),
  .c(w_12185_8b),
  .clk(clk)
);
ABS_16b_pe abs_601 (
  .a(w_12185_8b),
  .b(1'b0),
  .c(w_12188_8b),
  .clk(clk)
);
assign  w_12189_8b  =  w_12188_8b ;
SUB_16b_pe sub_602 (
  .a(w_1218_8b),
  .b(w_1217_8b),
  .c(w_1219_8b),
  .clk(clk)
);
assign  w_12190_16b  =  w_12189_8b ;
ADD_16b_pe add_603 (
  .a(w_12190_16b),
  .b(w_12180_16b),
  .c(w_12191_16b),
  .clk(clk)
);
assign  w_12192_16b  =  r1_w_SAD_2a163_15_16b ;
assign  w_12195_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_12196_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_604 (
  .a(w_12195_8b),
  .b(w_12196_8b),
  .c(w_12197_8b),
  .clk(clk)
);
ABS_16b_pe abs_605 (
  .a(w_12197_8b),
  .b(1'b0),
  .c(w_12200_8b),
  .clk(clk)
);
assign  w_12201_8b  =  w_12200_8b ;
assign  w_12202_16b  =  w_12201_8b ;
ADD_16b_pe add_606 (
  .a(w_12192_16b),
  .b(w_12202_16b),
  .c(w_12203_16b),
  .clk(clk)
);
assign  w_12204_16b  =  r2_w_SAD_2a163_15_16b ;
assign  w_12207_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_12208_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_607 (
  .a(w_12208_8b),
  .b(w_12207_8b),
  .c(w_12209_8b),
  .clk(clk)
);
ABS_16b_pe abs_608 (
  .a(w_12209_8b),
  .b(1'b0),
  .c(w_12212_8b),
  .clk(clk)
);
assign  w_12213_8b  =  w_12212_8b ;
assign  w_12214_16b  =  w_12213_8b ;
ADD_16b_pe add_609 (
  .a(w_12204_16b),
  .b(w_12214_16b),
  .c(w_12215_16b),
  .clk(clk)
);
assign  w_12216_16b  =  r3_w_SAD_2a163_15_16b ;
assign  w_12219_8b  =  w_pass_5_stencil_16_0_8b ;
ABS_16b_pe abs_610 (
  .a(w_1219_8b),
  .b(1'b0),
  .c(w_1222_8b),
  .clk(clk)
);
assign  w_12220_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_611 (
  .a(w_12219_8b),
  .b(w_12220_8b),
  .c(w_12221_8b),
  .clk(clk)
);
ABS_16b_pe abs_612 (
  .a(w_12221_8b),
  .b(1'b0),
  .c(w_12224_8b),
  .clk(clk)
);
assign  w_12225_8b  =  w_12224_8b ;
assign  w_12226_16b  =  w_12225_8b ;
ADD_16b_pe add_613 (
  .a(w_12226_16b),
  .b(w_12216_16b),
  .c(w_12227_16b),
  .clk(clk)
);
assign  w_12228_16b  =  r4_w_SAD_2a163_15_16b ;
assign  w_1223_8b  =  w_1222_8b ;
assign  w_12231_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_12232_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_614 (
  .a(w_12231_8b),
  .b(w_12232_8b),
  .c(w_12233_8b),
  .clk(clk)
);
ABS_16b_pe abs_615 (
  .a(w_12233_8b),
  .b(1'b0),
  .c(w_12236_8b),
  .clk(clk)
);
assign  w_12237_8b  =  w_12236_8b ;
assign  w_12238_16b  =  w_12237_8b ;
ADD_16b_pe add_616 (
  .a(w_12228_16b),
  .b(w_12238_16b),
  .c(w_12239_16b),
  .clk(clk)
);
assign  w_1224_16b  =  w_1223_8b ;
assign  w_12240_16b  =  r5_w_SAD_2a163_15_16b ;
assign  w_12243_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_12244_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_617 (
  .a(w_12244_8b),
  .b(w_12243_8b),
  .c(w_12245_8b),
  .clk(clk)
);
ABS_16b_pe abs_618 (
  .a(w_12245_8b),
  .b(1'b0),
  .c(w_12248_8b),
  .clk(clk)
);
assign  w_12249_8b  =  w_12248_8b ;
ADD_16b_pe add_619 (
  .a(w_1214_16b),
  .b(w_1224_16b),
  .c(w_1225_16b),
  .clk(clk)
);
assign  w_12250_16b  =  w_12249_8b ;
ADD_16b_pe add_620 (
  .a(w_12240_16b),
  .b(w_12250_16b),
  .c(w_12251_16b),
  .clk(clk)
);
assign  w_12252_16b  =  r6_w_SAD_2a163_15_16b ;
assign  w_12255_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_12256_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_621 (
  .a(w_12256_8b),
  .b(w_12255_8b),
  .c(w_12257_8b),
  .clk(clk)
);
assign  w_1226_16b  =  r47_w_SAD_2a163_0_16b ;
ABS_16b_pe abs_622 (
  .a(w_12257_8b),
  .b(1'b0),
  .c(w_12260_8b),
  .clk(clk)
);
assign  w_12261_8b  =  w_12260_8b ;
assign  w_12262_16b  =  w_12261_8b ;
ADD_16b_pe add_623 (
  .a(w_12262_16b),
  .b(w_12252_16b),
  .c(w_12263_16b),
  .clk(clk)
);
assign  w_12264_16b  =  r7_w_SAD_2a163_15_16b ;
assign  w_12267_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_12268_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_624 (
  .a(w_12267_8b),
  .b(w_12268_8b),
  .c(w_12269_8b),
  .clk(clk)
);
ABS_16b_pe abs_625 (
  .a(w_12269_8b),
  .b(1'b0),
  .c(w_12272_8b),
  .clk(clk)
);
assign  w_12273_8b  =  w_12272_8b ;
assign  w_12274_16b  =  w_12273_8b ;
ADD_16b_pe add_626 (
  .a(w_12264_16b),
  .b(w_12274_16b),
  .c(w_12275_16b),
  .clk(clk)
);
assign  w_12276_16b  =  r8_w_SAD_2a163_15_16b ;
assign  w_12279_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_1228_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12280_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_627 (
  .a(w_12279_8b),
  .b(w_12280_8b),
  .c(w_12281_8b),
  .clk(clk)
);
ABS_16b_pe abs_628 (
  .a(w_12281_8b),
  .b(1'b0),
  .c(w_12284_8b),
  .clk(clk)
);
assign  w_12285_8b  =  w_12284_8b ;
assign  w_12286_16b  =  w_12285_8b ;
ADD_16b_pe add_629 (
  .a(w_12286_16b),
  .b(w_12276_16b),
  .c(w_12287_16b),
  .clk(clk)
);
assign  w_12288_16b  =  r9_w_SAD_2a163_15_16b ;
assign  w_1229_8b  =  w_pass_4_stencil_0_6_8b ;
assign  w_12291_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_12292_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_630 (
  .a(w_12292_8b),
  .b(w_12291_8b),
  .c(w_12293_8b),
  .clk(clk)
);
ABS_16b_pe abs_631 (
  .a(w_12293_8b),
  .b(1'b0),
  .c(w_12296_8b),
  .clk(clk)
);
assign  w_12297_8b  =  w_12296_8b ;
assign  w_12298_16b  =  w_12297_8b ;
ADD_16b_pe add_632 (
  .a(w_12288_16b),
  .b(w_12298_16b),
  .c(w_12299_16b),
  .clk(clk)
);
SUB_16b_pe sub_633 (
  .a(w_1229_8b),
  .b(w_1228_8b),
  .c(w_1230_8b),
  .clk(clk)
);
assign  w_12300_16b  =  r10_w_SAD_2a163_15_16b ;
assign  w_12303_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_12304_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_634 (
  .a(w_12303_8b),
  .b(w_12304_8b),
  .c(w_12305_8b),
  .clk(clk)
);
ABS_16b_pe abs_635 (
  .a(w_12305_8b),
  .b(1'b0),
  .c(w_12308_8b),
  .clk(clk)
);
assign  w_12309_8b  =  w_12308_8b ;
assign  w_12310_16b  =  w_12309_8b ;
ADD_16b_pe add_636 (
  .a(w_12300_16b),
  .b(w_12310_16b),
  .c(w_12311_16b),
  .clk(clk)
);
assign  w_12312_16b  =  r11_w_SAD_2a163_15_16b ;
assign  w_12315_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_12316_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_637 (
  .a(w_12316_8b),
  .b(w_12315_8b),
  .c(w_12317_8b),
  .clk(clk)
);
ABS_16b_pe abs_638 (
  .a(w_12317_8b),
  .b(1'b0),
  .c(w_12320_8b),
  .clk(clk)
);
assign  w_12321_8b  =  w_12320_8b ;
assign  w_12322_16b  =  w_12321_8b ;
ADD_16b_pe add_639 (
  .a(w_12312_16b),
  .b(w_12322_16b),
  .c(w_12323_16b),
  .clk(clk)
);
assign  w_12324_16b  =  r12_w_SAD_2a163_15_16b ;
assign  w_12327_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_12328_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_640 (
  .a(w_12327_8b),
  .b(w_12328_8b),
  .c(w_12329_8b),
  .clk(clk)
);
ABS_16b_pe abs_641 (
  .a(w_1230_8b),
  .b(1'b0),
  .c(w_1233_8b),
  .clk(clk)
);
ABS_16b_pe abs_642 (
  .a(w_12329_8b),
  .b(1'b0),
  .c(w_12332_8b),
  .clk(clk)
);
assign  w_12333_8b  =  w_12332_8b ;
assign  w_12334_16b  =  w_12333_8b ;
ADD_16b_pe add_643 (
  .a(w_12334_16b),
  .b(w_12324_16b),
  .c(w_12335_16b),
  .clk(clk)
);
assign  w_12336_16b  =  r13_w_SAD_2a163_15_16b ;
assign  w_12339_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_1234_8b  =  w_1233_8b ;
assign  w_12340_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_644 (
  .a(w_12339_8b),
  .b(w_12340_8b),
  .c(w_12341_8b),
  .clk(clk)
);
ABS_16b_pe abs_645 (
  .a(w_12341_8b),
  .b(1'b0),
  .c(w_12344_8b),
  .clk(clk)
);
assign  w_12345_8b  =  w_12344_8b ;
assign  w_12346_16b  =  w_12345_8b ;
ADD_16b_pe add_646 (
  .a(w_12336_16b),
  .b(w_12346_16b),
  .c(w_12347_16b),
  .clk(clk)
);
assign  w_12348_16b  =  r14_w_SAD_2a163_15_16b ;
assign  w_1235_16b  =  w_1234_8b ;
assign  w_12351_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_12352_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_647 (
  .a(w_12352_8b),
  .b(w_12351_8b),
  .c(w_12353_8b),
  .clk(clk)
);
ABS_16b_pe abs_648 (
  .a(w_12353_8b),
  .b(1'b0),
  .c(w_12356_8b),
  .clk(clk)
);
assign  w_12357_8b  =  w_12356_8b ;
assign  w_12358_16b  =  w_12357_8b ;
ADD_16b_pe add_649 (
  .a(w_12358_16b),
  .b(w_12348_16b),
  .c(w_12359_16b),
  .clk(clk)
);
ADD_16b_pe add_650 (
  .a(w_1235_16b),
  .b(w_1226_16b),
  .c(w_1236_16b),
  .clk(clk)
);
assign  w_12360_16b  =  r15_w_SAD_2a163_15_16b ;
assign  w_12363_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_12364_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_651 (
  .a(w_12363_8b),
  .b(w_12364_8b),
  .c(w_12365_8b),
  .clk(clk)
);
ABS_16b_pe abs_652 (
  .a(w_12365_8b),
  .b(1'b0),
  .c(w_12368_8b),
  .clk(clk)
);
assign  w_12369_8b  =  w_12368_8b ;
assign  w_1237_16b  =  r48_w_SAD_2a163_0_16b ;
assign  w_12370_16b  =  w_12369_8b ;
ADD_16b_pe add_653 (
  .a(w_12370_16b),
  .b(w_12360_16b),
  .c(w_12371_16b),
  .clk(clk)
);
assign  w_12372_16b  =  r16_w_SAD_2a163_15_16b ;
assign  w_12375_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_12376_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_654 (
  .a(w_12375_8b),
  .b(w_12376_8b),
  .c(w_12377_8b),
  .clk(clk)
);
ABS_16b_pe abs_655 (
  .a(w_12377_8b),
  .b(1'b0),
  .c(w_12380_8b),
  .clk(clk)
);
assign  w_12381_8b  =  w_12380_8b ;
assign  w_12382_16b  =  w_12381_8b ;
ADD_16b_pe add_656 (
  .a(w_12372_16b),
  .b(w_12382_16b),
  .c(w_12383_16b),
  .clk(clk)
);
assign  w_12384_16b  =  r17_w_SAD_2a163_15_16b ;
assign  w_12387_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_12388_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_657 (
  .a(w_12388_8b),
  .b(w_12387_8b),
  .c(w_12389_8b),
  .clk(clk)
);
ABS_16b_pe abs_658 (
  .a(w_12389_8b),
  .b(1'b0),
  .c(w_12392_8b),
  .clk(clk)
);
assign  w_12393_8b  =  w_12392_8b ;
assign  w_12394_16b  =  w_12393_8b ;
ADD_16b_pe add_659 (
  .a(w_12394_16b),
  .b(w_12384_16b),
  .c(w_12395_16b),
  .clk(clk)
);
assign  w_12396_16b  =  r18_w_SAD_2a163_15_16b ;
assign  w_12399_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_1240_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12400_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_660 (
  .a(w_12400_8b),
  .b(w_12399_8b),
  .c(w_12401_8b),
  .clk(clk)
);
ABS_16b_pe abs_661 (
  .a(w_12401_8b),
  .b(1'b0),
  .c(w_12404_8b),
  .clk(clk)
);
assign  w_12405_8b  =  w_12404_8b ;
assign  w_12406_16b  =  w_12405_8b ;
ADD_16b_pe add_662 (
  .a(w_12396_16b),
  .b(w_12406_16b),
  .c(w_12407_16b),
  .clk(clk)
);
assign  w_12408_16b  =  r19_w_SAD_2a163_15_16b ;
assign  w_1241_8b  =  w_pass_4_stencil_1_6_8b ;
assign  w_12411_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_12412_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_663 (
  .a(w_12411_8b),
  .b(w_12412_8b),
  .c(w_12413_8b),
  .clk(clk)
);
ABS_16b_pe abs_664 (
  .a(w_12413_8b),
  .b(1'b0),
  .c(w_12416_8b),
  .clk(clk)
);
assign  w_12417_8b  =  w_12416_8b ;
assign  w_12418_16b  =  w_12417_8b ;
ADD_16b_pe add_665 (
  .a(w_12418_16b),
  .b(w_12408_16b),
  .c(w_12419_16b),
  .clk(clk)
);
SUB_16b_pe sub_666 (
  .a(w_1241_8b),
  .b(w_1240_8b),
  .c(w_1242_8b),
  .clk(clk)
);
assign  w_12420_16b  =  r20_w_SAD_2a163_15_16b ;
assign  w_12423_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_12424_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_667 (
  .a(w_12424_8b),
  .b(w_12423_8b),
  .c(w_12425_8b),
  .clk(clk)
);
ABS_16b_pe abs_668 (
  .a(w_12425_8b),
  .b(1'b0),
  .c(w_12428_8b),
  .clk(clk)
);
assign  w_12429_8b  =  w_12428_8b ;
assign  w_12430_16b  =  w_12429_8b ;
ADD_16b_pe add_669 (
  .a(w_12420_16b),
  .b(w_12430_16b),
  .c(w_12431_16b),
  .clk(clk)
);
assign  w_12432_16b  =  r21_w_SAD_2a163_15_16b ;
assign  w_12435_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_12436_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_670 (
  .a(w_12436_8b),
  .b(w_12435_8b),
  .c(w_12437_8b),
  .clk(clk)
);
ABS_16b_pe abs_671 (
  .a(w_12437_8b),
  .b(1'b0),
  .c(w_12440_8b),
  .clk(clk)
);
assign  w_12441_8b  =  w_12440_8b ;
assign  w_12442_16b  =  w_12441_8b ;
ADD_16b_pe add_672 (
  .a(w_12442_16b),
  .b(w_12432_16b),
  .c(w_12443_16b),
  .clk(clk)
);
assign  w_12444_16b  =  r22_w_SAD_2a163_15_16b ;
assign  w_12447_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_12448_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_673 (
  .a(w_12448_8b),
  .b(w_12447_8b),
  .c(w_12449_8b),
  .clk(clk)
);
ABS_16b_pe abs_674 (
  .a(w_1242_8b),
  .b(1'b0),
  .c(w_1245_8b),
  .clk(clk)
);
ABS_16b_pe abs_675 (
  .a(w_12449_8b),
  .b(1'b0),
  .c(w_12452_8b),
  .clk(clk)
);
assign  w_12453_8b  =  w_12452_8b ;
assign  w_12454_16b  =  w_12453_8b ;
ADD_16b_pe add_676 (
  .a(w_12454_16b),
  .b(w_12444_16b),
  .c(w_12455_16b),
  .clk(clk)
);
assign  w_12456_16b  =  r23_w_SAD_2a163_15_16b ;
assign  w_12459_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_1246_8b  =  w_1245_8b ;
assign  w_12460_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_677 (
  .a(w_12460_8b),
  .b(w_12459_8b),
  .c(w_12461_8b),
  .clk(clk)
);
ABS_16b_pe abs_678 (
  .a(w_12461_8b),
  .b(1'b0),
  .c(w_12464_8b),
  .clk(clk)
);
assign  w_12465_8b  =  w_12464_8b ;
assign  w_12466_16b  =  w_12465_8b ;
ADD_16b_pe add_679 (
  .a(w_12456_16b),
  .b(w_12466_16b),
  .c(w_12467_16b),
  .clk(clk)
);
assign  w_12468_16b  =  r24_w_SAD_2a163_15_16b ;
assign  w_1247_16b  =  w_1246_8b ;
assign  w_12471_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_12472_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_680 (
  .a(w_12472_8b),
  .b(w_12471_8b),
  .c(w_12473_8b),
  .clk(clk)
);
ABS_16b_pe abs_681 (
  .a(w_12473_8b),
  .b(1'b0),
  .c(w_12476_8b),
  .clk(clk)
);
assign  w_12477_8b  =  w_12476_8b ;
assign  w_12478_16b  =  w_12477_8b ;
ADD_16b_pe add_682 (
  .a(w_12468_16b),
  .b(w_12478_16b),
  .c(w_12479_16b),
  .clk(clk)
);
ADD_16b_pe add_683 (
  .a(w_1247_16b),
  .b(w_1237_16b),
  .c(w_1248_16b),
  .clk(clk)
);
assign  w_12480_16b  =  r25_w_SAD_2a163_15_16b ;
assign  w_12483_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_12484_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_684 (
  .a(w_12484_8b),
  .b(w_12483_8b),
  .c(w_12485_8b),
  .clk(clk)
);
ABS_16b_pe abs_685 (
  .a(w_12485_8b),
  .b(1'b0),
  .c(w_12488_8b),
  .clk(clk)
);
assign  w_12489_8b  =  w_12488_8b ;
assign  w_1249_16b  =  r49_w_SAD_2a163_0_16b ;
assign  w_12490_16b  =  w_12489_8b ;
ADD_16b_pe add_686 (
  .a(w_12490_16b),
  .b(w_12480_16b),
  .c(w_12491_16b),
  .clk(clk)
);
assign  w_12492_16b  =  r26_w_SAD_2a163_15_16b ;
assign  w_12495_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_12496_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_687 (
  .a(w_12495_8b),
  .b(w_12496_8b),
  .c(w_12497_8b),
  .clk(clk)
);
ABS_16b_pe abs_688 (
  .a(w_12497_8b),
  .b(1'b0),
  .c(w_12500_8b),
  .clk(clk)
);
assign  w_12501_8b  =  w_12500_8b ;
assign  w_12502_16b  =  w_12501_8b ;
ADD_16b_pe add_689 (
  .a(w_12492_16b),
  .b(w_12502_16b),
  .c(w_12503_16b),
  .clk(clk)
);
assign  w_12504_16b  =  r27_w_SAD_2a163_15_16b ;
assign  w_12507_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_12508_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_690 (
  .a(w_12507_8b),
  .b(w_12508_8b),
  .c(w_12509_8b),
  .clk(clk)
);
ABS_16b_pe abs_691 (
  .a(w_12509_8b),
  .b(1'b0),
  .c(w_12512_8b),
  .clk(clk)
);
assign  w_12513_8b  =  w_12512_8b ;
assign  w_12514_16b  =  w_12513_8b ;
ADD_16b_pe add_692 (
  .a(w_12514_16b),
  .b(w_12504_16b),
  .c(w_12515_16b),
  .clk(clk)
);
assign  w_12516_16b  =  r28_w_SAD_2a163_15_16b ;
assign  w_12519_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_1252_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12520_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_693 (
  .a(w_12520_8b),
  .b(w_12519_8b),
  .c(w_12521_8b),
  .clk(clk)
);
ABS_16b_pe abs_694 (
  .a(w_12521_8b),
  .b(1'b0),
  .c(w_12524_8b),
  .clk(clk)
);
assign  w_12525_8b  =  w_12524_8b ;
assign  w_12526_16b  =  w_12525_8b ;
ADD_16b_pe add_695 (
  .a(w_12516_16b),
  .b(w_12526_16b),
  .c(w_12527_16b),
  .clk(clk)
);
assign  w_12528_16b  =  r29_w_SAD_2a163_15_16b ;
assign  w_1253_8b  =  w_pass_4_stencil_2_6_8b ;
assign  w_12531_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_12532_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_696 (
  .a(w_12532_8b),
  .b(w_12531_8b),
  .c(w_12533_8b),
  .clk(clk)
);
ABS_16b_pe abs_697 (
  .a(w_12533_8b),
  .b(1'b0),
  .c(w_12536_8b),
  .clk(clk)
);
assign  w_12537_8b  =  w_12536_8b ;
assign  w_12538_16b  =  w_12537_8b ;
ADD_16b_pe add_698 (
  .a(w_12528_16b),
  .b(w_12538_16b),
  .c(w_12539_16b),
  .clk(clk)
);
SUB_16b_pe sub_699 (
  .a(w_1252_8b),
  .b(w_1253_8b),
  .c(w_1254_8b),
  .clk(clk)
);
assign  w_12540_16b  =  r30_w_SAD_2a163_15_16b ;
assign  w_12543_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_12544_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_700 (
  .a(w_12543_8b),
  .b(w_12544_8b),
  .c(w_12545_8b),
  .clk(clk)
);
ABS_16b_pe abs_701 (
  .a(w_12545_8b),
  .b(1'b0),
  .c(w_12548_8b),
  .clk(clk)
);
assign  w_12549_8b  =  w_12548_8b ;
assign  w_12550_16b  =  w_12549_8b ;
ADD_16b_pe add_702 (
  .a(w_12550_16b),
  .b(w_12540_16b),
  .c(w_12551_16b),
  .clk(clk)
);
assign  w_12552_16b  =  r31_w_SAD_2a163_15_16b ;
assign  w_12555_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_12556_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_703 (
  .a(w_12555_8b),
  .b(w_12556_8b),
  .c(w_12557_8b),
  .clk(clk)
);
ABS_16b_pe abs_704 (
  .a(w_12557_8b),
  .b(1'b0),
  .c(w_12560_8b),
  .clk(clk)
);
assign  w_12561_8b  =  w_12560_8b ;
assign  w_12562_16b  =  w_12561_8b ;
ADD_16b_pe add_705 (
  .a(w_12552_16b),
  .b(w_12562_16b),
  .c(w_12563_16b),
  .clk(clk)
);
assign  w_12564_16b  =  r32_w_SAD_2a163_15_16b ;
assign  w_12567_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_12568_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_706 (
  .a(w_12567_8b),
  .b(w_12568_8b),
  .c(w_12569_8b),
  .clk(clk)
);
ABS_16b_pe abs_707 (
  .a(w_1254_8b),
  .b(1'b0),
  .c(w_1257_8b),
  .clk(clk)
);
ABS_16b_pe abs_708 (
  .a(w_12569_8b),
  .b(1'b0),
  .c(w_12572_8b),
  .clk(clk)
);
assign  w_12573_8b  =  w_12572_8b ;
assign  w_12574_16b  =  w_12573_8b ;
ADD_16b_pe add_709 (
  .a(w_12564_16b),
  .b(w_12574_16b),
  .c(w_12575_16b),
  .clk(clk)
);
assign  w_12576_16b  =  r33_w_SAD_2a163_15_16b ;
assign  w_12579_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_1258_8b  =  w_1257_8b ;
assign  w_12580_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_710 (
  .a(w_12579_8b),
  .b(w_12580_8b),
  .c(w_12581_8b),
  .clk(clk)
);
ABS_16b_pe abs_711 (
  .a(w_12581_8b),
  .b(1'b0),
  .c(w_12584_8b),
  .clk(clk)
);
assign  w_12585_8b  =  w_12584_8b ;
assign  w_12586_16b  =  w_12585_8b ;
ADD_16b_pe add_712 (
  .a(w_12586_16b),
  .b(w_12576_16b),
  .c(w_12587_16b),
  .clk(clk)
);
assign  w_12588_16b  =  r34_w_SAD_2a163_15_16b ;
assign  w_1259_16b  =  w_1258_8b ;
assign  w_12591_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_12592_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_713 (
  .a(w_12591_8b),
  .b(w_12592_8b),
  .c(w_12593_8b),
  .clk(clk)
);
ABS_16b_pe abs_714 (
  .a(w_12593_8b),
  .b(1'b0),
  .c(w_12596_8b),
  .clk(clk)
);
assign  w_12597_8b  =  w_12596_8b ;
assign  w_12598_16b  =  w_12597_8b ;
ADD_16b_pe add_715 (
  .a(w_12598_16b),
  .b(w_12588_16b),
  .c(w_12599_16b),
  .clk(clk)
);
ADD_16b_pe add_716 (
  .a(w_1249_16b),
  .b(w_1259_16b),
  .c(w_1260_16b),
  .clk(clk)
);
assign  w_12600_16b  =  r35_w_SAD_2a163_15_16b ;
assign  w_12603_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_12604_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_717 (
  .a(w_12604_8b),
  .b(w_12603_8b),
  .c(w_12605_8b),
  .clk(clk)
);
ABS_16b_pe abs_718 (
  .a(w_12605_8b),
  .b(1'b0),
  .c(w_12608_8b),
  .clk(clk)
);
assign  w_12609_8b  =  w_12608_8b ;
assign  w_1261_16b  =  r50_w_SAD_2a163_0_16b ;
assign  w_12610_16b  =  w_12609_8b ;
ADD_16b_pe add_719 (
  .a(w_12600_16b),
  .b(w_12610_16b),
  .c(w_12611_16b),
  .clk(clk)
);
assign  w_12612_16b  =  r36_w_SAD_2a163_15_16b ;
assign  w_12615_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_12616_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_720 (
  .a(w_12616_8b),
  .b(w_12615_8b),
  .c(w_12617_8b),
  .clk(clk)
);
ABS_16b_pe abs_721 (
  .a(w_12617_8b),
  .b(1'b0),
  .c(w_12620_8b),
  .clk(clk)
);
assign  w_12621_8b  =  w_12620_8b ;
assign  w_12622_16b  =  w_12621_8b ;
ADD_16b_pe add_722 (
  .a(w_12622_16b),
  .b(w_12612_16b),
  .c(w_12623_16b),
  .clk(clk)
);
assign  w_12624_16b  =  r37_w_SAD_2a163_15_16b ;
assign  w_12627_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_12628_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_723 (
  .a(w_12627_8b),
  .b(w_12628_8b),
  .c(w_12629_8b),
  .clk(clk)
);
ABS_16b_pe abs_724 (
  .a(w_12629_8b),
  .b(1'b0),
  .c(w_12632_8b),
  .clk(clk)
);
assign  w_12633_8b  =  w_12632_8b ;
assign  w_12634_16b  =  w_12633_8b ;
ADD_16b_pe add_725 (
  .a(w_12624_16b),
  .b(w_12634_16b),
  .c(w_12635_16b),
  .clk(clk)
);
assign  w_12636_16b  =  r38_w_SAD_2a163_15_16b ;
assign  w_12639_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_1264_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12640_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_726 (
  .a(w_12639_8b),
  .b(w_12640_8b),
  .c(w_12641_8b),
  .clk(clk)
);
ABS_16b_pe abs_727 (
  .a(w_12641_8b),
  .b(1'b0),
  .c(w_12644_8b),
  .clk(clk)
);
assign  w_12645_8b  =  w_12644_8b ;
assign  w_12646_16b  =  w_12645_8b ;
ADD_16b_pe add_728 (
  .a(w_12646_16b),
  .b(w_12636_16b),
  .c(w_12647_16b),
  .clk(clk)
);
assign  w_12648_16b  =  r39_w_SAD_2a163_15_16b ;
assign  w_1265_8b  =  w_pass_4_stencil_3_6_8b ;
assign  w_12651_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_12652_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_729 (
  .a(w_12652_8b),
  .b(w_12651_8b),
  .c(w_12653_8b),
  .clk(clk)
);
ABS_16b_pe abs_730 (
  .a(w_12653_8b),
  .b(1'b0),
  .c(w_12656_8b),
  .clk(clk)
);
assign  w_12657_8b  =  w_12656_8b ;
assign  w_12658_16b  =  w_12657_8b ;
ADD_16b_pe add_731 (
  .a(w_12648_16b),
  .b(w_12658_16b),
  .c(w_12659_16b),
  .clk(clk)
);
SUB_16b_pe sub_732 (
  .a(w_1265_8b),
  .b(w_1264_8b),
  .c(w_1266_8b),
  .clk(clk)
);
assign  w_12660_16b  =  r40_w_SAD_2a163_15_16b ;
assign  w_12663_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_12664_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_733 (
  .a(w_12663_8b),
  .b(w_12664_8b),
  .c(w_12665_8b),
  .clk(clk)
);
ABS_16b_pe abs_734 (
  .a(w_12665_8b),
  .b(1'b0),
  .c(w_12668_8b),
  .clk(clk)
);
assign  w_12669_8b  =  w_12668_8b ;
assign  w_12670_16b  =  w_12669_8b ;
ADD_16b_pe add_735 (
  .a(w_12660_16b),
  .b(w_12670_16b),
  .c(w_12671_16b),
  .clk(clk)
);
assign  w_12672_16b  =  r41_w_SAD_2a163_15_16b ;
assign  w_12675_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_12676_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_736 (
  .a(w_12675_8b),
  .b(w_12676_8b),
  .c(w_12677_8b),
  .clk(clk)
);
ABS_16b_pe abs_737 (
  .a(w_12677_8b),
  .b(1'b0),
  .c(w_12680_8b),
  .clk(clk)
);
assign  w_12681_8b  =  w_12680_8b ;
assign  w_12682_16b  =  w_12681_8b ;
ADD_16b_pe add_738 (
  .a(w_12682_16b),
  .b(w_12672_16b),
  .c(w_12683_16b),
  .clk(clk)
);
assign  w_12684_16b  =  r42_w_SAD_2a163_15_16b ;
assign  w_12687_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_12688_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_739 (
  .a(w_12687_8b),
  .b(w_12688_8b),
  .c(w_12689_8b),
  .clk(clk)
);
ABS_16b_pe abs_740 (
  .a(w_1266_8b),
  .b(1'b0),
  .c(w_1269_8b),
  .clk(clk)
);
ABS_16b_pe abs_741 (
  .a(w_12689_8b),
  .b(1'b0),
  .c(w_12692_8b),
  .clk(clk)
);
assign  w_12693_8b  =  w_12692_8b ;
assign  w_12694_16b  =  w_12693_8b ;
ADD_16b_pe add_742 (
  .a(w_12684_16b),
  .b(w_12694_16b),
  .c(w_12695_16b),
  .clk(clk)
);
assign  w_12696_16b  =  r43_w_SAD_2a163_15_16b ;
assign  w_12699_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_1270_8b  =  w_1269_8b ;
assign  w_12700_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_743 (
  .a(w_12700_8b),
  .b(w_12699_8b),
  .c(w_12701_8b),
  .clk(clk)
);
ABS_16b_pe abs_744 (
  .a(w_12701_8b),
  .b(1'b0),
  .c(w_12704_8b),
  .clk(clk)
);
assign  w_12705_8b  =  w_12704_8b ;
assign  w_12706_16b  =  w_12705_8b ;
ADD_16b_pe add_745 (
  .a(w_12696_16b),
  .b(w_12706_16b),
  .c(w_12707_16b),
  .clk(clk)
);
assign  w_12708_16b  =  r44_w_SAD_2a163_15_16b ;
assign  w_1271_16b  =  w_1270_8b ;
assign  w_12711_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_12712_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_746 (
  .a(w_12712_8b),
  .b(w_12711_8b),
  .c(w_12713_8b),
  .clk(clk)
);
ABS_16b_pe abs_747 (
  .a(w_12713_8b),
  .b(1'b0),
  .c(w_12716_8b),
  .clk(clk)
);
assign  w_12717_8b  =  w_12716_8b ;
assign  w_12718_16b  =  w_12717_8b ;
ADD_16b_pe add_748 (
  .a(w_12718_16b),
  .b(w_12708_16b),
  .c(w_12719_16b),
  .clk(clk)
);
ADD_16b_pe add_749 (
  .a(w_1271_16b),
  .b(w_1261_16b),
  .c(w_1272_16b),
  .clk(clk)
);
assign  w_12720_16b  =  r45_w_SAD_2a163_15_16b ;
assign  w_12723_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_12724_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_750 (
  .a(w_12723_8b),
  .b(w_12724_8b),
  .c(w_12725_8b),
  .clk(clk)
);
ABS_16b_pe abs_751 (
  .a(w_12725_8b),
  .b(1'b0),
  .c(w_12728_8b),
  .clk(clk)
);
assign  w_12729_8b  =  w_12728_8b ;
assign  w_1273_16b  =  r51_w_SAD_2a163_0_16b ;
assign  w_12730_16b  =  w_12729_8b ;
ADD_16b_pe add_752 (
  .a(w_12730_16b),
  .b(w_12720_16b),
  .c(w_12731_16b),
  .clk(clk)
);
assign  w_12732_16b  =  r46_w_SAD_2a163_15_16b ;
assign  w_12735_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_12736_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_753 (
  .a(w_12735_8b),
  .b(w_12736_8b),
  .c(w_12737_8b),
  .clk(clk)
);
ABS_16b_pe abs_754 (
  .a(w_12737_8b),
  .b(1'b0),
  .c(w_12740_8b),
  .clk(clk)
);
assign  w_12741_8b  =  w_12740_8b ;
assign  w_12742_16b  =  w_12741_8b ;
ADD_16b_pe add_755 (
  .a(w_12732_16b),
  .b(w_12742_16b),
  .c(w_12743_16b),
  .clk(clk)
);
assign  w_12744_16b  =  r47_w_SAD_2a163_15_16b ;
assign  w_12747_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12748_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_756 (
  .a(w_12748_8b),
  .b(w_12747_8b),
  .c(w_12749_8b),
  .clk(clk)
);
ABS_16b_pe abs_757 (
  .a(w_12749_8b),
  .b(1'b0),
  .c(w_12752_8b),
  .clk(clk)
);
assign  w_12753_8b  =  w_12752_8b ;
assign  w_12754_16b  =  w_12753_8b ;
ADD_16b_pe add_758 (
  .a(w_12754_16b),
  .b(w_12744_16b),
  .c(w_12755_16b),
  .clk(clk)
);
assign  w_12756_16b  =  r48_w_SAD_2a163_15_16b ;
assign  w_12759_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_1276_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12760_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_759 (
  .a(w_12760_8b),
  .b(w_12759_8b),
  .c(w_12761_8b),
  .clk(clk)
);
ABS_16b_pe abs_760 (
  .a(w_12761_8b),
  .b(1'b0),
  .c(w_12764_8b),
  .clk(clk)
);
assign  w_12765_8b  =  w_12764_8b ;
assign  w_12766_16b  =  w_12765_8b ;
ADD_16b_pe add_761 (
  .a(w_12756_16b),
  .b(w_12766_16b),
  .c(w_12767_16b),
  .clk(clk)
);
assign  w_12768_16b  =  r49_w_SAD_2a163_15_16b ;
assign  w_1277_8b  =  w_pass_4_stencil_4_6_8b ;
assign  w_12771_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12772_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_762 (
  .a(w_12771_8b),
  .b(w_12772_8b),
  .c(w_12773_8b),
  .clk(clk)
);
ABS_16b_pe abs_763 (
  .a(w_12773_8b),
  .b(1'b0),
  .c(w_12776_8b),
  .clk(clk)
);
assign  w_12777_8b  =  w_12776_8b ;
assign  w_12778_16b  =  w_12777_8b ;
ADD_16b_pe add_764 (
  .a(w_12778_16b),
  .b(w_12768_16b),
  .c(w_12779_16b),
  .clk(clk)
);
SUB_16b_pe sub_765 (
  .a(w_1276_8b),
  .b(w_1277_8b),
  .c(w_1278_8b),
  .clk(clk)
);
assign  w_12780_16b  =  r50_w_SAD_2a163_15_16b ;
assign  w_12783_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12784_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_766 (
  .a(w_12784_8b),
  .b(w_12783_8b),
  .c(w_12785_8b),
  .clk(clk)
);
ABS_16b_pe abs_767 (
  .a(w_12785_8b),
  .b(1'b0),
  .c(w_12788_8b),
  .clk(clk)
);
assign  w_12789_8b  =  w_12788_8b ;
assign  w_12790_16b  =  w_12789_8b ;
ADD_16b_pe add_768 (
  .a(w_12790_16b),
  .b(w_12780_16b),
  .c(w_12791_16b),
  .clk(clk)
);
assign  w_12792_16b  =  r51_w_SAD_2a163_15_16b ;
assign  w_12795_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12796_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_769 (
  .a(w_12796_8b),
  .b(w_12795_8b),
  .c(w_12797_8b),
  .clk(clk)
);
ABS_16b_pe abs_770 (
  .a(w_12797_8b),
  .b(1'b0),
  .c(w_12800_8b),
  .clk(clk)
);
assign  w_12801_8b  =  w_12800_8b ;
assign  w_12802_16b  =  w_12801_8b ;
ADD_16b_pe add_771 (
  .a(w_12792_16b),
  .b(w_12802_16b),
  .c(w_12803_16b),
  .clk(clk)
);
assign  w_12804_16b  =  r52_w_SAD_2a163_15_16b ;
assign  w_12807_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12808_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_772 (
  .a(w_12808_8b),
  .b(w_12807_8b),
  .c(w_12809_8b),
  .clk(clk)
);
ABS_16b_pe abs_773 (
  .a(w_1278_8b),
  .b(1'b0),
  .c(w_1281_8b),
  .clk(clk)
);
ABS_16b_pe abs_774 (
  .a(w_12809_8b),
  .b(1'b0),
  .c(w_12812_8b),
  .clk(clk)
);
assign  w_12813_8b  =  w_12812_8b ;
assign  w_12814_16b  =  w_12813_8b ;
ADD_16b_pe add_775 (
  .a(w_12814_16b),
  .b(w_12804_16b),
  .c(w_12815_16b),
  .clk(clk)
);
assign  w_12816_16b  =  r53_w_SAD_2a163_15_16b ;
assign  w_12819_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_1282_8b  =  w_1281_8b ;
assign  w_12820_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_776 (
  .a(w_12820_8b),
  .b(w_12819_8b),
  .c(w_12821_8b),
  .clk(clk)
);
ABS_16b_pe abs_777 (
  .a(w_12821_8b),
  .b(1'b0),
  .c(w_12824_8b),
  .clk(clk)
);
assign  w_12825_8b  =  w_12824_8b ;
assign  w_12826_16b  =  w_12825_8b ;
ADD_16b_pe add_778 (
  .a(w_12816_16b),
  .b(w_12826_16b),
  .c(w_12827_16b),
  .clk(clk)
);
assign  w_12828_16b  =  r54_w_SAD_2a163_15_16b ;
assign  w_1283_16b  =  w_1282_8b ;
assign  w_12831_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12832_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_779 (
  .a(w_12832_8b),
  .b(w_12831_8b),
  .c(w_12833_8b),
  .clk(clk)
);
ABS_16b_pe abs_780 (
  .a(w_12833_8b),
  .b(1'b0),
  .c(w_12836_8b),
  .clk(clk)
);
assign  w_12837_8b  =  w_12836_8b ;
assign  w_12838_16b  =  w_12837_8b ;
ADD_16b_pe add_781 (
  .a(w_12828_16b),
  .b(w_12838_16b),
  .c(w_12839_16b),
  .clk(clk)
);
ADD_16b_pe add_782 (
  .a(w_1283_16b),
  .b(w_1273_16b),
  .c(w_1284_16b),
  .clk(clk)
);
assign  w_12840_16b  =  r55_w_SAD_2a163_15_16b ;
assign  w_12843_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12844_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_783 (
  .a(w_12844_8b),
  .b(w_12843_8b),
  .c(w_12845_8b),
  .clk(clk)
);
ABS_16b_pe abs_784 (
  .a(w_12845_8b),
  .b(1'b0),
  .c(w_12848_8b),
  .clk(clk)
);
assign  w_12849_8b  =  w_12848_8b ;
assign  w_1285_16b  =  r52_w_SAD_2a163_0_16b ;
assign  w_12850_16b  =  w_12849_8b ;
ADD_16b_pe add_785 (
  .a(w_12850_16b),
  .b(w_12840_16b),
  .c(w_12851_16b),
  .clk(clk)
);
assign  w_12852_16b  =  r56_w_SAD_2a163_15_16b ;
assign  w_12855_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12856_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_786 (
  .a(w_12855_8b),
  .b(w_12856_8b),
  .c(w_12857_8b),
  .clk(clk)
);
ABS_16b_pe abs_787 (
  .a(w_12857_8b),
  .b(1'b0),
  .c(w_12860_8b),
  .clk(clk)
);
assign  w_12861_8b  =  w_12860_8b ;
assign  w_12862_16b  =  w_12861_8b ;
ADD_16b_pe add_788 (
  .a(w_12852_16b),
  .b(w_12862_16b),
  .c(w_12863_16b),
  .clk(clk)
);
assign  w_12864_16b  =  r57_w_SAD_2a163_15_16b ;
assign  w_12867_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12868_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_789 (
  .a(w_12867_8b),
  .b(w_12868_8b),
  .c(w_12869_8b),
  .clk(clk)
);
ABS_16b_pe abs_790 (
  .a(w_12869_8b),
  .b(1'b0),
  .c(w_12872_8b),
  .clk(clk)
);
assign  w_12873_8b  =  w_12872_8b ;
assign  w_12874_16b  =  w_12873_8b ;
ADD_16b_pe add_791 (
  .a(w_12864_16b),
  .b(w_12874_16b),
  .c(w_12875_16b),
  .clk(clk)
);
assign  w_12876_16b  =  r58_w_SAD_2a163_15_16b ;
assign  w_12879_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_1288_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_12880_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_792 (
  .a(w_12880_8b),
  .b(w_12879_8b),
  .c(w_12881_8b),
  .clk(clk)
);
ABS_16b_pe abs_793 (
  .a(w_12881_8b),
  .b(1'b0),
  .c(w_12884_8b),
  .clk(clk)
);
assign  w_12885_8b  =  w_12884_8b ;
assign  w_12886_16b  =  w_12885_8b ;
ADD_16b_pe add_794 (
  .a(w_12876_16b),
  .b(w_12886_16b),
  .c(w_12887_16b),
  .clk(clk)
);
assign  w_12888_16b  =  r59_w_SAD_2a163_15_16b ;
assign  w_1289_8b  =  w_pass_4_stencil_5_6_8b ;
assign  w_12891_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12892_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_795 (
  .a(w_12891_8b),
  .b(w_12892_8b),
  .c(w_12893_8b),
  .clk(clk)
);
ABS_16b_pe abs_796 (
  .a(w_12893_8b),
  .b(1'b0),
  .c(w_12896_8b),
  .clk(clk)
);
assign  w_12897_8b  =  w_12896_8b ;
assign  w_12898_16b  =  w_12897_8b ;
ADD_16b_pe add_797 (
  .a(w_12888_16b),
  .b(w_12898_16b),
  .c(w_12899_16b),
  .clk(clk)
);
SUB_16b_pe sub_798 (
  .a(w_1289_8b),
  .b(w_1288_8b),
  .c(w_1290_8b),
  .clk(clk)
);
assign  w_12900_16b  =  r60_w_SAD_2a163_15_16b ;
assign  w_12903_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12904_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_799 (
  .a(w_12903_8b),
  .b(w_12904_8b),
  .c(w_12905_8b),
  .clk(clk)
);
ABS_16b_pe abs_800 (
  .a(w_12905_8b),
  .b(1'b0),
  .c(w_12908_8b),
  .clk(clk)
);
assign  w_12909_8b  =  w_12908_8b ;
assign  w_12910_16b  =  w_12909_8b ;
ADD_16b_pe add_801 (
  .a(w_12910_16b),
  .b(w_12900_16b),
  .c(w_12911_16b),
  .clk(clk)
);
assign  w_12912_16b  =  r61_w_SAD_2a163_15_16b ;
assign  w_12915_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12916_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_802 (
  .a(w_12915_8b),
  .b(w_12916_8b),
  .c(w_12917_8b),
  .clk(clk)
);
ABS_16b_pe abs_803 (
  .a(w_12917_8b),
  .b(1'b0),
  .c(w_12920_8b),
  .clk(clk)
);
assign  w_12921_8b  =  w_12920_8b ;
assign  w_12922_16b  =  w_12921_8b ;
ADD_16b_pe add_804 (
  .a(w_12912_16b),
  .b(w_12922_16b),
  .c(w_12923_16b),
  .clk(clk)
);
assign  w_12924_16b  =  r62_w_SAD_2a163_15_16b ;
assign  w_12927_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_12928_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_805 (
  .a(w_12927_8b),
  .b(w_12928_8b),
  .c(w_12929_8b),
  .clk(clk)
);
ABS_16b_pe abs_806 (
  .a(w_1290_8b),
  .b(1'b0),
  .c(w_1293_8b),
  .clk(clk)
);
ABS_16b_pe abs_807 (
  .a(w_12929_8b),
  .b(1'b0),
  .c(w_12932_8b),
  .clk(clk)
);
assign  w_12933_8b  =  w_12932_8b ;
assign  w_12934_16b  =  w_12933_8b ;
ADD_16b_pe add_808 (
  .a(w_12924_16b),
  .b(w_12934_16b),
  .c(w_12935_16b),
  .clk(clk)
);
MULT_16b_pe mult_809 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_12936_16b),
  .clk(clk)
);
assign  w_12937_8b  =  w_12936_16b ;
assign  w_12938_8b  = 1'b0;
assign  w_12939_16b  =  r63_w_SAD_2a163_0_16b ;
assign  w_1294_8b  =  w_1293_8b ;
assign  w_12940_16b  = 1'b0;
LT_16b_pe lt_810 (
  .a(w_12939_16b),
  .b(w_12940_16b),
  .c(w_12941_1b),
  .clk(clk)
);
MUX_16b_pe mux_811 (
  .a(w_12938_8b),
  .b(w_12937_8b),
  .s(w_12941_1b),
  .c(w_12942_8b),
  .clk(clk)
);
MIN_16b_pe min_812 (
  .a(w_12939_16b),
  .b(w_12940_16b),
  .c(w_12943_16b),
  .clk(clk)
);
MULT_16b_pe mult_813 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_12944_16b),
  .clk(clk)
);
ADD_16b_pe add_814 (
  .a(1'b0),
  .b(w_12944_16b),
  .c(w_12945_16b),
  .clk(clk)
);
assign  w_12946_8b  =  w_12945_16b ;
assign  w_12947_8b  =  r0_w_p2_offset_l1_0a162_0_16b ;
assign  w_12948_16b  =  r63_w_SAD_2a163_1_16b ;
assign  w_12949_16b  =  r0_w_p2_offset_l1_1a161_0_16b ;
assign  w_1295_16b  =  w_1294_8b ;
LT_16b_pe lt_815 (
  .a(w_12949_16b),
  .b(w_12948_16b),
  .c(w_12950_1b),
  .clk(clk)
);
MUX_16b_pe mux_816 (
  .a(w_12947_8b),
  .b(w_12946_8b),
  .s(w_12950_1b),
  .c(w_12951_8b),
  .clk(clk)
);
MIN_16b_pe min_817 (
  .a(w_12949_16b),
  .b(w_12948_16b),
  .c(w_12952_16b),
  .clk(clk)
);
MULT_16b_pe mult_818 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_12953_16b),
  .clk(clk)
);
ADD_16b_pe add_819 (
  .a(1'b0),
  .b(w_12953_16b),
  .c(w_12954_16b),
  .clk(clk)
);
assign  w_12955_8b  =  w_12954_16b ;
assign  w_12956_8b  =  r1_w_p2_offset_l1_0a162_0_16b ;
assign  w_12957_16b  =  r63_w_SAD_2a163_2_16b ;
assign  w_12958_16b  =  r1_w_p2_offset_l1_1a161_0_16b ;
LT_16b_pe lt_820 (
  .a(w_12957_16b),
  .b(w_12958_16b),
  .c(w_12959_1b),
  .clk(clk)
);
ADD_16b_pe add_821 (
  .a(w_1285_16b),
  .b(w_1295_16b),
  .c(w_1296_16b),
  .clk(clk)
);
MUX_16b_pe mux_822 (
  .a(w_12955_8b),
  .b(w_12956_8b),
  .s(w_12959_1b),
  .c(w_12960_8b),
  .clk(clk)
);
MIN_16b_pe min_823 (
  .a(w_12957_16b),
  .b(w_12958_16b),
  .c(w_12961_16b),
  .clk(clk)
);
MULT_16b_pe mult_824 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_12962_16b),
  .clk(clk)
);
ADD_16b_pe add_825 (
  .a(1'b0),
  .b(w_12962_16b),
  .c(w_12963_16b),
  .clk(clk)
);
assign  w_12964_8b  =  w_12963_16b ;
assign  w_12965_8b  =  r2_w_p2_offset_l1_0a162_0_16b ;
assign  w_12966_16b  =  r63_w_SAD_2a163_3_16b ;
assign  w_12967_16b  =  r2_w_p2_offset_l1_1a161_0_16b ;
LT_16b_pe lt_826 (
  .a(w_12967_16b),
  .b(w_12966_16b),
  .c(w_12968_1b),
  .clk(clk)
);
MUX_16b_pe mux_827 (
  .a(w_12968_1b),
  .b(w_12965_8b),
  .s(w_12964_8b),
  .c(w_12969_8b),
  .clk(clk)
);
assign  w_1297_16b  =  r53_w_SAD_2a163_0_16b ;
MIN_16b_pe min_828 (
  .a(w_12967_16b),
  .b(w_12966_16b),
  .c(w_12970_16b),
  .clk(clk)
);
MULT_16b_pe mult_829 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_12971_16b),
  .clk(clk)
);
ADD_16b_pe add_830 (
  .a(1'b0),
  .b(w_12971_16b),
  .c(w_12972_16b),
  .clk(clk)
);
assign  w_12973_8b  =  w_12972_16b ;
assign  w_12974_8b  = 1'b0;
assign  w_12975_16b  =  r63_w_SAD_2a163_4_16b ;
assign  w_12976_16b  = 1'b0;
LT_16b_pe lt_831 (
  .a(w_12976_16b),
  .b(w_12975_16b),
  .c(w_12977_1b),
  .clk(clk)
);
MUX_16b_pe mux_832 (
  .a(w_12977_1b),
  .b(w_12974_8b),
  .s(w_12973_8b),
  .c(w_12978_8b),
  .clk(clk)
);
MIN_16b_pe min_833 (
  .a(w_12976_16b),
  .b(w_12975_16b),
  .c(w_12979_16b),
  .clk(clk)
);
MULT_16b_pe mult_834 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_12980_16b),
  .clk(clk)
);
ADD_16b_pe add_835 (
  .a(w_12980_16b),
  .b(1'b0),
  .c(w_12981_16b),
  .clk(clk)
);
assign  w_12982_8b  =  w_12981_16b ;
assign  w_12983_8b  =  r0_w_p2_offset_l1_0a162_1_16b ;
assign  w_12984_16b  =  r63_w_SAD_2a163_5_16b ;
assign  w_12985_16b  =  r0_w_p2_offset_l1_1a161_1_16b ;
LT_16b_pe lt_836 (
  .a(w_12985_16b),
  .b(w_12984_16b),
  .c(w_12986_1b),
  .clk(clk)
);
MUX_16b_pe mux_837 (
  .a(w_12983_8b),
  .b(w_12982_8b),
  .s(w_12986_1b),
  .c(w_12987_8b),
  .clk(clk)
);
MIN_16b_pe min_838 (
  .a(w_12985_16b),
  .b(w_12984_16b),
  .c(w_12988_16b),
  .clk(clk)
);
MULT_16b_pe mult_839 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_12989_16b),
  .clk(clk)
);
ADD_16b_pe add_840 (
  .a(w_12989_16b),
  .b(1'b0),
  .c(w_12990_16b),
  .clk(clk)
);
assign  w_12991_8b  =  w_12990_16b ;
assign  w_12992_8b  =  r1_w_p2_offset_l1_0a162_1_16b ;
assign  w_12993_16b  =  r63_w_SAD_2a163_6_16b ;
assign  w_12994_16b  =  r1_w_p2_offset_l1_1a161_1_16b ;
LT_16b_pe lt_841 (
  .a(w_12993_16b),
  .b(w_12994_16b),
  .c(w_12995_1b),
  .clk(clk)
);
MUX_16b_pe mux_842 (
  .a(w_12991_8b),
  .b(w_12992_8b),
  .s(w_12995_1b),
  .c(w_12996_8b),
  .clk(clk)
);
MIN_16b_pe min_843 (
  .a(w_12993_16b),
  .b(w_12994_16b),
  .c(w_12997_16b),
  .clk(clk)
);
MULT_16b_pe mult_844 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_12998_16b),
  .clk(clk)
);
ADD_16b_pe add_845 (
  .a(w_12998_16b),
  .b(1'b0),
  .c(w_12999_16b),
  .clk(clk)
);
assign  w_1300_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_13000_8b  =  w_12999_16b ;
assign  w_13001_8b  =  r2_w_p2_offset_l1_0a162_1_16b ;
assign  w_13002_16b  =  r63_w_SAD_2a163_7_16b ;
assign  w_13003_16b  =  r2_w_p2_offset_l1_1a161_1_16b ;
LT_16b_pe lt_846 (
  .a(w_13003_16b),
  .b(w_13002_16b),
  .c(w_13004_1b),
  .clk(clk)
);
MUX_16b_pe mux_847 (
  .a(w_13004_1b),
  .b(w_13001_8b),
  .s(w_13000_8b),
  .c(w_13005_8b),
  .clk(clk)
);
MIN_16b_pe min_848 (
  .a(w_13003_16b),
  .b(w_13002_16b),
  .c(w_13006_16b),
  .clk(clk)
);
MULT_16b_pe mult_849 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_13007_16b),
  .clk(clk)
);
ADD_16b_pe add_850 (
  .a(1'b0),
  .b(w_13007_16b),
  .c(w_13008_16b),
  .clk(clk)
);
assign  w_13009_8b  =  w_13008_16b ;
assign  w_1301_8b  =  w_pass_4_stencil_6_6_8b ;
assign  w_13010_8b  = 1'b0;
assign  w_13011_16b  =  r63_w_SAD_2a163_8_16b ;
assign  w_13012_16b  = 1'b0;
LT_16b_pe lt_851 (
  .a(w_13012_16b),
  .b(w_13011_16b),
  .c(w_13013_1b),
  .clk(clk)
);
MUX_16b_pe mux_852 (
  .a(w_13013_1b),
  .b(w_13010_8b),
  .s(w_13009_8b),
  .c(w_13014_8b),
  .clk(clk)
);
MIN_16b_pe min_853 (
  .a(w_13012_16b),
  .b(w_13011_16b),
  .c(w_13015_16b),
  .clk(clk)
);
MULT_16b_pe mult_854 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_13016_16b),
  .clk(clk)
);
ADD_16b_pe add_855 (
  .a(1'b0),
  .b(w_13016_16b),
  .c(w_13017_16b),
  .clk(clk)
);
assign  w_13018_8b  =  w_13017_16b ;
assign  w_13019_8b  =  r0_w_p2_offset_l1_0a162_2_16b ;
SUB_16b_pe sub_856 (
  .a(w_1300_8b),
  .b(w_1301_8b),
  .c(w_1302_8b),
  .clk(clk)
);
assign  w_13020_16b  =  r63_w_SAD_2a163_9_16b ;
assign  w_13021_16b  =  r0_w_p2_offset_l1_1a161_2_16b ;
LT_16b_pe lt_857 (
  .a(w_13021_16b),
  .b(w_13020_16b),
  .c(w_13022_1b),
  .clk(clk)
);
MUX_16b_pe mux_858 (
  .a(w_13022_1b),
  .b(w_13018_8b),
  .s(w_13019_8b),
  .c(w_13023_8b),
  .clk(clk)
);
MIN_16b_pe min_859 (
  .a(w_13021_16b),
  .b(w_13020_16b),
  .c(w_13024_16b),
  .clk(clk)
);
MULT_16b_pe mult_860 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_13025_16b),
  .clk(clk)
);
ADD_16b_pe add_861 (
  .a(1'b0),
  .b(w_13025_16b),
  .c(w_13026_16b),
  .clk(clk)
);
assign  w_13027_8b  =  w_13026_16b ;
assign  w_13028_8b  =  r1_w_p2_offset_l1_0a162_2_16b ;
assign  w_13029_16b  =  r63_w_SAD_2a163_10_16b ;
assign  w_13030_16b  =  r1_w_p2_offset_l1_1a161_2_16b ;
LT_16b_pe lt_862 (
  .a(w_13030_16b),
  .b(w_13029_16b),
  .c(w_13031_1b),
  .clk(clk)
);
MUX_16b_pe mux_863 (
  .a(w_13031_1b),
  .b(w_13028_8b),
  .s(w_13027_8b),
  .c(w_13032_8b),
  .clk(clk)
);
MIN_16b_pe min_864 (
  .a(w_13030_16b),
  .b(w_13029_16b),
  .c(w_13033_16b),
  .clk(clk)
);
MULT_16b_pe mult_865 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_13034_16b),
  .clk(clk)
);
ADD_16b_pe add_866 (
  .a(1'b0),
  .b(w_13034_16b),
  .c(w_13035_16b),
  .clk(clk)
);
assign  w_13036_8b  =  w_13035_16b ;
assign  w_13037_8b  =  r2_w_p2_offset_l1_0a162_2_16b ;
assign  w_13038_16b  =  r63_w_SAD_2a163_11_16b ;
assign  w_13039_16b  =  r2_w_p2_offset_l1_1a161_2_16b ;
LT_16b_pe lt_867 (
  .a(w_13038_16b),
  .b(w_13039_16b),
  .c(w_13040_1b),
  .clk(clk)
);
MUX_16b_pe mux_868 (
  .a(w_13040_1b),
  .b(w_13036_8b),
  .s(w_13037_8b),
  .c(w_13041_8b),
  .clk(clk)
);
MIN_16b_pe min_869 (
  .a(w_13038_16b),
  .b(w_13039_16b),
  .c(w_13042_16b),
  .clk(clk)
);
MULT_16b_pe mult_870 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_13043_16b),
  .clk(clk)
);
ADD_16b_pe add_871 (
  .a(w_13043_16b),
  .b(1'b0),
  .c(w_13044_16b),
  .clk(clk)
);
assign  w_13045_8b  =  w_13044_16b ;
assign  w_13046_8b  = 1'b0;
assign  w_13047_16b  =  r63_w_SAD_2a163_12_16b ;
assign  w_13048_16b  = 1'b0;
LT_16b_pe lt_872 (
  .a(w_13048_16b),
  .b(w_13047_16b),
  .c(w_13049_1b),
  .clk(clk)
);
ABS_16b_pe abs_873 (
  .a(w_1302_8b),
  .b(1'b0),
  .c(w_1305_8b),
  .clk(clk)
);
MUX_16b_pe mux_874 (
  .a(w_13049_1b),
  .b(w_13045_8b),
  .s(w_13046_8b),
  .c(w_13050_8b),
  .clk(clk)
);
MIN_16b_pe min_875 (
  .a(w_13048_16b),
  .b(w_13047_16b),
  .c(w_13051_16b),
  .clk(clk)
);
MULT_16b_pe mult_876 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_13052_16b),
  .clk(clk)
);
ADD_16b_pe add_877 (
  .a(1'b0),
  .b(w_13052_16b),
  .c(w_13053_16b),
  .clk(clk)
);
assign  w_13054_8b  =  w_13053_16b ;
assign  w_13055_8b  =  r0_w_p2_offset_l1_0a162_3_16b ;
assign  w_13056_16b  =  r63_w_SAD_2a163_13_16b ;
assign  w_13057_16b  =  r0_w_p2_offset_l1_1a161_3_16b ;
LT_16b_pe lt_878 (
  .a(w_13056_16b),
  .b(w_13057_16b),
  .c(w_13058_1b),
  .clk(clk)
);
MUX_16b_pe mux_879 (
  .a(w_13054_8b),
  .b(w_13055_8b),
  .s(w_13058_1b),
  .c(w_13059_8b),
  .clk(clk)
);
assign  w_1306_8b  =  w_1305_8b ;
MIN_16b_pe min_880 (
  .a(w_13056_16b),
  .b(w_13057_16b),
  .c(w_13060_16b),
  .clk(clk)
);
MULT_16b_pe mult_881 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_13061_16b),
  .clk(clk)
);
ADD_16b_pe add_882 (
  .a(1'b0),
  .b(w_13061_16b),
  .c(w_13062_16b),
  .clk(clk)
);
assign  w_13063_8b  =  w_13062_16b ;
assign  w_13064_8b  =  r1_w_p2_offset_l1_0a162_3_16b ;
assign  w_13065_16b  =  r63_w_SAD_2a163_14_16b ;
assign  w_13066_16b  =  r1_w_p2_offset_l1_1a161_3_16b ;
LT_16b_pe lt_883 (
  .a(w_13066_16b),
  .b(w_13065_16b),
  .c(w_13067_1b),
  .clk(clk)
);
MUX_16b_pe mux_884 (
  .a(w_13067_1b),
  .b(w_13064_8b),
  .s(w_13063_8b),
  .c(w_13068_8b),
  .clk(clk)
);
MIN_16b_pe min_885 (
  .a(w_13066_16b),
  .b(w_13065_16b),
  .c(w_13069_16b),
  .clk(clk)
);
assign  w_1307_16b  =  w_1306_8b ;
MULT_16b_pe mult_886 (
  .a(w_offset_2_s1_p2_search_x_search_xo_16b),
  .b(1'b0),
  .c(w_13070_16b),
  .clk(clk)
);
ADD_16b_pe add_887 (
  .a(1'b0),
  .b(w_13070_16b),
  .c(w_13071_16b),
  .clk(clk)
);
assign  w_13072_8b  =  w_13071_16b ;
assign  w_13073_8b  =  r2_w_p2_offset_l1_0a162_3_16b ;
assign  w_13074_16b  =  r63_w_SAD_2a163_15_16b ;
assign  w_13075_16b  =  r2_w_p2_offset_l1_1a161_3_16b ;
LT_16b_pe lt_888 (
  .a(w_13074_16b),
  .b(w_13075_16b),
  .c(w_13076_1b),
  .clk(clk)
);
MUX_16b_pe mux_889 (
  .a(w_13076_1b),
  .b(w_13072_8b),
  .s(w_13073_8b),
  .c(w_13077_8b),
  .clk(clk)
);
MIN_16b_pe min_890 (
  .a(w_13074_16b),
  .b(w_13075_16b),
  .c(w_13078_16b),
  .clk(clk)
);
assign  w_13079_8b  =  r3_w_p2_offset_l1_0a162_0_16b ;
ADD_16b_pe add_891 (
  .a(w_1297_16b),
  .b(w_1307_16b),
  .c(w_1308_16b),
  .clk(clk)
);
assign  w_13080_8b  = 1'b0;
assign  w_13081_16b  =  r3_w_p2_offset_l1_1a161_0_16b ;
assign  w_13082_16b  = 1'b0;
LT_16b_pe lt_892 (
  .a(w_13081_16b),
  .b(w_13082_16b),
  .c(w_13083_1b),
  .clk(clk)
);
MUX_16b_pe mux_893 (
  .a(w_13079_8b),
  .b(w_13083_1b),
  .s(w_13080_8b),
  .c(w_13084_8b),
  .clk(clk)
);
MIN_16b_pe min_894 (
  .a(w_13081_16b),
  .b(w_13082_16b),
  .c(w_13085_16b),
  .clk(clk)
);
assign  w_13086_8b  =  r3_w_p2_offset_l1_0a162_1_16b ;
assign  w_13087_8b  =  r0_w_offset_2_0a160_0_16b ;
assign  w_13088_16b  =  r3_w_p2_offset_l1_1a161_1_16b ;
assign  w_13089_16b  =  r0_w_offset_2_1a159_0_16b ;
assign  w_1309_16b  =  r54_w_SAD_2a163_0_16b ;
LT_16b_pe lt_895 (
  .a(w_13089_16b),
  .b(w_13088_16b),
  .c(w_13090_1b),
  .clk(clk)
);
MUX_16b_pe mux_896 (
  .a(w_13090_1b),
  .b(w_13086_8b),
  .s(w_13087_8b),
  .c(w_13091_8b),
  .clk(clk)
);
MIN_16b_pe min_897 (
  .a(w_13089_16b),
  .b(w_13088_16b),
  .c(w_13092_16b),
  .clk(clk)
);
assign  w_13093_8b  =  r3_w_p2_offset_l1_0a162_2_16b ;
assign  w_13094_8b  =  r1_w_offset_2_0a160_0_16b ;
assign  w_13095_16b  =  r3_w_p2_offset_l1_1a161_2_16b ;
assign  w_13096_16b  =  r1_w_offset_2_1a159_0_16b ;
LT_16b_pe lt_898 (
  .a(w_13096_16b),
  .b(w_13095_16b),
  .c(w_13097_1b),
  .clk(clk)
);
MUX_16b_pe mux_899 (
  .a(w_13093_8b),
  .b(w_13097_1b),
  .s(w_13094_8b),
  .c(w_13098_8b),
  .clk(clk)
);
MIN_16b_pe min_900 (
  .a(w_13096_16b),
  .b(w_13095_16b),
  .c(w_13099_16b),
  .clk(clk)
);
assign  w_13100_8b  =  r3_w_p2_offset_l1_0a162_3_16b ;
assign  w_13101_8b  =  r2_w_offset_2_0a160_0_16b ;
assign  w_13102_16b  =  r3_w_p2_offset_l1_1a161_3_16b ;
assign  w_13103_16b  =  r2_w_offset_2_1a159_0_16b ;
LT_16b_pe lt_901 (
  .a(w_13102_16b),
  .b(w_13103_16b),
  .c(w_13104_1b),
  .clk(clk)
);
MUX_16b_pe mux_902 (
  .a(w_13104_1b),
  .b(w_13100_8b),
  .s(w_13101_8b),
  .c(w_13105_8b),
  .clk(clk)
);
assign  w_13108_8b  =  r3_w_offset_2_0a160_0_16b ;
assign  w_13109_16b  =  w_13108_8b ;
assign  w_13110_16b  = 1'b0;
MULT_16b_pe mult_903 (
  .a(w_13109_16b),
  .b(w_13110_16b),
  .c(w_13111_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_904 (
  .a(w_13111_16b),
  .b(1'b0),
  .c(w_13112_16b),
  .clk(clk)
);
assign  w_13113_8b  =  w_13112_16b ;
assign  w_1312_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_1313_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_905 (
  .a(w_1313_8b),
  .b(w_1312_8b),
  .c(w_1314_8b),
  .clk(clk)
);
ABS_16b_pe abs_906 (
  .a(w_1314_8b),
  .b(1'b0),
  .c(w_1317_8b),
  .clk(clk)
);
assign  w_1318_8b  =  w_1317_8b ;
assign  w_1319_16b  =  w_1318_8b ;
ADD_16b_pe add_907 (
  .a(w_1309_16b),
  .b(w_1319_16b),
  .c(w_1320_16b),
  .clk(clk)
);
assign  w_1321_16b  =  r55_w_SAD_2a163_0_16b ;
assign  w_1323_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_1324_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_908 (
  .a(w_1324_8b),
  .b(w_1323_8b),
  .c(w_1325_8b),
  .clk(clk)
);
ABS_16b_pe abs_909 (
  .a(w_1325_8b),
  .b(1'b0),
  .c(w_1328_8b),
  .clk(clk)
);
assign  w_1329_8b  =  w_1328_8b ;
assign  w_1330_16b  =  w_1329_8b ;
ADD_16b_pe add_910 (
  .a(w_1330_16b),
  .b(w_1321_16b),
  .c(w_1331_16b),
  .clk(clk)
);
assign  w_1332_16b  =  r56_w_SAD_2a163_0_16b ;
assign  w_1335_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_1336_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_911 (
  .a(w_1335_8b),
  .b(w_1336_8b),
  .c(w_1337_8b),
  .clk(clk)
);
ABS_16b_pe abs_912 (
  .a(w_1337_8b),
  .b(1'b0),
  .c(w_1340_8b),
  .clk(clk)
);
assign  w_1341_8b  =  w_1340_8b ;
assign  w_1342_16b  =  w_1341_8b ;
ADD_16b_pe add_913 (
  .a(w_1342_16b),
  .b(w_1332_16b),
  .c(w_1343_16b),
  .clk(clk)
);
assign  w_1344_16b  =  r57_w_SAD_2a163_0_16b ;
assign  w_1347_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_1348_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_914 (
  .a(w_1347_8b),
  .b(w_1348_8b),
  .c(w_1349_8b),
  .clk(clk)
);
ABS_16b_pe abs_915 (
  .a(w_1349_8b),
  .b(1'b0),
  .c(w_1352_8b),
  .clk(clk)
);
assign  w_1353_8b  =  w_1352_8b ;
assign  w_1354_16b  =  w_1353_8b ;
ADD_16b_pe add_916 (
  .a(w_1344_16b),
  .b(w_1354_16b),
  .c(w_1355_16b),
  .clk(clk)
);
assign  w_1356_16b  =  r58_w_SAD_2a163_0_16b ;
assign  w_1359_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_1360_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_917 (
  .a(w_1359_8b),
  .b(w_1360_8b),
  .c(w_1361_8b),
  .clk(clk)
);
ABS_16b_pe abs_918 (
  .a(w_1361_8b),
  .b(1'b0),
  .c(w_1364_8b),
  .clk(clk)
);
assign  w_1365_8b  =  w_1364_8b ;
assign  w_1366_16b  =  w_1365_8b ;
ADD_16b_pe add_919 (
  .a(w_1366_16b),
  .b(w_1356_16b),
  .c(w_1367_16b),
  .clk(clk)
);
assign  w_1368_16b  =  r59_w_SAD_2a163_0_16b ;
assign  w_1371_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_1372_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_920 (
  .a(w_1371_8b),
  .b(w_1372_8b),
  .c(w_1373_8b),
  .clk(clk)
);
ABS_16b_pe abs_921 (
  .a(w_1373_8b),
  .b(1'b0),
  .c(w_1376_8b),
  .clk(clk)
);
assign  w_1377_8b  =  w_1376_8b ;
assign  w_1378_16b  =  w_1377_8b ;
ADD_16b_pe add_922 (
  .a(w_1378_16b),
  .b(w_1368_16b),
  .c(w_1379_16b),
  .clk(clk)
);
assign  w_1380_16b  =  r60_w_SAD_2a163_0_16b ;
assign  w_1383_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_1384_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_923 (
  .a(w_1383_8b),
  .b(w_1384_8b),
  .c(w_1385_8b),
  .clk(clk)
);
ABS_16b_pe abs_924 (
  .a(w_1385_8b),
  .b(1'b0),
  .c(w_1388_8b),
  .clk(clk)
);
assign  w_1389_8b  =  w_1388_8b ;
assign  w_1390_16b  =  w_1389_8b ;
ADD_16b_pe add_925 (
  .a(w_1380_16b),
  .b(w_1390_16b),
  .c(w_1391_16b),
  .clk(clk)
);
assign  w_1392_16b  =  r61_w_SAD_2a163_0_16b ;
assign  w_1395_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_1396_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_926 (
  .a(w_1396_8b),
  .b(w_1395_8b),
  .c(w_1397_8b),
  .clk(clk)
);
ABS_16b_pe abs_927 (
  .a(w_1397_8b),
  .b(1'b0),
  .c(w_1400_8b),
  .clk(clk)
);
assign  w_1401_8b  =  w_1400_8b ;
assign  w_1402_16b  =  w_1401_8b ;
ADD_16b_pe add_928 (
  .a(w_1392_16b),
  .b(w_1402_16b),
  .c(w_1403_16b),
  .clk(clk)
);
assign  w_1404_16b  =  r62_w_SAD_2a163_0_16b ;
assign  w_1407_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_1408_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_929 (
  .a(w_1407_8b),
  .b(w_1408_8b),
  .c(w_1409_8b),
  .clk(clk)
);
ABS_16b_pe abs_930 (
  .a(w_1409_8b),
  .b(1'b0),
  .c(w_1412_8b),
  .clk(clk)
);
assign  w_1413_8b  =  w_1412_8b ;
assign  w_1414_16b  =  w_1413_8b ;
ADD_16b_pe add_931 (
  .a(w_1404_16b),
  .b(w_1414_16b),
  .c(w_1415_16b),
  .clk(clk)
);
assign  w_1416_16b  = 1'b0;
assign  w_1419_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_1420_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_932 (
  .a(w_1419_8b),
  .b(w_1420_8b),
  .c(w_1421_8b),
  .clk(clk)
);
ABS_16b_pe abs_933 (
  .a(w_1421_8b),
  .b(1'b0),
  .c(w_1424_8b),
  .clk(clk)
);
assign  w_1425_8b  =  w_1424_8b ;
assign  w_1426_16b  =  w_1425_8b ;
ADD_16b_pe add_934 (
  .a(w_1426_16b),
  .b(w_1416_16b),
  .c(w_1427_16b),
  .clk(clk)
);
assign  w_1428_16b  =  r0_w_SAD_2a163_1_16b ;
assign  w_1431_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_1432_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_935 (
  .a(w_1432_8b),
  .b(w_1431_8b),
  .c(w_1433_8b),
  .clk(clk)
);
ABS_16b_pe abs_936 (
  .a(w_1433_8b),
  .b(1'b0),
  .c(w_1436_8b),
  .clk(clk)
);
assign  w_1437_8b  =  w_1436_8b ;
assign  w_1438_16b  =  w_1437_8b ;
ADD_16b_pe add_937 (
  .a(w_1428_16b),
  .b(w_1438_16b),
  .c(w_1439_16b),
  .clk(clk)
);
assign  w_1440_16b  =  r1_w_SAD_2a163_1_16b ;
assign  w_1443_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_1444_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_938 (
  .a(w_1443_8b),
  .b(w_1444_8b),
  .c(w_1445_8b),
  .clk(clk)
);
ABS_16b_pe abs_939 (
  .a(w_1445_8b),
  .b(1'b0),
  .c(w_1448_8b),
  .clk(clk)
);
assign  w_1449_8b  =  w_1448_8b ;
assign  w_1450_16b  =  w_1449_8b ;
ADD_16b_pe add_940 (
  .a(w_1440_16b),
  .b(w_1450_16b),
  .c(w_1451_16b),
  .clk(clk)
);
assign  w_1452_16b  =  r2_w_SAD_2a163_1_16b ;
assign  w_1455_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_1456_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_941 (
  .a(w_1455_8b),
  .b(w_1456_8b),
  .c(w_1457_8b),
  .clk(clk)
);
ABS_16b_pe abs_942 (
  .a(w_1457_8b),
  .b(1'b0),
  .c(w_1460_8b),
  .clk(clk)
);
assign  w_1461_8b  =  w_1460_8b ;
assign  w_1462_16b  =  w_1461_8b ;
ADD_16b_pe add_943 (
  .a(w_1462_16b),
  .b(w_1452_16b),
  .c(w_1463_16b),
  .clk(clk)
);
assign  w_1464_16b  =  r3_w_SAD_2a163_1_16b ;
assign  w_1467_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_1468_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_944 (
  .a(w_1468_8b),
  .b(w_1467_8b),
  .c(w_1469_8b),
  .clk(clk)
);
ABS_16b_pe abs_945 (
  .a(w_1469_8b),
  .b(1'b0),
  .c(w_1472_8b),
  .clk(clk)
);
assign  w_1473_8b  =  w_1472_8b ;
assign  w_1474_16b  =  w_1473_8b ;
ADD_16b_pe add_946 (
  .a(w_1464_16b),
  .b(w_1474_16b),
  .c(w_1475_16b),
  .clk(clk)
);
assign  w_1476_16b  =  r4_w_SAD_2a163_1_16b ;
assign  w_1479_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_1480_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_947 (
  .a(w_1479_8b),
  .b(w_1480_8b),
  .c(w_1481_8b),
  .clk(clk)
);
ABS_16b_pe abs_948 (
  .a(w_1481_8b),
  .b(1'b0),
  .c(w_1484_8b),
  .clk(clk)
);
assign  w_1485_8b  =  w_1484_8b ;
assign  w_1486_16b  =  w_1485_8b ;
ADD_16b_pe add_949 (
  .a(w_1486_16b),
  .b(w_1476_16b),
  .c(w_1487_16b),
  .clk(clk)
);
assign  w_1488_16b  =  r5_w_SAD_2a163_1_16b ;
assign  w_1491_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_1492_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_950 (
  .a(w_1491_8b),
  .b(w_1492_8b),
  .c(w_1493_8b),
  .clk(clk)
);
ABS_16b_pe abs_951 (
  .a(w_1493_8b),
  .b(1'b0),
  .c(w_1496_8b),
  .clk(clk)
);
assign  w_1497_8b  =  w_1496_8b ;
assign  w_1498_16b  =  w_1497_8b ;
ADD_16b_pe add_952 (
  .a(w_1498_16b),
  .b(w_1488_16b),
  .c(w_1499_16b),
  .clk(clk)
);
assign  w_1500_16b  =  r6_w_SAD_2a163_1_16b ;
assign  w_1503_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_1504_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_953 (
  .a(w_1504_8b),
  .b(w_1503_8b),
  .c(w_1505_8b),
  .clk(clk)
);
ABS_16b_pe abs_954 (
  .a(w_1505_8b),
  .b(1'b0),
  .c(w_1508_8b),
  .clk(clk)
);
assign  w_1509_8b  =  w_1508_8b ;
assign  w_1510_16b  =  w_1509_8b ;
ADD_16b_pe add_955 (
  .a(w_1510_16b),
  .b(w_1500_16b),
  .c(w_1511_16b),
  .clk(clk)
);
assign  w_1512_16b  =  r7_w_SAD_2a163_1_16b ;
assign  w_1515_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_1516_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_956 (
  .a(w_1515_8b),
  .b(w_1516_8b),
  .c(w_1517_8b),
  .clk(clk)
);
ABS_16b_pe abs_957 (
  .a(w_1517_8b),
  .b(1'b0),
  .c(w_1520_8b),
  .clk(clk)
);
assign  w_1521_8b  =  w_1520_8b ;
assign  w_1522_16b  =  w_1521_8b ;
ADD_16b_pe add_958 (
  .a(w_1522_16b),
  .b(w_1512_16b),
  .c(w_1523_16b),
  .clk(clk)
);
assign  w_1524_16b  =  r8_w_SAD_2a163_1_16b ;
assign  w_1527_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_1528_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_959 (
  .a(w_1528_8b),
  .b(w_1527_8b),
  .c(w_1529_8b),
  .clk(clk)
);
ABS_16b_pe abs_960 (
  .a(w_1529_8b),
  .b(1'b0),
  .c(w_1532_8b),
  .clk(clk)
);
assign  w_1533_8b  =  w_1532_8b ;
assign  w_1534_16b  =  w_1533_8b ;
ADD_16b_pe add_961 (
  .a(w_1534_16b),
  .b(w_1524_16b),
  .c(w_1535_16b),
  .clk(clk)
);
assign  w_1536_16b  =  r9_w_SAD_2a163_1_16b ;
assign  w_1539_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_1540_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_962 (
  .a(w_1540_8b),
  .b(w_1539_8b),
  .c(w_1541_8b),
  .clk(clk)
);
ABS_16b_pe abs_963 (
  .a(w_1541_8b),
  .b(1'b0),
  .c(w_1544_8b),
  .clk(clk)
);
assign  w_1545_8b  =  w_1544_8b ;
assign  w_1546_16b  =  w_1545_8b ;
ADD_16b_pe add_964 (
  .a(w_1536_16b),
  .b(w_1546_16b),
  .c(w_1547_16b),
  .clk(clk)
);
assign  w_1548_16b  =  r10_w_SAD_2a163_1_16b ;
assign  w_1551_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_1552_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_965 (
  .a(w_1551_8b),
  .b(w_1552_8b),
  .c(w_1553_8b),
  .clk(clk)
);
ABS_16b_pe abs_966 (
  .a(w_1553_8b),
  .b(1'b0),
  .c(w_1556_8b),
  .clk(clk)
);
assign  w_1557_8b  =  w_1556_8b ;
assign  w_1558_16b  =  w_1557_8b ;
ADD_16b_pe add_967 (
  .a(w_1558_16b),
  .b(w_1548_16b),
  .c(w_1559_16b),
  .clk(clk)
);
assign  w_1560_16b  =  r11_w_SAD_2a163_1_16b ;
assign  w_1563_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_1564_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_968 (
  .a(w_1564_8b),
  .b(w_1563_8b),
  .c(w_1565_8b),
  .clk(clk)
);
ABS_16b_pe abs_969 (
  .a(w_1565_8b),
  .b(1'b0),
  .c(w_1568_8b),
  .clk(clk)
);
assign  w_1569_8b  =  w_1568_8b ;
assign  w_1570_16b  =  w_1569_8b ;
ADD_16b_pe add_970 (
  .a(w_1570_16b),
  .b(w_1560_16b),
  .c(w_1571_16b),
  .clk(clk)
);
assign  w_1572_16b  =  r12_w_SAD_2a163_1_16b ;
assign  w_1575_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_1576_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_971 (
  .a(w_1576_8b),
  .b(w_1575_8b),
  .c(w_1577_8b),
  .clk(clk)
);
ABS_16b_pe abs_972 (
  .a(w_1577_8b),
  .b(1'b0),
  .c(w_1580_8b),
  .clk(clk)
);
assign  w_1581_8b  =  w_1580_8b ;
assign  w_1582_16b  =  w_1581_8b ;
ADD_16b_pe add_973 (
  .a(w_1572_16b),
  .b(w_1582_16b),
  .c(w_1583_16b),
  .clk(clk)
);
assign  w_1584_16b  =  r13_w_SAD_2a163_1_16b ;
assign  w_1587_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_1588_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_974 (
  .a(w_1587_8b),
  .b(w_1588_8b),
  .c(w_1589_8b),
  .clk(clk)
);
ABS_16b_pe abs_975 (
  .a(w_1589_8b),
  .b(1'b0),
  .c(w_1592_8b),
  .clk(clk)
);
assign  w_1593_8b  =  w_1592_8b ;
assign  w_1594_16b  =  w_1593_8b ;
ADD_16b_pe add_976 (
  .a(w_1594_16b),
  .b(w_1584_16b),
  .c(w_1595_16b),
  .clk(clk)
);
assign  w_1596_16b  =  r14_w_SAD_2a163_1_16b ;
assign  w_1599_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_1600_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_977 (
  .a(w_1599_8b),
  .b(w_1600_8b),
  .c(w_1601_8b),
  .clk(clk)
);
ABS_16b_pe abs_978 (
  .a(w_1601_8b),
  .b(1'b0),
  .c(w_1604_8b),
  .clk(clk)
);
assign  w_1605_8b  =  w_1604_8b ;
assign  w_1606_16b  =  w_1605_8b ;
ADD_16b_pe add_979 (
  .a(w_1606_16b),
  .b(w_1596_16b),
  .c(w_1607_16b),
  .clk(clk)
);
assign  w_1608_16b  =  r15_w_SAD_2a163_1_16b ;
assign  w_1611_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_1612_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_980 (
  .a(w_1612_8b),
  .b(w_1611_8b),
  .c(w_1613_8b),
  .clk(clk)
);
ABS_16b_pe abs_981 (
  .a(w_1613_8b),
  .b(1'b0),
  .c(w_1616_8b),
  .clk(clk)
);
assign  w_1617_8b  =  w_1616_8b ;
assign  w_1618_16b  =  w_1617_8b ;
ADD_16b_pe add_982 (
  .a(w_1608_16b),
  .b(w_1618_16b),
  .c(w_1619_16b),
  .clk(clk)
);
assign  w_1620_16b  =  r16_w_SAD_2a163_1_16b ;
assign  w_1623_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_1624_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_983 (
  .a(w_1624_8b),
  .b(w_1623_8b),
  .c(w_1625_8b),
  .clk(clk)
);
ABS_16b_pe abs_984 (
  .a(w_1625_8b),
  .b(1'b0),
  .c(w_1628_8b),
  .clk(clk)
);
assign  w_1629_8b  =  w_1628_8b ;
assign  w_1630_16b  =  w_1629_8b ;
ADD_16b_pe add_985 (
  .a(w_1630_16b),
  .b(w_1620_16b),
  .c(w_1631_16b),
  .clk(clk)
);
assign  w_1632_16b  =  r17_w_SAD_2a163_1_16b ;
assign  w_1635_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_1636_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_986 (
  .a(w_1635_8b),
  .b(w_1636_8b),
  .c(w_1637_8b),
  .clk(clk)
);
ABS_16b_pe abs_987 (
  .a(w_1637_8b),
  .b(1'b0),
  .c(w_1640_8b),
  .clk(clk)
);
assign  w_1641_8b  =  w_1640_8b ;
assign  w_1642_16b  =  w_1641_8b ;
ADD_16b_pe add_988 (
  .a(w_1632_16b),
  .b(w_1642_16b),
  .c(w_1643_16b),
  .clk(clk)
);
assign  w_1644_16b  =  r18_w_SAD_2a163_1_16b ;
assign  w_1647_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_1648_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_989 (
  .a(w_1648_8b),
  .b(w_1647_8b),
  .c(w_1649_8b),
  .clk(clk)
);
ABS_16b_pe abs_990 (
  .a(w_1649_8b),
  .b(1'b0),
  .c(w_1652_8b),
  .clk(clk)
);
assign  w_1653_8b  =  w_1652_8b ;
assign  w_1654_16b  =  w_1653_8b ;
ADD_16b_pe add_991 (
  .a(w_1644_16b),
  .b(w_1654_16b),
  .c(w_1655_16b),
  .clk(clk)
);
assign  w_1656_16b  =  r19_w_SAD_2a163_1_16b ;
assign  w_1659_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_1660_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_992 (
  .a(w_1659_8b),
  .b(w_1660_8b),
  .c(w_1661_8b),
  .clk(clk)
);
ABS_16b_pe abs_993 (
  .a(w_1661_8b),
  .b(1'b0),
  .c(w_1664_8b),
  .clk(clk)
);
assign  w_1665_8b  =  w_1664_8b ;
assign  w_1666_16b  =  w_1665_8b ;
ADD_16b_pe add_994 (
  .a(w_1656_16b),
  .b(w_1666_16b),
  .c(w_1667_16b),
  .clk(clk)
);
assign  w_1668_16b  =  r20_w_SAD_2a163_1_16b ;
assign  w_1671_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_1672_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_995 (
  .a(w_1671_8b),
  .b(w_1672_8b),
  .c(w_1673_8b),
  .clk(clk)
);
ABS_16b_pe abs_996 (
  .a(w_1673_8b),
  .b(1'b0),
  .c(w_1676_8b),
  .clk(clk)
);
assign  w_1677_8b  =  w_1676_8b ;
assign  w_1678_16b  =  w_1677_8b ;
ADD_16b_pe add_997 (
  .a(w_1668_16b),
  .b(w_1678_16b),
  .c(w_1679_16b),
  .clk(clk)
);
assign  w_1680_16b  =  r21_w_SAD_2a163_1_16b ;
assign  w_1683_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_1684_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_998 (
  .a(w_1684_8b),
  .b(w_1683_8b),
  .c(w_1685_8b),
  .clk(clk)
);
ABS_16b_pe abs_999 (
  .a(w_1685_8b),
  .b(1'b0),
  .c(w_1688_8b),
  .clk(clk)
);
assign  w_1689_8b  =  w_1688_8b ;
assign  w_1690_16b  =  w_1689_8b ;
ADD_16b_pe add_1000 (
  .a(w_1680_16b),
  .b(w_1690_16b),
  .c(w_1691_16b),
  .clk(clk)
);
assign  w_1692_16b  =  r22_w_SAD_2a163_1_16b ;
assign  w_1695_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_1696_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_1001 (
  .a(w_1696_8b),
  .b(w_1695_8b),
  .c(w_1697_8b),
  .clk(clk)
);
ABS_16b_pe abs_1002 (
  .a(w_1697_8b),
  .b(1'b0),
  .c(w_1700_8b),
  .clk(clk)
);
assign  w_1701_8b  =  w_1700_8b ;
assign  w_1702_16b  =  w_1701_8b ;
ADD_16b_pe add_1003 (
  .a(w_1692_16b),
  .b(w_1702_16b),
  .c(w_1703_16b),
  .clk(clk)
);
assign  w_1704_16b  =  r23_w_SAD_2a163_1_16b ;
assign  w_1707_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_1708_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_1004 (
  .a(w_1707_8b),
  .b(w_1708_8b),
  .c(w_1709_8b),
  .clk(clk)
);
ABS_16b_pe abs_1005 (
  .a(w_1709_8b),
  .b(1'b0),
  .c(w_1712_8b),
  .clk(clk)
);
assign  w_1713_8b  =  w_1712_8b ;
assign  w_1714_16b  =  w_1713_8b ;
ADD_16b_pe add_1006 (
  .a(w_1704_16b),
  .b(w_1714_16b),
  .c(w_1715_16b),
  .clk(clk)
);
assign  w_1716_16b  =  r24_w_SAD_2a163_1_16b ;
assign  w_1719_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_1720_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_1007 (
  .a(w_1719_8b),
  .b(w_1720_8b),
  .c(w_1721_8b),
  .clk(clk)
);
ABS_16b_pe abs_1008 (
  .a(w_1721_8b),
  .b(1'b0),
  .c(w_1724_8b),
  .clk(clk)
);
assign  w_1725_8b  =  w_1724_8b ;
assign  w_1726_16b  =  w_1725_8b ;
ADD_16b_pe add_1009 (
  .a(w_1726_16b),
  .b(w_1716_16b),
  .c(w_1727_16b),
  .clk(clk)
);
assign  w_1728_16b  =  r25_w_SAD_2a163_1_16b ;
assign  w_1731_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_1732_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_1010 (
  .a(w_1731_8b),
  .b(w_1732_8b),
  .c(w_1733_8b),
  .clk(clk)
);
ABS_16b_pe abs_1011 (
  .a(w_1733_8b),
  .b(1'b0),
  .c(w_1736_8b),
  .clk(clk)
);
assign  w_1737_8b  =  w_1736_8b ;
assign  w_1738_16b  =  w_1737_8b ;
ADD_16b_pe add_1012 (
  .a(w_1738_16b),
  .b(w_1728_16b),
  .c(w_1739_16b),
  .clk(clk)
);
assign  w_1740_16b  =  r26_w_SAD_2a163_1_16b ;
assign  w_1743_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_1744_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_1013 (
  .a(w_1743_8b),
  .b(w_1744_8b),
  .c(w_1745_8b),
  .clk(clk)
);
ABS_16b_pe abs_1014 (
  .a(w_1745_8b),
  .b(1'b0),
  .c(w_1748_8b),
  .clk(clk)
);
assign  w_1749_8b  =  w_1748_8b ;
assign  w_1750_16b  =  w_1749_8b ;
ADD_16b_pe add_1015 (
  .a(w_1740_16b),
  .b(w_1750_16b),
  .c(w_1751_16b),
  .clk(clk)
);
assign  w_1752_16b  =  r27_w_SAD_2a163_1_16b ;
assign  w_1755_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_1756_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_1016 (
  .a(w_1756_8b),
  .b(w_1755_8b),
  .c(w_1757_8b),
  .clk(clk)
);
ABS_16b_pe abs_1017 (
  .a(w_1757_8b),
  .b(1'b0),
  .c(w_1760_8b),
  .clk(clk)
);
assign  w_1761_8b  =  w_1760_8b ;
assign  w_1762_16b  =  w_1761_8b ;
ADD_16b_pe add_1018 (
  .a(w_1762_16b),
  .b(w_1752_16b),
  .c(w_1763_16b),
  .clk(clk)
);
assign  w_1764_16b  =  r28_w_SAD_2a163_1_16b ;
assign  w_1767_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_1768_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_1019 (
  .a(w_1767_8b),
  .b(w_1768_8b),
  .c(w_1769_8b),
  .clk(clk)
);
ABS_16b_pe abs_1020 (
  .a(w_1769_8b),
  .b(1'b0),
  .c(w_1772_8b),
  .clk(clk)
);
assign  w_1773_8b  =  w_1772_8b ;
assign  w_1774_16b  =  w_1773_8b ;
ADD_16b_pe add_1021 (
  .a(w_1774_16b),
  .b(w_1764_16b),
  .c(w_1775_16b),
  .clk(clk)
);
assign  w_1776_16b  =  r29_w_SAD_2a163_1_16b ;
assign  w_1779_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_1780_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_1022 (
  .a(w_1780_8b),
  .b(w_1779_8b),
  .c(w_1781_8b),
  .clk(clk)
);
ABS_16b_pe abs_1023 (
  .a(w_1781_8b),
  .b(1'b0),
  .c(w_1784_8b),
  .clk(clk)
);
assign  w_1785_8b  =  w_1784_8b ;
assign  w_1786_16b  =  w_1785_8b ;
ADD_16b_pe add_1024 (
  .a(w_1786_16b),
  .b(w_1776_16b),
  .c(w_1787_16b),
  .clk(clk)
);
assign  w_1788_16b  =  r30_w_SAD_2a163_1_16b ;
assign  w_1791_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_1792_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_1025 (
  .a(w_1792_8b),
  .b(w_1791_8b),
  .c(w_1793_8b),
  .clk(clk)
);
ABS_16b_pe abs_1026 (
  .a(w_1793_8b),
  .b(1'b0),
  .c(w_1796_8b),
  .clk(clk)
);
assign  w_1797_8b  =  w_1796_8b ;
assign  w_1798_16b  =  w_1797_8b ;
ADD_16b_pe add_1027 (
  .a(w_1798_16b),
  .b(w_1788_16b),
  .c(w_1799_16b),
  .clk(clk)
);
assign  w_1800_16b  =  r31_w_SAD_2a163_1_16b ;
assign  w_1803_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_1804_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_1028 (
  .a(w_1803_8b),
  .b(w_1804_8b),
  .c(w_1805_8b),
  .clk(clk)
);
ABS_16b_pe abs_1029 (
  .a(w_1805_8b),
  .b(1'b0),
  .c(w_1808_8b),
  .clk(clk)
);
assign  w_1809_8b  =  w_1808_8b ;
assign  w_1810_16b  =  w_1809_8b ;
ADD_16b_pe add_1030 (
  .a(w_1800_16b),
  .b(w_1810_16b),
  .c(w_1811_16b),
  .clk(clk)
);
assign  w_1812_16b  =  r32_w_SAD_2a163_1_16b ;
assign  w_1815_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_1816_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_1031 (
  .a(w_1815_8b),
  .b(w_1816_8b),
  .c(w_1817_8b),
  .clk(clk)
);
ABS_16b_pe abs_1032 (
  .a(w_1817_8b),
  .b(1'b0),
  .c(w_1820_8b),
  .clk(clk)
);
assign  w_1821_8b  =  w_1820_8b ;
assign  w_1822_16b  =  w_1821_8b ;
ADD_16b_pe add_1033 (
  .a(w_1822_16b),
  .b(w_1812_16b),
  .c(w_1823_16b),
  .clk(clk)
);
assign  w_1824_16b  =  r33_w_SAD_2a163_1_16b ;
assign  w_1827_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_1828_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_1034 (
  .a(w_1828_8b),
  .b(w_1827_8b),
  .c(w_1829_8b),
  .clk(clk)
);
ABS_16b_pe abs_1035 (
  .a(w_1829_8b),
  .b(1'b0),
  .c(w_1832_8b),
  .clk(clk)
);
assign  w_1833_8b  =  w_1832_8b ;
assign  w_1834_16b  =  w_1833_8b ;
ADD_16b_pe add_1036 (
  .a(w_1824_16b),
  .b(w_1834_16b),
  .c(w_1835_16b),
  .clk(clk)
);
assign  w_1836_16b  =  r34_w_SAD_2a163_1_16b ;
assign  w_1839_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_1840_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_1037 (
  .a(w_1839_8b),
  .b(w_1840_8b),
  .c(w_1841_8b),
  .clk(clk)
);
ABS_16b_pe abs_1038 (
  .a(w_1841_8b),
  .b(1'b0),
  .c(w_1844_8b),
  .clk(clk)
);
assign  w_1845_8b  =  w_1844_8b ;
assign  w_1846_16b  =  w_1845_8b ;
ADD_16b_pe add_1039 (
  .a(w_1846_16b),
  .b(w_1836_16b),
  .c(w_1847_16b),
  .clk(clk)
);
assign  w_1848_16b  =  r35_w_SAD_2a163_1_16b ;
assign  w_1851_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_1852_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_1040 (
  .a(w_1851_8b),
  .b(w_1852_8b),
  .c(w_1853_8b),
  .clk(clk)
);
ABS_16b_pe abs_1041 (
  .a(w_1853_8b),
  .b(1'b0),
  .c(w_1856_8b),
  .clk(clk)
);
assign  w_1857_8b  =  w_1856_8b ;
assign  w_1858_16b  =  w_1857_8b ;
ADD_16b_pe add_1042 (
  .a(w_1858_16b),
  .b(w_1848_16b),
  .c(w_1859_16b),
  .clk(clk)
);
assign  w_1860_16b  =  r36_w_SAD_2a163_1_16b ;
assign  w_1863_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_1864_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_1043 (
  .a(w_1864_8b),
  .b(w_1863_8b),
  .c(w_1865_8b),
  .clk(clk)
);
ABS_16b_pe abs_1044 (
  .a(w_1865_8b),
  .b(1'b0),
  .c(w_1868_8b),
  .clk(clk)
);
assign  w_1869_8b  =  w_1868_8b ;
assign  w_1870_16b  =  w_1869_8b ;
ADD_16b_pe add_1045 (
  .a(w_1860_16b),
  .b(w_1870_16b),
  .c(w_1871_16b),
  .clk(clk)
);
assign  w_1872_16b  =  r37_w_SAD_2a163_1_16b ;
assign  w_1875_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_1876_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_1046 (
  .a(w_1876_8b),
  .b(w_1875_8b),
  .c(w_1877_8b),
  .clk(clk)
);
ABS_16b_pe abs_1047 (
  .a(w_1877_8b),
  .b(1'b0),
  .c(w_1880_8b),
  .clk(clk)
);
assign  w_1881_8b  =  w_1880_8b ;
assign  w_1882_16b  =  w_1881_8b ;
ADD_16b_pe add_1048 (
  .a(w_1882_16b),
  .b(w_1872_16b),
  .c(w_1883_16b),
  .clk(clk)
);
assign  w_1884_16b  =  r38_w_SAD_2a163_1_16b ;
assign  w_1887_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_1888_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_1049 (
  .a(w_1888_8b),
  .b(w_1887_8b),
  .c(w_1889_8b),
  .clk(clk)
);
ABS_16b_pe abs_1050 (
  .a(w_1889_8b),
  .b(1'b0),
  .c(w_1892_8b),
  .clk(clk)
);
assign  w_1893_8b  =  w_1892_8b ;
assign  w_1894_16b  =  w_1893_8b ;
ADD_16b_pe add_1051 (
  .a(w_1894_16b),
  .b(w_1884_16b),
  .c(w_1895_16b),
  .clk(clk)
);
assign  w_1896_16b  =  r39_w_SAD_2a163_1_16b ;
assign  w_1899_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_1900_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_1052 (
  .a(w_1900_8b),
  .b(w_1899_8b),
  .c(w_1901_8b),
  .clk(clk)
);
ABS_16b_pe abs_1053 (
  .a(w_1901_8b),
  .b(1'b0),
  .c(w_1904_8b),
  .clk(clk)
);
assign  w_1905_8b  =  w_1904_8b ;
assign  w_1906_16b  =  w_1905_8b ;
ADD_16b_pe add_1054 (
  .a(w_1896_16b),
  .b(w_1906_16b),
  .c(w_1907_16b),
  .clk(clk)
);
assign  w_1908_16b  =  r40_w_SAD_2a163_1_16b ;
assign  w_1911_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_1912_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_1055 (
  .a(w_1911_8b),
  .b(w_1912_8b),
  .c(w_1913_8b),
  .clk(clk)
);
ABS_16b_pe abs_1056 (
  .a(w_1913_8b),
  .b(1'b0),
  .c(w_1916_8b),
  .clk(clk)
);
assign  w_1917_8b  =  w_1916_8b ;
assign  w_1918_16b  =  w_1917_8b ;
ADD_16b_pe add_1057 (
  .a(w_1918_16b),
  .b(w_1908_16b),
  .c(w_1919_16b),
  .clk(clk)
);
assign  w_1920_16b  =  r41_w_SAD_2a163_1_16b ;
assign  w_1923_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_1924_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_1058 (
  .a(w_1924_8b),
  .b(w_1923_8b),
  .c(w_1925_8b),
  .clk(clk)
);
ABS_16b_pe abs_1059 (
  .a(w_1925_8b),
  .b(1'b0),
  .c(w_1928_8b),
  .clk(clk)
);
assign  w_1929_8b  =  w_1928_8b ;
assign  w_1930_16b  =  w_1929_8b ;
ADD_16b_pe add_1060 (
  .a(w_1930_16b),
  .b(w_1920_16b),
  .c(w_1931_16b),
  .clk(clk)
);
assign  w_1932_16b  =  r42_w_SAD_2a163_1_16b ;
assign  w_1935_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_1936_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_1061 (
  .a(w_1936_8b),
  .b(w_1935_8b),
  .c(w_1937_8b),
  .clk(clk)
);
ABS_16b_pe abs_1062 (
  .a(w_1937_8b),
  .b(1'b0),
  .c(w_1940_8b),
  .clk(clk)
);
assign  w_1941_8b  =  w_1940_8b ;
assign  w_1942_16b  =  w_1941_8b ;
ADD_16b_pe add_1063 (
  .a(w_1932_16b),
  .b(w_1942_16b),
  .c(w_1943_16b),
  .clk(clk)
);
assign  w_1944_16b  =  r43_w_SAD_2a163_1_16b ;
assign  w_1947_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_1948_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_1064 (
  .a(w_1947_8b),
  .b(w_1948_8b),
  .c(w_1949_8b),
  .clk(clk)
);
ABS_16b_pe abs_1065 (
  .a(w_1949_8b),
  .b(1'b0),
  .c(w_1952_8b),
  .clk(clk)
);
assign  w_1953_8b  =  w_1952_8b ;
assign  w_1954_16b  =  w_1953_8b ;
ADD_16b_pe add_1066 (
  .a(w_1954_16b),
  .b(w_1944_16b),
  .c(w_1955_16b),
  .clk(clk)
);
assign  w_1956_16b  =  r44_w_SAD_2a163_1_16b ;
assign  w_1959_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_1960_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_1067 (
  .a(w_1960_8b),
  .b(w_1959_8b),
  .c(w_1961_8b),
  .clk(clk)
);
ABS_16b_pe abs_1068 (
  .a(w_1961_8b),
  .b(1'b0),
  .c(w_1964_8b),
  .clk(clk)
);
assign  w_1965_8b  =  w_1964_8b ;
assign  w_1966_16b  =  w_1965_8b ;
ADD_16b_pe add_1069 (
  .a(w_1956_16b),
  .b(w_1966_16b),
  .c(w_1967_16b),
  .clk(clk)
);
assign  w_1968_16b  =  r45_w_SAD_2a163_1_16b ;
assign  w_1971_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_1972_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_1070 (
  .a(w_1972_8b),
  .b(w_1971_8b),
  .c(w_1973_8b),
  .clk(clk)
);
ABS_16b_pe abs_1071 (
  .a(w_1973_8b),
  .b(1'b0),
  .c(w_1976_8b),
  .clk(clk)
);
assign  w_1977_8b  =  w_1976_8b ;
assign  w_1978_16b  =  w_1977_8b ;
ADD_16b_pe add_1072 (
  .a(w_1968_16b),
  .b(w_1978_16b),
  .c(w_1979_16b),
  .clk(clk)
);
assign  w_1980_16b  =  r46_w_SAD_2a163_1_16b ;
assign  w_1983_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_1984_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_1073 (
  .a(w_1983_8b),
  .b(w_1984_8b),
  .c(w_1985_8b),
  .clk(clk)
);
ABS_16b_pe abs_1074 (
  .a(w_1985_8b),
  .b(1'b0),
  .c(w_1988_8b),
  .clk(clk)
);
assign  w_1989_8b  =  w_1988_8b ;
assign  w_1990_16b  =  w_1989_8b ;
ADD_16b_pe add_1075 (
  .a(w_1990_16b),
  .b(w_1980_16b),
  .c(w_1991_16b),
  .clk(clk)
);
assign  w_1992_16b  =  r47_w_SAD_2a163_1_16b ;
assign  w_1995_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_1996_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_1076 (
  .a(w_1995_8b),
  .b(w_1996_8b),
  .c(w_1997_8b),
  .clk(clk)
);
ABS_16b_pe abs_1077 (
  .a(w_1997_8b),
  .b(1'b0),
  .c(w_2000_8b),
  .clk(clk)
);
assign  w_2001_8b  =  w_2000_8b ;
assign  w_2002_16b  =  w_2001_8b ;
ADD_16b_pe add_1078 (
  .a(w_2002_16b),
  .b(w_1992_16b),
  .c(w_2003_16b),
  .clk(clk)
);
assign  w_2004_16b  =  r48_w_SAD_2a163_1_16b ;
assign  w_2007_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2008_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_1079 (
  .a(w_2008_8b),
  .b(w_2007_8b),
  .c(w_2009_8b),
  .clk(clk)
);
ABS_16b_pe abs_1080 (
  .a(w_2009_8b),
  .b(1'b0),
  .c(w_2012_8b),
  .clk(clk)
);
assign  w_2013_8b  =  w_2012_8b ;
assign  w_2014_16b  =  w_2013_8b ;
ADD_16b_pe add_1081 (
  .a(w_2014_16b),
  .b(w_2004_16b),
  .c(w_2015_16b),
  .clk(clk)
);
assign  w_2016_16b  =  r49_w_SAD_2a163_1_16b ;
assign  w_2019_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2020_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_1082 (
  .a(w_2019_8b),
  .b(w_2020_8b),
  .c(w_2021_8b),
  .clk(clk)
);
ABS_16b_pe abs_1083 (
  .a(w_2021_8b),
  .b(1'b0),
  .c(w_2024_8b),
  .clk(clk)
);
assign  w_2025_8b  =  w_2024_8b ;
assign  w_2026_16b  =  w_2025_8b ;
ADD_16b_pe add_1084 (
  .a(w_2026_16b),
  .b(w_2016_16b),
  .c(w_2027_16b),
  .clk(clk)
);
assign  w_2028_16b  =  r50_w_SAD_2a163_1_16b ;
assign  w_2031_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2032_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_1085 (
  .a(w_2032_8b),
  .b(w_2031_8b),
  .c(w_2033_8b),
  .clk(clk)
);
ABS_16b_pe abs_1086 (
  .a(w_2033_8b),
  .b(1'b0),
  .c(w_2036_8b),
  .clk(clk)
);
assign  w_2037_8b  =  w_2036_8b ;
assign  w_2038_16b  =  w_2037_8b ;
ADD_16b_pe add_1087 (
  .a(w_2038_16b),
  .b(w_2028_16b),
  .c(w_2039_16b),
  .clk(clk)
);
assign  w_2040_16b  =  r51_w_SAD_2a163_1_16b ;
assign  w_2043_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2044_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_1088 (
  .a(w_2044_8b),
  .b(w_2043_8b),
  .c(w_2045_8b),
  .clk(clk)
);
ABS_16b_pe abs_1089 (
  .a(w_2045_8b),
  .b(1'b0),
  .c(w_2048_8b),
  .clk(clk)
);
assign  w_2049_8b  =  w_2048_8b ;
assign  w_2050_16b  =  w_2049_8b ;
ADD_16b_pe add_1090 (
  .a(w_2050_16b),
  .b(w_2040_16b),
  .c(w_2051_16b),
  .clk(clk)
);
assign  w_2052_16b  =  r52_w_SAD_2a163_1_16b ;
assign  w_2055_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2056_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_1091 (
  .a(w_2055_8b),
  .b(w_2056_8b),
  .c(w_2057_8b),
  .clk(clk)
);
ABS_16b_pe abs_1092 (
  .a(w_2057_8b),
  .b(1'b0),
  .c(w_2060_8b),
  .clk(clk)
);
assign  w_2061_8b  =  w_2060_8b ;
assign  w_2062_16b  =  w_2061_8b ;
ADD_16b_pe add_1093 (
  .a(w_2062_16b),
  .b(w_2052_16b),
  .c(w_2063_16b),
  .clk(clk)
);
assign  w_2064_16b  =  r53_w_SAD_2a163_1_16b ;
assign  w_2067_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2068_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_1094 (
  .a(w_2068_8b),
  .b(w_2067_8b),
  .c(w_2069_8b),
  .clk(clk)
);
ABS_16b_pe abs_1095 (
  .a(w_2069_8b),
  .b(1'b0),
  .c(w_2072_8b),
  .clk(clk)
);
assign  w_2073_8b  =  w_2072_8b ;
assign  w_2074_16b  =  w_2073_8b ;
ADD_16b_pe add_1096 (
  .a(w_2074_16b),
  .b(w_2064_16b),
  .c(w_2075_16b),
  .clk(clk)
);
assign  w_2076_16b  =  r54_w_SAD_2a163_1_16b ;
assign  w_2079_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2080_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_1097 (
  .a(w_2080_8b),
  .b(w_2079_8b),
  .c(w_2081_8b),
  .clk(clk)
);
ABS_16b_pe abs_1098 (
  .a(w_2081_8b),
  .b(1'b0),
  .c(w_2084_8b),
  .clk(clk)
);
assign  w_2085_8b  =  w_2084_8b ;
assign  w_2086_16b  =  w_2085_8b ;
ADD_16b_pe add_1099 (
  .a(w_2076_16b),
  .b(w_2086_16b),
  .c(w_2087_16b),
  .clk(clk)
);
assign  w_2088_16b  =  r55_w_SAD_2a163_1_16b ;
assign  w_2091_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2092_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_1100 (
  .a(w_2091_8b),
  .b(w_2092_8b),
  .c(w_2093_8b),
  .clk(clk)
);
ABS_16b_pe abs_1101 (
  .a(w_2093_8b),
  .b(1'b0),
  .c(w_2096_8b),
  .clk(clk)
);
assign  w_2097_8b  =  w_2096_8b ;
assign  w_2098_16b  =  w_2097_8b ;
ADD_16b_pe add_1102 (
  .a(w_2098_16b),
  .b(w_2088_16b),
  .c(w_2099_16b),
  .clk(clk)
);
assign  w_2100_16b  =  r56_w_SAD_2a163_1_16b ;
assign  w_2103_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2104_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_1103 (
  .a(w_2103_8b),
  .b(w_2104_8b),
  .c(w_2105_8b),
  .clk(clk)
);
ABS_16b_pe abs_1104 (
  .a(w_2105_8b),
  .b(1'b0),
  .c(w_2108_8b),
  .clk(clk)
);
assign  w_2109_8b  =  w_2108_8b ;
assign  w_2110_16b  =  w_2109_8b ;
ADD_16b_pe add_1105 (
  .a(w_2100_16b),
  .b(w_2110_16b),
  .c(w_2111_16b),
  .clk(clk)
);
assign  w_2112_16b  =  r57_w_SAD_2a163_1_16b ;
assign  w_2115_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2116_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_1106 (
  .a(w_2115_8b),
  .b(w_2116_8b),
  .c(w_2117_8b),
  .clk(clk)
);
ABS_16b_pe abs_1107 (
  .a(w_2117_8b),
  .b(1'b0),
  .c(w_2120_8b),
  .clk(clk)
);
assign  w_2121_8b  =  w_2120_8b ;
assign  w_2122_16b  =  w_2121_8b ;
ADD_16b_pe add_1108 (
  .a(w_2122_16b),
  .b(w_2112_16b),
  .c(w_2123_16b),
  .clk(clk)
);
assign  w_2124_16b  =  r58_w_SAD_2a163_1_16b ;
assign  w_2127_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2128_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_1109 (
  .a(w_2128_8b),
  .b(w_2127_8b),
  .c(w_2129_8b),
  .clk(clk)
);
ABS_16b_pe abs_1110 (
  .a(w_2129_8b),
  .b(1'b0),
  .c(w_2132_8b),
  .clk(clk)
);
assign  w_2133_8b  =  w_2132_8b ;
assign  w_2134_16b  =  w_2133_8b ;
ADD_16b_pe add_1111 (
  .a(w_2124_16b),
  .b(w_2134_16b),
  .c(w_2135_16b),
  .clk(clk)
);
assign  w_2136_16b  =  r59_w_SAD_2a163_1_16b ;
assign  w_2139_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2140_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_1112 (
  .a(w_2139_8b),
  .b(w_2140_8b),
  .c(w_2141_8b),
  .clk(clk)
);
ABS_16b_pe abs_1113 (
  .a(w_2141_8b),
  .b(1'b0),
  .c(w_2144_8b),
  .clk(clk)
);
assign  w_2145_8b  =  w_2144_8b ;
assign  w_2146_16b  =  w_2145_8b ;
ADD_16b_pe add_1114 (
  .a(w_2146_16b),
  .b(w_2136_16b),
  .c(w_2147_16b),
  .clk(clk)
);
assign  w_2148_16b  =  r60_w_SAD_2a163_1_16b ;
assign  w_2151_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2152_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_1115 (
  .a(w_2151_8b),
  .b(w_2152_8b),
  .c(w_2153_8b),
  .clk(clk)
);
ABS_16b_pe abs_1116 (
  .a(w_2153_8b),
  .b(1'b0),
  .c(w_2156_8b),
  .clk(clk)
);
assign  w_2157_8b  =  w_2156_8b ;
assign  w_2158_16b  =  w_2157_8b ;
ADD_16b_pe add_1117 (
  .a(w_2158_16b),
  .b(w_2148_16b),
  .c(w_2159_16b),
  .clk(clk)
);
assign  w_2160_16b  =  r61_w_SAD_2a163_1_16b ;
assign  w_2163_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2164_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_1118 (
  .a(w_2164_8b),
  .b(w_2163_8b),
  .c(w_2165_8b),
  .clk(clk)
);
ABS_16b_pe abs_1119 (
  .a(w_2165_8b),
  .b(1'b0),
  .c(w_2168_8b),
  .clk(clk)
);
assign  w_2169_8b  =  w_2168_8b ;
assign  w_2170_16b  =  w_2169_8b ;
ADD_16b_pe add_1120 (
  .a(w_2160_16b),
  .b(w_2170_16b),
  .c(w_2171_16b),
  .clk(clk)
);
assign  w_2172_16b  =  r62_w_SAD_2a163_1_16b ;
assign  w_2175_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2176_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_1121 (
  .a(w_2176_8b),
  .b(w_2175_8b),
  .c(w_2177_8b),
  .clk(clk)
);
ABS_16b_pe abs_1122 (
  .a(w_2177_8b),
  .b(1'b0),
  .c(w_2180_8b),
  .clk(clk)
);
assign  w_2181_8b  =  w_2180_8b ;
assign  w_2182_16b  =  w_2181_8b ;
ADD_16b_pe add_1123 (
  .a(w_2182_16b),
  .b(w_2172_16b),
  .c(w_2183_16b),
  .clk(clk)
);
assign  w_2184_16b  = 1'b0;
assign  w_2187_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2188_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_1124 (
  .a(w_2188_8b),
  .b(w_2187_8b),
  .c(w_2189_8b),
  .clk(clk)
);
ABS_16b_pe abs_1125 (
  .a(w_2189_8b),
  .b(1'b0),
  .c(w_2192_8b),
  .clk(clk)
);
assign  w_2193_8b  =  w_2192_8b ;
assign  w_2194_16b  =  w_2193_8b ;
ADD_16b_pe add_1126 (
  .a(w_2194_16b),
  .b(w_2184_16b),
  .c(w_2195_16b),
  .clk(clk)
);
assign  w_2196_16b  =  r0_w_SAD_2a163_2_16b ;
assign  w_2199_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2200_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_1127 (
  .a(w_2200_8b),
  .b(w_2199_8b),
  .c(w_2201_8b),
  .clk(clk)
);
ABS_16b_pe abs_1128 (
  .a(w_2201_8b),
  .b(1'b0),
  .c(w_2204_8b),
  .clk(clk)
);
assign  w_2205_8b  =  w_2204_8b ;
assign  w_2206_16b  =  w_2205_8b ;
ADD_16b_pe add_1129 (
  .a(w_2196_16b),
  .b(w_2206_16b),
  .c(w_2207_16b),
  .clk(clk)
);
assign  w_2208_16b  =  r1_w_SAD_2a163_2_16b ;
assign  w_2211_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2212_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_1130 (
  .a(w_2212_8b),
  .b(w_2211_8b),
  .c(w_2213_8b),
  .clk(clk)
);
ABS_16b_pe abs_1131 (
  .a(w_2213_8b),
  .b(1'b0),
  .c(w_2216_8b),
  .clk(clk)
);
assign  w_2217_8b  =  w_2216_8b ;
assign  w_2218_16b  =  w_2217_8b ;
ADD_16b_pe add_1132 (
  .a(w_2208_16b),
  .b(w_2218_16b),
  .c(w_2219_16b),
  .clk(clk)
);
assign  w_2220_16b  =  r2_w_SAD_2a163_2_16b ;
assign  w_2223_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2224_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_1133 (
  .a(w_2224_8b),
  .b(w_2223_8b),
  .c(w_2225_8b),
  .clk(clk)
);
ABS_16b_pe abs_1134 (
  .a(w_2225_8b),
  .b(1'b0),
  .c(w_2228_8b),
  .clk(clk)
);
assign  w_2229_8b  =  w_2228_8b ;
assign  w_2230_16b  =  w_2229_8b ;
ADD_16b_pe add_1135 (
  .a(w_2230_16b),
  .b(w_2220_16b),
  .c(w_2231_16b),
  .clk(clk)
);
assign  w_2232_16b  =  r3_w_SAD_2a163_2_16b ;
assign  w_2235_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2236_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_1136 (
  .a(w_2235_8b),
  .b(w_2236_8b),
  .c(w_2237_8b),
  .clk(clk)
);
ABS_16b_pe abs_1137 (
  .a(w_2237_8b),
  .b(1'b0),
  .c(w_2240_8b),
  .clk(clk)
);
assign  w_2241_8b  =  w_2240_8b ;
assign  w_2242_16b  =  w_2241_8b ;
ADD_16b_pe add_1138 (
  .a(w_2242_16b),
  .b(w_2232_16b),
  .c(w_2243_16b),
  .clk(clk)
);
assign  w_2244_16b  =  r4_w_SAD_2a163_2_16b ;
assign  w_2247_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2248_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_1139 (
  .a(w_2247_8b),
  .b(w_2248_8b),
  .c(w_2249_8b),
  .clk(clk)
);
ABS_16b_pe abs_1140 (
  .a(w_2249_8b),
  .b(1'b0),
  .c(w_2252_8b),
  .clk(clk)
);
assign  w_2253_8b  =  w_2252_8b ;
assign  w_2254_16b  =  w_2253_8b ;
ADD_16b_pe add_1141 (
  .a(w_2244_16b),
  .b(w_2254_16b),
  .c(w_2255_16b),
  .clk(clk)
);
assign  w_2256_16b  =  r5_w_SAD_2a163_2_16b ;
assign  w_2259_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2260_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_1142 (
  .a(w_2259_8b),
  .b(w_2260_8b),
  .c(w_2261_8b),
  .clk(clk)
);
ABS_16b_pe abs_1143 (
  .a(w_2261_8b),
  .b(1'b0),
  .c(w_2264_8b),
  .clk(clk)
);
assign  w_2265_8b  =  w_2264_8b ;
assign  w_2266_16b  =  w_2265_8b ;
ADD_16b_pe add_1144 (
  .a(w_2266_16b),
  .b(w_2256_16b),
  .c(w_2267_16b),
  .clk(clk)
);
assign  w_2268_16b  =  r6_w_SAD_2a163_2_16b ;
assign  w_2271_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2272_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_1145 (
  .a(w_2271_8b),
  .b(w_2272_8b),
  .c(w_2273_8b),
  .clk(clk)
);
ABS_16b_pe abs_1146 (
  .a(w_2273_8b),
  .b(1'b0),
  .c(w_2276_8b),
  .clk(clk)
);
assign  w_2277_8b  =  w_2276_8b ;
assign  w_2278_16b  =  w_2277_8b ;
ADD_16b_pe add_1147 (
  .a(w_2278_16b),
  .b(w_2268_16b),
  .c(w_2279_16b),
  .clk(clk)
);
assign  w_2280_16b  =  r7_w_SAD_2a163_2_16b ;
assign  w_2283_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_2284_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_1148 (
  .a(w_2283_8b),
  .b(w_2284_8b),
  .c(w_2285_8b),
  .clk(clk)
);
ABS_16b_pe abs_1149 (
  .a(w_2285_8b),
  .b(1'b0),
  .c(w_2288_8b),
  .clk(clk)
);
assign  w_2289_8b  =  w_2288_8b ;
assign  w_2290_16b  =  w_2289_8b ;
ADD_16b_pe add_1150 (
  .a(w_2280_16b),
  .b(w_2290_16b),
  .c(w_2291_16b),
  .clk(clk)
);
assign  w_2292_16b  =  r8_w_SAD_2a163_2_16b ;
assign  w_2295_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_2296_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_1151 (
  .a(w_2296_8b),
  .b(w_2295_8b),
  .c(w_2297_8b),
  .clk(clk)
);
ABS_16b_pe abs_1152 (
  .a(w_2297_8b),
  .b(1'b0),
  .c(w_2300_8b),
  .clk(clk)
);
assign  w_2301_8b  =  w_2300_8b ;
assign  w_2302_16b  =  w_2301_8b ;
ADD_16b_pe add_1153 (
  .a(w_2302_16b),
  .b(w_2292_16b),
  .c(w_2303_16b),
  .clk(clk)
);
assign  w_2304_16b  =  r9_w_SAD_2a163_2_16b ;
assign  w_2307_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_2308_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_1154 (
  .a(w_2308_8b),
  .b(w_2307_8b),
  .c(w_2309_8b),
  .clk(clk)
);
ABS_16b_pe abs_1155 (
  .a(w_2309_8b),
  .b(1'b0),
  .c(w_2312_8b),
  .clk(clk)
);
assign  w_2313_8b  =  w_2312_8b ;
assign  w_2314_16b  =  w_2313_8b ;
ADD_16b_pe add_1156 (
  .a(w_2304_16b),
  .b(w_2314_16b),
  .c(w_2315_16b),
  .clk(clk)
);
assign  w_2316_16b  =  r10_w_SAD_2a163_2_16b ;
assign  w_2319_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_2320_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_1157 (
  .a(w_2319_8b),
  .b(w_2320_8b),
  .c(w_2321_8b),
  .clk(clk)
);
ABS_16b_pe abs_1158 (
  .a(w_2321_8b),
  .b(1'b0),
  .c(w_2324_8b),
  .clk(clk)
);
assign  w_2325_8b  =  w_2324_8b ;
assign  w_2326_16b  =  w_2325_8b ;
ADD_16b_pe add_1159 (
  .a(w_2316_16b),
  .b(w_2326_16b),
  .c(w_2327_16b),
  .clk(clk)
);
assign  w_2328_16b  =  r11_w_SAD_2a163_2_16b ;
assign  w_2331_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_2332_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_1160 (
  .a(w_2331_8b),
  .b(w_2332_8b),
  .c(w_2333_8b),
  .clk(clk)
);
ABS_16b_pe abs_1161 (
  .a(w_2333_8b),
  .b(1'b0),
  .c(w_2336_8b),
  .clk(clk)
);
assign  w_2337_8b  =  w_2336_8b ;
assign  w_2338_16b  =  w_2337_8b ;
ADD_16b_pe add_1162 (
  .a(w_2328_16b),
  .b(w_2338_16b),
  .c(w_2339_16b),
  .clk(clk)
);
assign  w_2340_16b  =  r12_w_SAD_2a163_2_16b ;
assign  w_2343_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_2344_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_1163 (
  .a(w_2344_8b),
  .b(w_2343_8b),
  .c(w_2345_8b),
  .clk(clk)
);
ABS_16b_pe abs_1164 (
  .a(w_2345_8b),
  .b(1'b0),
  .c(w_2348_8b),
  .clk(clk)
);
assign  w_2349_8b  =  w_2348_8b ;
assign  w_2350_16b  =  w_2349_8b ;
ADD_16b_pe add_1165 (
  .a(w_2340_16b),
  .b(w_2350_16b),
  .c(w_2351_16b),
  .clk(clk)
);
assign  w_2352_16b  =  r13_w_SAD_2a163_2_16b ;
assign  w_2355_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_2356_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_1166 (
  .a(w_2356_8b),
  .b(w_2355_8b),
  .c(w_2357_8b),
  .clk(clk)
);
ABS_16b_pe abs_1167 (
  .a(w_2357_8b),
  .b(1'b0),
  .c(w_2360_8b),
  .clk(clk)
);
assign  w_2361_8b  =  w_2360_8b ;
assign  w_2362_16b  =  w_2361_8b ;
ADD_16b_pe add_1168 (
  .a(w_2352_16b),
  .b(w_2362_16b),
  .c(w_2363_16b),
  .clk(clk)
);
assign  w_2364_16b  =  r14_w_SAD_2a163_2_16b ;
assign  w_2367_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_2368_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_1169 (
  .a(w_2367_8b),
  .b(w_2368_8b),
  .c(w_2369_8b),
  .clk(clk)
);
ABS_16b_pe abs_1170 (
  .a(w_2369_8b),
  .b(1'b0),
  .c(w_2372_8b),
  .clk(clk)
);
assign  w_2373_8b  =  w_2372_8b ;
assign  w_2374_16b  =  w_2373_8b ;
ADD_16b_pe add_1171 (
  .a(w_2364_16b),
  .b(w_2374_16b),
  .c(w_2375_16b),
  .clk(clk)
);
assign  w_2376_16b  =  r15_w_SAD_2a163_2_16b ;
assign  w_2379_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_2380_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_1172 (
  .a(w_2379_8b),
  .b(w_2380_8b),
  .c(w_2381_8b),
  .clk(clk)
);
ABS_16b_pe abs_1173 (
  .a(w_2381_8b),
  .b(1'b0),
  .c(w_2384_8b),
  .clk(clk)
);
assign  w_2385_8b  =  w_2384_8b ;
assign  w_2386_16b  =  w_2385_8b ;
ADD_16b_pe add_1174 (
  .a(w_2376_16b),
  .b(w_2386_16b),
  .c(w_2387_16b),
  .clk(clk)
);
assign  w_2388_16b  =  r16_w_SAD_2a163_2_16b ;
assign  w_2391_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_2392_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_1175 (
  .a(w_2392_8b),
  .b(w_2391_8b),
  .c(w_2393_8b),
  .clk(clk)
);
ABS_16b_pe abs_1176 (
  .a(w_2393_8b),
  .b(1'b0),
  .c(w_2396_8b),
  .clk(clk)
);
assign  w_2397_8b  =  w_2396_8b ;
assign  w_2398_16b  =  w_2397_8b ;
ADD_16b_pe add_1177 (
  .a(w_2388_16b),
  .b(w_2398_16b),
  .c(w_2399_16b),
  .clk(clk)
);
assign  w_2400_16b  =  r17_w_SAD_2a163_2_16b ;
assign  w_2403_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_2404_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_1178 (
  .a(w_2404_8b),
  .b(w_2403_8b),
  .c(w_2405_8b),
  .clk(clk)
);
ABS_16b_pe abs_1179 (
  .a(w_2405_8b),
  .b(1'b0),
  .c(w_2408_8b),
  .clk(clk)
);
assign  w_2409_8b  =  w_2408_8b ;
assign  w_2410_16b  =  w_2409_8b ;
ADD_16b_pe add_1180 (
  .a(w_2410_16b),
  .b(w_2400_16b),
  .c(w_2411_16b),
  .clk(clk)
);
assign  w_2412_16b  =  r18_w_SAD_2a163_2_16b ;
assign  w_2415_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_2416_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_1181 (
  .a(w_2415_8b),
  .b(w_2416_8b),
  .c(w_2417_8b),
  .clk(clk)
);
ABS_16b_pe abs_1182 (
  .a(w_2417_8b),
  .b(1'b0),
  .c(w_2420_8b),
  .clk(clk)
);
assign  w_2421_8b  =  w_2420_8b ;
assign  w_2422_16b  =  w_2421_8b ;
ADD_16b_pe add_1183 (
  .a(w_2422_16b),
  .b(w_2412_16b),
  .c(w_2423_16b),
  .clk(clk)
);
assign  w_2424_16b  =  r19_w_SAD_2a163_2_16b ;
assign  w_2427_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_2428_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_1184 (
  .a(w_2428_8b),
  .b(w_2427_8b),
  .c(w_2429_8b),
  .clk(clk)
);
ABS_16b_pe abs_1185 (
  .a(w_2429_8b),
  .b(1'b0),
  .c(w_2432_8b),
  .clk(clk)
);
assign  w_2433_8b  =  w_2432_8b ;
assign  w_2434_16b  =  w_2433_8b ;
ADD_16b_pe add_1186 (
  .a(w_2434_16b),
  .b(w_2424_16b),
  .c(w_2435_16b),
  .clk(clk)
);
assign  w_2436_16b  =  r20_w_SAD_2a163_2_16b ;
assign  w_2439_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_2440_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_1187 (
  .a(w_2440_8b),
  .b(w_2439_8b),
  .c(w_2441_8b),
  .clk(clk)
);
ABS_16b_pe abs_1188 (
  .a(w_2441_8b),
  .b(1'b0),
  .c(w_2444_8b),
  .clk(clk)
);
assign  w_2445_8b  =  w_2444_8b ;
assign  w_2446_16b  =  w_2445_8b ;
ADD_16b_pe add_1189 (
  .a(w_2436_16b),
  .b(w_2446_16b),
  .c(w_2447_16b),
  .clk(clk)
);
assign  w_2448_16b  =  r21_w_SAD_2a163_2_16b ;
assign  w_2451_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_2452_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_1190 (
  .a(w_2451_8b),
  .b(w_2452_8b),
  .c(w_2453_8b),
  .clk(clk)
);
ABS_16b_pe abs_1191 (
  .a(w_2453_8b),
  .b(1'b0),
  .c(w_2456_8b),
  .clk(clk)
);
assign  w_2457_8b  =  w_2456_8b ;
assign  w_2458_16b  =  w_2457_8b ;
ADD_16b_pe add_1192 (
  .a(w_2458_16b),
  .b(w_2448_16b),
  .c(w_2459_16b),
  .clk(clk)
);
assign  w_2460_16b  =  r22_w_SAD_2a163_2_16b ;
assign  w_2463_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_2464_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_1193 (
  .a(w_2464_8b),
  .b(w_2463_8b),
  .c(w_2465_8b),
  .clk(clk)
);
ABS_16b_pe abs_1194 (
  .a(w_2465_8b),
  .b(1'b0),
  .c(w_2468_8b),
  .clk(clk)
);
assign  w_2469_8b  =  w_2468_8b ;
assign  w_2470_16b  =  w_2469_8b ;
ADD_16b_pe add_1195 (
  .a(w_2470_16b),
  .b(w_2460_16b),
  .c(w_2471_16b),
  .clk(clk)
);
assign  w_2472_16b  =  r23_w_SAD_2a163_2_16b ;
assign  w_2475_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_2476_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_1196 (
  .a(w_2476_8b),
  .b(w_2475_8b),
  .c(w_2477_8b),
  .clk(clk)
);
ABS_16b_pe abs_1197 (
  .a(w_2477_8b),
  .b(1'b0),
  .c(w_2480_8b),
  .clk(clk)
);
assign  w_2481_8b  =  w_2480_8b ;
assign  w_2482_16b  =  w_2481_8b ;
ADD_16b_pe add_1198 (
  .a(w_2472_16b),
  .b(w_2482_16b),
  .c(w_2483_16b),
  .clk(clk)
);
assign  w_2484_16b  =  r24_w_SAD_2a163_2_16b ;
assign  w_2487_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_2488_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_1199 (
  .a(w_2487_8b),
  .b(w_2488_8b),
  .c(w_2489_8b),
  .clk(clk)
);
ABS_16b_pe abs_1200 (
  .a(w_2489_8b),
  .b(1'b0),
  .c(w_2492_8b),
  .clk(clk)
);
assign  w_2493_8b  =  w_2492_8b ;
assign  w_2494_16b  =  w_2493_8b ;
ADD_16b_pe add_1201 (
  .a(w_2494_16b),
  .b(w_2484_16b),
  .c(w_2495_16b),
  .clk(clk)
);
assign  w_2496_16b  =  r25_w_SAD_2a163_2_16b ;
assign  w_2499_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_2500_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_1202 (
  .a(w_2499_8b),
  .b(w_2500_8b),
  .c(w_2501_8b),
  .clk(clk)
);
ABS_16b_pe abs_1203 (
  .a(w_2501_8b),
  .b(1'b0),
  .c(w_2504_8b),
  .clk(clk)
);
assign  w_2505_8b  =  w_2504_8b ;
assign  w_2506_16b  =  w_2505_8b ;
ADD_16b_pe add_1204 (
  .a(w_2506_16b),
  .b(w_2496_16b),
  .c(w_2507_16b),
  .clk(clk)
);
assign  w_2508_16b  =  r26_w_SAD_2a163_2_16b ;
assign  w_2511_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_2512_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_1205 (
  .a(w_2511_8b),
  .b(w_2512_8b),
  .c(w_2513_8b),
  .clk(clk)
);
ABS_16b_pe abs_1206 (
  .a(w_2513_8b),
  .b(1'b0),
  .c(w_2516_8b),
  .clk(clk)
);
assign  w_2517_8b  =  w_2516_8b ;
assign  w_2518_16b  =  w_2517_8b ;
ADD_16b_pe add_1207 (
  .a(w_2518_16b),
  .b(w_2508_16b),
  .c(w_2519_16b),
  .clk(clk)
);
assign  w_2520_16b  =  r27_w_SAD_2a163_2_16b ;
assign  w_2523_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_2524_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_1208 (
  .a(w_2524_8b),
  .b(w_2523_8b),
  .c(w_2525_8b),
  .clk(clk)
);
ABS_16b_pe abs_1209 (
  .a(w_2525_8b),
  .b(1'b0),
  .c(w_2528_8b),
  .clk(clk)
);
assign  w_2529_8b  =  w_2528_8b ;
assign  w_2530_16b  =  w_2529_8b ;
ADD_16b_pe add_1210 (
  .a(w_2520_16b),
  .b(w_2530_16b),
  .c(w_2531_16b),
  .clk(clk)
);
assign  w_2532_16b  =  r28_w_SAD_2a163_2_16b ;
assign  w_2535_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_2536_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_1211 (
  .a(w_2536_8b),
  .b(w_2535_8b),
  .c(w_2537_8b),
  .clk(clk)
);
ABS_16b_pe abs_1212 (
  .a(w_2537_8b),
  .b(1'b0),
  .c(w_2540_8b),
  .clk(clk)
);
assign  w_2541_8b  =  w_2540_8b ;
assign  w_2542_16b  =  w_2541_8b ;
ADD_16b_pe add_1213 (
  .a(w_2542_16b),
  .b(w_2532_16b),
  .c(w_2543_16b),
  .clk(clk)
);
assign  w_2544_16b  =  r29_w_SAD_2a163_2_16b ;
assign  w_2547_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_2548_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_1214 (
  .a(w_2548_8b),
  .b(w_2547_8b),
  .c(w_2549_8b),
  .clk(clk)
);
ABS_16b_pe abs_1215 (
  .a(w_2549_8b),
  .b(1'b0),
  .c(w_2552_8b),
  .clk(clk)
);
assign  w_2553_8b  =  w_2552_8b ;
assign  w_2554_16b  =  w_2553_8b ;
ADD_16b_pe add_1216 (
  .a(w_2554_16b),
  .b(w_2544_16b),
  .c(w_2555_16b),
  .clk(clk)
);
assign  w_2556_16b  =  r30_w_SAD_2a163_2_16b ;
assign  w_2559_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_2560_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_1217 (
  .a(w_2560_8b),
  .b(w_2559_8b),
  .c(w_2561_8b),
  .clk(clk)
);
ABS_16b_pe abs_1218 (
  .a(w_2561_8b),
  .b(1'b0),
  .c(w_2564_8b),
  .clk(clk)
);
assign  w_2565_8b  =  w_2564_8b ;
assign  w_2566_16b  =  w_2565_8b ;
ADD_16b_pe add_1219 (
  .a(w_2556_16b),
  .b(w_2566_16b),
  .c(w_2567_16b),
  .clk(clk)
);
assign  w_2568_16b  =  r31_w_SAD_2a163_2_16b ;
assign  w_2571_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_2572_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_1220 (
  .a(w_2572_8b),
  .b(w_2571_8b),
  .c(w_2573_8b),
  .clk(clk)
);
ABS_16b_pe abs_1221 (
  .a(w_2573_8b),
  .b(1'b0),
  .c(w_2576_8b),
  .clk(clk)
);
assign  w_2577_8b  =  w_2576_8b ;
assign  w_2578_16b  =  w_2577_8b ;
ADD_16b_pe add_1222 (
  .a(w_2568_16b),
  .b(w_2578_16b),
  .c(w_2579_16b),
  .clk(clk)
);
assign  w_2580_16b  =  r32_w_SAD_2a163_2_16b ;
assign  w_2583_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_2584_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_1223 (
  .a(w_2584_8b),
  .b(w_2583_8b),
  .c(w_2585_8b),
  .clk(clk)
);
ABS_16b_pe abs_1224 (
  .a(w_2585_8b),
  .b(1'b0),
  .c(w_2588_8b),
  .clk(clk)
);
assign  w_2589_8b  =  w_2588_8b ;
assign  w_2590_16b  =  w_2589_8b ;
ADD_16b_pe add_1225 (
  .a(w_2590_16b),
  .b(w_2580_16b),
  .c(w_2591_16b),
  .clk(clk)
);
assign  w_2592_16b  =  r33_w_SAD_2a163_2_16b ;
assign  w_2595_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_2596_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_1226 (
  .a(w_2595_8b),
  .b(w_2596_8b),
  .c(w_2597_8b),
  .clk(clk)
);
ABS_16b_pe abs_1227 (
  .a(w_2597_8b),
  .b(1'b0),
  .c(w_2600_8b),
  .clk(clk)
);
assign  w_2601_8b  =  w_2600_8b ;
assign  w_2602_16b  =  w_2601_8b ;
ADD_16b_pe add_1228 (
  .a(w_2592_16b),
  .b(w_2602_16b),
  .c(w_2603_16b),
  .clk(clk)
);
assign  w_2604_16b  =  r34_w_SAD_2a163_2_16b ;
assign  w_2607_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_2608_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_1229 (
  .a(w_2607_8b),
  .b(w_2608_8b),
  .c(w_2609_8b),
  .clk(clk)
);
ABS_16b_pe abs_1230 (
  .a(w_2609_8b),
  .b(1'b0),
  .c(w_2612_8b),
  .clk(clk)
);
assign  w_2613_8b  =  w_2612_8b ;
assign  w_2614_16b  =  w_2613_8b ;
ADD_16b_pe add_1231 (
  .a(w_2604_16b),
  .b(w_2614_16b),
  .c(w_2615_16b),
  .clk(clk)
);
assign  w_2616_16b  =  r35_w_SAD_2a163_2_16b ;
assign  w_2619_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_2620_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_1232 (
  .a(w_2619_8b),
  .b(w_2620_8b),
  .c(w_2621_8b),
  .clk(clk)
);
ABS_16b_pe abs_1233 (
  .a(w_2621_8b),
  .b(1'b0),
  .c(w_2624_8b),
  .clk(clk)
);
assign  w_2625_8b  =  w_2624_8b ;
assign  w_2626_16b  =  w_2625_8b ;
ADD_16b_pe add_1234 (
  .a(w_2626_16b),
  .b(w_2616_16b),
  .c(w_2627_16b),
  .clk(clk)
);
assign  w_2628_16b  =  r36_w_SAD_2a163_2_16b ;
assign  w_2631_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_2632_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_1235 (
  .a(w_2631_8b),
  .b(w_2632_8b),
  .c(w_2633_8b),
  .clk(clk)
);
ABS_16b_pe abs_1236 (
  .a(w_2633_8b),
  .b(1'b0),
  .c(w_2636_8b),
  .clk(clk)
);
assign  w_2637_8b  =  w_2636_8b ;
assign  w_2638_16b  =  w_2637_8b ;
ADD_16b_pe add_1237 (
  .a(w_2638_16b),
  .b(w_2628_16b),
  .c(w_2639_16b),
  .clk(clk)
);
assign  w_2640_16b  =  r37_w_SAD_2a163_2_16b ;
assign  w_2643_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_2644_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_1238 (
  .a(w_2643_8b),
  .b(w_2644_8b),
  .c(w_2645_8b),
  .clk(clk)
);
ABS_16b_pe abs_1239 (
  .a(w_2645_8b),
  .b(1'b0),
  .c(w_2648_8b),
  .clk(clk)
);
assign  w_2649_8b  =  w_2648_8b ;
assign  w_2650_16b  =  w_2649_8b ;
ADD_16b_pe add_1240 (
  .a(w_2640_16b),
  .b(w_2650_16b),
  .c(w_2651_16b),
  .clk(clk)
);
assign  w_2652_16b  =  r38_w_SAD_2a163_2_16b ;
assign  w_2655_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_2656_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_1241 (
  .a(w_2656_8b),
  .b(w_2655_8b),
  .c(w_2657_8b),
  .clk(clk)
);
ABS_16b_pe abs_1242 (
  .a(w_2657_8b),
  .b(1'b0),
  .c(w_2660_8b),
  .clk(clk)
);
assign  w_2661_8b  =  w_2660_8b ;
assign  w_2662_16b  =  w_2661_8b ;
ADD_16b_pe add_1243 (
  .a(w_2662_16b),
  .b(w_2652_16b),
  .c(w_2663_16b),
  .clk(clk)
);
assign  w_2664_16b  =  r39_w_SAD_2a163_2_16b ;
assign  w_2667_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_2668_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_1244 (
  .a(w_2667_8b),
  .b(w_2668_8b),
  .c(w_2669_8b),
  .clk(clk)
);
ABS_16b_pe abs_1245 (
  .a(w_2669_8b),
  .b(1'b0),
  .c(w_2672_8b),
  .clk(clk)
);
assign  w_2673_8b  =  w_2672_8b ;
assign  w_2674_16b  =  w_2673_8b ;
ADD_16b_pe add_1246 (
  .a(w_2674_16b),
  .b(w_2664_16b),
  .c(w_2675_16b),
  .clk(clk)
);
assign  w_2676_16b  =  r40_w_SAD_2a163_2_16b ;
assign  w_2679_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_2680_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_1247 (
  .a(w_2680_8b),
  .b(w_2679_8b),
  .c(w_2681_8b),
  .clk(clk)
);
ABS_16b_pe abs_1248 (
  .a(w_2681_8b),
  .b(1'b0),
  .c(w_2684_8b),
  .clk(clk)
);
assign  w_2685_8b  =  w_2684_8b ;
assign  w_2686_16b  =  w_2685_8b ;
ADD_16b_pe add_1249 (
  .a(w_2686_16b),
  .b(w_2676_16b),
  .c(w_2687_16b),
  .clk(clk)
);
assign  w_2688_16b  =  r41_w_SAD_2a163_2_16b ;
assign  w_2691_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_2692_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_1250 (
  .a(w_2692_8b),
  .b(w_2691_8b),
  .c(w_2693_8b),
  .clk(clk)
);
ABS_16b_pe abs_1251 (
  .a(w_2693_8b),
  .b(1'b0),
  .c(w_2696_8b),
  .clk(clk)
);
assign  w_2697_8b  =  w_2696_8b ;
assign  w_2698_16b  =  w_2697_8b ;
ADD_16b_pe add_1252 (
  .a(w_2698_16b),
  .b(w_2688_16b),
  .c(w_2699_16b),
  .clk(clk)
);
assign  w_2700_16b  =  r42_w_SAD_2a163_2_16b ;
assign  w_2703_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_2704_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_1253 (
  .a(w_2704_8b),
  .b(w_2703_8b),
  .c(w_2705_8b),
  .clk(clk)
);
ABS_16b_pe abs_1254 (
  .a(w_2705_8b),
  .b(1'b0),
  .c(w_2708_8b),
  .clk(clk)
);
assign  w_2709_8b  =  w_2708_8b ;
assign  w_2710_16b  =  w_2709_8b ;
ADD_16b_pe add_1255 (
  .a(w_2700_16b),
  .b(w_2710_16b),
  .c(w_2711_16b),
  .clk(clk)
);
assign  w_2712_16b  =  r43_w_SAD_2a163_2_16b ;
assign  w_2715_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_2716_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_1256 (
  .a(w_2716_8b),
  .b(w_2715_8b),
  .c(w_2717_8b),
  .clk(clk)
);
ABS_16b_pe abs_1257 (
  .a(w_2717_8b),
  .b(1'b0),
  .c(w_2720_8b),
  .clk(clk)
);
assign  w_2721_8b  =  w_2720_8b ;
assign  w_2722_16b  =  w_2721_8b ;
ADD_16b_pe add_1258 (
  .a(w_2712_16b),
  .b(w_2722_16b),
  .c(w_2723_16b),
  .clk(clk)
);
assign  w_2724_16b  =  r44_w_SAD_2a163_2_16b ;
assign  w_2727_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_2728_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_1259 (
  .a(w_2727_8b),
  .b(w_2728_8b),
  .c(w_2729_8b),
  .clk(clk)
);
ABS_16b_pe abs_1260 (
  .a(w_2729_8b),
  .b(1'b0),
  .c(w_2732_8b),
  .clk(clk)
);
assign  w_2733_8b  =  w_2732_8b ;
assign  w_2734_16b  =  w_2733_8b ;
ADD_16b_pe add_1261 (
  .a(w_2724_16b),
  .b(w_2734_16b),
  .c(w_2735_16b),
  .clk(clk)
);
assign  w_2736_16b  =  r45_w_SAD_2a163_2_16b ;
assign  w_2739_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_2740_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_1262 (
  .a(w_2739_8b),
  .b(w_2740_8b),
  .c(w_2741_8b),
  .clk(clk)
);
ABS_16b_pe abs_1263 (
  .a(w_2741_8b),
  .b(1'b0),
  .c(w_2744_8b),
  .clk(clk)
);
assign  w_2745_8b  =  w_2744_8b ;
assign  w_2746_16b  =  w_2745_8b ;
ADD_16b_pe add_1264 (
  .a(w_2736_16b),
  .b(w_2746_16b),
  .c(w_2747_16b),
  .clk(clk)
);
assign  w_2748_16b  =  r46_w_SAD_2a163_2_16b ;
assign  w_2751_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_2752_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_1265 (
  .a(w_2752_8b),
  .b(w_2751_8b),
  .c(w_2753_8b),
  .clk(clk)
);
ABS_16b_pe abs_1266 (
  .a(w_2753_8b),
  .b(1'b0),
  .c(w_2756_8b),
  .clk(clk)
);
assign  w_2757_8b  =  w_2756_8b ;
assign  w_2758_16b  =  w_2757_8b ;
ADD_16b_pe add_1267 (
  .a(w_2748_16b),
  .b(w_2758_16b),
  .c(w_2759_16b),
  .clk(clk)
);
assign  w_2760_16b  =  r47_w_SAD_2a163_2_16b ;
assign  w_2763_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2764_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_1268 (
  .a(w_2763_8b),
  .b(w_2764_8b),
  .c(w_2765_8b),
  .clk(clk)
);
ABS_16b_pe abs_1269 (
  .a(w_2765_8b),
  .b(1'b0),
  .c(w_2768_8b),
  .clk(clk)
);
assign  w_2769_8b  =  w_2768_8b ;
assign  w_2770_16b  =  w_2769_8b ;
ADD_16b_pe add_1270 (
  .a(w_2760_16b),
  .b(w_2770_16b),
  .c(w_2771_16b),
  .clk(clk)
);
assign  w_2772_16b  =  r48_w_SAD_2a163_2_16b ;
assign  w_2775_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2776_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_1271 (
  .a(w_2775_8b),
  .b(w_2776_8b),
  .c(w_2777_8b),
  .clk(clk)
);
ABS_16b_pe abs_1272 (
  .a(w_2777_8b),
  .b(1'b0),
  .c(w_2780_8b),
  .clk(clk)
);
assign  w_2781_8b  =  w_2780_8b ;
assign  w_2782_16b  =  w_2781_8b ;
ADD_16b_pe add_1273 (
  .a(w_2772_16b),
  .b(w_2782_16b),
  .c(w_2783_16b),
  .clk(clk)
);
assign  w_2784_16b  =  r49_w_SAD_2a163_2_16b ;
assign  w_2787_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2788_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_1274 (
  .a(w_2787_8b),
  .b(w_2788_8b),
  .c(w_2789_8b),
  .clk(clk)
);
ABS_16b_pe abs_1275 (
  .a(w_2789_8b),
  .b(1'b0),
  .c(w_2792_8b),
  .clk(clk)
);
assign  w_2793_8b  =  w_2792_8b ;
assign  w_2794_16b  =  w_2793_8b ;
ADD_16b_pe add_1276 (
  .a(w_2784_16b),
  .b(w_2794_16b),
  .c(w_2795_16b),
  .clk(clk)
);
assign  w_2796_16b  =  r50_w_SAD_2a163_2_16b ;
assign  w_2799_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2800_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_1277 (
  .a(w_2800_8b),
  .b(w_2799_8b),
  .c(w_2801_8b),
  .clk(clk)
);
ABS_16b_pe abs_1278 (
  .a(w_2801_8b),
  .b(1'b0),
  .c(w_2804_8b),
  .clk(clk)
);
assign  w_2805_8b  =  w_2804_8b ;
assign  w_2806_16b  =  w_2805_8b ;
ADD_16b_pe add_1279 (
  .a(w_2796_16b),
  .b(w_2806_16b),
  .c(w_2807_16b),
  .clk(clk)
);
assign  w_2808_16b  =  r51_w_SAD_2a163_2_16b ;
assign  w_2811_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2812_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_1280 (
  .a(w_2811_8b),
  .b(w_2812_8b),
  .c(w_2813_8b),
  .clk(clk)
);
ABS_16b_pe abs_1281 (
  .a(w_2813_8b),
  .b(1'b0),
  .c(w_2816_8b),
  .clk(clk)
);
assign  w_2817_8b  =  w_2816_8b ;
assign  w_2818_16b  =  w_2817_8b ;
ADD_16b_pe add_1282 (
  .a(w_2818_16b),
  .b(w_2808_16b),
  .c(w_2819_16b),
  .clk(clk)
);
assign  w_2820_16b  =  r52_w_SAD_2a163_2_16b ;
assign  w_2823_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2824_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_1283 (
  .a(w_2824_8b),
  .b(w_2823_8b),
  .c(w_2825_8b),
  .clk(clk)
);
ABS_16b_pe abs_1284 (
  .a(w_2825_8b),
  .b(1'b0),
  .c(w_2828_8b),
  .clk(clk)
);
assign  w_2829_8b  =  w_2828_8b ;
assign  w_2830_16b  =  w_2829_8b ;
ADD_16b_pe add_1285 (
  .a(w_2830_16b),
  .b(w_2820_16b),
  .c(w_2831_16b),
  .clk(clk)
);
assign  w_2832_16b  =  r53_w_SAD_2a163_2_16b ;
assign  w_2835_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2836_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_1286 (
  .a(w_2836_8b),
  .b(w_2835_8b),
  .c(w_2837_8b),
  .clk(clk)
);
ABS_16b_pe abs_1287 (
  .a(w_2837_8b),
  .b(1'b0),
  .c(w_2840_8b),
  .clk(clk)
);
assign  w_2841_8b  =  w_2840_8b ;
assign  w_2842_16b  =  w_2841_8b ;
ADD_16b_pe add_1288 (
  .a(w_2832_16b),
  .b(w_2842_16b),
  .c(w_2843_16b),
  .clk(clk)
);
assign  w_2844_16b  =  r54_w_SAD_2a163_2_16b ;
assign  w_2847_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_2848_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_1289 (
  .a(w_2847_8b),
  .b(w_2848_8b),
  .c(w_2849_8b),
  .clk(clk)
);
ABS_16b_pe abs_1290 (
  .a(w_2849_8b),
  .b(1'b0),
  .c(w_2852_8b),
  .clk(clk)
);
assign  w_2853_8b  =  w_2852_8b ;
assign  w_2854_16b  =  w_2853_8b ;
ADD_16b_pe add_1291 (
  .a(w_2854_16b),
  .b(w_2844_16b),
  .c(w_2855_16b),
  .clk(clk)
);
assign  w_2856_16b  =  r55_w_SAD_2a163_2_16b ;
assign  w_2859_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2860_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_1292 (
  .a(w_2860_8b),
  .b(w_2859_8b),
  .c(w_2861_8b),
  .clk(clk)
);
ABS_16b_pe abs_1293 (
  .a(w_2861_8b),
  .b(1'b0),
  .c(w_2864_8b),
  .clk(clk)
);
assign  w_2865_8b  =  w_2864_8b ;
assign  w_2866_16b  =  w_2865_8b ;
ADD_16b_pe add_1294 (
  .a(w_2856_16b),
  .b(w_2866_16b),
  .c(w_2867_16b),
  .clk(clk)
);
assign  w_2868_16b  =  r56_w_SAD_2a163_2_16b ;
assign  w_2871_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2872_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_1295 (
  .a(w_2872_8b),
  .b(w_2871_8b),
  .c(w_2873_8b),
  .clk(clk)
);
ABS_16b_pe abs_1296 (
  .a(w_2873_8b),
  .b(1'b0),
  .c(w_2876_8b),
  .clk(clk)
);
assign  w_2877_8b  =  w_2876_8b ;
assign  w_2878_16b  =  w_2877_8b ;
ADD_16b_pe add_1297 (
  .a(w_2868_16b),
  .b(w_2878_16b),
  .c(w_2879_16b),
  .clk(clk)
);
assign  w_2880_16b  =  r57_w_SAD_2a163_2_16b ;
assign  w_2883_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2884_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_1298 (
  .a(w_2883_8b),
  .b(w_2884_8b),
  .c(w_2885_8b),
  .clk(clk)
);
ABS_16b_pe abs_1299 (
  .a(w_2885_8b),
  .b(1'b0),
  .c(w_2888_8b),
  .clk(clk)
);
assign  w_2889_8b  =  w_2888_8b ;
assign  w_2890_16b  =  w_2889_8b ;
ADD_16b_pe add_1300 (
  .a(w_2890_16b),
  .b(w_2880_16b),
  .c(w_2891_16b),
  .clk(clk)
);
assign  w_2892_16b  =  r58_w_SAD_2a163_2_16b ;
assign  w_2895_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2896_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_1301 (
  .a(w_2895_8b),
  .b(w_2896_8b),
  .c(w_2897_8b),
  .clk(clk)
);
ABS_16b_pe abs_1302 (
  .a(w_2897_8b),
  .b(1'b0),
  .c(w_2900_8b),
  .clk(clk)
);
assign  w_2901_8b  =  w_2900_8b ;
assign  w_2902_16b  =  w_2901_8b ;
ADD_16b_pe add_1303 (
  .a(w_2902_16b),
  .b(w_2892_16b),
  .c(w_2903_16b),
  .clk(clk)
);
assign  w_2904_16b  =  r59_w_SAD_2a163_2_16b ;
assign  w_2907_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2908_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_1304 (
  .a(w_2908_8b),
  .b(w_2907_8b),
  .c(w_2909_8b),
  .clk(clk)
);
ABS_16b_pe abs_1305 (
  .a(w_2909_8b),
  .b(1'b0),
  .c(w_2912_8b),
  .clk(clk)
);
assign  w_2913_8b  =  w_2912_8b ;
assign  w_2914_16b  =  w_2913_8b ;
ADD_16b_pe add_1306 (
  .a(w_2914_16b),
  .b(w_2904_16b),
  .c(w_2915_16b),
  .clk(clk)
);
assign  w_2916_16b  =  r60_w_SAD_2a163_2_16b ;
assign  w_2919_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2920_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_1307 (
  .a(w_2920_8b),
  .b(w_2919_8b),
  .c(w_2921_8b),
  .clk(clk)
);
ABS_16b_pe abs_1308 (
  .a(w_2921_8b),
  .b(1'b0),
  .c(w_2924_8b),
  .clk(clk)
);
assign  w_2925_8b  =  w_2924_8b ;
assign  w_2926_16b  =  w_2925_8b ;
ADD_16b_pe add_1309 (
  .a(w_2916_16b),
  .b(w_2926_16b),
  .c(w_2927_16b),
  .clk(clk)
);
assign  w_2928_16b  =  r61_w_SAD_2a163_2_16b ;
assign  w_2931_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2932_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_1310 (
  .a(w_2932_8b),
  .b(w_2931_8b),
  .c(w_2933_8b),
  .clk(clk)
);
ABS_16b_pe abs_1311 (
  .a(w_2933_8b),
  .b(1'b0),
  .c(w_2936_8b),
  .clk(clk)
);
assign  w_2937_8b  =  w_2936_8b ;
assign  w_2938_16b  =  w_2937_8b ;
ADD_16b_pe add_1312 (
  .a(w_2928_16b),
  .b(w_2938_16b),
  .c(w_2939_16b),
  .clk(clk)
);
assign  w_2940_16b  =  r62_w_SAD_2a163_2_16b ;
assign  w_2943_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_2944_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_1313 (
  .a(w_2944_8b),
  .b(w_2943_8b),
  .c(w_2945_8b),
  .clk(clk)
);
ABS_16b_pe abs_1314 (
  .a(w_2945_8b),
  .b(1'b0),
  .c(w_2948_8b),
  .clk(clk)
);
assign  w_2949_8b  =  w_2948_8b ;
assign  w_2950_16b  =  w_2949_8b ;
ADD_16b_pe add_1315 (
  .a(w_2950_16b),
  .b(w_2940_16b),
  .c(w_2951_16b),
  .clk(clk)
);
assign  w_2952_16b  = 1'b0;
assign  w_2955_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2956_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_1316 (
  .a(w_2955_8b),
  .b(w_2956_8b),
  .c(w_2957_8b),
  .clk(clk)
);
ABS_16b_pe abs_1317 (
  .a(w_2957_8b),
  .b(1'b0),
  .c(w_2960_8b),
  .clk(clk)
);
assign  w_2961_8b  =  w_2960_8b ;
assign  w_2962_16b  =  w_2961_8b ;
ADD_16b_pe add_1318 (
  .a(w_2952_16b),
  .b(w_2962_16b),
  .c(w_2963_16b),
  .clk(clk)
);
assign  w_2964_16b  =  r0_w_SAD_2a163_3_16b ;
assign  w_2967_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2968_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_1319 (
  .a(w_2967_8b),
  .b(w_2968_8b),
  .c(w_2969_8b),
  .clk(clk)
);
ABS_16b_pe abs_1320 (
  .a(w_2969_8b),
  .b(1'b0),
  .c(w_2972_8b),
  .clk(clk)
);
assign  w_2973_8b  =  w_2972_8b ;
assign  w_2974_16b  =  w_2973_8b ;
ADD_16b_pe add_1321 (
  .a(w_2964_16b),
  .b(w_2974_16b),
  .c(w_2975_16b),
  .clk(clk)
);
assign  w_2976_16b  =  r1_w_SAD_2a163_3_16b ;
assign  w_2979_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2980_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_1322 (
  .a(w_2980_8b),
  .b(w_2979_8b),
  .c(w_2981_8b),
  .clk(clk)
);
ABS_16b_pe abs_1323 (
  .a(w_2981_8b),
  .b(1'b0),
  .c(w_2984_8b),
  .clk(clk)
);
assign  w_2985_8b  =  w_2984_8b ;
assign  w_2986_16b  =  w_2985_8b ;
ADD_16b_pe add_1324 (
  .a(w_2976_16b),
  .b(w_2986_16b),
  .c(w_2987_16b),
  .clk(clk)
);
assign  w_2988_16b  =  r2_w_SAD_2a163_3_16b ;
assign  w_2991_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_2992_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_1325 (
  .a(w_2991_8b),
  .b(w_2992_8b),
  .c(w_2993_8b),
  .clk(clk)
);
ABS_16b_pe abs_1326 (
  .a(w_2993_8b),
  .b(1'b0),
  .c(w_2996_8b),
  .clk(clk)
);
assign  w_2997_8b  =  w_2996_8b ;
assign  w_2998_16b  =  w_2997_8b ;
ADD_16b_pe add_1327 (
  .a(w_2988_16b),
  .b(w_2998_16b),
  .c(w_2999_16b),
  .clk(clk)
);
assign  w_3000_16b  =  r3_w_SAD_2a163_3_16b ;
assign  w_3003_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3004_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_1328 (
  .a(w_3003_8b),
  .b(w_3004_8b),
  .c(w_3005_8b),
  .clk(clk)
);
ABS_16b_pe abs_1329 (
  .a(w_3005_8b),
  .b(1'b0),
  .c(w_3008_8b),
  .clk(clk)
);
assign  w_3009_8b  =  w_3008_8b ;
assign  w_3010_16b  =  w_3009_8b ;
ADD_16b_pe add_1330 (
  .a(w_3000_16b),
  .b(w_3010_16b),
  .c(w_3011_16b),
  .clk(clk)
);
assign  w_3012_16b  =  r4_w_SAD_2a163_3_16b ;
assign  w_3015_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3016_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_1331 (
  .a(w_3016_8b),
  .b(w_3015_8b),
  .c(w_3017_8b),
  .clk(clk)
);
ABS_16b_pe abs_1332 (
  .a(w_3017_8b),
  .b(1'b0),
  .c(w_3020_8b),
  .clk(clk)
);
assign  w_3021_8b  =  w_3020_8b ;
assign  w_3022_16b  =  w_3021_8b ;
ADD_16b_pe add_1333 (
  .a(w_3012_16b),
  .b(w_3022_16b),
  .c(w_3023_16b),
  .clk(clk)
);
assign  w_3024_16b  =  r5_w_SAD_2a163_3_16b ;
assign  w_3027_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3028_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_1334 (
  .a(w_3028_8b),
  .b(w_3027_8b),
  .c(w_3029_8b),
  .clk(clk)
);
ABS_16b_pe abs_1335 (
  .a(w_3029_8b),
  .b(1'b0),
  .c(w_3032_8b),
  .clk(clk)
);
assign  w_3033_8b  =  w_3032_8b ;
assign  w_3034_16b  =  w_3033_8b ;
ADD_16b_pe add_1336 (
  .a(w_3034_16b),
  .b(w_3024_16b),
  .c(w_3035_16b),
  .clk(clk)
);
assign  w_3036_16b  =  r6_w_SAD_2a163_3_16b ;
assign  w_3039_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3040_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_1337 (
  .a(w_3039_8b),
  .b(w_3040_8b),
  .c(w_3041_8b),
  .clk(clk)
);
ABS_16b_pe abs_1338 (
  .a(w_3041_8b),
  .b(1'b0),
  .c(w_3044_8b),
  .clk(clk)
);
assign  w_3045_8b  =  w_3044_8b ;
assign  w_3046_16b  =  w_3045_8b ;
ADD_16b_pe add_1339 (
  .a(w_3036_16b),
  .b(w_3046_16b),
  .c(w_3047_16b),
  .clk(clk)
);
assign  w_3048_16b  =  r7_w_SAD_2a163_3_16b ;
assign  w_3051_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3052_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_1340 (
  .a(w_3052_8b),
  .b(w_3051_8b),
  .c(w_3053_8b),
  .clk(clk)
);
ABS_16b_pe abs_1341 (
  .a(w_3053_8b),
  .b(1'b0),
  .c(w_3056_8b),
  .clk(clk)
);
assign  w_3057_8b  =  w_3056_8b ;
assign  w_3058_16b  =  w_3057_8b ;
ADD_16b_pe add_1342 (
  .a(w_3048_16b),
  .b(w_3058_16b),
  .c(w_3059_16b),
  .clk(clk)
);
assign  w_3060_16b  =  r8_w_SAD_2a163_3_16b ;
assign  w_3063_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3064_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_1343 (
  .a(w_3064_8b),
  .b(w_3063_8b),
  .c(w_3065_8b),
  .clk(clk)
);
ABS_16b_pe abs_1344 (
  .a(w_3065_8b),
  .b(1'b0),
  .c(w_3068_8b),
  .clk(clk)
);
assign  w_3069_8b  =  w_3068_8b ;
assign  w_3070_16b  =  w_3069_8b ;
ADD_16b_pe add_1345 (
  .a(w_3070_16b),
  .b(w_3060_16b),
  .c(w_3071_16b),
  .clk(clk)
);
assign  w_3072_16b  =  r9_w_SAD_2a163_3_16b ;
assign  w_3075_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3076_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_1346 (
  .a(w_3075_8b),
  .b(w_3076_8b),
  .c(w_3077_8b),
  .clk(clk)
);
ABS_16b_pe abs_1347 (
  .a(w_3077_8b),
  .b(1'b0),
  .c(w_3080_8b),
  .clk(clk)
);
assign  w_3081_8b  =  w_3080_8b ;
assign  w_3082_16b  =  w_3081_8b ;
ADD_16b_pe add_1348 (
  .a(w_3072_16b),
  .b(w_3082_16b),
  .c(w_3083_16b),
  .clk(clk)
);
assign  w_3084_16b  =  r10_w_SAD_2a163_3_16b ;
assign  w_3087_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3088_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_1349 (
  .a(w_3088_8b),
  .b(w_3087_8b),
  .c(w_3089_8b),
  .clk(clk)
);
ABS_16b_pe abs_1350 (
  .a(w_3089_8b),
  .b(1'b0),
  .c(w_3092_8b),
  .clk(clk)
);
assign  w_3093_8b  =  w_3092_8b ;
assign  w_3094_16b  =  w_3093_8b ;
ADD_16b_pe add_1351 (
  .a(w_3084_16b),
  .b(w_3094_16b),
  .c(w_3095_16b),
  .clk(clk)
);
assign  w_3096_16b  =  r11_w_SAD_2a163_3_16b ;
assign  w_3099_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3100_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_1352 (
  .a(w_3100_8b),
  .b(w_3099_8b),
  .c(w_3101_8b),
  .clk(clk)
);
ABS_16b_pe abs_1353 (
  .a(w_3101_8b),
  .b(1'b0),
  .c(w_3104_8b),
  .clk(clk)
);
assign  w_3105_8b  =  w_3104_8b ;
assign  w_3106_16b  =  w_3105_8b ;
ADD_16b_pe add_1354 (
  .a(w_3096_16b),
  .b(w_3106_16b),
  .c(w_3107_16b),
  .clk(clk)
);
assign  w_3108_16b  =  r12_w_SAD_2a163_3_16b ;
assign  w_3111_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3112_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_1355 (
  .a(w_3112_8b),
  .b(w_3111_8b),
  .c(w_3113_8b),
  .clk(clk)
);
ABS_16b_pe abs_1356 (
  .a(w_3113_8b),
  .b(1'b0),
  .c(w_3116_8b),
  .clk(clk)
);
assign  w_3117_8b  =  w_3116_8b ;
assign  w_3118_16b  =  w_3117_8b ;
ADD_16b_pe add_1357 (
  .a(w_3108_16b),
  .b(w_3118_16b),
  .c(w_3119_16b),
  .clk(clk)
);
assign  w_3120_16b  =  r13_w_SAD_2a163_3_16b ;
assign  w_3123_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3124_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_1358 (
  .a(w_3124_8b),
  .b(w_3123_8b),
  .c(w_3125_8b),
  .clk(clk)
);
ABS_16b_pe abs_1359 (
  .a(w_3125_8b),
  .b(1'b0),
  .c(w_3128_8b),
  .clk(clk)
);
assign  w_3129_8b  =  w_3128_8b ;
assign  w_3130_16b  =  w_3129_8b ;
ADD_16b_pe add_1360 (
  .a(w_3130_16b),
  .b(w_3120_16b),
  .c(w_3131_16b),
  .clk(clk)
);
assign  w_3132_16b  =  r14_w_SAD_2a163_3_16b ;
assign  w_3135_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3136_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_1361 (
  .a(w_3135_8b),
  .b(w_3136_8b),
  .c(w_3137_8b),
  .clk(clk)
);
ABS_16b_pe abs_1362 (
  .a(w_3137_8b),
  .b(1'b0),
  .c(w_3140_8b),
  .clk(clk)
);
assign  w_3141_8b  =  w_3140_8b ;
assign  w_3142_16b  =  w_3141_8b ;
ADD_16b_pe add_1363 (
  .a(w_3142_16b),
  .b(w_3132_16b),
  .c(w_3143_16b),
  .clk(clk)
);
assign  w_3144_16b  =  r15_w_SAD_2a163_3_16b ;
assign  w_3147_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3148_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_1364 (
  .a(w_3147_8b),
  .b(w_3148_8b),
  .c(w_3149_8b),
  .clk(clk)
);
ABS_16b_pe abs_1365 (
  .a(w_3149_8b),
  .b(1'b0),
  .c(w_3152_8b),
  .clk(clk)
);
assign  w_3153_8b  =  w_3152_8b ;
assign  w_3154_16b  =  w_3153_8b ;
ADD_16b_pe add_1366 (
  .a(w_3144_16b),
  .b(w_3154_16b),
  .c(w_3155_16b),
  .clk(clk)
);
assign  w_3156_16b  =  r16_w_SAD_2a163_3_16b ;
assign  w_3159_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3160_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_1367 (
  .a(w_3159_8b),
  .b(w_3160_8b),
  .c(w_3161_8b),
  .clk(clk)
);
ABS_16b_pe abs_1368 (
  .a(w_3161_8b),
  .b(1'b0),
  .c(w_3164_8b),
  .clk(clk)
);
assign  w_3165_8b  =  w_3164_8b ;
assign  w_3166_16b  =  w_3165_8b ;
ADD_16b_pe add_1369 (
  .a(w_3166_16b),
  .b(w_3156_16b),
  .c(w_3167_16b),
  .clk(clk)
);
assign  w_3168_16b  =  r17_w_SAD_2a163_3_16b ;
assign  w_3171_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3172_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_1370 (
  .a(w_3171_8b),
  .b(w_3172_8b),
  .c(w_3173_8b),
  .clk(clk)
);
ABS_16b_pe abs_1371 (
  .a(w_3173_8b),
  .b(1'b0),
  .c(w_3176_8b),
  .clk(clk)
);
assign  w_3177_8b  =  w_3176_8b ;
assign  w_3178_16b  =  w_3177_8b ;
ADD_16b_pe add_1372 (
  .a(w_3178_16b),
  .b(w_3168_16b),
  .c(w_3179_16b),
  .clk(clk)
);
assign  w_3180_16b  =  r18_w_SAD_2a163_3_16b ;
assign  w_3183_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3184_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_1373 (
  .a(w_3183_8b),
  .b(w_3184_8b),
  .c(w_3185_8b),
  .clk(clk)
);
ABS_16b_pe abs_1374 (
  .a(w_3185_8b),
  .b(1'b0),
  .c(w_3188_8b),
  .clk(clk)
);
assign  w_3189_8b  =  w_3188_8b ;
assign  w_3190_16b  =  w_3189_8b ;
ADD_16b_pe add_1375 (
  .a(w_3180_16b),
  .b(w_3190_16b),
  .c(w_3191_16b),
  .clk(clk)
);
assign  w_3192_16b  =  r19_w_SAD_2a163_3_16b ;
assign  w_3195_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3196_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_1376 (
  .a(w_3196_8b),
  .b(w_3195_8b),
  .c(w_3197_8b),
  .clk(clk)
);
ABS_16b_pe abs_1377 (
  .a(w_3197_8b),
  .b(1'b0),
  .c(w_3200_8b),
  .clk(clk)
);
assign  w_3201_8b  =  w_3200_8b ;
assign  w_3202_16b  =  w_3201_8b ;
ADD_16b_pe add_1378 (
  .a(w_3202_16b),
  .b(w_3192_16b),
  .c(w_3203_16b),
  .clk(clk)
);
assign  w_3204_16b  =  r20_w_SAD_2a163_3_16b ;
assign  w_3207_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3208_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_1379 (
  .a(w_3208_8b),
  .b(w_3207_8b),
  .c(w_3209_8b),
  .clk(clk)
);
ABS_16b_pe abs_1380 (
  .a(w_3209_8b),
  .b(1'b0),
  .c(w_3212_8b),
  .clk(clk)
);
assign  w_3213_8b  =  w_3212_8b ;
assign  w_3214_16b  =  w_3213_8b ;
ADD_16b_pe add_1381 (
  .a(w_3214_16b),
  .b(w_3204_16b),
  .c(w_3215_16b),
  .clk(clk)
);
assign  w_3216_16b  =  r21_w_SAD_2a163_3_16b ;
assign  w_3219_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3220_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_1382 (
  .a(w_3220_8b),
  .b(w_3219_8b),
  .c(w_3221_8b),
  .clk(clk)
);
ABS_16b_pe abs_1383 (
  .a(w_3221_8b),
  .b(1'b0),
  .c(w_3224_8b),
  .clk(clk)
);
assign  w_3225_8b  =  w_3224_8b ;
assign  w_3226_16b  =  w_3225_8b ;
ADD_16b_pe add_1384 (
  .a(w_3216_16b),
  .b(w_3226_16b),
  .c(w_3227_16b),
  .clk(clk)
);
assign  w_3228_16b  =  r22_w_SAD_2a163_3_16b ;
assign  w_3231_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3232_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_1385 (
  .a(w_3232_8b),
  .b(w_3231_8b),
  .c(w_3233_8b),
  .clk(clk)
);
ABS_16b_pe abs_1386 (
  .a(w_3233_8b),
  .b(1'b0),
  .c(w_3236_8b),
  .clk(clk)
);
assign  w_3237_8b  =  w_3236_8b ;
assign  w_3238_16b  =  w_3237_8b ;
ADD_16b_pe add_1387 (
  .a(w_3228_16b),
  .b(w_3238_16b),
  .c(w_3239_16b),
  .clk(clk)
);
assign  w_3240_16b  =  r23_w_SAD_2a163_3_16b ;
assign  w_3243_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_3244_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_1388 (
  .a(w_3244_8b),
  .b(w_3243_8b),
  .c(w_3245_8b),
  .clk(clk)
);
ABS_16b_pe abs_1389 (
  .a(w_3245_8b),
  .b(1'b0),
  .c(w_3248_8b),
  .clk(clk)
);
assign  w_3249_8b  =  w_3248_8b ;
assign  w_3250_16b  =  w_3249_8b ;
ADD_16b_pe add_1390 (
  .a(w_3250_16b),
  .b(w_3240_16b),
  .c(w_3251_16b),
  .clk(clk)
);
assign  w_3252_16b  =  r24_w_SAD_2a163_3_16b ;
assign  w_3255_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_3256_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_1391 (
  .a(w_3255_8b),
  .b(w_3256_8b),
  .c(w_3257_8b),
  .clk(clk)
);
ABS_16b_pe abs_1392 (
  .a(w_3257_8b),
  .b(1'b0),
  .c(w_3260_8b),
  .clk(clk)
);
assign  w_3261_8b  =  w_3260_8b ;
assign  w_3262_16b  =  w_3261_8b ;
ADD_16b_pe add_1393 (
  .a(w_3252_16b),
  .b(w_3262_16b),
  .c(w_3263_16b),
  .clk(clk)
);
assign  w_3264_16b  =  r25_w_SAD_2a163_3_16b ;
assign  w_3267_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_3268_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_1394 (
  .a(w_3267_8b),
  .b(w_3268_8b),
  .c(w_3269_8b),
  .clk(clk)
);
ABS_16b_pe abs_1395 (
  .a(w_3269_8b),
  .b(1'b0),
  .c(w_3272_8b),
  .clk(clk)
);
assign  w_3273_8b  =  w_3272_8b ;
assign  w_3274_16b  =  w_3273_8b ;
ADD_16b_pe add_1396 (
  .a(w_3264_16b),
  .b(w_3274_16b),
  .c(w_3275_16b),
  .clk(clk)
);
assign  w_3276_16b  =  r26_w_SAD_2a163_3_16b ;
assign  w_3279_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_3280_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_1397 (
  .a(w_3280_8b),
  .b(w_3279_8b),
  .c(w_3281_8b),
  .clk(clk)
);
ABS_16b_pe abs_1398 (
  .a(w_3281_8b),
  .b(1'b0),
  .c(w_3284_8b),
  .clk(clk)
);
assign  w_3285_8b  =  w_3284_8b ;
assign  w_3286_16b  =  w_3285_8b ;
ADD_16b_pe add_1399 (
  .a(w_3276_16b),
  .b(w_3286_16b),
  .c(w_3287_16b),
  .clk(clk)
);
assign  w_3288_16b  =  r27_w_SAD_2a163_3_16b ;
assign  w_3291_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_3292_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_1400 (
  .a(w_3291_8b),
  .b(w_3292_8b),
  .c(w_3293_8b),
  .clk(clk)
);
ABS_16b_pe abs_1401 (
  .a(w_3293_8b),
  .b(1'b0),
  .c(w_3296_8b),
  .clk(clk)
);
assign  w_3297_8b  =  w_3296_8b ;
assign  w_3298_16b  =  w_3297_8b ;
ADD_16b_pe add_1402 (
  .a(w_3288_16b),
  .b(w_3298_16b),
  .c(w_3299_16b),
  .clk(clk)
);
assign  w_3300_16b  =  r28_w_SAD_2a163_3_16b ;
assign  w_3303_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_3304_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_1403 (
  .a(w_3303_8b),
  .b(w_3304_8b),
  .c(w_3305_8b),
  .clk(clk)
);
ABS_16b_pe abs_1404 (
  .a(w_3305_8b),
  .b(1'b0),
  .c(w_3308_8b),
  .clk(clk)
);
assign  w_3309_8b  =  w_3308_8b ;
assign  w_3310_16b  =  w_3309_8b ;
ADD_16b_pe add_1405 (
  .a(w_3310_16b),
  .b(w_3300_16b),
  .c(w_3311_16b),
  .clk(clk)
);
assign  w_3312_16b  =  r29_w_SAD_2a163_3_16b ;
assign  w_3315_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_3316_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_1406 (
  .a(w_3315_8b),
  .b(w_3316_8b),
  .c(w_3317_8b),
  .clk(clk)
);
ABS_16b_pe abs_1407 (
  .a(w_3317_8b),
  .b(1'b0),
  .c(w_3320_8b),
  .clk(clk)
);
assign  w_3321_8b  =  w_3320_8b ;
assign  w_3322_16b  =  w_3321_8b ;
ADD_16b_pe add_1408 (
  .a(w_3312_16b),
  .b(w_3322_16b),
  .c(w_3323_16b),
  .clk(clk)
);
assign  w_3324_16b  =  r30_w_SAD_2a163_3_16b ;
assign  w_3327_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_3328_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_1409 (
  .a(w_3327_8b),
  .b(w_3328_8b),
  .c(w_3329_8b),
  .clk(clk)
);
ABS_16b_pe abs_1410 (
  .a(w_3329_8b),
  .b(1'b0),
  .c(w_3332_8b),
  .clk(clk)
);
assign  w_3333_8b  =  w_3332_8b ;
assign  w_3334_16b  =  w_3333_8b ;
ADD_16b_pe add_1411 (
  .a(w_3324_16b),
  .b(w_3334_16b),
  .c(w_3335_16b),
  .clk(clk)
);
assign  w_3336_16b  =  r31_w_SAD_2a163_3_16b ;
assign  w_3339_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_3340_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_1412 (
  .a(w_3339_8b),
  .b(w_3340_8b),
  .c(w_3341_8b),
  .clk(clk)
);
ABS_16b_pe abs_1413 (
  .a(w_3341_8b),
  .b(1'b0),
  .c(w_3344_8b),
  .clk(clk)
);
assign  w_3345_8b  =  w_3344_8b ;
assign  w_3346_16b  =  w_3345_8b ;
ADD_16b_pe add_1414 (
  .a(w_3346_16b),
  .b(w_3336_16b),
  .c(w_3347_16b),
  .clk(clk)
);
assign  w_3348_16b  =  r32_w_SAD_2a163_3_16b ;
assign  w_3351_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_3352_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_1415 (
  .a(w_3351_8b),
  .b(w_3352_8b),
  .c(w_3353_8b),
  .clk(clk)
);
ABS_16b_pe abs_1416 (
  .a(w_3353_8b),
  .b(1'b0),
  .c(w_3356_8b),
  .clk(clk)
);
assign  w_3357_8b  =  w_3356_8b ;
assign  w_3358_16b  =  w_3357_8b ;
ADD_16b_pe add_1417 (
  .a(w_3358_16b),
  .b(w_3348_16b),
  .c(w_3359_16b),
  .clk(clk)
);
assign  w_3360_16b  =  r33_w_SAD_2a163_3_16b ;
assign  w_3363_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_3364_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_1418 (
  .a(w_3363_8b),
  .b(w_3364_8b),
  .c(w_3365_8b),
  .clk(clk)
);
ABS_16b_pe abs_1419 (
  .a(w_3365_8b),
  .b(1'b0),
  .c(w_3368_8b),
  .clk(clk)
);
assign  w_3369_8b  =  w_3368_8b ;
assign  w_3370_16b  =  w_3369_8b ;
ADD_16b_pe add_1420 (
  .a(w_3360_16b),
  .b(w_3370_16b),
  .c(w_3371_16b),
  .clk(clk)
);
assign  w_3372_16b  =  r34_w_SAD_2a163_3_16b ;
assign  w_3375_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_3376_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_1421 (
  .a(w_3376_8b),
  .b(w_3375_8b),
  .c(w_3377_8b),
  .clk(clk)
);
ABS_16b_pe abs_1422 (
  .a(w_3377_8b),
  .b(1'b0),
  .c(w_3380_8b),
  .clk(clk)
);
assign  w_3381_8b  =  w_3380_8b ;
assign  w_3382_16b  =  w_3381_8b ;
ADD_16b_pe add_1423 (
  .a(w_3382_16b),
  .b(w_3372_16b),
  .c(w_3383_16b),
  .clk(clk)
);
assign  w_3384_16b  =  r35_w_SAD_2a163_3_16b ;
assign  w_3387_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_3388_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_1424 (
  .a(w_3388_8b),
  .b(w_3387_8b),
  .c(w_3389_8b),
  .clk(clk)
);
ABS_16b_pe abs_1425 (
  .a(w_3389_8b),
  .b(1'b0),
  .c(w_3392_8b),
  .clk(clk)
);
assign  w_3393_8b  =  w_3392_8b ;
assign  w_3394_16b  =  w_3393_8b ;
ADD_16b_pe add_1426 (
  .a(w_3394_16b),
  .b(w_3384_16b),
  .c(w_3395_16b),
  .clk(clk)
);
assign  w_3396_16b  =  r36_w_SAD_2a163_3_16b ;
assign  w_3399_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_3400_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_1427 (
  .a(w_3399_8b),
  .b(w_3400_8b),
  .c(w_3401_8b),
  .clk(clk)
);
ABS_16b_pe abs_1428 (
  .a(w_3401_8b),
  .b(1'b0),
  .c(w_3404_8b),
  .clk(clk)
);
assign  w_3405_8b  =  w_3404_8b ;
assign  w_3406_16b  =  w_3405_8b ;
ADD_16b_pe add_1429 (
  .a(w_3406_16b),
  .b(w_3396_16b),
  .c(w_3407_16b),
  .clk(clk)
);
assign  w_3408_16b  =  r37_w_SAD_2a163_3_16b ;
assign  w_3411_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_3412_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_1430 (
  .a(w_3412_8b),
  .b(w_3411_8b),
  .c(w_3413_8b),
  .clk(clk)
);
ABS_16b_pe abs_1431 (
  .a(w_3413_8b),
  .b(1'b0),
  .c(w_3416_8b),
  .clk(clk)
);
assign  w_3417_8b  =  w_3416_8b ;
assign  w_3418_16b  =  w_3417_8b ;
ADD_16b_pe add_1432 (
  .a(w_3408_16b),
  .b(w_3418_16b),
  .c(w_3419_16b),
  .clk(clk)
);
assign  w_3420_16b  =  r38_w_SAD_2a163_3_16b ;
assign  w_3423_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_3424_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_1433 (
  .a(w_3424_8b),
  .b(w_3423_8b),
  .c(w_3425_8b),
  .clk(clk)
);
ABS_16b_pe abs_1434 (
  .a(w_3425_8b),
  .b(1'b0),
  .c(w_3428_8b),
  .clk(clk)
);
assign  w_3429_8b  =  w_3428_8b ;
assign  w_3430_16b  =  w_3429_8b ;
ADD_16b_pe add_1435 (
  .a(w_3430_16b),
  .b(w_3420_16b),
  .c(w_3431_16b),
  .clk(clk)
);
assign  w_3432_16b  =  r39_w_SAD_2a163_3_16b ;
assign  w_3435_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_3436_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_1436 (
  .a(w_3435_8b),
  .b(w_3436_8b),
  .c(w_3437_8b),
  .clk(clk)
);
ABS_16b_pe abs_1437 (
  .a(w_3437_8b),
  .b(1'b0),
  .c(w_3440_8b),
  .clk(clk)
);
assign  w_3441_8b  =  w_3440_8b ;
assign  w_3442_16b  =  w_3441_8b ;
ADD_16b_pe add_1438 (
  .a(w_3432_16b),
  .b(w_3442_16b),
  .c(w_3443_16b),
  .clk(clk)
);
assign  w_3444_16b  =  r40_w_SAD_2a163_3_16b ;
assign  w_3447_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_3448_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_1439 (
  .a(w_3448_8b),
  .b(w_3447_8b),
  .c(w_3449_8b),
  .clk(clk)
);
ABS_16b_pe abs_1440 (
  .a(w_3449_8b),
  .b(1'b0),
  .c(w_3452_8b),
  .clk(clk)
);
assign  w_3453_8b  =  w_3452_8b ;
assign  w_3454_16b  =  w_3453_8b ;
ADD_16b_pe add_1441 (
  .a(w_3444_16b),
  .b(w_3454_16b),
  .c(w_3455_16b),
  .clk(clk)
);
assign  w_3456_16b  =  r41_w_SAD_2a163_3_16b ;
assign  w_3459_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_3460_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_1442 (
  .a(w_3459_8b),
  .b(w_3460_8b),
  .c(w_3461_8b),
  .clk(clk)
);
ABS_16b_pe abs_1443 (
  .a(w_3461_8b),
  .b(1'b0),
  .c(w_3464_8b),
  .clk(clk)
);
assign  w_3465_8b  =  w_3464_8b ;
assign  w_3466_16b  =  w_3465_8b ;
ADD_16b_pe add_1444 (
  .a(w_3456_16b),
  .b(w_3466_16b),
  .c(w_3467_16b),
  .clk(clk)
);
assign  w_3468_16b  =  r42_w_SAD_2a163_3_16b ;
assign  w_3471_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_3472_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_1445 (
  .a(w_3471_8b),
  .b(w_3472_8b),
  .c(w_3473_8b),
  .clk(clk)
);
ABS_16b_pe abs_1446 (
  .a(w_3473_8b),
  .b(1'b0),
  .c(w_3476_8b),
  .clk(clk)
);
assign  w_3477_8b  =  w_3476_8b ;
assign  w_3478_16b  =  w_3477_8b ;
ADD_16b_pe add_1447 (
  .a(w_3468_16b),
  .b(w_3478_16b),
  .c(w_3479_16b),
  .clk(clk)
);
assign  w_3480_16b  =  r43_w_SAD_2a163_3_16b ;
assign  w_3483_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_3484_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_1448 (
  .a(w_3484_8b),
  .b(w_3483_8b),
  .c(w_3485_8b),
  .clk(clk)
);
ABS_16b_pe abs_1449 (
  .a(w_3485_8b),
  .b(1'b0),
  .c(w_3488_8b),
  .clk(clk)
);
assign  w_3489_8b  =  w_3488_8b ;
assign  w_3490_16b  =  w_3489_8b ;
ADD_16b_pe add_1450 (
  .a(w_3480_16b),
  .b(w_3490_16b),
  .c(w_3491_16b),
  .clk(clk)
);
assign  w_3492_16b  =  r44_w_SAD_2a163_3_16b ;
assign  w_3495_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_3496_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_1451 (
  .a(w_3496_8b),
  .b(w_3495_8b),
  .c(w_3497_8b),
  .clk(clk)
);
ABS_16b_pe abs_1452 (
  .a(w_3497_8b),
  .b(1'b0),
  .c(w_3500_8b),
  .clk(clk)
);
assign  w_3501_8b  =  w_3500_8b ;
assign  w_3502_16b  =  w_3501_8b ;
ADD_16b_pe add_1453 (
  .a(w_3492_16b),
  .b(w_3502_16b),
  .c(w_3503_16b),
  .clk(clk)
);
assign  w_3504_16b  =  r45_w_SAD_2a163_3_16b ;
assign  w_3507_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_3508_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_1454 (
  .a(w_3507_8b),
  .b(w_3508_8b),
  .c(w_3509_8b),
  .clk(clk)
);
ABS_16b_pe abs_1455 (
  .a(w_3509_8b),
  .b(1'b0),
  .c(w_3512_8b),
  .clk(clk)
);
assign  w_3513_8b  =  w_3512_8b ;
assign  w_3514_16b  =  w_3513_8b ;
ADD_16b_pe add_1456 (
  .a(w_3504_16b),
  .b(w_3514_16b),
  .c(w_3515_16b),
  .clk(clk)
);
assign  w_3516_16b  =  r46_w_SAD_2a163_3_16b ;
assign  w_3519_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_3520_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_1457 (
  .a(w_3519_8b),
  .b(w_3520_8b),
  .c(w_3521_8b),
  .clk(clk)
);
ABS_16b_pe abs_1458 (
  .a(w_3521_8b),
  .b(1'b0),
  .c(w_3524_8b),
  .clk(clk)
);
assign  w_3525_8b  =  w_3524_8b ;
assign  w_3526_16b  =  w_3525_8b ;
ADD_16b_pe add_1459 (
  .a(w_3526_16b),
  .b(w_3516_16b),
  .c(w_3527_16b),
  .clk(clk)
);
assign  w_3528_16b  =  r47_w_SAD_2a163_3_16b ;
assign  w_3531_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_3532_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_1460 (
  .a(w_3531_8b),
  .b(w_3532_8b),
  .c(w_3533_8b),
  .clk(clk)
);
ABS_16b_pe abs_1461 (
  .a(w_3533_8b),
  .b(1'b0),
  .c(w_3536_8b),
  .clk(clk)
);
assign  w_3537_8b  =  w_3536_8b ;
assign  w_3538_16b  =  w_3537_8b ;
ADD_16b_pe add_1462 (
  .a(w_3538_16b),
  .b(w_3528_16b),
  .c(w_3539_16b),
  .clk(clk)
);
assign  w_3540_16b  =  r48_w_SAD_2a163_3_16b ;
assign  w_3543_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_3544_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_1463 (
  .a(w_3543_8b),
  .b(w_3544_8b),
  .c(w_3545_8b),
  .clk(clk)
);
ABS_16b_pe abs_1464 (
  .a(w_3545_8b),
  .b(1'b0),
  .c(w_3548_8b),
  .clk(clk)
);
assign  w_3549_8b  =  w_3548_8b ;
assign  w_3550_16b  =  w_3549_8b ;
ADD_16b_pe add_1465 (
  .a(w_3540_16b),
  .b(w_3550_16b),
  .c(w_3551_16b),
  .clk(clk)
);
assign  w_3552_16b  =  r49_w_SAD_2a163_3_16b ;
assign  w_3555_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_3556_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_1466 (
  .a(w_3556_8b),
  .b(w_3555_8b),
  .c(w_3557_8b),
  .clk(clk)
);
ABS_16b_pe abs_1467 (
  .a(w_3557_8b),
  .b(1'b0),
  .c(w_3560_8b),
  .clk(clk)
);
assign  w_3561_8b  =  w_3560_8b ;
assign  w_3562_16b  =  w_3561_8b ;
ADD_16b_pe add_1468 (
  .a(w_3562_16b),
  .b(w_3552_16b),
  .c(w_3563_16b),
  .clk(clk)
);
assign  w_3564_16b  =  r50_w_SAD_2a163_3_16b ;
assign  w_3567_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_3568_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_1469 (
  .a(w_3567_8b),
  .b(w_3568_8b),
  .c(w_3569_8b),
  .clk(clk)
);
ABS_16b_pe abs_1470 (
  .a(w_3569_8b),
  .b(1'b0),
  .c(w_3572_8b),
  .clk(clk)
);
assign  w_3573_8b  =  w_3572_8b ;
assign  w_3574_16b  =  w_3573_8b ;
ADD_16b_pe add_1471 (
  .a(w_3574_16b),
  .b(w_3564_16b),
  .c(w_3575_16b),
  .clk(clk)
);
assign  w_3576_16b  =  r51_w_SAD_2a163_3_16b ;
assign  w_3579_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_3580_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_1472 (
  .a(w_3580_8b),
  .b(w_3579_8b),
  .c(w_3581_8b),
  .clk(clk)
);
ABS_16b_pe abs_1473 (
  .a(w_3581_8b),
  .b(1'b0),
  .c(w_3584_8b),
  .clk(clk)
);
assign  w_3585_8b  =  w_3584_8b ;
assign  w_3586_16b  =  w_3585_8b ;
ADD_16b_pe add_1474 (
  .a(w_3586_16b),
  .b(w_3576_16b),
  .c(w_3587_16b),
  .clk(clk)
);
assign  w_3588_16b  =  r52_w_SAD_2a163_3_16b ;
assign  w_3591_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_3592_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_1475 (
  .a(w_3592_8b),
  .b(w_3591_8b),
  .c(w_3593_8b),
  .clk(clk)
);
ABS_16b_pe abs_1476 (
  .a(w_3593_8b),
  .b(1'b0),
  .c(w_3596_8b),
  .clk(clk)
);
assign  w_3597_8b  =  w_3596_8b ;
assign  w_3598_16b  =  w_3597_8b ;
ADD_16b_pe add_1477 (
  .a(w_3598_16b),
  .b(w_3588_16b),
  .c(w_3599_16b),
  .clk(clk)
);
assign  w_3600_16b  =  r53_w_SAD_2a163_3_16b ;
assign  w_3603_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_3604_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_1478 (
  .a(w_3604_8b),
  .b(w_3603_8b),
  .c(w_3605_8b),
  .clk(clk)
);
ABS_16b_pe abs_1479 (
  .a(w_3605_8b),
  .b(1'b0),
  .c(w_3608_8b),
  .clk(clk)
);
assign  w_3609_8b  =  w_3608_8b ;
assign  w_3610_16b  =  w_3609_8b ;
ADD_16b_pe add_1480 (
  .a(w_3610_16b),
  .b(w_3600_16b),
  .c(w_3611_16b),
  .clk(clk)
);
assign  w_3612_16b  =  r54_w_SAD_2a163_3_16b ;
assign  w_3615_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_3616_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_1481 (
  .a(w_3615_8b),
  .b(w_3616_8b),
  .c(w_3617_8b),
  .clk(clk)
);
ABS_16b_pe abs_1482 (
  .a(w_3617_8b),
  .b(1'b0),
  .c(w_3620_8b),
  .clk(clk)
);
assign  w_3621_8b  =  w_3620_8b ;
assign  w_3622_16b  =  w_3621_8b ;
ADD_16b_pe add_1483 (
  .a(w_3612_16b),
  .b(w_3622_16b),
  .c(w_3623_16b),
  .clk(clk)
);
assign  w_3624_16b  =  r55_w_SAD_2a163_3_16b ;
assign  w_3627_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_3628_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_1484 (
  .a(w_3627_8b),
  .b(w_3628_8b),
  .c(w_3629_8b),
  .clk(clk)
);
ABS_16b_pe abs_1485 (
  .a(w_3629_8b),
  .b(1'b0),
  .c(w_3632_8b),
  .clk(clk)
);
assign  w_3633_8b  =  w_3632_8b ;
assign  w_3634_16b  =  w_3633_8b ;
ADD_16b_pe add_1486 (
  .a(w_3624_16b),
  .b(w_3634_16b),
  .c(w_3635_16b),
  .clk(clk)
);
assign  w_3636_16b  =  r56_w_SAD_2a163_3_16b ;
assign  w_3639_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_3640_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_1487 (
  .a(w_3640_8b),
  .b(w_3639_8b),
  .c(w_3641_8b),
  .clk(clk)
);
ABS_16b_pe abs_1488 (
  .a(w_3641_8b),
  .b(1'b0),
  .c(w_3644_8b),
  .clk(clk)
);
assign  w_3645_8b  =  w_3644_8b ;
assign  w_3646_16b  =  w_3645_8b ;
ADD_16b_pe add_1489 (
  .a(w_3636_16b),
  .b(w_3646_16b),
  .c(w_3647_16b),
  .clk(clk)
);
assign  w_3648_16b  =  r57_w_SAD_2a163_3_16b ;
assign  w_3651_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_3652_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_1490 (
  .a(w_3651_8b),
  .b(w_3652_8b),
  .c(w_3653_8b),
  .clk(clk)
);
ABS_16b_pe abs_1491 (
  .a(w_3653_8b),
  .b(1'b0),
  .c(w_3656_8b),
  .clk(clk)
);
assign  w_3657_8b  =  w_3656_8b ;
assign  w_3658_16b  =  w_3657_8b ;
ADD_16b_pe add_1492 (
  .a(w_3648_16b),
  .b(w_3658_16b),
  .c(w_3659_16b),
  .clk(clk)
);
assign  w_3660_16b  =  r58_w_SAD_2a163_3_16b ;
assign  w_3663_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_3664_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_1493 (
  .a(w_3663_8b),
  .b(w_3664_8b),
  .c(w_3665_8b),
  .clk(clk)
);
ABS_16b_pe abs_1494 (
  .a(w_3665_8b),
  .b(1'b0),
  .c(w_3668_8b),
  .clk(clk)
);
assign  w_3669_8b  =  w_3668_8b ;
assign  w_3670_16b  =  w_3669_8b ;
ADD_16b_pe add_1495 (
  .a(w_3660_16b),
  .b(w_3670_16b),
  .c(w_3671_16b),
  .clk(clk)
);
assign  w_3672_16b  =  r59_w_SAD_2a163_3_16b ;
assign  w_3675_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_3676_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_1496 (
  .a(w_3676_8b),
  .b(w_3675_8b),
  .c(w_3677_8b),
  .clk(clk)
);
ABS_16b_pe abs_1497 (
  .a(w_3677_8b),
  .b(1'b0),
  .c(w_3680_8b),
  .clk(clk)
);
assign  w_3681_8b  =  w_3680_8b ;
assign  w_3682_16b  =  w_3681_8b ;
ADD_16b_pe add_1498 (
  .a(w_3672_16b),
  .b(w_3682_16b),
  .c(w_3683_16b),
  .clk(clk)
);
assign  w_3684_16b  =  r60_w_SAD_2a163_3_16b ;
assign  w_3687_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_3688_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_1499 (
  .a(w_3687_8b),
  .b(w_3688_8b),
  .c(w_3689_8b),
  .clk(clk)
);
ABS_16b_pe abs_1500 (
  .a(w_3689_8b),
  .b(1'b0),
  .c(w_3692_8b),
  .clk(clk)
);
assign  w_3693_8b  =  w_3692_8b ;
assign  w_3694_16b  =  w_3693_8b ;
ADD_16b_pe add_1501 (
  .a(w_3684_16b),
  .b(w_3694_16b),
  .c(w_3695_16b),
  .clk(clk)
);
assign  w_3696_16b  =  r61_w_SAD_2a163_3_16b ;
assign  w_3699_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_3700_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_1502 (
  .a(w_3699_8b),
  .b(w_3700_8b),
  .c(w_3701_8b),
  .clk(clk)
);
ABS_16b_pe abs_1503 (
  .a(w_3701_8b),
  .b(1'b0),
  .c(w_3704_8b),
  .clk(clk)
);
assign  w_3705_8b  =  w_3704_8b ;
assign  w_3706_16b  =  w_3705_8b ;
ADD_16b_pe add_1504 (
  .a(w_3706_16b),
  .b(w_3696_16b),
  .c(w_3707_16b),
  .clk(clk)
);
assign  w_3708_16b  =  r62_w_SAD_2a163_3_16b ;
assign  w_3711_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_3712_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_1505 (
  .a(w_3711_8b),
  .b(w_3712_8b),
  .c(w_3713_8b),
  .clk(clk)
);
ABS_16b_pe abs_1506 (
  .a(w_3713_8b),
  .b(1'b0),
  .c(w_3716_8b),
  .clk(clk)
);
assign  w_3717_8b  =  w_3716_8b ;
assign  w_3718_16b  =  w_3717_8b ;
ADD_16b_pe add_1507 (
  .a(w_3718_16b),
  .b(w_3708_16b),
  .c(w_3719_16b),
  .clk(clk)
);
assign  w_3720_16b  = 1'b0;
assign  w_3723_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3724_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_1508 (
  .a(w_3723_8b),
  .b(w_3724_8b),
  .c(w_3725_8b),
  .clk(clk)
);
ABS_16b_pe abs_1509 (
  .a(w_3725_8b),
  .b(1'b0),
  .c(w_3728_8b),
  .clk(clk)
);
assign  w_3729_8b  =  w_3728_8b ;
assign  w_3730_16b  =  w_3729_8b ;
ADD_16b_pe add_1510 (
  .a(w_3720_16b),
  .b(w_3730_16b),
  .c(w_3731_16b),
  .clk(clk)
);
assign  w_3732_16b  =  r0_w_SAD_2a163_4_16b ;
assign  w_3735_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3736_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_1511 (
  .a(w_3736_8b),
  .b(w_3735_8b),
  .c(w_3737_8b),
  .clk(clk)
);
ABS_16b_pe abs_1512 (
  .a(w_3737_8b),
  .b(1'b0),
  .c(w_3740_8b),
  .clk(clk)
);
assign  w_3741_8b  =  w_3740_8b ;
assign  w_3742_16b  =  w_3741_8b ;
ADD_16b_pe add_1513 (
  .a(w_3742_16b),
  .b(w_3732_16b),
  .c(w_3743_16b),
  .clk(clk)
);
assign  w_3744_16b  =  r1_w_SAD_2a163_4_16b ;
assign  w_3747_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3748_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_1514 (
  .a(w_3748_8b),
  .b(w_3747_8b),
  .c(w_3749_8b),
  .clk(clk)
);
ABS_16b_pe abs_1515 (
  .a(w_3749_8b),
  .b(1'b0),
  .c(w_3752_8b),
  .clk(clk)
);
assign  w_3753_8b  =  w_3752_8b ;
assign  w_3754_16b  =  w_3753_8b ;
ADD_16b_pe add_1516 (
  .a(w_3754_16b),
  .b(w_3744_16b),
  .c(w_3755_16b),
  .clk(clk)
);
assign  w_3756_16b  =  r2_w_SAD_2a163_4_16b ;
assign  w_3759_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3760_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_1517 (
  .a(w_3759_8b),
  .b(w_3760_8b),
  .c(w_3761_8b),
  .clk(clk)
);
ABS_16b_pe abs_1518 (
  .a(w_3761_8b),
  .b(1'b0),
  .c(w_3764_8b),
  .clk(clk)
);
assign  w_3765_8b  =  w_3764_8b ;
assign  w_3766_16b  =  w_3765_8b ;
ADD_16b_pe add_1519 (
  .a(w_3766_16b),
  .b(w_3756_16b),
  .c(w_3767_16b),
  .clk(clk)
);
assign  w_3768_16b  =  r3_w_SAD_2a163_4_16b ;
assign  w_3771_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3772_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_1520 (
  .a(w_3772_8b),
  .b(w_3771_8b),
  .c(w_3773_8b),
  .clk(clk)
);
ABS_16b_pe abs_1521 (
  .a(w_3773_8b),
  .b(1'b0),
  .c(w_3776_8b),
  .clk(clk)
);
assign  w_3777_8b  =  w_3776_8b ;
assign  w_3778_16b  =  w_3777_8b ;
ADD_16b_pe add_1522 (
  .a(w_3778_16b),
  .b(w_3768_16b),
  .c(w_3779_16b),
  .clk(clk)
);
assign  w_3780_16b  =  r4_w_SAD_2a163_4_16b ;
assign  w_3783_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3784_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_1523 (
  .a(w_3784_8b),
  .b(w_3783_8b),
  .c(w_3785_8b),
  .clk(clk)
);
ABS_16b_pe abs_1524 (
  .a(w_3785_8b),
  .b(1'b0),
  .c(w_3788_8b),
  .clk(clk)
);
assign  w_3789_8b  =  w_3788_8b ;
assign  w_3790_16b  =  w_3789_8b ;
ADD_16b_pe add_1525 (
  .a(w_3790_16b),
  .b(w_3780_16b),
  .c(w_3791_16b),
  .clk(clk)
);
assign  w_3792_16b  =  r5_w_SAD_2a163_4_16b ;
assign  w_3795_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3796_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_1526 (
  .a(w_3795_8b),
  .b(w_3796_8b),
  .c(w_3797_8b),
  .clk(clk)
);
ABS_16b_pe abs_1527 (
  .a(w_3797_8b),
  .b(1'b0),
  .c(w_3800_8b),
  .clk(clk)
);
assign  w_3801_8b  =  w_3800_8b ;
assign  w_3802_16b  =  w_3801_8b ;
ADD_16b_pe add_1528 (
  .a(w_3802_16b),
  .b(w_3792_16b),
  .c(w_3803_16b),
  .clk(clk)
);
assign  w_3804_16b  =  r6_w_SAD_2a163_4_16b ;
assign  w_3807_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_3808_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_1529 (
  .a(w_3808_8b),
  .b(w_3807_8b),
  .c(w_3809_8b),
  .clk(clk)
);
ABS_16b_pe abs_1530 (
  .a(w_3809_8b),
  .b(1'b0),
  .c(w_3812_8b),
  .clk(clk)
);
assign  w_3813_8b  =  w_3812_8b ;
assign  w_3814_16b  =  w_3813_8b ;
ADD_16b_pe add_1531 (
  .a(w_3804_16b),
  .b(w_3814_16b),
  .c(w_3815_16b),
  .clk(clk)
);
assign  w_3816_16b  =  r7_w_SAD_2a163_4_16b ;
assign  w_3819_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3820_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_1532 (
  .a(w_3820_8b),
  .b(w_3819_8b),
  .c(w_3821_8b),
  .clk(clk)
);
ABS_16b_pe abs_1533 (
  .a(w_3821_8b),
  .b(1'b0),
  .c(w_3824_8b),
  .clk(clk)
);
assign  w_3825_8b  =  w_3824_8b ;
assign  w_3826_16b  =  w_3825_8b ;
ADD_16b_pe add_1534 (
  .a(w_3816_16b),
  .b(w_3826_16b),
  .c(w_3827_16b),
  .clk(clk)
);
assign  w_3828_16b  =  r8_w_SAD_2a163_4_16b ;
assign  w_3831_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3832_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_1535 (
  .a(w_3831_8b),
  .b(w_3832_8b),
  .c(w_3833_8b),
  .clk(clk)
);
ABS_16b_pe abs_1536 (
  .a(w_3833_8b),
  .b(1'b0),
  .c(w_3836_8b),
  .clk(clk)
);
assign  w_3837_8b  =  w_3836_8b ;
assign  w_3838_16b  =  w_3837_8b ;
ADD_16b_pe add_1537 (
  .a(w_3828_16b),
  .b(w_3838_16b),
  .c(w_3839_16b),
  .clk(clk)
);
assign  w_3840_16b  =  r9_w_SAD_2a163_4_16b ;
assign  w_3843_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3844_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_1538 (
  .a(w_3844_8b),
  .b(w_3843_8b),
  .c(w_3845_8b),
  .clk(clk)
);
ABS_16b_pe abs_1539 (
  .a(w_3845_8b),
  .b(1'b0),
  .c(w_3848_8b),
  .clk(clk)
);
assign  w_3849_8b  =  w_3848_8b ;
assign  w_3850_16b  =  w_3849_8b ;
ADD_16b_pe add_1540 (
  .a(w_3840_16b),
  .b(w_3850_16b),
  .c(w_3851_16b),
  .clk(clk)
);
assign  w_3852_16b  =  r10_w_SAD_2a163_4_16b ;
assign  w_3855_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3856_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_1541 (
  .a(w_3856_8b),
  .b(w_3855_8b),
  .c(w_3857_8b),
  .clk(clk)
);
ABS_16b_pe abs_1542 (
  .a(w_3857_8b),
  .b(1'b0),
  .c(w_3860_8b),
  .clk(clk)
);
assign  w_3861_8b  =  w_3860_8b ;
assign  w_3862_16b  =  w_3861_8b ;
ADD_16b_pe add_1543 (
  .a(w_3852_16b),
  .b(w_3862_16b),
  .c(w_3863_16b),
  .clk(clk)
);
assign  w_3864_16b  =  r11_w_SAD_2a163_4_16b ;
assign  w_3867_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3868_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_1544 (
  .a(w_3867_8b),
  .b(w_3868_8b),
  .c(w_3869_8b),
  .clk(clk)
);
ABS_16b_pe abs_1545 (
  .a(w_3869_8b),
  .b(1'b0),
  .c(w_3872_8b),
  .clk(clk)
);
assign  w_3873_8b  =  w_3872_8b ;
assign  w_3874_16b  =  w_3873_8b ;
ADD_16b_pe add_1546 (
  .a(w_3864_16b),
  .b(w_3874_16b),
  .c(w_3875_16b),
  .clk(clk)
);
assign  w_3876_16b  =  r12_w_SAD_2a163_4_16b ;
assign  w_3879_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3880_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_1547 (
  .a(w_3879_8b),
  .b(w_3880_8b),
  .c(w_3881_8b),
  .clk(clk)
);
ABS_16b_pe abs_1548 (
  .a(w_3881_8b),
  .b(1'b0),
  .c(w_3884_8b),
  .clk(clk)
);
assign  w_3885_8b  =  w_3884_8b ;
assign  w_3886_16b  =  w_3885_8b ;
ADD_16b_pe add_1549 (
  .a(w_3876_16b),
  .b(w_3886_16b),
  .c(w_3887_16b),
  .clk(clk)
);
assign  w_3888_16b  =  r13_w_SAD_2a163_4_16b ;
assign  w_3891_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3892_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_1550 (
  .a(w_3892_8b),
  .b(w_3891_8b),
  .c(w_3893_8b),
  .clk(clk)
);
ABS_16b_pe abs_1551 (
  .a(w_3893_8b),
  .b(1'b0),
  .c(w_3896_8b),
  .clk(clk)
);
assign  w_3897_8b  =  w_3896_8b ;
assign  w_3898_16b  =  w_3897_8b ;
ADD_16b_pe add_1552 (
  .a(w_3888_16b),
  .b(w_3898_16b),
  .c(w_3899_16b),
  .clk(clk)
);
assign  w_3900_16b  =  r14_w_SAD_2a163_4_16b ;
assign  w_3903_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_3904_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_1553 (
  .a(w_3903_8b),
  .b(w_3904_8b),
  .c(w_3905_8b),
  .clk(clk)
);
ABS_16b_pe abs_1554 (
  .a(w_3905_8b),
  .b(1'b0),
  .c(w_3908_8b),
  .clk(clk)
);
assign  w_3909_8b  =  w_3908_8b ;
assign  w_3910_16b  =  w_3909_8b ;
ADD_16b_pe add_1555 (
  .a(w_3900_16b),
  .b(w_3910_16b),
  .c(w_3911_16b),
  .clk(clk)
);
assign  w_3912_16b  =  r15_w_SAD_2a163_4_16b ;
assign  w_3915_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3916_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_1556 (
  .a(w_3916_8b),
  .b(w_3915_8b),
  .c(w_3917_8b),
  .clk(clk)
);
ABS_16b_pe abs_1557 (
  .a(w_3917_8b),
  .b(1'b0),
  .c(w_3920_8b),
  .clk(clk)
);
assign  w_3921_8b  =  w_3920_8b ;
assign  w_3922_16b  =  w_3921_8b ;
ADD_16b_pe add_1558 (
  .a(w_3922_16b),
  .b(w_3912_16b),
  .c(w_3923_16b),
  .clk(clk)
);
assign  w_3924_16b  =  r16_w_SAD_2a163_4_16b ;
assign  w_3927_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3928_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_1559 (
  .a(w_3927_8b),
  .b(w_3928_8b),
  .c(w_3929_8b),
  .clk(clk)
);
ABS_16b_pe abs_1560 (
  .a(w_3929_8b),
  .b(1'b0),
  .c(w_3932_8b),
  .clk(clk)
);
assign  w_3933_8b  =  w_3932_8b ;
assign  w_3934_16b  =  w_3933_8b ;
ADD_16b_pe add_1561 (
  .a(w_3934_16b),
  .b(w_3924_16b),
  .c(w_3935_16b),
  .clk(clk)
);
assign  w_3936_16b  =  r17_w_SAD_2a163_4_16b ;
assign  w_3939_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3940_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_1562 (
  .a(w_3940_8b),
  .b(w_3939_8b),
  .c(w_3941_8b),
  .clk(clk)
);
ABS_16b_pe abs_1563 (
  .a(w_3941_8b),
  .b(1'b0),
  .c(w_3944_8b),
  .clk(clk)
);
assign  w_3945_8b  =  w_3944_8b ;
assign  w_3946_16b  =  w_3945_8b ;
ADD_16b_pe add_1564 (
  .a(w_3946_16b),
  .b(w_3936_16b),
  .c(w_3947_16b),
  .clk(clk)
);
assign  w_3948_16b  =  r18_w_SAD_2a163_4_16b ;
assign  w_3951_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3952_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_1565 (
  .a(w_3952_8b),
  .b(w_3951_8b),
  .c(w_3953_8b),
  .clk(clk)
);
ABS_16b_pe abs_1566 (
  .a(w_3953_8b),
  .b(1'b0),
  .c(w_3956_8b),
  .clk(clk)
);
assign  w_3957_8b  =  w_3956_8b ;
assign  w_3958_16b  =  w_3957_8b ;
ADD_16b_pe add_1567 (
  .a(w_3958_16b),
  .b(w_3948_16b),
  .c(w_3959_16b),
  .clk(clk)
);
assign  w_3960_16b  =  r19_w_SAD_2a163_4_16b ;
assign  w_3963_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3964_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_1568 (
  .a(w_3963_8b),
  .b(w_3964_8b),
  .c(w_3965_8b),
  .clk(clk)
);
ABS_16b_pe abs_1569 (
  .a(w_3965_8b),
  .b(1'b0),
  .c(w_3968_8b),
  .clk(clk)
);
assign  w_3969_8b  =  w_3968_8b ;
assign  w_3970_16b  =  w_3969_8b ;
ADD_16b_pe add_1570 (
  .a(w_3970_16b),
  .b(w_3960_16b),
  .c(w_3971_16b),
  .clk(clk)
);
assign  w_3972_16b  =  r20_w_SAD_2a163_4_16b ;
assign  w_3975_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3976_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_1571 (
  .a(w_3975_8b),
  .b(w_3976_8b),
  .c(w_3977_8b),
  .clk(clk)
);
ABS_16b_pe abs_1572 (
  .a(w_3977_8b),
  .b(1'b0),
  .c(w_3980_8b),
  .clk(clk)
);
assign  w_3981_8b  =  w_3980_8b ;
assign  w_3982_16b  =  w_3981_8b ;
ADD_16b_pe add_1573 (
  .a(w_3982_16b),
  .b(w_3972_16b),
  .c(w_3983_16b),
  .clk(clk)
);
assign  w_3984_16b  =  r21_w_SAD_2a163_4_16b ;
assign  w_3987_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_3988_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_1574 (
  .a(w_3988_8b),
  .b(w_3987_8b),
  .c(w_3989_8b),
  .clk(clk)
);
ABS_16b_pe abs_1575 (
  .a(w_3989_8b),
  .b(1'b0),
  .c(w_3992_8b),
  .clk(clk)
);
assign  w_3993_8b  =  w_3992_8b ;
assign  w_3994_16b  =  w_3993_8b ;
ADD_16b_pe add_1576 (
  .a(w_3994_16b),
  .b(w_3984_16b),
  .c(w_3995_16b),
  .clk(clk)
);
assign  w_3996_16b  =  r22_w_SAD_2a163_4_16b ;
assign  w_3999_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_4000_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_1577 (
  .a(w_4000_8b),
  .b(w_3999_8b),
  .c(w_4001_8b),
  .clk(clk)
);
ABS_16b_pe abs_1578 (
  .a(w_4001_8b),
  .b(1'b0),
  .c(w_4004_8b),
  .clk(clk)
);
assign  w_4005_8b  =  w_4004_8b ;
assign  w_4006_16b  =  w_4005_8b ;
ADD_16b_pe add_1579 (
  .a(w_3996_16b),
  .b(w_4006_16b),
  .c(w_4007_16b),
  .clk(clk)
);
assign  w_4008_16b  =  r23_w_SAD_2a163_4_16b ;
assign  w_4011_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4012_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_1580 (
  .a(w_4012_8b),
  .b(w_4011_8b),
  .c(w_4013_8b),
  .clk(clk)
);
ABS_16b_pe abs_1581 (
  .a(w_4013_8b),
  .b(1'b0),
  .c(w_4016_8b),
  .clk(clk)
);
assign  w_4017_8b  =  w_4016_8b ;
assign  w_4018_16b  =  w_4017_8b ;
ADD_16b_pe add_1582 (
  .a(w_4008_16b),
  .b(w_4018_16b),
  .c(w_4019_16b),
  .clk(clk)
);
assign  w_4020_16b  =  r24_w_SAD_2a163_4_16b ;
assign  w_4023_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4024_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_1583 (
  .a(w_4024_8b),
  .b(w_4023_8b),
  .c(w_4025_8b),
  .clk(clk)
);
ABS_16b_pe abs_1584 (
  .a(w_4025_8b),
  .b(1'b0),
  .c(w_4028_8b),
  .clk(clk)
);
assign  w_4029_8b  =  w_4028_8b ;
assign  w_4030_16b  =  w_4029_8b ;
ADD_16b_pe add_1585 (
  .a(w_4030_16b),
  .b(w_4020_16b),
  .c(w_4031_16b),
  .clk(clk)
);
assign  w_4032_16b  =  r25_w_SAD_2a163_4_16b ;
assign  w_4035_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4036_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_1586 (
  .a(w_4035_8b),
  .b(w_4036_8b),
  .c(w_4037_8b),
  .clk(clk)
);
ABS_16b_pe abs_1587 (
  .a(w_4037_8b),
  .b(1'b0),
  .c(w_4040_8b),
  .clk(clk)
);
assign  w_4041_8b  =  w_4040_8b ;
assign  w_4042_16b  =  w_4041_8b ;
ADD_16b_pe add_1588 (
  .a(w_4042_16b),
  .b(w_4032_16b),
  .c(w_4043_16b),
  .clk(clk)
);
assign  w_4044_16b  =  r26_w_SAD_2a163_4_16b ;
assign  w_4047_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4048_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_1589 (
  .a(w_4047_8b),
  .b(w_4048_8b),
  .c(w_4049_8b),
  .clk(clk)
);
ABS_16b_pe abs_1590 (
  .a(w_4049_8b),
  .b(1'b0),
  .c(w_4052_8b),
  .clk(clk)
);
assign  w_4053_8b  =  w_4052_8b ;
assign  w_4054_16b  =  w_4053_8b ;
ADD_16b_pe add_1591 (
  .a(w_4044_16b),
  .b(w_4054_16b),
  .c(w_4055_16b),
  .clk(clk)
);
assign  w_4056_16b  =  r27_w_SAD_2a163_4_16b ;
assign  w_4059_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4060_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_1592 (
  .a(w_4059_8b),
  .b(w_4060_8b),
  .c(w_4061_8b),
  .clk(clk)
);
ABS_16b_pe abs_1593 (
  .a(w_4061_8b),
  .b(1'b0),
  .c(w_4064_8b),
  .clk(clk)
);
assign  w_4065_8b  =  w_4064_8b ;
assign  w_4066_16b  =  w_4065_8b ;
ADD_16b_pe add_1594 (
  .a(w_4066_16b),
  .b(w_4056_16b),
  .c(w_4067_16b),
  .clk(clk)
);
assign  w_4068_16b  =  r28_w_SAD_2a163_4_16b ;
assign  w_4071_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4072_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_1595 (
  .a(w_4071_8b),
  .b(w_4072_8b),
  .c(w_4073_8b),
  .clk(clk)
);
ABS_16b_pe abs_1596 (
  .a(w_4073_8b),
  .b(1'b0),
  .c(w_4076_8b),
  .clk(clk)
);
assign  w_4077_8b  =  w_4076_8b ;
assign  w_4078_16b  =  w_4077_8b ;
ADD_16b_pe add_1597 (
  .a(w_4078_16b),
  .b(w_4068_16b),
  .c(w_4079_16b),
  .clk(clk)
);
assign  w_4080_16b  =  r29_w_SAD_2a163_4_16b ;
assign  w_4083_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4084_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_1598 (
  .a(w_4083_8b),
  .b(w_4084_8b),
  .c(w_4085_8b),
  .clk(clk)
);
ABS_16b_pe abs_1599 (
  .a(w_4085_8b),
  .b(1'b0),
  .c(w_4088_8b),
  .clk(clk)
);
assign  w_4089_8b  =  w_4088_8b ;
assign  w_4090_16b  =  w_4089_8b ;
ADD_16b_pe add_1600 (
  .a(w_4080_16b),
  .b(w_4090_16b),
  .c(w_4091_16b),
  .clk(clk)
);
assign  w_4092_16b  =  r30_w_SAD_2a163_4_16b ;
assign  w_4095_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4096_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_1601 (
  .a(w_4096_8b),
  .b(w_4095_8b),
  .c(w_4097_8b),
  .clk(clk)
);
ABS_16b_pe abs_1602 (
  .a(w_4097_8b),
  .b(1'b0),
  .c(w_4100_8b),
  .clk(clk)
);
assign  w_4101_8b  =  w_4100_8b ;
assign  w_4102_16b  =  w_4101_8b ;
ADD_16b_pe add_1603 (
  .a(w_4102_16b),
  .b(w_4092_16b),
  .c(w_4103_16b),
  .clk(clk)
);
assign  w_4104_16b  =  r31_w_SAD_2a163_4_16b ;
assign  w_4107_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4108_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_1604 (
  .a(w_4108_8b),
  .b(w_4107_8b),
  .c(w_4109_8b),
  .clk(clk)
);
ABS_16b_pe abs_1605 (
  .a(w_4109_8b),
  .b(1'b0),
  .c(w_4112_8b),
  .clk(clk)
);
assign  w_4113_8b  =  w_4112_8b ;
assign  w_4114_16b  =  w_4113_8b ;
ADD_16b_pe add_1606 (
  .a(w_4104_16b),
  .b(w_4114_16b),
  .c(w_4115_16b),
  .clk(clk)
);
assign  w_4116_16b  =  r32_w_SAD_2a163_4_16b ;
assign  w_4119_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4120_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_1607 (
  .a(w_4120_8b),
  .b(w_4119_8b),
  .c(w_4121_8b),
  .clk(clk)
);
ABS_16b_pe abs_1608 (
  .a(w_4121_8b),
  .b(1'b0),
  .c(w_4124_8b),
  .clk(clk)
);
assign  w_4125_8b  =  w_4124_8b ;
assign  w_4126_16b  =  w_4125_8b ;
ADD_16b_pe add_1609 (
  .a(w_4116_16b),
  .b(w_4126_16b),
  .c(w_4127_16b),
  .clk(clk)
);
assign  w_4128_16b  =  r33_w_SAD_2a163_4_16b ;
assign  w_4131_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4132_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_1610 (
  .a(w_4131_8b),
  .b(w_4132_8b),
  .c(w_4133_8b),
  .clk(clk)
);
ABS_16b_pe abs_1611 (
  .a(w_4133_8b),
  .b(1'b0),
  .c(w_4136_8b),
  .clk(clk)
);
assign  w_4137_8b  =  w_4136_8b ;
assign  w_4138_16b  =  w_4137_8b ;
ADD_16b_pe add_1612 (
  .a(w_4128_16b),
  .b(w_4138_16b),
  .c(w_4139_16b),
  .clk(clk)
);
assign  w_4140_16b  =  r34_w_SAD_2a163_4_16b ;
assign  w_4143_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4144_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_1613 (
  .a(w_4144_8b),
  .b(w_4143_8b),
  .c(w_4145_8b),
  .clk(clk)
);
ABS_16b_pe abs_1614 (
  .a(w_4145_8b),
  .b(1'b0),
  .c(w_4148_8b),
  .clk(clk)
);
assign  w_4149_8b  =  w_4148_8b ;
assign  w_4150_16b  =  w_4149_8b ;
ADD_16b_pe add_1615 (
  .a(w_4140_16b),
  .b(w_4150_16b),
  .c(w_4151_16b),
  .clk(clk)
);
assign  w_4152_16b  =  r35_w_SAD_2a163_4_16b ;
assign  w_4155_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4156_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_1616 (
  .a(w_4156_8b),
  .b(w_4155_8b),
  .c(w_4157_8b),
  .clk(clk)
);
ABS_16b_pe abs_1617 (
  .a(w_4157_8b),
  .b(1'b0),
  .c(w_4160_8b),
  .clk(clk)
);
assign  w_4161_8b  =  w_4160_8b ;
assign  w_4162_16b  =  w_4161_8b ;
ADD_16b_pe add_1618 (
  .a(w_4152_16b),
  .b(w_4162_16b),
  .c(w_4163_16b),
  .clk(clk)
);
assign  w_4164_16b  =  r36_w_SAD_2a163_4_16b ;
assign  w_4167_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4168_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_1619 (
  .a(w_4167_8b),
  .b(w_4168_8b),
  .c(w_4169_8b),
  .clk(clk)
);
ABS_16b_pe abs_1620 (
  .a(w_4169_8b),
  .b(1'b0),
  .c(w_4172_8b),
  .clk(clk)
);
assign  w_4173_8b  =  w_4172_8b ;
assign  w_4174_16b  =  w_4173_8b ;
ADD_16b_pe add_1621 (
  .a(w_4164_16b),
  .b(w_4174_16b),
  .c(w_4175_16b),
  .clk(clk)
);
assign  w_4176_16b  =  r37_w_SAD_2a163_4_16b ;
assign  w_4179_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4180_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_1622 (
  .a(w_4179_8b),
  .b(w_4180_8b),
  .c(w_4181_8b),
  .clk(clk)
);
ABS_16b_pe abs_1623 (
  .a(w_4181_8b),
  .b(1'b0),
  .c(w_4184_8b),
  .clk(clk)
);
assign  w_4185_8b  =  w_4184_8b ;
assign  w_4186_16b  =  w_4185_8b ;
ADD_16b_pe add_1624 (
  .a(w_4176_16b),
  .b(w_4186_16b),
  .c(w_4187_16b),
  .clk(clk)
);
assign  w_4188_16b  =  r38_w_SAD_2a163_4_16b ;
assign  w_4191_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4192_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_1625 (
  .a(w_4192_8b),
  .b(w_4191_8b),
  .c(w_4193_8b),
  .clk(clk)
);
ABS_16b_pe abs_1626 (
  .a(w_4193_8b),
  .b(1'b0),
  .c(w_4196_8b),
  .clk(clk)
);
assign  w_4197_8b  =  w_4196_8b ;
assign  w_4198_16b  =  w_4197_8b ;
ADD_16b_pe add_1627 (
  .a(w_4188_16b),
  .b(w_4198_16b),
  .c(w_4199_16b),
  .clk(clk)
);
assign  w_4200_16b  =  r39_w_SAD_2a163_4_16b ;
assign  w_4203_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_4204_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_1628 (
  .a(w_4203_8b),
  .b(w_4204_8b),
  .c(w_4205_8b),
  .clk(clk)
);
ABS_16b_pe abs_1629 (
  .a(w_4205_8b),
  .b(1'b0),
  .c(w_4208_8b),
  .clk(clk)
);
assign  w_4209_8b  =  w_4208_8b ;
assign  w_4210_16b  =  w_4209_8b ;
ADD_16b_pe add_1630 (
  .a(w_4210_16b),
  .b(w_4200_16b),
  .c(w_4211_16b),
  .clk(clk)
);
assign  w_4212_16b  =  r40_w_SAD_2a163_4_16b ;
assign  w_4215_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_4216_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_1631 (
  .a(w_4215_8b),
  .b(w_4216_8b),
  .c(w_4217_8b),
  .clk(clk)
);
ABS_16b_pe abs_1632 (
  .a(w_4217_8b),
  .b(1'b0),
  .c(w_4220_8b),
  .clk(clk)
);
assign  w_4221_8b  =  w_4220_8b ;
assign  w_4222_16b  =  w_4221_8b ;
ADD_16b_pe add_1633 (
  .a(w_4212_16b),
  .b(w_4222_16b),
  .c(w_4223_16b),
  .clk(clk)
);
assign  w_4224_16b  =  r41_w_SAD_2a163_4_16b ;
assign  w_4227_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_4228_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_1634 (
  .a(w_4227_8b),
  .b(w_4228_8b),
  .c(w_4229_8b),
  .clk(clk)
);
ABS_16b_pe abs_1635 (
  .a(w_4229_8b),
  .b(1'b0),
  .c(w_4232_8b),
  .clk(clk)
);
assign  w_4233_8b  =  w_4232_8b ;
assign  w_4234_16b  =  w_4233_8b ;
ADD_16b_pe add_1636 (
  .a(w_4224_16b),
  .b(w_4234_16b),
  .c(w_4235_16b),
  .clk(clk)
);
assign  w_4236_16b  =  r42_w_SAD_2a163_4_16b ;
assign  w_4239_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_4240_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_1637 (
  .a(w_4239_8b),
  .b(w_4240_8b),
  .c(w_4241_8b),
  .clk(clk)
);
ABS_16b_pe abs_1638 (
  .a(w_4241_8b),
  .b(1'b0),
  .c(w_4244_8b),
  .clk(clk)
);
assign  w_4245_8b  =  w_4244_8b ;
assign  w_4246_16b  =  w_4245_8b ;
ADD_16b_pe add_1639 (
  .a(w_4246_16b),
  .b(w_4236_16b),
  .c(w_4247_16b),
  .clk(clk)
);
assign  w_4248_16b  =  r43_w_SAD_2a163_4_16b ;
assign  w_4251_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_4252_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_1640 (
  .a(w_4251_8b),
  .b(w_4252_8b),
  .c(w_4253_8b),
  .clk(clk)
);
ABS_16b_pe abs_1641 (
  .a(w_4253_8b),
  .b(1'b0),
  .c(w_4256_8b),
  .clk(clk)
);
assign  w_4257_8b  =  w_4256_8b ;
assign  w_4258_16b  =  w_4257_8b ;
ADD_16b_pe add_1642 (
  .a(w_4258_16b),
  .b(w_4248_16b),
  .c(w_4259_16b),
  .clk(clk)
);
assign  w_4260_16b  =  r44_w_SAD_2a163_4_16b ;
assign  w_4263_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_4264_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_1643 (
  .a(w_4263_8b),
  .b(w_4264_8b),
  .c(w_4265_8b),
  .clk(clk)
);
ABS_16b_pe abs_1644 (
  .a(w_4265_8b),
  .b(1'b0),
  .c(w_4268_8b),
  .clk(clk)
);
assign  w_4269_8b  =  w_4268_8b ;
assign  w_4270_16b  =  w_4269_8b ;
ADD_16b_pe add_1645 (
  .a(w_4260_16b),
  .b(w_4270_16b),
  .c(w_4271_16b),
  .clk(clk)
);
assign  w_4272_16b  =  r45_w_SAD_2a163_4_16b ;
assign  w_4275_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_4276_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_1646 (
  .a(w_4276_8b),
  .b(w_4275_8b),
  .c(w_4277_8b),
  .clk(clk)
);
ABS_16b_pe abs_1647 (
  .a(w_4277_8b),
  .b(1'b0),
  .c(w_4280_8b),
  .clk(clk)
);
assign  w_4281_8b  =  w_4280_8b ;
assign  w_4282_16b  =  w_4281_8b ;
ADD_16b_pe add_1648 (
  .a(w_4282_16b),
  .b(w_4272_16b),
  .c(w_4283_16b),
  .clk(clk)
);
assign  w_4284_16b  =  r46_w_SAD_2a163_4_16b ;
assign  w_4287_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_4288_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_1649 (
  .a(w_4288_8b),
  .b(w_4287_8b),
  .c(w_4289_8b),
  .clk(clk)
);
ABS_16b_pe abs_1650 (
  .a(w_4289_8b),
  .b(1'b0),
  .c(w_4292_8b),
  .clk(clk)
);
assign  w_4293_8b  =  w_4292_8b ;
assign  w_4294_16b  =  w_4293_8b ;
ADD_16b_pe add_1651 (
  .a(w_4294_16b),
  .b(w_4284_16b),
  .c(w_4295_16b),
  .clk(clk)
);
assign  w_4296_16b  =  r47_w_SAD_2a163_4_16b ;
assign  w_4299_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_4300_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_1652 (
  .a(w_4299_8b),
  .b(w_4300_8b),
  .c(w_4301_8b),
  .clk(clk)
);
ABS_16b_pe abs_1653 (
  .a(w_4301_8b),
  .b(1'b0),
  .c(w_4304_8b),
  .clk(clk)
);
assign  w_4305_8b  =  w_4304_8b ;
assign  w_4306_16b  =  w_4305_8b ;
ADD_16b_pe add_1654 (
  .a(w_4306_16b),
  .b(w_4296_16b),
  .c(w_4307_16b),
  .clk(clk)
);
assign  w_4308_16b  =  r48_w_SAD_2a163_4_16b ;
assign  w_4311_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_4312_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_1655 (
  .a(w_4311_8b),
  .b(w_4312_8b),
  .c(w_4313_8b),
  .clk(clk)
);
ABS_16b_pe abs_1656 (
  .a(w_4313_8b),
  .b(1'b0),
  .c(w_4316_8b),
  .clk(clk)
);
assign  w_4317_8b  =  w_4316_8b ;
assign  w_4318_16b  =  w_4317_8b ;
ADD_16b_pe add_1657 (
  .a(w_4308_16b),
  .b(w_4318_16b),
  .c(w_4319_16b),
  .clk(clk)
);
assign  w_4320_16b  =  r49_w_SAD_2a163_4_16b ;
assign  w_4323_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_4324_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_1658 (
  .a(w_4323_8b),
  .b(w_4324_8b),
  .c(w_4325_8b),
  .clk(clk)
);
ABS_16b_pe abs_1659 (
  .a(w_4325_8b),
  .b(1'b0),
  .c(w_4328_8b),
  .clk(clk)
);
assign  w_4329_8b  =  w_4328_8b ;
assign  w_4330_16b  =  w_4329_8b ;
ADD_16b_pe add_1660 (
  .a(w_4320_16b),
  .b(w_4330_16b),
  .c(w_4331_16b),
  .clk(clk)
);
assign  w_4332_16b  =  r50_w_SAD_2a163_4_16b ;
assign  w_4335_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_4336_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_1661 (
  .a(w_4336_8b),
  .b(w_4335_8b),
  .c(w_4337_8b),
  .clk(clk)
);
ABS_16b_pe abs_1662 (
  .a(w_4337_8b),
  .b(1'b0),
  .c(w_4340_8b),
  .clk(clk)
);
assign  w_4341_8b  =  w_4340_8b ;
assign  w_4342_16b  =  w_4341_8b ;
ADD_16b_pe add_1663 (
  .a(w_4332_16b),
  .b(w_4342_16b),
  .c(w_4343_16b),
  .clk(clk)
);
assign  w_4344_16b  =  r51_w_SAD_2a163_4_16b ;
assign  w_4347_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_4348_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_1664 (
  .a(w_4347_8b),
  .b(w_4348_8b),
  .c(w_4349_8b),
  .clk(clk)
);
ABS_16b_pe abs_1665 (
  .a(w_4349_8b),
  .b(1'b0),
  .c(w_4352_8b),
  .clk(clk)
);
assign  w_4353_8b  =  w_4352_8b ;
assign  w_4354_16b  =  w_4353_8b ;
ADD_16b_pe add_1666 (
  .a(w_4344_16b),
  .b(w_4354_16b),
  .c(w_4355_16b),
  .clk(clk)
);
assign  w_4356_16b  =  r52_w_SAD_2a163_4_16b ;
assign  w_4359_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_4360_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_1667 (
  .a(w_4359_8b),
  .b(w_4360_8b),
  .c(w_4361_8b),
  .clk(clk)
);
ABS_16b_pe abs_1668 (
  .a(w_4361_8b),
  .b(1'b0),
  .c(w_4364_8b),
  .clk(clk)
);
assign  w_4365_8b  =  w_4364_8b ;
assign  w_4366_16b  =  w_4365_8b ;
ADD_16b_pe add_1669 (
  .a(w_4366_16b),
  .b(w_4356_16b),
  .c(w_4367_16b),
  .clk(clk)
);
assign  w_4368_16b  =  r53_w_SAD_2a163_4_16b ;
assign  w_4371_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_4372_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_1670 (
  .a(w_4372_8b),
  .b(w_4371_8b),
  .c(w_4373_8b),
  .clk(clk)
);
ABS_16b_pe abs_1671 (
  .a(w_4373_8b),
  .b(1'b0),
  .c(w_4376_8b),
  .clk(clk)
);
assign  w_4377_8b  =  w_4376_8b ;
assign  w_4378_16b  =  w_4377_8b ;
ADD_16b_pe add_1672 (
  .a(w_4368_16b),
  .b(w_4378_16b),
  .c(w_4379_16b),
  .clk(clk)
);
assign  w_4380_16b  =  r54_w_SAD_2a163_4_16b ;
assign  w_4383_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_4384_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_1673 (
  .a(w_4383_8b),
  .b(w_4384_8b),
  .c(w_4385_8b),
  .clk(clk)
);
ABS_16b_pe abs_1674 (
  .a(w_4385_8b),
  .b(1'b0),
  .c(w_4388_8b),
  .clk(clk)
);
assign  w_4389_8b  =  w_4388_8b ;
assign  w_4390_16b  =  w_4389_8b ;
ADD_16b_pe add_1675 (
  .a(w_4380_16b),
  .b(w_4390_16b),
  .c(w_4391_16b),
  .clk(clk)
);
assign  w_4392_16b  =  r55_w_SAD_2a163_4_16b ;
assign  w_4395_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_4396_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_1676 (
  .a(w_4395_8b),
  .b(w_4396_8b),
  .c(w_4397_8b),
  .clk(clk)
);
ABS_16b_pe abs_1677 (
  .a(w_4397_8b),
  .b(1'b0),
  .c(w_4400_8b),
  .clk(clk)
);
assign  w_4401_8b  =  w_4400_8b ;
assign  w_4402_16b  =  w_4401_8b ;
ADD_16b_pe add_1678 (
  .a(w_4402_16b),
  .b(w_4392_16b),
  .c(w_4403_16b),
  .clk(clk)
);
assign  w_4404_16b  =  r56_w_SAD_2a163_4_16b ;
assign  w_4407_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_4408_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_1679 (
  .a(w_4407_8b),
  .b(w_4408_8b),
  .c(w_4409_8b),
  .clk(clk)
);
ABS_16b_pe abs_1680 (
  .a(w_4409_8b),
  .b(1'b0),
  .c(w_4412_8b),
  .clk(clk)
);
assign  w_4413_8b  =  w_4412_8b ;
assign  w_4414_16b  =  w_4413_8b ;
ADD_16b_pe add_1681 (
  .a(w_4404_16b),
  .b(w_4414_16b),
  .c(w_4415_16b),
  .clk(clk)
);
assign  w_4416_16b  =  r57_w_SAD_2a163_4_16b ;
assign  w_4419_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_4420_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_1682 (
  .a(w_4419_8b),
  .b(w_4420_8b),
  .c(w_4421_8b),
  .clk(clk)
);
ABS_16b_pe abs_1683 (
  .a(w_4421_8b),
  .b(1'b0),
  .c(w_4424_8b),
  .clk(clk)
);
assign  w_4425_8b  =  w_4424_8b ;
assign  w_4426_16b  =  w_4425_8b ;
ADD_16b_pe add_1684 (
  .a(w_4426_16b),
  .b(w_4416_16b),
  .c(w_4427_16b),
  .clk(clk)
);
assign  w_4428_16b  =  r58_w_SAD_2a163_4_16b ;
assign  w_4431_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_4432_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_1685 (
  .a(w_4431_8b),
  .b(w_4432_8b),
  .c(w_4433_8b),
  .clk(clk)
);
ABS_16b_pe abs_1686 (
  .a(w_4433_8b),
  .b(1'b0),
  .c(w_4436_8b),
  .clk(clk)
);
assign  w_4437_8b  =  w_4436_8b ;
assign  w_4438_16b  =  w_4437_8b ;
ADD_16b_pe add_1687 (
  .a(w_4438_16b),
  .b(w_4428_16b),
  .c(w_4439_16b),
  .clk(clk)
);
assign  w_4440_16b  =  r59_w_SAD_2a163_4_16b ;
assign  w_4443_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_4444_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_1688 (
  .a(w_4443_8b),
  .b(w_4444_8b),
  .c(w_4445_8b),
  .clk(clk)
);
ABS_16b_pe abs_1689 (
  .a(w_4445_8b),
  .b(1'b0),
  .c(w_4448_8b),
  .clk(clk)
);
assign  w_4449_8b  =  w_4448_8b ;
assign  w_4450_16b  =  w_4449_8b ;
ADD_16b_pe add_1690 (
  .a(w_4440_16b),
  .b(w_4450_16b),
  .c(w_4451_16b),
  .clk(clk)
);
assign  w_4452_16b  =  r60_w_SAD_2a163_4_16b ;
assign  w_4455_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_4456_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_1691 (
  .a(w_4456_8b),
  .b(w_4455_8b),
  .c(w_4457_8b),
  .clk(clk)
);
ABS_16b_pe abs_1692 (
  .a(w_4457_8b),
  .b(1'b0),
  .c(w_4460_8b),
  .clk(clk)
);
assign  w_4461_8b  =  w_4460_8b ;
assign  w_4462_16b  =  w_4461_8b ;
ADD_16b_pe add_1693 (
  .a(w_4462_16b),
  .b(w_4452_16b),
  .c(w_4463_16b),
  .clk(clk)
);
assign  w_4464_16b  =  r61_w_SAD_2a163_4_16b ;
assign  w_4467_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_4468_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_1694 (
  .a(w_4467_8b),
  .b(w_4468_8b),
  .c(w_4469_8b),
  .clk(clk)
);
ABS_16b_pe abs_1695 (
  .a(w_4469_8b),
  .b(1'b0),
  .c(w_4472_8b),
  .clk(clk)
);
assign  w_4473_8b  =  w_4472_8b ;
assign  w_4474_16b  =  w_4473_8b ;
ADD_16b_pe add_1696 (
  .a(w_4474_16b),
  .b(w_4464_16b),
  .c(w_4475_16b),
  .clk(clk)
);
assign  w_4476_16b  =  r62_w_SAD_2a163_4_16b ;
assign  w_4479_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_4480_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_1697 (
  .a(w_4480_8b),
  .b(w_4479_8b),
  .c(w_4481_8b),
  .clk(clk)
);
ABS_16b_pe abs_1698 (
  .a(w_4481_8b),
  .b(1'b0),
  .c(w_4484_8b),
  .clk(clk)
);
assign  w_4485_8b  =  w_4484_8b ;
assign  w_4486_16b  =  w_4485_8b ;
ADD_16b_pe add_1699 (
  .a(w_4486_16b),
  .b(w_4476_16b),
  .c(w_4487_16b),
  .clk(clk)
);
assign  w_4488_16b  = 1'b0;
assign  w_4491_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_4492_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_1700 (
  .a(w_4492_8b),
  .b(w_4491_8b),
  .c(w_4493_8b),
  .clk(clk)
);
ABS_16b_pe abs_1701 (
  .a(w_4493_8b),
  .b(1'b0),
  .c(w_4496_8b),
  .clk(clk)
);
assign  w_4497_8b  =  w_4496_8b ;
assign  w_4498_16b  =  w_4497_8b ;
ADD_16b_pe add_1702 (
  .a(w_4498_16b),
  .b(w_4488_16b),
  .c(w_4499_16b),
  .clk(clk)
);
assign  w_4500_16b  =  r0_w_SAD_2a163_5_16b ;
assign  w_4503_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_4504_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_1703 (
  .a(w_4504_8b),
  .b(w_4503_8b),
  .c(w_4505_8b),
  .clk(clk)
);
ABS_16b_pe abs_1704 (
  .a(w_4505_8b),
  .b(1'b0),
  .c(w_4508_8b),
  .clk(clk)
);
assign  w_4509_8b  =  w_4508_8b ;
assign  w_4510_16b  =  w_4509_8b ;
ADD_16b_pe add_1705 (
  .a(w_4500_16b),
  .b(w_4510_16b),
  .c(w_4511_16b),
  .clk(clk)
);
assign  w_4512_16b  =  r1_w_SAD_2a163_5_16b ;
assign  w_4515_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_4516_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_1706 (
  .a(w_4516_8b),
  .b(w_4515_8b),
  .c(w_4517_8b),
  .clk(clk)
);
ABS_16b_pe abs_1707 (
  .a(w_4517_8b),
  .b(1'b0),
  .c(w_4520_8b),
  .clk(clk)
);
assign  w_4521_8b  =  w_4520_8b ;
assign  w_4522_16b  =  w_4521_8b ;
ADD_16b_pe add_1708 (
  .a(w_4512_16b),
  .b(w_4522_16b),
  .c(w_4523_16b),
  .clk(clk)
);
assign  w_4524_16b  =  r2_w_SAD_2a163_5_16b ;
assign  w_4527_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_4528_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_1709 (
  .a(w_4527_8b),
  .b(w_4528_8b),
  .c(w_4529_8b),
  .clk(clk)
);
ABS_16b_pe abs_1710 (
  .a(w_4529_8b),
  .b(1'b0),
  .c(w_4532_8b),
  .clk(clk)
);
assign  w_4533_8b  =  w_4532_8b ;
assign  w_4534_16b  =  w_4533_8b ;
ADD_16b_pe add_1711 (
  .a(w_4524_16b),
  .b(w_4534_16b),
  .c(w_4535_16b),
  .clk(clk)
);
assign  w_4536_16b  =  r3_w_SAD_2a163_5_16b ;
assign  w_4539_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_4540_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_1712 (
  .a(w_4539_8b),
  .b(w_4540_8b),
  .c(w_4541_8b),
  .clk(clk)
);
ABS_16b_pe abs_1713 (
  .a(w_4541_8b),
  .b(1'b0),
  .c(w_4544_8b),
  .clk(clk)
);
assign  w_4545_8b  =  w_4544_8b ;
assign  w_4546_16b  =  w_4545_8b ;
ADD_16b_pe add_1714 (
  .a(w_4536_16b),
  .b(w_4546_16b),
  .c(w_4547_16b),
  .clk(clk)
);
assign  w_4548_16b  =  r4_w_SAD_2a163_5_16b ;
assign  w_4551_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_4552_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_1715 (
  .a(w_4552_8b),
  .b(w_4551_8b),
  .c(w_4553_8b),
  .clk(clk)
);
ABS_16b_pe abs_1716 (
  .a(w_4553_8b),
  .b(1'b0),
  .c(w_4556_8b),
  .clk(clk)
);
assign  w_4557_8b  =  w_4556_8b ;
assign  w_4558_16b  =  w_4557_8b ;
ADD_16b_pe add_1717 (
  .a(w_4548_16b),
  .b(w_4558_16b),
  .c(w_4559_16b),
  .clk(clk)
);
assign  w_4560_16b  =  r5_w_SAD_2a163_5_16b ;
assign  w_4563_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_4564_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_1718 (
  .a(w_4563_8b),
  .b(w_4564_8b),
  .c(w_4565_8b),
  .clk(clk)
);
ABS_16b_pe abs_1719 (
  .a(w_4565_8b),
  .b(1'b0),
  .c(w_4568_8b),
  .clk(clk)
);
assign  w_4569_8b  =  w_4568_8b ;
assign  w_4570_16b  =  w_4569_8b ;
ADD_16b_pe add_1720 (
  .a(w_4560_16b),
  .b(w_4570_16b),
  .c(w_4571_16b),
  .clk(clk)
);
assign  w_4572_16b  =  r6_w_SAD_2a163_5_16b ;
assign  w_4575_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_4576_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_1721 (
  .a(w_4575_8b),
  .b(w_4576_8b),
  .c(w_4577_8b),
  .clk(clk)
);
ABS_16b_pe abs_1722 (
  .a(w_4577_8b),
  .b(1'b0),
  .c(w_4580_8b),
  .clk(clk)
);
assign  w_4581_8b  =  w_4580_8b ;
assign  w_4582_16b  =  w_4581_8b ;
ADD_16b_pe add_1723 (
  .a(w_4572_16b),
  .b(w_4582_16b),
  .c(w_4583_16b),
  .clk(clk)
);
assign  w_4584_16b  =  r7_w_SAD_2a163_5_16b ;
assign  w_4587_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_4588_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_1724 (
  .a(w_4587_8b),
  .b(w_4588_8b),
  .c(w_4589_8b),
  .clk(clk)
);
ABS_16b_pe abs_1725 (
  .a(w_4589_8b),
  .b(1'b0),
  .c(w_4592_8b),
  .clk(clk)
);
assign  w_4593_8b  =  w_4592_8b ;
assign  w_4594_16b  =  w_4593_8b ;
ADD_16b_pe add_1726 (
  .a(w_4584_16b),
  .b(w_4594_16b),
  .c(w_4595_16b),
  .clk(clk)
);
assign  w_4596_16b  =  r8_w_SAD_2a163_5_16b ;
assign  w_4599_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_4600_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_1727 (
  .a(w_4600_8b),
  .b(w_4599_8b),
  .c(w_4601_8b),
  .clk(clk)
);
ABS_16b_pe abs_1728 (
  .a(w_4601_8b),
  .b(1'b0),
  .c(w_4604_8b),
  .clk(clk)
);
assign  w_4605_8b  =  w_4604_8b ;
assign  w_4606_16b  =  w_4605_8b ;
ADD_16b_pe add_1729 (
  .a(w_4596_16b),
  .b(w_4606_16b),
  .c(w_4607_16b),
  .clk(clk)
);
assign  w_4608_16b  =  r9_w_SAD_2a163_5_16b ;
assign  w_4611_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_4612_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_1730 (
  .a(w_4611_8b),
  .b(w_4612_8b),
  .c(w_4613_8b),
  .clk(clk)
);
ABS_16b_pe abs_1731 (
  .a(w_4613_8b),
  .b(1'b0),
  .c(w_4616_8b),
  .clk(clk)
);
assign  w_4617_8b  =  w_4616_8b ;
assign  w_4618_16b  =  w_4617_8b ;
ADD_16b_pe add_1732 (
  .a(w_4618_16b),
  .b(w_4608_16b),
  .c(w_4619_16b),
  .clk(clk)
);
assign  w_4620_16b  =  r10_w_SAD_2a163_5_16b ;
assign  w_4623_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_4624_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_1733 (
  .a(w_4623_8b),
  .b(w_4624_8b),
  .c(w_4625_8b),
  .clk(clk)
);
ABS_16b_pe abs_1734 (
  .a(w_4625_8b),
  .b(1'b0),
  .c(w_4628_8b),
  .clk(clk)
);
assign  w_4629_8b  =  w_4628_8b ;
assign  w_4630_16b  =  w_4629_8b ;
ADD_16b_pe add_1735 (
  .a(w_4620_16b),
  .b(w_4630_16b),
  .c(w_4631_16b),
  .clk(clk)
);
assign  w_4632_16b  =  r11_w_SAD_2a163_5_16b ;
assign  w_4635_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_4636_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_1736 (
  .a(w_4636_8b),
  .b(w_4635_8b),
  .c(w_4637_8b),
  .clk(clk)
);
ABS_16b_pe abs_1737 (
  .a(w_4637_8b),
  .b(1'b0),
  .c(w_4640_8b),
  .clk(clk)
);
assign  w_4641_8b  =  w_4640_8b ;
assign  w_4642_16b  =  w_4641_8b ;
ADD_16b_pe add_1738 (
  .a(w_4642_16b),
  .b(w_4632_16b),
  .c(w_4643_16b),
  .clk(clk)
);
assign  w_4644_16b  =  r12_w_SAD_2a163_5_16b ;
assign  w_4647_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_4648_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_1739 (
  .a(w_4648_8b),
  .b(w_4647_8b),
  .c(w_4649_8b),
  .clk(clk)
);
ABS_16b_pe abs_1740 (
  .a(w_4649_8b),
  .b(1'b0),
  .c(w_4652_8b),
  .clk(clk)
);
assign  w_4653_8b  =  w_4652_8b ;
assign  w_4654_16b  =  w_4653_8b ;
ADD_16b_pe add_1741 (
  .a(w_4654_16b),
  .b(w_4644_16b),
  .c(w_4655_16b),
  .clk(clk)
);
assign  w_4656_16b  =  r13_w_SAD_2a163_5_16b ;
assign  w_4659_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_4660_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_1742 (
  .a(w_4659_8b),
  .b(w_4660_8b),
  .c(w_4661_8b),
  .clk(clk)
);
ABS_16b_pe abs_1743 (
  .a(w_4661_8b),
  .b(1'b0),
  .c(w_4664_8b),
  .clk(clk)
);
assign  w_4665_8b  =  w_4664_8b ;
assign  w_4666_16b  =  w_4665_8b ;
ADD_16b_pe add_1744 (
  .a(w_4666_16b),
  .b(w_4656_16b),
  .c(w_4667_16b),
  .clk(clk)
);
assign  w_4668_16b  =  r14_w_SAD_2a163_5_16b ;
assign  w_4671_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_4672_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_1745 (
  .a(w_4672_8b),
  .b(w_4671_8b),
  .c(w_4673_8b),
  .clk(clk)
);
ABS_16b_pe abs_1746 (
  .a(w_4673_8b),
  .b(1'b0),
  .c(w_4676_8b),
  .clk(clk)
);
assign  w_4677_8b  =  w_4676_8b ;
assign  w_4678_16b  =  w_4677_8b ;
ADD_16b_pe add_1747 (
  .a(w_4678_16b),
  .b(w_4668_16b),
  .c(w_4679_16b),
  .clk(clk)
);
assign  w_4680_16b  =  r15_w_SAD_2a163_5_16b ;
assign  w_4683_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_4684_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_1748 (
  .a(w_4684_8b),
  .b(w_4683_8b),
  .c(w_4685_8b),
  .clk(clk)
);
ABS_16b_pe abs_1749 (
  .a(w_4685_8b),
  .b(1'b0),
  .c(w_4688_8b),
  .clk(clk)
);
assign  w_4689_8b  =  w_4688_8b ;
assign  w_4690_16b  =  w_4689_8b ;
ADD_16b_pe add_1750 (
  .a(w_4690_16b),
  .b(w_4680_16b),
  .c(w_4691_16b),
  .clk(clk)
);
assign  w_4692_16b  =  r16_w_SAD_2a163_5_16b ;
assign  w_4695_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_4696_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_1751 (
  .a(w_4695_8b),
  .b(w_4696_8b),
  .c(w_4697_8b),
  .clk(clk)
);
ABS_16b_pe abs_1752 (
  .a(w_4697_8b),
  .b(1'b0),
  .c(w_4700_8b),
  .clk(clk)
);
assign  w_4701_8b  =  w_4700_8b ;
assign  w_4702_16b  =  w_4701_8b ;
ADD_16b_pe add_1753 (
  .a(w_4702_16b),
  .b(w_4692_16b),
  .c(w_4703_16b),
  .clk(clk)
);
assign  w_4704_16b  =  r17_w_SAD_2a163_5_16b ;
assign  w_4707_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_4708_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_1754 (
  .a(w_4707_8b),
  .b(w_4708_8b),
  .c(w_4709_8b),
  .clk(clk)
);
ABS_16b_pe abs_1755 (
  .a(w_4709_8b),
  .b(1'b0),
  .c(w_4712_8b),
  .clk(clk)
);
assign  w_4713_8b  =  w_4712_8b ;
assign  w_4714_16b  =  w_4713_8b ;
ADD_16b_pe add_1756 (
  .a(w_4704_16b),
  .b(w_4714_16b),
  .c(w_4715_16b),
  .clk(clk)
);
assign  w_4716_16b  =  r18_w_SAD_2a163_5_16b ;
assign  w_4719_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_4720_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_1757 (
  .a(w_4719_8b),
  .b(w_4720_8b),
  .c(w_4721_8b),
  .clk(clk)
);
ABS_16b_pe abs_1758 (
  .a(w_4721_8b),
  .b(1'b0),
  .c(w_4724_8b),
  .clk(clk)
);
assign  w_4725_8b  =  w_4724_8b ;
assign  w_4726_16b  =  w_4725_8b ;
ADD_16b_pe add_1759 (
  .a(w_4726_16b),
  .b(w_4716_16b),
  .c(w_4727_16b),
  .clk(clk)
);
assign  w_4728_16b  =  r19_w_SAD_2a163_5_16b ;
assign  w_4731_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_4732_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_1760 (
  .a(w_4732_8b),
  .b(w_4731_8b),
  .c(w_4733_8b),
  .clk(clk)
);
ABS_16b_pe abs_1761 (
  .a(w_4733_8b),
  .b(1'b0),
  .c(w_4736_8b),
  .clk(clk)
);
assign  w_4737_8b  =  w_4736_8b ;
assign  w_4738_16b  =  w_4737_8b ;
ADD_16b_pe add_1762 (
  .a(w_4728_16b),
  .b(w_4738_16b),
  .c(w_4739_16b),
  .clk(clk)
);
assign  w_4740_16b  =  r20_w_SAD_2a163_5_16b ;
assign  w_4743_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_4744_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_1763 (
  .a(w_4743_8b),
  .b(w_4744_8b),
  .c(w_4745_8b),
  .clk(clk)
);
ABS_16b_pe abs_1764 (
  .a(w_4745_8b),
  .b(1'b0),
  .c(w_4748_8b),
  .clk(clk)
);
assign  w_4749_8b  =  w_4748_8b ;
assign  w_4750_16b  =  w_4749_8b ;
ADD_16b_pe add_1765 (
  .a(w_4740_16b),
  .b(w_4750_16b),
  .c(w_4751_16b),
  .clk(clk)
);
assign  w_4752_16b  =  r21_w_SAD_2a163_5_16b ;
assign  w_4755_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_4756_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_1766 (
  .a(w_4755_8b),
  .b(w_4756_8b),
  .c(w_4757_8b),
  .clk(clk)
);
ABS_16b_pe abs_1767 (
  .a(w_4757_8b),
  .b(1'b0),
  .c(w_4760_8b),
  .clk(clk)
);
assign  w_4761_8b  =  w_4760_8b ;
assign  w_4762_16b  =  w_4761_8b ;
ADD_16b_pe add_1768 (
  .a(w_4762_16b),
  .b(w_4752_16b),
  .c(w_4763_16b),
  .clk(clk)
);
assign  w_4764_16b  =  r22_w_SAD_2a163_5_16b ;
assign  w_4767_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_4768_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_1769 (
  .a(w_4768_8b),
  .b(w_4767_8b),
  .c(w_4769_8b),
  .clk(clk)
);
ABS_16b_pe abs_1770 (
  .a(w_4769_8b),
  .b(1'b0),
  .c(w_4772_8b),
  .clk(clk)
);
assign  w_4773_8b  =  w_4772_8b ;
assign  w_4774_16b  =  w_4773_8b ;
ADD_16b_pe add_1771 (
  .a(w_4764_16b),
  .b(w_4774_16b),
  .c(w_4775_16b),
  .clk(clk)
);
assign  w_4776_16b  =  r23_w_SAD_2a163_5_16b ;
assign  w_4779_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4780_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_1772 (
  .a(w_4779_8b),
  .b(w_4780_8b),
  .c(w_4781_8b),
  .clk(clk)
);
ABS_16b_pe abs_1773 (
  .a(w_4781_8b),
  .b(1'b0),
  .c(w_4784_8b),
  .clk(clk)
);
assign  w_4785_8b  =  w_4784_8b ;
assign  w_4786_16b  =  w_4785_8b ;
ADD_16b_pe add_1774 (
  .a(w_4786_16b),
  .b(w_4776_16b),
  .c(w_4787_16b),
  .clk(clk)
);
assign  w_4788_16b  =  r24_w_SAD_2a163_5_16b ;
assign  w_4791_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4792_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_1775 (
  .a(w_4791_8b),
  .b(w_4792_8b),
  .c(w_4793_8b),
  .clk(clk)
);
ABS_16b_pe abs_1776 (
  .a(w_4793_8b),
  .b(1'b0),
  .c(w_4796_8b),
  .clk(clk)
);
assign  w_4797_8b  =  w_4796_8b ;
assign  w_4798_16b  =  w_4797_8b ;
ADD_16b_pe add_1777 (
  .a(w_4798_16b),
  .b(w_4788_16b),
  .c(w_4799_16b),
  .clk(clk)
);
assign  w_4800_16b  =  r25_w_SAD_2a163_5_16b ;
assign  w_4803_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4804_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_1778 (
  .a(w_4803_8b),
  .b(w_4804_8b),
  .c(w_4805_8b),
  .clk(clk)
);
ABS_16b_pe abs_1779 (
  .a(w_4805_8b),
  .b(1'b0),
  .c(w_4808_8b),
  .clk(clk)
);
assign  w_4809_8b  =  w_4808_8b ;
assign  w_4810_16b  =  w_4809_8b ;
ADD_16b_pe add_1780 (
  .a(w_4800_16b),
  .b(w_4810_16b),
  .c(w_4811_16b),
  .clk(clk)
);
assign  w_4812_16b  =  r26_w_SAD_2a163_5_16b ;
assign  w_4815_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4816_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_1781 (
  .a(w_4816_8b),
  .b(w_4815_8b),
  .c(w_4817_8b),
  .clk(clk)
);
ABS_16b_pe abs_1782 (
  .a(w_4817_8b),
  .b(1'b0),
  .c(w_4820_8b),
  .clk(clk)
);
assign  w_4821_8b  =  w_4820_8b ;
assign  w_4822_16b  =  w_4821_8b ;
ADD_16b_pe add_1783 (
  .a(w_4822_16b),
  .b(w_4812_16b),
  .c(w_4823_16b),
  .clk(clk)
);
assign  w_4824_16b  =  r27_w_SAD_2a163_5_16b ;
assign  w_4827_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4828_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_1784 (
  .a(w_4827_8b),
  .b(w_4828_8b),
  .c(w_4829_8b),
  .clk(clk)
);
ABS_16b_pe abs_1785 (
  .a(w_4829_8b),
  .b(1'b0),
  .c(w_4832_8b),
  .clk(clk)
);
assign  w_4833_8b  =  w_4832_8b ;
assign  w_4834_16b  =  w_4833_8b ;
ADD_16b_pe add_1786 (
  .a(w_4834_16b),
  .b(w_4824_16b),
  .c(w_4835_16b),
  .clk(clk)
);
assign  w_4836_16b  =  r28_w_SAD_2a163_5_16b ;
assign  w_4839_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4840_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_1787 (
  .a(w_4840_8b),
  .b(w_4839_8b),
  .c(w_4841_8b),
  .clk(clk)
);
ABS_16b_pe abs_1788 (
  .a(w_4841_8b),
  .b(1'b0),
  .c(w_4844_8b),
  .clk(clk)
);
assign  w_4845_8b  =  w_4844_8b ;
assign  w_4846_16b  =  w_4845_8b ;
ADD_16b_pe add_1789 (
  .a(w_4846_16b),
  .b(w_4836_16b),
  .c(w_4847_16b),
  .clk(clk)
);
assign  w_4848_16b  =  r29_w_SAD_2a163_5_16b ;
assign  w_4851_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4852_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_1790 (
  .a(w_4852_8b),
  .b(w_4851_8b),
  .c(w_4853_8b),
  .clk(clk)
);
ABS_16b_pe abs_1791 (
  .a(w_4853_8b),
  .b(1'b0),
  .c(w_4856_8b),
  .clk(clk)
);
assign  w_4857_8b  =  w_4856_8b ;
assign  w_4858_16b  =  w_4857_8b ;
ADD_16b_pe add_1792 (
  .a(w_4858_16b),
  .b(w_4848_16b),
  .c(w_4859_16b),
  .clk(clk)
);
assign  w_4860_16b  =  r30_w_SAD_2a163_5_16b ;
assign  w_4863_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_4864_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_1793 (
  .a(w_4863_8b),
  .b(w_4864_8b),
  .c(w_4865_8b),
  .clk(clk)
);
ABS_16b_pe abs_1794 (
  .a(w_4865_8b),
  .b(1'b0),
  .c(w_4868_8b),
  .clk(clk)
);
assign  w_4869_8b  =  w_4868_8b ;
assign  w_4870_16b  =  w_4869_8b ;
ADD_16b_pe add_1795 (
  .a(w_4870_16b),
  .b(w_4860_16b),
  .c(w_4871_16b),
  .clk(clk)
);
assign  w_4872_16b  =  r31_w_SAD_2a163_5_16b ;
assign  w_4875_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4876_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_1796 (
  .a(w_4875_8b),
  .b(w_4876_8b),
  .c(w_4877_8b),
  .clk(clk)
);
ABS_16b_pe abs_1797 (
  .a(w_4877_8b),
  .b(1'b0),
  .c(w_4880_8b),
  .clk(clk)
);
assign  w_4881_8b  =  w_4880_8b ;
assign  w_4882_16b  =  w_4881_8b ;
ADD_16b_pe add_1798 (
  .a(w_4882_16b),
  .b(w_4872_16b),
  .c(w_4883_16b),
  .clk(clk)
);
assign  w_4884_16b  =  r32_w_SAD_2a163_5_16b ;
assign  w_4887_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4888_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_1799 (
  .a(w_4888_8b),
  .b(w_4887_8b),
  .c(w_4889_8b),
  .clk(clk)
);
ABS_16b_pe abs_1800 (
  .a(w_4889_8b),
  .b(1'b0),
  .c(w_4892_8b),
  .clk(clk)
);
assign  w_4893_8b  =  w_4892_8b ;
assign  w_4894_16b  =  w_4893_8b ;
ADD_16b_pe add_1801 (
  .a(w_4894_16b),
  .b(w_4884_16b),
  .c(w_4895_16b),
  .clk(clk)
);
assign  w_4896_16b  =  r33_w_SAD_2a163_5_16b ;
assign  w_4899_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4900_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_1802 (
  .a(w_4900_8b),
  .b(w_4899_8b),
  .c(w_4901_8b),
  .clk(clk)
);
ABS_16b_pe abs_1803 (
  .a(w_4901_8b),
  .b(1'b0),
  .c(w_4904_8b),
  .clk(clk)
);
assign  w_4905_8b  =  w_4904_8b ;
assign  w_4906_16b  =  w_4905_8b ;
ADD_16b_pe add_1804 (
  .a(w_4896_16b),
  .b(w_4906_16b),
  .c(w_4907_16b),
  .clk(clk)
);
assign  w_4908_16b  =  r34_w_SAD_2a163_5_16b ;
assign  w_4911_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4912_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_1805 (
  .a(w_4912_8b),
  .b(w_4911_8b),
  .c(w_4913_8b),
  .clk(clk)
);
ABS_16b_pe abs_1806 (
  .a(w_4913_8b),
  .b(1'b0),
  .c(w_4916_8b),
  .clk(clk)
);
assign  w_4917_8b  =  w_4916_8b ;
assign  w_4918_16b  =  w_4917_8b ;
ADD_16b_pe add_1807 (
  .a(w_4908_16b),
  .b(w_4918_16b),
  .c(w_4919_16b),
  .clk(clk)
);
assign  w_4920_16b  =  r35_w_SAD_2a163_5_16b ;
assign  w_4923_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4924_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_1808 (
  .a(w_4923_8b),
  .b(w_4924_8b),
  .c(w_4925_8b),
  .clk(clk)
);
ABS_16b_pe abs_1809 (
  .a(w_4925_8b),
  .b(1'b0),
  .c(w_4928_8b),
  .clk(clk)
);
assign  w_4929_8b  =  w_4928_8b ;
assign  w_4930_16b  =  w_4929_8b ;
ADD_16b_pe add_1810 (
  .a(w_4920_16b),
  .b(w_4930_16b),
  .c(w_4931_16b),
  .clk(clk)
);
assign  w_4932_16b  =  r36_w_SAD_2a163_5_16b ;
assign  w_4935_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4936_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_1811 (
  .a(w_4935_8b),
  .b(w_4936_8b),
  .c(w_4937_8b),
  .clk(clk)
);
ABS_16b_pe abs_1812 (
  .a(w_4937_8b),
  .b(1'b0),
  .c(w_4940_8b),
  .clk(clk)
);
assign  w_4941_8b  =  w_4940_8b ;
assign  w_4942_16b  =  w_4941_8b ;
ADD_16b_pe add_1813 (
  .a(w_4932_16b),
  .b(w_4942_16b),
  .c(w_4943_16b),
  .clk(clk)
);
assign  w_4944_16b  =  r37_w_SAD_2a163_5_16b ;
assign  w_4947_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4948_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_1814 (
  .a(w_4947_8b),
  .b(w_4948_8b),
  .c(w_4949_8b),
  .clk(clk)
);
ABS_16b_pe abs_1815 (
  .a(w_4949_8b),
  .b(1'b0),
  .c(w_4952_8b),
  .clk(clk)
);
assign  w_4953_8b  =  w_4952_8b ;
assign  w_4954_16b  =  w_4953_8b ;
ADD_16b_pe add_1816 (
  .a(w_4944_16b),
  .b(w_4954_16b),
  .c(w_4955_16b),
  .clk(clk)
);
assign  w_4956_16b  =  r38_w_SAD_2a163_5_16b ;
assign  w_4959_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_4960_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_1817 (
  .a(w_4960_8b),
  .b(w_4959_8b),
  .c(w_4961_8b),
  .clk(clk)
);
ABS_16b_pe abs_1818 (
  .a(w_4961_8b),
  .b(1'b0),
  .c(w_4964_8b),
  .clk(clk)
);
assign  w_4965_8b  =  w_4964_8b ;
assign  w_4966_16b  =  w_4965_8b ;
ADD_16b_pe add_1819 (
  .a(w_4956_16b),
  .b(w_4966_16b),
  .c(w_4967_16b),
  .clk(clk)
);
assign  w_4968_16b  =  r39_w_SAD_2a163_5_16b ;
assign  w_4971_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_4972_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_1820 (
  .a(w_4971_8b),
  .b(w_4972_8b),
  .c(w_4973_8b),
  .clk(clk)
);
ABS_16b_pe abs_1821 (
  .a(w_4973_8b),
  .b(1'b0),
  .c(w_4976_8b),
  .clk(clk)
);
assign  w_4977_8b  =  w_4976_8b ;
assign  w_4978_16b  =  w_4977_8b ;
ADD_16b_pe add_1822 (
  .a(w_4978_16b),
  .b(w_4968_16b),
  .c(w_4979_16b),
  .clk(clk)
);
assign  w_4980_16b  =  r40_w_SAD_2a163_5_16b ;
assign  w_4983_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_4984_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_1823 (
  .a(w_4983_8b),
  .b(w_4984_8b),
  .c(w_4985_8b),
  .clk(clk)
);
ABS_16b_pe abs_1824 (
  .a(w_4985_8b),
  .b(1'b0),
  .c(w_4988_8b),
  .clk(clk)
);
assign  w_4989_8b  =  w_4988_8b ;
assign  w_4990_16b  =  w_4989_8b ;
ADD_16b_pe add_1825 (
  .a(w_4980_16b),
  .b(w_4990_16b),
  .c(w_4991_16b),
  .clk(clk)
);
assign  w_4992_16b  =  r41_w_SAD_2a163_5_16b ;
assign  w_4995_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_4996_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_1826 (
  .a(w_4996_8b),
  .b(w_4995_8b),
  .c(w_4997_8b),
  .clk(clk)
);
ABS_16b_pe abs_1827 (
  .a(w_4997_8b),
  .b(1'b0),
  .c(w_5000_8b),
  .clk(clk)
);
assign  w_5001_8b  =  w_5000_8b ;
assign  w_5002_16b  =  w_5001_8b ;
ADD_16b_pe add_1828 (
  .a(w_4992_16b),
  .b(w_5002_16b),
  .c(w_5003_16b),
  .clk(clk)
);
assign  w_5004_16b  =  r42_w_SAD_2a163_5_16b ;
assign  w_5007_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5008_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_1829 (
  .a(w_5007_8b),
  .b(w_5008_8b),
  .c(w_5009_8b),
  .clk(clk)
);
ABS_16b_pe abs_1830 (
  .a(w_5009_8b),
  .b(1'b0),
  .c(w_5012_8b),
  .clk(clk)
);
assign  w_5013_8b  =  w_5012_8b ;
assign  w_5014_16b  =  w_5013_8b ;
ADD_16b_pe add_1831 (
  .a(w_5004_16b),
  .b(w_5014_16b),
  .c(w_5015_16b),
  .clk(clk)
);
assign  w_5016_16b  =  r43_w_SAD_2a163_5_16b ;
assign  w_5019_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5020_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_1832 (
  .a(w_5019_8b),
  .b(w_5020_8b),
  .c(w_5021_8b),
  .clk(clk)
);
ABS_16b_pe abs_1833 (
  .a(w_5021_8b),
  .b(1'b0),
  .c(w_5024_8b),
  .clk(clk)
);
assign  w_5025_8b  =  w_5024_8b ;
assign  w_5026_16b  =  w_5025_8b ;
ADD_16b_pe add_1834 (
  .a(w_5026_16b),
  .b(w_5016_16b),
  .c(w_5027_16b),
  .clk(clk)
);
assign  w_5028_16b  =  r44_w_SAD_2a163_5_16b ;
assign  w_5031_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5032_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_1835 (
  .a(w_5032_8b),
  .b(w_5031_8b),
  .c(w_5033_8b),
  .clk(clk)
);
ABS_16b_pe abs_1836 (
  .a(w_5033_8b),
  .b(1'b0),
  .c(w_5036_8b),
  .clk(clk)
);
assign  w_5037_8b  =  w_5036_8b ;
assign  w_5038_16b  =  w_5037_8b ;
ADD_16b_pe add_1837 (
  .a(w_5028_16b),
  .b(w_5038_16b),
  .c(w_5039_16b),
  .clk(clk)
);
assign  w_5040_16b  =  r45_w_SAD_2a163_5_16b ;
assign  w_5043_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5044_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_1838 (
  .a(w_5043_8b),
  .b(w_5044_8b),
  .c(w_5045_8b),
  .clk(clk)
);
ABS_16b_pe abs_1839 (
  .a(w_5045_8b),
  .b(1'b0),
  .c(w_5048_8b),
  .clk(clk)
);
assign  w_5049_8b  =  w_5048_8b ;
assign  w_5050_16b  =  w_5049_8b ;
ADD_16b_pe add_1840 (
  .a(w_5040_16b),
  .b(w_5050_16b),
  .c(w_5051_16b),
  .clk(clk)
);
assign  w_5052_16b  =  r46_w_SAD_2a163_5_16b ;
assign  w_5055_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5056_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_1841 (
  .a(w_5055_8b),
  .b(w_5056_8b),
  .c(w_5057_8b),
  .clk(clk)
);
ABS_16b_pe abs_1842 (
  .a(w_5057_8b),
  .b(1'b0),
  .c(w_5060_8b),
  .clk(clk)
);
assign  w_5061_8b  =  w_5060_8b ;
assign  w_5062_16b  =  w_5061_8b ;
ADD_16b_pe add_1843 (
  .a(w_5062_16b),
  .b(w_5052_16b),
  .c(w_5063_16b),
  .clk(clk)
);
assign  w_5064_16b  =  r47_w_SAD_2a163_5_16b ;
assign  w_5067_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5068_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_1844 (
  .a(w_5068_8b),
  .b(w_5067_8b),
  .c(w_5069_8b),
  .clk(clk)
);
ABS_16b_pe abs_1845 (
  .a(w_5069_8b),
  .b(1'b0),
  .c(w_5072_8b),
  .clk(clk)
);
assign  w_5073_8b  =  w_5072_8b ;
assign  w_5074_16b  =  w_5073_8b ;
ADD_16b_pe add_1846 (
  .a(w_5064_16b),
  .b(w_5074_16b),
  .c(w_5075_16b),
  .clk(clk)
);
assign  w_5076_16b  =  r48_w_SAD_2a163_5_16b ;
assign  w_5079_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5080_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_1847 (
  .a(w_5079_8b),
  .b(w_5080_8b),
  .c(w_5081_8b),
  .clk(clk)
);
ABS_16b_pe abs_1848 (
  .a(w_5081_8b),
  .b(1'b0),
  .c(w_5084_8b),
  .clk(clk)
);
assign  w_5085_8b  =  w_5084_8b ;
assign  w_5086_16b  =  w_5085_8b ;
ADD_16b_pe add_1849 (
  .a(w_5086_16b),
  .b(w_5076_16b),
  .c(w_5087_16b),
  .clk(clk)
);
assign  w_5088_16b  =  r49_w_SAD_2a163_5_16b ;
assign  w_5091_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5092_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_1850 (
  .a(w_5091_8b),
  .b(w_5092_8b),
  .c(w_5093_8b),
  .clk(clk)
);
ABS_16b_pe abs_1851 (
  .a(w_5093_8b),
  .b(1'b0),
  .c(w_5096_8b),
  .clk(clk)
);
assign  w_5097_8b  =  w_5096_8b ;
assign  w_5098_16b  =  w_5097_8b ;
ADD_16b_pe add_1852 (
  .a(w_5098_16b),
  .b(w_5088_16b),
  .c(w_5099_16b),
  .clk(clk)
);
assign  w_5100_16b  =  r50_w_SAD_2a163_5_16b ;
assign  w_5103_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5104_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_1853 (
  .a(w_5104_8b),
  .b(w_5103_8b),
  .c(w_5105_8b),
  .clk(clk)
);
ABS_16b_pe abs_1854 (
  .a(w_5105_8b),
  .b(1'b0),
  .c(w_5108_8b),
  .clk(clk)
);
assign  w_5109_8b  =  w_5108_8b ;
assign  w_5110_16b  =  w_5109_8b ;
ADD_16b_pe add_1855 (
  .a(w_5110_16b),
  .b(w_5100_16b),
  .c(w_5111_16b),
  .clk(clk)
);
assign  w_5112_16b  =  r51_w_SAD_2a163_5_16b ;
assign  w_5115_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5116_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_1856 (
  .a(w_5115_8b),
  .b(w_5116_8b),
  .c(w_5117_8b),
  .clk(clk)
);
ABS_16b_pe abs_1857 (
  .a(w_5117_8b),
  .b(1'b0),
  .c(w_5120_8b),
  .clk(clk)
);
assign  w_5121_8b  =  w_5120_8b ;
assign  w_5122_16b  =  w_5121_8b ;
ADD_16b_pe add_1858 (
  .a(w_5122_16b),
  .b(w_5112_16b),
  .c(w_5123_16b),
  .clk(clk)
);
assign  w_5124_16b  =  r52_w_SAD_2a163_5_16b ;
assign  w_5127_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5128_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_1859 (
  .a(w_5128_8b),
  .b(w_5127_8b),
  .c(w_5129_8b),
  .clk(clk)
);
ABS_16b_pe abs_1860 (
  .a(w_5129_8b),
  .b(1'b0),
  .c(w_5132_8b),
  .clk(clk)
);
assign  w_5133_8b  =  w_5132_8b ;
assign  w_5134_16b  =  w_5133_8b ;
ADD_16b_pe add_1861 (
  .a(w_5134_16b),
  .b(w_5124_16b),
  .c(w_5135_16b),
  .clk(clk)
);
assign  w_5136_16b  =  r53_w_SAD_2a163_5_16b ;
assign  w_5139_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5140_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_1862 (
  .a(w_5140_8b),
  .b(w_5139_8b),
  .c(w_5141_8b),
  .clk(clk)
);
ABS_16b_pe abs_1863 (
  .a(w_5141_8b),
  .b(1'b0),
  .c(w_5144_8b),
  .clk(clk)
);
assign  w_5145_8b  =  w_5144_8b ;
assign  w_5146_16b  =  w_5145_8b ;
ADD_16b_pe add_1864 (
  .a(w_5136_16b),
  .b(w_5146_16b),
  .c(w_5147_16b),
  .clk(clk)
);
assign  w_5148_16b  =  r54_w_SAD_2a163_5_16b ;
assign  w_5151_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5152_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_1865 (
  .a(w_5151_8b),
  .b(w_5152_8b),
  .c(w_5153_8b),
  .clk(clk)
);
ABS_16b_pe abs_1866 (
  .a(w_5153_8b),
  .b(1'b0),
  .c(w_5156_8b),
  .clk(clk)
);
assign  w_5157_8b  =  w_5156_8b ;
assign  w_5158_16b  =  w_5157_8b ;
ADD_16b_pe add_1867 (
  .a(w_5158_16b),
  .b(w_5148_16b),
  .c(w_5159_16b),
  .clk(clk)
);
assign  w_5160_16b  =  r55_w_SAD_2a163_5_16b ;
assign  w_5163_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5164_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_1868 (
  .a(w_5164_8b),
  .b(w_5163_8b),
  .c(w_5165_8b),
  .clk(clk)
);
ABS_16b_pe abs_1869 (
  .a(w_5165_8b),
  .b(1'b0),
  .c(w_5168_8b),
  .clk(clk)
);
assign  w_5169_8b  =  w_5168_8b ;
assign  w_5170_16b  =  w_5169_8b ;
ADD_16b_pe add_1870 (
  .a(w_5170_16b),
  .b(w_5160_16b),
  .c(w_5171_16b),
  .clk(clk)
);
assign  w_5172_16b  =  r56_w_SAD_2a163_5_16b ;
assign  w_5175_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5176_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_1871 (
  .a(w_5176_8b),
  .b(w_5175_8b),
  .c(w_5177_8b),
  .clk(clk)
);
ABS_16b_pe abs_1872 (
  .a(w_5177_8b),
  .b(1'b0),
  .c(w_5180_8b),
  .clk(clk)
);
assign  w_5181_8b  =  w_5180_8b ;
assign  w_5182_16b  =  w_5181_8b ;
ADD_16b_pe add_1873 (
  .a(w_5172_16b),
  .b(w_5182_16b),
  .c(w_5183_16b),
  .clk(clk)
);
assign  w_5184_16b  =  r57_w_SAD_2a163_5_16b ;
assign  w_5187_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5188_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_1874 (
  .a(w_5187_8b),
  .b(w_5188_8b),
  .c(w_5189_8b),
  .clk(clk)
);
ABS_16b_pe abs_1875 (
  .a(w_5189_8b),
  .b(1'b0),
  .c(w_5192_8b),
  .clk(clk)
);
assign  w_5193_8b  =  w_5192_8b ;
assign  w_5194_16b  =  w_5193_8b ;
ADD_16b_pe add_1876 (
  .a(w_5194_16b),
  .b(w_5184_16b),
  .c(w_5195_16b),
  .clk(clk)
);
assign  w_5196_16b  =  r58_w_SAD_2a163_5_16b ;
assign  w_5199_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5200_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_1877 (
  .a(w_5199_8b),
  .b(w_5200_8b),
  .c(w_5201_8b),
  .clk(clk)
);
ABS_16b_pe abs_1878 (
  .a(w_5201_8b),
  .b(1'b0),
  .c(w_5204_8b),
  .clk(clk)
);
assign  w_5205_8b  =  w_5204_8b ;
assign  w_5206_16b  =  w_5205_8b ;
ADD_16b_pe add_1879 (
  .a(w_5196_16b),
  .b(w_5206_16b),
  .c(w_5207_16b),
  .clk(clk)
);
assign  w_5208_16b  =  r59_w_SAD_2a163_5_16b ;
assign  w_5211_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5212_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_1880 (
  .a(w_5212_8b),
  .b(w_5211_8b),
  .c(w_5213_8b),
  .clk(clk)
);
ABS_16b_pe abs_1881 (
  .a(w_5213_8b),
  .b(1'b0),
  .c(w_5216_8b),
  .clk(clk)
);
assign  w_5217_8b  =  w_5216_8b ;
assign  w_5218_16b  =  w_5217_8b ;
ADD_16b_pe add_1882 (
  .a(w_5208_16b),
  .b(w_5218_16b),
  .c(w_5219_16b),
  .clk(clk)
);
assign  w_5220_16b  =  r60_w_SAD_2a163_5_16b ;
assign  w_5223_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5224_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_1883 (
  .a(w_5224_8b),
  .b(w_5223_8b),
  .c(w_5225_8b),
  .clk(clk)
);
ABS_16b_pe abs_1884 (
  .a(w_5225_8b),
  .b(1'b0),
  .c(w_5228_8b),
  .clk(clk)
);
assign  w_5229_8b  =  w_5228_8b ;
assign  w_5230_16b  =  w_5229_8b ;
ADD_16b_pe add_1885 (
  .a(w_5230_16b),
  .b(w_5220_16b),
  .c(w_5231_16b),
  .clk(clk)
);
assign  w_5232_16b  =  r61_w_SAD_2a163_5_16b ;
assign  w_5235_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5236_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_1886 (
  .a(w_5235_8b),
  .b(w_5236_8b),
  .c(w_5237_8b),
  .clk(clk)
);
ABS_16b_pe abs_1887 (
  .a(w_5237_8b),
  .b(1'b0),
  .c(w_5240_8b),
  .clk(clk)
);
assign  w_5241_8b  =  w_5240_8b ;
assign  w_5242_16b  =  w_5241_8b ;
ADD_16b_pe add_1888 (
  .a(w_5232_16b),
  .b(w_5242_16b),
  .c(w_5243_16b),
  .clk(clk)
);
assign  w_5244_16b  =  r62_w_SAD_2a163_5_16b ;
assign  w_5247_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5248_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_1889 (
  .a(w_5248_8b),
  .b(w_5247_8b),
  .c(w_5249_8b),
  .clk(clk)
);
ABS_16b_pe abs_1890 (
  .a(w_5249_8b),
  .b(1'b0),
  .c(w_5252_8b),
  .clk(clk)
);
assign  w_5253_8b  =  w_5252_8b ;
assign  w_5254_16b  =  w_5253_8b ;
ADD_16b_pe add_1891 (
  .a(w_5244_16b),
  .b(w_5254_16b),
  .c(w_5255_16b),
  .clk(clk)
);
assign  w_5256_16b  = 1'b0;
assign  w_5259_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_5260_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_1892 (
  .a(w_5259_8b),
  .b(w_5260_8b),
  .c(w_5261_8b),
  .clk(clk)
);
ABS_16b_pe abs_1893 (
  .a(w_5261_8b),
  .b(1'b0),
  .c(w_5264_8b),
  .clk(clk)
);
assign  w_5265_8b  =  w_5264_8b ;
assign  w_5266_16b  =  w_5265_8b ;
ADD_16b_pe add_1894 (
  .a(w_5256_16b),
  .b(w_5266_16b),
  .c(w_5267_16b),
  .clk(clk)
);
assign  w_5268_16b  =  r0_w_SAD_2a163_6_16b ;
assign  w_5271_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_5272_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_1895 (
  .a(w_5271_8b),
  .b(w_5272_8b),
  .c(w_5273_8b),
  .clk(clk)
);
ABS_16b_pe abs_1896 (
  .a(w_5273_8b),
  .b(1'b0),
  .c(w_5276_8b),
  .clk(clk)
);
assign  w_5277_8b  =  w_5276_8b ;
assign  w_5278_16b  =  w_5277_8b ;
ADD_16b_pe add_1897 (
  .a(w_5268_16b),
  .b(w_5278_16b),
  .c(w_5279_16b),
  .clk(clk)
);
assign  w_5280_16b  =  r1_w_SAD_2a163_6_16b ;
assign  w_5283_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_5284_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_1898 (
  .a(w_5284_8b),
  .b(w_5283_8b),
  .c(w_5285_8b),
  .clk(clk)
);
ABS_16b_pe abs_1899 (
  .a(w_5285_8b),
  .b(1'b0),
  .c(w_5288_8b),
  .clk(clk)
);
assign  w_5289_8b  =  w_5288_8b ;
assign  w_5290_16b  =  w_5289_8b ;
ADD_16b_pe add_1900 (
  .a(w_5280_16b),
  .b(w_5290_16b),
  .c(w_5291_16b),
  .clk(clk)
);
assign  w_5292_16b  =  r2_w_SAD_2a163_6_16b ;
assign  w_5295_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_5296_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_1901 (
  .a(w_5296_8b),
  .b(w_5295_8b),
  .c(w_5297_8b),
  .clk(clk)
);
ABS_16b_pe abs_1902 (
  .a(w_5297_8b),
  .b(1'b0),
  .c(w_5300_8b),
  .clk(clk)
);
assign  w_5301_8b  =  w_5300_8b ;
assign  w_5302_16b  =  w_5301_8b ;
ADD_16b_pe add_1903 (
  .a(w_5292_16b),
  .b(w_5302_16b),
  .c(w_5303_16b),
  .clk(clk)
);
assign  w_5304_16b  =  r3_w_SAD_2a163_6_16b ;
assign  w_5307_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_5308_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_1904 (
  .a(w_5307_8b),
  .b(w_5308_8b),
  .c(w_5309_8b),
  .clk(clk)
);
ABS_16b_pe abs_1905 (
  .a(w_5309_8b),
  .b(1'b0),
  .c(w_5312_8b),
  .clk(clk)
);
assign  w_5313_8b  =  w_5312_8b ;
assign  w_5314_16b  =  w_5313_8b ;
ADD_16b_pe add_1906 (
  .a(w_5304_16b),
  .b(w_5314_16b),
  .c(w_5315_16b),
  .clk(clk)
);
assign  w_5316_16b  =  r4_w_SAD_2a163_6_16b ;
assign  w_5319_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_5320_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_1907 (
  .a(w_5319_8b),
  .b(w_5320_8b),
  .c(w_5321_8b),
  .clk(clk)
);
ABS_16b_pe abs_1908 (
  .a(w_5321_8b),
  .b(1'b0),
  .c(w_5324_8b),
  .clk(clk)
);
assign  w_5325_8b  =  w_5324_8b ;
assign  w_5326_16b  =  w_5325_8b ;
ADD_16b_pe add_1909 (
  .a(w_5326_16b),
  .b(w_5316_16b),
  .c(w_5327_16b),
  .clk(clk)
);
assign  w_5328_16b  =  r5_w_SAD_2a163_6_16b ;
assign  w_5331_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_5332_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_1910 (
  .a(w_5331_8b),
  .b(w_5332_8b),
  .c(w_5333_8b),
  .clk(clk)
);
ABS_16b_pe abs_1911 (
  .a(w_5333_8b),
  .b(1'b0),
  .c(w_5336_8b),
  .clk(clk)
);
assign  w_5337_8b  =  w_5336_8b ;
assign  w_5338_16b  =  w_5337_8b ;
ADD_16b_pe add_1912 (
  .a(w_5338_16b),
  .b(w_5328_16b),
  .c(w_5339_16b),
  .clk(clk)
);
assign  w_5340_16b  =  r6_w_SAD_2a163_6_16b ;
assign  w_5343_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_5344_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_1913 (
  .a(w_5343_8b),
  .b(w_5344_8b),
  .c(w_5345_8b),
  .clk(clk)
);
ABS_16b_pe abs_1914 (
  .a(w_5345_8b),
  .b(1'b0),
  .c(w_5348_8b),
  .clk(clk)
);
assign  w_5349_8b  =  w_5348_8b ;
assign  w_5350_16b  =  w_5349_8b ;
ADD_16b_pe add_1915 (
  .a(w_5340_16b),
  .b(w_5350_16b),
  .c(w_5351_16b),
  .clk(clk)
);
assign  w_5352_16b  =  r7_w_SAD_2a163_6_16b ;
assign  w_5355_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_5356_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_1916 (
  .a(w_5356_8b),
  .b(w_5355_8b),
  .c(w_5357_8b),
  .clk(clk)
);
ABS_16b_pe abs_1917 (
  .a(w_5357_8b),
  .b(1'b0),
  .c(w_5360_8b),
  .clk(clk)
);
assign  w_5361_8b  =  w_5360_8b ;
assign  w_5362_16b  =  w_5361_8b ;
ADD_16b_pe add_1918 (
  .a(w_5362_16b),
  .b(w_5352_16b),
  .c(w_5363_16b),
  .clk(clk)
);
assign  w_5364_16b  =  r8_w_SAD_2a163_6_16b ;
assign  w_5367_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_5368_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_1919 (
  .a(w_5367_8b),
  .b(w_5368_8b),
  .c(w_5369_8b),
  .clk(clk)
);
ABS_16b_pe abs_1920 (
  .a(w_5369_8b),
  .b(1'b0),
  .c(w_5372_8b),
  .clk(clk)
);
assign  w_5373_8b  =  w_5372_8b ;
assign  w_5374_16b  =  w_5373_8b ;
ADD_16b_pe add_1921 (
  .a(w_5374_16b),
  .b(w_5364_16b),
  .c(w_5375_16b),
  .clk(clk)
);
assign  w_5376_16b  =  r9_w_SAD_2a163_6_16b ;
assign  w_5379_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_5380_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_1922 (
  .a(w_5380_8b),
  .b(w_5379_8b),
  .c(w_5381_8b),
  .clk(clk)
);
ABS_16b_pe abs_1923 (
  .a(w_5381_8b),
  .b(1'b0),
  .c(w_5384_8b),
  .clk(clk)
);
assign  w_5385_8b  =  w_5384_8b ;
assign  w_5386_16b  =  w_5385_8b ;
ADD_16b_pe add_1924 (
  .a(w_5386_16b),
  .b(w_5376_16b),
  .c(w_5387_16b),
  .clk(clk)
);
assign  w_5388_16b  =  r10_w_SAD_2a163_6_16b ;
assign  w_5391_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_5392_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_1925 (
  .a(w_5392_8b),
  .b(w_5391_8b),
  .c(w_5393_8b),
  .clk(clk)
);
ABS_16b_pe abs_1926 (
  .a(w_5393_8b),
  .b(1'b0),
  .c(w_5396_8b),
  .clk(clk)
);
assign  w_5397_8b  =  w_5396_8b ;
assign  w_5398_16b  =  w_5397_8b ;
ADD_16b_pe add_1927 (
  .a(w_5398_16b),
  .b(w_5388_16b),
  .c(w_5399_16b),
  .clk(clk)
);
assign  w_5400_16b  =  r11_w_SAD_2a163_6_16b ;
assign  w_5403_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_5404_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_1928 (
  .a(w_5403_8b),
  .b(w_5404_8b),
  .c(w_5405_8b),
  .clk(clk)
);
ABS_16b_pe abs_1929 (
  .a(w_5405_8b),
  .b(1'b0),
  .c(w_5408_8b),
  .clk(clk)
);
assign  w_5409_8b  =  w_5408_8b ;
assign  w_5410_16b  =  w_5409_8b ;
ADD_16b_pe add_1930 (
  .a(w_5400_16b),
  .b(w_5410_16b),
  .c(w_5411_16b),
  .clk(clk)
);
assign  w_5412_16b  =  r12_w_SAD_2a163_6_16b ;
assign  w_5415_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_5416_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_1931 (
  .a(w_5415_8b),
  .b(w_5416_8b),
  .c(w_5417_8b),
  .clk(clk)
);
ABS_16b_pe abs_1932 (
  .a(w_5417_8b),
  .b(1'b0),
  .c(w_5420_8b),
  .clk(clk)
);
assign  w_5421_8b  =  w_5420_8b ;
assign  w_5422_16b  =  w_5421_8b ;
ADD_16b_pe add_1933 (
  .a(w_5422_16b),
  .b(w_5412_16b),
  .c(w_5423_16b),
  .clk(clk)
);
assign  w_5424_16b  =  r13_w_SAD_2a163_6_16b ;
assign  w_5427_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_5428_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_1934 (
  .a(w_5428_8b),
  .b(w_5427_8b),
  .c(w_5429_8b),
  .clk(clk)
);
ABS_16b_pe abs_1935 (
  .a(w_5429_8b),
  .b(1'b0),
  .c(w_5432_8b),
  .clk(clk)
);
assign  w_5433_8b  =  w_5432_8b ;
assign  w_5434_16b  =  w_5433_8b ;
ADD_16b_pe add_1936 (
  .a(w_5424_16b),
  .b(w_5434_16b),
  .c(w_5435_16b),
  .clk(clk)
);
assign  w_5436_16b  =  r14_w_SAD_2a163_6_16b ;
assign  w_5439_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_5440_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_1937 (
  .a(w_5439_8b),
  .b(w_5440_8b),
  .c(w_5441_8b),
  .clk(clk)
);
ABS_16b_pe abs_1938 (
  .a(w_5441_8b),
  .b(1'b0),
  .c(w_5444_8b),
  .clk(clk)
);
assign  w_5445_8b  =  w_5444_8b ;
assign  w_5446_16b  =  w_5445_8b ;
ADD_16b_pe add_1939 (
  .a(w_5446_16b),
  .b(w_5436_16b),
  .c(w_5447_16b),
  .clk(clk)
);
assign  w_5448_16b  =  r15_w_SAD_2a163_6_16b ;
assign  w_5451_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_5452_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_1940 (
  .a(w_5451_8b),
  .b(w_5452_8b),
  .c(w_5453_8b),
  .clk(clk)
);
ABS_16b_pe abs_1941 (
  .a(w_5453_8b),
  .b(1'b0),
  .c(w_5456_8b),
  .clk(clk)
);
assign  w_5457_8b  =  w_5456_8b ;
assign  w_5458_16b  =  w_5457_8b ;
ADD_16b_pe add_1942 (
  .a(w_5458_16b),
  .b(w_5448_16b),
  .c(w_5459_16b),
  .clk(clk)
);
assign  w_5460_16b  =  r16_w_SAD_2a163_6_16b ;
assign  w_5463_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_5464_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_1943 (
  .a(w_5464_8b),
  .b(w_5463_8b),
  .c(w_5465_8b),
  .clk(clk)
);
ABS_16b_pe abs_1944 (
  .a(w_5465_8b),
  .b(1'b0),
  .c(w_5468_8b),
  .clk(clk)
);
assign  w_5469_8b  =  w_5468_8b ;
assign  w_5470_16b  =  w_5469_8b ;
ADD_16b_pe add_1945 (
  .a(w_5460_16b),
  .b(w_5470_16b),
  .c(w_5471_16b),
  .clk(clk)
);
assign  w_5472_16b  =  r17_w_SAD_2a163_6_16b ;
assign  w_5475_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_5476_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_1946 (
  .a(w_5476_8b),
  .b(w_5475_8b),
  .c(w_5477_8b),
  .clk(clk)
);
ABS_16b_pe abs_1947 (
  .a(w_5477_8b),
  .b(1'b0),
  .c(w_5480_8b),
  .clk(clk)
);
assign  w_5481_8b  =  w_5480_8b ;
assign  w_5482_16b  =  w_5481_8b ;
ADD_16b_pe add_1948 (
  .a(w_5482_16b),
  .b(w_5472_16b),
  .c(w_5483_16b),
  .clk(clk)
);
assign  w_5484_16b  =  r18_w_SAD_2a163_6_16b ;
assign  w_5487_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_5488_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_1949 (
  .a(w_5488_8b),
  .b(w_5487_8b),
  .c(w_5489_8b),
  .clk(clk)
);
ABS_16b_pe abs_1950 (
  .a(w_5489_8b),
  .b(1'b0),
  .c(w_5492_8b),
  .clk(clk)
);
assign  w_5493_8b  =  w_5492_8b ;
assign  w_5494_16b  =  w_5493_8b ;
ADD_16b_pe add_1951 (
  .a(w_5494_16b),
  .b(w_5484_16b),
  .c(w_5495_16b),
  .clk(clk)
);
assign  w_5496_16b  =  r19_w_SAD_2a163_6_16b ;
assign  w_5499_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_5500_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_1952 (
  .a(w_5500_8b),
  .b(w_5499_8b),
  .c(w_5501_8b),
  .clk(clk)
);
ABS_16b_pe abs_1953 (
  .a(w_5501_8b),
  .b(1'b0),
  .c(w_5504_8b),
  .clk(clk)
);
assign  w_5505_8b  =  w_5504_8b ;
assign  w_5506_16b  =  w_5505_8b ;
ADD_16b_pe add_1954 (
  .a(w_5496_16b),
  .b(w_5506_16b),
  .c(w_5507_16b),
  .clk(clk)
);
assign  w_5508_16b  =  r20_w_SAD_2a163_6_16b ;
assign  w_5511_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_5512_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_1955 (
  .a(w_5511_8b),
  .b(w_5512_8b),
  .c(w_5513_8b),
  .clk(clk)
);
ABS_16b_pe abs_1956 (
  .a(w_5513_8b),
  .b(1'b0),
  .c(w_5516_8b),
  .clk(clk)
);
assign  w_5517_8b  =  w_5516_8b ;
assign  w_5518_16b  =  w_5517_8b ;
ADD_16b_pe add_1957 (
  .a(w_5518_16b),
  .b(w_5508_16b),
  .c(w_5519_16b),
  .clk(clk)
);
assign  w_5520_16b  =  r21_w_SAD_2a163_6_16b ;
assign  w_5523_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_5524_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_1958 (
  .a(w_5524_8b),
  .b(w_5523_8b),
  .c(w_5525_8b),
  .clk(clk)
);
ABS_16b_pe abs_1959 (
  .a(w_5525_8b),
  .b(1'b0),
  .c(w_5528_8b),
  .clk(clk)
);
assign  w_5529_8b  =  w_5528_8b ;
assign  w_5530_16b  =  w_5529_8b ;
ADD_16b_pe add_1960 (
  .a(w_5530_16b),
  .b(w_5520_16b),
  .c(w_5531_16b),
  .clk(clk)
);
assign  w_5532_16b  =  r22_w_SAD_2a163_6_16b ;
assign  w_5535_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_5536_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_1961 (
  .a(w_5536_8b),
  .b(w_5535_8b),
  .c(w_5537_8b),
  .clk(clk)
);
ABS_16b_pe abs_1962 (
  .a(w_5537_8b),
  .b(1'b0),
  .c(w_5540_8b),
  .clk(clk)
);
assign  w_5541_8b  =  w_5540_8b ;
assign  w_5542_16b  =  w_5541_8b ;
ADD_16b_pe add_1963 (
  .a(w_5532_16b),
  .b(w_5542_16b),
  .c(w_5543_16b),
  .clk(clk)
);
assign  w_5544_16b  =  r23_w_SAD_2a163_6_16b ;
assign  w_5547_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_5548_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_1964 (
  .a(w_5547_8b),
  .b(w_5548_8b),
  .c(w_5549_8b),
  .clk(clk)
);
ABS_16b_pe abs_1965 (
  .a(w_5549_8b),
  .b(1'b0),
  .c(w_5552_8b),
  .clk(clk)
);
assign  w_5553_8b  =  w_5552_8b ;
assign  w_5554_16b  =  w_5553_8b ;
ADD_16b_pe add_1966 (
  .a(w_5554_16b),
  .b(w_5544_16b),
  .c(w_5555_16b),
  .clk(clk)
);
assign  w_5556_16b  =  r24_w_SAD_2a163_6_16b ;
assign  w_5559_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_5560_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_1967 (
  .a(w_5560_8b),
  .b(w_5559_8b),
  .c(w_5561_8b),
  .clk(clk)
);
ABS_16b_pe abs_1968 (
  .a(w_5561_8b),
  .b(1'b0),
  .c(w_5564_8b),
  .clk(clk)
);
assign  w_5565_8b  =  w_5564_8b ;
assign  w_5566_16b  =  w_5565_8b ;
ADD_16b_pe add_1969 (
  .a(w_5556_16b),
  .b(w_5566_16b),
  .c(w_5567_16b),
  .clk(clk)
);
assign  w_5568_16b  =  r25_w_SAD_2a163_6_16b ;
assign  w_5571_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_5572_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_1970 (
  .a(w_5572_8b),
  .b(w_5571_8b),
  .c(w_5573_8b),
  .clk(clk)
);
ABS_16b_pe abs_1971 (
  .a(w_5573_8b),
  .b(1'b0),
  .c(w_5576_8b),
  .clk(clk)
);
assign  w_5577_8b  =  w_5576_8b ;
assign  w_5578_16b  =  w_5577_8b ;
ADD_16b_pe add_1972 (
  .a(w_5568_16b),
  .b(w_5578_16b),
  .c(w_5579_16b),
  .clk(clk)
);
assign  w_5580_16b  =  r26_w_SAD_2a163_6_16b ;
assign  w_5583_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_5584_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_1973 (
  .a(w_5583_8b),
  .b(w_5584_8b),
  .c(w_5585_8b),
  .clk(clk)
);
ABS_16b_pe abs_1974 (
  .a(w_5585_8b),
  .b(1'b0),
  .c(w_5588_8b),
  .clk(clk)
);
assign  w_5589_8b  =  w_5588_8b ;
assign  w_5590_16b  =  w_5589_8b ;
ADD_16b_pe add_1975 (
  .a(w_5590_16b),
  .b(w_5580_16b),
  .c(w_5591_16b),
  .clk(clk)
);
assign  w_5592_16b  =  r27_w_SAD_2a163_6_16b ;
assign  w_5595_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_5596_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_1976 (
  .a(w_5595_8b),
  .b(w_5596_8b),
  .c(w_5597_8b),
  .clk(clk)
);
ABS_16b_pe abs_1977 (
  .a(w_5597_8b),
  .b(1'b0),
  .c(w_5600_8b),
  .clk(clk)
);
assign  w_5601_8b  =  w_5600_8b ;
assign  w_5602_16b  =  w_5601_8b ;
ADD_16b_pe add_1978 (
  .a(w_5602_16b),
  .b(w_5592_16b),
  .c(w_5603_16b),
  .clk(clk)
);
assign  w_5604_16b  =  r28_w_SAD_2a163_6_16b ;
assign  w_5607_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_5608_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_1979 (
  .a(w_5608_8b),
  .b(w_5607_8b),
  .c(w_5609_8b),
  .clk(clk)
);
ABS_16b_pe abs_1980 (
  .a(w_5609_8b),
  .b(1'b0),
  .c(w_5612_8b),
  .clk(clk)
);
assign  w_5613_8b  =  w_5612_8b ;
assign  w_5614_16b  =  w_5613_8b ;
ADD_16b_pe add_1981 (
  .a(w_5604_16b),
  .b(w_5614_16b),
  .c(w_5615_16b),
  .clk(clk)
);
assign  w_5616_16b  =  r29_w_SAD_2a163_6_16b ;
assign  w_5619_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_5620_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_1982 (
  .a(w_5619_8b),
  .b(w_5620_8b),
  .c(w_5621_8b),
  .clk(clk)
);
ABS_16b_pe abs_1983 (
  .a(w_5621_8b),
  .b(1'b0),
  .c(w_5624_8b),
  .clk(clk)
);
assign  w_5625_8b  =  w_5624_8b ;
assign  w_5626_16b  =  w_5625_8b ;
ADD_16b_pe add_1984 (
  .a(w_5616_16b),
  .b(w_5626_16b),
  .c(w_5627_16b),
  .clk(clk)
);
assign  w_5628_16b  =  r30_w_SAD_2a163_6_16b ;
assign  w_5631_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_5632_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_1985 (
  .a(w_5631_8b),
  .b(w_5632_8b),
  .c(w_5633_8b),
  .clk(clk)
);
ABS_16b_pe abs_1986 (
  .a(w_5633_8b),
  .b(1'b0),
  .c(w_5636_8b),
  .clk(clk)
);
assign  w_5637_8b  =  w_5636_8b ;
assign  w_5638_16b  =  w_5637_8b ;
ADD_16b_pe add_1987 (
  .a(w_5628_16b),
  .b(w_5638_16b),
  .c(w_5639_16b),
  .clk(clk)
);
assign  w_5640_16b  =  r31_w_SAD_2a163_6_16b ;
assign  w_5643_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_5644_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_1988 (
  .a(w_5644_8b),
  .b(w_5643_8b),
  .c(w_5645_8b),
  .clk(clk)
);
ABS_16b_pe abs_1989 (
  .a(w_5645_8b),
  .b(1'b0),
  .c(w_5648_8b),
  .clk(clk)
);
assign  w_5649_8b  =  w_5648_8b ;
assign  w_5650_16b  =  w_5649_8b ;
ADD_16b_pe add_1990 (
  .a(w_5640_16b),
  .b(w_5650_16b),
  .c(w_5651_16b),
  .clk(clk)
);
assign  w_5652_16b  =  r32_w_SAD_2a163_6_16b ;
assign  w_5655_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_5656_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_1991 (
  .a(w_5656_8b),
  .b(w_5655_8b),
  .c(w_5657_8b),
  .clk(clk)
);
ABS_16b_pe abs_1992 (
  .a(w_5657_8b),
  .b(1'b0),
  .c(w_5660_8b),
  .clk(clk)
);
assign  w_5661_8b  =  w_5660_8b ;
assign  w_5662_16b  =  w_5661_8b ;
ADD_16b_pe add_1993 (
  .a(w_5652_16b),
  .b(w_5662_16b),
  .c(w_5663_16b),
  .clk(clk)
);
assign  w_5664_16b  =  r33_w_SAD_2a163_6_16b ;
assign  w_5667_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_5668_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_1994 (
  .a(w_5667_8b),
  .b(w_5668_8b),
  .c(w_5669_8b),
  .clk(clk)
);
ABS_16b_pe abs_1995 (
  .a(w_5669_8b),
  .b(1'b0),
  .c(w_5672_8b),
  .clk(clk)
);
assign  w_5673_8b  =  w_5672_8b ;
assign  w_5674_16b  =  w_5673_8b ;
ADD_16b_pe add_1996 (
  .a(w_5664_16b),
  .b(w_5674_16b),
  .c(w_5675_16b),
  .clk(clk)
);
assign  w_5676_16b  =  r34_w_SAD_2a163_6_16b ;
assign  w_5679_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_5680_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_1997 (
  .a(w_5679_8b),
  .b(w_5680_8b),
  .c(w_5681_8b),
  .clk(clk)
);
ABS_16b_pe abs_1998 (
  .a(w_5681_8b),
  .b(1'b0),
  .c(w_5684_8b),
  .clk(clk)
);
assign  w_5685_8b  =  w_5684_8b ;
assign  w_5686_16b  =  w_5685_8b ;
ADD_16b_pe add_1999 (
  .a(w_5676_16b),
  .b(w_5686_16b),
  .c(w_5687_16b),
  .clk(clk)
);
assign  w_5688_16b  =  r35_w_SAD_2a163_6_16b ;
assign  w_5691_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_5692_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_2000 (
  .a(w_5692_8b),
  .b(w_5691_8b),
  .c(w_5693_8b),
  .clk(clk)
);
ABS_16b_pe abs_2001 (
  .a(w_5693_8b),
  .b(1'b0),
  .c(w_5696_8b),
  .clk(clk)
);
assign  w_5697_8b  =  w_5696_8b ;
assign  w_5698_16b  =  w_5697_8b ;
ADD_16b_pe add_2002 (
  .a(w_5688_16b),
  .b(w_5698_16b),
  .c(w_5699_16b),
  .clk(clk)
);
assign  w_5700_16b  =  r36_w_SAD_2a163_6_16b ;
assign  w_5703_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_5704_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_2003 (
  .a(w_5703_8b),
  .b(w_5704_8b),
  .c(w_5705_8b),
  .clk(clk)
);
ABS_16b_pe abs_2004 (
  .a(w_5705_8b),
  .b(1'b0),
  .c(w_5708_8b),
  .clk(clk)
);
assign  w_5709_8b  =  w_5708_8b ;
assign  w_5710_16b  =  w_5709_8b ;
ADD_16b_pe add_2005 (
  .a(w_5700_16b),
  .b(w_5710_16b),
  .c(w_5711_16b),
  .clk(clk)
);
assign  w_5712_16b  =  r37_w_SAD_2a163_6_16b ;
assign  w_5715_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_5716_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_2006 (
  .a(w_5716_8b),
  .b(w_5715_8b),
  .c(w_5717_8b),
  .clk(clk)
);
ABS_16b_pe abs_2007 (
  .a(w_5717_8b),
  .b(1'b0),
  .c(w_5720_8b),
  .clk(clk)
);
assign  w_5721_8b  =  w_5720_8b ;
assign  w_5722_16b  =  w_5721_8b ;
ADD_16b_pe add_2008 (
  .a(w_5722_16b),
  .b(w_5712_16b),
  .c(w_5723_16b),
  .clk(clk)
);
assign  w_5724_16b  =  r38_w_SAD_2a163_6_16b ;
assign  w_5727_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_5728_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_2009 (
  .a(w_5727_8b),
  .b(w_5728_8b),
  .c(w_5729_8b),
  .clk(clk)
);
ABS_16b_pe abs_2010 (
  .a(w_5729_8b),
  .b(1'b0),
  .c(w_5732_8b),
  .clk(clk)
);
assign  w_5733_8b  =  w_5732_8b ;
assign  w_5734_16b  =  w_5733_8b ;
ADD_16b_pe add_2011 (
  .a(w_5734_16b),
  .b(w_5724_16b),
  .c(w_5735_16b),
  .clk(clk)
);
assign  w_5736_16b  =  r39_w_SAD_2a163_6_16b ;
assign  w_5739_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5740_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_2012 (
  .a(w_5740_8b),
  .b(w_5739_8b),
  .c(w_5741_8b),
  .clk(clk)
);
ABS_16b_pe abs_2013 (
  .a(w_5741_8b),
  .b(1'b0),
  .c(w_5744_8b),
  .clk(clk)
);
assign  w_5745_8b  =  w_5744_8b ;
assign  w_5746_16b  =  w_5745_8b ;
ADD_16b_pe add_2014 (
  .a(w_5746_16b),
  .b(w_5736_16b),
  .c(w_5747_16b),
  .clk(clk)
);
assign  w_5748_16b  =  r40_w_SAD_2a163_6_16b ;
assign  w_5751_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5752_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_2015 (
  .a(w_5752_8b),
  .b(w_5751_8b),
  .c(w_5753_8b),
  .clk(clk)
);
ABS_16b_pe abs_2016 (
  .a(w_5753_8b),
  .b(1'b0),
  .c(w_5756_8b),
  .clk(clk)
);
assign  w_5757_8b  =  w_5756_8b ;
assign  w_5758_16b  =  w_5757_8b ;
ADD_16b_pe add_2017 (
  .a(w_5758_16b),
  .b(w_5748_16b),
  .c(w_5759_16b),
  .clk(clk)
);
assign  w_5760_16b  =  r41_w_SAD_2a163_6_16b ;
assign  w_5763_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5764_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_2018 (
  .a(w_5763_8b),
  .b(w_5764_8b),
  .c(w_5765_8b),
  .clk(clk)
);
ABS_16b_pe abs_2019 (
  .a(w_5765_8b),
  .b(1'b0),
  .c(w_5768_8b),
  .clk(clk)
);
assign  w_5769_8b  =  w_5768_8b ;
assign  w_5770_16b  =  w_5769_8b ;
ADD_16b_pe add_2020 (
  .a(w_5770_16b),
  .b(w_5760_16b),
  .c(w_5771_16b),
  .clk(clk)
);
assign  w_5772_16b  =  r42_w_SAD_2a163_6_16b ;
assign  w_5775_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5776_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_2021 (
  .a(w_5775_8b),
  .b(w_5776_8b),
  .c(w_5777_8b),
  .clk(clk)
);
ABS_16b_pe abs_2022 (
  .a(w_5777_8b),
  .b(1'b0),
  .c(w_5780_8b),
  .clk(clk)
);
assign  w_5781_8b  =  w_5780_8b ;
assign  w_5782_16b  =  w_5781_8b ;
ADD_16b_pe add_2023 (
  .a(w_5782_16b),
  .b(w_5772_16b),
  .c(w_5783_16b),
  .clk(clk)
);
assign  w_5784_16b  =  r43_w_SAD_2a163_6_16b ;
assign  w_5787_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5788_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_2024 (
  .a(w_5788_8b),
  .b(w_5787_8b),
  .c(w_5789_8b),
  .clk(clk)
);
ABS_16b_pe abs_2025 (
  .a(w_5789_8b),
  .b(1'b0),
  .c(w_5792_8b),
  .clk(clk)
);
assign  w_5793_8b  =  w_5792_8b ;
assign  w_5794_16b  =  w_5793_8b ;
ADD_16b_pe add_2026 (
  .a(w_5794_16b),
  .b(w_5784_16b),
  .c(w_5795_16b),
  .clk(clk)
);
assign  w_5796_16b  =  r44_w_SAD_2a163_6_16b ;
assign  w_5799_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5800_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_2027 (
  .a(w_5799_8b),
  .b(w_5800_8b),
  .c(w_5801_8b),
  .clk(clk)
);
ABS_16b_pe abs_2028 (
  .a(w_5801_8b),
  .b(1'b0),
  .c(w_5804_8b),
  .clk(clk)
);
assign  w_5805_8b  =  w_5804_8b ;
assign  w_5806_16b  =  w_5805_8b ;
ADD_16b_pe add_2029 (
  .a(w_5796_16b),
  .b(w_5806_16b),
  .c(w_5807_16b),
  .clk(clk)
);
assign  w_5808_16b  =  r45_w_SAD_2a163_6_16b ;
assign  w_5811_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5812_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_2030 (
  .a(w_5811_8b),
  .b(w_5812_8b),
  .c(w_5813_8b),
  .clk(clk)
);
ABS_16b_pe abs_2031 (
  .a(w_5813_8b),
  .b(1'b0),
  .c(w_5816_8b),
  .clk(clk)
);
assign  w_5817_8b  =  w_5816_8b ;
assign  w_5818_16b  =  w_5817_8b ;
ADD_16b_pe add_2032 (
  .a(w_5818_16b),
  .b(w_5808_16b),
  .c(w_5819_16b),
  .clk(clk)
);
assign  w_5820_16b  =  r46_w_SAD_2a163_6_16b ;
assign  w_5823_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_5824_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_2033 (
  .a(w_5824_8b),
  .b(w_5823_8b),
  .c(w_5825_8b),
  .clk(clk)
);
ABS_16b_pe abs_2034 (
  .a(w_5825_8b),
  .b(1'b0),
  .c(w_5828_8b),
  .clk(clk)
);
assign  w_5829_8b  =  w_5828_8b ;
assign  w_5830_16b  =  w_5829_8b ;
ADD_16b_pe add_2035 (
  .a(w_5820_16b),
  .b(w_5830_16b),
  .c(w_5831_16b),
  .clk(clk)
);
assign  w_5832_16b  =  r47_w_SAD_2a163_6_16b ;
assign  w_5835_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5836_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_2036 (
  .a(w_5836_8b),
  .b(w_5835_8b),
  .c(w_5837_8b),
  .clk(clk)
);
ABS_16b_pe abs_2037 (
  .a(w_5837_8b),
  .b(1'b0),
  .c(w_5840_8b),
  .clk(clk)
);
assign  w_5841_8b  =  w_5840_8b ;
assign  w_5842_16b  =  w_5841_8b ;
ADD_16b_pe add_2038 (
  .a(w_5842_16b),
  .b(w_5832_16b),
  .c(w_5843_16b),
  .clk(clk)
);
assign  w_5844_16b  =  r48_w_SAD_2a163_6_16b ;
assign  w_5847_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5848_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_2039 (
  .a(w_5848_8b),
  .b(w_5847_8b),
  .c(w_5849_8b),
  .clk(clk)
);
ABS_16b_pe abs_2040 (
  .a(w_5849_8b),
  .b(1'b0),
  .c(w_5852_8b),
  .clk(clk)
);
assign  w_5853_8b  =  w_5852_8b ;
assign  w_5854_16b  =  w_5853_8b ;
ADD_16b_pe add_2041 (
  .a(w_5854_16b),
  .b(w_5844_16b),
  .c(w_5855_16b),
  .clk(clk)
);
assign  w_5856_16b  =  r49_w_SAD_2a163_6_16b ;
assign  w_5859_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5860_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_2042 (
  .a(w_5860_8b),
  .b(w_5859_8b),
  .c(w_5861_8b),
  .clk(clk)
);
ABS_16b_pe abs_2043 (
  .a(w_5861_8b),
  .b(1'b0),
  .c(w_5864_8b),
  .clk(clk)
);
assign  w_5865_8b  =  w_5864_8b ;
assign  w_5866_16b  =  w_5865_8b ;
ADD_16b_pe add_2044 (
  .a(w_5856_16b),
  .b(w_5866_16b),
  .c(w_5867_16b),
  .clk(clk)
);
assign  w_5868_16b  =  r50_w_SAD_2a163_6_16b ;
assign  w_5871_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5872_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_2045 (
  .a(w_5872_8b),
  .b(w_5871_8b),
  .c(w_5873_8b),
  .clk(clk)
);
ABS_16b_pe abs_2046 (
  .a(w_5873_8b),
  .b(1'b0),
  .c(w_5876_8b),
  .clk(clk)
);
assign  w_5877_8b  =  w_5876_8b ;
assign  w_5878_16b  =  w_5877_8b ;
ADD_16b_pe add_2047 (
  .a(w_5868_16b),
  .b(w_5878_16b),
  .c(w_5879_16b),
  .clk(clk)
);
assign  w_5880_16b  =  r51_w_SAD_2a163_6_16b ;
assign  w_5883_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5884_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_2048 (
  .a(w_5884_8b),
  .b(w_5883_8b),
  .c(w_5885_8b),
  .clk(clk)
);
ABS_16b_pe abs_2049 (
  .a(w_5885_8b),
  .b(1'b0),
  .c(w_5888_8b),
  .clk(clk)
);
assign  w_5889_8b  =  w_5888_8b ;
assign  w_5890_16b  =  w_5889_8b ;
ADD_16b_pe add_2050 (
  .a(w_5890_16b),
  .b(w_5880_16b),
  .c(w_5891_16b),
  .clk(clk)
);
assign  w_5892_16b  =  r52_w_SAD_2a163_6_16b ;
assign  w_5895_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5896_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_2051 (
  .a(w_5895_8b),
  .b(w_5896_8b),
  .c(w_5897_8b),
  .clk(clk)
);
ABS_16b_pe abs_2052 (
  .a(w_5897_8b),
  .b(1'b0),
  .c(w_5900_8b),
  .clk(clk)
);
assign  w_5901_8b  =  w_5900_8b ;
assign  w_5902_16b  =  w_5901_8b ;
ADD_16b_pe add_2053 (
  .a(w_5892_16b),
  .b(w_5902_16b),
  .c(w_5903_16b),
  .clk(clk)
);
assign  w_5904_16b  =  r53_w_SAD_2a163_6_16b ;
assign  w_5907_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5908_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_2054 (
  .a(w_5907_8b),
  .b(w_5908_8b),
  .c(w_5909_8b),
  .clk(clk)
);
ABS_16b_pe abs_2055 (
  .a(w_5909_8b),
  .b(1'b0),
  .c(w_5912_8b),
  .clk(clk)
);
assign  w_5913_8b  =  w_5912_8b ;
assign  w_5914_16b  =  w_5913_8b ;
ADD_16b_pe add_2056 (
  .a(w_5914_16b),
  .b(w_5904_16b),
  .c(w_5915_16b),
  .clk(clk)
);
assign  w_5916_16b  =  r54_w_SAD_2a163_6_16b ;
assign  w_5919_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_5920_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_2057 (
  .a(w_5920_8b),
  .b(w_5919_8b),
  .c(w_5921_8b),
  .clk(clk)
);
ABS_16b_pe abs_2058 (
  .a(w_5921_8b),
  .b(1'b0),
  .c(w_5924_8b),
  .clk(clk)
);
assign  w_5925_8b  =  w_5924_8b ;
assign  w_5926_16b  =  w_5925_8b ;
ADD_16b_pe add_2059 (
  .a(w_5916_16b),
  .b(w_5926_16b),
  .c(w_5927_16b),
  .clk(clk)
);
assign  w_5928_16b  =  r55_w_SAD_2a163_6_16b ;
assign  w_5931_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5932_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_2060 (
  .a(w_5932_8b),
  .b(w_5931_8b),
  .c(w_5933_8b),
  .clk(clk)
);
ABS_16b_pe abs_2061 (
  .a(w_5933_8b),
  .b(1'b0),
  .c(w_5936_8b),
  .clk(clk)
);
assign  w_5937_8b  =  w_5936_8b ;
assign  w_5938_16b  =  w_5937_8b ;
ADD_16b_pe add_2062 (
  .a(w_5928_16b),
  .b(w_5938_16b),
  .c(w_5939_16b),
  .clk(clk)
);
assign  w_5940_16b  =  r56_w_SAD_2a163_6_16b ;
assign  w_5943_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5944_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_2063 (
  .a(w_5943_8b),
  .b(w_5944_8b),
  .c(w_5945_8b),
  .clk(clk)
);
ABS_16b_pe abs_2064 (
  .a(w_5945_8b),
  .b(1'b0),
  .c(w_5948_8b),
  .clk(clk)
);
assign  w_5949_8b  =  w_5948_8b ;
assign  w_5950_16b  =  w_5949_8b ;
ADD_16b_pe add_2065 (
  .a(w_5950_16b),
  .b(w_5940_16b),
  .c(w_5951_16b),
  .clk(clk)
);
assign  w_5952_16b  =  r57_w_SAD_2a163_6_16b ;
assign  w_5955_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5956_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_2066 (
  .a(w_5955_8b),
  .b(w_5956_8b),
  .c(w_5957_8b),
  .clk(clk)
);
ABS_16b_pe abs_2067 (
  .a(w_5957_8b),
  .b(1'b0),
  .c(w_5960_8b),
  .clk(clk)
);
assign  w_5961_8b  =  w_5960_8b ;
assign  w_5962_16b  =  w_5961_8b ;
ADD_16b_pe add_2068 (
  .a(w_5952_16b),
  .b(w_5962_16b),
  .c(w_5963_16b),
  .clk(clk)
);
assign  w_5964_16b  =  r58_w_SAD_2a163_6_16b ;
assign  w_5967_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5968_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_2069 (
  .a(w_5967_8b),
  .b(w_5968_8b),
  .c(w_5969_8b),
  .clk(clk)
);
ABS_16b_pe abs_2070 (
  .a(w_5969_8b),
  .b(1'b0),
  .c(w_5972_8b),
  .clk(clk)
);
assign  w_5973_8b  =  w_5972_8b ;
assign  w_5974_16b  =  w_5973_8b ;
ADD_16b_pe add_2071 (
  .a(w_5964_16b),
  .b(w_5974_16b),
  .c(w_5975_16b),
  .clk(clk)
);
assign  w_5976_16b  =  r59_w_SAD_2a163_6_16b ;
assign  w_5979_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5980_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_2072 (
  .a(w_5979_8b),
  .b(w_5980_8b),
  .c(w_5981_8b),
  .clk(clk)
);
ABS_16b_pe abs_2073 (
  .a(w_5981_8b),
  .b(1'b0),
  .c(w_5984_8b),
  .clk(clk)
);
assign  w_5985_8b  =  w_5984_8b ;
assign  w_5986_16b  =  w_5985_8b ;
ADD_16b_pe add_2074 (
  .a(w_5986_16b),
  .b(w_5976_16b),
  .c(w_5987_16b),
  .clk(clk)
);
assign  w_5988_16b  =  r60_w_SAD_2a163_6_16b ;
assign  w_5991_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_5992_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_2075 (
  .a(w_5991_8b),
  .b(w_5992_8b),
  .c(w_5993_8b),
  .clk(clk)
);
ABS_16b_pe abs_2076 (
  .a(w_5993_8b),
  .b(1'b0),
  .c(w_5996_8b),
  .clk(clk)
);
assign  w_5997_8b  =  w_5996_8b ;
assign  w_5998_16b  =  w_5997_8b ;
ADD_16b_pe add_2077 (
  .a(w_5998_16b),
  .b(w_5988_16b),
  .c(w_5999_16b),
  .clk(clk)
);
assign  w_6000_16b  =  r61_w_SAD_2a163_6_16b ;
assign  w_6003_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_6004_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_2078 (
  .a(w_6004_8b),
  .b(w_6003_8b),
  .c(w_6005_8b),
  .clk(clk)
);
ABS_16b_pe abs_2079 (
  .a(w_6005_8b),
  .b(1'b0),
  .c(w_6008_8b),
  .clk(clk)
);
assign  w_6009_8b  =  w_6008_8b ;
assign  w_6010_16b  =  w_6009_8b ;
ADD_16b_pe add_2080 (
  .a(w_6010_16b),
  .b(w_6000_16b),
  .c(w_6011_16b),
  .clk(clk)
);
assign  w_6012_16b  =  r62_w_SAD_2a163_6_16b ;
assign  w_6015_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_6016_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_2081 (
  .a(w_6015_8b),
  .b(w_6016_8b),
  .c(w_6017_8b),
  .clk(clk)
);
ABS_16b_pe abs_2082 (
  .a(w_6017_8b),
  .b(1'b0),
  .c(w_6020_8b),
  .clk(clk)
);
assign  w_6021_8b  =  w_6020_8b ;
assign  w_6022_16b  =  w_6021_8b ;
ADD_16b_pe add_2083 (
  .a(w_6022_16b),
  .b(w_6012_16b),
  .c(w_6023_16b),
  .clk(clk)
);
assign  w_6024_16b  = 1'b0;
assign  w_6027_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6028_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_2084 (
  .a(w_6028_8b),
  .b(w_6027_8b),
  .c(w_6029_8b),
  .clk(clk)
);
ABS_16b_pe abs_2085 (
  .a(w_6029_8b),
  .b(1'b0),
  .c(w_6032_8b),
  .clk(clk)
);
assign  w_6033_8b  =  w_6032_8b ;
assign  w_6034_16b  =  w_6033_8b ;
ADD_16b_pe add_2086 (
  .a(w_6034_16b),
  .b(w_6024_16b),
  .c(w_6035_16b),
  .clk(clk)
);
assign  w_6036_16b  =  r0_w_SAD_2a163_7_16b ;
assign  w_6039_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6040_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_2087 (
  .a(w_6040_8b),
  .b(w_6039_8b),
  .c(w_6041_8b),
  .clk(clk)
);
ABS_16b_pe abs_2088 (
  .a(w_6041_8b),
  .b(1'b0),
  .c(w_6044_8b),
  .clk(clk)
);
assign  w_6045_8b  =  w_6044_8b ;
assign  w_6046_16b  =  w_6045_8b ;
ADD_16b_pe add_2089 (
  .a(w_6036_16b),
  .b(w_6046_16b),
  .c(w_6047_16b),
  .clk(clk)
);
assign  w_6048_16b  =  r1_w_SAD_2a163_7_16b ;
assign  w_6051_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6052_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_2090 (
  .a(w_6051_8b),
  .b(w_6052_8b),
  .c(w_6053_8b),
  .clk(clk)
);
ABS_16b_pe abs_2091 (
  .a(w_6053_8b),
  .b(1'b0),
  .c(w_6056_8b),
  .clk(clk)
);
assign  w_6057_8b  =  w_6056_8b ;
assign  w_6058_16b  =  w_6057_8b ;
ADD_16b_pe add_2092 (
  .a(w_6058_16b),
  .b(w_6048_16b),
  .c(w_6059_16b),
  .clk(clk)
);
assign  w_6060_16b  =  r2_w_SAD_2a163_7_16b ;
assign  w_6063_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6064_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_2093 (
  .a(w_6064_8b),
  .b(w_6063_8b),
  .c(w_6065_8b),
  .clk(clk)
);
ABS_16b_pe abs_2094 (
  .a(w_6065_8b),
  .b(1'b0),
  .c(w_6068_8b),
  .clk(clk)
);
assign  w_6069_8b  =  w_6068_8b ;
assign  w_6070_16b  =  w_6069_8b ;
ADD_16b_pe add_2095 (
  .a(w_6070_16b),
  .b(w_6060_16b),
  .c(w_6071_16b),
  .clk(clk)
);
assign  w_6072_16b  =  r3_w_SAD_2a163_7_16b ;
assign  w_6075_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6076_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_2096 (
  .a(w_6076_8b),
  .b(w_6075_8b),
  .c(w_6077_8b),
  .clk(clk)
);
ABS_16b_pe abs_2097 (
  .a(w_6077_8b),
  .b(1'b0),
  .c(w_6080_8b),
  .clk(clk)
);
assign  w_6081_8b  =  w_6080_8b ;
assign  w_6082_16b  =  w_6081_8b ;
ADD_16b_pe add_2098 (
  .a(w_6072_16b),
  .b(w_6082_16b),
  .c(w_6083_16b),
  .clk(clk)
);
assign  w_6084_16b  =  r4_w_SAD_2a163_7_16b ;
assign  w_6087_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6088_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_2099 (
  .a(w_6087_8b),
  .b(w_6088_8b),
  .c(w_6089_8b),
  .clk(clk)
);
ABS_16b_pe abs_2100 (
  .a(w_6089_8b),
  .b(1'b0),
  .c(w_6092_8b),
  .clk(clk)
);
assign  w_6093_8b  =  w_6092_8b ;
assign  w_6094_16b  =  w_6093_8b ;
ADD_16b_pe add_2101 (
  .a(w_6094_16b),
  .b(w_6084_16b),
  .c(w_6095_16b),
  .clk(clk)
);
assign  w_6096_16b  =  r5_w_SAD_2a163_7_16b ;
assign  w_6099_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6100_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_2102 (
  .a(w_6099_8b),
  .b(w_6100_8b),
  .c(w_6101_8b),
  .clk(clk)
);
ABS_16b_pe abs_2103 (
  .a(w_6101_8b),
  .b(1'b0),
  .c(w_6104_8b),
  .clk(clk)
);
assign  w_6105_8b  =  w_6104_8b ;
assign  w_6106_16b  =  w_6105_8b ;
ADD_16b_pe add_2104 (
  .a(w_6106_16b),
  .b(w_6096_16b),
  .c(w_6107_16b),
  .clk(clk)
);
assign  w_6108_16b  =  r6_w_SAD_2a163_7_16b ;
assign  w_6111_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6112_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_2105 (
  .a(w_6111_8b),
  .b(w_6112_8b),
  .c(w_6113_8b),
  .clk(clk)
);
ABS_16b_pe abs_2106 (
  .a(w_6113_8b),
  .b(1'b0),
  .c(w_6116_8b),
  .clk(clk)
);
assign  w_6117_8b  =  w_6116_8b ;
assign  w_6118_16b  =  w_6117_8b ;
ADD_16b_pe add_2107 (
  .a(w_6118_16b),
  .b(w_6108_16b),
  .c(w_6119_16b),
  .clk(clk)
);
assign  w_6120_16b  =  r7_w_SAD_2a163_7_16b ;
assign  w_6123_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6124_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_2108 (
  .a(w_6124_8b),
  .b(w_6123_8b),
  .c(w_6125_8b),
  .clk(clk)
);
ABS_16b_pe abs_2109 (
  .a(w_6125_8b),
  .b(1'b0),
  .c(w_6128_8b),
  .clk(clk)
);
assign  w_6129_8b  =  w_6128_8b ;
assign  w_6130_16b  =  w_6129_8b ;
ADD_16b_pe add_2110 (
  .a(w_6120_16b),
  .b(w_6130_16b),
  .c(w_6131_16b),
  .clk(clk)
);
assign  w_6132_16b  =  r8_w_SAD_2a163_7_16b ;
assign  w_6135_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6136_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_2111 (
  .a(w_6136_8b),
  .b(w_6135_8b),
  .c(w_6137_8b),
  .clk(clk)
);
ABS_16b_pe abs_2112 (
  .a(w_6137_8b),
  .b(1'b0),
  .c(w_6140_8b),
  .clk(clk)
);
assign  w_6141_8b  =  w_6140_8b ;
assign  w_6142_16b  =  w_6141_8b ;
ADD_16b_pe add_2113 (
  .a(w_6142_16b),
  .b(w_6132_16b),
  .c(w_6143_16b),
  .clk(clk)
);
assign  w_6144_16b  =  r9_w_SAD_2a163_7_16b ;
assign  w_6147_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6148_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_2114 (
  .a(w_6148_8b),
  .b(w_6147_8b),
  .c(w_6149_8b),
  .clk(clk)
);
ABS_16b_pe abs_2115 (
  .a(w_6149_8b),
  .b(1'b0),
  .c(w_6152_8b),
  .clk(clk)
);
assign  w_6153_8b  =  w_6152_8b ;
assign  w_6154_16b  =  w_6153_8b ;
ADD_16b_pe add_2116 (
  .a(w_6154_16b),
  .b(w_6144_16b),
  .c(w_6155_16b),
  .clk(clk)
);
assign  w_6156_16b  =  r10_w_SAD_2a163_7_16b ;
assign  w_6159_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6160_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_2117 (
  .a(w_6160_8b),
  .b(w_6159_8b),
  .c(w_6161_8b),
  .clk(clk)
);
ABS_16b_pe abs_2118 (
  .a(w_6161_8b),
  .b(1'b0),
  .c(w_6164_8b),
  .clk(clk)
);
assign  w_6165_8b  =  w_6164_8b ;
assign  w_6166_16b  =  w_6165_8b ;
ADD_16b_pe add_2119 (
  .a(w_6156_16b),
  .b(w_6166_16b),
  .c(w_6167_16b),
  .clk(clk)
);
assign  w_6168_16b  =  r11_w_SAD_2a163_7_16b ;
assign  w_6171_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6172_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_2120 (
  .a(w_6172_8b),
  .b(w_6171_8b),
  .c(w_6173_8b),
  .clk(clk)
);
ABS_16b_pe abs_2121 (
  .a(w_6173_8b),
  .b(1'b0),
  .c(w_6176_8b),
  .clk(clk)
);
assign  w_6177_8b  =  w_6176_8b ;
assign  w_6178_16b  =  w_6177_8b ;
ADD_16b_pe add_2122 (
  .a(w_6168_16b),
  .b(w_6178_16b),
  .c(w_6179_16b),
  .clk(clk)
);
assign  w_6180_16b  =  r12_w_SAD_2a163_7_16b ;
assign  w_6183_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6184_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_2123 (
  .a(w_6184_8b),
  .b(w_6183_8b),
  .c(w_6185_8b),
  .clk(clk)
);
ABS_16b_pe abs_2124 (
  .a(w_6185_8b),
  .b(1'b0),
  .c(w_6188_8b),
  .clk(clk)
);
assign  w_6189_8b  =  w_6188_8b ;
assign  w_6190_16b  =  w_6189_8b ;
ADD_16b_pe add_2125 (
  .a(w_6190_16b),
  .b(w_6180_16b),
  .c(w_6191_16b),
  .clk(clk)
);
assign  w_6192_16b  =  r13_w_SAD_2a163_7_16b ;
assign  w_6195_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6196_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_2126 (
  .a(w_6195_8b),
  .b(w_6196_8b),
  .c(w_6197_8b),
  .clk(clk)
);
ABS_16b_pe abs_2127 (
  .a(w_6197_8b),
  .b(1'b0),
  .c(w_6200_8b),
  .clk(clk)
);
assign  w_6201_8b  =  w_6200_8b ;
assign  w_6202_16b  =  w_6201_8b ;
ADD_16b_pe add_2128 (
  .a(w_6192_16b),
  .b(w_6202_16b),
  .c(w_6203_16b),
  .clk(clk)
);
assign  w_6204_16b  =  r14_w_SAD_2a163_7_16b ;
assign  w_6207_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6208_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_2129 (
  .a(w_6207_8b),
  .b(w_6208_8b),
  .c(w_6209_8b),
  .clk(clk)
);
ABS_16b_pe abs_2130 (
  .a(w_6209_8b),
  .b(1'b0),
  .c(w_6212_8b),
  .clk(clk)
);
assign  w_6213_8b  =  w_6212_8b ;
assign  w_6214_16b  =  w_6213_8b ;
ADD_16b_pe add_2131 (
  .a(w_6204_16b),
  .b(w_6214_16b),
  .c(w_6215_16b),
  .clk(clk)
);
assign  w_6216_16b  =  r15_w_SAD_2a163_7_16b ;
assign  w_6219_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_6220_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_2132 (
  .a(w_6219_8b),
  .b(w_6220_8b),
  .c(w_6221_8b),
  .clk(clk)
);
ABS_16b_pe abs_2133 (
  .a(w_6221_8b),
  .b(1'b0),
  .c(w_6224_8b),
  .clk(clk)
);
assign  w_6225_8b  =  w_6224_8b ;
assign  w_6226_16b  =  w_6225_8b ;
ADD_16b_pe add_2134 (
  .a(w_6226_16b),
  .b(w_6216_16b),
  .c(w_6227_16b),
  .clk(clk)
);
assign  w_6228_16b  =  r16_w_SAD_2a163_7_16b ;
assign  w_6231_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_6232_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_2135 (
  .a(w_6231_8b),
  .b(w_6232_8b),
  .c(w_6233_8b),
  .clk(clk)
);
ABS_16b_pe abs_2136 (
  .a(w_6233_8b),
  .b(1'b0),
  .c(w_6236_8b),
  .clk(clk)
);
assign  w_6237_8b  =  w_6236_8b ;
assign  w_6238_16b  =  w_6237_8b ;
ADD_16b_pe add_2137 (
  .a(w_6238_16b),
  .b(w_6228_16b),
  .c(w_6239_16b),
  .clk(clk)
);
assign  w_6240_16b  =  r17_w_SAD_2a163_7_16b ;
assign  w_6243_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_6244_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_2138 (
  .a(w_6243_8b),
  .b(w_6244_8b),
  .c(w_6245_8b),
  .clk(clk)
);
ABS_16b_pe abs_2139 (
  .a(w_6245_8b),
  .b(1'b0),
  .c(w_6248_8b),
  .clk(clk)
);
assign  w_6249_8b  =  w_6248_8b ;
assign  w_6250_16b  =  w_6249_8b ;
ADD_16b_pe add_2140 (
  .a(w_6240_16b),
  .b(w_6250_16b),
  .c(w_6251_16b),
  .clk(clk)
);
assign  w_6252_16b  =  r18_w_SAD_2a163_7_16b ;
assign  w_6255_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_6256_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_2141 (
  .a(w_6256_8b),
  .b(w_6255_8b),
  .c(w_6257_8b),
  .clk(clk)
);
ABS_16b_pe abs_2142 (
  .a(w_6257_8b),
  .b(1'b0),
  .c(w_6260_8b),
  .clk(clk)
);
assign  w_6261_8b  =  w_6260_8b ;
assign  w_6262_16b  =  w_6261_8b ;
ADD_16b_pe add_2143 (
  .a(w_6262_16b),
  .b(w_6252_16b),
  .c(w_6263_16b),
  .clk(clk)
);
assign  w_6264_16b  =  r19_w_SAD_2a163_7_16b ;
assign  w_6267_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_6268_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_2144 (
  .a(w_6267_8b),
  .b(w_6268_8b),
  .c(w_6269_8b),
  .clk(clk)
);
ABS_16b_pe abs_2145 (
  .a(w_6269_8b),
  .b(1'b0),
  .c(w_6272_8b),
  .clk(clk)
);
assign  w_6273_8b  =  w_6272_8b ;
assign  w_6274_16b  =  w_6273_8b ;
ADD_16b_pe add_2146 (
  .a(w_6274_16b),
  .b(w_6264_16b),
  .c(w_6275_16b),
  .clk(clk)
);
assign  w_6276_16b  =  r20_w_SAD_2a163_7_16b ;
assign  w_6279_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_6280_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_2147 (
  .a(w_6280_8b),
  .b(w_6279_8b),
  .c(w_6281_8b),
  .clk(clk)
);
ABS_16b_pe abs_2148 (
  .a(w_6281_8b),
  .b(1'b0),
  .c(w_6284_8b),
  .clk(clk)
);
assign  w_6285_8b  =  w_6284_8b ;
assign  w_6286_16b  =  w_6285_8b ;
ADD_16b_pe add_2149 (
  .a(w_6286_16b),
  .b(w_6276_16b),
  .c(w_6287_16b),
  .clk(clk)
);
assign  w_6288_16b  =  r21_w_SAD_2a163_7_16b ;
assign  w_6291_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_6292_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_2150 (
  .a(w_6292_8b),
  .b(w_6291_8b),
  .c(w_6293_8b),
  .clk(clk)
);
ABS_16b_pe abs_2151 (
  .a(w_6293_8b),
  .b(1'b0),
  .c(w_6296_8b),
  .clk(clk)
);
assign  w_6297_8b  =  w_6296_8b ;
assign  w_6298_16b  =  w_6297_8b ;
ADD_16b_pe add_2152 (
  .a(w_6298_16b),
  .b(w_6288_16b),
  .c(w_6299_16b),
  .clk(clk)
);
assign  w_630_8b  = 1'b0;
assign  w_6300_16b  =  r22_w_SAD_2a163_7_16b ;
assign  w_6303_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_6304_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_2153 (
  .a(w_6304_8b),
  .b(w_6303_8b),
  .c(w_6305_8b),
  .clk(clk)
);
ABS_16b_pe abs_2154 (
  .a(w_6305_8b),
  .b(1'b0),
  .c(w_6308_8b),
  .clk(clk)
);
assign  w_6309_8b  =  w_6308_8b ;
assign  w_631_16b  = 1'b0;
assign  w_6310_16b  =  w_6309_8b ;
ADD_16b_pe add_2155 (
  .a(w_6300_16b),
  .b(w_6310_16b),
  .c(w_6311_16b),
  .clk(clk)
);
assign  w_6312_16b  =  r23_w_SAD_2a163_7_16b ;
assign  w_6315_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_6316_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_2156 (
  .a(w_6316_8b),
  .b(w_6315_8b),
  .c(w_6317_8b),
  .clk(clk)
);
assign  w_632_8b  = 1'b0;
ABS_16b_pe abs_2157 (
  .a(w_6317_8b),
  .b(1'b0),
  .c(w_6320_8b),
  .clk(clk)
);
assign  w_6321_8b  =  w_6320_8b ;
assign  w_6322_16b  =  w_6321_8b ;
ADD_16b_pe add_2158 (
  .a(w_6312_16b),
  .b(w_6322_16b),
  .c(w_6323_16b),
  .clk(clk)
);
assign  w_6324_16b  =  r24_w_SAD_2a163_7_16b ;
assign  w_6327_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_6328_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_2159 (
  .a(w_6327_8b),
  .b(w_6328_8b),
  .c(w_6329_8b),
  .clk(clk)
);
assign  w_633_16b  = 1'b0;
ABS_16b_pe abs_2160 (
  .a(w_6329_8b),
  .b(1'b0),
  .c(w_6332_8b),
  .clk(clk)
);
assign  w_6333_8b  =  w_6332_8b ;
assign  w_6334_16b  =  w_6333_8b ;
ADD_16b_pe add_2161 (
  .a(w_6324_16b),
  .b(w_6334_16b),
  .c(w_6335_16b),
  .clk(clk)
);
assign  w_6336_16b  =  r25_w_SAD_2a163_7_16b ;
assign  w_6339_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_634_8b  = 1'b0;
assign  w_6340_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_2162 (
  .a(w_6339_8b),
  .b(w_6340_8b),
  .c(w_6341_8b),
  .clk(clk)
);
ABS_16b_pe abs_2163 (
  .a(w_6341_8b),
  .b(1'b0),
  .c(w_6344_8b),
  .clk(clk)
);
assign  w_6345_8b  =  w_6344_8b ;
assign  w_6346_16b  =  w_6345_8b ;
ADD_16b_pe add_2164 (
  .a(w_6336_16b),
  .b(w_6346_16b),
  .c(w_6347_16b),
  .clk(clk)
);
assign  w_6348_16b  =  r26_w_SAD_2a163_7_16b ;
assign  w_635_16b  = 1'b0;
assign  w_6351_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_6352_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_2165 (
  .a(w_6352_8b),
  .b(w_6351_8b),
  .c(w_6353_8b),
  .clk(clk)
);
ABS_16b_pe abs_2166 (
  .a(w_6353_8b),
  .b(1'b0),
  .c(w_6356_8b),
  .clk(clk)
);
assign  w_6357_8b  =  w_6356_8b ;
assign  w_6358_16b  =  w_6357_8b ;
ADD_16b_pe add_2167 (
  .a(w_6348_16b),
  .b(w_6358_16b),
  .c(w_6359_16b),
  .clk(clk)
);
assign  w_636_8b  = 1'b0;
assign  w_6360_16b  =  r27_w_SAD_2a163_7_16b ;
assign  w_6363_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_6364_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_2168 (
  .a(w_6363_8b),
  .b(w_6364_8b),
  .c(w_6365_8b),
  .clk(clk)
);
ABS_16b_pe abs_2169 (
  .a(w_6365_8b),
  .b(1'b0),
  .c(w_6368_8b),
  .clk(clk)
);
assign  w_6369_8b  =  w_6368_8b ;
assign  w_637_16b  = 1'b0;
assign  w_6370_16b  =  w_6369_8b ;
ADD_16b_pe add_2170 (
  .a(w_6360_16b),
  .b(w_6370_16b),
  .c(w_6371_16b),
  .clk(clk)
);
assign  w_6372_16b  =  r28_w_SAD_2a163_7_16b ;
assign  w_6375_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_6376_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_2171 (
  .a(w_6375_8b),
  .b(w_6376_8b),
  .c(w_6377_8b),
  .clk(clk)
);
assign  w_638_8b  = 1'b0;
ABS_16b_pe abs_2172 (
  .a(w_6377_8b),
  .b(1'b0),
  .c(w_6380_8b),
  .clk(clk)
);
assign  w_6381_8b  =  w_6380_8b ;
assign  w_6382_16b  =  w_6381_8b ;
ADD_16b_pe add_2173 (
  .a(w_6372_16b),
  .b(w_6382_16b),
  .c(w_6383_16b),
  .clk(clk)
);
assign  w_6384_16b  =  r29_w_SAD_2a163_7_16b ;
assign  w_6387_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_6388_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_2174 (
  .a(w_6387_8b),
  .b(w_6388_8b),
  .c(w_6389_8b),
  .clk(clk)
);
assign  w_639_16b  = 1'b0;
ABS_16b_pe abs_2175 (
  .a(w_6389_8b),
  .b(1'b0),
  .c(w_6392_8b),
  .clk(clk)
);
assign  w_6393_8b  =  w_6392_8b ;
assign  w_6394_16b  =  w_6393_8b ;
ADD_16b_pe add_2176 (
  .a(w_6384_16b),
  .b(w_6394_16b),
  .c(w_6395_16b),
  .clk(clk)
);
assign  w_6396_16b  =  r30_w_SAD_2a163_7_16b ;
assign  w_6399_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_640_16b  = 1'b0;
assign  w_6400_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_2177 (
  .a(w_6400_8b),
  .b(w_6399_8b),
  .c(w_6401_8b),
  .clk(clk)
);
ABS_16b_pe abs_2178 (
  .a(w_6401_8b),
  .b(1'b0),
  .c(w_6404_8b),
  .clk(clk)
);
assign  w_6405_8b  =  w_6404_8b ;
assign  w_6406_16b  =  w_6405_8b ;
ADD_16b_pe add_2179 (
  .a(w_6396_16b),
  .b(w_6406_16b),
  .c(w_6407_16b),
  .clk(clk)
);
assign  w_6408_16b  =  r31_w_SAD_2a163_7_16b ;
assign  w_641_16b  = 1'b0;
assign  w_6411_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_6412_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_2180 (
  .a(w_6411_8b),
  .b(w_6412_8b),
  .c(w_6413_8b),
  .clk(clk)
);
ABS_16b_pe abs_2181 (
  .a(w_6413_8b),
  .b(1'b0),
  .c(w_6416_8b),
  .clk(clk)
);
assign  w_6417_8b  =  w_6416_8b ;
assign  w_6418_16b  =  w_6417_8b ;
ADD_16b_pe add_2182 (
  .a(w_6418_16b),
  .b(w_6408_16b),
  .c(w_6419_16b),
  .clk(clk)
);
assign  w_642_16b  = 1'b0;
assign  w_6420_16b  =  r32_w_SAD_2a163_7_16b ;
assign  w_6423_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_6424_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_2183 (
  .a(w_6424_8b),
  .b(w_6423_8b),
  .c(w_6425_8b),
  .clk(clk)
);
ABS_16b_pe abs_2184 (
  .a(w_6425_8b),
  .b(1'b0),
  .c(w_6428_8b),
  .clk(clk)
);
assign  w_6429_8b  =  w_6428_8b ;
assign  w_643_16b  = 1'b0;
assign  w_6430_16b  =  w_6429_8b ;
ADD_16b_pe add_2185 (
  .a(w_6430_16b),
  .b(w_6420_16b),
  .c(w_6431_16b),
  .clk(clk)
);
assign  w_6432_16b  =  r33_w_SAD_2a163_7_16b ;
assign  w_6435_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_6436_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_2186 (
  .a(w_6436_8b),
  .b(w_6435_8b),
  .c(w_6437_8b),
  .clk(clk)
);
assign  w_644_16b  = 1'b0;
ABS_16b_pe abs_2187 (
  .a(w_6437_8b),
  .b(1'b0),
  .c(w_6440_8b),
  .clk(clk)
);
assign  w_6441_8b  =  w_6440_8b ;
assign  w_6442_16b  =  w_6441_8b ;
ADD_16b_pe add_2188 (
  .a(w_6432_16b),
  .b(w_6442_16b),
  .c(w_6443_16b),
  .clk(clk)
);
assign  w_6444_16b  =  r34_w_SAD_2a163_7_16b ;
assign  w_6447_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_6448_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_2189 (
  .a(w_6447_8b),
  .b(w_6448_8b),
  .c(w_6449_8b),
  .clk(clk)
);
assign  w_645_16b  = 1'b0;
ABS_16b_pe abs_2190 (
  .a(w_6449_8b),
  .b(1'b0),
  .c(w_6452_8b),
  .clk(clk)
);
assign  w_6453_8b  =  w_6452_8b ;
assign  w_6454_16b  =  w_6453_8b ;
ADD_16b_pe add_2191 (
  .a(w_6454_16b),
  .b(w_6444_16b),
  .c(w_6455_16b),
  .clk(clk)
);
assign  w_6456_16b  =  r35_w_SAD_2a163_7_16b ;
assign  w_6459_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_646_16b  = 1'b0;
assign  w_6460_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_2192 (
  .a(w_6460_8b),
  .b(w_6459_8b),
  .c(w_6461_8b),
  .clk(clk)
);
ABS_16b_pe abs_2193 (
  .a(w_6461_8b),
  .b(1'b0),
  .c(w_6464_8b),
  .clk(clk)
);
assign  w_6465_8b  =  w_6464_8b ;
assign  w_6466_16b  =  w_6465_8b ;
ADD_16b_pe add_2194 (
  .a(w_6456_16b),
  .b(w_6466_16b),
  .c(w_6467_16b),
  .clk(clk)
);
assign  w_6468_16b  =  r36_w_SAD_2a163_7_16b ;
assign  w_647_16b  = 1'b0;
assign  w_6471_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_6472_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_2195 (
  .a(w_6472_8b),
  .b(w_6471_8b),
  .c(w_6473_8b),
  .clk(clk)
);
ABS_16b_pe abs_2196 (
  .a(w_6473_8b),
  .b(1'b0),
  .c(w_6476_8b),
  .clk(clk)
);
assign  w_6477_8b  =  w_6476_8b ;
assign  w_6478_16b  =  w_6477_8b ;
ADD_16b_pe add_2197 (
  .a(w_6468_16b),
  .b(w_6478_16b),
  .c(w_6479_16b),
  .clk(clk)
);
assign  w_648_16b  = 1'b0;
assign  w_6480_16b  =  r37_w_SAD_2a163_7_16b ;
assign  w_6483_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_6484_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_2198 (
  .a(w_6483_8b),
  .b(w_6484_8b),
  .c(w_6485_8b),
  .clk(clk)
);
ABS_16b_pe abs_2199 (
  .a(w_6485_8b),
  .b(1'b0),
  .c(w_6488_8b),
  .clk(clk)
);
assign  w_6489_8b  =  w_6488_8b ;
assign  w_649_16b  = 1'b0;
assign  w_6490_16b  =  w_6489_8b ;
ADD_16b_pe add_2200 (
  .a(w_6490_16b),
  .b(w_6480_16b),
  .c(w_6491_16b),
  .clk(clk)
);
assign  w_6492_16b  =  r38_w_SAD_2a163_7_16b ;
assign  w_6495_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_6496_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_2201 (
  .a(w_6495_8b),
  .b(w_6496_8b),
  .c(w_6497_8b),
  .clk(clk)
);
assign  w_650_16b  = 1'b0;
ABS_16b_pe abs_2202 (
  .a(w_6497_8b),
  .b(1'b0),
  .c(w_6500_8b),
  .clk(clk)
);
assign  w_6501_8b  =  w_6500_8b ;
assign  w_6502_16b  =  w_6501_8b ;
ADD_16b_pe add_2203 (
  .a(w_6502_16b),
  .b(w_6492_16b),
  .c(w_6503_16b),
  .clk(clk)
);
assign  w_6504_16b  =  r39_w_SAD_2a163_7_16b ;
assign  w_6507_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_6508_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_2204 (
  .a(w_6508_8b),
  .b(w_6507_8b),
  .c(w_6509_8b),
  .clk(clk)
);
assign  w_651_16b  = 1'b0;
ABS_16b_pe abs_2205 (
  .a(w_6509_8b),
  .b(1'b0),
  .c(w_6512_8b),
  .clk(clk)
);
assign  w_6513_8b  =  w_6512_8b ;
assign  w_6514_16b  =  w_6513_8b ;
ADD_16b_pe add_2206 (
  .a(w_6514_16b),
  .b(w_6504_16b),
  .c(w_6515_16b),
  .clk(clk)
);
assign  w_6516_16b  =  r40_w_SAD_2a163_7_16b ;
assign  w_6519_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_652_16b  = 1'b0;
assign  w_6520_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_2207 (
  .a(w_6520_8b),
  .b(w_6519_8b),
  .c(w_6521_8b),
  .clk(clk)
);
ABS_16b_pe abs_2208 (
  .a(w_6521_8b),
  .b(1'b0),
  .c(w_6524_8b),
  .clk(clk)
);
assign  w_6525_8b  =  w_6524_8b ;
assign  w_6526_16b  =  w_6525_8b ;
ADD_16b_pe add_2209 (
  .a(w_6516_16b),
  .b(w_6526_16b),
  .c(w_6527_16b),
  .clk(clk)
);
assign  w_6528_16b  =  r41_w_SAD_2a163_7_16b ;
assign  w_653_16b  = 1'b0;
assign  w_6531_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_6532_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_2210 (
  .a(w_6532_8b),
  .b(w_6531_8b),
  .c(w_6533_8b),
  .clk(clk)
);
ABS_16b_pe abs_2211 (
  .a(w_6533_8b),
  .b(1'b0),
  .c(w_6536_8b),
  .clk(clk)
);
assign  w_6537_8b  =  w_6536_8b ;
assign  w_6538_16b  =  w_6537_8b ;
ADD_16b_pe add_2212 (
  .a(w_6528_16b),
  .b(w_6538_16b),
  .c(w_6539_16b),
  .clk(clk)
);
assign  w_654_16b  = 1'b0;
assign  w_6540_16b  =  r42_w_SAD_2a163_7_16b ;
assign  w_6543_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_6544_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_2213 (
  .a(w_6544_8b),
  .b(w_6543_8b),
  .c(w_6545_8b),
  .clk(clk)
);
ABS_16b_pe abs_2214 (
  .a(w_6545_8b),
  .b(1'b0),
  .c(w_6548_8b),
  .clk(clk)
);
assign  w_6549_8b  =  w_6548_8b ;
assign  w_655_16b  = 1'b0;
assign  w_6550_16b  =  w_6549_8b ;
ADD_16b_pe add_2215 (
  .a(w_6550_16b),
  .b(w_6540_16b),
  .c(w_6551_16b),
  .clk(clk)
);
assign  w_6552_16b  =  r43_w_SAD_2a163_7_16b ;
assign  w_6555_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_6556_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_2216 (
  .a(w_6555_8b),
  .b(w_6556_8b),
  .c(w_6557_8b),
  .clk(clk)
);
assign  w_656_16b  = 1'b0;
ABS_16b_pe abs_2217 (
  .a(w_6557_8b),
  .b(1'b0),
  .c(w_6560_8b),
  .clk(clk)
);
assign  w_6561_8b  =  w_6560_8b ;
assign  w_6562_16b  =  w_6561_8b ;
ADD_16b_pe add_2218 (
  .a(w_6552_16b),
  .b(w_6562_16b),
  .c(w_6563_16b),
  .clk(clk)
);
assign  w_6564_16b  =  r44_w_SAD_2a163_7_16b ;
assign  w_6567_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_6568_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_2219 (
  .a(w_6567_8b),
  .b(w_6568_8b),
  .c(w_6569_8b),
  .clk(clk)
);
ABS_16b_pe abs_2220 (
  .a(w_6569_8b),
  .b(1'b0),
  .c(w_6572_8b),
  .clk(clk)
);
assign  w_6573_8b  =  w_6572_8b ;
assign  w_6574_16b  =  w_6573_8b ;
ADD_16b_pe add_2221 (
  .a(w_6564_16b),
  .b(w_6574_16b),
  .c(w_6575_16b),
  .clk(clk)
);
assign  w_6576_16b  =  r45_w_SAD_2a163_7_16b ;
assign  w_6579_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_658_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6580_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_2222 (
  .a(w_6580_8b),
  .b(w_6579_8b),
  .c(w_6581_8b),
  .clk(clk)
);
ABS_16b_pe abs_2223 (
  .a(w_6581_8b),
  .b(1'b0),
  .c(w_6584_8b),
  .clk(clk)
);
assign  w_6585_8b  =  w_6584_8b ;
assign  w_6586_16b  =  w_6585_8b ;
ADD_16b_pe add_2224 (
  .a(w_6576_16b),
  .b(w_6586_16b),
  .c(w_6587_16b),
  .clk(clk)
);
assign  w_6588_16b  =  r46_w_SAD_2a163_7_16b ;
assign  w_659_8b  =  w_pass_4_stencil_0_0_8b ;
assign  w_6591_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_6592_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_2225 (
  .a(w_6591_8b),
  .b(w_6592_8b),
  .c(w_6593_8b),
  .clk(clk)
);
ABS_16b_pe abs_2226 (
  .a(w_6593_8b),
  .b(1'b0),
  .c(w_6596_8b),
  .clk(clk)
);
assign  w_6597_8b  =  w_6596_8b ;
assign  w_6598_16b  =  w_6597_8b ;
ADD_16b_pe add_2227 (
  .a(w_6588_16b),
  .b(w_6598_16b),
  .c(w_6599_16b),
  .clk(clk)
);
SUB_16b_pe sub_2228 (
  .a(w_658_8b),
  .b(w_659_8b),
  .c(w_660_8b),
  .clk(clk)
);
assign  w_6600_16b  =  r47_w_SAD_2a163_7_16b ;
assign  w_6603_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_6604_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_2229 (
  .a(w_6603_8b),
  .b(w_6604_8b),
  .c(w_6605_8b),
  .clk(clk)
);
ABS_16b_pe abs_2230 (
  .a(w_6605_8b),
  .b(1'b0),
  .c(w_6608_8b),
  .clk(clk)
);
assign  w_6609_8b  =  w_6608_8b ;
assign  w_6610_16b  =  w_6609_8b ;
ADD_16b_pe add_2231 (
  .a(w_6600_16b),
  .b(w_6610_16b),
  .c(w_6611_16b),
  .clk(clk)
);
assign  w_6612_16b  =  r48_w_SAD_2a163_7_16b ;
assign  w_6615_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_6616_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_2232 (
  .a(w_6616_8b),
  .b(w_6615_8b),
  .c(w_6617_8b),
  .clk(clk)
);
ABS_16b_pe abs_2233 (
  .a(w_6617_8b),
  .b(1'b0),
  .c(w_6620_8b),
  .clk(clk)
);
assign  w_6621_8b  =  w_6620_8b ;
assign  w_6622_16b  =  w_6621_8b ;
ADD_16b_pe add_2234 (
  .a(w_6622_16b),
  .b(w_6612_16b),
  .c(w_6623_16b),
  .clk(clk)
);
assign  w_6624_16b  =  r49_w_SAD_2a163_7_16b ;
assign  w_6627_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_6628_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_2235 (
  .a(w_6627_8b),
  .b(w_6628_8b),
  .c(w_6629_8b),
  .clk(clk)
);
ABS_16b_pe abs_2236 (
  .a(w_660_8b),
  .b(1'b0),
  .c(w_663_8b),
  .clk(clk)
);
ABS_16b_pe abs_2237 (
  .a(w_6629_8b),
  .b(1'b0),
  .c(w_6632_8b),
  .clk(clk)
);
assign  w_6633_8b  =  w_6632_8b ;
assign  w_6634_16b  =  w_6633_8b ;
ADD_16b_pe add_2238 (
  .a(w_6634_16b),
  .b(w_6624_16b),
  .c(w_6635_16b),
  .clk(clk)
);
assign  w_6636_16b  =  r50_w_SAD_2a163_7_16b ;
assign  w_6639_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_664_8b  =  w_663_8b ;
assign  w_6640_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_2239 (
  .a(w_6640_8b),
  .b(w_6639_8b),
  .c(w_6641_8b),
  .clk(clk)
);
ABS_16b_pe abs_2240 (
  .a(w_6641_8b),
  .b(1'b0),
  .c(w_6644_8b),
  .clk(clk)
);
assign  w_6645_8b  =  w_6644_8b ;
assign  w_6646_16b  =  w_6645_8b ;
ADD_16b_pe add_2241 (
  .a(w_6646_16b),
  .b(w_6636_16b),
  .c(w_6647_16b),
  .clk(clk)
);
assign  w_6648_16b  =  r51_w_SAD_2a163_7_16b ;
assign  w_665_16b  =  w_664_8b ;
assign  w_6651_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_6652_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_2242 (
  .a(w_6652_8b),
  .b(w_6651_8b),
  .c(w_6653_8b),
  .clk(clk)
);
ABS_16b_pe abs_2243 (
  .a(w_6653_8b),
  .b(1'b0),
  .c(w_6656_8b),
  .clk(clk)
);
assign  w_6657_8b  =  w_6656_8b ;
assign  w_6658_16b  =  w_6657_8b ;
ADD_16b_pe add_2244 (
  .a(w_6658_16b),
  .b(w_6648_16b),
  .c(w_6659_16b),
  .clk(clk)
);
ADD_16b_pe add_2245 (
  .a(w_665_16b),
  .b(w_656_16b),
  .c(w_666_16b),
  .clk(clk)
);
assign  w_6660_16b  =  r52_w_SAD_2a163_7_16b ;
assign  w_6663_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_6664_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_2246 (
  .a(w_6663_8b),
  .b(w_6664_8b),
  .c(w_6665_8b),
  .clk(clk)
);
ABS_16b_pe abs_2247 (
  .a(w_6665_8b),
  .b(1'b0),
  .c(w_6668_8b),
  .clk(clk)
);
assign  w_6669_8b  =  w_6668_8b ;
assign  w_667_16b  =  r0_w_SAD_2a163_0_16b ;
assign  w_6670_16b  =  w_6669_8b ;
ADD_16b_pe add_2248 (
  .a(w_6670_16b),
  .b(w_6660_16b),
  .c(w_6671_16b),
  .clk(clk)
);
assign  w_6672_16b  =  r53_w_SAD_2a163_7_16b ;
assign  w_6675_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_6676_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_2249 (
  .a(w_6675_8b),
  .b(w_6676_8b),
  .c(w_6677_8b),
  .clk(clk)
);
ABS_16b_pe abs_2250 (
  .a(w_6677_8b),
  .b(1'b0),
  .c(w_6680_8b),
  .clk(clk)
);
assign  w_6681_8b  =  w_6680_8b ;
assign  w_6682_16b  =  w_6681_8b ;
ADD_16b_pe add_2251 (
  .a(w_6682_16b),
  .b(w_6672_16b),
  .c(w_6683_16b),
  .clk(clk)
);
assign  w_6684_16b  =  r54_w_SAD_2a163_7_16b ;
assign  w_6687_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_6688_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_2252 (
  .a(w_6688_8b),
  .b(w_6687_8b),
  .c(w_6689_8b),
  .clk(clk)
);
ABS_16b_pe abs_2253 (
  .a(w_6689_8b),
  .b(1'b0),
  .c(w_6692_8b),
  .clk(clk)
);
assign  w_6693_8b  =  w_6692_8b ;
assign  w_6694_16b  =  w_6693_8b ;
ADD_16b_pe add_2254 (
  .a(w_6694_16b),
  .b(w_6684_16b),
  .c(w_6695_16b),
  .clk(clk)
);
assign  w_6696_16b  =  r55_w_SAD_2a163_7_16b ;
assign  w_6699_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_670_8b  =  w_pass_5_stencil_17_0_8b ;
assign  w_6700_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_2255 (
  .a(w_6700_8b),
  .b(w_6699_8b),
  .c(w_6701_8b),
  .clk(clk)
);
ABS_16b_pe abs_2256 (
  .a(w_6701_8b),
  .b(1'b0),
  .c(w_6704_8b),
  .clk(clk)
);
assign  w_6705_8b  =  w_6704_8b ;
assign  w_6706_16b  =  w_6705_8b ;
ADD_16b_pe add_2257 (
  .a(w_6696_16b),
  .b(w_6706_16b),
  .c(w_6707_16b),
  .clk(clk)
);
assign  w_6708_16b  =  r56_w_SAD_2a163_7_16b ;
assign  w_671_8b  =  w_pass_4_stencil_1_0_8b ;
assign  w_6711_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_6712_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_2258 (
  .a(w_6712_8b),
  .b(w_6711_8b),
  .c(w_6713_8b),
  .clk(clk)
);
ABS_16b_pe abs_2259 (
  .a(w_6713_8b),
  .b(1'b0),
  .c(w_6716_8b),
  .clk(clk)
);
assign  w_6717_8b  =  w_6716_8b ;
assign  w_6718_16b  =  w_6717_8b ;
ADD_16b_pe add_2260 (
  .a(w_6708_16b),
  .b(w_6718_16b),
  .c(w_6719_16b),
  .clk(clk)
);
SUB_16b_pe sub_2261 (
  .a(w_670_8b),
  .b(w_671_8b),
  .c(w_672_8b),
  .clk(clk)
);
assign  w_6720_16b  =  r57_w_SAD_2a163_7_16b ;
assign  w_6723_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_6724_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_2262 (
  .a(w_6723_8b),
  .b(w_6724_8b),
  .c(w_6725_8b),
  .clk(clk)
);
ABS_16b_pe abs_2263 (
  .a(w_6725_8b),
  .b(1'b0),
  .c(w_6728_8b),
  .clk(clk)
);
assign  w_6729_8b  =  w_6728_8b ;
assign  w_6730_16b  =  w_6729_8b ;
ADD_16b_pe add_2264 (
  .a(w_6720_16b),
  .b(w_6730_16b),
  .c(w_6731_16b),
  .clk(clk)
);
assign  w_6732_16b  =  r58_w_SAD_2a163_7_16b ;
assign  w_6735_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_6736_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_2265 (
  .a(w_6735_8b),
  .b(w_6736_8b),
  .c(w_6737_8b),
  .clk(clk)
);
ABS_16b_pe abs_2266 (
  .a(w_6737_8b),
  .b(1'b0),
  .c(w_6740_8b),
  .clk(clk)
);
assign  w_6741_8b  =  w_6740_8b ;
assign  w_6742_16b  =  w_6741_8b ;
ADD_16b_pe add_2267 (
  .a(w_6732_16b),
  .b(w_6742_16b),
  .c(w_6743_16b),
  .clk(clk)
);
assign  w_6744_16b  =  r59_w_SAD_2a163_7_16b ;
assign  w_6747_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_6748_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_2268 (
  .a(w_6747_8b),
  .b(w_6748_8b),
  .c(w_6749_8b),
  .clk(clk)
);
ABS_16b_pe abs_2269 (
  .a(w_672_8b),
  .b(1'b0),
  .c(w_675_8b),
  .clk(clk)
);
ABS_16b_pe abs_2270 (
  .a(w_6749_8b),
  .b(1'b0),
  .c(w_6752_8b),
  .clk(clk)
);
assign  w_6753_8b  =  w_6752_8b ;
assign  w_6754_16b  =  w_6753_8b ;
ADD_16b_pe add_2271 (
  .a(w_6744_16b),
  .b(w_6754_16b),
  .c(w_6755_16b),
  .clk(clk)
);
assign  w_6756_16b  =  r60_w_SAD_2a163_7_16b ;
assign  w_6759_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_676_8b  =  w_675_8b ;
assign  w_6760_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_2272 (
  .a(w_6760_8b),
  .b(w_6759_8b),
  .c(w_6761_8b),
  .clk(clk)
);
ABS_16b_pe abs_2273 (
  .a(w_6761_8b),
  .b(1'b0),
  .c(w_6764_8b),
  .clk(clk)
);
assign  w_6765_8b  =  w_6764_8b ;
assign  w_6766_16b  =  w_6765_8b ;
ADD_16b_pe add_2274 (
  .a(w_6756_16b),
  .b(w_6766_16b),
  .c(w_6767_16b),
  .clk(clk)
);
assign  w_6768_16b  =  r61_w_SAD_2a163_7_16b ;
assign  w_677_16b  =  w_676_8b ;
assign  w_6771_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_6772_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_2275 (
  .a(w_6771_8b),
  .b(w_6772_8b),
  .c(w_6773_8b),
  .clk(clk)
);
ABS_16b_pe abs_2276 (
  .a(w_6773_8b),
  .b(1'b0),
  .c(w_6776_8b),
  .clk(clk)
);
assign  w_6777_8b  =  w_6776_8b ;
assign  w_6778_16b  =  w_6777_8b ;
ADD_16b_pe add_2277 (
  .a(w_6778_16b),
  .b(w_6768_16b),
  .c(w_6779_16b),
  .clk(clk)
);
ADD_16b_pe add_2278 (
  .a(w_667_16b),
  .b(w_677_16b),
  .c(w_678_16b),
  .clk(clk)
);
assign  w_6780_16b  =  r62_w_SAD_2a163_7_16b ;
assign  w_6783_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_6784_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_2279 (
  .a(w_6783_8b),
  .b(w_6784_8b),
  .c(w_6785_8b),
  .clk(clk)
);
ABS_16b_pe abs_2280 (
  .a(w_6785_8b),
  .b(1'b0),
  .c(w_6788_8b),
  .clk(clk)
);
assign  w_6789_8b  =  w_6788_8b ;
assign  w_679_16b  =  r1_w_SAD_2a163_0_16b ;
assign  w_6790_16b  =  w_6789_8b ;
ADD_16b_pe add_2281 (
  .a(w_6780_16b),
  .b(w_6790_16b),
  .c(w_6791_16b),
  .clk(clk)
);
assign  w_6792_16b  = 1'b0;
assign  w_6795_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6796_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_2282 (
  .a(w_6796_8b),
  .b(w_6795_8b),
  .c(w_6797_8b),
  .clk(clk)
);
ABS_16b_pe abs_2283 (
  .a(w_6797_8b),
  .b(1'b0),
  .c(w_6800_8b),
  .clk(clk)
);
assign  w_6801_8b  =  w_6800_8b ;
assign  w_6802_16b  =  w_6801_8b ;
ADD_16b_pe add_2284 (
  .a(w_6792_16b),
  .b(w_6802_16b),
  .c(w_6803_16b),
  .clk(clk)
);
assign  w_6804_16b  =  r0_w_SAD_2a163_8_16b ;
assign  w_6807_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6808_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_2285 (
  .a(w_6807_8b),
  .b(w_6808_8b),
  .c(w_6809_8b),
  .clk(clk)
);
ABS_16b_pe abs_2286 (
  .a(w_6809_8b),
  .b(1'b0),
  .c(w_6812_8b),
  .clk(clk)
);
assign  w_6813_8b  =  w_6812_8b ;
assign  w_6814_16b  =  w_6813_8b ;
ADD_16b_pe add_2287 (
  .a(w_6814_16b),
  .b(w_6804_16b),
  .c(w_6815_16b),
  .clk(clk)
);
assign  w_6816_16b  =  r1_w_SAD_2a163_8_16b ;
assign  w_6819_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_682_8b  =  w_pass_5_stencil_18_0_8b ;
assign  w_6820_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_2288 (
  .a(w_6820_8b),
  .b(w_6819_8b),
  .c(w_6821_8b),
  .clk(clk)
);
ABS_16b_pe abs_2289 (
  .a(w_6821_8b),
  .b(1'b0),
  .c(w_6824_8b),
  .clk(clk)
);
assign  w_6825_8b  =  w_6824_8b ;
assign  w_6826_16b  =  w_6825_8b ;
ADD_16b_pe add_2290 (
  .a(w_6816_16b),
  .b(w_6826_16b),
  .c(w_6827_16b),
  .clk(clk)
);
assign  w_6828_16b  =  r2_w_SAD_2a163_8_16b ;
assign  w_683_8b  =  w_pass_4_stencil_2_0_8b ;
assign  w_6831_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6832_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_2291 (
  .a(w_6832_8b),
  .b(w_6831_8b),
  .c(w_6833_8b),
  .clk(clk)
);
ABS_16b_pe abs_2292 (
  .a(w_6833_8b),
  .b(1'b0),
  .c(w_6836_8b),
  .clk(clk)
);
assign  w_6837_8b  =  w_6836_8b ;
assign  w_6838_16b  =  w_6837_8b ;
ADD_16b_pe add_2293 (
  .a(w_6828_16b),
  .b(w_6838_16b),
  .c(w_6839_16b),
  .clk(clk)
);
SUB_16b_pe sub_2294 (
  .a(w_683_8b),
  .b(w_682_8b),
  .c(w_684_8b),
  .clk(clk)
);
assign  w_6840_16b  =  r3_w_SAD_2a163_8_16b ;
assign  w_6843_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6844_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_2295 (
  .a(w_6843_8b),
  .b(w_6844_8b),
  .c(w_6845_8b),
  .clk(clk)
);
ABS_16b_pe abs_2296 (
  .a(w_6845_8b),
  .b(1'b0),
  .c(w_6848_8b),
  .clk(clk)
);
assign  w_6849_8b  =  w_6848_8b ;
assign  w_6850_16b  =  w_6849_8b ;
ADD_16b_pe add_2297 (
  .a(w_6850_16b),
  .b(w_6840_16b),
  .c(w_6851_16b),
  .clk(clk)
);
assign  w_6852_16b  =  r4_w_SAD_2a163_8_16b ;
assign  w_6855_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6856_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_2298 (
  .a(w_6855_8b),
  .b(w_6856_8b),
  .c(w_6857_8b),
  .clk(clk)
);
ABS_16b_pe abs_2299 (
  .a(w_6857_8b),
  .b(1'b0),
  .c(w_6860_8b),
  .clk(clk)
);
assign  w_6861_8b  =  w_6860_8b ;
assign  w_6862_16b  =  w_6861_8b ;
ADD_16b_pe add_2300 (
  .a(w_6852_16b),
  .b(w_6862_16b),
  .c(w_6863_16b),
  .clk(clk)
);
assign  w_6864_16b  =  r5_w_SAD_2a163_8_16b ;
assign  w_6867_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_6868_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_2301 (
  .a(w_6867_8b),
  .b(w_6868_8b),
  .c(w_6869_8b),
  .clk(clk)
);
ABS_16b_pe abs_2302 (
  .a(w_684_8b),
  .b(1'b0),
  .c(w_687_8b),
  .clk(clk)
);
ABS_16b_pe abs_2303 (
  .a(w_6869_8b),
  .b(1'b0),
  .c(w_6872_8b),
  .clk(clk)
);
assign  w_6873_8b  =  w_6872_8b ;
assign  w_6874_16b  =  w_6873_8b ;
ADD_16b_pe add_2304 (
  .a(w_6864_16b),
  .b(w_6874_16b),
  .c(w_6875_16b),
  .clk(clk)
);
assign  w_6876_16b  =  r6_w_SAD_2a163_8_16b ;
assign  w_6879_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_688_8b  =  w_687_8b ;
assign  w_6880_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_2305 (
  .a(w_6879_8b),
  .b(w_6880_8b),
  .c(w_6881_8b),
  .clk(clk)
);
ABS_16b_pe abs_2306 (
  .a(w_6881_8b),
  .b(1'b0),
  .c(w_6884_8b),
  .clk(clk)
);
assign  w_6885_8b  =  w_6884_8b ;
assign  w_6886_16b  =  w_6885_8b ;
ADD_16b_pe add_2307 (
  .a(w_6886_16b),
  .b(w_6876_16b),
  .c(w_6887_16b),
  .clk(clk)
);
assign  w_6888_16b  =  r7_w_SAD_2a163_8_16b ;
assign  w_689_16b  =  w_688_8b ;
assign  w_6891_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6892_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_2308 (
  .a(w_6891_8b),
  .b(w_6892_8b),
  .c(w_6893_8b),
  .clk(clk)
);
ABS_16b_pe abs_2309 (
  .a(w_6893_8b),
  .b(1'b0),
  .c(w_6896_8b),
  .clk(clk)
);
assign  w_6897_8b  =  w_6896_8b ;
assign  w_6898_16b  =  w_6897_8b ;
ADD_16b_pe add_2310 (
  .a(w_6898_16b),
  .b(w_6888_16b),
  .c(w_6899_16b),
  .clk(clk)
);
ADD_16b_pe add_2311 (
  .a(w_679_16b),
  .b(w_689_16b),
  .c(w_690_16b),
  .clk(clk)
);
assign  w_6900_16b  =  r8_w_SAD_2a163_8_16b ;
assign  w_6903_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6904_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_2312 (
  .a(w_6904_8b),
  .b(w_6903_8b),
  .c(w_6905_8b),
  .clk(clk)
);
ABS_16b_pe abs_2313 (
  .a(w_6905_8b),
  .b(1'b0),
  .c(w_6908_8b),
  .clk(clk)
);
assign  w_6909_8b  =  w_6908_8b ;
assign  w_691_16b  =  r2_w_SAD_2a163_0_16b ;
assign  w_6910_16b  =  w_6909_8b ;
ADD_16b_pe add_2314 (
  .a(w_6910_16b),
  .b(w_6900_16b),
  .c(w_6911_16b),
  .clk(clk)
);
assign  w_6912_16b  =  r9_w_SAD_2a163_8_16b ;
assign  w_6915_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6916_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_2315 (
  .a(w_6915_8b),
  .b(w_6916_8b),
  .c(w_6917_8b),
  .clk(clk)
);
ABS_16b_pe abs_2316 (
  .a(w_6917_8b),
  .b(1'b0),
  .c(w_6920_8b),
  .clk(clk)
);
assign  w_6921_8b  =  w_6920_8b ;
assign  w_6922_16b  =  w_6921_8b ;
ADD_16b_pe add_2317 (
  .a(w_6912_16b),
  .b(w_6922_16b),
  .c(w_6923_16b),
  .clk(clk)
);
assign  w_6924_16b  =  r10_w_SAD_2a163_8_16b ;
assign  w_6927_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6928_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_2318 (
  .a(w_6927_8b),
  .b(w_6928_8b),
  .c(w_6929_8b),
  .clk(clk)
);
ABS_16b_pe abs_2319 (
  .a(w_6929_8b),
  .b(1'b0),
  .c(w_6932_8b),
  .clk(clk)
);
assign  w_6933_8b  =  w_6932_8b ;
assign  w_6934_16b  =  w_6933_8b ;
ADD_16b_pe add_2320 (
  .a(w_6924_16b),
  .b(w_6934_16b),
  .c(w_6935_16b),
  .clk(clk)
);
assign  w_6936_16b  =  r11_w_SAD_2a163_8_16b ;
assign  w_6939_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_694_8b  =  w_pass_5_stencil_19_0_8b ;
assign  w_6940_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_2321 (
  .a(w_6940_8b),
  .b(w_6939_8b),
  .c(w_6941_8b),
  .clk(clk)
);
ABS_16b_pe abs_2322 (
  .a(w_6941_8b),
  .b(1'b0),
  .c(w_6944_8b),
  .clk(clk)
);
assign  w_6945_8b  =  w_6944_8b ;
assign  w_6946_16b  =  w_6945_8b ;
ADD_16b_pe add_2323 (
  .a(w_6936_16b),
  .b(w_6946_16b),
  .c(w_6947_16b),
  .clk(clk)
);
assign  w_6948_16b  =  r12_w_SAD_2a163_8_16b ;
assign  w_695_8b  =  w_pass_4_stencil_3_0_8b ;
assign  w_6951_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6952_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_2324 (
  .a(w_6951_8b),
  .b(w_6952_8b),
  .c(w_6953_8b),
  .clk(clk)
);
ABS_16b_pe abs_2325 (
  .a(w_6953_8b),
  .b(1'b0),
  .c(w_6956_8b),
  .clk(clk)
);
assign  w_6957_8b  =  w_6956_8b ;
assign  w_6958_16b  =  w_6957_8b ;
ADD_16b_pe add_2326 (
  .a(w_6948_16b),
  .b(w_6958_16b),
  .c(w_6959_16b),
  .clk(clk)
);
SUB_16b_pe sub_2327 (
  .a(w_694_8b),
  .b(w_695_8b),
  .c(w_696_8b),
  .clk(clk)
);
assign  w_6960_16b  =  r13_w_SAD_2a163_8_16b ;
assign  w_6963_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6964_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_2328 (
  .a(w_6963_8b),
  .b(w_6964_8b),
  .c(w_6965_8b),
  .clk(clk)
);
ABS_16b_pe abs_2329 (
  .a(w_6965_8b),
  .b(1'b0),
  .c(w_6968_8b),
  .clk(clk)
);
assign  w_6969_8b  =  w_6968_8b ;
assign  w_6970_16b  =  w_6969_8b ;
ADD_16b_pe add_2330 (
  .a(w_6960_16b),
  .b(w_6970_16b),
  .c(w_6971_16b),
  .clk(clk)
);
assign  w_6972_16b  =  r14_w_SAD_2a163_8_16b ;
assign  w_6975_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_6976_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_2331 (
  .a(w_6976_8b),
  .b(w_6975_8b),
  .c(w_6977_8b),
  .clk(clk)
);
ABS_16b_pe abs_2332 (
  .a(w_6977_8b),
  .b(1'b0),
  .c(w_6980_8b),
  .clk(clk)
);
assign  w_6981_8b  =  w_6980_8b ;
assign  w_6982_16b  =  w_6981_8b ;
ADD_16b_pe add_2333 (
  .a(w_6972_16b),
  .b(w_6982_16b),
  .c(w_6983_16b),
  .clk(clk)
);
assign  w_6984_16b  =  r15_w_SAD_2a163_8_16b ;
assign  w_6987_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_6988_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_2334 (
  .a(w_6987_8b),
  .b(w_6988_8b),
  .c(w_6989_8b),
  .clk(clk)
);
ABS_16b_pe abs_2335 (
  .a(w_696_8b),
  .b(1'b0),
  .c(w_699_8b),
  .clk(clk)
);
ABS_16b_pe abs_2336 (
  .a(w_6989_8b),
  .b(1'b0),
  .c(w_6992_8b),
  .clk(clk)
);
assign  w_6993_8b  =  w_6992_8b ;
assign  w_6994_16b  =  w_6993_8b ;
ADD_16b_pe add_2337 (
  .a(w_6984_16b),
  .b(w_6994_16b),
  .c(w_6995_16b),
  .clk(clk)
);
assign  w_6996_16b  =  r16_w_SAD_2a163_8_16b ;
assign  w_6999_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_700_8b  =  w_699_8b ;
assign  w_7000_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_2338 (
  .a(w_6999_8b),
  .b(w_7000_8b),
  .c(w_7001_8b),
  .clk(clk)
);
ABS_16b_pe abs_2339 (
  .a(w_7001_8b),
  .b(1'b0),
  .c(w_7004_8b),
  .clk(clk)
);
assign  w_7005_8b  =  w_7004_8b ;
assign  w_7006_16b  =  w_7005_8b ;
ADD_16b_pe add_2340 (
  .a(w_7006_16b),
  .b(w_6996_16b),
  .c(w_7007_16b),
  .clk(clk)
);
assign  w_7008_16b  =  r17_w_SAD_2a163_8_16b ;
assign  w_701_16b  =  w_700_8b ;
assign  w_7011_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_7012_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_2341 (
  .a(w_7012_8b),
  .b(w_7011_8b),
  .c(w_7013_8b),
  .clk(clk)
);
ABS_16b_pe abs_2342 (
  .a(w_7013_8b),
  .b(1'b0),
  .c(w_7016_8b),
  .clk(clk)
);
assign  w_7017_8b  =  w_7016_8b ;
assign  w_7018_16b  =  w_7017_8b ;
ADD_16b_pe add_2343 (
  .a(w_7008_16b),
  .b(w_7018_16b),
  .c(w_7019_16b),
  .clk(clk)
);
ADD_16b_pe add_2344 (
  .a(w_701_16b),
  .b(w_691_16b),
  .c(w_702_16b),
  .clk(clk)
);
assign  w_7020_16b  =  r18_w_SAD_2a163_8_16b ;
assign  w_7023_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_7024_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_2345 (
  .a(w_7024_8b),
  .b(w_7023_8b),
  .c(w_7025_8b),
  .clk(clk)
);
ABS_16b_pe abs_2346 (
  .a(w_7025_8b),
  .b(1'b0),
  .c(w_7028_8b),
  .clk(clk)
);
assign  w_7029_8b  =  w_7028_8b ;
assign  w_703_16b  =  r3_w_SAD_2a163_0_16b ;
assign  w_7030_16b  =  w_7029_8b ;
ADD_16b_pe add_2347 (
  .a(w_7030_16b),
  .b(w_7020_16b),
  .c(w_7031_16b),
  .clk(clk)
);
assign  w_7032_16b  =  r19_w_SAD_2a163_8_16b ;
assign  w_7035_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_7036_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_2348 (
  .a(w_7035_8b),
  .b(w_7036_8b),
  .c(w_7037_8b),
  .clk(clk)
);
ABS_16b_pe abs_2349 (
  .a(w_7037_8b),
  .b(1'b0),
  .c(w_7040_8b),
  .clk(clk)
);
assign  w_7041_8b  =  w_7040_8b ;
assign  w_7042_16b  =  w_7041_8b ;
ADD_16b_pe add_2350 (
  .a(w_7032_16b),
  .b(w_7042_16b),
  .c(w_7043_16b),
  .clk(clk)
);
assign  w_7044_16b  =  r20_w_SAD_2a163_8_16b ;
assign  w_7047_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_7048_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_2351 (
  .a(w_7048_8b),
  .b(w_7047_8b),
  .c(w_7049_8b),
  .clk(clk)
);
ABS_16b_pe abs_2352 (
  .a(w_7049_8b),
  .b(1'b0),
  .c(w_7052_8b),
  .clk(clk)
);
assign  w_7053_8b  =  w_7052_8b ;
assign  w_7054_16b  =  w_7053_8b ;
ADD_16b_pe add_2353 (
  .a(w_7044_16b),
  .b(w_7054_16b),
  .c(w_7055_16b),
  .clk(clk)
);
assign  w_7056_16b  =  r21_w_SAD_2a163_8_16b ;
assign  w_7059_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_706_8b  =  w_pass_5_stencil_20_0_8b ;
assign  w_7060_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_2354 (
  .a(w_7059_8b),
  .b(w_7060_8b),
  .c(w_7061_8b),
  .clk(clk)
);
ABS_16b_pe abs_2355 (
  .a(w_7061_8b),
  .b(1'b0),
  .c(w_7064_8b),
  .clk(clk)
);
assign  w_7065_8b  =  w_7064_8b ;
assign  w_7066_16b  =  w_7065_8b ;
ADD_16b_pe add_2356 (
  .a(w_7056_16b),
  .b(w_7066_16b),
  .c(w_7067_16b),
  .clk(clk)
);
assign  w_7068_16b  =  r22_w_SAD_2a163_8_16b ;
assign  w_707_8b  =  w_pass_4_stencil_4_0_8b ;
assign  w_7071_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_7072_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_2357 (
  .a(w_7071_8b),
  .b(w_7072_8b),
  .c(w_7073_8b),
  .clk(clk)
);
ABS_16b_pe abs_2358 (
  .a(w_7073_8b),
  .b(1'b0),
  .c(w_7076_8b),
  .clk(clk)
);
assign  w_7077_8b  =  w_7076_8b ;
assign  w_7078_16b  =  w_7077_8b ;
ADD_16b_pe add_2359 (
  .a(w_7068_16b),
  .b(w_7078_16b),
  .c(w_7079_16b),
  .clk(clk)
);
SUB_16b_pe sub_2360 (
  .a(w_706_8b),
  .b(w_707_8b),
  .c(w_708_8b),
  .clk(clk)
);
assign  w_7080_16b  =  r23_w_SAD_2a163_8_16b ;
assign  w_7083_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7084_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_2361 (
  .a(w_7084_8b),
  .b(w_7083_8b),
  .c(w_7085_8b),
  .clk(clk)
);
ABS_16b_pe abs_2362 (
  .a(w_7085_8b),
  .b(1'b0),
  .c(w_7088_8b),
  .clk(clk)
);
assign  w_7089_8b  =  w_7088_8b ;
assign  w_7090_16b  =  w_7089_8b ;
ADD_16b_pe add_2363 (
  .a(w_7080_16b),
  .b(w_7090_16b),
  .c(w_7091_16b),
  .clk(clk)
);
assign  w_7092_16b  =  r24_w_SAD_2a163_8_16b ;
assign  w_7095_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7096_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_2364 (
  .a(w_7096_8b),
  .b(w_7095_8b),
  .c(w_7097_8b),
  .clk(clk)
);
ABS_16b_pe abs_2365 (
  .a(w_7097_8b),
  .b(1'b0),
  .c(w_7100_8b),
  .clk(clk)
);
assign  w_7101_8b  =  w_7100_8b ;
assign  w_7102_16b  =  w_7101_8b ;
ADD_16b_pe add_2366 (
  .a(w_7092_16b),
  .b(w_7102_16b),
  .c(w_7103_16b),
  .clk(clk)
);
assign  w_7104_16b  =  r25_w_SAD_2a163_8_16b ;
assign  w_7107_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7108_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_2367 (
  .a(w_7107_8b),
  .b(w_7108_8b),
  .c(w_7109_8b),
  .clk(clk)
);
ABS_16b_pe abs_2368 (
  .a(w_708_8b),
  .b(1'b0),
  .c(w_711_8b),
  .clk(clk)
);
ABS_16b_pe abs_2369 (
  .a(w_7109_8b),
  .b(1'b0),
  .c(w_7112_8b),
  .clk(clk)
);
assign  w_7113_8b  =  w_7112_8b ;
assign  w_7114_16b  =  w_7113_8b ;
ADD_16b_pe add_2370 (
  .a(w_7104_16b),
  .b(w_7114_16b),
  .c(w_7115_16b),
  .clk(clk)
);
assign  w_7116_16b  =  r26_w_SAD_2a163_8_16b ;
assign  w_7119_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_712_8b  =  w_711_8b ;
assign  w_7120_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_2371 (
  .a(w_7119_8b),
  .b(w_7120_8b),
  .c(w_7121_8b),
  .clk(clk)
);
ABS_16b_pe abs_2372 (
  .a(w_7121_8b),
  .b(1'b0),
  .c(w_7124_8b),
  .clk(clk)
);
assign  w_7125_8b  =  w_7124_8b ;
assign  w_7126_16b  =  w_7125_8b ;
ADD_16b_pe add_2373 (
  .a(w_7126_16b),
  .b(w_7116_16b),
  .c(w_7127_16b),
  .clk(clk)
);
assign  w_7128_16b  =  r27_w_SAD_2a163_8_16b ;
assign  w_713_16b  =  w_712_8b ;
assign  w_7131_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7132_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_2374 (
  .a(w_7131_8b),
  .b(w_7132_8b),
  .c(w_7133_8b),
  .clk(clk)
);
ABS_16b_pe abs_2375 (
  .a(w_7133_8b),
  .b(1'b0),
  .c(w_7136_8b),
  .clk(clk)
);
assign  w_7137_8b  =  w_7136_8b ;
assign  w_7138_16b  =  w_7137_8b ;
ADD_16b_pe add_2376 (
  .a(w_7138_16b),
  .b(w_7128_16b),
  .c(w_7139_16b),
  .clk(clk)
);
ADD_16b_pe add_2377 (
  .a(w_713_16b),
  .b(w_703_16b),
  .c(w_714_16b),
  .clk(clk)
);
assign  w_7140_16b  =  r28_w_SAD_2a163_8_16b ;
assign  w_7143_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7144_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_2378 (
  .a(w_7143_8b),
  .b(w_7144_8b),
  .c(w_7145_8b),
  .clk(clk)
);
ABS_16b_pe abs_2379 (
  .a(w_7145_8b),
  .b(1'b0),
  .c(w_7148_8b),
  .clk(clk)
);
assign  w_7149_8b  =  w_7148_8b ;
assign  w_715_16b  =  r4_w_SAD_2a163_0_16b ;
assign  w_7150_16b  =  w_7149_8b ;
ADD_16b_pe add_2380 (
  .a(w_7140_16b),
  .b(w_7150_16b),
  .c(w_7151_16b),
  .clk(clk)
);
assign  w_7152_16b  =  r29_w_SAD_2a163_8_16b ;
assign  w_7155_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7156_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_2381 (
  .a(w_7156_8b),
  .b(w_7155_8b),
  .c(w_7157_8b),
  .clk(clk)
);
ABS_16b_pe abs_2382 (
  .a(w_7157_8b),
  .b(1'b0),
  .c(w_7160_8b),
  .clk(clk)
);
assign  w_7161_8b  =  w_7160_8b ;
assign  w_7162_16b  =  w_7161_8b ;
ADD_16b_pe add_2383 (
  .a(w_7162_16b),
  .b(w_7152_16b),
  .c(w_7163_16b),
  .clk(clk)
);
assign  w_7164_16b  =  r30_w_SAD_2a163_8_16b ;
assign  w_7167_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7168_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_2384 (
  .a(w_7167_8b),
  .b(w_7168_8b),
  .c(w_7169_8b),
  .clk(clk)
);
ABS_16b_pe abs_2385 (
  .a(w_7169_8b),
  .b(1'b0),
  .c(w_7172_8b),
  .clk(clk)
);
assign  w_7173_8b  =  w_7172_8b ;
assign  w_7174_16b  =  w_7173_8b ;
ADD_16b_pe add_2386 (
  .a(w_7174_16b),
  .b(w_7164_16b),
  .c(w_7175_16b),
  .clk(clk)
);
assign  w_7176_16b  =  r31_w_SAD_2a163_8_16b ;
assign  w_7179_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_718_8b  =  w_pass_5_stencil_21_0_8b ;
assign  w_7180_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_2387 (
  .a(w_7180_8b),
  .b(w_7179_8b),
  .c(w_7181_8b),
  .clk(clk)
);
ABS_16b_pe abs_2388 (
  .a(w_7181_8b),
  .b(1'b0),
  .c(w_7184_8b),
  .clk(clk)
);
assign  w_7185_8b  =  w_7184_8b ;
assign  w_7186_16b  =  w_7185_8b ;
ADD_16b_pe add_2389 (
  .a(w_7186_16b),
  .b(w_7176_16b),
  .c(w_7187_16b),
  .clk(clk)
);
assign  w_7188_16b  =  r32_w_SAD_2a163_8_16b ;
assign  w_719_8b  =  w_pass_4_stencil_5_0_8b ;
assign  w_7191_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_7192_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_2390 (
  .a(w_7192_8b),
  .b(w_7191_8b),
  .c(w_7193_8b),
  .clk(clk)
);
ABS_16b_pe abs_2391 (
  .a(w_7193_8b),
  .b(1'b0),
  .c(w_7196_8b),
  .clk(clk)
);
assign  w_7197_8b  =  w_7196_8b ;
assign  w_7198_16b  =  w_7197_8b ;
ADD_16b_pe add_2392 (
  .a(w_7198_16b),
  .b(w_7188_16b),
  .c(w_7199_16b),
  .clk(clk)
);
SUB_16b_pe sub_2393 (
  .a(w_719_8b),
  .b(w_718_8b),
  .c(w_720_8b),
  .clk(clk)
);
assign  w_7200_16b  =  r33_w_SAD_2a163_8_16b ;
assign  w_7203_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_7204_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_2394 (
  .a(w_7204_8b),
  .b(w_7203_8b),
  .c(w_7205_8b),
  .clk(clk)
);
ABS_16b_pe abs_2395 (
  .a(w_7205_8b),
  .b(1'b0),
  .c(w_7208_8b),
  .clk(clk)
);
assign  w_7209_8b  =  w_7208_8b ;
assign  w_7210_16b  =  w_7209_8b ;
ADD_16b_pe add_2396 (
  .a(w_7210_16b),
  .b(w_7200_16b),
  .c(w_7211_16b),
  .clk(clk)
);
assign  w_7212_16b  =  r34_w_SAD_2a163_8_16b ;
assign  w_7215_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_7216_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_2397 (
  .a(w_7215_8b),
  .b(w_7216_8b),
  .c(w_7217_8b),
  .clk(clk)
);
ABS_16b_pe abs_2398 (
  .a(w_7217_8b),
  .b(1'b0),
  .c(w_7220_8b),
  .clk(clk)
);
assign  w_7221_8b  =  w_7220_8b ;
assign  w_7222_16b  =  w_7221_8b ;
ADD_16b_pe add_2399 (
  .a(w_7212_16b),
  .b(w_7222_16b),
  .c(w_7223_16b),
  .clk(clk)
);
assign  w_7224_16b  =  r35_w_SAD_2a163_8_16b ;
assign  w_7227_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_7228_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_2400 (
  .a(w_7227_8b),
  .b(w_7228_8b),
  .c(w_7229_8b),
  .clk(clk)
);
ABS_16b_pe abs_2401 (
  .a(w_720_8b),
  .b(1'b0),
  .c(w_723_8b),
  .clk(clk)
);
ABS_16b_pe abs_2402 (
  .a(w_7229_8b),
  .b(1'b0),
  .c(w_7232_8b),
  .clk(clk)
);
assign  w_7233_8b  =  w_7232_8b ;
assign  w_7234_16b  =  w_7233_8b ;
ADD_16b_pe add_2403 (
  .a(w_7224_16b),
  .b(w_7234_16b),
  .c(w_7235_16b),
  .clk(clk)
);
assign  w_7236_16b  =  r36_w_SAD_2a163_8_16b ;
assign  w_7239_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_724_8b  =  w_723_8b ;
assign  w_7240_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_2404 (
  .a(w_7240_8b),
  .b(w_7239_8b),
  .c(w_7241_8b),
  .clk(clk)
);
ABS_16b_pe abs_2405 (
  .a(w_7241_8b),
  .b(1'b0),
  .c(w_7244_8b),
  .clk(clk)
);
assign  w_7245_8b  =  w_7244_8b ;
assign  w_7246_16b  =  w_7245_8b ;
ADD_16b_pe add_2406 (
  .a(w_7236_16b),
  .b(w_7246_16b),
  .c(w_7247_16b),
  .clk(clk)
);
assign  w_7248_16b  =  r37_w_SAD_2a163_8_16b ;
assign  w_725_16b  =  w_724_8b ;
assign  w_7251_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_7252_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_2407 (
  .a(w_7251_8b),
  .b(w_7252_8b),
  .c(w_7253_8b),
  .clk(clk)
);
ABS_16b_pe abs_2408 (
  .a(w_7253_8b),
  .b(1'b0),
  .c(w_7256_8b),
  .clk(clk)
);
assign  w_7257_8b  =  w_7256_8b ;
assign  w_7258_16b  =  w_7257_8b ;
ADD_16b_pe add_2409 (
  .a(w_7248_16b),
  .b(w_7258_16b),
  .c(w_7259_16b),
  .clk(clk)
);
ADD_16b_pe add_2410 (
  .a(w_725_16b),
  .b(w_715_16b),
  .c(w_726_16b),
  .clk(clk)
);
assign  w_7260_16b  =  r38_w_SAD_2a163_8_16b ;
assign  w_7263_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_7264_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_2411 (
  .a(w_7263_8b),
  .b(w_7264_8b),
  .c(w_7265_8b),
  .clk(clk)
);
ABS_16b_pe abs_2412 (
  .a(w_7265_8b),
  .b(1'b0),
  .c(w_7268_8b),
  .clk(clk)
);
assign  w_7269_8b  =  w_7268_8b ;
assign  w_727_16b  =  r5_w_SAD_2a163_0_16b ;
assign  w_7270_16b  =  w_7269_8b ;
ADD_16b_pe add_2413 (
  .a(w_7260_16b),
  .b(w_7270_16b),
  .c(w_7271_16b),
  .clk(clk)
);
assign  w_7272_16b  =  r39_w_SAD_2a163_8_16b ;
assign  w_7275_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_7276_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_2414 (
  .a(w_7276_8b),
  .b(w_7275_8b),
  .c(w_7277_8b),
  .clk(clk)
);
ABS_16b_pe abs_2415 (
  .a(w_7277_8b),
  .b(1'b0),
  .c(w_7280_8b),
  .clk(clk)
);
assign  w_7281_8b  =  w_7280_8b ;
assign  w_7282_16b  =  w_7281_8b ;
ADD_16b_pe add_2416 (
  .a(w_7272_16b),
  .b(w_7282_16b),
  .c(w_7283_16b),
  .clk(clk)
);
assign  w_7284_16b  =  r40_w_SAD_2a163_8_16b ;
assign  w_7287_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_7288_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_2417 (
  .a(w_7287_8b),
  .b(w_7288_8b),
  .c(w_7289_8b),
  .clk(clk)
);
ABS_16b_pe abs_2418 (
  .a(w_7289_8b),
  .b(1'b0),
  .c(w_7292_8b),
  .clk(clk)
);
assign  w_7293_8b  =  w_7292_8b ;
assign  w_7294_16b  =  w_7293_8b ;
ADD_16b_pe add_2419 (
  .a(w_7284_16b),
  .b(w_7294_16b),
  .c(w_7295_16b),
  .clk(clk)
);
assign  w_7296_16b  =  r41_w_SAD_2a163_8_16b ;
assign  w_7299_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_730_8b  =  w_pass_5_stencil_22_0_8b ;
assign  w_7300_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_2420 (
  .a(w_7299_8b),
  .b(w_7300_8b),
  .c(w_7301_8b),
  .clk(clk)
);
ABS_16b_pe abs_2421 (
  .a(w_7301_8b),
  .b(1'b0),
  .c(w_7304_8b),
  .clk(clk)
);
assign  w_7305_8b  =  w_7304_8b ;
assign  w_7306_16b  =  w_7305_8b ;
ADD_16b_pe add_2422 (
  .a(w_7306_16b),
  .b(w_7296_16b),
  .c(w_7307_16b),
  .clk(clk)
);
assign  w_7308_16b  =  r42_w_SAD_2a163_8_16b ;
assign  w_731_8b  =  w_pass_4_stencil_6_0_8b ;
assign  w_7311_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_7312_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_2423 (
  .a(w_7311_8b),
  .b(w_7312_8b),
  .c(w_7313_8b),
  .clk(clk)
);
ABS_16b_pe abs_2424 (
  .a(w_7313_8b),
  .b(1'b0),
  .c(w_7316_8b),
  .clk(clk)
);
assign  w_7317_8b  =  w_7316_8b ;
assign  w_7318_16b  =  w_7317_8b ;
ADD_16b_pe add_2425 (
  .a(w_7318_16b),
  .b(w_7308_16b),
  .c(w_7319_16b),
  .clk(clk)
);
SUB_16b_pe sub_2426 (
  .a(w_731_8b),
  .b(w_730_8b),
  .c(w_732_8b),
  .clk(clk)
);
assign  w_7320_16b  =  r43_w_SAD_2a163_8_16b ;
assign  w_7323_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_7324_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_2427 (
  .a(w_7323_8b),
  .b(w_7324_8b),
  .c(w_7325_8b),
  .clk(clk)
);
ABS_16b_pe abs_2428 (
  .a(w_7325_8b),
  .b(1'b0),
  .c(w_7328_8b),
  .clk(clk)
);
assign  w_7329_8b  =  w_7328_8b ;
assign  w_7330_16b  =  w_7329_8b ;
ADD_16b_pe add_2429 (
  .a(w_7320_16b),
  .b(w_7330_16b),
  .c(w_7331_16b),
  .clk(clk)
);
assign  w_7332_16b  =  r44_w_SAD_2a163_8_16b ;
assign  w_7335_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_7336_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_2430 (
  .a(w_7336_8b),
  .b(w_7335_8b),
  .c(w_7337_8b),
  .clk(clk)
);
ABS_16b_pe abs_2431 (
  .a(w_7337_8b),
  .b(1'b0),
  .c(w_7340_8b),
  .clk(clk)
);
assign  w_7341_8b  =  w_7340_8b ;
assign  w_7342_16b  =  w_7341_8b ;
ADD_16b_pe add_2432 (
  .a(w_7342_16b),
  .b(w_7332_16b),
  .c(w_7343_16b),
  .clk(clk)
);
assign  w_7344_16b  =  r45_w_SAD_2a163_8_16b ;
assign  w_7347_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_7348_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_2433 (
  .a(w_7348_8b),
  .b(w_7347_8b),
  .c(w_7349_8b),
  .clk(clk)
);
ABS_16b_pe abs_2434 (
  .a(w_732_8b),
  .b(1'b0),
  .c(w_735_8b),
  .clk(clk)
);
ABS_16b_pe abs_2435 (
  .a(w_7349_8b),
  .b(1'b0),
  .c(w_7352_8b),
  .clk(clk)
);
assign  w_7353_8b  =  w_7352_8b ;
assign  w_7354_16b  =  w_7353_8b ;
ADD_16b_pe add_2436 (
  .a(w_7354_16b),
  .b(w_7344_16b),
  .c(w_7355_16b),
  .clk(clk)
);
assign  w_7356_16b  =  r46_w_SAD_2a163_8_16b ;
assign  w_7359_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_736_8b  =  w_735_8b ;
assign  w_7360_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_2437 (
  .a(w_7359_8b),
  .b(w_7360_8b),
  .c(w_7361_8b),
  .clk(clk)
);
ABS_16b_pe abs_2438 (
  .a(w_7361_8b),
  .b(1'b0),
  .c(w_7364_8b),
  .clk(clk)
);
assign  w_7365_8b  =  w_7364_8b ;
assign  w_7366_16b  =  w_7365_8b ;
ADD_16b_pe add_2439 (
  .a(w_7366_16b),
  .b(w_7356_16b),
  .c(w_7367_16b),
  .clk(clk)
);
assign  w_7368_16b  =  r47_w_SAD_2a163_8_16b ;
assign  w_737_16b  =  w_736_8b ;
assign  w_7371_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_7372_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_2440 (
  .a(w_7372_8b),
  .b(w_7371_8b),
  .c(w_7373_8b),
  .clk(clk)
);
ABS_16b_pe abs_2441 (
  .a(w_7373_8b),
  .b(1'b0),
  .c(w_7376_8b),
  .clk(clk)
);
assign  w_7377_8b  =  w_7376_8b ;
assign  w_7378_16b  =  w_7377_8b ;
ADD_16b_pe add_2442 (
  .a(w_7378_16b),
  .b(w_7368_16b),
  .c(w_7379_16b),
  .clk(clk)
);
ADD_16b_pe add_2443 (
  .a(w_727_16b),
  .b(w_737_16b),
  .c(w_738_16b),
  .clk(clk)
);
assign  w_7380_16b  =  r48_w_SAD_2a163_8_16b ;
assign  w_7383_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_7384_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_2444 (
  .a(w_7384_8b),
  .b(w_7383_8b),
  .c(w_7385_8b),
  .clk(clk)
);
ABS_16b_pe abs_2445 (
  .a(w_7385_8b),
  .b(1'b0),
  .c(w_7388_8b),
  .clk(clk)
);
assign  w_7389_8b  =  w_7388_8b ;
assign  w_739_16b  =  r6_w_SAD_2a163_0_16b ;
assign  w_7390_16b  =  w_7389_8b ;
ADD_16b_pe add_2446 (
  .a(w_7390_16b),
  .b(w_7380_16b),
  .c(w_7391_16b),
  .clk(clk)
);
assign  w_7392_16b  =  r49_w_SAD_2a163_8_16b ;
assign  w_7395_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_7396_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_2447 (
  .a(w_7395_8b),
  .b(w_7396_8b),
  .c(w_7397_8b),
  .clk(clk)
);
ABS_16b_pe abs_2448 (
  .a(w_7397_8b),
  .b(1'b0),
  .c(w_7400_8b),
  .clk(clk)
);
assign  w_7401_8b  =  w_7400_8b ;
assign  w_7402_16b  =  w_7401_8b ;
ADD_16b_pe add_2449 (
  .a(w_7402_16b),
  .b(w_7392_16b),
  .c(w_7403_16b),
  .clk(clk)
);
assign  w_7404_16b  =  r50_w_SAD_2a163_8_16b ;
assign  w_7407_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_7408_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_2450 (
  .a(w_7408_8b),
  .b(w_7407_8b),
  .c(w_7409_8b),
  .clk(clk)
);
ABS_16b_pe abs_2451 (
  .a(w_7409_8b),
  .b(1'b0),
  .c(w_7412_8b),
  .clk(clk)
);
assign  w_7413_8b  =  w_7412_8b ;
assign  w_7414_16b  =  w_7413_8b ;
ADD_16b_pe add_2452 (
  .a(w_7404_16b),
  .b(w_7414_16b),
  .c(w_7415_16b),
  .clk(clk)
);
assign  w_7416_16b  =  r51_w_SAD_2a163_8_16b ;
assign  w_7419_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_742_8b  =  w_pass_5_stencil_23_0_8b ;
assign  w_7420_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_2453 (
  .a(w_7419_8b),
  .b(w_7420_8b),
  .c(w_7421_8b),
  .clk(clk)
);
ABS_16b_pe abs_2454 (
  .a(w_7421_8b),
  .b(1'b0),
  .c(w_7424_8b),
  .clk(clk)
);
assign  w_7425_8b  =  w_7424_8b ;
assign  w_7426_16b  =  w_7425_8b ;
ADD_16b_pe add_2455 (
  .a(w_7416_16b),
  .b(w_7426_16b),
  .c(w_7427_16b),
  .clk(clk)
);
assign  w_7428_16b  =  r52_w_SAD_2a163_8_16b ;
assign  w_743_8b  =  w_pass_4_stencil_7_0_8b ;
assign  w_7431_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_7432_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_2456 (
  .a(w_7431_8b),
  .b(w_7432_8b),
  .c(w_7433_8b),
  .clk(clk)
);
ABS_16b_pe abs_2457 (
  .a(w_7433_8b),
  .b(1'b0),
  .c(w_7436_8b),
  .clk(clk)
);
assign  w_7437_8b  =  w_7436_8b ;
assign  w_7438_16b  =  w_7437_8b ;
ADD_16b_pe add_2458 (
  .a(w_7428_16b),
  .b(w_7438_16b),
  .c(w_7439_16b),
  .clk(clk)
);
SUB_16b_pe sub_2459 (
  .a(w_742_8b),
  .b(w_743_8b),
  .c(w_744_8b),
  .clk(clk)
);
assign  w_7440_16b  =  r53_w_SAD_2a163_8_16b ;
assign  w_7443_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_7444_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_2460 (
  .a(w_7444_8b),
  .b(w_7443_8b),
  .c(w_7445_8b),
  .clk(clk)
);
ABS_16b_pe abs_2461 (
  .a(w_7445_8b),
  .b(1'b0),
  .c(w_7448_8b),
  .clk(clk)
);
assign  w_7449_8b  =  w_7448_8b ;
assign  w_7450_16b  =  w_7449_8b ;
ADD_16b_pe add_2462 (
  .a(w_7440_16b),
  .b(w_7450_16b),
  .c(w_7451_16b),
  .clk(clk)
);
assign  w_7452_16b  =  r54_w_SAD_2a163_8_16b ;
assign  w_7455_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_7456_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_2463 (
  .a(w_7456_8b),
  .b(w_7455_8b),
  .c(w_7457_8b),
  .clk(clk)
);
ABS_16b_pe abs_2464 (
  .a(w_7457_8b),
  .b(1'b0),
  .c(w_7460_8b),
  .clk(clk)
);
assign  w_7461_8b  =  w_7460_8b ;
assign  w_7462_16b  =  w_7461_8b ;
ADD_16b_pe add_2465 (
  .a(w_7452_16b),
  .b(w_7462_16b),
  .c(w_7463_16b),
  .clk(clk)
);
assign  w_7464_16b  =  r55_w_SAD_2a163_8_16b ;
assign  w_7467_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_7468_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_2466 (
  .a(w_7467_8b),
  .b(w_7468_8b),
  .c(w_7469_8b),
  .clk(clk)
);
ABS_16b_pe abs_2467 (
  .a(w_744_8b),
  .b(1'b0),
  .c(w_747_8b),
  .clk(clk)
);
ABS_16b_pe abs_2468 (
  .a(w_7469_8b),
  .b(1'b0),
  .c(w_7472_8b),
  .clk(clk)
);
assign  w_7473_8b  =  w_7472_8b ;
assign  w_7474_16b  =  w_7473_8b ;
ADD_16b_pe add_2469 (
  .a(w_7464_16b),
  .b(w_7474_16b),
  .c(w_7475_16b),
  .clk(clk)
);
assign  w_7476_16b  =  r56_w_SAD_2a163_8_16b ;
assign  w_7479_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_748_8b  =  w_747_8b ;
assign  w_7480_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_2470 (
  .a(w_7479_8b),
  .b(w_7480_8b),
  .c(w_7481_8b),
  .clk(clk)
);
ABS_16b_pe abs_2471 (
  .a(w_7481_8b),
  .b(1'b0),
  .c(w_7484_8b),
  .clk(clk)
);
assign  w_7485_8b  =  w_7484_8b ;
assign  w_7486_16b  =  w_7485_8b ;
ADD_16b_pe add_2472 (
  .a(w_7476_16b),
  .b(w_7486_16b),
  .c(w_7487_16b),
  .clk(clk)
);
assign  w_7488_16b  =  r57_w_SAD_2a163_8_16b ;
assign  w_749_16b  =  w_748_8b ;
assign  w_7491_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_7492_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_2473 (
  .a(w_7492_8b),
  .b(w_7491_8b),
  .c(w_7493_8b),
  .clk(clk)
);
ABS_16b_pe abs_2474 (
  .a(w_7493_8b),
  .b(1'b0),
  .c(w_7496_8b),
  .clk(clk)
);
assign  w_7497_8b  =  w_7496_8b ;
assign  w_7498_16b  =  w_7497_8b ;
ADD_16b_pe add_2475 (
  .a(w_7488_16b),
  .b(w_7498_16b),
  .c(w_7499_16b),
  .clk(clk)
);
ADD_16b_pe add_2476 (
  .a(w_749_16b),
  .b(w_739_16b),
  .c(w_750_16b),
  .clk(clk)
);
assign  w_7500_16b  =  r58_w_SAD_2a163_8_16b ;
assign  w_7503_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_7504_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_2477 (
  .a(w_7503_8b),
  .b(w_7504_8b),
  .c(w_7505_8b),
  .clk(clk)
);
ABS_16b_pe abs_2478 (
  .a(w_7505_8b),
  .b(1'b0),
  .c(w_7508_8b),
  .clk(clk)
);
assign  w_7509_8b  =  w_7508_8b ;
assign  w_751_16b  =  r7_w_SAD_2a163_0_16b ;
assign  w_7510_16b  =  w_7509_8b ;
ADD_16b_pe add_2479 (
  .a(w_7500_16b),
  .b(w_7510_16b),
  .c(w_7511_16b),
  .clk(clk)
);
assign  w_7512_16b  =  r59_w_SAD_2a163_8_16b ;
assign  w_7515_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_7516_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_2480 (
  .a(w_7516_8b),
  .b(w_7515_8b),
  .c(w_7517_8b),
  .clk(clk)
);
ABS_16b_pe abs_2481 (
  .a(w_7517_8b),
  .b(1'b0),
  .c(w_7520_8b),
  .clk(clk)
);
assign  w_7521_8b  =  w_7520_8b ;
assign  w_7522_16b  =  w_7521_8b ;
ADD_16b_pe add_2482 (
  .a(w_7522_16b),
  .b(w_7512_16b),
  .c(w_7523_16b),
  .clk(clk)
);
assign  w_7524_16b  =  r60_w_SAD_2a163_8_16b ;
assign  w_7527_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_7528_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_2483 (
  .a(w_7527_8b),
  .b(w_7528_8b),
  .c(w_7529_8b),
  .clk(clk)
);
assign  w_753_8b  =  w_pass_5_stencil_16_1_8b ;
ABS_16b_pe abs_2484 (
  .a(w_7529_8b),
  .b(1'b0),
  .c(w_7532_8b),
  .clk(clk)
);
assign  w_7533_8b  =  w_7532_8b ;
assign  w_7534_16b  =  w_7533_8b ;
ADD_16b_pe add_2485 (
  .a(w_7534_16b),
  .b(w_7524_16b),
  .c(w_7535_16b),
  .clk(clk)
);
assign  w_7536_16b  =  r61_w_SAD_2a163_8_16b ;
assign  w_7539_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_754_8b  =  w_pass_4_stencil_0_1_8b ;
assign  w_7540_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_2486 (
  .a(w_7540_8b),
  .b(w_7539_8b),
  .c(w_7541_8b),
  .clk(clk)
);
ABS_16b_pe abs_2487 (
  .a(w_7541_8b),
  .b(1'b0),
  .c(w_7544_8b),
  .clk(clk)
);
assign  w_7545_8b  =  w_7544_8b ;
assign  w_7546_16b  =  w_7545_8b ;
ADD_16b_pe add_2488 (
  .a(w_7546_16b),
  .b(w_7536_16b),
  .c(w_7547_16b),
  .clk(clk)
);
assign  w_7548_16b  =  r62_w_SAD_2a163_8_16b ;
SUB_16b_pe sub_2489 (
  .a(w_754_8b),
  .b(w_753_8b),
  .c(w_755_8b),
  .clk(clk)
);
assign  w_7551_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_7552_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_2490 (
  .a(w_7552_8b),
  .b(w_7551_8b),
  .c(w_7553_8b),
  .clk(clk)
);
ABS_16b_pe abs_2491 (
  .a(w_7553_8b),
  .b(1'b0),
  .c(w_7556_8b),
  .clk(clk)
);
assign  w_7557_8b  =  w_7556_8b ;
assign  w_7558_16b  =  w_7557_8b ;
ADD_16b_pe add_2492 (
  .a(w_7558_16b),
  .b(w_7548_16b),
  .c(w_7559_16b),
  .clk(clk)
);
assign  w_7560_16b  = 1'b0;
assign  w_7563_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_7564_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_2493 (
  .a(w_7563_8b),
  .b(w_7564_8b),
  .c(w_7565_8b),
  .clk(clk)
);
ABS_16b_pe abs_2494 (
  .a(w_7565_8b),
  .b(1'b0),
  .c(w_7568_8b),
  .clk(clk)
);
assign  w_7569_8b  =  w_7568_8b ;
assign  w_7570_16b  =  w_7569_8b ;
ADD_16b_pe add_2495 (
  .a(w_7570_16b),
  .b(w_7560_16b),
  .c(w_7571_16b),
  .clk(clk)
);
assign  w_7572_16b  =  r0_w_SAD_2a163_9_16b ;
assign  w_7575_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_7576_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_2496 (
  .a(w_7575_8b),
  .b(w_7576_8b),
  .c(w_7577_8b),
  .clk(clk)
);
ABS_16b_pe abs_2497 (
  .a(w_755_8b),
  .b(1'b0),
  .c(w_758_8b),
  .clk(clk)
);
ABS_16b_pe abs_2498 (
  .a(w_7577_8b),
  .b(1'b0),
  .c(w_7580_8b),
  .clk(clk)
);
assign  w_7581_8b  =  w_7580_8b ;
assign  w_7582_16b  =  w_7581_8b ;
ADD_16b_pe add_2499 (
  .a(w_7582_16b),
  .b(w_7572_16b),
  .c(w_7583_16b),
  .clk(clk)
);
assign  w_7584_16b  =  r1_w_SAD_2a163_9_16b ;
assign  w_7587_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_7588_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_2500 (
  .a(w_7588_8b),
  .b(w_7587_8b),
  .c(w_7589_8b),
  .clk(clk)
);
assign  w_759_8b  =  w_758_8b ;
ABS_16b_pe abs_2501 (
  .a(w_7589_8b),
  .b(1'b0),
  .c(w_7592_8b),
  .clk(clk)
);
assign  w_7593_8b  =  w_7592_8b ;
assign  w_7594_16b  =  w_7593_8b ;
ADD_16b_pe add_2502 (
  .a(w_7594_16b),
  .b(w_7584_16b),
  .c(w_7595_16b),
  .clk(clk)
);
assign  w_7596_16b  =  r2_w_SAD_2a163_9_16b ;
assign  w_7599_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_760_16b  =  w_759_8b ;
assign  w_7600_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_2503 (
  .a(w_7600_8b),
  .b(w_7599_8b),
  .c(w_7601_8b),
  .clk(clk)
);
ABS_16b_pe abs_2504 (
  .a(w_7601_8b),
  .b(1'b0),
  .c(w_7604_8b),
  .clk(clk)
);
assign  w_7605_8b  =  w_7604_8b ;
assign  w_7606_16b  =  w_7605_8b ;
ADD_16b_pe add_2505 (
  .a(w_7596_16b),
  .b(w_7606_16b),
  .c(w_7607_16b),
  .clk(clk)
);
assign  w_7608_16b  =  r3_w_SAD_2a163_9_16b ;
ADD_16b_pe add_2506 (
  .a(w_760_16b),
  .b(w_751_16b),
  .c(w_761_16b),
  .clk(clk)
);
assign  w_7611_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_7612_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_2507 (
  .a(w_7611_8b),
  .b(w_7612_8b),
  .c(w_7613_8b),
  .clk(clk)
);
ABS_16b_pe abs_2508 (
  .a(w_7613_8b),
  .b(1'b0),
  .c(w_7616_8b),
  .clk(clk)
);
assign  w_7617_8b  =  w_7616_8b ;
assign  w_7618_16b  =  w_7617_8b ;
ADD_16b_pe add_2509 (
  .a(w_7608_16b),
  .b(w_7618_16b),
  .c(w_7619_16b),
  .clk(clk)
);
assign  w_762_16b  =  r8_w_SAD_2a163_0_16b ;
assign  w_7620_16b  =  r4_w_SAD_2a163_9_16b ;
assign  w_7623_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_7624_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_2510 (
  .a(w_7623_8b),
  .b(w_7624_8b),
  .c(w_7625_8b),
  .clk(clk)
);
ABS_16b_pe abs_2511 (
  .a(w_7625_8b),
  .b(1'b0),
  .c(w_7628_8b),
  .clk(clk)
);
assign  w_7629_8b  =  w_7628_8b ;
assign  w_7630_16b  =  w_7629_8b ;
ADD_16b_pe add_2512 (
  .a(w_7620_16b),
  .b(w_7630_16b),
  .c(w_7631_16b),
  .clk(clk)
);
assign  w_7632_16b  =  r5_w_SAD_2a163_9_16b ;
assign  w_7635_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_7636_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_2513 (
  .a(w_7636_8b),
  .b(w_7635_8b),
  .c(w_7637_8b),
  .clk(clk)
);
ABS_16b_pe abs_2514 (
  .a(w_7637_8b),
  .b(1'b0),
  .c(w_7640_8b),
  .clk(clk)
);
assign  w_7641_8b  =  w_7640_8b ;
assign  w_7642_16b  =  w_7641_8b ;
ADD_16b_pe add_2515 (
  .a(w_7632_16b),
  .b(w_7642_16b),
  .c(w_7643_16b),
  .clk(clk)
);
assign  w_7644_16b  =  r6_w_SAD_2a163_9_16b ;
assign  w_7647_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_7648_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_2516 (
  .a(w_7647_8b),
  .b(w_7648_8b),
  .c(w_7649_8b),
  .clk(clk)
);
assign  w_765_8b  =  w_pass_5_stencil_17_1_8b ;
ABS_16b_pe abs_2517 (
  .a(w_7649_8b),
  .b(1'b0),
  .c(w_7652_8b),
  .clk(clk)
);
assign  w_7653_8b  =  w_7652_8b ;
assign  w_7654_16b  =  w_7653_8b ;
ADD_16b_pe add_2518 (
  .a(w_7644_16b),
  .b(w_7654_16b),
  .c(w_7655_16b),
  .clk(clk)
);
assign  w_7656_16b  =  r7_w_SAD_2a163_9_16b ;
assign  w_7659_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_766_8b  =  w_pass_4_stencil_1_1_8b ;
assign  w_7660_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_2519 (
  .a(w_7659_8b),
  .b(w_7660_8b),
  .c(w_7661_8b),
  .clk(clk)
);
ABS_16b_pe abs_2520 (
  .a(w_7661_8b),
  .b(1'b0),
  .c(w_7664_8b),
  .clk(clk)
);
assign  w_7665_8b  =  w_7664_8b ;
assign  w_7666_16b  =  w_7665_8b ;
ADD_16b_pe add_2521 (
  .a(w_7666_16b),
  .b(w_7656_16b),
  .c(w_7667_16b),
  .clk(clk)
);
assign  w_7668_16b  =  r8_w_SAD_2a163_9_16b ;
SUB_16b_pe sub_2522 (
  .a(w_766_8b),
  .b(w_765_8b),
  .c(w_767_8b),
  .clk(clk)
);
assign  w_7671_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_7672_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_2523 (
  .a(w_7672_8b),
  .b(w_7671_8b),
  .c(w_7673_8b),
  .clk(clk)
);
ABS_16b_pe abs_2524 (
  .a(w_7673_8b),
  .b(1'b0),
  .c(w_7676_8b),
  .clk(clk)
);
assign  w_7677_8b  =  w_7676_8b ;
assign  w_7678_16b  =  w_7677_8b ;
ADD_16b_pe add_2525 (
  .a(w_7668_16b),
  .b(w_7678_16b),
  .c(w_7679_16b),
  .clk(clk)
);
assign  w_7680_16b  =  r9_w_SAD_2a163_9_16b ;
assign  w_7683_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_7684_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_2526 (
  .a(w_7683_8b),
  .b(w_7684_8b),
  .c(w_7685_8b),
  .clk(clk)
);
ABS_16b_pe abs_2527 (
  .a(w_7685_8b),
  .b(1'b0),
  .c(w_7688_8b),
  .clk(clk)
);
assign  w_7689_8b  =  w_7688_8b ;
assign  w_7690_16b  =  w_7689_8b ;
ADD_16b_pe add_2528 (
  .a(w_7680_16b),
  .b(w_7690_16b),
  .c(w_7691_16b),
  .clk(clk)
);
assign  w_7692_16b  =  r10_w_SAD_2a163_9_16b ;
assign  w_7695_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_7696_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_2529 (
  .a(w_7695_8b),
  .b(w_7696_8b),
  .c(w_7697_8b),
  .clk(clk)
);
ABS_16b_pe abs_2530 (
  .a(w_767_8b),
  .b(1'b0),
  .c(w_770_8b),
  .clk(clk)
);
ABS_16b_pe abs_2531 (
  .a(w_7697_8b),
  .b(1'b0),
  .c(w_7700_8b),
  .clk(clk)
);
assign  w_7701_8b  =  w_7700_8b ;
assign  w_7702_16b  =  w_7701_8b ;
ADD_16b_pe add_2532 (
  .a(w_7702_16b),
  .b(w_7692_16b),
  .c(w_7703_16b),
  .clk(clk)
);
assign  w_7704_16b  =  r11_w_SAD_2a163_9_16b ;
assign  w_7707_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_7708_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_2533 (
  .a(w_7708_8b),
  .b(w_7707_8b),
  .c(w_7709_8b),
  .clk(clk)
);
assign  w_771_8b  =  w_770_8b ;
ABS_16b_pe abs_2534 (
  .a(w_7709_8b),
  .b(1'b0),
  .c(w_7712_8b),
  .clk(clk)
);
assign  w_7713_8b  =  w_7712_8b ;
assign  w_7714_16b  =  w_7713_8b ;
ADD_16b_pe add_2535 (
  .a(w_7714_16b),
  .b(w_7704_16b),
  .c(w_7715_16b),
  .clk(clk)
);
assign  w_7716_16b  =  r12_w_SAD_2a163_9_16b ;
assign  w_7719_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_772_16b  =  w_771_8b ;
assign  w_7720_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_2536 (
  .a(w_7719_8b),
  .b(w_7720_8b),
  .c(w_7721_8b),
  .clk(clk)
);
ABS_16b_pe abs_2537 (
  .a(w_7721_8b),
  .b(1'b0),
  .c(w_7724_8b),
  .clk(clk)
);
assign  w_7725_8b  =  w_7724_8b ;
assign  w_7726_16b  =  w_7725_8b ;
ADD_16b_pe add_2538 (
  .a(w_7726_16b),
  .b(w_7716_16b),
  .c(w_7727_16b),
  .clk(clk)
);
assign  w_7728_16b  =  r13_w_SAD_2a163_9_16b ;
ADD_16b_pe add_2539 (
  .a(w_762_16b),
  .b(w_772_16b),
  .c(w_773_16b),
  .clk(clk)
);
assign  w_7731_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_7732_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_2540 (
  .a(w_7732_8b),
  .b(w_7731_8b),
  .c(w_7733_8b),
  .clk(clk)
);
ABS_16b_pe abs_2541 (
  .a(w_7733_8b),
  .b(1'b0),
  .c(w_7736_8b),
  .clk(clk)
);
assign  w_7737_8b  =  w_7736_8b ;
assign  w_7738_16b  =  w_7737_8b ;
ADD_16b_pe add_2542 (
  .a(w_7738_16b),
  .b(w_7728_16b),
  .c(w_7739_16b),
  .clk(clk)
);
assign  w_774_16b  =  r9_w_SAD_2a163_0_16b ;
assign  w_7740_16b  =  r14_w_SAD_2a163_9_16b ;
assign  w_7743_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_7744_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_2543 (
  .a(w_7744_8b),
  .b(w_7743_8b),
  .c(w_7745_8b),
  .clk(clk)
);
ABS_16b_pe abs_2544 (
  .a(w_7745_8b),
  .b(1'b0),
  .c(w_7748_8b),
  .clk(clk)
);
assign  w_7749_8b  =  w_7748_8b ;
assign  w_7750_16b  =  w_7749_8b ;
ADD_16b_pe add_2545 (
  .a(w_7750_16b),
  .b(w_7740_16b),
  .c(w_7751_16b),
  .clk(clk)
);
assign  w_7752_16b  =  r15_w_SAD_2a163_9_16b ;
assign  w_7755_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_7756_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_2546 (
  .a(w_7755_8b),
  .b(w_7756_8b),
  .c(w_7757_8b),
  .clk(clk)
);
ABS_16b_pe abs_2547 (
  .a(w_7757_8b),
  .b(1'b0),
  .c(w_7760_8b),
  .clk(clk)
);
assign  w_7761_8b  =  w_7760_8b ;
assign  w_7762_16b  =  w_7761_8b ;
ADD_16b_pe add_2548 (
  .a(w_7762_16b),
  .b(w_7752_16b),
  .c(w_7763_16b),
  .clk(clk)
);
assign  w_7764_16b  =  r16_w_SAD_2a163_9_16b ;
assign  w_7767_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_7768_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_2549 (
  .a(w_7768_8b),
  .b(w_7767_8b),
  .c(w_7769_8b),
  .clk(clk)
);
assign  w_777_8b  =  w_pass_5_stencil_18_1_8b ;
ABS_16b_pe abs_2550 (
  .a(w_7769_8b),
  .b(1'b0),
  .c(w_7772_8b),
  .clk(clk)
);
assign  w_7773_8b  =  w_7772_8b ;
assign  w_7774_16b  =  w_7773_8b ;
ADD_16b_pe add_2551 (
  .a(w_7774_16b),
  .b(w_7764_16b),
  .c(w_7775_16b),
  .clk(clk)
);
assign  w_7776_16b  =  r17_w_SAD_2a163_9_16b ;
assign  w_7779_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_778_8b  =  w_pass_4_stencil_2_1_8b ;
assign  w_7780_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_2552 (
  .a(w_7780_8b),
  .b(w_7779_8b),
  .c(w_7781_8b),
  .clk(clk)
);
ABS_16b_pe abs_2553 (
  .a(w_7781_8b),
  .b(1'b0),
  .c(w_7784_8b),
  .clk(clk)
);
assign  w_7785_8b  =  w_7784_8b ;
assign  w_7786_16b  =  w_7785_8b ;
ADD_16b_pe add_2554 (
  .a(w_7776_16b),
  .b(w_7786_16b),
  .c(w_7787_16b),
  .clk(clk)
);
assign  w_7788_16b  =  r18_w_SAD_2a163_9_16b ;
SUB_16b_pe sub_2555 (
  .a(w_778_8b),
  .b(w_777_8b),
  .c(w_779_8b),
  .clk(clk)
);
assign  w_7791_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_7792_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_2556 (
  .a(w_7791_8b),
  .b(w_7792_8b),
  .c(w_7793_8b),
  .clk(clk)
);
ABS_16b_pe abs_2557 (
  .a(w_7793_8b),
  .b(1'b0),
  .c(w_7796_8b),
  .clk(clk)
);
assign  w_7797_8b  =  w_7796_8b ;
assign  w_7798_16b  =  w_7797_8b ;
ADD_16b_pe add_2558 (
  .a(w_7798_16b),
  .b(w_7788_16b),
  .c(w_7799_16b),
  .clk(clk)
);
assign  w_7800_16b  =  r19_w_SAD_2a163_9_16b ;
assign  w_7803_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_7804_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_2559 (
  .a(w_7804_8b),
  .b(w_7803_8b),
  .c(w_7805_8b),
  .clk(clk)
);
ABS_16b_pe abs_2560 (
  .a(w_7805_8b),
  .b(1'b0),
  .c(w_7808_8b),
  .clk(clk)
);
assign  w_7809_8b  =  w_7808_8b ;
assign  w_7810_16b  =  w_7809_8b ;
ADD_16b_pe add_2561 (
  .a(w_7800_16b),
  .b(w_7810_16b),
  .c(w_7811_16b),
  .clk(clk)
);
assign  w_7812_16b  =  r20_w_SAD_2a163_9_16b ;
assign  w_7815_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_7816_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_2562 (
  .a(w_7816_8b),
  .b(w_7815_8b),
  .c(w_7817_8b),
  .clk(clk)
);
ABS_16b_pe abs_2563 (
  .a(w_779_8b),
  .b(1'b0),
  .c(w_782_8b),
  .clk(clk)
);
ABS_16b_pe abs_2564 (
  .a(w_7817_8b),
  .b(1'b0),
  .c(w_7820_8b),
  .clk(clk)
);
assign  w_7821_8b  =  w_7820_8b ;
assign  w_7822_16b  =  w_7821_8b ;
ADD_16b_pe add_2565 (
  .a(w_7812_16b),
  .b(w_7822_16b),
  .c(w_7823_16b),
  .clk(clk)
);
assign  w_7824_16b  =  r21_w_SAD_2a163_9_16b ;
assign  w_7827_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_7828_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_2566 (
  .a(w_7827_8b),
  .b(w_7828_8b),
  .c(w_7829_8b),
  .clk(clk)
);
assign  w_783_8b  =  w_782_8b ;
ABS_16b_pe abs_2567 (
  .a(w_7829_8b),
  .b(1'b0),
  .c(w_7832_8b),
  .clk(clk)
);
assign  w_7833_8b  =  w_7832_8b ;
assign  w_7834_16b  =  w_7833_8b ;
ADD_16b_pe add_2568 (
  .a(w_7824_16b),
  .b(w_7834_16b),
  .c(w_7835_16b),
  .clk(clk)
);
assign  w_7836_16b  =  r22_w_SAD_2a163_9_16b ;
assign  w_7839_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_784_16b  =  w_783_8b ;
assign  w_7840_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_2569 (
  .a(w_7839_8b),
  .b(w_7840_8b),
  .c(w_7841_8b),
  .clk(clk)
);
ABS_16b_pe abs_2570 (
  .a(w_7841_8b),
  .b(1'b0),
  .c(w_7844_8b),
  .clk(clk)
);
assign  w_7845_8b  =  w_7844_8b ;
assign  w_7846_16b  =  w_7845_8b ;
ADD_16b_pe add_2571 (
  .a(w_7836_16b),
  .b(w_7846_16b),
  .c(w_7847_16b),
  .clk(clk)
);
assign  w_7848_16b  =  r23_w_SAD_2a163_9_16b ;
ADD_16b_pe add_2572 (
  .a(w_784_16b),
  .b(w_774_16b),
  .c(w_785_16b),
  .clk(clk)
);
assign  w_7851_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7852_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_2573 (
  .a(w_7852_8b),
  .b(w_7851_8b),
  .c(w_7853_8b),
  .clk(clk)
);
ABS_16b_pe abs_2574 (
  .a(w_7853_8b),
  .b(1'b0),
  .c(w_7856_8b),
  .clk(clk)
);
assign  w_7857_8b  =  w_7856_8b ;
assign  w_7858_16b  =  w_7857_8b ;
ADD_16b_pe add_2575 (
  .a(w_7848_16b),
  .b(w_7858_16b),
  .c(w_7859_16b),
  .clk(clk)
);
assign  w_786_16b  =  r10_w_SAD_2a163_0_16b ;
assign  w_7860_16b  =  r24_w_SAD_2a163_9_16b ;
assign  w_7863_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7864_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_2576 (
  .a(w_7863_8b),
  .b(w_7864_8b),
  .c(w_7865_8b),
  .clk(clk)
);
ABS_16b_pe abs_2577 (
  .a(w_7865_8b),
  .b(1'b0),
  .c(w_7868_8b),
  .clk(clk)
);
assign  w_7869_8b  =  w_7868_8b ;
assign  w_7870_16b  =  w_7869_8b ;
ADD_16b_pe add_2578 (
  .a(w_7860_16b),
  .b(w_7870_16b),
  .c(w_7871_16b),
  .clk(clk)
);
assign  w_7872_16b  =  r25_w_SAD_2a163_9_16b ;
assign  w_7875_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7876_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_2579 (
  .a(w_7875_8b),
  .b(w_7876_8b),
  .c(w_7877_8b),
  .clk(clk)
);
ABS_16b_pe abs_2580 (
  .a(w_7877_8b),
  .b(1'b0),
  .c(w_7880_8b),
  .clk(clk)
);
assign  w_7881_8b  =  w_7880_8b ;
assign  w_7882_16b  =  w_7881_8b ;
ADD_16b_pe add_2581 (
  .a(w_7872_16b),
  .b(w_7882_16b),
  .c(w_7883_16b),
  .clk(clk)
);
assign  w_7884_16b  =  r26_w_SAD_2a163_9_16b ;
assign  w_7887_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7888_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_2582 (
  .a(w_7887_8b),
  .b(w_7888_8b),
  .c(w_7889_8b),
  .clk(clk)
);
assign  w_789_8b  =  w_pass_5_stencil_19_1_8b ;
ABS_16b_pe abs_2583 (
  .a(w_7889_8b),
  .b(1'b0),
  .c(w_7892_8b),
  .clk(clk)
);
assign  w_7893_8b  =  w_7892_8b ;
assign  w_7894_16b  =  w_7893_8b ;
ADD_16b_pe add_2584 (
  .a(w_7884_16b),
  .b(w_7894_16b),
  .c(w_7895_16b),
  .clk(clk)
);
assign  w_7896_16b  =  r27_w_SAD_2a163_9_16b ;
assign  w_7899_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_790_8b  =  w_pass_4_stencil_3_1_8b ;
assign  w_7900_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_2585 (
  .a(w_7900_8b),
  .b(w_7899_8b),
  .c(w_7901_8b),
  .clk(clk)
);
ABS_16b_pe abs_2586 (
  .a(w_7901_8b),
  .b(1'b0),
  .c(w_7904_8b),
  .clk(clk)
);
assign  w_7905_8b  =  w_7904_8b ;
assign  w_7906_16b  =  w_7905_8b ;
ADD_16b_pe add_2587 (
  .a(w_7896_16b),
  .b(w_7906_16b),
  .c(w_7907_16b),
  .clk(clk)
);
assign  w_7908_16b  =  r28_w_SAD_2a163_9_16b ;
SUB_16b_pe sub_2588 (
  .a(w_790_8b),
  .b(w_789_8b),
  .c(w_791_8b),
  .clk(clk)
);
assign  w_7911_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7912_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_2589 (
  .a(w_7912_8b),
  .b(w_7911_8b),
  .c(w_7913_8b),
  .clk(clk)
);
ABS_16b_pe abs_2590 (
  .a(w_7913_8b),
  .b(1'b0),
  .c(w_7916_8b),
  .clk(clk)
);
assign  w_7917_8b  =  w_7916_8b ;
assign  w_7918_16b  =  w_7917_8b ;
ADD_16b_pe add_2591 (
  .a(w_7918_16b),
  .b(w_7908_16b),
  .c(w_7919_16b),
  .clk(clk)
);
assign  w_7920_16b  =  r29_w_SAD_2a163_9_16b ;
assign  w_7923_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7924_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_2592 (
  .a(w_7923_8b),
  .b(w_7924_8b),
  .c(w_7925_8b),
  .clk(clk)
);
ABS_16b_pe abs_2593 (
  .a(w_7925_8b),
  .b(1'b0),
  .c(w_7928_8b),
  .clk(clk)
);
assign  w_7929_8b  =  w_7928_8b ;
assign  w_7930_16b  =  w_7929_8b ;
ADD_16b_pe add_2594 (
  .a(w_7930_16b),
  .b(w_7920_16b),
  .c(w_7931_16b),
  .clk(clk)
);
assign  w_7932_16b  =  r30_w_SAD_2a163_9_16b ;
assign  w_7935_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_7936_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_2595 (
  .a(w_7935_8b),
  .b(w_7936_8b),
  .c(w_7937_8b),
  .clk(clk)
);
ABS_16b_pe abs_2596 (
  .a(w_791_8b),
  .b(1'b0),
  .c(w_794_8b),
  .clk(clk)
);
ABS_16b_pe abs_2597 (
  .a(w_7937_8b),
  .b(1'b0),
  .c(w_7940_8b),
  .clk(clk)
);
assign  w_7941_8b  =  w_7940_8b ;
assign  w_7942_16b  =  w_7941_8b ;
ADD_16b_pe add_2598 (
  .a(w_7942_16b),
  .b(w_7932_16b),
  .c(w_7943_16b),
  .clk(clk)
);
assign  w_7944_16b  =  r31_w_SAD_2a163_9_16b ;
assign  w_7947_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_7948_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_2599 (
  .a(w_7948_8b),
  .b(w_7947_8b),
  .c(w_7949_8b),
  .clk(clk)
);
assign  w_795_8b  =  w_794_8b ;
ABS_16b_pe abs_2600 (
  .a(w_7949_8b),
  .b(1'b0),
  .c(w_7952_8b),
  .clk(clk)
);
assign  w_7953_8b  =  w_7952_8b ;
assign  w_7954_16b  =  w_7953_8b ;
ADD_16b_pe add_2601 (
  .a(w_7954_16b),
  .b(w_7944_16b),
  .c(w_7955_16b),
  .clk(clk)
);
assign  w_7956_16b  =  r32_w_SAD_2a163_9_16b ;
assign  w_7959_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_796_16b  =  w_795_8b ;
assign  w_7960_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_2602 (
  .a(w_7960_8b),
  .b(w_7959_8b),
  .c(w_7961_8b),
  .clk(clk)
);
ABS_16b_pe abs_2603 (
  .a(w_7961_8b),
  .b(1'b0),
  .c(w_7964_8b),
  .clk(clk)
);
assign  w_7965_8b  =  w_7964_8b ;
assign  w_7966_16b  =  w_7965_8b ;
ADD_16b_pe add_2604 (
  .a(w_7966_16b),
  .b(w_7956_16b),
  .c(w_7967_16b),
  .clk(clk)
);
assign  w_7968_16b  =  r33_w_SAD_2a163_9_16b ;
ADD_16b_pe add_2605 (
  .a(w_786_16b),
  .b(w_796_16b),
  .c(w_797_16b),
  .clk(clk)
);
assign  w_7971_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_7972_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_2606 (
  .a(w_7971_8b),
  .b(w_7972_8b),
  .c(w_7973_8b),
  .clk(clk)
);
ABS_16b_pe abs_2607 (
  .a(w_7973_8b),
  .b(1'b0),
  .c(w_7976_8b),
  .clk(clk)
);
assign  w_7977_8b  =  w_7976_8b ;
assign  w_7978_16b  =  w_7977_8b ;
ADD_16b_pe add_2608 (
  .a(w_7978_16b),
  .b(w_7968_16b),
  .c(w_7979_16b),
  .clk(clk)
);
assign  w_798_16b  =  r11_w_SAD_2a163_0_16b ;
assign  w_7980_16b  =  r34_w_SAD_2a163_9_16b ;
assign  w_7983_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_7984_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_2609 (
  .a(w_7984_8b),
  .b(w_7983_8b),
  .c(w_7985_8b),
  .clk(clk)
);
ABS_16b_pe abs_2610 (
  .a(w_7985_8b),
  .b(1'b0),
  .c(w_7988_8b),
  .clk(clk)
);
assign  w_7989_8b  =  w_7988_8b ;
assign  w_7990_16b  =  w_7989_8b ;
ADD_16b_pe add_2611 (
  .a(w_7990_16b),
  .b(w_7980_16b),
  .c(w_7991_16b),
  .clk(clk)
);
assign  w_7992_16b  =  r35_w_SAD_2a163_9_16b ;
assign  w_7995_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_7996_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_2612 (
  .a(w_7996_8b),
  .b(w_7995_8b),
  .c(w_7997_8b),
  .clk(clk)
);
ABS_16b_pe abs_2613 (
  .a(w_7997_8b),
  .b(1'b0),
  .c(w_8000_8b),
  .clk(clk)
);
assign  w_8001_8b  =  w_8000_8b ;
assign  w_8002_16b  =  w_8001_8b ;
ADD_16b_pe add_2614 (
  .a(w_7992_16b),
  .b(w_8002_16b),
  .c(w_8003_16b),
  .clk(clk)
);
assign  w_8004_16b  =  r36_w_SAD_2a163_9_16b ;
assign  w_8007_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_8008_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_2615 (
  .a(w_8007_8b),
  .b(w_8008_8b),
  .c(w_8009_8b),
  .clk(clk)
);
assign  w_801_8b  =  w_pass_5_stencil_20_1_8b ;
ABS_16b_pe abs_2616 (
  .a(w_8009_8b),
  .b(1'b0),
  .c(w_8012_8b),
  .clk(clk)
);
assign  w_8013_8b  =  w_8012_8b ;
assign  w_8014_16b  =  w_8013_8b ;
ADD_16b_pe add_2617 (
  .a(w_8004_16b),
  .b(w_8014_16b),
  .c(w_8015_16b),
  .clk(clk)
);
assign  w_8016_16b  =  r37_w_SAD_2a163_9_16b ;
assign  w_8019_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_802_8b  =  w_pass_4_stencil_4_1_8b ;
assign  w_8020_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_2618 (
  .a(w_8019_8b),
  .b(w_8020_8b),
  .c(w_8021_8b),
  .clk(clk)
);
ABS_16b_pe abs_2619 (
  .a(w_8021_8b),
  .b(1'b0),
  .c(w_8024_8b),
  .clk(clk)
);
assign  w_8025_8b  =  w_8024_8b ;
assign  w_8026_16b  =  w_8025_8b ;
ADD_16b_pe add_2620 (
  .a(w_8026_16b),
  .b(w_8016_16b),
  .c(w_8027_16b),
  .clk(clk)
);
assign  w_8028_16b  =  r38_w_SAD_2a163_9_16b ;
SUB_16b_pe sub_2621 (
  .a(w_802_8b),
  .b(w_801_8b),
  .c(w_803_8b),
  .clk(clk)
);
assign  w_8031_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_8032_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_2622 (
  .a(w_8031_8b),
  .b(w_8032_8b),
  .c(w_8033_8b),
  .clk(clk)
);
ABS_16b_pe abs_2623 (
  .a(w_8033_8b),
  .b(1'b0),
  .c(w_8036_8b),
  .clk(clk)
);
assign  w_8037_8b  =  w_8036_8b ;
assign  w_8038_16b  =  w_8037_8b ;
ADD_16b_pe add_2624 (
  .a(w_8038_16b),
  .b(w_8028_16b),
  .c(w_8039_16b),
  .clk(clk)
);
assign  w_8040_16b  =  r39_w_SAD_2a163_9_16b ;
assign  w_8043_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8044_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_2625 (
  .a(w_8043_8b),
  .b(w_8044_8b),
  .c(w_8045_8b),
  .clk(clk)
);
ABS_16b_pe abs_2626 (
  .a(w_8045_8b),
  .b(1'b0),
  .c(w_8048_8b),
  .clk(clk)
);
assign  w_8049_8b  =  w_8048_8b ;
assign  w_8050_16b  =  w_8049_8b ;
ADD_16b_pe add_2627 (
  .a(w_8040_16b),
  .b(w_8050_16b),
  .c(w_8051_16b),
  .clk(clk)
);
assign  w_8052_16b  =  r40_w_SAD_2a163_9_16b ;
assign  w_8055_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8056_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_2628 (
  .a(w_8056_8b),
  .b(w_8055_8b),
  .c(w_8057_8b),
  .clk(clk)
);
ABS_16b_pe abs_2629 (
  .a(w_803_8b),
  .b(1'b0),
  .c(w_806_8b),
  .clk(clk)
);
ABS_16b_pe abs_2630 (
  .a(w_8057_8b),
  .b(1'b0),
  .c(w_8060_8b),
  .clk(clk)
);
assign  w_8061_8b  =  w_8060_8b ;
assign  w_8062_16b  =  w_8061_8b ;
ADD_16b_pe add_2631 (
  .a(w_8062_16b),
  .b(w_8052_16b),
  .c(w_8063_16b),
  .clk(clk)
);
assign  w_8064_16b  =  r41_w_SAD_2a163_9_16b ;
assign  w_8067_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8068_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_2632 (
  .a(w_8067_8b),
  .b(w_8068_8b),
  .c(w_8069_8b),
  .clk(clk)
);
assign  w_807_8b  =  w_806_8b ;
ABS_16b_pe abs_2633 (
  .a(w_8069_8b),
  .b(1'b0),
  .c(w_8072_8b),
  .clk(clk)
);
assign  w_8073_8b  =  w_8072_8b ;
assign  w_8074_16b  =  w_8073_8b ;
ADD_16b_pe add_2634 (
  .a(w_8074_16b),
  .b(w_8064_16b),
  .c(w_8075_16b),
  .clk(clk)
);
assign  w_8076_16b  =  r42_w_SAD_2a163_9_16b ;
assign  w_8079_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_808_16b  =  w_807_8b ;
assign  w_8080_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_2635 (
  .a(w_8080_8b),
  .b(w_8079_8b),
  .c(w_8081_8b),
  .clk(clk)
);
ABS_16b_pe abs_2636 (
  .a(w_8081_8b),
  .b(1'b0),
  .c(w_8084_8b),
  .clk(clk)
);
assign  w_8085_8b  =  w_8084_8b ;
assign  w_8086_16b  =  w_8085_8b ;
ADD_16b_pe add_2637 (
  .a(w_8086_16b),
  .b(w_8076_16b),
  .c(w_8087_16b),
  .clk(clk)
);
assign  w_8088_16b  =  r43_w_SAD_2a163_9_16b ;
ADD_16b_pe add_2638 (
  .a(w_798_16b),
  .b(w_808_16b),
  .c(w_809_16b),
  .clk(clk)
);
assign  w_8091_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8092_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_2639 (
  .a(w_8092_8b),
  .b(w_8091_8b),
  .c(w_8093_8b),
  .clk(clk)
);
ABS_16b_pe abs_2640 (
  .a(w_8093_8b),
  .b(1'b0),
  .c(w_8096_8b),
  .clk(clk)
);
assign  w_8097_8b  =  w_8096_8b ;
assign  w_8098_16b  =  w_8097_8b ;
ADD_16b_pe add_2641 (
  .a(w_8098_16b),
  .b(w_8088_16b),
  .c(w_8099_16b),
  .clk(clk)
);
assign  w_810_16b  =  r12_w_SAD_2a163_0_16b ;
assign  w_8100_16b  =  r44_w_SAD_2a163_9_16b ;
assign  w_8103_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8104_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_2642 (
  .a(w_8104_8b),
  .b(w_8103_8b),
  .c(w_8105_8b),
  .clk(clk)
);
ABS_16b_pe abs_2643 (
  .a(w_8105_8b),
  .b(1'b0),
  .c(w_8108_8b),
  .clk(clk)
);
assign  w_8109_8b  =  w_8108_8b ;
assign  w_8110_16b  =  w_8109_8b ;
ADD_16b_pe add_2644 (
  .a(w_8100_16b),
  .b(w_8110_16b),
  .c(w_8111_16b),
  .clk(clk)
);
assign  w_8112_16b  =  r45_w_SAD_2a163_9_16b ;
assign  w_8115_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8116_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_2645 (
  .a(w_8116_8b),
  .b(w_8115_8b),
  .c(w_8117_8b),
  .clk(clk)
);
ABS_16b_pe abs_2646 (
  .a(w_8117_8b),
  .b(1'b0),
  .c(w_8120_8b),
  .clk(clk)
);
assign  w_8121_8b  =  w_8120_8b ;
assign  w_8122_16b  =  w_8121_8b ;
ADD_16b_pe add_2647 (
  .a(w_8112_16b),
  .b(w_8122_16b),
  .c(w_8123_16b),
  .clk(clk)
);
assign  w_8124_16b  =  r46_w_SAD_2a163_9_16b ;
assign  w_8127_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8128_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_2648 (
  .a(w_8127_8b),
  .b(w_8128_8b),
  .c(w_8129_8b),
  .clk(clk)
);
assign  w_813_8b  =  w_pass_5_stencil_21_1_8b ;
ABS_16b_pe abs_2649 (
  .a(w_8129_8b),
  .b(1'b0),
  .c(w_8132_8b),
  .clk(clk)
);
assign  w_8133_8b  =  w_8132_8b ;
assign  w_8134_16b  =  w_8133_8b ;
ADD_16b_pe add_2650 (
  .a(w_8124_16b),
  .b(w_8134_16b),
  .c(w_8135_16b),
  .clk(clk)
);
assign  w_8136_16b  =  r47_w_SAD_2a163_9_16b ;
assign  w_8139_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_814_8b  =  w_pass_4_stencil_5_1_8b ;
assign  w_8140_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_2651 (
  .a(w_8139_8b),
  .b(w_8140_8b),
  .c(w_8141_8b),
  .clk(clk)
);
ABS_16b_pe abs_2652 (
  .a(w_8141_8b),
  .b(1'b0),
  .c(w_8144_8b),
  .clk(clk)
);
assign  w_8145_8b  =  w_8144_8b ;
assign  w_8146_16b  =  w_8145_8b ;
ADD_16b_pe add_2653 (
  .a(w_8136_16b),
  .b(w_8146_16b),
  .c(w_8147_16b),
  .clk(clk)
);
assign  w_8148_16b  =  r48_w_SAD_2a163_9_16b ;
SUB_16b_pe sub_2654 (
  .a(w_814_8b),
  .b(w_813_8b),
  .c(w_815_8b),
  .clk(clk)
);
assign  w_8151_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8152_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_2655 (
  .a(w_8152_8b),
  .b(w_8151_8b),
  .c(w_8153_8b),
  .clk(clk)
);
ABS_16b_pe abs_2656 (
  .a(w_8153_8b),
  .b(1'b0),
  .c(w_8156_8b),
  .clk(clk)
);
assign  w_8157_8b  =  w_8156_8b ;
assign  w_8158_16b  =  w_8157_8b ;
ADD_16b_pe add_2657 (
  .a(w_8148_16b),
  .b(w_8158_16b),
  .c(w_8159_16b),
  .clk(clk)
);
assign  w_8160_16b  =  r49_w_SAD_2a163_9_16b ;
assign  w_8163_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8164_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_2658 (
  .a(w_8163_8b),
  .b(w_8164_8b),
  .c(w_8165_8b),
  .clk(clk)
);
ABS_16b_pe abs_2659 (
  .a(w_8165_8b),
  .b(1'b0),
  .c(w_8168_8b),
  .clk(clk)
);
assign  w_8169_8b  =  w_8168_8b ;
assign  w_8170_16b  =  w_8169_8b ;
ADD_16b_pe add_2660 (
  .a(w_8160_16b),
  .b(w_8170_16b),
  .c(w_8171_16b),
  .clk(clk)
);
assign  w_8172_16b  =  r50_w_SAD_2a163_9_16b ;
assign  w_8175_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8176_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_2661 (
  .a(w_8175_8b),
  .b(w_8176_8b),
  .c(w_8177_8b),
  .clk(clk)
);
ABS_16b_pe abs_2662 (
  .a(w_815_8b),
  .b(1'b0),
  .c(w_818_8b),
  .clk(clk)
);
ABS_16b_pe abs_2663 (
  .a(w_8177_8b),
  .b(1'b0),
  .c(w_8180_8b),
  .clk(clk)
);
assign  w_8181_8b  =  w_8180_8b ;
assign  w_8182_16b  =  w_8181_8b ;
ADD_16b_pe add_2664 (
  .a(w_8172_16b),
  .b(w_8182_16b),
  .c(w_8183_16b),
  .clk(clk)
);
assign  w_8184_16b  =  r51_w_SAD_2a163_9_16b ;
assign  w_8187_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8188_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_2665 (
  .a(w_8187_8b),
  .b(w_8188_8b),
  .c(w_8189_8b),
  .clk(clk)
);
assign  w_819_8b  =  w_818_8b ;
ABS_16b_pe abs_2666 (
  .a(w_8189_8b),
  .b(1'b0),
  .c(w_8192_8b),
  .clk(clk)
);
assign  w_8193_8b  =  w_8192_8b ;
assign  w_8194_16b  =  w_8193_8b ;
ADD_16b_pe add_2667 (
  .a(w_8184_16b),
  .b(w_8194_16b),
  .c(w_8195_16b),
  .clk(clk)
);
assign  w_8196_16b  =  r52_w_SAD_2a163_9_16b ;
assign  w_8199_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_820_16b  =  w_819_8b ;
assign  w_8200_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_2668 (
  .a(w_8200_8b),
  .b(w_8199_8b),
  .c(w_8201_8b),
  .clk(clk)
);
ABS_16b_pe abs_2669 (
  .a(w_8201_8b),
  .b(1'b0),
  .c(w_8204_8b),
  .clk(clk)
);
assign  w_8205_8b  =  w_8204_8b ;
assign  w_8206_16b  =  w_8205_8b ;
ADD_16b_pe add_2670 (
  .a(w_8196_16b),
  .b(w_8206_16b),
  .c(w_8207_16b),
  .clk(clk)
);
assign  w_8208_16b  =  r53_w_SAD_2a163_9_16b ;
ADD_16b_pe add_2671 (
  .a(w_810_16b),
  .b(w_820_16b),
  .c(w_821_16b),
  .clk(clk)
);
assign  w_8211_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8212_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_2672 (
  .a(w_8211_8b),
  .b(w_8212_8b),
  .c(w_8213_8b),
  .clk(clk)
);
ABS_16b_pe abs_2673 (
  .a(w_8213_8b),
  .b(1'b0),
  .c(w_8216_8b),
  .clk(clk)
);
assign  w_8217_8b  =  w_8216_8b ;
assign  w_8218_16b  =  w_8217_8b ;
ADD_16b_pe add_2674 (
  .a(w_8218_16b),
  .b(w_8208_16b),
  .c(w_8219_16b),
  .clk(clk)
);
assign  w_822_16b  =  r13_w_SAD_2a163_0_16b ;
assign  w_8220_16b  =  r54_w_SAD_2a163_9_16b ;
assign  w_8223_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8224_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_2675 (
  .a(w_8223_8b),
  .b(w_8224_8b),
  .c(w_8225_8b),
  .clk(clk)
);
ABS_16b_pe abs_2676 (
  .a(w_8225_8b),
  .b(1'b0),
  .c(w_8228_8b),
  .clk(clk)
);
assign  w_8229_8b  =  w_8228_8b ;
assign  w_8230_16b  =  w_8229_8b ;
ADD_16b_pe add_2677 (
  .a(w_8220_16b),
  .b(w_8230_16b),
  .c(w_8231_16b),
  .clk(clk)
);
assign  w_8232_16b  =  r55_w_SAD_2a163_9_16b ;
assign  w_8235_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_8236_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_2678 (
  .a(w_8236_8b),
  .b(w_8235_8b),
  .c(w_8237_8b),
  .clk(clk)
);
ABS_16b_pe abs_2679 (
  .a(w_8237_8b),
  .b(1'b0),
  .c(w_8240_8b),
  .clk(clk)
);
assign  w_8241_8b  =  w_8240_8b ;
assign  w_8242_16b  =  w_8241_8b ;
ADD_16b_pe add_2680 (
  .a(w_8242_16b),
  .b(w_8232_16b),
  .c(w_8243_16b),
  .clk(clk)
);
assign  w_8244_16b  =  r56_w_SAD_2a163_9_16b ;
assign  w_8247_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_8248_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_2681 (
  .a(w_8248_8b),
  .b(w_8247_8b),
  .c(w_8249_8b),
  .clk(clk)
);
assign  w_825_8b  =  w_pass_5_stencil_22_1_8b ;
ABS_16b_pe abs_2682 (
  .a(w_8249_8b),
  .b(1'b0),
  .c(w_8252_8b),
  .clk(clk)
);
assign  w_8253_8b  =  w_8252_8b ;
assign  w_8254_16b  =  w_8253_8b ;
ADD_16b_pe add_2683 (
  .a(w_8254_16b),
  .b(w_8244_16b),
  .c(w_8255_16b),
  .clk(clk)
);
assign  w_8256_16b  =  r57_w_SAD_2a163_9_16b ;
assign  w_8259_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_826_8b  =  w_pass_4_stencil_6_1_8b ;
assign  w_8260_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_2684 (
  .a(w_8259_8b),
  .b(w_8260_8b),
  .c(w_8261_8b),
  .clk(clk)
);
ABS_16b_pe abs_2685 (
  .a(w_8261_8b),
  .b(1'b0),
  .c(w_8264_8b),
  .clk(clk)
);
assign  w_8265_8b  =  w_8264_8b ;
assign  w_8266_16b  =  w_8265_8b ;
ADD_16b_pe add_2686 (
  .a(w_8266_16b),
  .b(w_8256_16b),
  .c(w_8267_16b),
  .clk(clk)
);
assign  w_8268_16b  =  r58_w_SAD_2a163_9_16b ;
SUB_16b_pe sub_2687 (
  .a(w_825_8b),
  .b(w_826_8b),
  .c(w_827_8b),
  .clk(clk)
);
assign  w_8271_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_8272_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_2688 (
  .a(w_8272_8b),
  .b(w_8271_8b),
  .c(w_8273_8b),
  .clk(clk)
);
ABS_16b_pe abs_2689 (
  .a(w_8273_8b),
  .b(1'b0),
  .c(w_8276_8b),
  .clk(clk)
);
assign  w_8277_8b  =  w_8276_8b ;
assign  w_8278_16b  =  w_8277_8b ;
ADD_16b_pe add_2690 (
  .a(w_8278_16b),
  .b(w_8268_16b),
  .c(w_8279_16b),
  .clk(clk)
);
assign  w_8280_16b  =  r59_w_SAD_2a163_9_16b ;
assign  w_8283_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_8284_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_2691 (
  .a(w_8284_8b),
  .b(w_8283_8b),
  .c(w_8285_8b),
  .clk(clk)
);
ABS_16b_pe abs_2692 (
  .a(w_8285_8b),
  .b(1'b0),
  .c(w_8288_8b),
  .clk(clk)
);
assign  w_8289_8b  =  w_8288_8b ;
assign  w_8290_16b  =  w_8289_8b ;
ADD_16b_pe add_2693 (
  .a(w_8290_16b),
  .b(w_8280_16b),
  .c(w_8291_16b),
  .clk(clk)
);
assign  w_8292_16b  =  r60_w_SAD_2a163_9_16b ;
assign  w_8295_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_8296_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_2694 (
  .a(w_8295_8b),
  .b(w_8296_8b),
  .c(w_8297_8b),
  .clk(clk)
);
ABS_16b_pe abs_2695 (
  .a(w_827_8b),
  .b(1'b0),
  .c(w_830_8b),
  .clk(clk)
);
ABS_16b_pe abs_2696 (
  .a(w_8297_8b),
  .b(1'b0),
  .c(w_8300_8b),
  .clk(clk)
);
assign  w_8301_8b  =  w_8300_8b ;
assign  w_8302_16b  =  w_8301_8b ;
ADD_16b_pe add_2697 (
  .a(w_8302_16b),
  .b(w_8292_16b),
  .c(w_8303_16b),
  .clk(clk)
);
assign  w_8304_16b  =  r61_w_SAD_2a163_9_16b ;
assign  w_8307_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_8308_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_2698 (
  .a(w_8307_8b),
  .b(w_8308_8b),
  .c(w_8309_8b),
  .clk(clk)
);
assign  w_831_8b  =  w_830_8b ;
ABS_16b_pe abs_2699 (
  .a(w_8309_8b),
  .b(1'b0),
  .c(w_8312_8b),
  .clk(clk)
);
assign  w_8313_8b  =  w_8312_8b ;
assign  w_8314_16b  =  w_8313_8b ;
ADD_16b_pe add_2700 (
  .a(w_8304_16b),
  .b(w_8314_16b),
  .c(w_8315_16b),
  .clk(clk)
);
assign  w_8316_16b  =  r62_w_SAD_2a163_9_16b ;
assign  w_8319_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_832_16b  =  w_831_8b ;
assign  w_8320_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_2701 (
  .a(w_8319_8b),
  .b(w_8320_8b),
  .c(w_8321_8b),
  .clk(clk)
);
ABS_16b_pe abs_2702 (
  .a(w_8321_8b),
  .b(1'b0),
  .c(w_8324_8b),
  .clk(clk)
);
assign  w_8325_8b  =  w_8324_8b ;
assign  w_8326_16b  =  w_8325_8b ;
ADD_16b_pe add_2703 (
  .a(w_8326_16b),
  .b(w_8316_16b),
  .c(w_8327_16b),
  .clk(clk)
);
assign  w_8328_16b  = 1'b0;
ADD_16b_pe add_2704 (
  .a(w_832_16b),
  .b(w_822_16b),
  .c(w_833_16b),
  .clk(clk)
);
assign  w_8331_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_8332_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_2705 (
  .a(w_8332_8b),
  .b(w_8331_8b),
  .c(w_8333_8b),
  .clk(clk)
);
ABS_16b_pe abs_2706 (
  .a(w_8333_8b),
  .b(1'b0),
  .c(w_8336_8b),
  .clk(clk)
);
assign  w_8337_8b  =  w_8336_8b ;
assign  w_8338_16b  =  w_8337_8b ;
ADD_16b_pe add_2707 (
  .a(w_8328_16b),
  .b(w_8338_16b),
  .c(w_8339_16b),
  .clk(clk)
);
assign  w_834_16b  =  r14_w_SAD_2a163_0_16b ;
assign  w_8340_16b  =  r0_w_SAD_2a163_10_16b ;
assign  w_8343_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_8344_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_2708 (
  .a(w_8343_8b),
  .b(w_8344_8b),
  .c(w_8345_8b),
  .clk(clk)
);
ABS_16b_pe abs_2709 (
  .a(w_8345_8b),
  .b(1'b0),
  .c(w_8348_8b),
  .clk(clk)
);
assign  w_8349_8b  =  w_8348_8b ;
assign  w_8350_16b  =  w_8349_8b ;
ADD_16b_pe add_2710 (
  .a(w_8340_16b),
  .b(w_8350_16b),
  .c(w_8351_16b),
  .clk(clk)
);
assign  w_8352_16b  =  r1_w_SAD_2a163_10_16b ;
assign  w_8355_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_8356_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_2711 (
  .a(w_8355_8b),
  .b(w_8356_8b),
  .c(w_8357_8b),
  .clk(clk)
);
ABS_16b_pe abs_2712 (
  .a(w_8357_8b),
  .b(1'b0),
  .c(w_8360_8b),
  .clk(clk)
);
assign  w_8361_8b  =  w_8360_8b ;
assign  w_8362_16b  =  w_8361_8b ;
ADD_16b_pe add_2713 (
  .a(w_8362_16b),
  .b(w_8352_16b),
  .c(w_8363_16b),
  .clk(clk)
);
assign  w_8364_16b  =  r2_w_SAD_2a163_10_16b ;
assign  w_8367_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_8368_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_2714 (
  .a(w_8368_8b),
  .b(w_8367_8b),
  .c(w_8369_8b),
  .clk(clk)
);
assign  w_837_8b  =  w_pass_5_stencil_23_1_8b ;
ABS_16b_pe abs_2715 (
  .a(w_8369_8b),
  .b(1'b0),
  .c(w_8372_8b),
  .clk(clk)
);
assign  w_8373_8b  =  w_8372_8b ;
assign  w_8374_16b  =  w_8373_8b ;
ADD_16b_pe add_2716 (
  .a(w_8364_16b),
  .b(w_8374_16b),
  .c(w_8375_16b),
  .clk(clk)
);
assign  w_8376_16b  =  r3_w_SAD_2a163_10_16b ;
assign  w_8379_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_838_8b  =  w_pass_4_stencil_7_1_8b ;
assign  w_8380_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_2717 (
  .a(w_8379_8b),
  .b(w_8380_8b),
  .c(w_8381_8b),
  .clk(clk)
);
ABS_16b_pe abs_2718 (
  .a(w_8381_8b),
  .b(1'b0),
  .c(w_8384_8b),
  .clk(clk)
);
assign  w_8385_8b  =  w_8384_8b ;
assign  w_8386_16b  =  w_8385_8b ;
ADD_16b_pe add_2719 (
  .a(w_8386_16b),
  .b(w_8376_16b),
  .c(w_8387_16b),
  .clk(clk)
);
assign  w_8388_16b  =  r4_w_SAD_2a163_10_16b ;
SUB_16b_pe sub_2720 (
  .a(w_837_8b),
  .b(w_838_8b),
  .c(w_839_8b),
  .clk(clk)
);
assign  w_8391_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_8392_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_2721 (
  .a(w_8391_8b),
  .b(w_8392_8b),
  .c(w_8393_8b),
  .clk(clk)
);
ABS_16b_pe abs_2722 (
  .a(w_8393_8b),
  .b(1'b0),
  .c(w_8396_8b),
  .clk(clk)
);
assign  w_8397_8b  =  w_8396_8b ;
assign  w_8398_16b  =  w_8397_8b ;
ADD_16b_pe add_2723 (
  .a(w_8398_16b),
  .b(w_8388_16b),
  .c(w_8399_16b),
  .clk(clk)
);
assign  w_8400_16b  =  r5_w_SAD_2a163_10_16b ;
assign  w_8403_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_8404_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_2724 (
  .a(w_8403_8b),
  .b(w_8404_8b),
  .c(w_8405_8b),
  .clk(clk)
);
ABS_16b_pe abs_2725 (
  .a(w_8405_8b),
  .b(1'b0),
  .c(w_8408_8b),
  .clk(clk)
);
assign  w_8409_8b  =  w_8408_8b ;
assign  w_8410_16b  =  w_8409_8b ;
ADD_16b_pe add_2726 (
  .a(w_8400_16b),
  .b(w_8410_16b),
  .c(w_8411_16b),
  .clk(clk)
);
assign  w_8412_16b  =  r6_w_SAD_2a163_10_16b ;
assign  w_8415_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_8416_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_2727 (
  .a(w_8416_8b),
  .b(w_8415_8b),
  .c(w_8417_8b),
  .clk(clk)
);
ABS_16b_pe abs_2728 (
  .a(w_839_8b),
  .b(1'b0),
  .c(w_842_8b),
  .clk(clk)
);
ABS_16b_pe abs_2729 (
  .a(w_8417_8b),
  .b(1'b0),
  .c(w_8420_8b),
  .clk(clk)
);
assign  w_8421_8b  =  w_8420_8b ;
assign  w_8422_16b  =  w_8421_8b ;
ADD_16b_pe add_2730 (
  .a(w_8422_16b),
  .b(w_8412_16b),
  .c(w_8423_16b),
  .clk(clk)
);
assign  w_8424_16b  =  r7_w_SAD_2a163_10_16b ;
assign  w_8427_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_8428_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_2731 (
  .a(w_8427_8b),
  .b(w_8428_8b),
  .c(w_8429_8b),
  .clk(clk)
);
assign  w_843_8b  =  w_842_8b ;
ABS_16b_pe abs_2732 (
  .a(w_8429_8b),
  .b(1'b0),
  .c(w_8432_8b),
  .clk(clk)
);
assign  w_8433_8b  =  w_8432_8b ;
assign  w_8434_16b  =  w_8433_8b ;
ADD_16b_pe add_2733 (
  .a(w_8434_16b),
  .b(w_8424_16b),
  .c(w_8435_16b),
  .clk(clk)
);
assign  w_8436_16b  =  r8_w_SAD_2a163_10_16b ;
assign  w_8439_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_844_16b  =  w_843_8b ;
assign  w_8440_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_2734 (
  .a(w_8440_8b),
  .b(w_8439_8b),
  .c(w_8441_8b),
  .clk(clk)
);
ABS_16b_pe abs_2735 (
  .a(w_8441_8b),
  .b(1'b0),
  .c(w_8444_8b),
  .clk(clk)
);
assign  w_8445_8b  =  w_8444_8b ;
assign  w_8446_16b  =  w_8445_8b ;
ADD_16b_pe add_2736 (
  .a(w_8446_16b),
  .b(w_8436_16b),
  .c(w_8447_16b),
  .clk(clk)
);
assign  w_8448_16b  =  r9_w_SAD_2a163_10_16b ;
ADD_16b_pe add_2737 (
  .a(w_834_16b),
  .b(w_844_16b),
  .c(w_845_16b),
  .clk(clk)
);
assign  w_8451_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_8452_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_2738 (
  .a(w_8452_8b),
  .b(w_8451_8b),
  .c(w_8453_8b),
  .clk(clk)
);
ABS_16b_pe abs_2739 (
  .a(w_8453_8b),
  .b(1'b0),
  .c(w_8456_8b),
  .clk(clk)
);
assign  w_8457_8b  =  w_8456_8b ;
assign  w_8458_16b  =  w_8457_8b ;
ADD_16b_pe add_2740 (
  .a(w_8458_16b),
  .b(w_8448_16b),
  .c(w_8459_16b),
  .clk(clk)
);
assign  w_846_16b  =  r15_w_SAD_2a163_0_16b ;
assign  w_8460_16b  =  r10_w_SAD_2a163_10_16b ;
assign  w_8463_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_8464_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_2741 (
  .a(w_8463_8b),
  .b(w_8464_8b),
  .c(w_8465_8b),
  .clk(clk)
);
ABS_16b_pe abs_2742 (
  .a(w_8465_8b),
  .b(1'b0),
  .c(w_8468_8b),
  .clk(clk)
);
assign  w_8469_8b  =  w_8468_8b ;
assign  w_8470_16b  =  w_8469_8b ;
ADD_16b_pe add_2743 (
  .a(w_8470_16b),
  .b(w_8460_16b),
  .c(w_8471_16b),
  .clk(clk)
);
assign  w_8472_16b  =  r11_w_SAD_2a163_10_16b ;
assign  w_8475_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_8476_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_2744 (
  .a(w_8475_8b),
  .b(w_8476_8b),
  .c(w_8477_8b),
  .clk(clk)
);
assign  w_848_8b  =  w_pass_5_stencil_16_2_8b ;
ABS_16b_pe abs_2745 (
  .a(w_8477_8b),
  .b(1'b0),
  .c(w_8480_8b),
  .clk(clk)
);
assign  w_8481_8b  =  w_8480_8b ;
assign  w_8482_16b  =  w_8481_8b ;
ADD_16b_pe add_2746 (
  .a(w_8482_16b),
  .b(w_8472_16b),
  .c(w_8483_16b),
  .clk(clk)
);
assign  w_8484_16b  =  r12_w_SAD_2a163_10_16b ;
assign  w_8487_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_8488_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_2747 (
  .a(w_8488_8b),
  .b(w_8487_8b),
  .c(w_8489_8b),
  .clk(clk)
);
assign  w_849_8b  =  w_pass_4_stencil_0_2_8b ;
ABS_16b_pe abs_2748 (
  .a(w_8489_8b),
  .b(1'b0),
  .c(w_8492_8b),
  .clk(clk)
);
assign  w_8493_8b  =  w_8492_8b ;
assign  w_8494_16b  =  w_8493_8b ;
ADD_16b_pe add_2749 (
  .a(w_8494_16b),
  .b(w_8484_16b),
  .c(w_8495_16b),
  .clk(clk)
);
assign  w_8496_16b  =  r13_w_SAD_2a163_10_16b ;
assign  w_8499_8b  =  w_pass_5_stencil_16_1_8b ;
SUB_16b_pe sub_2750 (
  .a(w_849_8b),
  .b(w_848_8b),
  .c(w_850_8b),
  .clk(clk)
);
assign  w_8500_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_2751 (
  .a(w_8500_8b),
  .b(w_8499_8b),
  .c(w_8501_8b),
  .clk(clk)
);
ABS_16b_pe abs_2752 (
  .a(w_8501_8b),
  .b(1'b0),
  .c(w_8504_8b),
  .clk(clk)
);
assign  w_8505_8b  =  w_8504_8b ;
assign  w_8506_16b  =  w_8505_8b ;
ADD_16b_pe add_2753 (
  .a(w_8496_16b),
  .b(w_8506_16b),
  .c(w_8507_16b),
  .clk(clk)
);
assign  w_8508_16b  =  r14_w_SAD_2a163_10_16b ;
assign  w_8511_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_8512_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_2754 (
  .a(w_8512_8b),
  .b(w_8511_8b),
  .c(w_8513_8b),
  .clk(clk)
);
ABS_16b_pe abs_2755 (
  .a(w_8513_8b),
  .b(1'b0),
  .c(w_8516_8b),
  .clk(clk)
);
assign  w_8517_8b  =  w_8516_8b ;
assign  w_8518_16b  =  w_8517_8b ;
ADD_16b_pe add_2756 (
  .a(w_8508_16b),
  .b(w_8518_16b),
  .c(w_8519_16b),
  .clk(clk)
);
assign  w_8520_16b  =  r15_w_SAD_2a163_10_16b ;
assign  w_8523_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_8524_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_2757 (
  .a(w_8523_8b),
  .b(w_8524_8b),
  .c(w_8525_8b),
  .clk(clk)
);
ABS_16b_pe abs_2758 (
  .a(w_8525_8b),
  .b(1'b0),
  .c(w_8528_8b),
  .clk(clk)
);
assign  w_8529_8b  =  w_8528_8b ;
ABS_16b_pe abs_2759 (
  .a(w_850_8b),
  .b(1'b0),
  .c(w_853_8b),
  .clk(clk)
);
assign  w_8530_16b  =  w_8529_8b ;
ADD_16b_pe add_2760 (
  .a(w_8520_16b),
  .b(w_8530_16b),
  .c(w_8531_16b),
  .clk(clk)
);
assign  w_8532_16b  =  r16_w_SAD_2a163_10_16b ;
assign  w_8535_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_8536_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_2761 (
  .a(w_8535_8b),
  .b(w_8536_8b),
  .c(w_8537_8b),
  .clk(clk)
);
assign  w_854_8b  =  w_853_8b ;
ABS_16b_pe abs_2762 (
  .a(w_8537_8b),
  .b(1'b0),
  .c(w_8540_8b),
  .clk(clk)
);
assign  w_8541_8b  =  w_8540_8b ;
assign  w_8542_16b  =  w_8541_8b ;
ADD_16b_pe add_2763 (
  .a(w_8532_16b),
  .b(w_8542_16b),
  .c(w_8543_16b),
  .clk(clk)
);
assign  w_8544_16b  =  r17_w_SAD_2a163_10_16b ;
assign  w_8547_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_8548_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_2764 (
  .a(w_8547_8b),
  .b(w_8548_8b),
  .c(w_8549_8b),
  .clk(clk)
);
assign  w_855_16b  =  w_854_8b ;
ABS_16b_pe abs_2765 (
  .a(w_8549_8b),
  .b(1'b0),
  .c(w_8552_8b),
  .clk(clk)
);
assign  w_8553_8b  =  w_8552_8b ;
assign  w_8554_16b  =  w_8553_8b ;
ADD_16b_pe add_2766 (
  .a(w_8544_16b),
  .b(w_8554_16b),
  .c(w_8555_16b),
  .clk(clk)
);
assign  w_8556_16b  =  r18_w_SAD_2a163_10_16b ;
assign  w_8559_8b  =  w_pass_5_stencil_16_2_8b ;
ADD_16b_pe add_2767 (
  .a(w_846_16b),
  .b(w_855_16b),
  .c(w_856_16b),
  .clk(clk)
);
assign  w_8560_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_2768 (
  .a(w_8560_8b),
  .b(w_8559_8b),
  .c(w_8561_8b),
  .clk(clk)
);
ABS_16b_pe abs_2769 (
  .a(w_8561_8b),
  .b(1'b0),
  .c(w_8564_8b),
  .clk(clk)
);
assign  w_8565_8b  =  w_8564_8b ;
assign  w_8566_16b  =  w_8565_8b ;
ADD_16b_pe add_2770 (
  .a(w_8556_16b),
  .b(w_8566_16b),
  .c(w_8567_16b),
  .clk(clk)
);
assign  w_8568_16b  =  r19_w_SAD_2a163_10_16b ;
assign  w_857_16b  =  r16_w_SAD_2a163_0_16b ;
assign  w_8571_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_8572_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_2771 (
  .a(w_8571_8b),
  .b(w_8572_8b),
  .c(w_8573_8b),
  .clk(clk)
);
ABS_16b_pe abs_2772 (
  .a(w_8573_8b),
  .b(1'b0),
  .c(w_8576_8b),
  .clk(clk)
);
assign  w_8577_8b  =  w_8576_8b ;
assign  w_8578_16b  =  w_8577_8b ;
ADD_16b_pe add_2773 (
  .a(w_8578_16b),
  .b(w_8568_16b),
  .c(w_8579_16b),
  .clk(clk)
);
assign  w_8580_16b  =  r20_w_SAD_2a163_10_16b ;
assign  w_8583_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_8584_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_2774 (
  .a(w_8583_8b),
  .b(w_8584_8b),
  .c(w_8585_8b),
  .clk(clk)
);
ABS_16b_pe abs_2775 (
  .a(w_8585_8b),
  .b(1'b0),
  .c(w_8588_8b),
  .clk(clk)
);
assign  w_8589_8b  =  w_8588_8b ;
assign  w_8590_16b  =  w_8589_8b ;
ADD_16b_pe add_2776 (
  .a(w_8580_16b),
  .b(w_8590_16b),
  .c(w_8591_16b),
  .clk(clk)
);
assign  w_8592_16b  =  r21_w_SAD_2a163_10_16b ;
assign  w_8595_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_8596_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_2777 (
  .a(w_8596_8b),
  .b(w_8595_8b),
  .c(w_8597_8b),
  .clk(clk)
);
assign  w_860_8b  =  w_pass_5_stencil_17_2_8b ;
ABS_16b_pe abs_2778 (
  .a(w_8597_8b),
  .b(1'b0),
  .c(w_8600_8b),
  .clk(clk)
);
assign  w_8601_8b  =  w_8600_8b ;
assign  w_8602_16b  =  w_8601_8b ;
ADD_16b_pe add_2779 (
  .a(w_8592_16b),
  .b(w_8602_16b),
  .c(w_8603_16b),
  .clk(clk)
);
assign  w_8604_16b  =  r22_w_SAD_2a163_10_16b ;
assign  w_8607_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_8608_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_2780 (
  .a(w_8608_8b),
  .b(w_8607_8b),
  .c(w_8609_8b),
  .clk(clk)
);
assign  w_861_8b  =  w_pass_4_stencil_1_2_8b ;
ABS_16b_pe abs_2781 (
  .a(w_8609_8b),
  .b(1'b0),
  .c(w_8612_8b),
  .clk(clk)
);
assign  w_8613_8b  =  w_8612_8b ;
assign  w_8614_16b  =  w_8613_8b ;
ADD_16b_pe add_2782 (
  .a(w_8614_16b),
  .b(w_8604_16b),
  .c(w_8615_16b),
  .clk(clk)
);
assign  w_8616_16b  =  r23_w_SAD_2a163_10_16b ;
assign  w_8619_8b  =  w_pass_5_stencil_16_3_8b ;
SUB_16b_pe sub_2783 (
  .a(w_861_8b),
  .b(w_860_8b),
  .c(w_862_8b),
  .clk(clk)
);
assign  w_8620_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_2784 (
  .a(w_8619_8b),
  .b(w_8620_8b),
  .c(w_8621_8b),
  .clk(clk)
);
ABS_16b_pe abs_2785 (
  .a(w_8621_8b),
  .b(1'b0),
  .c(w_8624_8b),
  .clk(clk)
);
assign  w_8625_8b  =  w_8624_8b ;
assign  w_8626_16b  =  w_8625_8b ;
ADD_16b_pe add_2786 (
  .a(w_8626_16b),
  .b(w_8616_16b),
  .c(w_8627_16b),
  .clk(clk)
);
assign  w_8628_16b  =  r24_w_SAD_2a163_10_16b ;
assign  w_8631_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_8632_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_2787 (
  .a(w_8632_8b),
  .b(w_8631_8b),
  .c(w_8633_8b),
  .clk(clk)
);
ABS_16b_pe abs_2788 (
  .a(w_8633_8b),
  .b(1'b0),
  .c(w_8636_8b),
  .clk(clk)
);
assign  w_8637_8b  =  w_8636_8b ;
assign  w_8638_16b  =  w_8637_8b ;
ADD_16b_pe add_2789 (
  .a(w_8638_16b),
  .b(w_8628_16b),
  .c(w_8639_16b),
  .clk(clk)
);
assign  w_8640_16b  =  r25_w_SAD_2a163_10_16b ;
assign  w_8643_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_8644_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_2790 (
  .a(w_8644_8b),
  .b(w_8643_8b),
  .c(w_8645_8b),
  .clk(clk)
);
ABS_16b_pe abs_2791 (
  .a(w_8645_8b),
  .b(1'b0),
  .c(w_8648_8b),
  .clk(clk)
);
assign  w_8649_8b  =  w_8648_8b ;
ABS_16b_pe abs_2792 (
  .a(w_862_8b),
  .b(1'b0),
  .c(w_865_8b),
  .clk(clk)
);
assign  w_8650_16b  =  w_8649_8b ;
ADD_16b_pe add_2793 (
  .a(w_8650_16b),
  .b(w_8640_16b),
  .c(w_8651_16b),
  .clk(clk)
);
assign  w_8652_16b  =  r26_w_SAD_2a163_10_16b ;
assign  w_8655_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_8656_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_2794 (
  .a(w_8655_8b),
  .b(w_8656_8b),
  .c(w_8657_8b),
  .clk(clk)
);
assign  w_866_8b  =  w_865_8b ;
ABS_16b_pe abs_2795 (
  .a(w_8657_8b),
  .b(1'b0),
  .c(w_8660_8b),
  .clk(clk)
);
assign  w_8661_8b  =  w_8660_8b ;
assign  w_8662_16b  =  w_8661_8b ;
ADD_16b_pe add_2796 (
  .a(w_8662_16b),
  .b(w_8652_16b),
  .c(w_8663_16b),
  .clk(clk)
);
assign  w_8664_16b  =  r27_w_SAD_2a163_10_16b ;
assign  w_8667_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_8668_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_2797 (
  .a(w_8668_8b),
  .b(w_8667_8b),
  .c(w_8669_8b),
  .clk(clk)
);
assign  w_867_16b  =  w_866_8b ;
ABS_16b_pe abs_2798 (
  .a(w_8669_8b),
  .b(1'b0),
  .c(w_8672_8b),
  .clk(clk)
);
assign  w_8673_8b  =  w_8672_8b ;
assign  w_8674_16b  =  w_8673_8b ;
ADD_16b_pe add_2799 (
  .a(w_8674_16b),
  .b(w_8664_16b),
  .c(w_8675_16b),
  .clk(clk)
);
assign  w_8676_16b  =  r28_w_SAD_2a163_10_16b ;
assign  w_8679_8b  =  w_pass_5_stencil_16_3_8b ;
ADD_16b_pe add_2800 (
  .a(w_867_16b),
  .b(w_857_16b),
  .c(w_868_16b),
  .clk(clk)
);
assign  w_8680_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_2801 (
  .a(w_8680_8b),
  .b(w_8679_8b),
  .c(w_8681_8b),
  .clk(clk)
);
ABS_16b_pe abs_2802 (
  .a(w_8681_8b),
  .b(1'b0),
  .c(w_8684_8b),
  .clk(clk)
);
assign  w_8685_8b  =  w_8684_8b ;
assign  w_8686_16b  =  w_8685_8b ;
ADD_16b_pe add_2803 (
  .a(w_8676_16b),
  .b(w_8686_16b),
  .c(w_8687_16b),
  .clk(clk)
);
assign  w_8688_16b  =  r29_w_SAD_2a163_10_16b ;
assign  w_869_16b  =  r17_w_SAD_2a163_0_16b ;
assign  w_8691_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_8692_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_2804 (
  .a(w_8691_8b),
  .b(w_8692_8b),
  .c(w_8693_8b),
  .clk(clk)
);
ABS_16b_pe abs_2805 (
  .a(w_8693_8b),
  .b(1'b0),
  .c(w_8696_8b),
  .clk(clk)
);
assign  w_8697_8b  =  w_8696_8b ;
assign  w_8698_16b  =  w_8697_8b ;
ADD_16b_pe add_2806 (
  .a(w_8698_16b),
  .b(w_8688_16b),
  .c(w_8699_16b),
  .clk(clk)
);
assign  w_8700_16b  =  r30_w_SAD_2a163_10_16b ;
assign  w_8703_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_8704_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_2807 (
  .a(w_8703_8b),
  .b(w_8704_8b),
  .c(w_8705_8b),
  .clk(clk)
);
ABS_16b_pe abs_2808 (
  .a(w_8705_8b),
  .b(1'b0),
  .c(w_8708_8b),
  .clk(clk)
);
assign  w_8709_8b  =  w_8708_8b ;
assign  w_8710_16b  =  w_8709_8b ;
ADD_16b_pe add_2809 (
  .a(w_8700_16b),
  .b(w_8710_16b),
  .c(w_8711_16b),
  .clk(clk)
);
assign  w_8712_16b  =  r31_w_SAD_2a163_10_16b ;
assign  w_8715_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_8716_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_2810 (
  .a(w_8715_8b),
  .b(w_8716_8b),
  .c(w_8717_8b),
  .clk(clk)
);
assign  w_872_8b  =  w_pass_5_stencil_18_2_8b ;
ABS_16b_pe abs_2811 (
  .a(w_8717_8b),
  .b(1'b0),
  .c(w_8720_8b),
  .clk(clk)
);
assign  w_8721_8b  =  w_8720_8b ;
assign  w_8722_16b  =  w_8721_8b ;
ADD_16b_pe add_2812 (
  .a(w_8722_16b),
  .b(w_8712_16b),
  .c(w_8723_16b),
  .clk(clk)
);
assign  w_8724_16b  =  r32_w_SAD_2a163_10_16b ;
assign  w_8727_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_8728_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_2813 (
  .a(w_8728_8b),
  .b(w_8727_8b),
  .c(w_8729_8b),
  .clk(clk)
);
assign  w_873_8b  =  w_pass_4_stencil_2_2_8b ;
ABS_16b_pe abs_2814 (
  .a(w_8729_8b),
  .b(1'b0),
  .c(w_8732_8b),
  .clk(clk)
);
assign  w_8733_8b  =  w_8732_8b ;
assign  w_8734_16b  =  w_8733_8b ;
ADD_16b_pe add_2815 (
  .a(w_8724_16b),
  .b(w_8734_16b),
  .c(w_8735_16b),
  .clk(clk)
);
assign  w_8736_16b  =  r33_w_SAD_2a163_10_16b ;
assign  w_8739_8b  =  w_pass_5_stencil_16_4_8b ;
SUB_16b_pe sub_2816 (
  .a(w_872_8b),
  .b(w_873_8b),
  .c(w_874_8b),
  .clk(clk)
);
assign  w_8740_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_2817 (
  .a(w_8739_8b),
  .b(w_8740_8b),
  .c(w_8741_8b),
  .clk(clk)
);
ABS_16b_pe abs_2818 (
  .a(w_8741_8b),
  .b(1'b0),
  .c(w_8744_8b),
  .clk(clk)
);
assign  w_8745_8b  =  w_8744_8b ;
assign  w_8746_16b  =  w_8745_8b ;
ADD_16b_pe add_2819 (
  .a(w_8746_16b),
  .b(w_8736_16b),
  .c(w_8747_16b),
  .clk(clk)
);
assign  w_8748_16b  =  r34_w_SAD_2a163_10_16b ;
assign  w_8751_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_8752_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_2820 (
  .a(w_8751_8b),
  .b(w_8752_8b),
  .c(w_8753_8b),
  .clk(clk)
);
ABS_16b_pe abs_2821 (
  .a(w_8753_8b),
  .b(1'b0),
  .c(w_8756_8b),
  .clk(clk)
);
assign  w_8757_8b  =  w_8756_8b ;
assign  w_8758_16b  =  w_8757_8b ;
ADD_16b_pe add_2822 (
  .a(w_8758_16b),
  .b(w_8748_16b),
  .c(w_8759_16b),
  .clk(clk)
);
assign  w_8760_16b  =  r35_w_SAD_2a163_10_16b ;
assign  w_8763_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_8764_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_2823 (
  .a(w_8764_8b),
  .b(w_8763_8b),
  .c(w_8765_8b),
  .clk(clk)
);
ABS_16b_pe abs_2824 (
  .a(w_8765_8b),
  .b(1'b0),
  .c(w_8768_8b),
  .clk(clk)
);
assign  w_8769_8b  =  w_8768_8b ;
ABS_16b_pe abs_2825 (
  .a(w_874_8b),
  .b(1'b0),
  .c(w_877_8b),
  .clk(clk)
);
assign  w_8770_16b  =  w_8769_8b ;
ADD_16b_pe add_2826 (
  .a(w_8760_16b),
  .b(w_8770_16b),
  .c(w_8771_16b),
  .clk(clk)
);
assign  w_8772_16b  =  r36_w_SAD_2a163_10_16b ;
assign  w_8775_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_8776_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_2827 (
  .a(w_8776_8b),
  .b(w_8775_8b),
  .c(w_8777_8b),
  .clk(clk)
);
assign  w_878_8b  =  w_877_8b ;
ABS_16b_pe abs_2828 (
  .a(w_8777_8b),
  .b(1'b0),
  .c(w_8780_8b),
  .clk(clk)
);
assign  w_8781_8b  =  w_8780_8b ;
assign  w_8782_16b  =  w_8781_8b ;
ADD_16b_pe add_2829 (
  .a(w_8782_16b),
  .b(w_8772_16b),
  .c(w_8783_16b),
  .clk(clk)
);
assign  w_8784_16b  =  r37_w_SAD_2a163_10_16b ;
assign  w_8787_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_8788_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_2830 (
  .a(w_8788_8b),
  .b(w_8787_8b),
  .c(w_8789_8b),
  .clk(clk)
);
assign  w_879_16b  =  w_878_8b ;
ABS_16b_pe abs_2831 (
  .a(w_8789_8b),
  .b(1'b0),
  .c(w_8792_8b),
  .clk(clk)
);
assign  w_8793_8b  =  w_8792_8b ;
assign  w_8794_16b  =  w_8793_8b ;
ADD_16b_pe add_2832 (
  .a(w_8794_16b),
  .b(w_8784_16b),
  .c(w_8795_16b),
  .clk(clk)
);
assign  w_8796_16b  =  r38_w_SAD_2a163_10_16b ;
assign  w_8799_8b  =  w_pass_5_stencil_16_4_8b ;
ADD_16b_pe add_2833 (
  .a(w_869_16b),
  .b(w_879_16b),
  .c(w_880_16b),
  .clk(clk)
);
assign  w_8800_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_2834 (
  .a(w_8800_8b),
  .b(w_8799_8b),
  .c(w_8801_8b),
  .clk(clk)
);
ABS_16b_pe abs_2835 (
  .a(w_8801_8b),
  .b(1'b0),
  .c(w_8804_8b),
  .clk(clk)
);
assign  w_8805_8b  =  w_8804_8b ;
assign  w_8806_16b  =  w_8805_8b ;
ADD_16b_pe add_2836 (
  .a(w_8796_16b),
  .b(w_8806_16b),
  .c(w_8807_16b),
  .clk(clk)
);
assign  w_8808_16b  =  r39_w_SAD_2a163_10_16b ;
assign  w_881_16b  =  r18_w_SAD_2a163_0_16b ;
assign  w_8811_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8812_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_2837 (
  .a(w_8812_8b),
  .b(w_8811_8b),
  .c(w_8813_8b),
  .clk(clk)
);
ABS_16b_pe abs_2838 (
  .a(w_8813_8b),
  .b(1'b0),
  .c(w_8816_8b),
  .clk(clk)
);
assign  w_8817_8b  =  w_8816_8b ;
assign  w_8818_16b  =  w_8817_8b ;
ADD_16b_pe add_2839 (
  .a(w_8818_16b),
  .b(w_8808_16b),
  .c(w_8819_16b),
  .clk(clk)
);
assign  w_8820_16b  =  r40_w_SAD_2a163_10_16b ;
assign  w_8823_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8824_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_2840 (
  .a(w_8823_8b),
  .b(w_8824_8b),
  .c(w_8825_8b),
  .clk(clk)
);
ABS_16b_pe abs_2841 (
  .a(w_8825_8b),
  .b(1'b0),
  .c(w_8828_8b),
  .clk(clk)
);
assign  w_8829_8b  =  w_8828_8b ;
assign  w_8830_16b  =  w_8829_8b ;
ADD_16b_pe add_2842 (
  .a(w_8830_16b),
  .b(w_8820_16b),
  .c(w_8831_16b),
  .clk(clk)
);
assign  w_8832_16b  =  r41_w_SAD_2a163_10_16b ;
assign  w_8835_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8836_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_2843 (
  .a(w_8835_8b),
  .b(w_8836_8b),
  .c(w_8837_8b),
  .clk(clk)
);
assign  w_884_8b  =  w_pass_5_stencil_19_2_8b ;
ABS_16b_pe abs_2844 (
  .a(w_8837_8b),
  .b(1'b0),
  .c(w_8840_8b),
  .clk(clk)
);
assign  w_8841_8b  =  w_8840_8b ;
assign  w_8842_16b  =  w_8841_8b ;
ADD_16b_pe add_2845 (
  .a(w_8842_16b),
  .b(w_8832_16b),
  .c(w_8843_16b),
  .clk(clk)
);
assign  w_8844_16b  =  r42_w_SAD_2a163_10_16b ;
assign  w_8847_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8848_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_2846 (
  .a(w_8848_8b),
  .b(w_8847_8b),
  .c(w_8849_8b),
  .clk(clk)
);
assign  w_885_8b  =  w_pass_4_stencil_3_2_8b ;
ABS_16b_pe abs_2847 (
  .a(w_8849_8b),
  .b(1'b0),
  .c(w_8852_8b),
  .clk(clk)
);
assign  w_8853_8b  =  w_8852_8b ;
assign  w_8854_16b  =  w_8853_8b ;
ADD_16b_pe add_2848 (
  .a(w_8854_16b),
  .b(w_8844_16b),
  .c(w_8855_16b),
  .clk(clk)
);
assign  w_8856_16b  =  r43_w_SAD_2a163_10_16b ;
assign  w_8859_8b  =  w_pass_5_stencil_16_5_8b ;
SUB_16b_pe sub_2849 (
  .a(w_885_8b),
  .b(w_884_8b),
  .c(w_886_8b),
  .clk(clk)
);
assign  w_8860_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_2850 (
  .a(w_8860_8b),
  .b(w_8859_8b),
  .c(w_8861_8b),
  .clk(clk)
);
ABS_16b_pe abs_2851 (
  .a(w_8861_8b),
  .b(1'b0),
  .c(w_8864_8b),
  .clk(clk)
);
assign  w_8865_8b  =  w_8864_8b ;
assign  w_8866_16b  =  w_8865_8b ;
ADD_16b_pe add_2852 (
  .a(w_8866_16b),
  .b(w_8856_16b),
  .c(w_8867_16b),
  .clk(clk)
);
assign  w_8868_16b  =  r44_w_SAD_2a163_10_16b ;
assign  w_8871_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8872_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_2853 (
  .a(w_8871_8b),
  .b(w_8872_8b),
  .c(w_8873_8b),
  .clk(clk)
);
ABS_16b_pe abs_2854 (
  .a(w_8873_8b),
  .b(1'b0),
  .c(w_8876_8b),
  .clk(clk)
);
assign  w_8877_8b  =  w_8876_8b ;
assign  w_8878_16b  =  w_8877_8b ;
ADD_16b_pe add_2855 (
  .a(w_8878_16b),
  .b(w_8868_16b),
  .c(w_8879_16b),
  .clk(clk)
);
assign  w_8880_16b  =  r45_w_SAD_2a163_10_16b ;
assign  w_8883_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8884_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_2856 (
  .a(w_8884_8b),
  .b(w_8883_8b),
  .c(w_8885_8b),
  .clk(clk)
);
ABS_16b_pe abs_2857 (
  .a(w_8885_8b),
  .b(1'b0),
  .c(w_8888_8b),
  .clk(clk)
);
assign  w_8889_8b  =  w_8888_8b ;
ABS_16b_pe abs_2858 (
  .a(w_886_8b),
  .b(1'b0),
  .c(w_889_8b),
  .clk(clk)
);
assign  w_8890_16b  =  w_8889_8b ;
ADD_16b_pe add_2859 (
  .a(w_8890_16b),
  .b(w_8880_16b),
  .c(w_8891_16b),
  .clk(clk)
);
assign  w_8892_16b  =  r46_w_SAD_2a163_10_16b ;
assign  w_8895_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_8896_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_2860 (
  .a(w_8896_8b),
  .b(w_8895_8b),
  .c(w_8897_8b),
  .clk(clk)
);
assign  w_890_8b  =  w_889_8b ;
ABS_16b_pe abs_2861 (
  .a(w_8897_8b),
  .b(1'b0),
  .c(w_8900_8b),
  .clk(clk)
);
assign  w_8901_8b  =  w_8900_8b ;
assign  w_8902_16b  =  w_8901_8b ;
ADD_16b_pe add_2862 (
  .a(w_8892_16b),
  .b(w_8902_16b),
  .c(w_8903_16b),
  .clk(clk)
);
assign  w_8904_16b  =  r47_w_SAD_2a163_10_16b ;
assign  w_8907_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8908_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_2863 (
  .a(w_8907_8b),
  .b(w_8908_8b),
  .c(w_8909_8b),
  .clk(clk)
);
assign  w_891_16b  =  w_890_8b ;
ABS_16b_pe abs_2864 (
  .a(w_8909_8b),
  .b(1'b0),
  .c(w_8912_8b),
  .clk(clk)
);
assign  w_8913_8b  =  w_8912_8b ;
assign  w_8914_16b  =  w_8913_8b ;
ADD_16b_pe add_2865 (
  .a(w_8904_16b),
  .b(w_8914_16b),
  .c(w_8915_16b),
  .clk(clk)
);
assign  w_8916_16b  =  r48_w_SAD_2a163_10_16b ;
assign  w_8919_8b  =  w_pass_5_stencil_16_6_8b ;
ADD_16b_pe add_2866 (
  .a(w_881_16b),
  .b(w_891_16b),
  .c(w_892_16b),
  .clk(clk)
);
assign  w_8920_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_2867 (
  .a(w_8920_8b),
  .b(w_8919_8b),
  .c(w_8921_8b),
  .clk(clk)
);
ABS_16b_pe abs_2868 (
  .a(w_8921_8b),
  .b(1'b0),
  .c(w_8924_8b),
  .clk(clk)
);
assign  w_8925_8b  =  w_8924_8b ;
assign  w_8926_16b  =  w_8925_8b ;
ADD_16b_pe add_2869 (
  .a(w_8916_16b),
  .b(w_8926_16b),
  .c(w_8927_16b),
  .clk(clk)
);
assign  w_8928_16b  =  r49_w_SAD_2a163_10_16b ;
assign  w_893_16b  =  r19_w_SAD_2a163_0_16b ;
assign  w_8931_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8932_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_2870 (
  .a(w_8931_8b),
  .b(w_8932_8b),
  .c(w_8933_8b),
  .clk(clk)
);
ABS_16b_pe abs_2871 (
  .a(w_8933_8b),
  .b(1'b0),
  .c(w_8936_8b),
  .clk(clk)
);
assign  w_8937_8b  =  w_8936_8b ;
assign  w_8938_16b  =  w_8937_8b ;
ADD_16b_pe add_2872 (
  .a(w_8938_16b),
  .b(w_8928_16b),
  .c(w_8939_16b),
  .clk(clk)
);
assign  w_8940_16b  =  r50_w_SAD_2a163_10_16b ;
assign  w_8943_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8944_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_2873 (
  .a(w_8943_8b),
  .b(w_8944_8b),
  .c(w_8945_8b),
  .clk(clk)
);
ABS_16b_pe abs_2874 (
  .a(w_8945_8b),
  .b(1'b0),
  .c(w_8948_8b),
  .clk(clk)
);
assign  w_8949_8b  =  w_8948_8b ;
assign  w_8950_16b  =  w_8949_8b ;
ADD_16b_pe add_2875 (
  .a(w_8940_16b),
  .b(w_8950_16b),
  .c(w_8951_16b),
  .clk(clk)
);
assign  w_8952_16b  =  r51_w_SAD_2a163_10_16b ;
assign  w_8955_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8956_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_2876 (
  .a(w_8956_8b),
  .b(w_8955_8b),
  .c(w_8957_8b),
  .clk(clk)
);
assign  w_896_8b  =  w_pass_5_stencil_20_2_8b ;
ABS_16b_pe abs_2877 (
  .a(w_8957_8b),
  .b(1'b0),
  .c(w_8960_8b),
  .clk(clk)
);
assign  w_8961_8b  =  w_8960_8b ;
assign  w_8962_16b  =  w_8961_8b ;
ADD_16b_pe add_2878 (
  .a(w_8952_16b),
  .b(w_8962_16b),
  .c(w_8963_16b),
  .clk(clk)
);
assign  w_8964_16b  =  r52_w_SAD_2a163_10_16b ;
assign  w_8967_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8968_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_2879 (
  .a(w_8968_8b),
  .b(w_8967_8b),
  .c(w_8969_8b),
  .clk(clk)
);
assign  w_897_8b  =  w_pass_4_stencil_4_2_8b ;
ABS_16b_pe abs_2880 (
  .a(w_8969_8b),
  .b(1'b0),
  .c(w_8972_8b),
  .clk(clk)
);
assign  w_8973_8b  =  w_8972_8b ;
assign  w_8974_16b  =  w_8973_8b ;
ADD_16b_pe add_2881 (
  .a(w_8974_16b),
  .b(w_8964_16b),
  .c(w_8975_16b),
  .clk(clk)
);
assign  w_8976_16b  =  r53_w_SAD_2a163_10_16b ;
assign  w_8979_8b  =  w_pass_5_stencil_16_6_8b ;
SUB_16b_pe sub_2882 (
  .a(w_896_8b),
  .b(w_897_8b),
  .c(w_898_8b),
  .clk(clk)
);
assign  w_8980_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_2883 (
  .a(w_8979_8b),
  .b(w_8980_8b),
  .c(w_8981_8b),
  .clk(clk)
);
ABS_16b_pe abs_2884 (
  .a(w_8981_8b),
  .b(1'b0),
  .c(w_8984_8b),
  .clk(clk)
);
assign  w_8985_8b  =  w_8984_8b ;
assign  w_8986_16b  =  w_8985_8b ;
ADD_16b_pe add_2885 (
  .a(w_8976_16b),
  .b(w_8986_16b),
  .c(w_8987_16b),
  .clk(clk)
);
assign  w_8988_16b  =  r54_w_SAD_2a163_10_16b ;
assign  w_8991_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_8992_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_2886 (
  .a(w_8992_8b),
  .b(w_8991_8b),
  .c(w_8993_8b),
  .clk(clk)
);
ABS_16b_pe abs_2887 (
  .a(w_8993_8b),
  .b(1'b0),
  .c(w_8996_8b),
  .clk(clk)
);
assign  w_8997_8b  =  w_8996_8b ;
assign  w_8998_16b  =  w_8997_8b ;
ADD_16b_pe add_2888 (
  .a(w_8988_16b),
  .b(w_8998_16b),
  .c(w_8999_16b),
  .clk(clk)
);
assign  w_9000_16b  =  r55_w_SAD_2a163_10_16b ;
assign  w_9003_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9004_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_2889 (
  .a(w_9003_8b),
  .b(w_9004_8b),
  .c(w_9005_8b),
  .clk(clk)
);
ABS_16b_pe abs_2890 (
  .a(w_9005_8b),
  .b(1'b0),
  .c(w_9008_8b),
  .clk(clk)
);
assign  w_9009_8b  =  w_9008_8b ;
ABS_16b_pe abs_2891 (
  .a(w_898_8b),
  .b(1'b0),
  .c(w_901_8b),
  .clk(clk)
);
assign  w_9010_16b  =  w_9009_8b ;
ADD_16b_pe add_2892 (
  .a(w_9000_16b),
  .b(w_9010_16b),
  .c(w_9011_16b),
  .clk(clk)
);
assign  w_9012_16b  =  r56_w_SAD_2a163_10_16b ;
assign  w_9015_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9016_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_2893 (
  .a(w_9015_8b),
  .b(w_9016_8b),
  .c(w_9017_8b),
  .clk(clk)
);
assign  w_902_8b  =  w_901_8b ;
ABS_16b_pe abs_2894 (
  .a(w_9017_8b),
  .b(1'b0),
  .c(w_9020_8b),
  .clk(clk)
);
assign  w_9021_8b  =  w_9020_8b ;
assign  w_9022_16b  =  w_9021_8b ;
ADD_16b_pe add_2895 (
  .a(w_9022_16b),
  .b(w_9012_16b),
  .c(w_9023_16b),
  .clk(clk)
);
assign  w_9024_16b  =  r57_w_SAD_2a163_10_16b ;
assign  w_9027_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9028_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_2896 (
  .a(w_9028_8b),
  .b(w_9027_8b),
  .c(w_9029_8b),
  .clk(clk)
);
assign  w_903_16b  =  w_902_8b ;
ABS_16b_pe abs_2897 (
  .a(w_9029_8b),
  .b(1'b0),
  .c(w_9032_8b),
  .clk(clk)
);
assign  w_9033_8b  =  w_9032_8b ;
assign  w_9034_16b  =  w_9033_8b ;
ADD_16b_pe add_2898 (
  .a(w_9024_16b),
  .b(w_9034_16b),
  .c(w_9035_16b),
  .clk(clk)
);
assign  w_9036_16b  =  r58_w_SAD_2a163_10_16b ;
assign  w_9039_8b  =  w_pass_5_stencil_16_7_8b ;
ADD_16b_pe add_2899 (
  .a(w_903_16b),
  .b(w_893_16b),
  .c(w_904_16b),
  .clk(clk)
);
assign  w_9040_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_2900 (
  .a(w_9039_8b),
  .b(w_9040_8b),
  .c(w_9041_8b),
  .clk(clk)
);
ABS_16b_pe abs_2901 (
  .a(w_9041_8b),
  .b(1'b0),
  .c(w_9044_8b),
  .clk(clk)
);
assign  w_9045_8b  =  w_9044_8b ;
assign  w_9046_16b  =  w_9045_8b ;
ADD_16b_pe add_2902 (
  .a(w_9046_16b),
  .b(w_9036_16b),
  .c(w_9047_16b),
  .clk(clk)
);
assign  w_9048_16b  =  r59_w_SAD_2a163_10_16b ;
assign  w_905_16b  =  r20_w_SAD_2a163_0_16b ;
assign  w_9051_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9052_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_2903 (
  .a(w_9051_8b),
  .b(w_9052_8b),
  .c(w_9053_8b),
  .clk(clk)
);
ABS_16b_pe abs_2904 (
  .a(w_9053_8b),
  .b(1'b0),
  .c(w_9056_8b),
  .clk(clk)
);
assign  w_9057_8b  =  w_9056_8b ;
assign  w_9058_16b  =  w_9057_8b ;
ADD_16b_pe add_2905 (
  .a(w_9058_16b),
  .b(w_9048_16b),
  .c(w_9059_16b),
  .clk(clk)
);
assign  w_9060_16b  =  r60_w_SAD_2a163_10_16b ;
assign  w_9063_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9064_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_2906 (
  .a(w_9064_8b),
  .b(w_9063_8b),
  .c(w_9065_8b),
  .clk(clk)
);
ABS_16b_pe abs_2907 (
  .a(w_9065_8b),
  .b(1'b0),
  .c(w_9068_8b),
  .clk(clk)
);
assign  w_9069_8b  =  w_9068_8b ;
assign  w_9070_16b  =  w_9069_8b ;
ADD_16b_pe add_2908 (
  .a(w_9060_16b),
  .b(w_9070_16b),
  .c(w_9071_16b),
  .clk(clk)
);
assign  w_9072_16b  =  r61_w_SAD_2a163_10_16b ;
assign  w_9075_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9076_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_2909 (
  .a(w_9076_8b),
  .b(w_9075_8b),
  .c(w_9077_8b),
  .clk(clk)
);
assign  w_908_8b  =  w_pass_5_stencil_21_2_8b ;
ABS_16b_pe abs_2910 (
  .a(w_9077_8b),
  .b(1'b0),
  .c(w_9080_8b),
  .clk(clk)
);
assign  w_9081_8b  =  w_9080_8b ;
assign  w_9082_16b  =  w_9081_8b ;
ADD_16b_pe add_2911 (
  .a(w_9082_16b),
  .b(w_9072_16b),
  .c(w_9083_16b),
  .clk(clk)
);
assign  w_9084_16b  =  r62_w_SAD_2a163_10_16b ;
assign  w_9087_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9088_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_2912 (
  .a(w_9088_8b),
  .b(w_9087_8b),
  .c(w_9089_8b),
  .clk(clk)
);
assign  w_909_8b  =  w_pass_4_stencil_5_2_8b ;
ABS_16b_pe abs_2913 (
  .a(w_9089_8b),
  .b(1'b0),
  .c(w_9092_8b),
  .clk(clk)
);
assign  w_9093_8b  =  w_9092_8b ;
assign  w_9094_16b  =  w_9093_8b ;
ADD_16b_pe add_2914 (
  .a(w_9094_16b),
  .b(w_9084_16b),
  .c(w_9095_16b),
  .clk(clk)
);
assign  w_9096_16b  = 1'b0;
assign  w_9099_8b  =  w_pass_5_stencil_16_0_8b ;
SUB_16b_pe sub_2915 (
  .a(w_908_8b),
  .b(w_909_8b),
  .c(w_910_8b),
  .clk(clk)
);
assign  w_9100_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_2916 (
  .a(w_9100_8b),
  .b(w_9099_8b),
  .c(w_9101_8b),
  .clk(clk)
);
ABS_16b_pe abs_2917 (
  .a(w_9101_8b),
  .b(1'b0),
  .c(w_9104_8b),
  .clk(clk)
);
assign  w_9105_8b  =  w_9104_8b ;
assign  w_9106_16b  =  w_9105_8b ;
ADD_16b_pe add_2918 (
  .a(w_9096_16b),
  .b(w_9106_16b),
  .c(w_9107_16b),
  .clk(clk)
);
assign  w_9108_16b  =  r0_w_SAD_2a163_11_16b ;
assign  w_9111_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9112_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_2919 (
  .a(w_9111_8b),
  .b(w_9112_8b),
  .c(w_9113_8b),
  .clk(clk)
);
ABS_16b_pe abs_2920 (
  .a(w_9113_8b),
  .b(1'b0),
  .c(w_9116_8b),
  .clk(clk)
);
assign  w_9117_8b  =  w_9116_8b ;
assign  w_9118_16b  =  w_9117_8b ;
ADD_16b_pe add_2921 (
  .a(w_9118_16b),
  .b(w_9108_16b),
  .c(w_9119_16b),
  .clk(clk)
);
assign  w_9120_16b  =  r1_w_SAD_2a163_11_16b ;
assign  w_9123_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9124_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_2922 (
  .a(w_9124_8b),
  .b(w_9123_8b),
  .c(w_9125_8b),
  .clk(clk)
);
ABS_16b_pe abs_2923 (
  .a(w_9125_8b),
  .b(1'b0),
  .c(w_9128_8b),
  .clk(clk)
);
assign  w_9129_8b  =  w_9128_8b ;
ABS_16b_pe abs_2924 (
  .a(w_910_8b),
  .b(1'b0),
  .c(w_913_8b),
  .clk(clk)
);
assign  w_9130_16b  =  w_9129_8b ;
ADD_16b_pe add_2925 (
  .a(w_9130_16b),
  .b(w_9120_16b),
  .c(w_9131_16b),
  .clk(clk)
);
assign  w_9132_16b  =  r2_w_SAD_2a163_11_16b ;
assign  w_9135_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9136_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_2926 (
  .a(w_9136_8b),
  .b(w_9135_8b),
  .c(w_9137_8b),
  .clk(clk)
);
assign  w_914_8b  =  w_913_8b ;
ABS_16b_pe abs_2927 (
  .a(w_9137_8b),
  .b(1'b0),
  .c(w_9140_8b),
  .clk(clk)
);
assign  w_9141_8b  =  w_9140_8b ;
assign  w_9142_16b  =  w_9141_8b ;
ADD_16b_pe add_2928 (
  .a(w_9132_16b),
  .b(w_9142_16b),
  .c(w_9143_16b),
  .clk(clk)
);
assign  w_9144_16b  =  r3_w_SAD_2a163_11_16b ;
assign  w_9147_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9148_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_2929 (
  .a(w_9147_8b),
  .b(w_9148_8b),
  .c(w_9149_8b),
  .clk(clk)
);
assign  w_915_16b  =  w_914_8b ;
ABS_16b_pe abs_2930 (
  .a(w_9149_8b),
  .b(1'b0),
  .c(w_9152_8b),
  .clk(clk)
);
assign  w_9153_8b  =  w_9152_8b ;
assign  w_9154_16b  =  w_9153_8b ;
ADD_16b_pe add_2931 (
  .a(w_9154_16b),
  .b(w_9144_16b),
  .c(w_9155_16b),
  .clk(clk)
);
assign  w_9156_16b  =  r4_w_SAD_2a163_11_16b ;
assign  w_9159_8b  =  w_pass_5_stencil_16_0_8b ;
ADD_16b_pe add_2932 (
  .a(w_915_16b),
  .b(w_905_16b),
  .c(w_916_16b),
  .clk(clk)
);
assign  w_9160_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_2933 (
  .a(w_9160_8b),
  .b(w_9159_8b),
  .c(w_9161_8b),
  .clk(clk)
);
ABS_16b_pe abs_2934 (
  .a(w_9161_8b),
  .b(1'b0),
  .c(w_9164_8b),
  .clk(clk)
);
assign  w_9165_8b  =  w_9164_8b ;
assign  w_9166_16b  =  w_9165_8b ;
ADD_16b_pe add_2935 (
  .a(w_9156_16b),
  .b(w_9166_16b),
  .c(w_9167_16b),
  .clk(clk)
);
assign  w_9168_16b  =  r5_w_SAD_2a163_11_16b ;
assign  w_917_16b  =  r21_w_SAD_2a163_0_16b ;
assign  w_9171_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9172_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_2936 (
  .a(w_9172_8b),
  .b(w_9171_8b),
  .c(w_9173_8b),
  .clk(clk)
);
ABS_16b_pe abs_2937 (
  .a(w_9173_8b),
  .b(1'b0),
  .c(w_9176_8b),
  .clk(clk)
);
assign  w_9177_8b  =  w_9176_8b ;
assign  w_9178_16b  =  w_9177_8b ;
ADD_16b_pe add_2938 (
  .a(w_9168_16b),
  .b(w_9178_16b),
  .c(w_9179_16b),
  .clk(clk)
);
assign  w_9180_16b  =  r6_w_SAD_2a163_11_16b ;
assign  w_9183_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9184_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_2939 (
  .a(w_9183_8b),
  .b(w_9184_8b),
  .c(w_9185_8b),
  .clk(clk)
);
ABS_16b_pe abs_2940 (
  .a(w_9185_8b),
  .b(1'b0),
  .c(w_9188_8b),
  .clk(clk)
);
assign  w_9189_8b  =  w_9188_8b ;
assign  w_9190_16b  =  w_9189_8b ;
ADD_16b_pe add_2941 (
  .a(w_9190_16b),
  .b(w_9180_16b),
  .c(w_9191_16b),
  .clk(clk)
);
assign  w_9192_16b  =  r7_w_SAD_2a163_11_16b ;
assign  w_9195_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_9196_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_2942 (
  .a(w_9195_8b),
  .b(w_9196_8b),
  .c(w_9197_8b),
  .clk(clk)
);
assign  w_920_8b  =  w_pass_5_stencil_16_2_8b ;
ABS_16b_pe abs_2943 (
  .a(w_9197_8b),
  .b(1'b0),
  .c(w_9200_8b),
  .clk(clk)
);
assign  w_9201_8b  =  w_9200_8b ;
assign  w_9202_16b  =  w_9201_8b ;
ADD_16b_pe add_2944 (
  .a(w_9192_16b),
  .b(w_9202_16b),
  .c(w_9203_16b),
  .clk(clk)
);
assign  w_9204_16b  =  r8_w_SAD_2a163_11_16b ;
assign  w_9207_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_9208_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_2945 (
  .a(w_9208_8b),
  .b(w_9207_8b),
  .c(w_9209_8b),
  .clk(clk)
);
assign  w_921_8b  =  w_pass_4_stencil_6_2_8b ;
ABS_16b_pe abs_2946 (
  .a(w_9209_8b),
  .b(1'b0),
  .c(w_9212_8b),
  .clk(clk)
);
assign  w_9213_8b  =  w_9212_8b ;
assign  w_9214_16b  =  w_9213_8b ;
ADD_16b_pe add_2947 (
  .a(w_9204_16b),
  .b(w_9214_16b),
  .c(w_9215_16b),
  .clk(clk)
);
assign  w_9216_16b  =  r9_w_SAD_2a163_11_16b ;
assign  w_9219_8b  =  w_pass_5_stencil_16_1_8b ;
SUB_16b_pe sub_2948 (
  .a(w_920_8b),
  .b(w_921_8b),
  .c(w_922_8b),
  .clk(clk)
);
assign  w_9220_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_2949 (
  .a(w_9219_8b),
  .b(w_9220_8b),
  .c(w_9221_8b),
  .clk(clk)
);
ABS_16b_pe abs_2950 (
  .a(w_9221_8b),
  .b(1'b0),
  .c(w_9224_8b),
  .clk(clk)
);
assign  w_9225_8b  =  w_9224_8b ;
assign  w_9226_16b  =  w_9225_8b ;
ADD_16b_pe add_2951 (
  .a(w_9216_16b),
  .b(w_9226_16b),
  .c(w_9227_16b),
  .clk(clk)
);
assign  w_9228_16b  =  r10_w_SAD_2a163_11_16b ;
assign  w_9231_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_9232_8b  =  w_pass_4_stencil_3_1_8b ;
SUB_16b_pe sub_2952 (
  .a(w_9231_8b),
  .b(w_9232_8b),
  .c(w_9233_8b),
  .clk(clk)
);
ABS_16b_pe abs_2953 (
  .a(w_9233_8b),
  .b(1'b0),
  .c(w_9236_8b),
  .clk(clk)
);
assign  w_9237_8b  =  w_9236_8b ;
assign  w_9238_16b  =  w_9237_8b ;
ADD_16b_pe add_2954 (
  .a(w_9228_16b),
  .b(w_9238_16b),
  .c(w_9239_16b),
  .clk(clk)
);
assign  w_9240_16b  =  r11_w_SAD_2a163_11_16b ;
assign  w_9243_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_9244_8b  =  w_pass_4_stencil_4_1_8b ;
SUB_16b_pe sub_2955 (
  .a(w_9244_8b),
  .b(w_9243_8b),
  .c(w_9245_8b),
  .clk(clk)
);
ABS_16b_pe abs_2956 (
  .a(w_9245_8b),
  .b(1'b0),
  .c(w_9248_8b),
  .clk(clk)
);
assign  w_9249_8b  =  w_9248_8b ;
ABS_16b_pe abs_2957 (
  .a(w_922_8b),
  .b(1'b0),
  .c(w_925_8b),
  .clk(clk)
);
assign  w_9250_16b  =  w_9249_8b ;
ADD_16b_pe add_2958 (
  .a(w_9240_16b),
  .b(w_9250_16b),
  .c(w_9251_16b),
  .clk(clk)
);
assign  w_9252_16b  =  r12_w_SAD_2a163_11_16b ;
assign  w_9255_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_9256_8b  =  w_pass_4_stencil_5_1_8b ;
SUB_16b_pe sub_2959 (
  .a(w_9256_8b),
  .b(w_9255_8b),
  .c(w_9257_8b),
  .clk(clk)
);
assign  w_926_8b  =  w_925_8b ;
ABS_16b_pe abs_2960 (
  .a(w_9257_8b),
  .b(1'b0),
  .c(w_9260_8b),
  .clk(clk)
);
assign  w_9261_8b  =  w_9260_8b ;
assign  w_9262_16b  =  w_9261_8b ;
ADD_16b_pe add_2961 (
  .a(w_9252_16b),
  .b(w_9262_16b),
  .c(w_9263_16b),
  .clk(clk)
);
assign  w_9264_16b  =  r13_w_SAD_2a163_11_16b ;
assign  w_9267_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_9268_8b  =  w_pass_4_stencil_6_1_8b ;
SUB_16b_pe sub_2962 (
  .a(w_9267_8b),
  .b(w_9268_8b),
  .c(w_9269_8b),
  .clk(clk)
);
assign  w_927_16b  =  w_926_8b ;
ABS_16b_pe abs_2963 (
  .a(w_9269_8b),
  .b(1'b0),
  .c(w_9272_8b),
  .clk(clk)
);
assign  w_9273_8b  =  w_9272_8b ;
assign  w_9274_16b  =  w_9273_8b ;
ADD_16b_pe add_2964 (
  .a(w_9264_16b),
  .b(w_9274_16b),
  .c(w_9275_16b),
  .clk(clk)
);
assign  w_9276_16b  =  r14_w_SAD_2a163_11_16b ;
assign  w_9279_8b  =  w_pass_5_stencil_16_1_8b ;
ADD_16b_pe add_2965 (
  .a(w_917_16b),
  .b(w_927_16b),
  .c(w_928_16b),
  .clk(clk)
);
assign  w_9280_8b  =  w_pass_4_stencil_7_1_8b ;
SUB_16b_pe sub_2966 (
  .a(w_9279_8b),
  .b(w_9280_8b),
  .c(w_9281_8b),
  .clk(clk)
);
ABS_16b_pe abs_2967 (
  .a(w_9281_8b),
  .b(1'b0),
  .c(w_9284_8b),
  .clk(clk)
);
assign  w_9285_8b  =  w_9284_8b ;
assign  w_9286_16b  =  w_9285_8b ;
ADD_16b_pe add_2968 (
  .a(w_9276_16b),
  .b(w_9286_16b),
  .c(w_9287_16b),
  .clk(clk)
);
assign  w_9288_16b  =  r15_w_SAD_2a163_11_16b ;
assign  w_929_16b  =  r22_w_SAD_2a163_0_16b ;
assign  w_9291_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_9292_8b  =  w_pass_4_stencil_0_2_8b ;
SUB_16b_pe sub_2969 (
  .a(w_9292_8b),
  .b(w_9291_8b),
  .c(w_9293_8b),
  .clk(clk)
);
ABS_16b_pe abs_2970 (
  .a(w_9293_8b),
  .b(1'b0),
  .c(w_9296_8b),
  .clk(clk)
);
assign  w_9297_8b  =  w_9296_8b ;
assign  w_9298_16b  =  w_9297_8b ;
ADD_16b_pe add_2971 (
  .a(w_9288_16b),
  .b(w_9298_16b),
  .c(w_9299_16b),
  .clk(clk)
);
assign  w_9300_16b  =  r16_w_SAD_2a163_11_16b ;
assign  w_9303_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_9304_8b  =  w_pass_4_stencil_1_2_8b ;
SUB_16b_pe sub_2972 (
  .a(w_9303_8b),
  .b(w_9304_8b),
  .c(w_9305_8b),
  .clk(clk)
);
ABS_16b_pe abs_2973 (
  .a(w_9305_8b),
  .b(1'b0),
  .c(w_9308_8b),
  .clk(clk)
);
assign  w_9309_8b  =  w_9308_8b ;
assign  w_9310_16b  =  w_9309_8b ;
ADD_16b_pe add_2974 (
  .a(w_9300_16b),
  .b(w_9310_16b),
  .c(w_9311_16b),
  .clk(clk)
);
assign  w_9312_16b  =  r17_w_SAD_2a163_11_16b ;
assign  w_9315_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_9316_8b  =  w_pass_4_stencil_2_2_8b ;
SUB_16b_pe sub_2975 (
  .a(w_9316_8b),
  .b(w_9315_8b),
  .c(w_9317_8b),
  .clk(clk)
);
assign  w_932_8b  =  w_pass_5_stencil_16_2_8b ;
ABS_16b_pe abs_2976 (
  .a(w_9317_8b),
  .b(1'b0),
  .c(w_9320_8b),
  .clk(clk)
);
assign  w_9321_8b  =  w_9320_8b ;
assign  w_9322_16b  =  w_9321_8b ;
ADD_16b_pe add_2977 (
  .a(w_9322_16b),
  .b(w_9312_16b),
  .c(w_9323_16b),
  .clk(clk)
);
assign  w_9324_16b  =  r18_w_SAD_2a163_11_16b ;
assign  w_9327_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_9328_8b  =  w_pass_4_stencil_3_2_8b ;
SUB_16b_pe sub_2978 (
  .a(w_9327_8b),
  .b(w_9328_8b),
  .c(w_9329_8b),
  .clk(clk)
);
assign  w_933_8b  =  w_pass_4_stencil_7_2_8b ;
ABS_16b_pe abs_2979 (
  .a(w_9329_8b),
  .b(1'b0),
  .c(w_9332_8b),
  .clk(clk)
);
assign  w_9333_8b  =  w_9332_8b ;
assign  w_9334_16b  =  w_9333_8b ;
ADD_16b_pe add_2980 (
  .a(w_9334_16b),
  .b(w_9324_16b),
  .c(w_9335_16b),
  .clk(clk)
);
assign  w_9336_16b  =  r19_w_SAD_2a163_11_16b ;
assign  w_9339_8b  =  w_pass_5_stencil_16_2_8b ;
SUB_16b_pe sub_2981 (
  .a(w_933_8b),
  .b(w_932_8b),
  .c(w_934_8b),
  .clk(clk)
);
assign  w_9340_8b  =  w_pass_4_stencil_4_2_8b ;
SUB_16b_pe sub_2982 (
  .a(w_9340_8b),
  .b(w_9339_8b),
  .c(w_9341_8b),
  .clk(clk)
);
ABS_16b_pe abs_2983 (
  .a(w_9341_8b),
  .b(1'b0),
  .c(w_9344_8b),
  .clk(clk)
);
assign  w_9345_8b  =  w_9344_8b ;
assign  w_9346_16b  =  w_9345_8b ;
ADD_16b_pe add_2984 (
  .a(w_9346_16b),
  .b(w_9336_16b),
  .c(w_9347_16b),
  .clk(clk)
);
assign  w_9348_16b  =  r20_w_SAD_2a163_11_16b ;
assign  w_9351_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_9352_8b  =  w_pass_4_stencil_5_2_8b ;
SUB_16b_pe sub_2985 (
  .a(w_9352_8b),
  .b(w_9351_8b),
  .c(w_9353_8b),
  .clk(clk)
);
ABS_16b_pe abs_2986 (
  .a(w_9353_8b),
  .b(1'b0),
  .c(w_9356_8b),
  .clk(clk)
);
assign  w_9357_8b  =  w_9356_8b ;
assign  w_9358_16b  =  w_9357_8b ;
ADD_16b_pe add_2987 (
  .a(w_9358_16b),
  .b(w_9348_16b),
  .c(w_9359_16b),
  .clk(clk)
);
assign  w_9360_16b  =  r21_w_SAD_2a163_11_16b ;
assign  w_9363_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_9364_8b  =  w_pass_4_stencil_6_2_8b ;
SUB_16b_pe sub_2988 (
  .a(w_9363_8b),
  .b(w_9364_8b),
  .c(w_9365_8b),
  .clk(clk)
);
ABS_16b_pe abs_2989 (
  .a(w_9365_8b),
  .b(1'b0),
  .c(w_9368_8b),
  .clk(clk)
);
assign  w_9369_8b  =  w_9368_8b ;
ABS_16b_pe abs_2990 (
  .a(w_934_8b),
  .b(1'b0),
  .c(w_937_8b),
  .clk(clk)
);
assign  w_9370_16b  =  w_9369_8b ;
ADD_16b_pe add_2991 (
  .a(w_9370_16b),
  .b(w_9360_16b),
  .c(w_9371_16b),
  .clk(clk)
);
assign  w_9372_16b  =  r22_w_SAD_2a163_11_16b ;
assign  w_9375_8b  =  w_pass_5_stencil_16_2_8b ;
assign  w_9376_8b  =  w_pass_4_stencil_7_2_8b ;
SUB_16b_pe sub_2992 (
  .a(w_9375_8b),
  .b(w_9376_8b),
  .c(w_9377_8b),
  .clk(clk)
);
assign  w_938_8b  =  w_937_8b ;
ABS_16b_pe abs_2993 (
  .a(w_9377_8b),
  .b(1'b0),
  .c(w_9380_8b),
  .clk(clk)
);
assign  w_9381_8b  =  w_9380_8b ;
assign  w_9382_16b  =  w_9381_8b ;
ADD_16b_pe add_2994 (
  .a(w_9382_16b),
  .b(w_9372_16b),
  .c(w_9383_16b),
  .clk(clk)
);
assign  w_9384_16b  =  r23_w_SAD_2a163_11_16b ;
assign  w_9387_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9388_8b  =  w_pass_4_stencil_0_3_8b ;
SUB_16b_pe sub_2995 (
  .a(w_9388_8b),
  .b(w_9387_8b),
  .c(w_9389_8b),
  .clk(clk)
);
assign  w_939_16b  =  w_938_8b ;
ABS_16b_pe abs_2996 (
  .a(w_9389_8b),
  .b(1'b0),
  .c(w_9392_8b),
  .clk(clk)
);
assign  w_9393_8b  =  w_9392_8b ;
assign  w_9394_16b  =  w_9393_8b ;
ADD_16b_pe add_2997 (
  .a(w_9394_16b),
  .b(w_9384_16b),
  .c(w_9395_16b),
  .clk(clk)
);
assign  w_9396_16b  =  r24_w_SAD_2a163_11_16b ;
assign  w_9399_8b  =  w_pass_5_stencil_16_3_8b ;
ADD_16b_pe add_2998 (
  .a(w_929_16b),
  .b(w_939_16b),
  .c(w_940_16b),
  .clk(clk)
);
assign  w_9400_8b  =  w_pass_4_stencil_1_3_8b ;
SUB_16b_pe sub_2999 (
  .a(w_9399_8b),
  .b(w_9400_8b),
  .c(w_9401_8b),
  .clk(clk)
);
ABS_16b_pe abs_3000 (
  .a(w_9401_8b),
  .b(1'b0),
  .c(w_9404_8b),
  .clk(clk)
);
assign  w_9405_8b  =  w_9404_8b ;
assign  w_9406_16b  =  w_9405_8b ;
ADD_16b_pe add_3001 (
  .a(w_9396_16b),
  .b(w_9406_16b),
  .c(w_9407_16b),
  .clk(clk)
);
assign  w_9408_16b  =  r25_w_SAD_2a163_11_16b ;
assign  w_941_16b  =  r23_w_SAD_2a163_0_16b ;
assign  w_9411_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9412_8b  =  w_pass_4_stencil_2_3_8b ;
SUB_16b_pe sub_3002 (
  .a(w_9411_8b),
  .b(w_9412_8b),
  .c(w_9413_8b),
  .clk(clk)
);
ABS_16b_pe abs_3003 (
  .a(w_9413_8b),
  .b(1'b0),
  .c(w_9416_8b),
  .clk(clk)
);
assign  w_9417_8b  =  w_9416_8b ;
assign  w_9418_16b  =  w_9417_8b ;
ADD_16b_pe add_3004 (
  .a(w_9418_16b),
  .b(w_9408_16b),
  .c(w_9419_16b),
  .clk(clk)
);
assign  w_9420_16b  =  r26_w_SAD_2a163_11_16b ;
assign  w_9423_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9424_8b  =  w_pass_4_stencil_3_3_8b ;
SUB_16b_pe sub_3005 (
  .a(w_9424_8b),
  .b(w_9423_8b),
  .c(w_9425_8b),
  .clk(clk)
);
ABS_16b_pe abs_3006 (
  .a(w_9425_8b),
  .b(1'b0),
  .c(w_9428_8b),
  .clk(clk)
);
assign  w_9429_8b  =  w_9428_8b ;
assign  w_943_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9430_16b  =  w_9429_8b ;
ADD_16b_pe add_3007 (
  .a(w_9420_16b),
  .b(w_9430_16b),
  .c(w_9431_16b),
  .clk(clk)
);
assign  w_9432_16b  =  r27_w_SAD_2a163_11_16b ;
assign  w_9435_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9436_8b  =  w_pass_4_stencil_4_3_8b ;
SUB_16b_pe sub_3008 (
  .a(w_9436_8b),
  .b(w_9435_8b),
  .c(w_9437_8b),
  .clk(clk)
);
assign  w_944_8b  =  w_pass_4_stencil_0_3_8b ;
ABS_16b_pe abs_3009 (
  .a(w_9437_8b),
  .b(1'b0),
  .c(w_9440_8b),
  .clk(clk)
);
assign  w_9441_8b  =  w_9440_8b ;
assign  w_9442_16b  =  w_9441_8b ;
ADD_16b_pe add_3010 (
  .a(w_9442_16b),
  .b(w_9432_16b),
  .c(w_9443_16b),
  .clk(clk)
);
assign  w_9444_16b  =  r28_w_SAD_2a163_11_16b ;
assign  w_9447_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9448_8b  =  w_pass_4_stencil_5_3_8b ;
SUB_16b_pe sub_3011 (
  .a(w_9448_8b),
  .b(w_9447_8b),
  .c(w_9449_8b),
  .clk(clk)
);
SUB_16b_pe sub_3012 (
  .a(w_944_8b),
  .b(w_943_8b),
  .c(w_945_8b),
  .clk(clk)
);
ABS_16b_pe abs_3013 (
  .a(w_9449_8b),
  .b(1'b0),
  .c(w_9452_8b),
  .clk(clk)
);
assign  w_9453_8b  =  w_9452_8b ;
assign  w_9454_16b  =  w_9453_8b ;
ADD_16b_pe add_3014 (
  .a(w_9454_16b),
  .b(w_9444_16b),
  .c(w_9455_16b),
  .clk(clk)
);
assign  w_9456_16b  =  r29_w_SAD_2a163_11_16b ;
assign  w_9459_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9460_8b  =  w_pass_4_stencil_6_3_8b ;
SUB_16b_pe sub_3015 (
  .a(w_9460_8b),
  .b(w_9459_8b),
  .c(w_9461_8b),
  .clk(clk)
);
ABS_16b_pe abs_3016 (
  .a(w_9461_8b),
  .b(1'b0),
  .c(w_9464_8b),
  .clk(clk)
);
assign  w_9465_8b  =  w_9464_8b ;
assign  w_9466_16b  =  w_9465_8b ;
ADD_16b_pe add_3017 (
  .a(w_9456_16b),
  .b(w_9466_16b),
  .c(w_9467_16b),
  .clk(clk)
);
assign  w_9468_16b  =  r30_w_SAD_2a163_11_16b ;
assign  w_9471_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9472_8b  =  w_pass_4_stencil_7_3_8b ;
SUB_16b_pe sub_3018 (
  .a(w_9472_8b),
  .b(w_9471_8b),
  .c(w_9473_8b),
  .clk(clk)
);
ABS_16b_pe abs_3019 (
  .a(w_9473_8b),
  .b(1'b0),
  .c(w_9476_8b),
  .clk(clk)
);
assign  w_9477_8b  =  w_9476_8b ;
assign  w_9478_16b  =  w_9477_8b ;
ADD_16b_pe add_3020 (
  .a(w_9468_16b),
  .b(w_9478_16b),
  .c(w_9479_16b),
  .clk(clk)
);
ABS_16b_pe abs_3021 (
  .a(w_945_8b),
  .b(1'b0),
  .c(w_948_8b),
  .clk(clk)
);
assign  w_9480_16b  =  r31_w_SAD_2a163_11_16b ;
assign  w_9483_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_9484_8b  =  w_pass_4_stencil_0_4_8b ;
SUB_16b_pe sub_3022 (
  .a(w_9484_8b),
  .b(w_9483_8b),
  .c(w_9485_8b),
  .clk(clk)
);
ABS_16b_pe abs_3023 (
  .a(w_9485_8b),
  .b(1'b0),
  .c(w_9488_8b),
  .clk(clk)
);
assign  w_9489_8b  =  w_9488_8b ;
assign  w_949_8b  =  w_948_8b ;
assign  w_9490_16b  =  w_9489_8b ;
ADD_16b_pe add_3024 (
  .a(w_9490_16b),
  .b(w_9480_16b),
  .c(w_9491_16b),
  .clk(clk)
);
assign  w_9492_16b  =  r32_w_SAD_2a163_11_16b ;
assign  w_9495_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_9496_8b  =  w_pass_4_stencil_1_4_8b ;
SUB_16b_pe sub_3025 (
  .a(w_9495_8b),
  .b(w_9496_8b),
  .c(w_9497_8b),
  .clk(clk)
);
assign  w_950_16b  =  w_949_8b ;
ABS_16b_pe abs_3026 (
  .a(w_9497_8b),
  .b(1'b0),
  .c(w_9500_8b),
  .clk(clk)
);
assign  w_9501_8b  =  w_9500_8b ;
assign  w_9502_16b  =  w_9501_8b ;
ADD_16b_pe add_3027 (
  .a(w_9492_16b),
  .b(w_9502_16b),
  .c(w_9503_16b),
  .clk(clk)
);
assign  w_9504_16b  =  r33_w_SAD_2a163_11_16b ;
assign  w_9507_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_9508_8b  =  w_pass_4_stencil_2_4_8b ;
SUB_16b_pe sub_3028 (
  .a(w_9507_8b),
  .b(w_9508_8b),
  .c(w_9509_8b),
  .clk(clk)
);
ADD_16b_pe add_3029 (
  .a(w_950_16b),
  .b(w_941_16b),
  .c(w_951_16b),
  .clk(clk)
);
ABS_16b_pe abs_3030 (
  .a(w_9509_8b),
  .b(1'b0),
  .c(w_9512_8b),
  .clk(clk)
);
assign  w_9513_8b  =  w_9512_8b ;
assign  w_9514_16b  =  w_9513_8b ;
ADD_16b_pe add_3031 (
  .a(w_9514_16b),
  .b(w_9504_16b),
  .c(w_9515_16b),
  .clk(clk)
);
assign  w_9516_16b  =  r34_w_SAD_2a163_11_16b ;
assign  w_9519_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_952_16b  =  r24_w_SAD_2a163_0_16b ;
assign  w_9520_8b  =  w_pass_4_stencil_3_4_8b ;
SUB_16b_pe sub_3032 (
  .a(w_9520_8b),
  .b(w_9519_8b),
  .c(w_9521_8b),
  .clk(clk)
);
ABS_16b_pe abs_3033 (
  .a(w_9521_8b),
  .b(1'b0),
  .c(w_9524_8b),
  .clk(clk)
);
assign  w_9525_8b  =  w_9524_8b ;
assign  w_9526_16b  =  w_9525_8b ;
ADD_16b_pe add_3034 (
  .a(w_9516_16b),
  .b(w_9526_16b),
  .c(w_9527_16b),
  .clk(clk)
);
assign  w_9528_16b  =  r35_w_SAD_2a163_11_16b ;
assign  w_9531_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_9532_8b  =  w_pass_4_stencil_4_4_8b ;
SUB_16b_pe sub_3035 (
  .a(w_9532_8b),
  .b(w_9531_8b),
  .c(w_9533_8b),
  .clk(clk)
);
ABS_16b_pe abs_3036 (
  .a(w_9533_8b),
  .b(1'b0),
  .c(w_9536_8b),
  .clk(clk)
);
assign  w_9537_8b  =  w_9536_8b ;
assign  w_9538_16b  =  w_9537_8b ;
ADD_16b_pe add_3037 (
  .a(w_9528_16b),
  .b(w_9538_16b),
  .c(w_9539_16b),
  .clk(clk)
);
assign  w_9540_16b  =  r36_w_SAD_2a163_11_16b ;
assign  w_9543_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_9544_8b  =  w_pass_4_stencil_5_4_8b ;
SUB_16b_pe sub_3038 (
  .a(w_9543_8b),
  .b(w_9544_8b),
  .c(w_9545_8b),
  .clk(clk)
);
ABS_16b_pe abs_3039 (
  .a(w_9545_8b),
  .b(1'b0),
  .c(w_9548_8b),
  .clk(clk)
);
assign  w_9549_8b  =  w_9548_8b ;
assign  w_955_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9550_16b  =  w_9549_8b ;
ADD_16b_pe add_3040 (
  .a(w_9550_16b),
  .b(w_9540_16b),
  .c(w_9551_16b),
  .clk(clk)
);
assign  w_9552_16b  =  r37_w_SAD_2a163_11_16b ;
assign  w_9555_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_9556_8b  =  w_pass_4_stencil_6_4_8b ;
SUB_16b_pe sub_3041 (
  .a(w_9555_8b),
  .b(w_9556_8b),
  .c(w_9557_8b),
  .clk(clk)
);
assign  w_956_8b  =  w_pass_4_stencil_1_3_8b ;
ABS_16b_pe abs_3042 (
  .a(w_9557_8b),
  .b(1'b0),
  .c(w_9560_8b),
  .clk(clk)
);
assign  w_9561_8b  =  w_9560_8b ;
assign  w_9562_16b  =  w_9561_8b ;
ADD_16b_pe add_3043 (
  .a(w_9552_16b),
  .b(w_9562_16b),
  .c(w_9563_16b),
  .clk(clk)
);
assign  w_9564_16b  =  r38_w_SAD_2a163_11_16b ;
assign  w_9567_8b  =  w_pass_5_stencil_16_4_8b ;
assign  w_9568_8b  =  w_pass_4_stencil_7_4_8b ;
SUB_16b_pe sub_3044 (
  .a(w_9567_8b),
  .b(w_9568_8b),
  .c(w_9569_8b),
  .clk(clk)
);
SUB_16b_pe sub_3045 (
  .a(w_955_8b),
  .b(w_956_8b),
  .c(w_957_8b),
  .clk(clk)
);
ABS_16b_pe abs_3046 (
  .a(w_9569_8b),
  .b(1'b0),
  .c(w_9572_8b),
  .clk(clk)
);
assign  w_9573_8b  =  w_9572_8b ;
assign  w_9574_16b  =  w_9573_8b ;
ADD_16b_pe add_3047 (
  .a(w_9564_16b),
  .b(w_9574_16b),
  .c(w_9575_16b),
  .clk(clk)
);
assign  w_9576_16b  =  r39_w_SAD_2a163_11_16b ;
assign  w_9579_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_9580_8b  =  w_pass_4_stencil_0_5_8b ;
SUB_16b_pe sub_3048 (
  .a(w_9579_8b),
  .b(w_9580_8b),
  .c(w_9581_8b),
  .clk(clk)
);
ABS_16b_pe abs_3049 (
  .a(w_9581_8b),
  .b(1'b0),
  .c(w_9584_8b),
  .clk(clk)
);
assign  w_9585_8b  =  w_9584_8b ;
assign  w_9586_16b  =  w_9585_8b ;
ADD_16b_pe add_3050 (
  .a(w_9586_16b),
  .b(w_9576_16b),
  .c(w_9587_16b),
  .clk(clk)
);
assign  w_9588_16b  =  r40_w_SAD_2a163_11_16b ;
assign  w_9591_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_9592_8b  =  w_pass_4_stencil_1_5_8b ;
SUB_16b_pe sub_3051 (
  .a(w_9591_8b),
  .b(w_9592_8b),
  .c(w_9593_8b),
  .clk(clk)
);
ABS_16b_pe abs_3052 (
  .a(w_9593_8b),
  .b(1'b0),
  .c(w_9596_8b),
  .clk(clk)
);
assign  w_9597_8b  =  w_9596_8b ;
assign  w_9598_16b  =  w_9597_8b ;
ADD_16b_pe add_3053 (
  .a(w_9598_16b),
  .b(w_9588_16b),
  .c(w_9599_16b),
  .clk(clk)
);
ABS_16b_pe abs_3054 (
  .a(w_957_8b),
  .b(1'b0),
  .c(w_960_8b),
  .clk(clk)
);
assign  w_9600_16b  =  r41_w_SAD_2a163_11_16b ;
assign  w_9603_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_9604_8b  =  w_pass_4_stencil_2_5_8b ;
SUB_16b_pe sub_3055 (
  .a(w_9604_8b),
  .b(w_9603_8b),
  .c(w_9605_8b),
  .clk(clk)
);
ABS_16b_pe abs_3056 (
  .a(w_9605_8b),
  .b(1'b0),
  .c(w_9608_8b),
  .clk(clk)
);
assign  w_9609_8b  =  w_9608_8b ;
assign  w_961_8b  =  w_960_8b ;
assign  w_9610_16b  =  w_9609_8b ;
ADD_16b_pe add_3057 (
  .a(w_9600_16b),
  .b(w_9610_16b),
  .c(w_9611_16b),
  .clk(clk)
);
assign  w_9612_16b  =  r42_w_SAD_2a163_11_16b ;
assign  w_9615_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_9616_8b  =  w_pass_4_stencil_3_5_8b ;
SUB_16b_pe sub_3058 (
  .a(w_9616_8b),
  .b(w_9615_8b),
  .c(w_9617_8b),
  .clk(clk)
);
assign  w_962_16b  =  w_961_8b ;
ABS_16b_pe abs_3059 (
  .a(w_9617_8b),
  .b(1'b0),
  .c(w_9620_8b),
  .clk(clk)
);
assign  w_9621_8b  =  w_9620_8b ;
assign  w_9622_16b  =  w_9621_8b ;
ADD_16b_pe add_3060 (
  .a(w_9612_16b),
  .b(w_9622_16b),
  .c(w_9623_16b),
  .clk(clk)
);
assign  w_9624_16b  =  r43_w_SAD_2a163_11_16b ;
assign  w_9627_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_9628_8b  =  w_pass_4_stencil_4_5_8b ;
SUB_16b_pe sub_3061 (
  .a(w_9627_8b),
  .b(w_9628_8b),
  .c(w_9629_8b),
  .clk(clk)
);
ADD_16b_pe add_3062 (
  .a(w_962_16b),
  .b(w_952_16b),
  .c(w_963_16b),
  .clk(clk)
);
ABS_16b_pe abs_3063 (
  .a(w_9629_8b),
  .b(1'b0),
  .c(w_9632_8b),
  .clk(clk)
);
assign  w_9633_8b  =  w_9632_8b ;
assign  w_9634_16b  =  w_9633_8b ;
ADD_16b_pe add_3064 (
  .a(w_9624_16b),
  .b(w_9634_16b),
  .c(w_9635_16b),
  .clk(clk)
);
assign  w_9636_16b  =  r44_w_SAD_2a163_11_16b ;
assign  w_9639_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_964_16b  =  r25_w_SAD_2a163_0_16b ;
assign  w_9640_8b  =  w_pass_4_stencil_5_5_8b ;
SUB_16b_pe sub_3065 (
  .a(w_9639_8b),
  .b(w_9640_8b),
  .c(w_9641_8b),
  .clk(clk)
);
ABS_16b_pe abs_3066 (
  .a(w_9641_8b),
  .b(1'b0),
  .c(w_9644_8b),
  .clk(clk)
);
assign  w_9645_8b  =  w_9644_8b ;
assign  w_9646_16b  =  w_9645_8b ;
ADD_16b_pe add_3067 (
  .a(w_9636_16b),
  .b(w_9646_16b),
  .c(w_9647_16b),
  .clk(clk)
);
assign  w_9648_16b  =  r45_w_SAD_2a163_11_16b ;
assign  w_9651_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_9652_8b  =  w_pass_4_stencil_6_5_8b ;
SUB_16b_pe sub_3068 (
  .a(w_9652_8b),
  .b(w_9651_8b),
  .c(w_9653_8b),
  .clk(clk)
);
ABS_16b_pe abs_3069 (
  .a(w_9653_8b),
  .b(1'b0),
  .c(w_9656_8b),
  .clk(clk)
);
assign  w_9657_8b  =  w_9656_8b ;
assign  w_9658_16b  =  w_9657_8b ;
ADD_16b_pe add_3070 (
  .a(w_9648_16b),
  .b(w_9658_16b),
  .c(w_9659_16b),
  .clk(clk)
);
assign  w_9660_16b  =  r46_w_SAD_2a163_11_16b ;
assign  w_9663_8b  =  w_pass_5_stencil_16_5_8b ;
assign  w_9664_8b  =  w_pass_4_stencil_7_5_8b ;
SUB_16b_pe sub_3071 (
  .a(w_9663_8b),
  .b(w_9664_8b),
  .c(w_9665_8b),
  .clk(clk)
);
ABS_16b_pe abs_3072 (
  .a(w_9665_8b),
  .b(1'b0),
  .c(w_9668_8b),
  .clk(clk)
);
assign  w_9669_8b  =  w_9668_8b ;
assign  w_967_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9670_16b  =  w_9669_8b ;
ADD_16b_pe add_3073 (
  .a(w_9660_16b),
  .b(w_9670_16b),
  .c(w_9671_16b),
  .clk(clk)
);
assign  w_9672_16b  =  r47_w_SAD_2a163_11_16b ;
assign  w_9675_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_9676_8b  =  w_pass_4_stencil_0_6_8b ;
SUB_16b_pe sub_3074 (
  .a(w_9675_8b),
  .b(w_9676_8b),
  .c(w_9677_8b),
  .clk(clk)
);
assign  w_968_8b  =  w_pass_4_stencil_2_3_8b ;
ABS_16b_pe abs_3075 (
  .a(w_9677_8b),
  .b(1'b0),
  .c(w_9680_8b),
  .clk(clk)
);
assign  w_9681_8b  =  w_9680_8b ;
assign  w_9682_16b  =  w_9681_8b ;
ADD_16b_pe add_3076 (
  .a(w_9672_16b),
  .b(w_9682_16b),
  .c(w_9683_16b),
  .clk(clk)
);
assign  w_9684_16b  =  r48_w_SAD_2a163_11_16b ;
assign  w_9687_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_9688_8b  =  w_pass_4_stencil_1_6_8b ;
SUB_16b_pe sub_3077 (
  .a(w_9687_8b),
  .b(w_9688_8b),
  .c(w_9689_8b),
  .clk(clk)
);
SUB_16b_pe sub_3078 (
  .a(w_967_8b),
  .b(w_968_8b),
  .c(w_969_8b),
  .clk(clk)
);
ABS_16b_pe abs_3079 (
  .a(w_9689_8b),
  .b(1'b0),
  .c(w_9692_8b),
  .clk(clk)
);
assign  w_9693_8b  =  w_9692_8b ;
assign  w_9694_16b  =  w_9693_8b ;
ADD_16b_pe add_3080 (
  .a(w_9684_16b),
  .b(w_9694_16b),
  .c(w_9695_16b),
  .clk(clk)
);
assign  w_9696_16b  =  r49_w_SAD_2a163_11_16b ;
assign  w_9699_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_9700_8b  =  w_pass_4_stencil_2_6_8b ;
SUB_16b_pe sub_3081 (
  .a(w_9700_8b),
  .b(w_9699_8b),
  .c(w_9701_8b),
  .clk(clk)
);
ABS_16b_pe abs_3082 (
  .a(w_9701_8b),
  .b(1'b0),
  .c(w_9704_8b),
  .clk(clk)
);
assign  w_9705_8b  =  w_9704_8b ;
assign  w_9706_16b  =  w_9705_8b ;
ADD_16b_pe add_3083 (
  .a(w_9696_16b),
  .b(w_9706_16b),
  .c(w_9707_16b),
  .clk(clk)
);
assign  w_9708_16b  =  r50_w_SAD_2a163_11_16b ;
assign  w_9711_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_9712_8b  =  w_pass_4_stencil_3_6_8b ;
SUB_16b_pe sub_3084 (
  .a(w_9712_8b),
  .b(w_9711_8b),
  .c(w_9713_8b),
  .clk(clk)
);
ABS_16b_pe abs_3085 (
  .a(w_9713_8b),
  .b(1'b0),
  .c(w_9716_8b),
  .clk(clk)
);
assign  w_9717_8b  =  w_9716_8b ;
assign  w_9718_16b  =  w_9717_8b ;
ADD_16b_pe add_3086 (
  .a(w_9718_16b),
  .b(w_9708_16b),
  .c(w_9719_16b),
  .clk(clk)
);
ABS_16b_pe abs_3087 (
  .a(w_969_8b),
  .b(1'b0),
  .c(w_972_8b),
  .clk(clk)
);
assign  w_9720_16b  =  r51_w_SAD_2a163_11_16b ;
assign  w_9723_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_9724_8b  =  w_pass_4_stencil_4_6_8b ;
SUB_16b_pe sub_3088 (
  .a(w_9723_8b),
  .b(w_9724_8b),
  .c(w_9725_8b),
  .clk(clk)
);
ABS_16b_pe abs_3089 (
  .a(w_9725_8b),
  .b(1'b0),
  .c(w_9728_8b),
  .clk(clk)
);
assign  w_9729_8b  =  w_9728_8b ;
assign  w_973_8b  =  w_972_8b ;
assign  w_9730_16b  =  w_9729_8b ;
ADD_16b_pe add_3090 (
  .a(w_9730_16b),
  .b(w_9720_16b),
  .c(w_9731_16b),
  .clk(clk)
);
assign  w_9732_16b  =  r52_w_SAD_2a163_11_16b ;
assign  w_9735_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_9736_8b  =  w_pass_4_stencil_5_6_8b ;
SUB_16b_pe sub_3091 (
  .a(w_9735_8b),
  .b(w_9736_8b),
  .c(w_9737_8b),
  .clk(clk)
);
assign  w_974_16b  =  w_973_8b ;
ABS_16b_pe abs_3092 (
  .a(w_9737_8b),
  .b(1'b0),
  .c(w_9740_8b),
  .clk(clk)
);
assign  w_9741_8b  =  w_9740_8b ;
assign  w_9742_16b  =  w_9741_8b ;
ADD_16b_pe add_3093 (
  .a(w_9742_16b),
  .b(w_9732_16b),
  .c(w_9743_16b),
  .clk(clk)
);
assign  w_9744_16b  =  r53_w_SAD_2a163_11_16b ;
assign  w_9747_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_9748_8b  =  w_pass_4_stencil_6_6_8b ;
SUB_16b_pe sub_3094 (
  .a(w_9748_8b),
  .b(w_9747_8b),
  .c(w_9749_8b),
  .clk(clk)
);
ADD_16b_pe add_3095 (
  .a(w_964_16b),
  .b(w_974_16b),
  .c(w_975_16b),
  .clk(clk)
);
ABS_16b_pe abs_3096 (
  .a(w_9749_8b),
  .b(1'b0),
  .c(w_9752_8b),
  .clk(clk)
);
assign  w_9753_8b  =  w_9752_8b ;
assign  w_9754_16b  =  w_9753_8b ;
ADD_16b_pe add_3097 (
  .a(w_9754_16b),
  .b(w_9744_16b),
  .c(w_9755_16b),
  .clk(clk)
);
assign  w_9756_16b  =  r54_w_SAD_2a163_11_16b ;
assign  w_9759_8b  =  w_pass_5_stencil_16_6_8b ;
assign  w_976_16b  =  r26_w_SAD_2a163_0_16b ;
assign  w_9760_8b  =  w_pass_4_stencil_7_6_8b ;
SUB_16b_pe sub_3098 (
  .a(w_9760_8b),
  .b(w_9759_8b),
  .c(w_9761_8b),
  .clk(clk)
);
ABS_16b_pe abs_3099 (
  .a(w_9761_8b),
  .b(1'b0),
  .c(w_9764_8b),
  .clk(clk)
);
assign  w_9765_8b  =  w_9764_8b ;
assign  w_9766_16b  =  w_9765_8b ;
ADD_16b_pe add_3100 (
  .a(w_9766_16b),
  .b(w_9756_16b),
  .c(w_9767_16b),
  .clk(clk)
);
assign  w_9768_16b  =  r55_w_SAD_2a163_11_16b ;
assign  w_9771_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9772_8b  =  w_pass_4_stencil_0_7_8b ;
SUB_16b_pe sub_3101 (
  .a(w_9771_8b),
  .b(w_9772_8b),
  .c(w_9773_8b),
  .clk(clk)
);
ABS_16b_pe abs_3102 (
  .a(w_9773_8b),
  .b(1'b0),
  .c(w_9776_8b),
  .clk(clk)
);
assign  w_9777_8b  =  w_9776_8b ;
assign  w_9778_16b  =  w_9777_8b ;
ADD_16b_pe add_3103 (
  .a(w_9778_16b),
  .b(w_9768_16b),
  .c(w_9779_16b),
  .clk(clk)
);
assign  w_9780_16b  =  r56_w_SAD_2a163_11_16b ;
assign  w_9783_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9784_8b  =  w_pass_4_stencil_1_7_8b ;
SUB_16b_pe sub_3104 (
  .a(w_9784_8b),
  .b(w_9783_8b),
  .c(w_9785_8b),
  .clk(clk)
);
ABS_16b_pe abs_3105 (
  .a(w_9785_8b),
  .b(1'b0),
  .c(w_9788_8b),
  .clk(clk)
);
assign  w_9789_8b  =  w_9788_8b ;
assign  w_979_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9790_16b  =  w_9789_8b ;
ADD_16b_pe add_3106 (
  .a(w_9790_16b),
  .b(w_9780_16b),
  .c(w_9791_16b),
  .clk(clk)
);
assign  w_9792_16b  =  r57_w_SAD_2a163_11_16b ;
assign  w_9795_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9796_8b  =  w_pass_4_stencil_2_7_8b ;
SUB_16b_pe sub_3107 (
  .a(w_9796_8b),
  .b(w_9795_8b),
  .c(w_9797_8b),
  .clk(clk)
);
assign  w_980_8b  =  w_pass_4_stencil_3_3_8b ;
ABS_16b_pe abs_3108 (
  .a(w_9797_8b),
  .b(1'b0),
  .c(w_9800_8b),
  .clk(clk)
);
assign  w_9801_8b  =  w_9800_8b ;
assign  w_9802_16b  =  w_9801_8b ;
ADD_16b_pe add_3109 (
  .a(w_9792_16b),
  .b(w_9802_16b),
  .c(w_9803_16b),
  .clk(clk)
);
assign  w_9804_16b  =  r58_w_SAD_2a163_11_16b ;
assign  w_9807_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9808_8b  =  w_pass_4_stencil_3_7_8b ;
SUB_16b_pe sub_3110 (
  .a(w_9808_8b),
  .b(w_9807_8b),
  .c(w_9809_8b),
  .clk(clk)
);
SUB_16b_pe sub_3111 (
  .a(w_979_8b),
  .b(w_980_8b),
  .c(w_981_8b),
  .clk(clk)
);
ABS_16b_pe abs_3112 (
  .a(w_9809_8b),
  .b(1'b0),
  .c(w_9812_8b),
  .clk(clk)
);
assign  w_9813_8b  =  w_9812_8b ;
assign  w_9814_16b  =  w_9813_8b ;
ADD_16b_pe add_3113 (
  .a(w_9814_16b),
  .b(w_9804_16b),
  .c(w_9815_16b),
  .clk(clk)
);
assign  w_9816_16b  =  r59_w_SAD_2a163_11_16b ;
assign  w_9819_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9820_8b  =  w_pass_4_stencil_4_7_8b ;
SUB_16b_pe sub_3114 (
  .a(w_9820_8b),
  .b(w_9819_8b),
  .c(w_9821_8b),
  .clk(clk)
);
ABS_16b_pe abs_3115 (
  .a(w_9821_8b),
  .b(1'b0),
  .c(w_9824_8b),
  .clk(clk)
);
assign  w_9825_8b  =  w_9824_8b ;
assign  w_9826_16b  =  w_9825_8b ;
ADD_16b_pe add_3116 (
  .a(w_9816_16b),
  .b(w_9826_16b),
  .c(w_9827_16b),
  .clk(clk)
);
assign  w_9828_16b  =  r60_w_SAD_2a163_11_16b ;
assign  w_9831_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9832_8b  =  w_pass_4_stencil_5_7_8b ;
SUB_16b_pe sub_3117 (
  .a(w_9832_8b),
  .b(w_9831_8b),
  .c(w_9833_8b),
  .clk(clk)
);
ABS_16b_pe abs_3118 (
  .a(w_9833_8b),
  .b(1'b0),
  .c(w_9836_8b),
  .clk(clk)
);
assign  w_9837_8b  =  w_9836_8b ;
assign  w_9838_16b  =  w_9837_8b ;
ADD_16b_pe add_3119 (
  .a(w_9828_16b),
  .b(w_9838_16b),
  .c(w_9839_16b),
  .clk(clk)
);
ABS_16b_pe abs_3120 (
  .a(w_981_8b),
  .b(1'b0),
  .c(w_984_8b),
  .clk(clk)
);
assign  w_9840_16b  =  r61_w_SAD_2a163_11_16b ;
assign  w_9843_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9844_8b  =  w_pass_4_stencil_6_7_8b ;
SUB_16b_pe sub_3121 (
  .a(w_9844_8b),
  .b(w_9843_8b),
  .c(w_9845_8b),
  .clk(clk)
);
ABS_16b_pe abs_3122 (
  .a(w_9845_8b),
  .b(1'b0),
  .c(w_9848_8b),
  .clk(clk)
);
assign  w_9849_8b  =  w_9848_8b ;
assign  w_985_8b  =  w_984_8b ;
assign  w_9850_16b  =  w_9849_8b ;
ADD_16b_pe add_3123 (
  .a(w_9850_16b),
  .b(w_9840_16b),
  .c(w_9851_16b),
  .clk(clk)
);
assign  w_9852_16b  =  r62_w_SAD_2a163_11_16b ;
assign  w_9855_8b  =  w_pass_5_stencil_16_7_8b ;
assign  w_9856_8b  =  w_pass_4_stencil_7_7_8b ;
SUB_16b_pe sub_3124 (
  .a(w_9855_8b),
  .b(w_9856_8b),
  .c(w_9857_8b),
  .clk(clk)
);
assign  w_986_16b  =  w_985_8b ;
ABS_16b_pe abs_3125 (
  .a(w_9857_8b),
  .b(1'b0),
  .c(w_9860_8b),
  .clk(clk)
);
assign  w_9861_8b  =  w_9860_8b ;
assign  w_9862_16b  =  w_9861_8b ;
ADD_16b_pe add_3126 (
  .a(w_9852_16b),
  .b(w_9862_16b),
  .c(w_9863_16b),
  .clk(clk)
);
assign  w_9864_16b  = 1'b0;
assign  w_9867_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9868_8b  =  w_pass_4_stencil_0_0_8b ;
SUB_16b_pe sub_3127 (
  .a(w_9867_8b),
  .b(w_9868_8b),
  .c(w_9869_8b),
  .clk(clk)
);
ADD_16b_pe add_3128 (
  .a(w_986_16b),
  .b(w_976_16b),
  .c(w_987_16b),
  .clk(clk)
);
ABS_16b_pe abs_3129 (
  .a(w_9869_8b),
  .b(1'b0),
  .c(w_9872_8b),
  .clk(clk)
);
assign  w_9873_8b  =  w_9872_8b ;
assign  w_9874_16b  =  w_9873_8b ;
ADD_16b_pe add_3130 (
  .a(w_9864_16b),
  .b(w_9874_16b),
  .c(w_9875_16b),
  .clk(clk)
);
assign  w_9876_16b  =  r0_w_SAD_2a163_12_16b ;
assign  w_9879_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_988_16b  =  r27_w_SAD_2a163_0_16b ;
assign  w_9880_8b  =  w_pass_4_stencil_1_0_8b ;
SUB_16b_pe sub_3131 (
  .a(w_9880_8b),
  .b(w_9879_8b),
  .c(w_9881_8b),
  .clk(clk)
);
ABS_16b_pe abs_3132 (
  .a(w_9881_8b),
  .b(1'b0),
  .c(w_9884_8b),
  .clk(clk)
);
assign  w_9885_8b  =  w_9884_8b ;
assign  w_9886_16b  =  w_9885_8b ;
ADD_16b_pe add_3133 (
  .a(w_9876_16b),
  .b(w_9886_16b),
  .c(w_9887_16b),
  .clk(clk)
);
assign  w_9888_16b  =  r1_w_SAD_2a163_12_16b ;
assign  w_9891_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9892_8b  =  w_pass_4_stencil_2_0_8b ;
SUB_16b_pe sub_3134 (
  .a(w_9891_8b),
  .b(w_9892_8b),
  .c(w_9893_8b),
  .clk(clk)
);
ABS_16b_pe abs_3135 (
  .a(w_9893_8b),
  .b(1'b0),
  .c(w_9896_8b),
  .clk(clk)
);
assign  w_9897_8b  =  w_9896_8b ;
assign  w_9898_16b  =  w_9897_8b ;
ADD_16b_pe add_3136 (
  .a(w_9888_16b),
  .b(w_9898_16b),
  .c(w_9899_16b),
  .clk(clk)
);
assign  w_9900_16b  =  r2_w_SAD_2a163_12_16b ;
assign  w_9903_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9904_8b  =  w_pass_4_stencil_3_0_8b ;
SUB_16b_pe sub_3137 (
  .a(w_9903_8b),
  .b(w_9904_8b),
  .c(w_9905_8b),
  .clk(clk)
);
ABS_16b_pe abs_3138 (
  .a(w_9905_8b),
  .b(1'b0),
  .c(w_9908_8b),
  .clk(clk)
);
assign  w_9909_8b  =  w_9908_8b ;
assign  w_991_8b  =  w_pass_5_stencil_16_3_8b ;
assign  w_9910_16b  =  w_9909_8b ;
ADD_16b_pe add_3139 (
  .a(w_9910_16b),
  .b(w_9900_16b),
  .c(w_9911_16b),
  .clk(clk)
);
assign  w_9912_16b  =  r3_w_SAD_2a163_12_16b ;
assign  w_9915_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9916_8b  =  w_pass_4_stencil_4_0_8b ;
SUB_16b_pe sub_3140 (
  .a(w_9915_8b),
  .b(w_9916_8b),
  .c(w_9917_8b),
  .clk(clk)
);
assign  w_992_8b  =  w_pass_4_stencil_4_3_8b ;
ABS_16b_pe abs_3141 (
  .a(w_9917_8b),
  .b(1'b0),
  .c(w_9920_8b),
  .clk(clk)
);
assign  w_9921_8b  =  w_9920_8b ;
assign  w_9922_16b  =  w_9921_8b ;
ADD_16b_pe add_3142 (
  .a(w_9912_16b),
  .b(w_9922_16b),
  .c(w_9923_16b),
  .clk(clk)
);
assign  w_9924_16b  =  r4_w_SAD_2a163_12_16b ;
assign  w_9927_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9928_8b  =  w_pass_4_stencil_5_0_8b ;
SUB_16b_pe sub_3143 (
  .a(w_9927_8b),
  .b(w_9928_8b),
  .c(w_9929_8b),
  .clk(clk)
);
SUB_16b_pe sub_3144 (
  .a(w_991_8b),
  .b(w_992_8b),
  .c(w_993_8b),
  .clk(clk)
);
ABS_16b_pe abs_3145 (
  .a(w_9929_8b),
  .b(1'b0),
  .c(w_9932_8b),
  .clk(clk)
);
assign  w_9933_8b  =  w_9932_8b ;
assign  w_9934_16b  =  w_9933_8b ;
ADD_16b_pe add_3146 (
  .a(w_9924_16b),
  .b(w_9934_16b),
  .c(w_9935_16b),
  .clk(clk)
);
assign  w_9936_16b  =  r5_w_SAD_2a163_12_16b ;
assign  w_9939_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9940_8b  =  w_pass_4_stencil_6_0_8b ;
SUB_16b_pe sub_3147 (
  .a(w_9939_8b),
  .b(w_9940_8b),
  .c(w_9941_8b),
  .clk(clk)
);
ABS_16b_pe abs_3148 (
  .a(w_9941_8b),
  .b(1'b0),
  .c(w_9944_8b),
  .clk(clk)
);
assign  w_9945_8b  =  w_9944_8b ;
assign  w_9946_16b  =  w_9945_8b ;
ADD_16b_pe add_3149 (
  .a(w_9946_16b),
  .b(w_9936_16b),
  .c(w_9947_16b),
  .clk(clk)
);
assign  w_9948_16b  =  r6_w_SAD_2a163_12_16b ;
assign  w_9951_8b  =  w_pass_5_stencil_16_0_8b ;
assign  w_9952_8b  =  w_pass_4_stencil_7_0_8b ;
SUB_16b_pe sub_3150 (
  .a(w_9951_8b),
  .b(w_9952_8b),
  .c(w_9953_8b),
  .clk(clk)
);
ABS_16b_pe abs_3151 (
  .a(w_9953_8b),
  .b(1'b0),
  .c(w_9956_8b),
  .clk(clk)
);
assign  w_9957_8b  =  w_9956_8b ;
assign  w_9958_16b  =  w_9957_8b ;
ADD_16b_pe add_3152 (
  .a(w_9958_16b),
  .b(w_9948_16b),
  .c(w_9959_16b),
  .clk(clk)
);
ABS_16b_pe abs_3153 (
  .a(w_993_8b),
  .b(1'b0),
  .c(w_996_8b),
  .clk(clk)
);
assign  w_9960_16b  =  r7_w_SAD_2a163_12_16b ;
assign  w_9963_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_9964_8b  =  w_pass_4_stencil_0_1_8b ;
SUB_16b_pe sub_3154 (
  .a(w_9963_8b),
  .b(w_9964_8b),
  .c(w_9965_8b),
  .clk(clk)
);
ABS_16b_pe abs_3155 (
  .a(w_9965_8b),
  .b(1'b0),
  .c(w_9968_8b),
  .clk(clk)
);
assign  w_9969_8b  =  w_9968_8b ;
assign  w_997_8b  =  w_996_8b ;
assign  w_9970_16b  =  w_9969_8b ;
ADD_16b_pe add_3156 (
  .a(w_9960_16b),
  .b(w_9970_16b),
  .c(w_9971_16b),
  .clk(clk)
);
assign  w_9972_16b  =  r8_w_SAD_2a163_12_16b ;
assign  w_9975_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_9976_8b  =  w_pass_4_stencil_1_1_8b ;
SUB_16b_pe sub_3157 (
  .a(w_9976_8b),
  .b(w_9975_8b),
  .c(w_9977_8b),
  .clk(clk)
);
assign  w_998_16b  =  w_997_8b ;
ABS_16b_pe abs_3158 (
  .a(w_9977_8b),
  .b(1'b0),
  .c(w_9980_8b),
  .clk(clk)
);
assign  w_9981_8b  =  w_9980_8b ;
assign  w_9982_16b  =  w_9981_8b ;
ADD_16b_pe add_3159 (
  .a(w_9982_16b),
  .b(w_9972_16b),
  .c(w_9983_16b),
  .clk(clk)
);
assign  w_9984_16b  =  r9_w_SAD_2a163_12_16b ;
assign  w_9987_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_9988_8b  =  w_pass_4_stencil_2_1_8b ;
SUB_16b_pe sub_3160 (
  .a(w_9988_8b),
  .b(w_9987_8b),
  .c(w_9989_8b),
  .clk(clk)
);
ADD_16b_pe add_3161 (
  .a(w_998_16b),
  .b(w_988_16b),
  .c(w_999_16b),
  .clk(clk)
);
ABS_16b_pe abs_3162 (
  .a(w_9989_8b),
  .b(1'b0),
  .c(w_9992_8b),
  .clk(clk)
);
assign  w_9993_8b  =  w_9992_8b ;
assign  w_9994_16b  =  w_9993_8b ;
ADD_16b_pe add_3163 (
  .a(w_9994_16b),
  .b(w_9984_16b),
  .c(w_9995_16b),
  .clk(clk)
);
assign  w_9996_16b  =  r10_w_SAD_2a163_12_16b ;
assign  w_9999_8b  =  w_pass_5_stencil_16_1_8b ;
assign  w_SAD_2a163_0_16b  = 1'b0;
assign  w_SAD_2a163_1_16b  = 1'b0;
assign  w_SAD_2a163_10_16b  = 1'b0;
assign  w_SAD_2a163_11_16b  = 1'b0;
assign  w_SAD_2a163_12_16b  = 1'b0;
assign  w_SAD_2a163_13_16b  = 1'b0;
assign  w_SAD_2a163_14_16b  = 1'b0;
assign  w_SAD_2a163_15_16b  = 1'b0;
assign  w_SAD_2a163_2_16b  = 1'b0;
assign  w_SAD_2a163_3_16b  = 1'b0;
assign  w_SAD_2a163_4_16b  = 1'b0;
assign  w_SAD_2a163_5_16b  = 1'b0;
assign  w_SAD_2a163_6_16b  = 1'b0;
assign  w_SAD_2a163_7_16b  = 1'b0;
assign  w_SAD_2a163_8_16b  = 1'b0;
assign  w_SAD_2a163_9_16b  = 1'b0;
assign  w_hw_output_2_stencil_0_0_16b  =  w_13113_8b ;
assign  w_hw_output_2_stencil_packed_8b  =  w_hw_output_2_stencil_0_0_16b ;
assign  w_offset_2_0a160_0_16b  = 1'b0;
assign  w_offset_2_1a159_0_16b  = 1'b0;
assign  w_p2_offset_l1_0a162_0_16b  = 1'b0;
assign  w_p2_offset_l1_0a162_1_16b  = 1'b0;
assign  w_p2_offset_l1_0a162_2_16b  = 1'b0;
assign  w_p2_offset_l1_0a162_3_16b  = 1'b0;
assign  w_p2_offset_l1_1a161_0_16b  = 1'b0;
assign  w_p2_offset_l1_1a161_1_16b  = 1'b0;
assign  w_p2_offset_l1_1a161_2_16b  = 1'b0;
assign  w_p2_offset_l1_1a161_3_16b  = 1'b0;

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

    

module MUX_16b_pe(a,b,s,c,clk);
  input  a;
  input  b;
  input s;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( s ),
        .out16b(c)
    );

endmodule

    

module ABS_16b_pe(a,b,c,clk);
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

    

module LT_16b_pe(a,b,c,clk);
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

    



module LB_8_71_1_8bit_False (
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
    out80,
    out81,
    out82,
    out83,
    out84,
    out85,
    out86,
    out87,
    out88,
    out89,
    out90,
    out91,
    out92,
    out93,
    out94,
    out95,
    out96,
    out97,
    out98,
    out99,
    out100,
    out101,
    out102,
    out103,
    out104,
    out105,
    out106,
    out107,
    out108,
    out109,
    out110,
    out111,
    out112,
    out113,
    out114,
    out115,
    out116,
    out117,
    out118,
    out119,
    out120,
    out121,
    out122,
    out123,
    out124,
    out125,
    out126,
    out127,
    out128,
    out129,
    out130,
    out131,
    out132,
    out133,
    out134,
    out135,
    out136,
    out137,
    out138,
    out139,
    out140,
    out141,
    out142,
    out143,
    out144,
    out145,
    out146,
    out147,
    out148,
    out149,
    out150,
    out151,
    out152,
    out153,
    out154,
    out155,
    out156,
    out157,
    out158,
    out159,
    out160,
    out161,
    out162,
    out163,
    out164,
    out165,
    out166,
    out167,
    out168,
    out169,
    out170,
    out171,
    out172,
    out173,
    out174,
    out175,
    out176,
    out177,
    out178,
    out179,
    out180,
    out181,
    out182,
    out183,
    out184,
    out185,
    out186,
    out187,
    out188,
    out189,
    out190,
    out191,
    out192,
    out193,
    out194,
    out195,
    out196,
    out197,
    out198,
    out199,
    out200,
    out201,
    out202,
    out203,
    out204,
    out205,
    out206,
    out207,
    out208,
    out209,
    out210,
    out211,
    out212,
    out213,
    out214,
    out215,
    out216,
    out217,
    out218,
    out219,
    out220,
    out221,
    out222,
    out223,
    out224,
    out225,
    out226,
    out227,
    out228,
    out229,
    out230,
    out231,
    out232,
    out233,
    out234,
    out235,
    out236,
    out237,
    out238,
    out239,
    out240,
    out241,
    out242,
    out243,
    out244,
    out245,
    out246,
    out247,
    out248,
    out249,
    out250,
    out251,
    out252,
    out253,
    out254,
    out255,
    out256,
    out257,
    out258,
    out259,
    out260,
    out261,
    out262,
    out263,
    out264,
    out265,
    out266,
    out267,
    out268,
    out269,
    out270,
    out271,
    out272,
    out273,
    out274,
    out275,
    out276,
    out277,
    out278,
    out279,
    out280,
    out281,
    out282,
    out283,
    out284,
    out285,
    out286,
    out287,
    out288,
    out289,
    out290,
    out291,
    out292,
    out293,
    out294,
    out295,
    out296,
    out297,
    out298,
    out299,
    out300,
    out301,
    out302,
    out303,
    out304,
    out305,
    out306,
    out307,
    out308,
    out309,
    out310,
    out311,
    out312,
    out313,
    out314,
    out315,
    out316,
    out317,
    out318,
    out319,
    out320,
    out321,
    out322,
    out323,
    out324,
    out325,
    out326,
    out327,
    out328,
    out329,
    out330,
    out331,
    out332,
    out333,
    out334,
    out335,
    out336,
    out337,
    out338,
    out339,
    out340,
    out341,
    out342,
    out343,
    out344,
    out345,
    out346,
    out347,
    out348,
    out349,
    out350,
    out351,
    out352,
    out353,
    out354,
    out355,
    out356,
    out357,
    out358,
    out359,
    out360,
    out361,
    out362,
    out363,
    out364,
    out365,
    out366,
    out367,
    out368,
    out369,
    out370,
    out371,
    out372,
    out373,
    out374,
    out375,
    out376,
    out377,
    out378,
    out379,
    out380,
    out381,
    out382,
    out383,
    out384,
    out385,
    out386,
    out387,
    out388,
    out389,
    out390,
    out391,
    out392,
    out393,
    out394,
    out395,
    out396,
    out397,
    out398,
    out399,
    out400,
    out401,
    out402,
    out403,
    out404,
    out405,
    out406,
    out407,
    out408,
    out409,
    out410,
    out411,
    out412,
    out413,
    out414,
    out415,
    out416,
    out417,
    out418,
    out419,
    out420,
    out421,
    out422,
    out423,
    out424,
    out425,
    out426,
    out427,
    out428,
    out429,
    out430,
    out431,
    out432,
    out433,
    out434,
    out435,
    out436,
    out437,
    out438,
    out439,
    out440,
    out441,
    out442,
    out443,
    out444,
    out445,
    out446,
    out447,
    out448,
    out449,
    out450,
    out451,
    out452,
    out453,
    out454,
    out455,
    out456,
    out457,
    out458,
    out459,
    out460,
    out461,
    out462,
    out463,
    out464,
    out465,
    out466,
    out467,
    out468,
    out469,
    out470,
    out471,
    out472,
    out473,
    out474,
    out475,
    out476,
    out477,
    out478,
    out479,
    out480,
    out481,
    out482,
    out483,
    out484,
    out485,
    out486,
    out487,
    out488,
    out489,
    out490,
    out491,
    out492,
    out493,
    out494,
    out495,
    out496,
    out497,
    out498,
    out499,
    out500,
    out501,
    out502,
    out503,
    out504,
    out505,
    out506,
    out507,
    out508,
    out509,
    out510,
    out511,
    out512,
    out513,
    out514,
    out515,
    out516,
    out517,
    out518,
    out519,
    out520,
    out521,
    out522,
    out523,
    out524,
    out525,
    out526,
    out527,
    out528,
    out529,
    out530,
    out531,
    out532,
    out533,
    out534,
    out535,
    out536,
    out537,
    out538,
    out539,
    out540,
    out541,
    out542,
    out543,
    out544,
    out545,
    out546,
    out547,
    out548,
    out549,
    out550,
    out551,
    out552,
    out553,
    out554,
    out555,
    out556,
    out557,
    out558,
    out559,
    out560,
    out561,
    out562,
    out563,
    out564,
    out565,
    out566,
    out567
);

// (8, 71, 1, 8, False)
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
    output out81;
    output out82;
    output out83;
    output out84;
    output out85;
    output out86;
    output out87;
    output out88;
    output out89;
    output out90;
    output out91;
    output out92;
    output out93;
    output out94;
    output out95;
    output out96;
    output out97;
    output out98;
    output out99;
    output out100;
    output out101;
    output out102;
    output out103;
    output out104;
    output out105;
    output out106;
    output out107;
    output out108;
    output out109;
    output out110;
    output out111;
    output out112;
    output out113;
    output out114;
    output out115;
    output out116;
    output out117;
    output out118;
    output out119;
    output out120;
    output out121;
    output out122;
    output out123;
    output out124;
    output out125;
    output out126;
    output out127;
    output out128;
    output out129;
    output out130;
    output out131;
    output out132;
    output out133;
    output out134;
    output out135;
    output out136;
    output out137;
    output out138;
    output out139;
    output out140;
    output out141;
    output out142;
    output out143;
    output out144;
    output out145;
    output out146;
    output out147;
    output out148;
    output out149;
    output out150;
    output out151;
    output out152;
    output out153;
    output out154;
    output out155;
    output out156;
    output out157;
    output out158;
    output out159;
    output out160;
    output out161;
    output out162;
    output out163;
    output out164;
    output out165;
    output out166;
    output out167;
    output out168;
    output out169;
    output out170;
    output out171;
    output out172;
    output out173;
    output out174;
    output out175;
    output out176;
    output out177;
    output out178;
    output out179;
    output out180;
    output out181;
    output out182;
    output out183;
    output out184;
    output out185;
    output out186;
    output out187;
    output out188;
    output out189;
    output out190;
    output out191;
    output out192;
    output out193;
    output out194;
    output out195;
    output out196;
    output out197;
    output out198;
    output out199;
    output out200;
    output out201;
    output out202;
    output out203;
    output out204;
    output out205;
    output out206;
    output out207;
    output out208;
    output out209;
    output out210;
    output out211;
    output out212;
    output out213;
    output out214;
    output out215;
    output out216;
    output out217;
    output out218;
    output out219;
    output out220;
    output out221;
    output out222;
    output out223;
    output out224;
    output out225;
    output out226;
    output out227;
    output out228;
    output out229;
    output out230;
    output out231;
    output out232;
    output out233;
    output out234;
    output out235;
    output out236;
    output out237;
    output out238;
    output out239;
    output out240;
    output out241;
    output out242;
    output out243;
    output out244;
    output out245;
    output out246;
    output out247;
    output out248;
    output out249;
    output out250;
    output out251;
    output out252;
    output out253;
    output out254;
    output out255;
    output out256;
    output out257;
    output out258;
    output out259;
    output out260;
    output out261;
    output out262;
    output out263;
    output out264;
    output out265;
    output out266;
    output out267;
    output out268;
    output out269;
    output out270;
    output out271;
    output out272;
    output out273;
    output out274;
    output out275;
    output out276;
    output out277;
    output out278;
    output out279;
    output out280;
    output out281;
    output out282;
    output out283;
    output out284;
    output out285;
    output out286;
    output out287;
    output out288;
    output out289;
    output out290;
    output out291;
    output out292;
    output out293;
    output out294;
    output out295;
    output out296;
    output out297;
    output out298;
    output out299;
    output out300;
    output out301;
    output out302;
    output out303;
    output out304;
    output out305;
    output out306;
    output out307;
    output out308;
    output out309;
    output out310;
    output out311;
    output out312;
    output out313;
    output out314;
    output out315;
    output out316;
    output out317;
    output out318;
    output out319;
    output out320;
    output out321;
    output out322;
    output out323;
    output out324;
    output out325;
    output out326;
    output out327;
    output out328;
    output out329;
    output out330;
    output out331;
    output out332;
    output out333;
    output out334;
    output out335;
    output out336;
    output out337;
    output out338;
    output out339;
    output out340;
    output out341;
    output out342;
    output out343;
    output out344;
    output out345;
    output out346;
    output out347;
    output out348;
    output out349;
    output out350;
    output out351;
    output out352;
    output out353;
    output out354;
    output out355;
    output out356;
    output out357;
    output out358;
    output out359;
    output out360;
    output out361;
    output out362;
    output out363;
    output out364;
    output out365;
    output out366;
    output out367;
    output out368;
    output out369;
    output out370;
    output out371;
    output out372;
    output out373;
    output out374;
    output out375;
    output out376;
    output out377;
    output out378;
    output out379;
    output out380;
    output out381;
    output out382;
    output out383;
    output out384;
    output out385;
    output out386;
    output out387;
    output out388;
    output out389;
    output out390;
    output out391;
    output out392;
    output out393;
    output out394;
    output out395;
    output out396;
    output out397;
    output out398;
    output out399;
    output out400;
    output out401;
    output out402;
    output out403;
    output out404;
    output out405;
    output out406;
    output out407;
    output out408;
    output out409;
    output out410;
    output out411;
    output out412;
    output out413;
    output out414;
    output out415;
    output out416;
    output out417;
    output out418;
    output out419;
    output out420;
    output out421;
    output out422;
    output out423;
    output out424;
    output out425;
    output out426;
    output out427;
    output out428;
    output out429;
    output out430;
    output out431;
    output out432;
    output out433;
    output out434;
    output out435;
    output out436;
    output out437;
    output out438;
    output out439;
    output out440;
    output out441;
    output out442;
    output out443;
    output out444;
    output out445;
    output out446;
    output out447;
    output out448;
    output out449;
    output out450;
    output out451;
    output out452;
    output out453;
    output out454;
    output out455;
    output out456;
    output out457;
    output out458;
    output out459;
    output out460;
    output out461;
    output out462;
    output out463;
    output out464;
    output out465;
    output out466;
    output out467;
    output out468;
    output out469;
    output out470;
    output out471;
    output out472;
    output out473;
    output out474;
    output out475;
    output out476;
    output out477;
    output out478;
    output out479;
    output out480;
    output out481;
    output out482;
    output out483;
    output out484;
    output out485;
    output out486;
    output out487;
    output out488;
    output out489;
    output out490;
    output out491;
    output out492;
    output out493;
    output out494;
    output out495;
    output out496;
    output out497;
    output out498;
    output out499;
    output out500;
    output out501;
    output out502;
    output out503;
    output out504;
    output out505;
    output out506;
    output out507;
    output out508;
    output out509;
    output out510;
    output out511;
    output out512;
    output out513;
    output out514;
    output out515;
    output out516;
    output out517;
    output out518;
    output out519;
    output out520;
    output out521;
    output out522;
    output out523;
    output out524;
    output out525;
    output out526;
    output out527;
    output out528;
    output out529;
    output out530;
    output out531;
    output out532;
    output out533;
    output out534;
    output out535;
    output out536;
    output out537;
    output out538;
    output out539;
    output out540;
    output out541;
    output out542;
    output out543;
    output out544;
    output out545;
    output out546;
    output out547;
    output out548;
    output out549;
    output out550;
    output out551;
    output out552;
    output out553;
    output out554;
    output out555;
    output out556;
    output out557;
    output out558;
    output out559;
    output out560;
    output out561;
    output out562;
    output out563;
    output out564;
    output out565;
    output out566;
    output out567;

//##// (8, 71, 1, 8, False)
    LB_base_8_71_8bit  LB_base_inst0 (
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
        .out_0_9(out9),
        .out_0_10(out10),
        .out_0_11(out11),
        .out_0_12(out12),
        .out_0_13(out13),
        .out_0_14(out14),
        .out_0_15(out15),
        .out_0_16(out16),
        .out_0_17(out17),
        .out_0_18(out18),
        .out_0_19(out19),
        .out_0_20(out20),
        .out_0_21(out21),
        .out_0_22(out22),
        .out_0_23(out23),
        .out_0_24(out24),
        .out_0_25(out25),
        .out_0_26(out26),
        .out_0_27(out27),
        .out_0_28(out28),
        .out_0_29(out29),
        .out_0_30(out30),
        .out_0_31(out31),
        .out_0_32(out32),
        .out_0_33(out33),
        .out_0_34(out34),
        .out_0_35(out35),
        .out_0_36(out36),
        .out_0_37(out37),
        .out_0_38(out38),
        .out_0_39(out39),
        .out_0_40(out40),
        .out_0_41(out41),
        .out_0_42(out42),
        .out_0_43(out43),
        .out_0_44(out44),
        .out_0_45(out45),
        .out_0_46(out46),
        .out_0_47(out47),
        .out_0_48(out48),
        .out_0_49(out49),
        .out_0_50(out50),
        .out_0_51(out51),
        .out_0_52(out52),
        .out_0_53(out53),
        .out_0_54(out54),
        .out_0_55(out55),
        .out_0_56(out56),
        .out_0_57(out57),
        .out_0_58(out58),
        .out_0_59(out59),
        .out_0_60(out60),
        .out_0_61(out61),
        .out_0_62(out62),
        .out_0_63(out63),
        .out_0_64(out64),
        .out_0_65(out65),
        .out_0_66(out66),
        .out_0_67(out67),
        .out_0_68(out68),
        .out_0_69(out69),
        .out_0_70(out70),
        .out_1_0(out71),
        .out_1_1(out72),
        .out_1_2(out73),
        .out_1_3(out74),
        .out_1_4(out75),
        .out_1_5(out76),
        .out_1_6(out77),
        .out_1_7(out78),
        .out_1_8(out79),
        .out_1_9(out80),
        .out_1_10(out81),
        .out_1_11(out82),
        .out_1_12(out83),
        .out_1_13(out84),
        .out_1_14(out85),
        .out_1_15(out86),
        .out_1_16(out87),
        .out_1_17(out88),
        .out_1_18(out89),
        .out_1_19(out90),
        .out_1_20(out91),
        .out_1_21(out92),
        .out_1_22(out93),
        .out_1_23(out94),
        .out_1_24(out95),
        .out_1_25(out96),
        .out_1_26(out97),
        .out_1_27(out98),
        .out_1_28(out99),
        .out_1_29(out100),
        .out_1_30(out101),
        .out_1_31(out102),
        .out_1_32(out103),
        .out_1_33(out104),
        .out_1_34(out105),
        .out_1_35(out106),
        .out_1_36(out107),
        .out_1_37(out108),
        .out_1_38(out109),
        .out_1_39(out110),
        .out_1_40(out111),
        .out_1_41(out112),
        .out_1_42(out113),
        .out_1_43(out114),
        .out_1_44(out115),
        .out_1_45(out116),
        .out_1_46(out117),
        .out_1_47(out118),
        .out_1_48(out119),
        .out_1_49(out120),
        .out_1_50(out121),
        .out_1_51(out122),
        .out_1_52(out123),
        .out_1_53(out124),
        .out_1_54(out125),
        .out_1_55(out126),
        .out_1_56(out127),
        .out_1_57(out128),
        .out_1_58(out129),
        .out_1_59(out130),
        .out_1_60(out131),
        .out_1_61(out132),
        .out_1_62(out133),
        .out_1_63(out134),
        .out_1_64(out135),
        .out_1_65(out136),
        .out_1_66(out137),
        .out_1_67(out138),
        .out_1_68(out139),
        .out_1_69(out140),
        .out_1_70(out141),
        .out_2_0(out142),
        .out_2_1(out143),
        .out_2_2(out144),
        .out_2_3(out145),
        .out_2_4(out146),
        .out_2_5(out147),
        .out_2_6(out148),
        .out_2_7(out149),
        .out_2_8(out150),
        .out_2_9(out151),
        .out_2_10(out152),
        .out_2_11(out153),
        .out_2_12(out154),
        .out_2_13(out155),
        .out_2_14(out156),
        .out_2_15(out157),
        .out_2_16(out158),
        .out_2_17(out159),
        .out_2_18(out160),
        .out_2_19(out161),
        .out_2_20(out162),
        .out_2_21(out163),
        .out_2_22(out164),
        .out_2_23(out165),
        .out_2_24(out166),
        .out_2_25(out167),
        .out_2_26(out168),
        .out_2_27(out169),
        .out_2_28(out170),
        .out_2_29(out171),
        .out_2_30(out172),
        .out_2_31(out173),
        .out_2_32(out174),
        .out_2_33(out175),
        .out_2_34(out176),
        .out_2_35(out177),
        .out_2_36(out178),
        .out_2_37(out179),
        .out_2_38(out180),
        .out_2_39(out181),
        .out_2_40(out182),
        .out_2_41(out183),
        .out_2_42(out184),
        .out_2_43(out185),
        .out_2_44(out186),
        .out_2_45(out187),
        .out_2_46(out188),
        .out_2_47(out189),
        .out_2_48(out190),
        .out_2_49(out191),
        .out_2_50(out192),
        .out_2_51(out193),
        .out_2_52(out194),
        .out_2_53(out195),
        .out_2_54(out196),
        .out_2_55(out197),
        .out_2_56(out198),
        .out_2_57(out199),
        .out_2_58(out200),
        .out_2_59(out201),
        .out_2_60(out202),
        .out_2_61(out203),
        .out_2_62(out204),
        .out_2_63(out205),
        .out_2_64(out206),
        .out_2_65(out207),
        .out_2_66(out208),
        .out_2_67(out209),
        .out_2_68(out210),
        .out_2_69(out211),
        .out_2_70(out212),
        .out_3_0(out213),
        .out_3_1(out214),
        .out_3_2(out215),
        .out_3_3(out216),
        .out_3_4(out217),
        .out_3_5(out218),
        .out_3_6(out219),
        .out_3_7(out220),
        .out_3_8(out221),
        .out_3_9(out222),
        .out_3_10(out223),
        .out_3_11(out224),
        .out_3_12(out225),
        .out_3_13(out226),
        .out_3_14(out227),
        .out_3_15(out228),
        .out_3_16(out229),
        .out_3_17(out230),
        .out_3_18(out231),
        .out_3_19(out232),
        .out_3_20(out233),
        .out_3_21(out234),
        .out_3_22(out235),
        .out_3_23(out236),
        .out_3_24(out237),
        .out_3_25(out238),
        .out_3_26(out239),
        .out_3_27(out240),
        .out_3_28(out241),
        .out_3_29(out242),
        .out_3_30(out243),
        .out_3_31(out244),
        .out_3_32(out245),
        .out_3_33(out246),
        .out_3_34(out247),
        .out_3_35(out248),
        .out_3_36(out249),
        .out_3_37(out250),
        .out_3_38(out251),
        .out_3_39(out252),
        .out_3_40(out253),
        .out_3_41(out254),
        .out_3_42(out255),
        .out_3_43(out256),
        .out_3_44(out257),
        .out_3_45(out258),
        .out_3_46(out259),
        .out_3_47(out260),
        .out_3_48(out261),
        .out_3_49(out262),
        .out_3_50(out263),
        .out_3_51(out264),
        .out_3_52(out265),
        .out_3_53(out266),
        .out_3_54(out267),
        .out_3_55(out268),
        .out_3_56(out269),
        .out_3_57(out270),
        .out_3_58(out271),
        .out_3_59(out272),
        .out_3_60(out273),
        .out_3_61(out274),
        .out_3_62(out275),
        .out_3_63(out276),
        .out_3_64(out277),
        .out_3_65(out278),
        .out_3_66(out279),
        .out_3_67(out280),
        .out_3_68(out281),
        .out_3_69(out282),
        .out_3_70(out283),
        .out_4_0(out284),
        .out_4_1(out285),
        .out_4_2(out286),
        .out_4_3(out287),
        .out_4_4(out288),
        .out_4_5(out289),
        .out_4_6(out290),
        .out_4_7(out291),
        .out_4_8(out292),
        .out_4_9(out293),
        .out_4_10(out294),
        .out_4_11(out295),
        .out_4_12(out296),
        .out_4_13(out297),
        .out_4_14(out298),
        .out_4_15(out299),
        .out_4_16(out300),
        .out_4_17(out301),
        .out_4_18(out302),
        .out_4_19(out303),
        .out_4_20(out304),
        .out_4_21(out305),
        .out_4_22(out306),
        .out_4_23(out307),
        .out_4_24(out308),
        .out_4_25(out309),
        .out_4_26(out310),
        .out_4_27(out311),
        .out_4_28(out312),
        .out_4_29(out313),
        .out_4_30(out314),
        .out_4_31(out315),
        .out_4_32(out316),
        .out_4_33(out317),
        .out_4_34(out318),
        .out_4_35(out319),
        .out_4_36(out320),
        .out_4_37(out321),
        .out_4_38(out322),
        .out_4_39(out323),
        .out_4_40(out324),
        .out_4_41(out325),
        .out_4_42(out326),
        .out_4_43(out327),
        .out_4_44(out328),
        .out_4_45(out329),
        .out_4_46(out330),
        .out_4_47(out331),
        .out_4_48(out332),
        .out_4_49(out333),
        .out_4_50(out334),
        .out_4_51(out335),
        .out_4_52(out336),
        .out_4_53(out337),
        .out_4_54(out338),
        .out_4_55(out339),
        .out_4_56(out340),
        .out_4_57(out341),
        .out_4_58(out342),
        .out_4_59(out343),
        .out_4_60(out344),
        .out_4_61(out345),
        .out_4_62(out346),
        .out_4_63(out347),
        .out_4_64(out348),
        .out_4_65(out349),
        .out_4_66(out350),
        .out_4_67(out351),
        .out_4_68(out352),
        .out_4_69(out353),
        .out_4_70(out354),
        .out_5_0(out355),
        .out_5_1(out356),
        .out_5_2(out357),
        .out_5_3(out358),
        .out_5_4(out359),
        .out_5_5(out360),
        .out_5_6(out361),
        .out_5_7(out362),
        .out_5_8(out363),
        .out_5_9(out364),
        .out_5_10(out365),
        .out_5_11(out366),
        .out_5_12(out367),
        .out_5_13(out368),
        .out_5_14(out369),
        .out_5_15(out370),
        .out_5_16(out371),
        .out_5_17(out372),
        .out_5_18(out373),
        .out_5_19(out374),
        .out_5_20(out375),
        .out_5_21(out376),
        .out_5_22(out377),
        .out_5_23(out378),
        .out_5_24(out379),
        .out_5_25(out380),
        .out_5_26(out381),
        .out_5_27(out382),
        .out_5_28(out383),
        .out_5_29(out384),
        .out_5_30(out385),
        .out_5_31(out386),
        .out_5_32(out387),
        .out_5_33(out388),
        .out_5_34(out389),
        .out_5_35(out390),
        .out_5_36(out391),
        .out_5_37(out392),
        .out_5_38(out393),
        .out_5_39(out394),
        .out_5_40(out395),
        .out_5_41(out396),
        .out_5_42(out397),
        .out_5_43(out398),
        .out_5_44(out399),
        .out_5_45(out400),
        .out_5_46(out401),
        .out_5_47(out402),
        .out_5_48(out403),
        .out_5_49(out404),
        .out_5_50(out405),
        .out_5_51(out406),
        .out_5_52(out407),
        .out_5_53(out408),
        .out_5_54(out409),
        .out_5_55(out410),
        .out_5_56(out411),
        .out_5_57(out412),
        .out_5_58(out413),
        .out_5_59(out414),
        .out_5_60(out415),
        .out_5_61(out416),
        .out_5_62(out417),
        .out_5_63(out418),
        .out_5_64(out419),
        .out_5_65(out420),
        .out_5_66(out421),
        .out_5_67(out422),
        .out_5_68(out423),
        .out_5_69(out424),
        .out_5_70(out425),
        .out_6_0(out426),
        .out_6_1(out427),
        .out_6_2(out428),
        .out_6_3(out429),
        .out_6_4(out430),
        .out_6_5(out431),
        .out_6_6(out432),
        .out_6_7(out433),
        .out_6_8(out434),
        .out_6_9(out435),
        .out_6_10(out436),
        .out_6_11(out437),
        .out_6_12(out438),
        .out_6_13(out439),
        .out_6_14(out440),
        .out_6_15(out441),
        .out_6_16(out442),
        .out_6_17(out443),
        .out_6_18(out444),
        .out_6_19(out445),
        .out_6_20(out446),
        .out_6_21(out447),
        .out_6_22(out448),
        .out_6_23(out449),
        .out_6_24(out450),
        .out_6_25(out451),
        .out_6_26(out452),
        .out_6_27(out453),
        .out_6_28(out454),
        .out_6_29(out455),
        .out_6_30(out456),
        .out_6_31(out457),
        .out_6_32(out458),
        .out_6_33(out459),
        .out_6_34(out460),
        .out_6_35(out461),
        .out_6_36(out462),
        .out_6_37(out463),
        .out_6_38(out464),
        .out_6_39(out465),
        .out_6_40(out466),
        .out_6_41(out467),
        .out_6_42(out468),
        .out_6_43(out469),
        .out_6_44(out470),
        .out_6_45(out471),
        .out_6_46(out472),
        .out_6_47(out473),
        .out_6_48(out474),
        .out_6_49(out475),
        .out_6_50(out476),
        .out_6_51(out477),
        .out_6_52(out478),
        .out_6_53(out479),
        .out_6_54(out480),
        .out_6_55(out481),
        .out_6_56(out482),
        .out_6_57(out483),
        .out_6_58(out484),
        .out_6_59(out485),
        .out_6_60(out486),
        .out_6_61(out487),
        .out_6_62(out488),
        .out_6_63(out489),
        .out_6_64(out490),
        .out_6_65(out491),
        .out_6_66(out492),
        .out_6_67(out493),
        .out_6_68(out494),
        .out_6_69(out495),
        .out_6_70(out496),
        .out_7_0(out497),
        .out_7_1(out498),
        .out_7_2(out499),
        .out_7_3(out500),
        .out_7_4(out501),
        .out_7_5(out502),
        .out_7_6(out503),
        .out_7_7(out504),
        .out_7_8(out505),
        .out_7_9(out506),
        .out_7_10(out507),
        .out_7_11(out508),
        .out_7_12(out509),
        .out_7_13(out510),
        .out_7_14(out511),
        .out_7_15(out512),
        .out_7_16(out513),
        .out_7_17(out514),
        .out_7_18(out515),
        .out_7_19(out516),
        .out_7_20(out517),
        .out_7_21(out518),
        .out_7_22(out519),
        .out_7_23(out520),
        .out_7_24(out521),
        .out_7_25(out522),
        .out_7_26(out523),
        .out_7_27(out524),
        .out_7_28(out525),
        .out_7_29(out526),
        .out_7_30(out527),
        .out_7_31(out528),
        .out_7_32(out529),
        .out_7_33(out530),
        .out_7_34(out531),
        .out_7_35(out532),
        .out_7_36(out533),
        .out_7_37(out534),
        .out_7_38(out535),
        .out_7_39(out536),
        .out_7_40(out537),
        .out_7_41(out538),
        .out_7_42(out539),
        .out_7_43(out540),
        .out_7_44(out541),
        .out_7_45(out542),
        .out_7_46(out543),
        .out_7_47(out544),
        .out_7_48(out545),
        .out_7_49(out546),
        .out_7_50(out547),
        .out_7_51(out548),
        .out_7_52(out549),
        .out_7_53(out550),
        .out_7_54(out551),
        .out_7_55(out552),
        .out_7_56(out553),
        .out_7_57(out554),
        .out_7_58(out555),
        .out_7_59(out556),
        .out_7_60(out557),
        .out_7_61(out558),
        .out_7_62(out559),
        .out_7_63(out560),
        .out_7_64(out561),
        .out_7_65(out562),
        .out_7_66(out563),
        .out_7_67(out564),
        .out_7_68(out565),
        .out_7_69(out566),
        .out_7_70(out567)
    );

endmodule

module LB_8_8_1_8bit_False (
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
    out63
);

// (8, 8, 1, 8, False)
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

//##// (8, 8, 1, 8, False)
    LB_base_8_8_8bit  LB_base_inst0 (
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
        .out_1_0(out8),
        .out_1_1(out9),
        .out_1_2(out10),
        .out_1_3(out11),
        .out_1_4(out12),
        .out_1_5(out13),
        .out_1_6(out14),
        .out_1_7(out15),
        .out_2_0(out16),
        .out_2_1(out17),
        .out_2_2(out18),
        .out_2_3(out19),
        .out_2_4(out20),
        .out_2_5(out21),
        .out_2_6(out22),
        .out_2_7(out23),
        .out_3_0(out24),
        .out_3_1(out25),
        .out_3_2(out26),
        .out_3_3(out27),
        .out_3_4(out28),
        .out_3_5(out29),
        .out_3_6(out30),
        .out_3_7(out31),
        .out_4_0(out32),
        .out_4_1(out33),
        .out_4_2(out34),
        .out_4_3(out35),
        .out_4_4(out36),
        .out_4_5(out37),
        .out_4_6(out38),
        .out_4_7(out39),
        .out_5_0(out40),
        .out_5_1(out41),
        .out_5_2(out42),
        .out_5_3(out43),
        .out_5_4(out44),
        .out_5_5(out45),
        .out_5_6(out46),
        .out_5_7(out47),
        .out_6_0(out48),
        .out_6_1(out49),
        .out_6_2(out50),
        .out_6_3(out51),
        .out_6_4(out52),
        .out_6_5(out53),
        .out_6_6(out54),
        .out_6_7(out55),
        .out_7_0(out56),
        .out_7_1(out57),
        .out_7_2(out58),
        .out_7_3(out59),
        .out_7_4(out60),
        .out_7_5(out61),
        .out_7_6(out62),
        .out_7_7(out63)
    );

endmodule

module LB_base_8_8_8bit (
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
    out_1_0,
    out_1_1,
    out_1_2,
    out_1_3,
    out_1_4,
    out_1_5,
    out_1_6,
    out_1_7,
    out_2_0,
    out_2_1,
    out_2_2,
    out_2_3,
    out_2_4,
    out_2_5,
    out_2_6,
    out_2_7,
    out_3_0,
    out_3_1,
    out_3_2,
    out_3_3,
    out_3_4,
    out_3_5,
    out_3_6,
    out_3_7,
    out_4_0,
    out_4_1,
    out_4_2,
    out_4_3,
    out_4_4,
    out_4_5,
    out_4_6,
    out_4_7,
    out_5_0,
    out_5_1,
    out_5_2,
    out_5_3,
    out_5_4,
    out_5_5,
    out_5_6,
    out_5_7,
    out_6_0,
    out_6_1,
    out_6_2,
    out_6_3,
    out_6_4,
    out_6_5,
    out_6_6,
    out_6_7,
    out_7_0,
    out_7_1,
    out_7_2,
    out_7_3,
    out_7_4,
    out_7_5,
    out_7_6,
    out_7_7
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
    output out_1_0;
    output out_1_1;
    output out_1_2;
    output out_1_3;
    output out_1_4;
    output out_1_5;
    output out_1_6;
    output out_1_7;
    output out_2_0;
    output out_2_1;
    output out_2_2;
    output out_2_3;
    output out_2_4;
    output out_2_5;
    output out_2_6;
    output out_2_7;
    output out_3_0;
    output out_3_1;
    output out_3_2;
    output out_3_3;
    output out_3_4;
    output out_3_5;
    output out_3_6;
    output out_3_7;
    output out_4_0;
    output out_4_1;
    output out_4_2;
    output out_4_3;
    output out_4_4;
    output out_4_5;
    output out_4_6;
    output out_4_7;
    output out_5_0;
    output out_5_1;
    output out_5_2;
    output out_5_3;
    output out_5_4;
    output out_5_5;
    output out_5_6;
    output out_5_7;
    output out_6_0;
    output out_6_1;
    output out_6_2;
    output out_6_3;
    output out_6_4;
    output out_6_5;
    output out_6_6;
    output out_6_7;
    output out_7_0;
    output out_7_1;
    output out_7_2;
    output out_7_3;
    output out_7_4;
    output out_7_5;
    output out_7_6;
    output out_7_7;

    wire sram_out_0;
    wire sram_out_1;
    wire sram_out_2;
    wire sram_out_3;
    wire sram_out_4;
    wire sram_out_5;
    wire sram_out_6;
    wire sram_out_7;

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


    ShiftReg_base_8_8bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1),
        .out_2_16b (out_0_2),
        .out_3_16b (out_0_3),
        .out_4_16b (out_0_4),
        .out_5_16b (out_0_5),
        .out_6_16b (out_0_6),
        .out_7_16b (out_0_7)
    );


    ShiftReg_base_8_8bit ShiftersRow_1(
        .clk (clk),

        .inp_16b (sram_out_1),

        .out_0_16b (out_1_0),
        .out_1_16b (out_1_1),
        .out_2_16b (out_1_2),
        .out_3_16b (out_1_3),
        .out_4_16b (out_1_4),
        .out_5_16b (out_1_5),
        .out_6_16b (out_1_6),
        .out_7_16b (out_1_7)
    );


    ShiftReg_base_8_8bit ShiftersRow_2(
        .clk (clk),

        .inp_16b (sram_out_2),

        .out_0_16b (out_2_0),
        .out_1_16b (out_2_1),
        .out_2_16b (out_2_2),
        .out_3_16b (out_2_3),
        .out_4_16b (out_2_4),
        .out_5_16b (out_2_5),
        .out_6_16b (out_2_6),
        .out_7_16b (out_2_7)
    );


    ShiftReg_base_8_8bit ShiftersRow_3(
        .clk (clk),

        .inp_16b (sram_out_3),

        .out_0_16b (out_3_0),
        .out_1_16b (out_3_1),
        .out_2_16b (out_3_2),
        .out_3_16b (out_3_3),
        .out_4_16b (out_3_4),
        .out_5_16b (out_3_5),
        .out_6_16b (out_3_6),
        .out_7_16b (out_3_7)
    );


    ShiftReg_base_8_8bit ShiftersRow_4(
        .clk (clk),

        .inp_16b (sram_out_4),

        .out_0_16b (out_4_0),
        .out_1_16b (out_4_1),
        .out_2_16b (out_4_2),
        .out_3_16b (out_4_3),
        .out_4_16b (out_4_4),
        .out_5_16b (out_4_5),
        .out_6_16b (out_4_6),
        .out_7_16b (out_4_7)
    );


    ShiftReg_base_8_8bit ShiftersRow_5(
        .clk (clk),

        .inp_16b (sram_out_5),

        .out_0_16b (out_5_0),
        .out_1_16b (out_5_1),
        .out_2_16b (out_5_2),
        .out_3_16b (out_5_3),
        .out_4_16b (out_5_4),
        .out_5_16b (out_5_5),
        .out_6_16b (out_5_6),
        .out_7_16b (out_5_7)
    );


    ShiftReg_base_8_8bit ShiftersRow_6(
        .clk (clk),

        .inp_16b (sram_out_6),

        .out_0_16b (out_6_0),
        .out_1_16b (out_6_1),
        .out_2_16b (out_6_2),
        .out_3_16b (out_6_3),
        .out_4_16b (out_6_4),
        .out_5_16b (out_6_5),
        .out_6_16b (out_6_6),
        .out_7_16b (out_6_7)
    );


    ShiftReg_base_8_8bit ShiftersRow_7(
        .clk (clk),

        .inp_16b (sram_out_7),

        .out_0_16b (out_7_0),
        .out_1_16b (out_7_1),
        .out_2_16b (out_7_2),
        .out_3_16b (out_7_3),
        .out_4_16b (out_7_4),
        .out_5_16b (out_7_5),
        .out_6_16b (out_7_6),
        .out_7_16b (out_7_7)
    );


endmodule

module LB_base_8_71_8bit (
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
    out_0_9,
    out_0_10,
    out_0_11,
    out_0_12,
    out_0_13,
    out_0_14,
    out_0_15,
    out_0_16,
    out_0_17,
    out_0_18,
    out_0_19,
    out_0_20,
    out_0_21,
    out_0_22,
    out_0_23,
    out_0_24,
    out_0_25,
    out_0_26,
    out_0_27,
    out_0_28,
    out_0_29,
    out_0_30,
    out_0_31,
    out_0_32,
    out_0_33,
    out_0_34,
    out_0_35,
    out_0_36,
    out_0_37,
    out_0_38,
    out_0_39,
    out_0_40,
    out_0_41,
    out_0_42,
    out_0_43,
    out_0_44,
    out_0_45,
    out_0_46,
    out_0_47,
    out_0_48,
    out_0_49,
    out_0_50,
    out_0_51,
    out_0_52,
    out_0_53,
    out_0_54,
    out_0_55,
    out_0_56,
    out_0_57,
    out_0_58,
    out_0_59,
    out_0_60,
    out_0_61,
    out_0_62,
    out_0_63,
    out_0_64,
    out_0_65,
    out_0_66,
    out_0_67,
    out_0_68,
    out_0_69,
    out_0_70,
    out_1_0,
    out_1_1,
    out_1_2,
    out_1_3,
    out_1_4,
    out_1_5,
    out_1_6,
    out_1_7,
    out_1_8,
    out_1_9,
    out_1_10,
    out_1_11,
    out_1_12,
    out_1_13,
    out_1_14,
    out_1_15,
    out_1_16,
    out_1_17,
    out_1_18,
    out_1_19,
    out_1_20,
    out_1_21,
    out_1_22,
    out_1_23,
    out_1_24,
    out_1_25,
    out_1_26,
    out_1_27,
    out_1_28,
    out_1_29,
    out_1_30,
    out_1_31,
    out_1_32,
    out_1_33,
    out_1_34,
    out_1_35,
    out_1_36,
    out_1_37,
    out_1_38,
    out_1_39,
    out_1_40,
    out_1_41,
    out_1_42,
    out_1_43,
    out_1_44,
    out_1_45,
    out_1_46,
    out_1_47,
    out_1_48,
    out_1_49,
    out_1_50,
    out_1_51,
    out_1_52,
    out_1_53,
    out_1_54,
    out_1_55,
    out_1_56,
    out_1_57,
    out_1_58,
    out_1_59,
    out_1_60,
    out_1_61,
    out_1_62,
    out_1_63,
    out_1_64,
    out_1_65,
    out_1_66,
    out_1_67,
    out_1_68,
    out_1_69,
    out_1_70,
    out_2_0,
    out_2_1,
    out_2_2,
    out_2_3,
    out_2_4,
    out_2_5,
    out_2_6,
    out_2_7,
    out_2_8,
    out_2_9,
    out_2_10,
    out_2_11,
    out_2_12,
    out_2_13,
    out_2_14,
    out_2_15,
    out_2_16,
    out_2_17,
    out_2_18,
    out_2_19,
    out_2_20,
    out_2_21,
    out_2_22,
    out_2_23,
    out_2_24,
    out_2_25,
    out_2_26,
    out_2_27,
    out_2_28,
    out_2_29,
    out_2_30,
    out_2_31,
    out_2_32,
    out_2_33,
    out_2_34,
    out_2_35,
    out_2_36,
    out_2_37,
    out_2_38,
    out_2_39,
    out_2_40,
    out_2_41,
    out_2_42,
    out_2_43,
    out_2_44,
    out_2_45,
    out_2_46,
    out_2_47,
    out_2_48,
    out_2_49,
    out_2_50,
    out_2_51,
    out_2_52,
    out_2_53,
    out_2_54,
    out_2_55,
    out_2_56,
    out_2_57,
    out_2_58,
    out_2_59,
    out_2_60,
    out_2_61,
    out_2_62,
    out_2_63,
    out_2_64,
    out_2_65,
    out_2_66,
    out_2_67,
    out_2_68,
    out_2_69,
    out_2_70,
    out_3_0,
    out_3_1,
    out_3_2,
    out_3_3,
    out_3_4,
    out_3_5,
    out_3_6,
    out_3_7,
    out_3_8,
    out_3_9,
    out_3_10,
    out_3_11,
    out_3_12,
    out_3_13,
    out_3_14,
    out_3_15,
    out_3_16,
    out_3_17,
    out_3_18,
    out_3_19,
    out_3_20,
    out_3_21,
    out_3_22,
    out_3_23,
    out_3_24,
    out_3_25,
    out_3_26,
    out_3_27,
    out_3_28,
    out_3_29,
    out_3_30,
    out_3_31,
    out_3_32,
    out_3_33,
    out_3_34,
    out_3_35,
    out_3_36,
    out_3_37,
    out_3_38,
    out_3_39,
    out_3_40,
    out_3_41,
    out_3_42,
    out_3_43,
    out_3_44,
    out_3_45,
    out_3_46,
    out_3_47,
    out_3_48,
    out_3_49,
    out_3_50,
    out_3_51,
    out_3_52,
    out_3_53,
    out_3_54,
    out_3_55,
    out_3_56,
    out_3_57,
    out_3_58,
    out_3_59,
    out_3_60,
    out_3_61,
    out_3_62,
    out_3_63,
    out_3_64,
    out_3_65,
    out_3_66,
    out_3_67,
    out_3_68,
    out_3_69,
    out_3_70,
    out_4_0,
    out_4_1,
    out_4_2,
    out_4_3,
    out_4_4,
    out_4_5,
    out_4_6,
    out_4_7,
    out_4_8,
    out_4_9,
    out_4_10,
    out_4_11,
    out_4_12,
    out_4_13,
    out_4_14,
    out_4_15,
    out_4_16,
    out_4_17,
    out_4_18,
    out_4_19,
    out_4_20,
    out_4_21,
    out_4_22,
    out_4_23,
    out_4_24,
    out_4_25,
    out_4_26,
    out_4_27,
    out_4_28,
    out_4_29,
    out_4_30,
    out_4_31,
    out_4_32,
    out_4_33,
    out_4_34,
    out_4_35,
    out_4_36,
    out_4_37,
    out_4_38,
    out_4_39,
    out_4_40,
    out_4_41,
    out_4_42,
    out_4_43,
    out_4_44,
    out_4_45,
    out_4_46,
    out_4_47,
    out_4_48,
    out_4_49,
    out_4_50,
    out_4_51,
    out_4_52,
    out_4_53,
    out_4_54,
    out_4_55,
    out_4_56,
    out_4_57,
    out_4_58,
    out_4_59,
    out_4_60,
    out_4_61,
    out_4_62,
    out_4_63,
    out_4_64,
    out_4_65,
    out_4_66,
    out_4_67,
    out_4_68,
    out_4_69,
    out_4_70,
    out_5_0,
    out_5_1,
    out_5_2,
    out_5_3,
    out_5_4,
    out_5_5,
    out_5_6,
    out_5_7,
    out_5_8,
    out_5_9,
    out_5_10,
    out_5_11,
    out_5_12,
    out_5_13,
    out_5_14,
    out_5_15,
    out_5_16,
    out_5_17,
    out_5_18,
    out_5_19,
    out_5_20,
    out_5_21,
    out_5_22,
    out_5_23,
    out_5_24,
    out_5_25,
    out_5_26,
    out_5_27,
    out_5_28,
    out_5_29,
    out_5_30,
    out_5_31,
    out_5_32,
    out_5_33,
    out_5_34,
    out_5_35,
    out_5_36,
    out_5_37,
    out_5_38,
    out_5_39,
    out_5_40,
    out_5_41,
    out_5_42,
    out_5_43,
    out_5_44,
    out_5_45,
    out_5_46,
    out_5_47,
    out_5_48,
    out_5_49,
    out_5_50,
    out_5_51,
    out_5_52,
    out_5_53,
    out_5_54,
    out_5_55,
    out_5_56,
    out_5_57,
    out_5_58,
    out_5_59,
    out_5_60,
    out_5_61,
    out_5_62,
    out_5_63,
    out_5_64,
    out_5_65,
    out_5_66,
    out_5_67,
    out_5_68,
    out_5_69,
    out_5_70,
    out_6_0,
    out_6_1,
    out_6_2,
    out_6_3,
    out_6_4,
    out_6_5,
    out_6_6,
    out_6_7,
    out_6_8,
    out_6_9,
    out_6_10,
    out_6_11,
    out_6_12,
    out_6_13,
    out_6_14,
    out_6_15,
    out_6_16,
    out_6_17,
    out_6_18,
    out_6_19,
    out_6_20,
    out_6_21,
    out_6_22,
    out_6_23,
    out_6_24,
    out_6_25,
    out_6_26,
    out_6_27,
    out_6_28,
    out_6_29,
    out_6_30,
    out_6_31,
    out_6_32,
    out_6_33,
    out_6_34,
    out_6_35,
    out_6_36,
    out_6_37,
    out_6_38,
    out_6_39,
    out_6_40,
    out_6_41,
    out_6_42,
    out_6_43,
    out_6_44,
    out_6_45,
    out_6_46,
    out_6_47,
    out_6_48,
    out_6_49,
    out_6_50,
    out_6_51,
    out_6_52,
    out_6_53,
    out_6_54,
    out_6_55,
    out_6_56,
    out_6_57,
    out_6_58,
    out_6_59,
    out_6_60,
    out_6_61,
    out_6_62,
    out_6_63,
    out_6_64,
    out_6_65,
    out_6_66,
    out_6_67,
    out_6_68,
    out_6_69,
    out_6_70,
    out_7_0,
    out_7_1,
    out_7_2,
    out_7_3,
    out_7_4,
    out_7_5,
    out_7_6,
    out_7_7,
    out_7_8,
    out_7_9,
    out_7_10,
    out_7_11,
    out_7_12,
    out_7_13,
    out_7_14,
    out_7_15,
    out_7_16,
    out_7_17,
    out_7_18,
    out_7_19,
    out_7_20,
    out_7_21,
    out_7_22,
    out_7_23,
    out_7_24,
    out_7_25,
    out_7_26,
    out_7_27,
    out_7_28,
    out_7_29,
    out_7_30,
    out_7_31,
    out_7_32,
    out_7_33,
    out_7_34,
    out_7_35,
    out_7_36,
    out_7_37,
    out_7_38,
    out_7_39,
    out_7_40,
    out_7_41,
    out_7_42,
    out_7_43,
    out_7_44,
    out_7_45,
    out_7_46,
    out_7_47,
    out_7_48,
    out_7_49,
    out_7_50,
    out_7_51,
    out_7_52,
    out_7_53,
    out_7_54,
    out_7_55,
    out_7_56,
    out_7_57,
    out_7_58,
    out_7_59,
    out_7_60,
    out_7_61,
    out_7_62,
    out_7_63,
    out_7_64,
    out_7_65,
    out_7_66,
    out_7_67,
    out_7_68,
    out_7_69,
    out_7_70
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
    output out_0_9;
    output out_0_10;
    output out_0_11;
    output out_0_12;
    output out_0_13;
    output out_0_14;
    output out_0_15;
    output out_0_16;
    output out_0_17;
    output out_0_18;
    output out_0_19;
    output out_0_20;
    output out_0_21;
    output out_0_22;
    output out_0_23;
    output out_0_24;
    output out_0_25;
    output out_0_26;
    output out_0_27;
    output out_0_28;
    output out_0_29;
    output out_0_30;
    output out_0_31;
    output out_0_32;
    output out_0_33;
    output out_0_34;
    output out_0_35;
    output out_0_36;
    output out_0_37;
    output out_0_38;
    output out_0_39;
    output out_0_40;
    output out_0_41;
    output out_0_42;
    output out_0_43;
    output out_0_44;
    output out_0_45;
    output out_0_46;
    output out_0_47;
    output out_0_48;
    output out_0_49;
    output out_0_50;
    output out_0_51;
    output out_0_52;
    output out_0_53;
    output out_0_54;
    output out_0_55;
    output out_0_56;
    output out_0_57;
    output out_0_58;
    output out_0_59;
    output out_0_60;
    output out_0_61;
    output out_0_62;
    output out_0_63;
    output out_0_64;
    output out_0_65;
    output out_0_66;
    output out_0_67;
    output out_0_68;
    output out_0_69;
    output out_0_70;
    output out_1_0;
    output out_1_1;
    output out_1_2;
    output out_1_3;
    output out_1_4;
    output out_1_5;
    output out_1_6;
    output out_1_7;
    output out_1_8;
    output out_1_9;
    output out_1_10;
    output out_1_11;
    output out_1_12;
    output out_1_13;
    output out_1_14;
    output out_1_15;
    output out_1_16;
    output out_1_17;
    output out_1_18;
    output out_1_19;
    output out_1_20;
    output out_1_21;
    output out_1_22;
    output out_1_23;
    output out_1_24;
    output out_1_25;
    output out_1_26;
    output out_1_27;
    output out_1_28;
    output out_1_29;
    output out_1_30;
    output out_1_31;
    output out_1_32;
    output out_1_33;
    output out_1_34;
    output out_1_35;
    output out_1_36;
    output out_1_37;
    output out_1_38;
    output out_1_39;
    output out_1_40;
    output out_1_41;
    output out_1_42;
    output out_1_43;
    output out_1_44;
    output out_1_45;
    output out_1_46;
    output out_1_47;
    output out_1_48;
    output out_1_49;
    output out_1_50;
    output out_1_51;
    output out_1_52;
    output out_1_53;
    output out_1_54;
    output out_1_55;
    output out_1_56;
    output out_1_57;
    output out_1_58;
    output out_1_59;
    output out_1_60;
    output out_1_61;
    output out_1_62;
    output out_1_63;
    output out_1_64;
    output out_1_65;
    output out_1_66;
    output out_1_67;
    output out_1_68;
    output out_1_69;
    output out_1_70;
    output out_2_0;
    output out_2_1;
    output out_2_2;
    output out_2_3;
    output out_2_4;
    output out_2_5;
    output out_2_6;
    output out_2_7;
    output out_2_8;
    output out_2_9;
    output out_2_10;
    output out_2_11;
    output out_2_12;
    output out_2_13;
    output out_2_14;
    output out_2_15;
    output out_2_16;
    output out_2_17;
    output out_2_18;
    output out_2_19;
    output out_2_20;
    output out_2_21;
    output out_2_22;
    output out_2_23;
    output out_2_24;
    output out_2_25;
    output out_2_26;
    output out_2_27;
    output out_2_28;
    output out_2_29;
    output out_2_30;
    output out_2_31;
    output out_2_32;
    output out_2_33;
    output out_2_34;
    output out_2_35;
    output out_2_36;
    output out_2_37;
    output out_2_38;
    output out_2_39;
    output out_2_40;
    output out_2_41;
    output out_2_42;
    output out_2_43;
    output out_2_44;
    output out_2_45;
    output out_2_46;
    output out_2_47;
    output out_2_48;
    output out_2_49;
    output out_2_50;
    output out_2_51;
    output out_2_52;
    output out_2_53;
    output out_2_54;
    output out_2_55;
    output out_2_56;
    output out_2_57;
    output out_2_58;
    output out_2_59;
    output out_2_60;
    output out_2_61;
    output out_2_62;
    output out_2_63;
    output out_2_64;
    output out_2_65;
    output out_2_66;
    output out_2_67;
    output out_2_68;
    output out_2_69;
    output out_2_70;
    output out_3_0;
    output out_3_1;
    output out_3_2;
    output out_3_3;
    output out_3_4;
    output out_3_5;
    output out_3_6;
    output out_3_7;
    output out_3_8;
    output out_3_9;
    output out_3_10;
    output out_3_11;
    output out_3_12;
    output out_3_13;
    output out_3_14;
    output out_3_15;
    output out_3_16;
    output out_3_17;
    output out_3_18;
    output out_3_19;
    output out_3_20;
    output out_3_21;
    output out_3_22;
    output out_3_23;
    output out_3_24;
    output out_3_25;
    output out_3_26;
    output out_3_27;
    output out_3_28;
    output out_3_29;
    output out_3_30;
    output out_3_31;
    output out_3_32;
    output out_3_33;
    output out_3_34;
    output out_3_35;
    output out_3_36;
    output out_3_37;
    output out_3_38;
    output out_3_39;
    output out_3_40;
    output out_3_41;
    output out_3_42;
    output out_3_43;
    output out_3_44;
    output out_3_45;
    output out_3_46;
    output out_3_47;
    output out_3_48;
    output out_3_49;
    output out_3_50;
    output out_3_51;
    output out_3_52;
    output out_3_53;
    output out_3_54;
    output out_3_55;
    output out_3_56;
    output out_3_57;
    output out_3_58;
    output out_3_59;
    output out_3_60;
    output out_3_61;
    output out_3_62;
    output out_3_63;
    output out_3_64;
    output out_3_65;
    output out_3_66;
    output out_3_67;
    output out_3_68;
    output out_3_69;
    output out_3_70;
    output out_4_0;
    output out_4_1;
    output out_4_2;
    output out_4_3;
    output out_4_4;
    output out_4_5;
    output out_4_6;
    output out_4_7;
    output out_4_8;
    output out_4_9;
    output out_4_10;
    output out_4_11;
    output out_4_12;
    output out_4_13;
    output out_4_14;
    output out_4_15;
    output out_4_16;
    output out_4_17;
    output out_4_18;
    output out_4_19;
    output out_4_20;
    output out_4_21;
    output out_4_22;
    output out_4_23;
    output out_4_24;
    output out_4_25;
    output out_4_26;
    output out_4_27;
    output out_4_28;
    output out_4_29;
    output out_4_30;
    output out_4_31;
    output out_4_32;
    output out_4_33;
    output out_4_34;
    output out_4_35;
    output out_4_36;
    output out_4_37;
    output out_4_38;
    output out_4_39;
    output out_4_40;
    output out_4_41;
    output out_4_42;
    output out_4_43;
    output out_4_44;
    output out_4_45;
    output out_4_46;
    output out_4_47;
    output out_4_48;
    output out_4_49;
    output out_4_50;
    output out_4_51;
    output out_4_52;
    output out_4_53;
    output out_4_54;
    output out_4_55;
    output out_4_56;
    output out_4_57;
    output out_4_58;
    output out_4_59;
    output out_4_60;
    output out_4_61;
    output out_4_62;
    output out_4_63;
    output out_4_64;
    output out_4_65;
    output out_4_66;
    output out_4_67;
    output out_4_68;
    output out_4_69;
    output out_4_70;
    output out_5_0;
    output out_5_1;
    output out_5_2;
    output out_5_3;
    output out_5_4;
    output out_5_5;
    output out_5_6;
    output out_5_7;
    output out_5_8;
    output out_5_9;
    output out_5_10;
    output out_5_11;
    output out_5_12;
    output out_5_13;
    output out_5_14;
    output out_5_15;
    output out_5_16;
    output out_5_17;
    output out_5_18;
    output out_5_19;
    output out_5_20;
    output out_5_21;
    output out_5_22;
    output out_5_23;
    output out_5_24;
    output out_5_25;
    output out_5_26;
    output out_5_27;
    output out_5_28;
    output out_5_29;
    output out_5_30;
    output out_5_31;
    output out_5_32;
    output out_5_33;
    output out_5_34;
    output out_5_35;
    output out_5_36;
    output out_5_37;
    output out_5_38;
    output out_5_39;
    output out_5_40;
    output out_5_41;
    output out_5_42;
    output out_5_43;
    output out_5_44;
    output out_5_45;
    output out_5_46;
    output out_5_47;
    output out_5_48;
    output out_5_49;
    output out_5_50;
    output out_5_51;
    output out_5_52;
    output out_5_53;
    output out_5_54;
    output out_5_55;
    output out_5_56;
    output out_5_57;
    output out_5_58;
    output out_5_59;
    output out_5_60;
    output out_5_61;
    output out_5_62;
    output out_5_63;
    output out_5_64;
    output out_5_65;
    output out_5_66;
    output out_5_67;
    output out_5_68;
    output out_5_69;
    output out_5_70;
    output out_6_0;
    output out_6_1;
    output out_6_2;
    output out_6_3;
    output out_6_4;
    output out_6_5;
    output out_6_6;
    output out_6_7;
    output out_6_8;
    output out_6_9;
    output out_6_10;
    output out_6_11;
    output out_6_12;
    output out_6_13;
    output out_6_14;
    output out_6_15;
    output out_6_16;
    output out_6_17;
    output out_6_18;
    output out_6_19;
    output out_6_20;
    output out_6_21;
    output out_6_22;
    output out_6_23;
    output out_6_24;
    output out_6_25;
    output out_6_26;
    output out_6_27;
    output out_6_28;
    output out_6_29;
    output out_6_30;
    output out_6_31;
    output out_6_32;
    output out_6_33;
    output out_6_34;
    output out_6_35;
    output out_6_36;
    output out_6_37;
    output out_6_38;
    output out_6_39;
    output out_6_40;
    output out_6_41;
    output out_6_42;
    output out_6_43;
    output out_6_44;
    output out_6_45;
    output out_6_46;
    output out_6_47;
    output out_6_48;
    output out_6_49;
    output out_6_50;
    output out_6_51;
    output out_6_52;
    output out_6_53;
    output out_6_54;
    output out_6_55;
    output out_6_56;
    output out_6_57;
    output out_6_58;
    output out_6_59;
    output out_6_60;
    output out_6_61;
    output out_6_62;
    output out_6_63;
    output out_6_64;
    output out_6_65;
    output out_6_66;
    output out_6_67;
    output out_6_68;
    output out_6_69;
    output out_6_70;
    output out_7_0;
    output out_7_1;
    output out_7_2;
    output out_7_3;
    output out_7_4;
    output out_7_5;
    output out_7_6;
    output out_7_7;
    output out_7_8;
    output out_7_9;
    output out_7_10;
    output out_7_11;
    output out_7_12;
    output out_7_13;
    output out_7_14;
    output out_7_15;
    output out_7_16;
    output out_7_17;
    output out_7_18;
    output out_7_19;
    output out_7_20;
    output out_7_21;
    output out_7_22;
    output out_7_23;
    output out_7_24;
    output out_7_25;
    output out_7_26;
    output out_7_27;
    output out_7_28;
    output out_7_29;
    output out_7_30;
    output out_7_31;
    output out_7_32;
    output out_7_33;
    output out_7_34;
    output out_7_35;
    output out_7_36;
    output out_7_37;
    output out_7_38;
    output out_7_39;
    output out_7_40;
    output out_7_41;
    output out_7_42;
    output out_7_43;
    output out_7_44;
    output out_7_45;
    output out_7_46;
    output out_7_47;
    output out_7_48;
    output out_7_49;
    output out_7_50;
    output out_7_51;
    output out_7_52;
    output out_7_53;
    output out_7_54;
    output out_7_55;
    output out_7_56;
    output out_7_57;
    output out_7_58;
    output out_7_59;
    output out_7_60;
    output out_7_61;
    output out_7_62;
    output out_7_63;
    output out_7_64;
    output out_7_65;
    output out_7_66;
    output out_7_67;
    output out_7_68;
    output out_7_69;
    output out_7_70;

    wire sram_out_0;
    wire sram_out_1;
    wire sram_out_2;
    wire sram_out_3;
    wire sram_out_4;
    wire sram_out_5;
    wire sram_out_6;
    wire sram_out_7;

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


    ShiftReg_base_71_8bit ShiftersRow_0(
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
        .out_8_16b (out_0_8),
        .out_9_16b (out_0_9),
        .out_10_16b (out_0_10),
        .out_11_16b (out_0_11),
        .out_12_16b (out_0_12),
        .out_13_16b (out_0_13),
        .out_14_16b (out_0_14),
        .out_15_16b (out_0_15),
        .out_16_16b (out_0_16),
        .out_17_16b (out_0_17),
        .out_18_16b (out_0_18),
        .out_19_16b (out_0_19),
        .out_20_16b (out_0_20),
        .out_21_16b (out_0_21),
        .out_22_16b (out_0_22),
        .out_23_16b (out_0_23),
        .out_24_16b (out_0_24),
        .out_25_16b (out_0_25),
        .out_26_16b (out_0_26),
        .out_27_16b (out_0_27),
        .out_28_16b (out_0_28),
        .out_29_16b (out_0_29),
        .out_30_16b (out_0_30),
        .out_31_16b (out_0_31),
        .out_32_16b (out_0_32),
        .out_33_16b (out_0_33),
        .out_34_16b (out_0_34),
        .out_35_16b (out_0_35),
        .out_36_16b (out_0_36),
        .out_37_16b (out_0_37),
        .out_38_16b (out_0_38),
        .out_39_16b (out_0_39),
        .out_40_16b (out_0_40),
        .out_41_16b (out_0_41),
        .out_42_16b (out_0_42),
        .out_43_16b (out_0_43),
        .out_44_16b (out_0_44),
        .out_45_16b (out_0_45),
        .out_46_16b (out_0_46),
        .out_47_16b (out_0_47),
        .out_48_16b (out_0_48),
        .out_49_16b (out_0_49),
        .out_50_16b (out_0_50),
        .out_51_16b (out_0_51),
        .out_52_16b (out_0_52),
        .out_53_16b (out_0_53),
        .out_54_16b (out_0_54),
        .out_55_16b (out_0_55),
        .out_56_16b (out_0_56),
        .out_57_16b (out_0_57),
        .out_58_16b (out_0_58),
        .out_59_16b (out_0_59),
        .out_60_16b (out_0_60),
        .out_61_16b (out_0_61),
        .out_62_16b (out_0_62),
        .out_63_16b (out_0_63),
        .out_64_16b (out_0_64),
        .out_65_16b (out_0_65),
        .out_66_16b (out_0_66),
        .out_67_16b (out_0_67),
        .out_68_16b (out_0_68),
        .out_69_16b (out_0_69),
        .out_70_16b (out_0_70)
    );


    ShiftReg_base_71_8bit ShiftersRow_1(
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
        .out_8_16b (out_1_8),
        .out_9_16b (out_1_9),
        .out_10_16b (out_1_10),
        .out_11_16b (out_1_11),
        .out_12_16b (out_1_12),
        .out_13_16b (out_1_13),
        .out_14_16b (out_1_14),
        .out_15_16b (out_1_15),
        .out_16_16b (out_1_16),
        .out_17_16b (out_1_17),
        .out_18_16b (out_1_18),
        .out_19_16b (out_1_19),
        .out_20_16b (out_1_20),
        .out_21_16b (out_1_21),
        .out_22_16b (out_1_22),
        .out_23_16b (out_1_23),
        .out_24_16b (out_1_24),
        .out_25_16b (out_1_25),
        .out_26_16b (out_1_26),
        .out_27_16b (out_1_27),
        .out_28_16b (out_1_28),
        .out_29_16b (out_1_29),
        .out_30_16b (out_1_30),
        .out_31_16b (out_1_31),
        .out_32_16b (out_1_32),
        .out_33_16b (out_1_33),
        .out_34_16b (out_1_34),
        .out_35_16b (out_1_35),
        .out_36_16b (out_1_36),
        .out_37_16b (out_1_37),
        .out_38_16b (out_1_38),
        .out_39_16b (out_1_39),
        .out_40_16b (out_1_40),
        .out_41_16b (out_1_41),
        .out_42_16b (out_1_42),
        .out_43_16b (out_1_43),
        .out_44_16b (out_1_44),
        .out_45_16b (out_1_45),
        .out_46_16b (out_1_46),
        .out_47_16b (out_1_47),
        .out_48_16b (out_1_48),
        .out_49_16b (out_1_49),
        .out_50_16b (out_1_50),
        .out_51_16b (out_1_51),
        .out_52_16b (out_1_52),
        .out_53_16b (out_1_53),
        .out_54_16b (out_1_54),
        .out_55_16b (out_1_55),
        .out_56_16b (out_1_56),
        .out_57_16b (out_1_57),
        .out_58_16b (out_1_58),
        .out_59_16b (out_1_59),
        .out_60_16b (out_1_60),
        .out_61_16b (out_1_61),
        .out_62_16b (out_1_62),
        .out_63_16b (out_1_63),
        .out_64_16b (out_1_64),
        .out_65_16b (out_1_65),
        .out_66_16b (out_1_66),
        .out_67_16b (out_1_67),
        .out_68_16b (out_1_68),
        .out_69_16b (out_1_69),
        .out_70_16b (out_1_70)
    );


    ShiftReg_base_71_8bit ShiftersRow_2(
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
        .out_8_16b (out_2_8),
        .out_9_16b (out_2_9),
        .out_10_16b (out_2_10),
        .out_11_16b (out_2_11),
        .out_12_16b (out_2_12),
        .out_13_16b (out_2_13),
        .out_14_16b (out_2_14),
        .out_15_16b (out_2_15),
        .out_16_16b (out_2_16),
        .out_17_16b (out_2_17),
        .out_18_16b (out_2_18),
        .out_19_16b (out_2_19),
        .out_20_16b (out_2_20),
        .out_21_16b (out_2_21),
        .out_22_16b (out_2_22),
        .out_23_16b (out_2_23),
        .out_24_16b (out_2_24),
        .out_25_16b (out_2_25),
        .out_26_16b (out_2_26),
        .out_27_16b (out_2_27),
        .out_28_16b (out_2_28),
        .out_29_16b (out_2_29),
        .out_30_16b (out_2_30),
        .out_31_16b (out_2_31),
        .out_32_16b (out_2_32),
        .out_33_16b (out_2_33),
        .out_34_16b (out_2_34),
        .out_35_16b (out_2_35),
        .out_36_16b (out_2_36),
        .out_37_16b (out_2_37),
        .out_38_16b (out_2_38),
        .out_39_16b (out_2_39),
        .out_40_16b (out_2_40),
        .out_41_16b (out_2_41),
        .out_42_16b (out_2_42),
        .out_43_16b (out_2_43),
        .out_44_16b (out_2_44),
        .out_45_16b (out_2_45),
        .out_46_16b (out_2_46),
        .out_47_16b (out_2_47),
        .out_48_16b (out_2_48),
        .out_49_16b (out_2_49),
        .out_50_16b (out_2_50),
        .out_51_16b (out_2_51),
        .out_52_16b (out_2_52),
        .out_53_16b (out_2_53),
        .out_54_16b (out_2_54),
        .out_55_16b (out_2_55),
        .out_56_16b (out_2_56),
        .out_57_16b (out_2_57),
        .out_58_16b (out_2_58),
        .out_59_16b (out_2_59),
        .out_60_16b (out_2_60),
        .out_61_16b (out_2_61),
        .out_62_16b (out_2_62),
        .out_63_16b (out_2_63),
        .out_64_16b (out_2_64),
        .out_65_16b (out_2_65),
        .out_66_16b (out_2_66),
        .out_67_16b (out_2_67),
        .out_68_16b (out_2_68),
        .out_69_16b (out_2_69),
        .out_70_16b (out_2_70)
    );


    ShiftReg_base_71_8bit ShiftersRow_3(
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
        .out_8_16b (out_3_8),
        .out_9_16b (out_3_9),
        .out_10_16b (out_3_10),
        .out_11_16b (out_3_11),
        .out_12_16b (out_3_12),
        .out_13_16b (out_3_13),
        .out_14_16b (out_3_14),
        .out_15_16b (out_3_15),
        .out_16_16b (out_3_16),
        .out_17_16b (out_3_17),
        .out_18_16b (out_3_18),
        .out_19_16b (out_3_19),
        .out_20_16b (out_3_20),
        .out_21_16b (out_3_21),
        .out_22_16b (out_3_22),
        .out_23_16b (out_3_23),
        .out_24_16b (out_3_24),
        .out_25_16b (out_3_25),
        .out_26_16b (out_3_26),
        .out_27_16b (out_3_27),
        .out_28_16b (out_3_28),
        .out_29_16b (out_3_29),
        .out_30_16b (out_3_30),
        .out_31_16b (out_3_31),
        .out_32_16b (out_3_32),
        .out_33_16b (out_3_33),
        .out_34_16b (out_3_34),
        .out_35_16b (out_3_35),
        .out_36_16b (out_3_36),
        .out_37_16b (out_3_37),
        .out_38_16b (out_3_38),
        .out_39_16b (out_3_39),
        .out_40_16b (out_3_40),
        .out_41_16b (out_3_41),
        .out_42_16b (out_3_42),
        .out_43_16b (out_3_43),
        .out_44_16b (out_3_44),
        .out_45_16b (out_3_45),
        .out_46_16b (out_3_46),
        .out_47_16b (out_3_47),
        .out_48_16b (out_3_48),
        .out_49_16b (out_3_49),
        .out_50_16b (out_3_50),
        .out_51_16b (out_3_51),
        .out_52_16b (out_3_52),
        .out_53_16b (out_3_53),
        .out_54_16b (out_3_54),
        .out_55_16b (out_3_55),
        .out_56_16b (out_3_56),
        .out_57_16b (out_3_57),
        .out_58_16b (out_3_58),
        .out_59_16b (out_3_59),
        .out_60_16b (out_3_60),
        .out_61_16b (out_3_61),
        .out_62_16b (out_3_62),
        .out_63_16b (out_3_63),
        .out_64_16b (out_3_64),
        .out_65_16b (out_3_65),
        .out_66_16b (out_3_66),
        .out_67_16b (out_3_67),
        .out_68_16b (out_3_68),
        .out_69_16b (out_3_69),
        .out_70_16b (out_3_70)
    );


    ShiftReg_base_71_8bit ShiftersRow_4(
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
        .out_8_16b (out_4_8),
        .out_9_16b (out_4_9),
        .out_10_16b (out_4_10),
        .out_11_16b (out_4_11),
        .out_12_16b (out_4_12),
        .out_13_16b (out_4_13),
        .out_14_16b (out_4_14),
        .out_15_16b (out_4_15),
        .out_16_16b (out_4_16),
        .out_17_16b (out_4_17),
        .out_18_16b (out_4_18),
        .out_19_16b (out_4_19),
        .out_20_16b (out_4_20),
        .out_21_16b (out_4_21),
        .out_22_16b (out_4_22),
        .out_23_16b (out_4_23),
        .out_24_16b (out_4_24),
        .out_25_16b (out_4_25),
        .out_26_16b (out_4_26),
        .out_27_16b (out_4_27),
        .out_28_16b (out_4_28),
        .out_29_16b (out_4_29),
        .out_30_16b (out_4_30),
        .out_31_16b (out_4_31),
        .out_32_16b (out_4_32),
        .out_33_16b (out_4_33),
        .out_34_16b (out_4_34),
        .out_35_16b (out_4_35),
        .out_36_16b (out_4_36),
        .out_37_16b (out_4_37),
        .out_38_16b (out_4_38),
        .out_39_16b (out_4_39),
        .out_40_16b (out_4_40),
        .out_41_16b (out_4_41),
        .out_42_16b (out_4_42),
        .out_43_16b (out_4_43),
        .out_44_16b (out_4_44),
        .out_45_16b (out_4_45),
        .out_46_16b (out_4_46),
        .out_47_16b (out_4_47),
        .out_48_16b (out_4_48),
        .out_49_16b (out_4_49),
        .out_50_16b (out_4_50),
        .out_51_16b (out_4_51),
        .out_52_16b (out_4_52),
        .out_53_16b (out_4_53),
        .out_54_16b (out_4_54),
        .out_55_16b (out_4_55),
        .out_56_16b (out_4_56),
        .out_57_16b (out_4_57),
        .out_58_16b (out_4_58),
        .out_59_16b (out_4_59),
        .out_60_16b (out_4_60),
        .out_61_16b (out_4_61),
        .out_62_16b (out_4_62),
        .out_63_16b (out_4_63),
        .out_64_16b (out_4_64),
        .out_65_16b (out_4_65),
        .out_66_16b (out_4_66),
        .out_67_16b (out_4_67),
        .out_68_16b (out_4_68),
        .out_69_16b (out_4_69),
        .out_70_16b (out_4_70)
    );


    ShiftReg_base_71_8bit ShiftersRow_5(
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
        .out_8_16b (out_5_8),
        .out_9_16b (out_5_9),
        .out_10_16b (out_5_10),
        .out_11_16b (out_5_11),
        .out_12_16b (out_5_12),
        .out_13_16b (out_5_13),
        .out_14_16b (out_5_14),
        .out_15_16b (out_5_15),
        .out_16_16b (out_5_16),
        .out_17_16b (out_5_17),
        .out_18_16b (out_5_18),
        .out_19_16b (out_5_19),
        .out_20_16b (out_5_20),
        .out_21_16b (out_5_21),
        .out_22_16b (out_5_22),
        .out_23_16b (out_5_23),
        .out_24_16b (out_5_24),
        .out_25_16b (out_5_25),
        .out_26_16b (out_5_26),
        .out_27_16b (out_5_27),
        .out_28_16b (out_5_28),
        .out_29_16b (out_5_29),
        .out_30_16b (out_5_30),
        .out_31_16b (out_5_31),
        .out_32_16b (out_5_32),
        .out_33_16b (out_5_33),
        .out_34_16b (out_5_34),
        .out_35_16b (out_5_35),
        .out_36_16b (out_5_36),
        .out_37_16b (out_5_37),
        .out_38_16b (out_5_38),
        .out_39_16b (out_5_39),
        .out_40_16b (out_5_40),
        .out_41_16b (out_5_41),
        .out_42_16b (out_5_42),
        .out_43_16b (out_5_43),
        .out_44_16b (out_5_44),
        .out_45_16b (out_5_45),
        .out_46_16b (out_5_46),
        .out_47_16b (out_5_47),
        .out_48_16b (out_5_48),
        .out_49_16b (out_5_49),
        .out_50_16b (out_5_50),
        .out_51_16b (out_5_51),
        .out_52_16b (out_5_52),
        .out_53_16b (out_5_53),
        .out_54_16b (out_5_54),
        .out_55_16b (out_5_55),
        .out_56_16b (out_5_56),
        .out_57_16b (out_5_57),
        .out_58_16b (out_5_58),
        .out_59_16b (out_5_59),
        .out_60_16b (out_5_60),
        .out_61_16b (out_5_61),
        .out_62_16b (out_5_62),
        .out_63_16b (out_5_63),
        .out_64_16b (out_5_64),
        .out_65_16b (out_5_65),
        .out_66_16b (out_5_66),
        .out_67_16b (out_5_67),
        .out_68_16b (out_5_68),
        .out_69_16b (out_5_69),
        .out_70_16b (out_5_70)
    );


    ShiftReg_base_71_8bit ShiftersRow_6(
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
        .out_8_16b (out_6_8),
        .out_9_16b (out_6_9),
        .out_10_16b (out_6_10),
        .out_11_16b (out_6_11),
        .out_12_16b (out_6_12),
        .out_13_16b (out_6_13),
        .out_14_16b (out_6_14),
        .out_15_16b (out_6_15),
        .out_16_16b (out_6_16),
        .out_17_16b (out_6_17),
        .out_18_16b (out_6_18),
        .out_19_16b (out_6_19),
        .out_20_16b (out_6_20),
        .out_21_16b (out_6_21),
        .out_22_16b (out_6_22),
        .out_23_16b (out_6_23),
        .out_24_16b (out_6_24),
        .out_25_16b (out_6_25),
        .out_26_16b (out_6_26),
        .out_27_16b (out_6_27),
        .out_28_16b (out_6_28),
        .out_29_16b (out_6_29),
        .out_30_16b (out_6_30),
        .out_31_16b (out_6_31),
        .out_32_16b (out_6_32),
        .out_33_16b (out_6_33),
        .out_34_16b (out_6_34),
        .out_35_16b (out_6_35),
        .out_36_16b (out_6_36),
        .out_37_16b (out_6_37),
        .out_38_16b (out_6_38),
        .out_39_16b (out_6_39),
        .out_40_16b (out_6_40),
        .out_41_16b (out_6_41),
        .out_42_16b (out_6_42),
        .out_43_16b (out_6_43),
        .out_44_16b (out_6_44),
        .out_45_16b (out_6_45),
        .out_46_16b (out_6_46),
        .out_47_16b (out_6_47),
        .out_48_16b (out_6_48),
        .out_49_16b (out_6_49),
        .out_50_16b (out_6_50),
        .out_51_16b (out_6_51),
        .out_52_16b (out_6_52),
        .out_53_16b (out_6_53),
        .out_54_16b (out_6_54),
        .out_55_16b (out_6_55),
        .out_56_16b (out_6_56),
        .out_57_16b (out_6_57),
        .out_58_16b (out_6_58),
        .out_59_16b (out_6_59),
        .out_60_16b (out_6_60),
        .out_61_16b (out_6_61),
        .out_62_16b (out_6_62),
        .out_63_16b (out_6_63),
        .out_64_16b (out_6_64),
        .out_65_16b (out_6_65),
        .out_66_16b (out_6_66),
        .out_67_16b (out_6_67),
        .out_68_16b (out_6_68),
        .out_69_16b (out_6_69),
        .out_70_16b (out_6_70)
    );


    ShiftReg_base_71_8bit ShiftersRow_7(
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
        .out_8_16b (out_7_8),
        .out_9_16b (out_7_9),
        .out_10_16b (out_7_10),
        .out_11_16b (out_7_11),
        .out_12_16b (out_7_12),
        .out_13_16b (out_7_13),
        .out_14_16b (out_7_14),
        .out_15_16b (out_7_15),
        .out_16_16b (out_7_16),
        .out_17_16b (out_7_17),
        .out_18_16b (out_7_18),
        .out_19_16b (out_7_19),
        .out_20_16b (out_7_20),
        .out_21_16b (out_7_21),
        .out_22_16b (out_7_22),
        .out_23_16b (out_7_23),
        .out_24_16b (out_7_24),
        .out_25_16b (out_7_25),
        .out_26_16b (out_7_26),
        .out_27_16b (out_7_27),
        .out_28_16b (out_7_28),
        .out_29_16b (out_7_29),
        .out_30_16b (out_7_30),
        .out_31_16b (out_7_31),
        .out_32_16b (out_7_32),
        .out_33_16b (out_7_33),
        .out_34_16b (out_7_34),
        .out_35_16b (out_7_35),
        .out_36_16b (out_7_36),
        .out_37_16b (out_7_37),
        .out_38_16b (out_7_38),
        .out_39_16b (out_7_39),
        .out_40_16b (out_7_40),
        .out_41_16b (out_7_41),
        .out_42_16b (out_7_42),
        .out_43_16b (out_7_43),
        .out_44_16b (out_7_44),
        .out_45_16b (out_7_45),
        .out_46_16b (out_7_46),
        .out_47_16b (out_7_47),
        .out_48_16b (out_7_48),
        .out_49_16b (out_7_49),
        .out_50_16b (out_7_50),
        .out_51_16b (out_7_51),
        .out_52_16b (out_7_52),
        .out_53_16b (out_7_53),
        .out_54_16b (out_7_54),
        .out_55_16b (out_7_55),
        .out_56_16b (out_7_56),
        .out_57_16b (out_7_57),
        .out_58_16b (out_7_58),
        .out_59_16b (out_7_59),
        .out_60_16b (out_7_60),
        .out_61_16b (out_7_61),
        .out_62_16b (out_7_62),
        .out_63_16b (out_7_63),
        .out_64_16b (out_7_64),
        .out_65_16b (out_7_65),
        .out_66_16b (out_7_66),
        .out_67_16b (out_7_67),
        .out_68_16b (out_7_68),
        .out_69_16b (out_7_69),
        .out_70_16b (out_7_70)
    );


endmodule

module ShiftReg_base_8_8bit (
    clk,

    inp_16b,

    out_0_16b,
    out_1_16b,
    out_2_16b,
    out_3_16b,
    out_4_16b,
    out_5_16b,
    out_6_16b,
    out_7_16b
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

    reg out_0_16b;
    reg out_1_16b;
    reg out_2_16b;
    reg out_3_16b;
    reg out_4_16b;
    reg out_5_16b;
    reg out_6_16b;
    reg out_7_16b;


    always @(posedge clk) begin
        out_0_16b <= inp_16b;
        out_1_16b <= out_0_16b;
        out_2_16b <= out_1_16b;
        out_3_16b <= out_2_16b;
        out_4_16b <= out_3_16b;
        out_5_16b <= out_4_16b;
        out_6_16b <= out_5_16b;
        out_7_16b <= out_6_16b;
    end

endmodule

module ShiftReg_base_71_8bit (
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
    out_8_16b,
    out_9_16b,
    out_10_16b,
    out_11_16b,
    out_12_16b,
    out_13_16b,
    out_14_16b,
    out_15_16b,
    out_16_16b,
    out_17_16b,
    out_18_16b,
    out_19_16b,
    out_20_16b,
    out_21_16b,
    out_22_16b,
    out_23_16b,
    out_24_16b,
    out_25_16b,
    out_26_16b,
    out_27_16b,
    out_28_16b,
    out_29_16b,
    out_30_16b,
    out_31_16b,
    out_32_16b,
    out_33_16b,
    out_34_16b,
    out_35_16b,
    out_36_16b,
    out_37_16b,
    out_38_16b,
    out_39_16b,
    out_40_16b,
    out_41_16b,
    out_42_16b,
    out_43_16b,
    out_44_16b,
    out_45_16b,
    out_46_16b,
    out_47_16b,
    out_48_16b,
    out_49_16b,
    out_50_16b,
    out_51_16b,
    out_52_16b,
    out_53_16b,
    out_54_16b,
    out_55_16b,
    out_56_16b,
    out_57_16b,
    out_58_16b,
    out_59_16b,
    out_60_16b,
    out_61_16b,
    out_62_16b,
    out_63_16b,
    out_64_16b,
    out_65_16b,
    out_66_16b,
    out_67_16b,
    out_68_16b,
    out_69_16b,
    out_70_16b
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
    output out_9_16b;
    output out_10_16b;
    output out_11_16b;
    output out_12_16b;
    output out_13_16b;
    output out_14_16b;
    output out_15_16b;
    output out_16_16b;
    output out_17_16b;
    output out_18_16b;
    output out_19_16b;
    output out_20_16b;
    output out_21_16b;
    output out_22_16b;
    output out_23_16b;
    output out_24_16b;
    output out_25_16b;
    output out_26_16b;
    output out_27_16b;
    output out_28_16b;
    output out_29_16b;
    output out_30_16b;
    output out_31_16b;
    output out_32_16b;
    output out_33_16b;
    output out_34_16b;
    output out_35_16b;
    output out_36_16b;
    output out_37_16b;
    output out_38_16b;
    output out_39_16b;
    output out_40_16b;
    output out_41_16b;
    output out_42_16b;
    output out_43_16b;
    output out_44_16b;
    output out_45_16b;
    output out_46_16b;
    output out_47_16b;
    output out_48_16b;
    output out_49_16b;
    output out_50_16b;
    output out_51_16b;
    output out_52_16b;
    output out_53_16b;
    output out_54_16b;
    output out_55_16b;
    output out_56_16b;
    output out_57_16b;
    output out_58_16b;
    output out_59_16b;
    output out_60_16b;
    output out_61_16b;
    output out_62_16b;
    output out_63_16b;
    output out_64_16b;
    output out_65_16b;
    output out_66_16b;
    output out_67_16b;
    output out_68_16b;
    output out_69_16b;
    output out_70_16b;

    reg out_0_16b;
    reg out_1_16b;
    reg out_2_16b;
    reg out_3_16b;
    reg out_4_16b;
    reg out_5_16b;
    reg out_6_16b;
    reg out_7_16b;
    reg out_8_16b;
    reg out_9_16b;
    reg out_10_16b;
    reg out_11_16b;
    reg out_12_16b;
    reg out_13_16b;
    reg out_14_16b;
    reg out_15_16b;
    reg out_16_16b;
    reg out_17_16b;
    reg out_18_16b;
    reg out_19_16b;
    reg out_20_16b;
    reg out_21_16b;
    reg out_22_16b;
    reg out_23_16b;
    reg out_24_16b;
    reg out_25_16b;
    reg out_26_16b;
    reg out_27_16b;
    reg out_28_16b;
    reg out_29_16b;
    reg out_30_16b;
    reg out_31_16b;
    reg out_32_16b;
    reg out_33_16b;
    reg out_34_16b;
    reg out_35_16b;
    reg out_36_16b;
    reg out_37_16b;
    reg out_38_16b;
    reg out_39_16b;
    reg out_40_16b;
    reg out_41_16b;
    reg out_42_16b;
    reg out_43_16b;
    reg out_44_16b;
    reg out_45_16b;
    reg out_46_16b;
    reg out_47_16b;
    reg out_48_16b;
    reg out_49_16b;
    reg out_50_16b;
    reg out_51_16b;
    reg out_52_16b;
    reg out_53_16b;
    reg out_54_16b;
    reg out_55_16b;
    reg out_56_16b;
    reg out_57_16b;
    reg out_58_16b;
    reg out_59_16b;
    reg out_60_16b;
    reg out_61_16b;
    reg out_62_16b;
    reg out_63_16b;
    reg out_64_16b;
    reg out_65_16b;
    reg out_66_16b;
    reg out_67_16b;
    reg out_68_16b;
    reg out_69_16b;
    reg out_70_16b;


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
        out_9_16b <= out_8_16b;
        out_10_16b <= out_9_16b;
        out_11_16b <= out_10_16b;
        out_12_16b <= out_11_16b;
        out_13_16b <= out_12_16b;
        out_14_16b <= out_13_16b;
        out_15_16b <= out_14_16b;
        out_16_16b <= out_15_16b;
        out_17_16b <= out_16_16b;
        out_18_16b <= out_17_16b;
        out_19_16b <= out_18_16b;
        out_20_16b <= out_19_16b;
        out_21_16b <= out_20_16b;
        out_22_16b <= out_21_16b;
        out_23_16b <= out_22_16b;
        out_24_16b <= out_23_16b;
        out_25_16b <= out_24_16b;
        out_26_16b <= out_25_16b;
        out_27_16b <= out_26_16b;
        out_28_16b <= out_27_16b;
        out_29_16b <= out_28_16b;
        out_30_16b <= out_29_16b;
        out_31_16b <= out_30_16b;
        out_32_16b <= out_31_16b;
        out_33_16b <= out_32_16b;
        out_34_16b <= out_33_16b;
        out_35_16b <= out_34_16b;
        out_36_16b <= out_35_16b;
        out_37_16b <= out_36_16b;
        out_38_16b <= out_37_16b;
        out_39_16b <= out_38_16b;
        out_40_16b <= out_39_16b;
        out_41_16b <= out_40_16b;
        out_42_16b <= out_41_16b;
        out_43_16b <= out_42_16b;
        out_44_16b <= out_43_16b;
        out_45_16b <= out_44_16b;
        out_46_16b <= out_45_16b;
        out_47_16b <= out_46_16b;
        out_48_16b <= out_47_16b;
        out_49_16b <= out_48_16b;
        out_50_16b <= out_49_16b;
        out_51_16b <= out_50_16b;
        out_52_16b <= out_51_16b;
        out_53_16b <= out_52_16b;
        out_54_16b <= out_53_16b;
        out_55_16b <= out_54_16b;
        out_56_16b <= out_55_16b;
        out_57_16b <= out_56_16b;
        out_58_16b <= out_57_16b;
        out_59_16b <= out_58_16b;
        out_60_16b <= out_59_16b;
        out_61_16b <= out_60_16b;
        out_62_16b <= out_61_16b;
        out_63_16b <= out_62_16b;
        out_64_16b <= out_63_16b;
        out_65_16b <= out_64_16b;
        out_66_16b <= out_65_16b;
        out_67_16b <= out_66_16b;
        out_68_16b <= out_67_16b;
        out_69_16b <= out_68_16b;
        out_70_16b <= out_69_16b;
    end

endmodule



/*
lb_access=16, sr_access=632, lb_capacity=14
Op stat      :  {'mult32': 16, 'shift': 1, 'mux': 20, 'logic': 0, 'div': 0, 'alu': 3106, 'mult': 1, 'cmp': 20}
Op width stat:  {'8b': 2068, '32b': 31, '1b': 20, 'other': 0, '16b': 1045}
Fanout stat  :  {0: 2104, 1: 1060}
Single child : 33%
3164 / 3164
*/

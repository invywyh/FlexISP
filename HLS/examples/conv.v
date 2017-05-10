// Source:  /home/tema8/projects/Halide-HLS/apps/hls_examples/conv_hls/hls_target.cpp 

module top(
//Inputs
  w_bias_16b,

  w_kernel_1_tap_stencil_0_0_16b,
  w_kernel_1_tap_stencil_0_1_16b,
  w_kernel_1_tap_stencil_0_2_16b,
  w_kernel_1_tap_stencil_0_3_16b,
  w_kernel_1_tap_stencil_0_4_16b,
  w_kernel_1_tap_stencil_1_0_16b,
  w_kernel_1_tap_stencil_1_1_16b,
  w_kernel_1_tap_stencil_1_2_16b,
  w_kernel_1_tap_stencil_1_3_16b,
  w_kernel_1_tap_stencil_1_4_16b,
  w_kernel_1_tap_stencil_2_0_16b,
  w_kernel_1_tap_stencil_2_1_16b,
  w_kernel_1_tap_stencil_2_2_16b,
  w_kernel_1_tap_stencil_2_3_16b,
  w_kernel_1_tap_stencil_2_4_16b,
  w_kernel_1_tap_stencil_3_0_16b,
  w_kernel_1_tap_stencil_3_1_16b,
  w_kernel_1_tap_stencil_3_2_16b,
  w_kernel_1_tap_stencil_3_3_16b,
  w_kernel_1_tap_stencil_3_4_16b,
  w_kernel_1_tap_stencil_4_0_16b,
  w_kernel_1_tap_stencil_4_1_16b,
  w_kernel_1_tap_stencil_4_2_16b,
  w_kernel_1_tap_stencil_4_3_16b,
  w_kernel_1_tap_stencil_4_4_16b,

  w_repeat_edge_1_stencil_update_stream_0_0_0_8b,
  w_repeat_edge_1_stencil_update_stream_0_0_1_8b,
  w_repeat_edge_1_stencil_update_stream_0_0_2_8b,

  w_weight_tap_stencil_0_0_8b,
  w_weight_tap_stencil_0_1_8b,
  w_weight_tap_stencil_0_2_8b,
  w_weight_tap_stencil_0_3_8b,
  w_weight_tap_stencil_0_4_8b,
  w_weight_tap_stencil_1_0_8b,
  w_weight_tap_stencil_1_1_8b,
  w_weight_tap_stencil_1_2_8b,
  w_weight_tap_stencil_1_3_8b,
  w_weight_tap_stencil_1_4_8b,
  w_weight_tap_stencil_2_0_8b,
  w_weight_tap_stencil_2_1_8b,
  w_weight_tap_stencil_2_2_8b,
  w_weight_tap_stencil_2_3_8b,
  w_weight_tap_stencil_2_4_8b,
  w_weight_tap_stencil_3_0_8b,
  w_weight_tap_stencil_3_1_8b,
  w_weight_tap_stencil_3_2_8b,
  w_weight_tap_stencil_3_3_8b,
  w_weight_tap_stencil_3_4_8b,
  w_weight_tap_stencil_4_0_8b,
  w_weight_tap_stencil_4_1_8b,
  w_weight_tap_stencil_4_2_8b,
  w_weight_tap_stencil_4_3_8b,
  w_weight_tap_stencil_4_4_8b,

//Outputs
  w_f1_stencil_stream_0_0_0_8b,
  w_f1_stencil_stream_0_0_1_8b,
  w_f1_stencil_stream_0_0_2_8b,

  clk
);

//Inputs
input    w_bias_16b;

input    w_kernel_1_tap_stencil_0_0_16b;
input    w_kernel_1_tap_stencil_0_1_16b;
input    w_kernel_1_tap_stencil_0_2_16b;
input    w_kernel_1_tap_stencil_0_3_16b;
input    w_kernel_1_tap_stencil_0_4_16b;
input    w_kernel_1_tap_stencil_1_0_16b;
input    w_kernel_1_tap_stencil_1_1_16b;
input    w_kernel_1_tap_stencil_1_2_16b;
input    w_kernel_1_tap_stencil_1_3_16b;
input    w_kernel_1_tap_stencil_1_4_16b;
input    w_kernel_1_tap_stencil_2_0_16b;
input    w_kernel_1_tap_stencil_2_1_16b;
input    w_kernel_1_tap_stencil_2_2_16b;
input    w_kernel_1_tap_stencil_2_3_16b;
input    w_kernel_1_tap_stencil_2_4_16b;
input    w_kernel_1_tap_stencil_3_0_16b;
input    w_kernel_1_tap_stencil_3_1_16b;
input    w_kernel_1_tap_stencil_3_2_16b;
input    w_kernel_1_tap_stencil_3_3_16b;
input    w_kernel_1_tap_stencil_3_4_16b;
input    w_kernel_1_tap_stencil_4_0_16b;
input    w_kernel_1_tap_stencil_4_1_16b;
input    w_kernel_1_tap_stencil_4_2_16b;
input    w_kernel_1_tap_stencil_4_3_16b;
input    w_kernel_1_tap_stencil_4_4_16b;

input    w_repeat_edge_1_stencil_update_stream_0_0_0_8b;
input    w_repeat_edge_1_stencil_update_stream_0_0_1_8b;
input    w_repeat_edge_1_stencil_update_stream_0_0_2_8b;

input    w_weight_tap_stencil_0_0_8b;
input    w_weight_tap_stencil_0_1_8b;
input    w_weight_tap_stencil_0_2_8b;
input    w_weight_tap_stencil_0_3_8b;
input    w_weight_tap_stencil_0_4_8b;
input    w_weight_tap_stencil_1_0_8b;
input    w_weight_tap_stencil_1_1_8b;
input    w_weight_tap_stencil_1_2_8b;
input    w_weight_tap_stencil_1_3_8b;
input    w_weight_tap_stencil_1_4_8b;
input    w_weight_tap_stencil_2_0_8b;
input    w_weight_tap_stencil_2_1_8b;
input    w_weight_tap_stencil_2_2_8b;
input    w_weight_tap_stencil_2_3_8b;
input    w_weight_tap_stencil_2_4_8b;
input    w_weight_tap_stencil_3_0_8b;
input    w_weight_tap_stencil_3_1_8b;
input    w_weight_tap_stencil_3_2_8b;
input    w_weight_tap_stencil_3_3_8b;
input    w_weight_tap_stencil_3_4_8b;
input    w_weight_tap_stencil_4_0_8b;
input    w_weight_tap_stencil_4_1_8b;
input    w_weight_tap_stencil_4_2_8b;
input    w_weight_tap_stencil_4_3_8b;
input    w_weight_tap_stencil_4_4_8b;

//Outputs
output   w_f1_stencil_stream_0_0_0_8b;
output   w_f1_stencil_stream_0_0_1_8b;
output   w_f1_stencil_stream_0_0_2_8b;

input   clk;

wire   w_conv1_1_stencil_stream_0_0_0_16b;
wire   w_conv1_1_stencil_stream_0_0_1_16b;
wire   w_conv1_1_stencil_stream_0_0_2_16b;
wire   w_conv1_1_stencil_stream_0_1_0_16b;
wire   w_conv1_1_stencil_stream_0_1_1_16b;
wire   w_conv1_1_stencil_stream_0_1_2_16b;
wire   w_conv1_1_stencil_stream_0_2_0_16b;
wire   w_conv1_1_stencil_stream_0_2_1_16b;
wire   w_conv1_1_stencil_stream_0_2_2_16b;
wire   w_conv1_1_stencil_stream_0_3_0_16b;
wire   w_conv1_1_stencil_stream_0_3_1_16b;
wire   w_conv1_1_stencil_stream_0_3_2_16b;
wire   w_conv1_1_stencil_stream_0_4_0_16b;
wire   w_conv1_1_stencil_stream_0_4_1_16b;
wire   w_conv1_1_stencil_stream_0_4_2_16b;
wire   w_conv1_1_stencil_stream_1_0_0_16b;
wire   w_conv1_1_stencil_stream_1_0_1_16b;
wire   w_conv1_1_stencil_stream_1_0_2_16b;
wire   w_conv1_1_stencil_stream_1_1_0_16b;
wire   w_conv1_1_stencil_stream_1_1_1_16b;
wire   w_conv1_1_stencil_stream_1_1_2_16b;
wire   w_conv1_1_stencil_stream_1_2_0_16b;
wire   w_conv1_1_stencil_stream_1_2_1_16b;
wire   w_conv1_1_stencil_stream_1_2_2_16b;
wire   w_conv1_1_stencil_stream_1_3_0_16b;
wire   w_conv1_1_stencil_stream_1_3_1_16b;
wire   w_conv1_1_stencil_stream_1_3_2_16b;
wire   w_conv1_1_stencil_stream_1_4_0_16b;
wire   w_conv1_1_stencil_stream_1_4_1_16b;
wire   w_conv1_1_stencil_stream_1_4_2_16b;
wire   w_conv1_1_stencil_stream_2_0_0_16b;
wire   w_conv1_1_stencil_stream_2_0_1_16b;
wire   w_conv1_1_stencil_stream_2_0_2_16b;
wire   w_conv1_1_stencil_stream_2_1_0_16b;
wire   w_conv1_1_stencil_stream_2_1_1_16b;
wire   w_conv1_1_stencil_stream_2_1_2_16b;
wire   w_conv1_1_stencil_stream_2_2_0_16b;
wire   w_conv1_1_stencil_stream_2_2_1_16b;
wire   w_conv1_1_stencil_stream_2_2_2_16b;
wire   w_conv1_1_stencil_stream_2_3_0_16b;
wire   w_conv1_1_stencil_stream_2_3_1_16b;
wire   w_conv1_1_stencil_stream_2_3_2_16b;
wire   w_conv1_1_stencil_stream_2_4_0_16b;
wire   w_conv1_1_stencil_stream_2_4_1_16b;
wire   w_conv1_1_stencil_stream_2_4_2_16b;
wire   w_conv1_1_stencil_stream_3_0_0_16b;
wire   w_conv1_1_stencil_stream_3_0_1_16b;
wire   w_conv1_1_stencil_stream_3_0_2_16b;
wire   w_conv1_1_stencil_stream_3_1_0_16b;
wire   w_conv1_1_stencil_stream_3_1_1_16b;
wire   w_conv1_1_stencil_stream_3_1_2_16b;
wire   w_conv1_1_stencil_stream_3_2_0_16b;
wire   w_conv1_1_stencil_stream_3_2_1_16b;
wire   w_conv1_1_stencil_stream_3_2_2_16b;
wire   w_conv1_1_stencil_stream_3_3_0_16b;
wire   w_conv1_1_stencil_stream_3_3_1_16b;
wire   w_conv1_1_stencil_stream_3_3_2_16b;
wire   w_conv1_1_stencil_stream_3_4_0_16b;
wire   w_conv1_1_stencil_stream_3_4_1_16b;
wire   w_conv1_1_stencil_stream_3_4_2_16b;
wire   w_conv1_1_stencil_stream_4_0_0_16b;
wire   w_conv1_1_stencil_stream_4_0_1_16b;
wire   w_conv1_1_stencil_stream_4_0_2_16b;
wire   w_conv1_1_stencil_stream_4_1_0_16b;
wire   w_conv1_1_stencil_stream_4_1_1_16b;
wire   w_conv1_1_stencil_stream_4_1_2_16b;
wire   w_conv1_1_stencil_stream_4_2_0_16b;
wire   w_conv1_1_stencil_stream_4_2_1_16b;
wire   w_conv1_1_stencil_stream_4_2_2_16b;
wire   w_conv1_1_stencil_stream_4_3_0_16b;
wire   w_conv1_1_stencil_stream_4_3_1_16b;
wire   w_conv1_1_stencil_stream_4_3_2_16b;
wire   w_conv1_1_stencil_stream_4_4_0_16b;
wire   w_conv1_1_stencil_stream_4_4_1_16b;
wire   w_conv1_1_stencil_stream_4_4_2_16b;

wire   w_conv1_1_stencil_update_stream_0_0_0_16b;
wire   w_conv1_1_stencil_update_stream_0_0_1_16b;
wire   w_conv1_1_stencil_update_stream_0_0_2_16b;

wire   w_repeat_edge_1_stencil_stream_0_0_0_8b;
wire   w_repeat_edge_1_stencil_stream_0_0_1_8b;
wire   w_repeat_edge_1_stencil_stream_0_0_2_8b;
wire   w_repeat_edge_1_stencil_stream_0_1_0_8b;
wire   w_repeat_edge_1_stencil_stream_0_1_1_8b;
wire   w_repeat_edge_1_stencil_stream_0_1_2_8b;
wire   w_repeat_edge_1_stencil_stream_0_2_0_8b;
wire   w_repeat_edge_1_stencil_stream_0_2_1_8b;
wire   w_repeat_edge_1_stencil_stream_0_2_2_8b;
wire   w_repeat_edge_1_stencil_stream_0_3_0_8b;
wire   w_repeat_edge_1_stencil_stream_0_3_1_8b;
wire   w_repeat_edge_1_stencil_stream_0_3_2_8b;
wire   w_repeat_edge_1_stencil_stream_0_4_0_8b;
wire   w_repeat_edge_1_stencil_stream_0_4_1_8b;
wire   w_repeat_edge_1_stencil_stream_0_4_2_8b;
wire   w_repeat_edge_1_stencil_stream_1_0_0_8b;
wire   w_repeat_edge_1_stencil_stream_1_0_1_8b;
wire   w_repeat_edge_1_stencil_stream_1_0_2_8b;
wire   w_repeat_edge_1_stencil_stream_1_1_0_8b;
wire   w_repeat_edge_1_stencil_stream_1_1_1_8b;
wire   w_repeat_edge_1_stencil_stream_1_1_2_8b;
wire   w_repeat_edge_1_stencil_stream_1_2_0_8b;
wire   w_repeat_edge_1_stencil_stream_1_2_1_8b;
wire   w_repeat_edge_1_stencil_stream_1_2_2_8b;
wire   w_repeat_edge_1_stencil_stream_1_3_0_8b;
wire   w_repeat_edge_1_stencil_stream_1_3_1_8b;
wire   w_repeat_edge_1_stencil_stream_1_3_2_8b;
wire   w_repeat_edge_1_stencil_stream_1_4_0_8b;
wire   w_repeat_edge_1_stencil_stream_1_4_1_8b;
wire   w_repeat_edge_1_stencil_stream_1_4_2_8b;
wire   w_repeat_edge_1_stencil_stream_2_0_0_8b;
wire   w_repeat_edge_1_stencil_stream_2_0_1_8b;
wire   w_repeat_edge_1_stencil_stream_2_0_2_8b;
wire   w_repeat_edge_1_stencil_stream_2_1_0_8b;
wire   w_repeat_edge_1_stencil_stream_2_1_1_8b;
wire   w_repeat_edge_1_stencil_stream_2_1_2_8b;
wire   w_repeat_edge_1_stencil_stream_2_2_0_8b;
wire   w_repeat_edge_1_stencil_stream_2_2_1_8b;
wire   w_repeat_edge_1_stencil_stream_2_2_2_8b;
wire   w_repeat_edge_1_stencil_stream_2_3_0_8b;
wire   w_repeat_edge_1_stencil_stream_2_3_1_8b;
wire   w_repeat_edge_1_stencil_stream_2_3_2_8b;
wire   w_repeat_edge_1_stencil_stream_2_4_0_8b;
wire   w_repeat_edge_1_stencil_stream_2_4_1_8b;
wire   w_repeat_edge_1_stencil_stream_2_4_2_8b;
wire   w_repeat_edge_1_stencil_stream_3_0_0_8b;
wire   w_repeat_edge_1_stencil_stream_3_0_1_8b;
wire   w_repeat_edge_1_stencil_stream_3_0_2_8b;
wire   w_repeat_edge_1_stencil_stream_3_1_0_8b;
wire   w_repeat_edge_1_stencil_stream_3_1_1_8b;
wire   w_repeat_edge_1_stencil_stream_3_1_2_8b;
wire   w_repeat_edge_1_stencil_stream_3_2_0_8b;
wire   w_repeat_edge_1_stencil_stream_3_2_1_8b;
wire   w_repeat_edge_1_stencil_stream_3_2_2_8b;
wire   w_repeat_edge_1_stencil_stream_3_3_0_8b;
wire   w_repeat_edge_1_stencil_stream_3_3_1_8b;
wire   w_repeat_edge_1_stencil_stream_3_3_2_8b;
wire   w_repeat_edge_1_stencil_stream_3_4_0_8b;
wire   w_repeat_edge_1_stencil_stream_3_4_1_8b;
wire   w_repeat_edge_1_stencil_stream_3_4_2_8b;
wire   w_repeat_edge_1_stencil_stream_4_0_0_8b;
wire   w_repeat_edge_1_stencil_stream_4_0_1_8b;
wire   w_repeat_edge_1_stencil_stream_4_0_2_8b;
wire   w_repeat_edge_1_stencil_stream_4_1_0_8b;
wire   w_repeat_edge_1_stencil_stream_4_1_1_8b;
wire   w_repeat_edge_1_stencil_stream_4_1_2_8b;
wire   w_repeat_edge_1_stencil_stream_4_2_0_8b;
wire   w_repeat_edge_1_stencil_stream_4_2_1_8b;
wire   w_repeat_edge_1_stencil_stream_4_2_2_8b;
wire   w_repeat_edge_1_stencil_stream_4_3_0_8b;
wire   w_repeat_edge_1_stencil_stream_4_3_1_8b;
wire   w_repeat_edge_1_stencil_stream_4_3_2_8b;
wire   w_repeat_edge_1_stencil_stream_4_4_0_8b;
wire   w_repeat_edge_1_stencil_stream_4_4_1_8b;
wire   w_repeat_edge_1_stencil_stream_4_4_2_8b;

wire   gnd;
assign gnd=1'b0;

kernel__conv1_1_stencil_update_stream KERN__conv1_1_stencil_update_stream (
    .w_kernel_1_tap_stencil_0_0_16b(w_kernel_1_tap_stencil_0_0_16b),
    .w_kernel_1_tap_stencil_0_1_16b(w_kernel_1_tap_stencil_0_1_16b),
    .w_kernel_1_tap_stencil_0_2_16b(w_kernel_1_tap_stencil_0_2_16b),
    .w_kernel_1_tap_stencil_0_3_16b(w_kernel_1_tap_stencil_0_3_16b),
    .w_kernel_1_tap_stencil_0_4_16b(w_kernel_1_tap_stencil_0_4_16b),
    .w_kernel_1_tap_stencil_1_0_16b(w_kernel_1_tap_stencil_1_0_16b),
    .w_kernel_1_tap_stencil_1_1_16b(w_kernel_1_tap_stencil_1_1_16b),
    .w_kernel_1_tap_stencil_1_2_16b(w_kernel_1_tap_stencil_1_2_16b),
    .w_kernel_1_tap_stencil_1_3_16b(w_kernel_1_tap_stencil_1_3_16b),
    .w_kernel_1_tap_stencil_1_4_16b(w_kernel_1_tap_stencil_1_4_16b),
    .w_kernel_1_tap_stencil_2_0_16b(w_kernel_1_tap_stencil_2_0_16b),
    .w_kernel_1_tap_stencil_2_1_16b(w_kernel_1_tap_stencil_2_1_16b),
    .w_kernel_1_tap_stencil_2_2_16b(w_kernel_1_tap_stencil_2_2_16b),
    .w_kernel_1_tap_stencil_2_3_16b(w_kernel_1_tap_stencil_2_3_16b),
    .w_kernel_1_tap_stencil_2_4_16b(w_kernel_1_tap_stencil_2_4_16b),
    .w_kernel_1_tap_stencil_3_0_16b(w_kernel_1_tap_stencil_3_0_16b),
    .w_kernel_1_tap_stencil_3_1_16b(w_kernel_1_tap_stencil_3_1_16b),
    .w_kernel_1_tap_stencil_3_2_16b(w_kernel_1_tap_stencil_3_2_16b),
    .w_kernel_1_tap_stencil_3_3_16b(w_kernel_1_tap_stencil_3_3_16b),
    .w_kernel_1_tap_stencil_3_4_16b(w_kernel_1_tap_stencil_3_4_16b),
    .w_kernel_1_tap_stencil_4_0_16b(w_kernel_1_tap_stencil_4_0_16b),
    .w_kernel_1_tap_stencil_4_1_16b(w_kernel_1_tap_stencil_4_1_16b),
    .w_kernel_1_tap_stencil_4_2_16b(w_kernel_1_tap_stencil_4_2_16b),
    .w_kernel_1_tap_stencil_4_3_16b(w_kernel_1_tap_stencil_4_3_16b),
    .w_kernel_1_tap_stencil_4_4_16b(w_kernel_1_tap_stencil_4_4_16b),
    .w_repeat_edge_1_stencil_0_0_0_8b(w_repeat_edge_1_stencil_stream_0_0_0_8b),
    .w_repeat_edge_1_stencil_0_0_1_8b(w_repeat_edge_1_stencil_stream_0_0_1_8b),
    .w_repeat_edge_1_stencil_0_0_2_8b(w_repeat_edge_1_stencil_stream_0_0_2_8b),
    .w_repeat_edge_1_stencil_0_1_0_8b(w_repeat_edge_1_stencil_stream_0_1_0_8b),
    .w_repeat_edge_1_stencil_0_1_1_8b(w_repeat_edge_1_stencil_stream_0_1_1_8b),
    .w_repeat_edge_1_stencil_0_1_2_8b(w_repeat_edge_1_stencil_stream_0_1_2_8b),
    .w_repeat_edge_1_stencil_0_2_0_8b(w_repeat_edge_1_stencil_stream_0_2_0_8b),
    .w_repeat_edge_1_stencil_0_2_1_8b(w_repeat_edge_1_stencil_stream_0_2_1_8b),
    .w_repeat_edge_1_stencil_0_2_2_8b(w_repeat_edge_1_stencil_stream_0_2_2_8b),
    .w_repeat_edge_1_stencil_0_3_0_8b(w_repeat_edge_1_stencil_stream_0_3_0_8b),
    .w_repeat_edge_1_stencil_0_3_1_8b(w_repeat_edge_1_stencil_stream_0_3_1_8b),
    .w_repeat_edge_1_stencil_0_3_2_8b(w_repeat_edge_1_stencil_stream_0_3_2_8b),
    .w_repeat_edge_1_stencil_0_4_0_8b(w_repeat_edge_1_stencil_stream_0_4_0_8b),
    .w_repeat_edge_1_stencil_0_4_1_8b(w_repeat_edge_1_stencil_stream_0_4_1_8b),
    .w_repeat_edge_1_stencil_0_4_2_8b(w_repeat_edge_1_stencil_stream_0_4_2_8b),
    .w_repeat_edge_1_stencil_1_0_0_8b(w_repeat_edge_1_stencil_stream_1_0_0_8b),
    .w_repeat_edge_1_stencil_1_0_1_8b(w_repeat_edge_1_stencil_stream_1_0_1_8b),
    .w_repeat_edge_1_stencil_1_0_2_8b(w_repeat_edge_1_stencil_stream_1_0_2_8b),
    .w_repeat_edge_1_stencil_1_1_0_8b(w_repeat_edge_1_stencil_stream_1_1_0_8b),
    .w_repeat_edge_1_stencil_1_1_1_8b(w_repeat_edge_1_stencil_stream_1_1_1_8b),
    .w_repeat_edge_1_stencil_1_1_2_8b(w_repeat_edge_1_stencil_stream_1_1_2_8b),
    .w_repeat_edge_1_stencil_1_2_0_8b(w_repeat_edge_1_stencil_stream_1_2_0_8b),
    .w_repeat_edge_1_stencil_1_2_1_8b(w_repeat_edge_1_stencil_stream_1_2_1_8b),
    .w_repeat_edge_1_stencil_1_2_2_8b(w_repeat_edge_1_stencil_stream_1_2_2_8b),
    .w_repeat_edge_1_stencil_1_3_0_8b(w_repeat_edge_1_stencil_stream_1_3_0_8b),
    .w_repeat_edge_1_stencil_1_3_1_8b(w_repeat_edge_1_stencil_stream_1_3_1_8b),
    .w_repeat_edge_1_stencil_1_3_2_8b(w_repeat_edge_1_stencil_stream_1_3_2_8b),
    .w_repeat_edge_1_stencil_1_4_0_8b(w_repeat_edge_1_stencil_stream_1_4_0_8b),
    .w_repeat_edge_1_stencil_1_4_1_8b(w_repeat_edge_1_stencil_stream_1_4_1_8b),
    .w_repeat_edge_1_stencil_1_4_2_8b(w_repeat_edge_1_stencil_stream_1_4_2_8b),
    .w_repeat_edge_1_stencil_2_0_0_8b(w_repeat_edge_1_stencil_stream_2_0_0_8b),
    .w_repeat_edge_1_stencil_2_0_1_8b(w_repeat_edge_1_stencil_stream_2_0_1_8b),
    .w_repeat_edge_1_stencil_2_0_2_8b(w_repeat_edge_1_stencil_stream_2_0_2_8b),
    .w_repeat_edge_1_stencil_2_1_0_8b(w_repeat_edge_1_stencil_stream_2_1_0_8b),
    .w_repeat_edge_1_stencil_2_1_1_8b(w_repeat_edge_1_stencil_stream_2_1_1_8b),
    .w_repeat_edge_1_stencil_2_1_2_8b(w_repeat_edge_1_stencil_stream_2_1_2_8b),
    .w_repeat_edge_1_stencil_2_2_0_8b(w_repeat_edge_1_stencil_stream_2_2_0_8b),
    .w_repeat_edge_1_stencil_2_2_1_8b(w_repeat_edge_1_stencil_stream_2_2_1_8b),
    .w_repeat_edge_1_stencil_2_2_2_8b(w_repeat_edge_1_stencil_stream_2_2_2_8b),
    .w_repeat_edge_1_stencil_2_3_0_8b(w_repeat_edge_1_stencil_stream_2_3_0_8b),
    .w_repeat_edge_1_stencil_2_3_1_8b(w_repeat_edge_1_stencil_stream_2_3_1_8b),
    .w_repeat_edge_1_stencil_2_3_2_8b(w_repeat_edge_1_stencil_stream_2_3_2_8b),
    .w_repeat_edge_1_stencil_2_4_0_8b(w_repeat_edge_1_stencil_stream_2_4_0_8b),
    .w_repeat_edge_1_stencil_2_4_1_8b(w_repeat_edge_1_stencil_stream_2_4_1_8b),
    .w_repeat_edge_1_stencil_2_4_2_8b(w_repeat_edge_1_stencil_stream_2_4_2_8b),
    .w_repeat_edge_1_stencil_3_0_0_8b(w_repeat_edge_1_stencil_stream_3_0_0_8b),
    .w_repeat_edge_1_stencil_3_0_1_8b(w_repeat_edge_1_stencil_stream_3_0_1_8b),
    .w_repeat_edge_1_stencil_3_0_2_8b(w_repeat_edge_1_stencil_stream_3_0_2_8b),
    .w_repeat_edge_1_stencil_3_1_0_8b(w_repeat_edge_1_stencil_stream_3_1_0_8b),
    .w_repeat_edge_1_stencil_3_1_1_8b(w_repeat_edge_1_stencil_stream_3_1_1_8b),
    .w_repeat_edge_1_stencil_3_1_2_8b(w_repeat_edge_1_stencil_stream_3_1_2_8b),
    .w_repeat_edge_1_stencil_3_2_0_8b(w_repeat_edge_1_stencil_stream_3_2_0_8b),
    .w_repeat_edge_1_stencil_3_2_1_8b(w_repeat_edge_1_stencil_stream_3_2_1_8b),
    .w_repeat_edge_1_stencil_3_2_2_8b(w_repeat_edge_1_stencil_stream_3_2_2_8b),
    .w_repeat_edge_1_stencil_3_3_0_8b(w_repeat_edge_1_stencil_stream_3_3_0_8b),
    .w_repeat_edge_1_stencil_3_3_1_8b(w_repeat_edge_1_stencil_stream_3_3_1_8b),
    .w_repeat_edge_1_stencil_3_3_2_8b(w_repeat_edge_1_stencil_stream_3_3_2_8b),
    .w_repeat_edge_1_stencil_3_4_0_8b(w_repeat_edge_1_stencil_stream_3_4_0_8b),
    .w_repeat_edge_1_stencil_3_4_1_8b(w_repeat_edge_1_stencil_stream_3_4_1_8b),
    .w_repeat_edge_1_stencil_3_4_2_8b(w_repeat_edge_1_stencil_stream_3_4_2_8b),
    .w_repeat_edge_1_stencil_4_0_0_8b(w_repeat_edge_1_stencil_stream_4_0_0_8b),
    .w_repeat_edge_1_stencil_4_0_1_8b(w_repeat_edge_1_stencil_stream_4_0_1_8b),
    .w_repeat_edge_1_stencil_4_0_2_8b(w_repeat_edge_1_stencil_stream_4_0_2_8b),
    .w_repeat_edge_1_stencil_4_1_0_8b(w_repeat_edge_1_stencil_stream_4_1_0_8b),
    .w_repeat_edge_1_stencil_4_1_1_8b(w_repeat_edge_1_stencil_stream_4_1_1_8b),
    .w_repeat_edge_1_stencil_4_1_2_8b(w_repeat_edge_1_stencil_stream_4_1_2_8b),
    .w_repeat_edge_1_stencil_4_2_0_8b(w_repeat_edge_1_stencil_stream_4_2_0_8b),
    .w_repeat_edge_1_stencil_4_2_1_8b(w_repeat_edge_1_stencil_stream_4_2_1_8b),
    .w_repeat_edge_1_stencil_4_2_2_8b(w_repeat_edge_1_stencil_stream_4_2_2_8b),
    .w_repeat_edge_1_stencil_4_3_0_8b(w_repeat_edge_1_stencil_stream_4_3_0_8b),
    .w_repeat_edge_1_stencil_4_3_1_8b(w_repeat_edge_1_stencil_stream_4_3_1_8b),
    .w_repeat_edge_1_stencil_4_3_2_8b(w_repeat_edge_1_stencil_stream_4_3_2_8b),
    .w_repeat_edge_1_stencil_4_4_0_8b(w_repeat_edge_1_stencil_stream_4_4_0_8b),
    .w_repeat_edge_1_stencil_4_4_1_8b(w_repeat_edge_1_stencil_stream_4_4_1_8b),
    .w_repeat_edge_1_stencil_4_4_2_8b(w_repeat_edge_1_stencil_stream_4_4_2_8b),

    .out_w_conv1_1_stencil_0_0_0_16b(w_conv1_1_stencil_update_stream_0_0_0_16b),
    .out_w_conv1_1_stencil_0_0_1_16b(w_conv1_1_stencil_update_stream_0_0_1_16b),
    .out_w_conv1_1_stencil_0_0_2_16b(w_conv1_1_stencil_update_stream_0_0_2_16b),

    .clk(clk)
);

LB_5_5_3_16bit_False LB__conv1_1_stencil_stream (
    .clk(clk),

    .in0(w_conv1_1_stencil_update_stream_0_0_0_16b),
    .in1(w_conv1_1_stencil_update_stream_0_0_1_16b),
    .in2(w_conv1_1_stencil_update_stream_0_0_2_16b),

    .out0(w_conv1_1_stencil_stream_0_0_0_16b),
    .out1(w_conv1_1_stencil_stream_0_0_1_16b),
    .out2(w_conv1_1_stencil_stream_0_0_2_16b),
    .out3(w_conv1_1_stencil_stream_0_1_0_16b),
    .out4(w_conv1_1_stencil_stream_0_1_1_16b),
    .out5(w_conv1_1_stencil_stream_0_1_2_16b),
    .out6(w_conv1_1_stencil_stream_0_2_0_16b),
    .out7(w_conv1_1_stencil_stream_0_2_1_16b),
    .out8(w_conv1_1_stencil_stream_0_2_2_16b),
    .out9(w_conv1_1_stencil_stream_0_3_0_16b),
    .out10(w_conv1_1_stencil_stream_0_3_1_16b),
    .out11(w_conv1_1_stencil_stream_0_3_2_16b),
    .out12(w_conv1_1_stencil_stream_0_4_0_16b),
    .out13(w_conv1_1_stencil_stream_0_4_1_16b),
    .out14(w_conv1_1_stencil_stream_0_4_2_16b),
    .out15(w_conv1_1_stencil_stream_1_0_0_16b),
    .out16(w_conv1_1_stencil_stream_1_0_1_16b),
    .out17(w_conv1_1_stencil_stream_1_0_2_16b),
    .out18(w_conv1_1_stencil_stream_1_1_0_16b),
    .out19(w_conv1_1_stencil_stream_1_1_1_16b),
    .out20(w_conv1_1_stencil_stream_1_1_2_16b),
    .out21(w_conv1_1_stencil_stream_1_2_0_16b),
    .out22(w_conv1_1_stencil_stream_1_2_1_16b),
    .out23(w_conv1_1_stencil_stream_1_2_2_16b),
    .out24(w_conv1_1_stencil_stream_1_3_0_16b),
    .out25(w_conv1_1_stencil_stream_1_3_1_16b),
    .out26(w_conv1_1_stencil_stream_1_3_2_16b),
    .out27(w_conv1_1_stencil_stream_1_4_0_16b),
    .out28(w_conv1_1_stencil_stream_1_4_1_16b),
    .out29(w_conv1_1_stencil_stream_1_4_2_16b),
    .out30(w_conv1_1_stencil_stream_2_0_0_16b),
    .out31(w_conv1_1_stencil_stream_2_0_1_16b),
    .out32(w_conv1_1_stencil_stream_2_0_2_16b),
    .out33(w_conv1_1_stencil_stream_2_1_0_16b),
    .out34(w_conv1_1_stencil_stream_2_1_1_16b),
    .out35(w_conv1_1_stencil_stream_2_1_2_16b),
    .out36(w_conv1_1_stencil_stream_2_2_0_16b),
    .out37(w_conv1_1_stencil_stream_2_2_1_16b),
    .out38(w_conv1_1_stencil_stream_2_2_2_16b),
    .out39(w_conv1_1_stencil_stream_2_3_0_16b),
    .out40(w_conv1_1_stencil_stream_2_3_1_16b),
    .out41(w_conv1_1_stencil_stream_2_3_2_16b),
    .out42(w_conv1_1_stencil_stream_2_4_0_16b),
    .out43(w_conv1_1_stencil_stream_2_4_1_16b),
    .out44(w_conv1_1_stencil_stream_2_4_2_16b),
    .out45(w_conv1_1_stencil_stream_3_0_0_16b),
    .out46(w_conv1_1_stencil_stream_3_0_1_16b),
    .out47(w_conv1_1_stencil_stream_3_0_2_16b),
    .out48(w_conv1_1_stencil_stream_3_1_0_16b),
    .out49(w_conv1_1_stencil_stream_3_1_1_16b),
    .out50(w_conv1_1_stencil_stream_3_1_2_16b),
    .out51(w_conv1_1_stencil_stream_3_2_0_16b),
    .out52(w_conv1_1_stencil_stream_3_2_1_16b),
    .out53(w_conv1_1_stencil_stream_3_2_2_16b),
    .out54(w_conv1_1_stencil_stream_3_3_0_16b),
    .out55(w_conv1_1_stencil_stream_3_3_1_16b),
    .out56(w_conv1_1_stencil_stream_3_3_2_16b),
    .out57(w_conv1_1_stencil_stream_3_4_0_16b),
    .out58(w_conv1_1_stencil_stream_3_4_1_16b),
    .out59(w_conv1_1_stencil_stream_3_4_2_16b),
    .out60(w_conv1_1_stencil_stream_4_0_0_16b),
    .out61(w_conv1_1_stencil_stream_4_0_1_16b),
    .out62(w_conv1_1_stencil_stream_4_0_2_16b),
    .out63(w_conv1_1_stencil_stream_4_1_0_16b),
    .out64(w_conv1_1_stencil_stream_4_1_1_16b),
    .out65(w_conv1_1_stencil_stream_4_1_2_16b),
    .out66(w_conv1_1_stencil_stream_4_2_0_16b),
    .out67(w_conv1_1_stencil_stream_4_2_1_16b),
    .out68(w_conv1_1_stencil_stream_4_2_2_16b),
    .out69(w_conv1_1_stencil_stream_4_3_0_16b),
    .out70(w_conv1_1_stencil_stream_4_3_1_16b),
    .out71(w_conv1_1_stencil_stream_4_3_2_16b),
    .out72(w_conv1_1_stencil_stream_4_4_0_16b),
    .out73(w_conv1_1_stencil_stream_4_4_1_16b),
    .out74(w_conv1_1_stencil_stream_4_4_2_16b)
);

kernel__f1_stencil_stream KERN__f1_stencil_stream (
    .w_bias_16b(w_bias_16b),
    .w_conv1_1_stencil_0_0_0_16b(w_conv1_1_stencil_stream_0_0_0_16b),
    .w_conv1_1_stencil_0_0_1_16b(w_conv1_1_stencil_stream_0_0_1_16b),
    .w_conv1_1_stencil_0_0_2_16b(w_conv1_1_stencil_stream_0_0_2_16b),
    .w_conv1_1_stencil_0_1_0_16b(w_conv1_1_stencil_stream_0_1_0_16b),
    .w_conv1_1_stencil_0_1_1_16b(w_conv1_1_stencil_stream_0_1_1_16b),
    .w_conv1_1_stencil_0_1_2_16b(w_conv1_1_stencil_stream_0_1_2_16b),
    .w_conv1_1_stencil_0_2_0_16b(w_conv1_1_stencil_stream_0_2_0_16b),
    .w_conv1_1_stencil_0_2_1_16b(w_conv1_1_stencil_stream_0_2_1_16b),
    .w_conv1_1_stencil_0_2_2_16b(w_conv1_1_stencil_stream_0_2_2_16b),
    .w_conv1_1_stencil_0_3_0_16b(w_conv1_1_stencil_stream_0_3_0_16b),
    .w_conv1_1_stencil_0_3_1_16b(w_conv1_1_stencil_stream_0_3_1_16b),
    .w_conv1_1_stencil_0_3_2_16b(w_conv1_1_stencil_stream_0_3_2_16b),
    .w_conv1_1_stencil_0_4_0_16b(w_conv1_1_stencil_stream_0_4_0_16b),
    .w_conv1_1_stencil_0_4_1_16b(w_conv1_1_stencil_stream_0_4_1_16b),
    .w_conv1_1_stencil_0_4_2_16b(w_conv1_1_stencil_stream_0_4_2_16b),
    .w_conv1_1_stencil_1_0_0_16b(w_conv1_1_stencil_stream_1_0_0_16b),
    .w_conv1_1_stencil_1_0_1_16b(w_conv1_1_stencil_stream_1_0_1_16b),
    .w_conv1_1_stencil_1_0_2_16b(w_conv1_1_stencil_stream_1_0_2_16b),
    .w_conv1_1_stencil_1_1_0_16b(w_conv1_1_stencil_stream_1_1_0_16b),
    .w_conv1_1_stencil_1_1_1_16b(w_conv1_1_stencil_stream_1_1_1_16b),
    .w_conv1_1_stencil_1_1_2_16b(w_conv1_1_stencil_stream_1_1_2_16b),
    .w_conv1_1_stencil_1_2_0_16b(w_conv1_1_stencil_stream_1_2_0_16b),
    .w_conv1_1_stencil_1_2_1_16b(w_conv1_1_stencil_stream_1_2_1_16b),
    .w_conv1_1_stencil_1_2_2_16b(w_conv1_1_stencil_stream_1_2_2_16b),
    .w_conv1_1_stencil_1_3_0_16b(w_conv1_1_stencil_stream_1_3_0_16b),
    .w_conv1_1_stencil_1_3_1_16b(w_conv1_1_stencil_stream_1_3_1_16b),
    .w_conv1_1_stencil_1_3_2_16b(w_conv1_1_stencil_stream_1_3_2_16b),
    .w_conv1_1_stencil_1_4_0_16b(w_conv1_1_stencil_stream_1_4_0_16b),
    .w_conv1_1_stencil_1_4_1_16b(w_conv1_1_stencil_stream_1_4_1_16b),
    .w_conv1_1_stencil_1_4_2_16b(w_conv1_1_stencil_stream_1_4_2_16b),
    .w_conv1_1_stencil_2_0_0_16b(w_conv1_1_stencil_stream_2_0_0_16b),
    .w_conv1_1_stencil_2_0_1_16b(w_conv1_1_stencil_stream_2_0_1_16b),
    .w_conv1_1_stencil_2_0_2_16b(w_conv1_1_stencil_stream_2_0_2_16b),
    .w_conv1_1_stencil_2_1_0_16b(w_conv1_1_stencil_stream_2_1_0_16b),
    .w_conv1_1_stencil_2_1_1_16b(w_conv1_1_stencil_stream_2_1_1_16b),
    .w_conv1_1_stencil_2_1_2_16b(w_conv1_1_stencil_stream_2_1_2_16b),
    .w_conv1_1_stencil_2_2_0_16b(w_conv1_1_stencil_stream_2_2_0_16b),
    .w_conv1_1_stencil_2_2_1_16b(w_conv1_1_stencil_stream_2_2_1_16b),
    .w_conv1_1_stencil_2_2_2_16b(w_conv1_1_stencil_stream_2_2_2_16b),
    .w_conv1_1_stencil_2_3_0_16b(w_conv1_1_stencil_stream_2_3_0_16b),
    .w_conv1_1_stencil_2_3_1_16b(w_conv1_1_stencil_stream_2_3_1_16b),
    .w_conv1_1_stencil_2_3_2_16b(w_conv1_1_stencil_stream_2_3_2_16b),
    .w_conv1_1_stencil_2_4_0_16b(w_conv1_1_stencil_stream_2_4_0_16b),
    .w_conv1_1_stencil_2_4_1_16b(w_conv1_1_stencil_stream_2_4_1_16b),
    .w_conv1_1_stencil_2_4_2_16b(w_conv1_1_stencil_stream_2_4_2_16b),
    .w_conv1_1_stencil_3_0_0_16b(w_conv1_1_stencil_stream_3_0_0_16b),
    .w_conv1_1_stencil_3_0_1_16b(w_conv1_1_stencil_stream_3_0_1_16b),
    .w_conv1_1_stencil_3_0_2_16b(w_conv1_1_stencil_stream_3_0_2_16b),
    .w_conv1_1_stencil_3_1_0_16b(w_conv1_1_stencil_stream_3_1_0_16b),
    .w_conv1_1_stencil_3_1_1_16b(w_conv1_1_stencil_stream_3_1_1_16b),
    .w_conv1_1_stencil_3_1_2_16b(w_conv1_1_stencil_stream_3_1_2_16b),
    .w_conv1_1_stencil_3_2_0_16b(w_conv1_1_stencil_stream_3_2_0_16b),
    .w_conv1_1_stencil_3_2_1_16b(w_conv1_1_stencil_stream_3_2_1_16b),
    .w_conv1_1_stencil_3_2_2_16b(w_conv1_1_stencil_stream_3_2_2_16b),
    .w_conv1_1_stencil_3_3_0_16b(w_conv1_1_stencil_stream_3_3_0_16b),
    .w_conv1_1_stencil_3_3_1_16b(w_conv1_1_stencil_stream_3_3_1_16b),
    .w_conv1_1_stencil_3_3_2_16b(w_conv1_1_stencil_stream_3_3_2_16b),
    .w_conv1_1_stencil_3_4_0_16b(w_conv1_1_stencil_stream_3_4_0_16b),
    .w_conv1_1_stencil_3_4_1_16b(w_conv1_1_stencil_stream_3_4_1_16b),
    .w_conv1_1_stencil_3_4_2_16b(w_conv1_1_stencil_stream_3_4_2_16b),
    .w_conv1_1_stencil_4_0_0_16b(w_conv1_1_stencil_stream_4_0_0_16b),
    .w_conv1_1_stencil_4_0_1_16b(w_conv1_1_stencil_stream_4_0_1_16b),
    .w_conv1_1_stencil_4_0_2_16b(w_conv1_1_stencil_stream_4_0_2_16b),
    .w_conv1_1_stencil_4_1_0_16b(w_conv1_1_stencil_stream_4_1_0_16b),
    .w_conv1_1_stencil_4_1_1_16b(w_conv1_1_stencil_stream_4_1_1_16b),
    .w_conv1_1_stencil_4_1_2_16b(w_conv1_1_stencil_stream_4_1_2_16b),
    .w_conv1_1_stencil_4_2_0_16b(w_conv1_1_stencil_stream_4_2_0_16b),
    .w_conv1_1_stencil_4_2_1_16b(w_conv1_1_stencil_stream_4_2_1_16b),
    .w_conv1_1_stencil_4_2_2_16b(w_conv1_1_stencil_stream_4_2_2_16b),
    .w_conv1_1_stencil_4_3_0_16b(w_conv1_1_stencil_stream_4_3_0_16b),
    .w_conv1_1_stencil_4_3_1_16b(w_conv1_1_stencil_stream_4_3_1_16b),
    .w_conv1_1_stencil_4_3_2_16b(w_conv1_1_stencil_stream_4_3_2_16b),
    .w_conv1_1_stencil_4_4_0_16b(w_conv1_1_stencil_stream_4_4_0_16b),
    .w_conv1_1_stencil_4_4_1_16b(w_conv1_1_stencil_stream_4_4_1_16b),
    .w_conv1_1_stencil_4_4_2_16b(w_conv1_1_stencil_stream_4_4_2_16b),
    .w_weight_tap_stencil_0_0_8b(w_weight_tap_stencil_0_0_8b),
    .w_weight_tap_stencil_0_1_8b(w_weight_tap_stencil_0_1_8b),
    .w_weight_tap_stencil_0_2_8b(w_weight_tap_stencil_0_2_8b),
    .w_weight_tap_stencil_0_3_8b(w_weight_tap_stencil_0_3_8b),
    .w_weight_tap_stencil_0_4_8b(w_weight_tap_stencil_0_4_8b),
    .w_weight_tap_stencil_1_0_8b(w_weight_tap_stencil_1_0_8b),
    .w_weight_tap_stencil_1_1_8b(w_weight_tap_stencil_1_1_8b),
    .w_weight_tap_stencil_1_2_8b(w_weight_tap_stencil_1_2_8b),
    .w_weight_tap_stencil_1_3_8b(w_weight_tap_stencil_1_3_8b),
    .w_weight_tap_stencil_1_4_8b(w_weight_tap_stencil_1_4_8b),
    .w_weight_tap_stencil_2_0_8b(w_weight_tap_stencil_2_0_8b),
    .w_weight_tap_stencil_2_1_8b(w_weight_tap_stencil_2_1_8b),
    .w_weight_tap_stencil_2_2_8b(w_weight_tap_stencil_2_2_8b),
    .w_weight_tap_stencil_2_3_8b(w_weight_tap_stencil_2_3_8b),
    .w_weight_tap_stencil_2_4_8b(w_weight_tap_stencil_2_4_8b),
    .w_weight_tap_stencil_3_0_8b(w_weight_tap_stencil_3_0_8b),
    .w_weight_tap_stencil_3_1_8b(w_weight_tap_stencil_3_1_8b),
    .w_weight_tap_stencil_3_2_8b(w_weight_tap_stencil_3_2_8b),
    .w_weight_tap_stencil_3_3_8b(w_weight_tap_stencil_3_3_8b),
    .w_weight_tap_stencil_3_4_8b(w_weight_tap_stencil_3_4_8b),
    .w_weight_tap_stencil_4_0_8b(w_weight_tap_stencil_4_0_8b),
    .w_weight_tap_stencil_4_1_8b(w_weight_tap_stencil_4_1_8b),
    .w_weight_tap_stencil_4_2_8b(w_weight_tap_stencil_4_2_8b),
    .w_weight_tap_stencil_4_3_8b(w_weight_tap_stencil_4_3_8b),
    .w_weight_tap_stencil_4_4_8b(w_weight_tap_stencil_4_4_8b),

    .out_w_f1_stencil_0_0_1_8b(w_f1_stencil_stream_0_0_0_8b),
    .out_w_f1_stencil_0_0_2_8b(w_f1_stencil_stream_0_0_1_8b),
    .out_w_f1_stencil_packed_16b(w_f1_stencil_stream_0_0_2_8b),

    .clk(clk)
);

LB_5_5_3_8bit_False LB__repeat_edge_1_stencil_stream (
    .clk(clk),

    .in0(w_repeat_edge_1_stencil_update_stream_0_0_0_8b),
    .in1(w_repeat_edge_1_stencil_update_stream_0_0_1_8b),
    .in2(w_repeat_edge_1_stencil_update_stream_0_0_2_8b),

    .out0(w_repeat_edge_1_stencil_stream_0_0_0_8b),
    .out1(w_repeat_edge_1_stencil_stream_0_0_1_8b),
    .out2(w_repeat_edge_1_stencil_stream_0_0_2_8b),
    .out3(w_repeat_edge_1_stencil_stream_0_1_0_8b),
    .out4(w_repeat_edge_1_stencil_stream_0_1_1_8b),
    .out5(w_repeat_edge_1_stencil_stream_0_1_2_8b),
    .out6(w_repeat_edge_1_stencil_stream_0_2_0_8b),
    .out7(w_repeat_edge_1_stencil_stream_0_2_1_8b),
    .out8(w_repeat_edge_1_stencil_stream_0_2_2_8b),
    .out9(w_repeat_edge_1_stencil_stream_0_3_0_8b),
    .out10(w_repeat_edge_1_stencil_stream_0_3_1_8b),
    .out11(w_repeat_edge_1_stencil_stream_0_3_2_8b),
    .out12(w_repeat_edge_1_stencil_stream_0_4_0_8b),
    .out13(w_repeat_edge_1_stencil_stream_0_4_1_8b),
    .out14(w_repeat_edge_1_stencil_stream_0_4_2_8b),
    .out15(w_repeat_edge_1_stencil_stream_1_0_0_8b),
    .out16(w_repeat_edge_1_stencil_stream_1_0_1_8b),
    .out17(w_repeat_edge_1_stencil_stream_1_0_2_8b),
    .out18(w_repeat_edge_1_stencil_stream_1_1_0_8b),
    .out19(w_repeat_edge_1_stencil_stream_1_1_1_8b),
    .out20(w_repeat_edge_1_stencil_stream_1_1_2_8b),
    .out21(w_repeat_edge_1_stencil_stream_1_2_0_8b),
    .out22(w_repeat_edge_1_stencil_stream_1_2_1_8b),
    .out23(w_repeat_edge_1_stencil_stream_1_2_2_8b),
    .out24(w_repeat_edge_1_stencil_stream_1_3_0_8b),
    .out25(w_repeat_edge_1_stencil_stream_1_3_1_8b),
    .out26(w_repeat_edge_1_stencil_stream_1_3_2_8b),
    .out27(w_repeat_edge_1_stencil_stream_1_4_0_8b),
    .out28(w_repeat_edge_1_stencil_stream_1_4_1_8b),
    .out29(w_repeat_edge_1_stencil_stream_1_4_2_8b),
    .out30(w_repeat_edge_1_stencil_stream_2_0_0_8b),
    .out31(w_repeat_edge_1_stencil_stream_2_0_1_8b),
    .out32(w_repeat_edge_1_stencil_stream_2_0_2_8b),
    .out33(w_repeat_edge_1_stencil_stream_2_1_0_8b),
    .out34(w_repeat_edge_1_stencil_stream_2_1_1_8b),
    .out35(w_repeat_edge_1_stencil_stream_2_1_2_8b),
    .out36(w_repeat_edge_1_stencil_stream_2_2_0_8b),
    .out37(w_repeat_edge_1_stencil_stream_2_2_1_8b),
    .out38(w_repeat_edge_1_stencil_stream_2_2_2_8b),
    .out39(w_repeat_edge_1_stencil_stream_2_3_0_8b),
    .out40(w_repeat_edge_1_stencil_stream_2_3_1_8b),
    .out41(w_repeat_edge_1_stencil_stream_2_3_2_8b),
    .out42(w_repeat_edge_1_stencil_stream_2_4_0_8b),
    .out43(w_repeat_edge_1_stencil_stream_2_4_1_8b),
    .out44(w_repeat_edge_1_stencil_stream_2_4_2_8b),
    .out45(w_repeat_edge_1_stencil_stream_3_0_0_8b),
    .out46(w_repeat_edge_1_stencil_stream_3_0_1_8b),
    .out47(w_repeat_edge_1_stencil_stream_3_0_2_8b),
    .out48(w_repeat_edge_1_stencil_stream_3_1_0_8b),
    .out49(w_repeat_edge_1_stencil_stream_3_1_1_8b),
    .out50(w_repeat_edge_1_stencil_stream_3_1_2_8b),
    .out51(w_repeat_edge_1_stencil_stream_3_2_0_8b),
    .out52(w_repeat_edge_1_stencil_stream_3_2_1_8b),
    .out53(w_repeat_edge_1_stencil_stream_3_2_2_8b),
    .out54(w_repeat_edge_1_stencil_stream_3_3_0_8b),
    .out55(w_repeat_edge_1_stencil_stream_3_3_1_8b),
    .out56(w_repeat_edge_1_stencil_stream_3_3_2_8b),
    .out57(w_repeat_edge_1_stencil_stream_3_4_0_8b),
    .out58(w_repeat_edge_1_stencil_stream_3_4_1_8b),
    .out59(w_repeat_edge_1_stencil_stream_3_4_2_8b),
    .out60(w_repeat_edge_1_stencil_stream_4_0_0_8b),
    .out61(w_repeat_edge_1_stencil_stream_4_0_1_8b),
    .out62(w_repeat_edge_1_stencil_stream_4_0_2_8b),
    .out63(w_repeat_edge_1_stencil_stream_4_1_0_8b),
    .out64(w_repeat_edge_1_stencil_stream_4_1_1_8b),
    .out65(w_repeat_edge_1_stencil_stream_4_1_2_8b),
    .out66(w_repeat_edge_1_stencil_stream_4_2_0_8b),
    .out67(w_repeat_edge_1_stencil_stream_4_2_1_8b),
    .out68(w_repeat_edge_1_stencil_stream_4_2_2_8b),
    .out69(w_repeat_edge_1_stencil_stream_4_3_0_8b),
    .out70(w_repeat_edge_1_stencil_stream_4_3_1_8b),
    .out71(w_repeat_edge_1_stencil_stream_4_3_2_8b),
    .out72(w_repeat_edge_1_stencil_stream_4_4_0_8b),
    .out73(w_repeat_edge_1_stencil_stream_4_4_1_8b),
    .out74(w_repeat_edge_1_stencil_stream_4_4_2_8b)
);

endmodule



module kernel__conv1_1_stencil_update_stream(
//Inputs
  w_kernel_1_tap_stencil_0_0_16b,
  w_kernel_1_tap_stencil_0_1_16b,
  w_kernel_1_tap_stencil_0_2_16b,
  w_kernel_1_tap_stencil_0_3_16b,
  w_kernel_1_tap_stencil_0_4_16b,
  w_kernel_1_tap_stencil_1_0_16b,
  w_kernel_1_tap_stencil_1_1_16b,
  w_kernel_1_tap_stencil_1_2_16b,
  w_kernel_1_tap_stencil_1_3_16b,
  w_kernel_1_tap_stencil_1_4_16b,
  w_kernel_1_tap_stencil_2_0_16b,
  w_kernel_1_tap_stencil_2_1_16b,
  w_kernel_1_tap_stencil_2_2_16b,
  w_kernel_1_tap_stencil_2_3_16b,
  w_kernel_1_tap_stencil_2_4_16b,
  w_kernel_1_tap_stencil_3_0_16b,
  w_kernel_1_tap_stencil_3_1_16b,
  w_kernel_1_tap_stencil_3_2_16b,
  w_kernel_1_tap_stencil_3_3_16b,
  w_kernel_1_tap_stencil_3_4_16b,
  w_kernel_1_tap_stencil_4_0_16b,
  w_kernel_1_tap_stencil_4_1_16b,
  w_kernel_1_tap_stencil_4_2_16b,
  w_kernel_1_tap_stencil_4_3_16b,
  w_kernel_1_tap_stencil_4_4_16b,
  w_repeat_edge_1_stencil_0_0_0_8b,
  w_repeat_edge_1_stencil_0_0_1_8b,
  w_repeat_edge_1_stencil_0_0_2_8b,
  w_repeat_edge_1_stencil_0_1_0_8b,
  w_repeat_edge_1_stencil_0_1_1_8b,
  w_repeat_edge_1_stencil_0_1_2_8b,
  w_repeat_edge_1_stencil_0_2_0_8b,
  w_repeat_edge_1_stencil_0_2_1_8b,
  w_repeat_edge_1_stencil_0_2_2_8b,
  w_repeat_edge_1_stencil_0_3_0_8b,
  w_repeat_edge_1_stencil_0_3_1_8b,
  w_repeat_edge_1_stencil_0_3_2_8b,
  w_repeat_edge_1_stencil_0_4_0_8b,
  w_repeat_edge_1_stencil_0_4_1_8b,
  w_repeat_edge_1_stencil_0_4_2_8b,
  w_repeat_edge_1_stencil_1_0_0_8b,
  w_repeat_edge_1_stencil_1_0_1_8b,
  w_repeat_edge_1_stencil_1_0_2_8b,
  w_repeat_edge_1_stencil_1_1_0_8b,
  w_repeat_edge_1_stencil_1_1_1_8b,
  w_repeat_edge_1_stencil_1_1_2_8b,
  w_repeat_edge_1_stencil_1_2_0_8b,
  w_repeat_edge_1_stencil_1_2_1_8b,
  w_repeat_edge_1_stencil_1_2_2_8b,
  w_repeat_edge_1_stencil_1_3_0_8b,
  w_repeat_edge_1_stencil_1_3_1_8b,
  w_repeat_edge_1_stencil_1_3_2_8b,
  w_repeat_edge_1_stencil_1_4_0_8b,
  w_repeat_edge_1_stencil_1_4_1_8b,
  w_repeat_edge_1_stencil_1_4_2_8b,
  w_repeat_edge_1_stencil_2_0_0_8b,
  w_repeat_edge_1_stencil_2_0_1_8b,
  w_repeat_edge_1_stencil_2_0_2_8b,
  w_repeat_edge_1_stencil_2_1_0_8b,
  w_repeat_edge_1_stencil_2_1_1_8b,
  w_repeat_edge_1_stencil_2_1_2_8b,
  w_repeat_edge_1_stencil_2_2_0_8b,
  w_repeat_edge_1_stencil_2_2_1_8b,
  w_repeat_edge_1_stencil_2_2_2_8b,
  w_repeat_edge_1_stencil_2_3_0_8b,
  w_repeat_edge_1_stencil_2_3_1_8b,
  w_repeat_edge_1_stencil_2_3_2_8b,
  w_repeat_edge_1_stencil_2_4_0_8b,
  w_repeat_edge_1_stencil_2_4_1_8b,
  w_repeat_edge_1_stencil_2_4_2_8b,
  w_repeat_edge_1_stencil_3_0_0_8b,
  w_repeat_edge_1_stencil_3_0_1_8b,
  w_repeat_edge_1_stencil_3_0_2_8b,
  w_repeat_edge_1_stencil_3_1_0_8b,
  w_repeat_edge_1_stencil_3_1_1_8b,
  w_repeat_edge_1_stencil_3_1_2_8b,
  w_repeat_edge_1_stencil_3_2_0_8b,
  w_repeat_edge_1_stencil_3_2_1_8b,
  w_repeat_edge_1_stencil_3_2_2_8b,
  w_repeat_edge_1_stencil_3_3_0_8b,
  w_repeat_edge_1_stencil_3_3_1_8b,
  w_repeat_edge_1_stencil_3_3_2_8b,
  w_repeat_edge_1_stencil_3_4_0_8b,
  w_repeat_edge_1_stencil_3_4_1_8b,
  w_repeat_edge_1_stencil_3_4_2_8b,
  w_repeat_edge_1_stencil_4_0_0_8b,
  w_repeat_edge_1_stencil_4_0_1_8b,
  w_repeat_edge_1_stencil_4_0_2_8b,
  w_repeat_edge_1_stencil_4_1_0_8b,
  w_repeat_edge_1_stencil_4_1_1_8b,
  w_repeat_edge_1_stencil_4_1_2_8b,
  w_repeat_edge_1_stencil_4_2_0_8b,
  w_repeat_edge_1_stencil_4_2_1_8b,
  w_repeat_edge_1_stencil_4_2_2_8b,
  w_repeat_edge_1_stencil_4_3_0_8b,
  w_repeat_edge_1_stencil_4_3_1_8b,
  w_repeat_edge_1_stencil_4_3_2_8b,
  w_repeat_edge_1_stencil_4_4_0_8b,
  w_repeat_edge_1_stencil_4_4_1_8b,
  w_repeat_edge_1_stencil_4_4_2_8b,
//Outputs
  out_w_conv1_1_stencil_0_0_0_16b,
  out_w_conv1_1_stencil_0_0_1_16b,
  out_w_conv1_1_stencil_0_0_2_16b,

  clk
);

//Inputs
input  w_repeat_edge_1_stencil_0_2_2_8b;
input  w_repeat_edge_1_stencil_0_2_0_8b;
input  w_repeat_edge_1_stencil_0_2_1_8b;
input  w_repeat_edge_1_stencil_1_4_1_8b;
input  w_repeat_edge_1_stencil_1_4_0_8b;
input  w_repeat_edge_1_stencil_1_4_2_8b;
input  w_repeat_edge_1_stencil_1_0_1_8b;
input  w_repeat_edge_1_stencil_1_0_0_8b;
input  w_repeat_edge_1_stencil_1_0_2_8b;
input  w_repeat_edge_1_stencil_3_3_0_8b;
input  w_repeat_edge_1_stencil_3_4_2_8b;
input  w_repeat_edge_1_stencil_3_3_2_8b;
input  w_repeat_edge_1_stencil_3_4_0_8b;
input  w_repeat_edge_1_stencil_0_4_0_8b;
input  w_repeat_edge_1_stencil_0_4_1_8b;
input  w_repeat_edge_1_stencil_0_4_2_8b;
input  w_repeat_edge_1_stencil_4_4_1_8b;
input  w_repeat_edge_1_stencil_2_3_1_8b;
input  w_repeat_edge_1_stencil_2_3_0_8b;
input  w_repeat_edge_1_stencil_2_3_2_8b;
input  w_repeat_edge_1_stencil_0_0_0_8b;
input  w_repeat_edge_1_stencil_0_0_1_8b;
input  w_repeat_edge_1_stencil_0_0_2_8b;
input  w_repeat_edge_1_stencil_3_1_2_8b;
input  w_repeat_edge_1_stencil_3_1_0_8b;
input  w_repeat_edge_1_stencil_3_1_1_8b;
input  w_kernel_1_tap_stencil_2_4_16b;
input  w_kernel_1_tap_stencil_2_2_16b;
input  w_kernel_1_tap_stencil_2_3_16b;
input  w_kernel_1_tap_stencil_2_0_16b;
input  w_kernel_1_tap_stencil_2_1_16b;
input  w_kernel_1_tap_stencil_3_3_16b;
input  w_repeat_edge_1_stencil_4_2_0_8b;
input  w_kernel_1_tap_stencil_3_0_16b;
input  w_repeat_edge_1_stencil_2_1_2_8b;
input  w_repeat_edge_1_stencil_2_1_1_8b;
input  w_repeat_edge_1_stencil_2_1_0_8b;
input  w_repeat_edge_1_stencil_2_0_2_8b;
input  w_repeat_edge_1_stencil_2_0_0_8b;
input  w_repeat_edge_1_stencil_2_0_1_8b;
input  w_repeat_edge_1_stencil_2_2_0_8b;
input  w_repeat_edge_1_stencil_2_2_1_8b;
input  w_repeat_edge_1_stencil_2_2_2_8b;
input  w_kernel_1_tap_stencil_1_1_16b;
input  w_kernel_1_tap_stencil_1_0_16b;
input  w_kernel_1_tap_stencil_1_3_16b;
input  w_kernel_1_tap_stencil_1_2_16b;
input  w_repeat_edge_1_stencil_4_4_0_8b;
input  w_kernel_1_tap_stencil_1_4_16b;
input  w_repeat_edge_1_stencil_4_4_2_8b;
input  w_repeat_edge_1_stencil_3_3_1_8b;
input  w_kernel_1_tap_stencil_3_4_16b;
input  w_repeat_edge_1_stencil_4_2_2_8b;
input  w_kernel_1_tap_stencil_3_2_16b;
input  w_kernel_1_tap_stencil_3_1_16b;
input  w_repeat_edge_1_stencil_4_2_1_8b;
input  w_repeat_edge_1_stencil_4_0_0_8b;
input  w_repeat_edge_1_stencil_4_0_1_8b;
input  w_repeat_edge_1_stencil_4_0_2_8b;
input  w_repeat_edge_1_stencil_2_4_2_8b;
input  w_repeat_edge_1_stencil_2_4_0_8b;
input  w_repeat_edge_1_stencil_2_4_1_8b;
input  w_repeat_edge_1_stencil_4_3_2_8b;
input  w_repeat_edge_1_stencil_4_3_1_8b;
input  w_repeat_edge_1_stencil_4_3_0_8b;
input  w_repeat_edge_1_stencil_0_3_2_8b;
input  w_repeat_edge_1_stencil_0_3_1_8b;
input  w_repeat_edge_1_stencil_0_3_0_8b;
input  w_repeat_edge_1_stencil_3_4_1_8b;
input  w_repeat_edge_1_stencil_4_1_1_8b;
input  w_repeat_edge_1_stencil_4_1_0_8b;
input  w_repeat_edge_1_stencil_4_1_2_8b;
input  w_repeat_edge_1_stencil_0_1_1_8b;
input  w_repeat_edge_1_stencil_0_1_0_8b;
input  w_repeat_edge_1_stencil_0_1_2_8b;
input  w_kernel_1_tap_stencil_4_4_16b;
input  w_kernel_1_tap_stencil_4_0_16b;
input  w_kernel_1_tap_stencil_4_1_16b;
input  w_kernel_1_tap_stencil_4_2_16b;
input  w_kernel_1_tap_stencil_4_3_16b;
input  w_repeat_edge_1_stencil_1_3_2_8b;
input  w_repeat_edge_1_stencil_1_3_0_8b;
input  w_repeat_edge_1_stencil_1_3_1_8b;
input  w_repeat_edge_1_stencil_1_1_0_8b;
input  w_repeat_edge_1_stencil_1_1_1_8b;
input  w_repeat_edge_1_stencil_1_1_2_8b;
input  w_repeat_edge_1_stencil_3_2_1_8b;
input  w_repeat_edge_1_stencil_3_2_0_8b;
input  w_repeat_edge_1_stencil_3_2_2_8b;
input  w_repeat_edge_1_stencil_1_2_2_8b;
input  w_repeat_edge_1_stencil_1_2_1_8b;
input  w_repeat_edge_1_stencil_1_2_0_8b;
input  w_kernel_1_tap_stencil_0_0_16b;
input  w_kernel_1_tap_stencil_0_1_16b;
input  w_kernel_1_tap_stencil_0_2_16b;
input  w_kernel_1_tap_stencil_0_3_16b;
input  w_kernel_1_tap_stencil_0_4_16b;
input  w_repeat_edge_1_stencil_3_0_2_8b;
input  w_repeat_edge_1_stencil_3_0_1_8b;
input  w_repeat_edge_1_stencil_3_0_0_8b;
//Outputs
output  out_w_conv1_1_stencil_0_0_2_16b;
output  out_w_conv1_1_stencil_0_0_1_16b;
output  out_w_conv1_1_stencil_0_0_0_16b;

input  clk;


wire  r0_w_conv1_1_stencil_0_0_0_16b;
wire  r0_w_conv1_1_stencil_0_0_1_16b;
wire  r0_w_conv1_1_stencil_0_0_2_16b;
wire  r10_w_conv1_1_stencil_0_0_0_16b;
wire  r10_w_conv1_1_stencil_0_0_1_16b;
wire  r10_w_conv1_1_stencil_0_0_2_16b;
wire  r11_w_conv1_1_stencil_0_0_0_16b;
wire  r11_w_conv1_1_stencil_0_0_1_16b;
wire  r11_w_conv1_1_stencil_0_0_2_16b;
wire  r12_w_conv1_1_stencil_0_0_0_16b;
wire  r12_w_conv1_1_stencil_0_0_1_16b;
wire  r12_w_conv1_1_stencil_0_0_2_16b;
wire  r13_w_conv1_1_stencil_0_0_0_16b;
wire  r13_w_conv1_1_stencil_0_0_1_16b;
wire  r13_w_conv1_1_stencil_0_0_2_16b;
wire  r14_w_conv1_1_stencil_0_0_0_16b;
wire  r14_w_conv1_1_stencil_0_0_1_16b;
wire  r14_w_conv1_1_stencil_0_0_2_16b;
wire  r15_w_conv1_1_stencil_0_0_0_16b;
wire  r15_w_conv1_1_stencil_0_0_1_16b;
wire  r15_w_conv1_1_stencil_0_0_2_16b;
wire  r16_w_conv1_1_stencil_0_0_0_16b;
wire  r16_w_conv1_1_stencil_0_0_1_16b;
wire  r16_w_conv1_1_stencil_0_0_2_16b;
wire  r17_w_conv1_1_stencil_0_0_0_16b;
wire  r17_w_conv1_1_stencil_0_0_1_16b;
wire  r17_w_conv1_1_stencil_0_0_2_16b;
wire  r18_w_conv1_1_stencil_0_0_0_16b;
wire  r18_w_conv1_1_stencil_0_0_1_16b;
wire  r18_w_conv1_1_stencil_0_0_2_16b;
wire  r19_w_conv1_1_stencil_0_0_0_16b;
wire  r19_w_conv1_1_stencil_0_0_1_16b;
wire  r19_w_conv1_1_stencil_0_0_2_16b;
wire  r1_w_conv1_1_stencil_0_0_0_16b;
wire  r1_w_conv1_1_stencil_0_0_1_16b;
wire  r1_w_conv1_1_stencil_0_0_2_16b;
wire  r20_w_conv1_1_stencil_0_0_0_16b;
wire  r20_w_conv1_1_stencil_0_0_1_16b;
wire  r20_w_conv1_1_stencil_0_0_2_16b;
wire  r21_w_conv1_1_stencil_0_0_0_16b;
wire  r21_w_conv1_1_stencil_0_0_1_16b;
wire  r21_w_conv1_1_stencil_0_0_2_16b;
wire  r22_w_conv1_1_stencil_0_0_0_16b;
wire  r22_w_conv1_1_stencil_0_0_1_16b;
wire  r22_w_conv1_1_stencil_0_0_2_16b;
wire  r23_w_conv1_1_stencil_0_0_0_16b;
wire  r23_w_conv1_1_stencil_0_0_1_16b;
wire  r23_w_conv1_1_stencil_0_0_2_16b;
wire  r24_w_conv1_1_stencil_0_0_0_16b;
wire  r24_w_conv1_1_stencil_0_0_1_16b;
wire  r24_w_conv1_1_stencil_0_0_2_16b;
wire  r2_w_conv1_1_stencil_0_0_0_16b;
wire  r2_w_conv1_1_stencil_0_0_1_16b;
wire  r2_w_conv1_1_stencil_0_0_2_16b;
wire  r3_w_conv1_1_stencil_0_0_0_16b;
wire  r3_w_conv1_1_stencil_0_0_1_16b;
wire  r3_w_conv1_1_stencil_0_0_2_16b;
wire  r4_w_conv1_1_stencil_0_0_0_16b;
wire  r4_w_conv1_1_stencil_0_0_1_16b;
wire  r4_w_conv1_1_stencil_0_0_2_16b;
wire  r5_w_conv1_1_stencil_0_0_0_16b;
wire  r5_w_conv1_1_stencil_0_0_1_16b;
wire  r5_w_conv1_1_stencil_0_0_2_16b;
wire  r6_w_conv1_1_stencil_0_0_0_16b;
wire  r6_w_conv1_1_stencil_0_0_1_16b;
wire  r6_w_conv1_1_stencil_0_0_2_16b;
wire  r7_w_conv1_1_stencil_0_0_0_16b;
wire  r7_w_conv1_1_stencil_0_0_1_16b;
wire  r7_w_conv1_1_stencil_0_0_2_16b;
wire  r8_w_conv1_1_stencil_0_0_0_16b;
wire  r8_w_conv1_1_stencil_0_0_1_16b;
wire  r8_w_conv1_1_stencil_0_0_2_16b;
wire  r9_w_conv1_1_stencil_0_0_0_16b;
wire  r9_w_conv1_1_stencil_0_0_1_16b;
wire  r9_w_conv1_1_stencil_0_0_2_16b;
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
wire  w_810_16b;
wire  w_811_16b;
wire  w_812_16b;
wire  w_813_16b;
wire  w_814_16b;
wire  w_815_16b;
wire  w_816_16b;
wire  w_817_16b;
wire  w_818_16b;
wire  w_819_16b;
wire  w_820_16b;
wire  w_821_16b;
wire  w_822_16b;
wire  w_823_16b;
wire  w_824_16b;
wire  w_825_16b;
wire  w_826_16b;
wire  w_827_16b;
wire  w_828_16b;
wire  w_829_16b;
wire  w_830_16b;
wire  w_831_16b;
wire  w_832_16b;
wire  w_833_16b;
wire  w_834_16b;
wire  w_835_16b;
wire  w_836_16b;
wire  w_837_16b;
wire  w_838_16b;
wire  w_839_16b;
wire  w_840_16b;
wire  w_841_16b;
wire  w_842_16b;
wire  w_843_16b;
wire  w_844_16b;
wire  w_845_16b;
wire  w_846_16b;
wire  w_847_16b;
wire  w_848_16b;
wire  w_849_16b;
wire  w_850_16b;
wire  w_851_16b;
wire  w_852_16b;
wire  w_853_16b;
wire  w_854_16b;
wire  w_855_16b;
wire  w_856_16b;
wire  w_857_16b;
wire  w_858_16b;
wire  w_859_16b;
wire  w_860_16b;
wire  w_861_16b;
wire  w_862_16b;
wire  w_863_16b;
wire  w_864_16b;
wire  w_865_16b;
wire  w_866_16b;
wire  w_867_16b;
wire  w_868_16b;
wire  w_869_16b;
wire  w_870_16b;
wire  w_871_16b;
wire  w_872_16b;
wire  w_873_16b;
wire  w_874_16b;
wire  w_875_16b;
wire  w_876_16b;
wire  w_877_16b;
wire  w_878_16b;
wire  w_879_16b;
wire  w_880_16b;
wire  w_881_16b;
wire  w_882_16b;
wire  w_883_16b;
wire  w_884_16b;
wire  w_885_16b;
wire  w_886_16b;
wire  w_887_16b;
wire  w_888_16b;
wire  w_889_16b;
wire  w_890_16b;
wire  w_891_16b;
wire  w_892_16b;
wire  w_893_16b;
wire  w_894_16b;
wire  w_895_16b;
wire  w_896_16b;
wire  w_897_16b;
wire  w_898_16b;
wire  w_899_16b;
wire  w_900_16b;
wire  w_901_16b;
wire  w_902_16b;
wire  w_903_16b;
wire  w_904_16b;
wire  w_905_16b;
wire  w_906_16b;
wire  w_907_16b;
wire  w_908_16b;
wire  w_909_16b;
wire  w_910_16b;
wire  w_911_16b;
wire  w_912_16b;
wire  w_913_16b;
wire  w_914_16b;
wire  w_915_16b;
wire  w_916_16b;
wire  w_917_16b;
wire  w_918_16b;
wire  w_919_16b;
wire  w_920_16b;
wire  w_921_16b;
wire  w_922_16b;
wire  w_923_16b;
wire  w_924_16b;
wire  w_925_16b;
wire  w_926_16b;
wire  w_927_16b;
wire  w_928_16b;
wire  w_929_16b;
wire  w_930_16b;
wire  w_931_16b;
wire  w_932_16b;
wire  w_933_16b;
wire  w_934_16b;
wire  w_935_16b;
wire  w_936_16b;
wire  w_937_16b;
wire  w_938_16b;
wire  w_939_16b;
wire  w_940_16b;
wire  w_941_16b;
wire  w_942_16b;
wire  w_943_16b;
wire  w_944_16b;
wire  w_945_16b;
wire  w_946_16b;
wire  w_947_16b;
wire  w_948_16b;
wire  w_949_16b;
wire  w_950_16b;
wire  w_951_16b;
wire  w_952_16b;
wire  w_953_16b;
wire  w_954_16b;
wire  w_955_16b;
wire  w_956_16b;
wire  w_957_16b;
wire  w_958_16b;
wire  w_959_16b;
wire  w_960_16b;
wire  w_961_16b;
wire  w_962_16b;
wire  w_963_16b;
wire  w_964_16b;
wire  w_965_16b;
wire  w_966_16b;
wire  w_967_16b;
wire  w_968_16b;
wire  w_969_16b;
wire  w_970_16b;
wire  w_971_16b;
wire  w_972_16b;
wire  w_973_16b;
wire  w_974_16b;
wire  w_975_16b;
wire  w_976_16b;
wire  w_977_16b;
wire  w_978_16b;
wire  w_979_16b;
wire  w_980_16b;
wire  w_981_16b;
wire  w_982_16b;
wire  w_983_16b;
wire  w_984_16b;
wire  w_985_16b;
wire  w_conv1_1_stencil_0_0_0_16b;
wire  w_conv1_1_stencil_0_0_1_16b;
wire  w_conv1_1_stencil_0_0_2_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_conv1_1_stencil_0_0_2_16b = r24_w_conv1_1_stencil_0_0_2_16b;
assign out_w_conv1_1_stencil_0_0_1_16b = r24_w_conv1_1_stencil_0_0_1_16b;
assign out_w_conv1_1_stencil_0_0_0_16b = r24_w_conv1_1_stencil_0_0_0_16b;
assign  r0_w_conv1_1_stencil_0_0_0_16b  =  w_541_16b ;
assign  r0_w_conv1_1_stencil_0_0_1_16b  =  w_691_16b ;
assign  r0_w_conv1_1_stencil_0_0_2_16b  =  w_841_16b ;
assign  r10_w_conv1_1_stencil_0_0_0_16b  =  w_601_16b ;
assign  r10_w_conv1_1_stencil_0_0_1_16b  =  w_751_16b ;
assign  r10_w_conv1_1_stencil_0_0_2_16b  =  w_901_16b ;
assign  r11_w_conv1_1_stencil_0_0_0_16b  =  w_607_16b ;
assign  r11_w_conv1_1_stencil_0_0_1_16b  =  w_757_16b ;
assign  r11_w_conv1_1_stencil_0_0_2_16b  =  w_907_16b ;
assign  r12_w_conv1_1_stencil_0_0_0_16b  =  w_613_16b ;
assign  r12_w_conv1_1_stencil_0_0_1_16b  =  w_763_16b ;
assign  r12_w_conv1_1_stencil_0_0_2_16b  =  w_913_16b ;
assign  r13_w_conv1_1_stencil_0_0_0_16b  =  w_619_16b ;
assign  r13_w_conv1_1_stencil_0_0_1_16b  =  w_769_16b ;
assign  r13_w_conv1_1_stencil_0_0_2_16b  =  w_919_16b ;
assign  r14_w_conv1_1_stencil_0_0_0_16b  =  w_625_16b ;
assign  r14_w_conv1_1_stencil_0_0_1_16b  =  w_775_16b ;
assign  r14_w_conv1_1_stencil_0_0_2_16b  =  w_925_16b ;
assign  r15_w_conv1_1_stencil_0_0_0_16b  =  w_631_16b ;
assign  r15_w_conv1_1_stencil_0_0_1_16b  =  w_781_16b ;
assign  r15_w_conv1_1_stencil_0_0_2_16b  =  w_931_16b ;
assign  r16_w_conv1_1_stencil_0_0_0_16b  =  w_637_16b ;
assign  r16_w_conv1_1_stencil_0_0_1_16b  =  w_787_16b ;
assign  r16_w_conv1_1_stencil_0_0_2_16b  =  w_937_16b ;
assign  r17_w_conv1_1_stencil_0_0_0_16b  =  w_643_16b ;
assign  r17_w_conv1_1_stencil_0_0_1_16b  =  w_793_16b ;
assign  r17_w_conv1_1_stencil_0_0_2_16b  =  w_943_16b ;
assign  r18_w_conv1_1_stencil_0_0_0_16b  =  w_649_16b ;
assign  r18_w_conv1_1_stencil_0_0_1_16b  =  w_799_16b ;
assign  r18_w_conv1_1_stencil_0_0_2_16b  =  w_949_16b ;
assign  r19_w_conv1_1_stencil_0_0_0_16b  =  w_655_16b ;
assign  r19_w_conv1_1_stencil_0_0_1_16b  =  w_805_16b ;
assign  r19_w_conv1_1_stencil_0_0_2_16b  =  w_955_16b ;
assign  r1_w_conv1_1_stencil_0_0_0_16b  =  w_547_16b ;
assign  r1_w_conv1_1_stencil_0_0_1_16b  =  w_697_16b ;
assign  r1_w_conv1_1_stencil_0_0_2_16b  =  w_847_16b ;
assign  r20_w_conv1_1_stencil_0_0_0_16b  =  w_661_16b ;
assign  r20_w_conv1_1_stencil_0_0_1_16b  =  w_811_16b ;
assign  r20_w_conv1_1_stencil_0_0_2_16b  =  w_961_16b ;
assign  r21_w_conv1_1_stencil_0_0_0_16b  =  w_667_16b ;
assign  r21_w_conv1_1_stencil_0_0_1_16b  =  w_817_16b ;
assign  r21_w_conv1_1_stencil_0_0_2_16b  =  w_967_16b ;
assign  r22_w_conv1_1_stencil_0_0_0_16b  =  w_673_16b ;
assign  r22_w_conv1_1_stencil_0_0_1_16b  =  w_823_16b ;
assign  r22_w_conv1_1_stencil_0_0_2_16b  =  w_973_16b ;
assign  r23_w_conv1_1_stencil_0_0_0_16b  =  w_679_16b ;
assign  r23_w_conv1_1_stencil_0_0_1_16b  =  w_829_16b ;
assign  r23_w_conv1_1_stencil_0_0_2_16b  =  w_979_16b ;
assign  r24_w_conv1_1_stencil_0_0_0_16b  =  w_685_16b ;
assign  r24_w_conv1_1_stencil_0_0_1_16b  =  w_835_16b ;
assign  r24_w_conv1_1_stencil_0_0_2_16b  =  w_985_16b ;
assign  r2_w_conv1_1_stencil_0_0_0_16b  =  w_553_16b ;
assign  r2_w_conv1_1_stencil_0_0_1_16b  =  w_703_16b ;
assign  r2_w_conv1_1_stencil_0_0_2_16b  =  w_853_16b ;
assign  r3_w_conv1_1_stencil_0_0_0_16b  =  w_559_16b ;
assign  r3_w_conv1_1_stencil_0_0_1_16b  =  w_709_16b ;
assign  r3_w_conv1_1_stencil_0_0_2_16b  =  w_859_16b ;
assign  r4_w_conv1_1_stencil_0_0_0_16b  =  w_565_16b ;
assign  r4_w_conv1_1_stencil_0_0_1_16b  =  w_715_16b ;
assign  r4_w_conv1_1_stencil_0_0_2_16b  =  w_865_16b ;
assign  r5_w_conv1_1_stencil_0_0_0_16b  =  w_571_16b ;
assign  r5_w_conv1_1_stencil_0_0_1_16b  =  w_721_16b ;
assign  r5_w_conv1_1_stencil_0_0_2_16b  =  w_871_16b ;
assign  r6_w_conv1_1_stencil_0_0_0_16b  =  w_577_16b ;
assign  r6_w_conv1_1_stencil_0_0_1_16b  =  w_727_16b ;
assign  r6_w_conv1_1_stencil_0_0_2_16b  =  w_877_16b ;
assign  r7_w_conv1_1_stencil_0_0_0_16b  =  w_583_16b ;
assign  r7_w_conv1_1_stencil_0_0_1_16b  =  w_733_16b ;
assign  r7_w_conv1_1_stencil_0_0_2_16b  =  w_883_16b ;
assign  r8_w_conv1_1_stencil_0_0_0_16b  =  w_589_16b ;
assign  r8_w_conv1_1_stencil_0_0_1_16b  =  w_739_16b ;
assign  r8_w_conv1_1_stencil_0_0_2_16b  =  w_889_16b ;
assign  r9_w_conv1_1_stencil_0_0_0_16b  =  w_595_16b ;
assign  r9_w_conv1_1_stencil_0_0_1_16b  =  w_745_16b ;
assign  r9_w_conv1_1_stencil_0_0_2_16b  =  w_895_16b ;
assign  w_533_16b  = 1'b0;
assign  w_534_16b  = 1'b0;
assign  w_535_16b  = 1'b0;
assign  w_536_16b  = 1'b0;
assign  w_537_16b  =  w_repeat_edge_1_stencil_0_0_0_8b ;
assign  w_538_16b  =  w_537_16b ;
assign  w_539_16b  =  w_kernel_1_tap_stencil_0_0_16b ;
MULT_16b_pe mult_0 (
  .a(w_539_16b),
  .b(w_538_16b),
  .c(w_540_16b),
  .clk(clk)
);
ADD_16b_pe add_1 (
  .a(w_540_16b),
  .b(w_536_16b),
  .c(w_541_16b),
  .clk(clk)
);
assign  w_542_16b  =  r0_w_conv1_1_stencil_0_0_0_16b ;
assign  w_543_16b  =  w_repeat_edge_1_stencil_1_0_0_8b ;
assign  w_544_16b  =  w_543_16b ;
assign  w_545_16b  =  w_kernel_1_tap_stencil_1_0_16b ;
MULT_16b_pe mult_2 (
  .a(w_544_16b),
  .b(w_545_16b),
  .c(w_546_16b),
  .clk(clk)
);
ADD_16b_pe add_3 (
  .a(w_542_16b),
  .b(w_546_16b),
  .c(w_547_16b),
  .clk(clk)
);
assign  w_548_16b  =  r1_w_conv1_1_stencil_0_0_0_16b ;
assign  w_549_16b  =  w_repeat_edge_1_stencil_2_0_0_8b ;
assign  w_550_16b  =  w_549_16b ;
assign  w_551_16b  =  w_kernel_1_tap_stencil_2_0_16b ;
MULT_16b_pe mult_4 (
  .a(w_551_16b),
  .b(w_550_16b),
  .c(w_552_16b),
  .clk(clk)
);
ADD_16b_pe add_5 (
  .a(w_548_16b),
  .b(w_552_16b),
  .c(w_553_16b),
  .clk(clk)
);
assign  w_554_16b  =  r2_w_conv1_1_stencil_0_0_0_16b ;
assign  w_555_16b  =  w_repeat_edge_1_stencil_3_0_0_8b ;
assign  w_556_16b  =  w_555_16b ;
assign  w_557_16b  =  w_kernel_1_tap_stencil_3_0_16b ;
MULT_16b_pe mult_6 (
  .a(w_557_16b),
  .b(w_556_16b),
  .c(w_558_16b),
  .clk(clk)
);
ADD_16b_pe add_7 (
  .a(w_558_16b),
  .b(w_554_16b),
  .c(w_559_16b),
  .clk(clk)
);
assign  w_560_16b  =  r3_w_conv1_1_stencil_0_0_0_16b ;
assign  w_561_16b  =  w_repeat_edge_1_stencil_4_0_0_8b ;
assign  w_562_16b  =  w_561_16b ;
assign  w_563_16b  =  w_kernel_1_tap_stencil_4_0_16b ;
MULT_16b_pe mult_8 (
  .a(w_562_16b),
  .b(w_563_16b),
  .c(w_564_16b),
  .clk(clk)
);
ADD_16b_pe add_9 (
  .a(w_560_16b),
  .b(w_564_16b),
  .c(w_565_16b),
  .clk(clk)
);
assign  w_566_16b  =  r4_w_conv1_1_stencil_0_0_0_16b ;
assign  w_567_16b  =  w_repeat_edge_1_stencil_0_1_0_8b ;
assign  w_568_16b  =  w_567_16b ;
assign  w_569_16b  =  w_kernel_1_tap_stencil_0_1_16b ;
MULT_16b_pe mult_10 (
  .a(w_568_16b),
  .b(w_569_16b),
  .c(w_570_16b),
  .clk(clk)
);
ADD_16b_pe add_11 (
  .a(w_566_16b),
  .b(w_570_16b),
  .c(w_571_16b),
  .clk(clk)
);
assign  w_572_16b  =  r5_w_conv1_1_stencil_0_0_0_16b ;
assign  w_573_16b  =  w_repeat_edge_1_stencil_1_1_0_8b ;
assign  w_574_16b  =  w_573_16b ;
assign  w_575_16b  =  w_kernel_1_tap_stencil_1_1_16b ;
MULT_16b_pe mult_12 (
  .a(w_575_16b),
  .b(w_574_16b),
  .c(w_576_16b),
  .clk(clk)
);
ADD_16b_pe add_13 (
  .a(w_576_16b),
  .b(w_572_16b),
  .c(w_577_16b),
  .clk(clk)
);
assign  w_578_16b  =  r6_w_conv1_1_stencil_0_0_0_16b ;
assign  w_579_16b  =  w_repeat_edge_1_stencil_2_1_0_8b ;
assign  w_580_16b  =  w_579_16b ;
assign  w_581_16b  =  w_kernel_1_tap_stencil_2_1_16b ;
MULT_16b_pe mult_14 (
  .a(w_580_16b),
  .b(w_581_16b),
  .c(w_582_16b),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_582_16b),
  .b(w_578_16b),
  .c(w_583_16b),
  .clk(clk)
);
assign  w_584_16b  =  r7_w_conv1_1_stencil_0_0_0_16b ;
assign  w_585_16b  =  w_repeat_edge_1_stencil_3_1_0_8b ;
assign  w_586_16b  =  w_585_16b ;
assign  w_587_16b  =  w_kernel_1_tap_stencil_3_1_16b ;
MULT_16b_pe mult_16 (
  .a(w_586_16b),
  .b(w_587_16b),
  .c(w_588_16b),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_584_16b),
  .b(w_588_16b),
  .c(w_589_16b),
  .clk(clk)
);
assign  w_590_16b  =  r8_w_conv1_1_stencil_0_0_0_16b ;
assign  w_591_16b  =  w_repeat_edge_1_stencil_4_1_0_8b ;
assign  w_592_16b  =  w_591_16b ;
assign  w_593_16b  =  w_kernel_1_tap_stencil_4_1_16b ;
MULT_16b_pe mult_18 (
  .a(w_593_16b),
  .b(w_592_16b),
  .c(w_594_16b),
  .clk(clk)
);
ADD_16b_pe add_19 (
  .a(w_594_16b),
  .b(w_590_16b),
  .c(w_595_16b),
  .clk(clk)
);
assign  w_596_16b  =  r9_w_conv1_1_stencil_0_0_0_16b ;
assign  w_597_16b  =  w_repeat_edge_1_stencil_0_2_0_8b ;
assign  w_598_16b  =  w_597_16b ;
assign  w_599_16b  =  w_kernel_1_tap_stencil_0_2_16b ;
MULT_16b_pe mult_20 (
  .a(w_599_16b),
  .b(w_598_16b),
  .c(w_600_16b),
  .clk(clk)
);
ADD_16b_pe add_21 (
  .a(w_596_16b),
  .b(w_600_16b),
  .c(w_601_16b),
  .clk(clk)
);
assign  w_602_16b  =  r10_w_conv1_1_stencil_0_0_0_16b ;
assign  w_603_16b  =  w_repeat_edge_1_stencil_1_2_0_8b ;
assign  w_604_16b  =  w_603_16b ;
assign  w_605_16b  =  w_kernel_1_tap_stencil_1_2_16b ;
MULT_16b_pe mult_22 (
  .a(w_605_16b),
  .b(w_604_16b),
  .c(w_606_16b),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_606_16b),
  .b(w_602_16b),
  .c(w_607_16b),
  .clk(clk)
);
assign  w_608_16b  =  r11_w_conv1_1_stencil_0_0_0_16b ;
assign  w_609_16b  =  w_repeat_edge_1_stencil_2_2_0_8b ;
assign  w_610_16b  =  w_609_16b ;
assign  w_611_16b  =  w_kernel_1_tap_stencil_2_2_16b ;
MULT_16b_pe mult_24 (
  .a(w_610_16b),
  .b(w_611_16b),
  .c(w_612_16b),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_612_16b),
  .b(w_608_16b),
  .c(w_613_16b),
  .clk(clk)
);
assign  w_614_16b  =  r12_w_conv1_1_stencil_0_0_0_16b ;
assign  w_615_16b  =  w_repeat_edge_1_stencil_3_2_0_8b ;
assign  w_616_16b  =  w_615_16b ;
assign  w_617_16b  =  w_kernel_1_tap_stencil_3_2_16b ;
MULT_16b_pe mult_26 (
  .a(w_616_16b),
  .b(w_617_16b),
  .c(w_618_16b),
  .clk(clk)
);
ADD_16b_pe add_27 (
  .a(w_614_16b),
  .b(w_618_16b),
  .c(w_619_16b),
  .clk(clk)
);
assign  w_620_16b  =  r13_w_conv1_1_stencil_0_0_0_16b ;
assign  w_621_16b  =  w_repeat_edge_1_stencil_4_2_0_8b ;
assign  w_622_16b  =  w_621_16b ;
assign  w_623_16b  =  w_kernel_1_tap_stencil_4_2_16b ;
MULT_16b_pe mult_28 (
  .a(w_623_16b),
  .b(w_622_16b),
  .c(w_624_16b),
  .clk(clk)
);
ADD_16b_pe add_29 (
  .a(w_620_16b),
  .b(w_624_16b),
  .c(w_625_16b),
  .clk(clk)
);
assign  w_626_16b  =  r14_w_conv1_1_stencil_0_0_0_16b ;
assign  w_627_16b  =  w_repeat_edge_1_stencil_0_3_0_8b ;
assign  w_628_16b  =  w_627_16b ;
assign  w_629_16b  =  w_kernel_1_tap_stencil_0_3_16b ;
MULT_16b_pe mult_30 (
  .a(w_629_16b),
  .b(w_628_16b),
  .c(w_630_16b),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_630_16b),
  .b(w_626_16b),
  .c(w_631_16b),
  .clk(clk)
);
assign  w_632_16b  =  r15_w_conv1_1_stencil_0_0_0_16b ;
assign  w_633_16b  =  w_repeat_edge_1_stencil_1_3_0_8b ;
assign  w_634_16b  =  w_633_16b ;
assign  w_635_16b  =  w_kernel_1_tap_stencil_1_3_16b ;
MULT_16b_pe mult_32 (
  .a(w_634_16b),
  .b(w_635_16b),
  .c(w_636_16b),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_636_16b),
  .b(w_632_16b),
  .c(w_637_16b),
  .clk(clk)
);
assign  w_638_16b  =  r16_w_conv1_1_stencil_0_0_0_16b ;
assign  w_639_16b  =  w_repeat_edge_1_stencil_2_3_0_8b ;
assign  w_640_16b  =  w_639_16b ;
assign  w_641_16b  =  w_kernel_1_tap_stencil_2_3_16b ;
MULT_16b_pe mult_34 (
  .a(w_641_16b),
  .b(w_640_16b),
  .c(w_642_16b),
  .clk(clk)
);
ADD_16b_pe add_35 (
  .a(w_642_16b),
  .b(w_638_16b),
  .c(w_643_16b),
  .clk(clk)
);
assign  w_644_16b  =  r17_w_conv1_1_stencil_0_0_0_16b ;
assign  w_645_16b  =  w_repeat_edge_1_stencil_3_3_0_8b ;
assign  w_646_16b  =  w_645_16b ;
assign  w_647_16b  =  w_kernel_1_tap_stencil_3_3_16b ;
MULT_16b_pe mult_36 (
  .a(w_647_16b),
  .b(w_646_16b),
  .c(w_648_16b),
  .clk(clk)
);
ADD_16b_pe add_37 (
  .a(w_648_16b),
  .b(w_644_16b),
  .c(w_649_16b),
  .clk(clk)
);
assign  w_650_16b  =  r18_w_conv1_1_stencil_0_0_0_16b ;
assign  w_651_16b  =  w_repeat_edge_1_stencil_4_3_0_8b ;
assign  w_652_16b  =  w_651_16b ;
assign  w_653_16b  =  w_kernel_1_tap_stencil_4_3_16b ;
MULT_16b_pe mult_38 (
  .a(w_652_16b),
  .b(w_653_16b),
  .c(w_654_16b),
  .clk(clk)
);
ADD_16b_pe add_39 (
  .a(w_650_16b),
  .b(w_654_16b),
  .c(w_655_16b),
  .clk(clk)
);
assign  w_656_16b  =  r19_w_conv1_1_stencil_0_0_0_16b ;
assign  w_657_16b  =  w_repeat_edge_1_stencil_0_4_0_8b ;
assign  w_658_16b  =  w_657_16b ;
assign  w_659_16b  =  w_kernel_1_tap_stencil_0_4_16b ;
MULT_16b_pe mult_40 (
  .a(w_658_16b),
  .b(w_659_16b),
  .c(w_660_16b),
  .clk(clk)
);
ADD_16b_pe add_41 (
  .a(w_656_16b),
  .b(w_660_16b),
  .c(w_661_16b),
  .clk(clk)
);
assign  w_662_16b  =  r20_w_conv1_1_stencil_0_0_0_16b ;
assign  w_663_16b  =  w_repeat_edge_1_stencil_1_4_0_8b ;
assign  w_664_16b  =  w_663_16b ;
assign  w_665_16b  =  w_kernel_1_tap_stencil_1_4_16b ;
MULT_16b_pe mult_42 (
  .a(w_665_16b),
  .b(w_664_16b),
  .c(w_666_16b),
  .clk(clk)
);
ADD_16b_pe add_43 (
  .a(w_666_16b),
  .b(w_662_16b),
  .c(w_667_16b),
  .clk(clk)
);
assign  w_668_16b  =  r21_w_conv1_1_stencil_0_0_0_16b ;
assign  w_669_16b  =  w_repeat_edge_1_stencil_2_4_0_8b ;
assign  w_670_16b  =  w_669_16b ;
assign  w_671_16b  =  w_kernel_1_tap_stencil_2_4_16b ;
MULT_16b_pe mult_44 (
  .a(w_670_16b),
  .b(w_671_16b),
  .c(w_672_16b),
  .clk(clk)
);
ADD_16b_pe add_45 (
  .a(w_672_16b),
  .b(w_668_16b),
  .c(w_673_16b),
  .clk(clk)
);
assign  w_674_16b  =  r22_w_conv1_1_stencil_0_0_0_16b ;
assign  w_675_16b  =  w_repeat_edge_1_stencil_3_4_0_8b ;
assign  w_676_16b  =  w_675_16b ;
assign  w_677_16b  =  w_kernel_1_tap_stencil_3_4_16b ;
MULT_16b_pe mult_46 (
  .a(w_676_16b),
  .b(w_677_16b),
  .c(w_678_16b),
  .clk(clk)
);
ADD_16b_pe add_47 (
  .a(w_678_16b),
  .b(w_674_16b),
  .c(w_679_16b),
  .clk(clk)
);
assign  w_680_16b  =  r23_w_conv1_1_stencil_0_0_0_16b ;
assign  w_681_16b  =  w_repeat_edge_1_stencil_4_4_0_8b ;
assign  w_682_16b  =  w_681_16b ;
assign  w_683_16b  =  w_kernel_1_tap_stencil_4_4_16b ;
MULT_16b_pe mult_48 (
  .a(w_683_16b),
  .b(w_682_16b),
  .c(w_684_16b),
  .clk(clk)
);
ADD_16b_pe add_49 (
  .a(w_684_16b),
  .b(w_680_16b),
  .c(w_685_16b),
  .clk(clk)
);
assign  w_686_16b  = 1'b0;
assign  w_687_16b  =  w_repeat_edge_1_stencil_0_0_1_8b ;
assign  w_688_16b  =  w_687_16b ;
assign  w_689_16b  =  w_kernel_1_tap_stencil_0_0_16b ;
MULT_16b_pe mult_50 (
  .a(w_689_16b),
  .b(w_688_16b),
  .c(w_690_16b),
  .clk(clk)
);
ADD_16b_pe add_51 (
  .a(w_686_16b),
  .b(w_690_16b),
  .c(w_691_16b),
  .clk(clk)
);
assign  w_692_16b  =  r0_w_conv1_1_stencil_0_0_1_16b ;
assign  w_693_16b  =  w_repeat_edge_1_stencil_1_0_1_8b ;
assign  w_694_16b  =  w_693_16b ;
assign  w_695_16b  =  w_kernel_1_tap_stencil_1_0_16b ;
MULT_16b_pe mult_52 (
  .a(w_694_16b),
  .b(w_695_16b),
  .c(w_696_16b),
  .clk(clk)
);
ADD_16b_pe add_53 (
  .a(w_696_16b),
  .b(w_692_16b),
  .c(w_697_16b),
  .clk(clk)
);
assign  w_698_16b  =  r1_w_conv1_1_stencil_0_0_1_16b ;
assign  w_699_16b  =  w_repeat_edge_1_stencil_2_0_1_8b ;
assign  w_700_16b  =  w_699_16b ;
assign  w_701_16b  =  w_kernel_1_tap_stencil_2_0_16b ;
MULT_16b_pe mult_54 (
  .a(w_700_16b),
  .b(w_701_16b),
  .c(w_702_16b),
  .clk(clk)
);
ADD_16b_pe add_55 (
  .a(w_702_16b),
  .b(w_698_16b),
  .c(w_703_16b),
  .clk(clk)
);
assign  w_704_16b  =  r2_w_conv1_1_stencil_0_0_1_16b ;
assign  w_705_16b  =  w_repeat_edge_1_stencil_3_0_1_8b ;
assign  w_706_16b  =  w_705_16b ;
assign  w_707_16b  =  w_kernel_1_tap_stencil_3_0_16b ;
MULT_16b_pe mult_56 (
  .a(w_706_16b),
  .b(w_707_16b),
  .c(w_708_16b),
  .clk(clk)
);
ADD_16b_pe add_57 (
  .a(w_704_16b),
  .b(w_708_16b),
  .c(w_709_16b),
  .clk(clk)
);
assign  w_710_16b  =  r3_w_conv1_1_stencil_0_0_1_16b ;
assign  w_711_16b  =  w_repeat_edge_1_stencil_4_0_1_8b ;
assign  w_712_16b  =  w_711_16b ;
assign  w_713_16b  =  w_kernel_1_tap_stencil_4_0_16b ;
MULT_16b_pe mult_58 (
  .a(w_713_16b),
  .b(w_712_16b),
  .c(w_714_16b),
  .clk(clk)
);
ADD_16b_pe add_59 (
  .a(w_710_16b),
  .b(w_714_16b),
  .c(w_715_16b),
  .clk(clk)
);
assign  w_716_16b  =  r4_w_conv1_1_stencil_0_0_1_16b ;
assign  w_717_16b  =  w_repeat_edge_1_stencil_0_1_1_8b ;
assign  w_718_16b  =  w_717_16b ;
assign  w_719_16b  =  w_kernel_1_tap_stencil_0_1_16b ;
MULT_16b_pe mult_60 (
  .a(w_719_16b),
  .b(w_718_16b),
  .c(w_720_16b),
  .clk(clk)
);
ADD_16b_pe add_61 (
  .a(w_716_16b),
  .b(w_720_16b),
  .c(w_721_16b),
  .clk(clk)
);
assign  w_722_16b  =  r5_w_conv1_1_stencil_0_0_1_16b ;
assign  w_723_16b  =  w_repeat_edge_1_stencil_1_1_1_8b ;
assign  w_724_16b  =  w_723_16b ;
assign  w_725_16b  =  w_kernel_1_tap_stencil_1_1_16b ;
MULT_16b_pe mult_62 (
  .a(w_724_16b),
  .b(w_725_16b),
  .c(w_726_16b),
  .clk(clk)
);
ADD_16b_pe add_63 (
  .a(w_726_16b),
  .b(w_722_16b),
  .c(w_727_16b),
  .clk(clk)
);
assign  w_728_16b  =  r6_w_conv1_1_stencil_0_0_1_16b ;
assign  w_729_16b  =  w_repeat_edge_1_stencil_2_1_1_8b ;
assign  w_730_16b  =  w_729_16b ;
assign  w_731_16b  =  w_kernel_1_tap_stencil_2_1_16b ;
MULT_16b_pe mult_64 (
  .a(w_731_16b),
  .b(w_730_16b),
  .c(w_732_16b),
  .clk(clk)
);
ADD_16b_pe add_65 (
  .a(w_728_16b),
  .b(w_732_16b),
  .c(w_733_16b),
  .clk(clk)
);
assign  w_734_16b  =  r7_w_conv1_1_stencil_0_0_1_16b ;
assign  w_735_16b  =  w_repeat_edge_1_stencil_3_1_1_8b ;
assign  w_736_16b  =  w_735_16b ;
assign  w_737_16b  =  w_kernel_1_tap_stencil_3_1_16b ;
MULT_16b_pe mult_66 (
  .a(w_737_16b),
  .b(w_736_16b),
  .c(w_738_16b),
  .clk(clk)
);
ADD_16b_pe add_67 (
  .a(w_734_16b),
  .b(w_738_16b),
  .c(w_739_16b),
  .clk(clk)
);
assign  w_740_16b  =  r8_w_conv1_1_stencil_0_0_1_16b ;
assign  w_741_16b  =  w_repeat_edge_1_stencil_4_1_1_8b ;
assign  w_742_16b  =  w_741_16b ;
assign  w_743_16b  =  w_kernel_1_tap_stencil_4_1_16b ;
MULT_16b_pe mult_68 (
  .a(w_742_16b),
  .b(w_743_16b),
  .c(w_744_16b),
  .clk(clk)
);
ADD_16b_pe add_69 (
  .a(w_740_16b),
  .b(w_744_16b),
  .c(w_745_16b),
  .clk(clk)
);
assign  w_746_16b  =  r9_w_conv1_1_stencil_0_0_1_16b ;
assign  w_747_16b  =  w_repeat_edge_1_stencil_0_2_1_8b ;
assign  w_748_16b  =  w_747_16b ;
assign  w_749_16b  =  w_kernel_1_tap_stencil_0_2_16b ;
MULT_16b_pe mult_70 (
  .a(w_748_16b),
  .b(w_749_16b),
  .c(w_750_16b),
  .clk(clk)
);
ADD_16b_pe add_71 (
  .a(w_746_16b),
  .b(w_750_16b),
  .c(w_751_16b),
  .clk(clk)
);
assign  w_752_16b  =  r10_w_conv1_1_stencil_0_0_1_16b ;
assign  w_753_16b  =  w_repeat_edge_1_stencil_1_2_1_8b ;
assign  w_754_16b  =  w_753_16b ;
assign  w_755_16b  =  w_kernel_1_tap_stencil_1_2_16b ;
MULT_16b_pe mult_72 (
  .a(w_755_16b),
  .b(w_754_16b),
  .c(w_756_16b),
  .clk(clk)
);
ADD_16b_pe add_73 (
  .a(w_756_16b),
  .b(w_752_16b),
  .c(w_757_16b),
  .clk(clk)
);
assign  w_758_16b  =  r11_w_conv1_1_stencil_0_0_1_16b ;
assign  w_759_16b  =  w_repeat_edge_1_stencil_2_2_1_8b ;
assign  w_760_16b  =  w_759_16b ;
assign  w_761_16b  =  w_kernel_1_tap_stencil_2_2_16b ;
MULT_16b_pe mult_74 (
  .a(w_760_16b),
  .b(w_761_16b),
  .c(w_762_16b),
  .clk(clk)
);
ADD_16b_pe add_75 (
  .a(w_762_16b),
  .b(w_758_16b),
  .c(w_763_16b),
  .clk(clk)
);
assign  w_764_16b  =  r12_w_conv1_1_stencil_0_0_1_16b ;
assign  w_765_16b  =  w_repeat_edge_1_stencil_3_2_1_8b ;
assign  w_766_16b  =  w_765_16b ;
assign  w_767_16b  =  w_kernel_1_tap_stencil_3_2_16b ;
MULT_16b_pe mult_76 (
  .a(w_766_16b),
  .b(w_767_16b),
  .c(w_768_16b),
  .clk(clk)
);
ADD_16b_pe add_77 (
  .a(w_768_16b),
  .b(w_764_16b),
  .c(w_769_16b),
  .clk(clk)
);
assign  w_770_16b  =  r13_w_conv1_1_stencil_0_0_1_16b ;
assign  w_771_16b  =  w_repeat_edge_1_stencil_4_2_1_8b ;
assign  w_772_16b  =  w_771_16b ;
assign  w_773_16b  =  w_kernel_1_tap_stencil_4_2_16b ;
MULT_16b_pe mult_78 (
  .a(w_773_16b),
  .b(w_772_16b),
  .c(w_774_16b),
  .clk(clk)
);
ADD_16b_pe add_79 (
  .a(w_770_16b),
  .b(w_774_16b),
  .c(w_775_16b),
  .clk(clk)
);
assign  w_776_16b  =  r14_w_conv1_1_stencil_0_0_1_16b ;
assign  w_777_16b  =  w_repeat_edge_1_stencil_0_3_1_8b ;
assign  w_778_16b  =  w_777_16b ;
assign  w_779_16b  =  w_kernel_1_tap_stencil_0_3_16b ;
MULT_16b_pe mult_80 (
  .a(w_779_16b),
  .b(w_778_16b),
  .c(w_780_16b),
  .clk(clk)
);
ADD_16b_pe add_81 (
  .a(w_780_16b),
  .b(w_776_16b),
  .c(w_781_16b),
  .clk(clk)
);
assign  w_782_16b  =  r15_w_conv1_1_stencil_0_0_1_16b ;
assign  w_783_16b  =  w_repeat_edge_1_stencil_1_3_1_8b ;
assign  w_784_16b  =  w_783_16b ;
assign  w_785_16b  =  w_kernel_1_tap_stencil_1_3_16b ;
MULT_16b_pe mult_82 (
  .a(w_784_16b),
  .b(w_785_16b),
  .c(w_786_16b),
  .clk(clk)
);
ADD_16b_pe add_83 (
  .a(w_786_16b),
  .b(w_782_16b),
  .c(w_787_16b),
  .clk(clk)
);
assign  w_788_16b  =  r16_w_conv1_1_stencil_0_0_1_16b ;
assign  w_789_16b  =  w_repeat_edge_1_stencil_2_3_1_8b ;
assign  w_790_16b  =  w_789_16b ;
assign  w_791_16b  =  w_kernel_1_tap_stencil_2_3_16b ;
MULT_16b_pe mult_84 (
  .a(w_791_16b),
  .b(w_790_16b),
  .c(w_792_16b),
  .clk(clk)
);
ADD_16b_pe add_85 (
  .a(w_792_16b),
  .b(w_788_16b),
  .c(w_793_16b),
  .clk(clk)
);
assign  w_794_16b  =  r17_w_conv1_1_stencil_0_0_1_16b ;
assign  w_795_16b  =  w_repeat_edge_1_stencil_3_3_1_8b ;
assign  w_796_16b  =  w_795_16b ;
assign  w_797_16b  =  w_kernel_1_tap_stencil_3_3_16b ;
MULT_16b_pe mult_86 (
  .a(w_797_16b),
  .b(w_796_16b),
  .c(w_798_16b),
  .clk(clk)
);
ADD_16b_pe add_87 (
  .a(w_798_16b),
  .b(w_794_16b),
  .c(w_799_16b),
  .clk(clk)
);
assign  w_800_16b  =  r18_w_conv1_1_stencil_0_0_1_16b ;
assign  w_801_16b  =  w_repeat_edge_1_stencil_4_3_1_8b ;
assign  w_802_16b  =  w_801_16b ;
assign  w_803_16b  =  w_kernel_1_tap_stencil_4_3_16b ;
MULT_16b_pe mult_88 (
  .a(w_803_16b),
  .b(w_802_16b),
  .c(w_804_16b),
  .clk(clk)
);
ADD_16b_pe add_89 (
  .a(w_800_16b),
  .b(w_804_16b),
  .c(w_805_16b),
  .clk(clk)
);
assign  w_806_16b  =  r19_w_conv1_1_stencil_0_0_1_16b ;
assign  w_807_16b  =  w_repeat_edge_1_stencil_0_4_1_8b ;
assign  w_808_16b  =  w_807_16b ;
assign  w_809_16b  =  w_kernel_1_tap_stencil_0_4_16b ;
MULT_16b_pe mult_90 (
  .a(w_809_16b),
  .b(w_808_16b),
  .c(w_810_16b),
  .clk(clk)
);
ADD_16b_pe add_91 (
  .a(w_810_16b),
  .b(w_806_16b),
  .c(w_811_16b),
  .clk(clk)
);
assign  w_812_16b  =  r20_w_conv1_1_stencil_0_0_1_16b ;
assign  w_813_16b  =  w_repeat_edge_1_stencil_1_4_1_8b ;
assign  w_814_16b  =  w_813_16b ;
assign  w_815_16b  =  w_kernel_1_tap_stencil_1_4_16b ;
MULT_16b_pe mult_92 (
  .a(w_814_16b),
  .b(w_815_16b),
  .c(w_816_16b),
  .clk(clk)
);
ADD_16b_pe add_93 (
  .a(w_816_16b),
  .b(w_812_16b),
  .c(w_817_16b),
  .clk(clk)
);
assign  w_818_16b  =  r21_w_conv1_1_stencil_0_0_1_16b ;
assign  w_819_16b  =  w_repeat_edge_1_stencil_2_4_1_8b ;
assign  w_820_16b  =  w_819_16b ;
assign  w_821_16b  =  w_kernel_1_tap_stencil_2_4_16b ;
MULT_16b_pe mult_94 (
  .a(w_821_16b),
  .b(w_820_16b),
  .c(w_822_16b),
  .clk(clk)
);
ADD_16b_pe add_95 (
  .a(w_818_16b),
  .b(w_822_16b),
  .c(w_823_16b),
  .clk(clk)
);
assign  w_824_16b  =  r22_w_conv1_1_stencil_0_0_1_16b ;
assign  w_825_16b  =  w_repeat_edge_1_stencil_3_4_1_8b ;
assign  w_826_16b  =  w_825_16b ;
assign  w_827_16b  =  w_kernel_1_tap_stencil_3_4_16b ;
MULT_16b_pe mult_96 (
  .a(w_827_16b),
  .b(w_826_16b),
  .c(w_828_16b),
  .clk(clk)
);
ADD_16b_pe add_97 (
  .a(w_824_16b),
  .b(w_828_16b),
  .c(w_829_16b),
  .clk(clk)
);
assign  w_830_16b  =  r23_w_conv1_1_stencil_0_0_1_16b ;
assign  w_831_16b  =  w_repeat_edge_1_stencil_4_4_1_8b ;
assign  w_832_16b  =  w_831_16b ;
assign  w_833_16b  =  w_kernel_1_tap_stencil_4_4_16b ;
MULT_16b_pe mult_98 (
  .a(w_832_16b),
  .b(w_833_16b),
  .c(w_834_16b),
  .clk(clk)
);
ADD_16b_pe add_99 (
  .a(w_834_16b),
  .b(w_830_16b),
  .c(w_835_16b),
  .clk(clk)
);
assign  w_836_16b  = 1'b0;
assign  w_837_16b  =  w_repeat_edge_1_stencil_0_0_2_8b ;
assign  w_838_16b  =  w_837_16b ;
assign  w_839_16b  =  w_kernel_1_tap_stencil_0_0_16b ;
MULT_16b_pe mult_100 (
  .a(w_838_16b),
  .b(w_839_16b),
  .c(w_840_16b),
  .clk(clk)
);
ADD_16b_pe add_101 (
  .a(w_836_16b),
  .b(w_840_16b),
  .c(w_841_16b),
  .clk(clk)
);
assign  w_842_16b  =  r0_w_conv1_1_stencil_0_0_2_16b ;
assign  w_843_16b  =  w_repeat_edge_1_stencil_1_0_2_8b ;
assign  w_844_16b  =  w_843_16b ;
assign  w_845_16b  =  w_kernel_1_tap_stencil_1_0_16b ;
MULT_16b_pe mult_102 (
  .a(w_845_16b),
  .b(w_844_16b),
  .c(w_846_16b),
  .clk(clk)
);
ADD_16b_pe add_103 (
  .a(w_846_16b),
  .b(w_842_16b),
  .c(w_847_16b),
  .clk(clk)
);
assign  w_848_16b  =  r1_w_conv1_1_stencil_0_0_2_16b ;
assign  w_849_16b  =  w_repeat_edge_1_stencil_2_0_2_8b ;
assign  w_850_16b  =  w_849_16b ;
assign  w_851_16b  =  w_kernel_1_tap_stencil_2_0_16b ;
MULT_16b_pe mult_104 (
  .a(w_850_16b),
  .b(w_851_16b),
  .c(w_852_16b),
  .clk(clk)
);
ADD_16b_pe add_105 (
  .a(w_852_16b),
  .b(w_848_16b),
  .c(w_853_16b),
  .clk(clk)
);
assign  w_854_16b  =  r2_w_conv1_1_stencil_0_0_2_16b ;
assign  w_855_16b  =  w_repeat_edge_1_stencil_3_0_2_8b ;
assign  w_856_16b  =  w_855_16b ;
assign  w_857_16b  =  w_kernel_1_tap_stencil_3_0_16b ;
MULT_16b_pe mult_106 (
  .a(w_856_16b),
  .b(w_857_16b),
  .c(w_858_16b),
  .clk(clk)
);
ADD_16b_pe add_107 (
  .a(w_858_16b),
  .b(w_854_16b),
  .c(w_859_16b),
  .clk(clk)
);
assign  w_860_16b  =  r3_w_conv1_1_stencil_0_0_2_16b ;
assign  w_861_16b  =  w_repeat_edge_1_stencil_4_0_2_8b ;
assign  w_862_16b  =  w_861_16b ;
assign  w_863_16b  =  w_kernel_1_tap_stencil_4_0_16b ;
MULT_16b_pe mult_108 (
  .a(w_863_16b),
  .b(w_862_16b),
  .c(w_864_16b),
  .clk(clk)
);
ADD_16b_pe add_109 (
  .a(w_860_16b),
  .b(w_864_16b),
  .c(w_865_16b),
  .clk(clk)
);
assign  w_866_16b  =  r4_w_conv1_1_stencil_0_0_2_16b ;
assign  w_867_16b  =  w_repeat_edge_1_stencil_0_1_2_8b ;
assign  w_868_16b  =  w_867_16b ;
assign  w_869_16b  =  w_kernel_1_tap_stencil_0_1_16b ;
MULT_16b_pe mult_110 (
  .a(w_869_16b),
  .b(w_868_16b),
  .c(w_870_16b),
  .clk(clk)
);
ADD_16b_pe add_111 (
  .a(w_870_16b),
  .b(w_866_16b),
  .c(w_871_16b),
  .clk(clk)
);
assign  w_872_16b  =  r5_w_conv1_1_stencil_0_0_2_16b ;
assign  w_873_16b  =  w_repeat_edge_1_stencil_1_1_2_8b ;
assign  w_874_16b  =  w_873_16b ;
assign  w_875_16b  =  w_kernel_1_tap_stencil_1_1_16b ;
MULT_16b_pe mult_112 (
  .a(w_874_16b),
  .b(w_875_16b),
  .c(w_876_16b),
  .clk(clk)
);
ADD_16b_pe add_113 (
  .a(w_872_16b),
  .b(w_876_16b),
  .c(w_877_16b),
  .clk(clk)
);
assign  w_878_16b  =  r6_w_conv1_1_stencil_0_0_2_16b ;
assign  w_879_16b  =  w_repeat_edge_1_stencil_2_1_2_8b ;
assign  w_880_16b  =  w_879_16b ;
assign  w_881_16b  =  w_kernel_1_tap_stencil_2_1_16b ;
MULT_16b_pe mult_114 (
  .a(w_881_16b),
  .b(w_880_16b),
  .c(w_882_16b),
  .clk(clk)
);
ADD_16b_pe add_115 (
  .a(w_882_16b),
  .b(w_878_16b),
  .c(w_883_16b),
  .clk(clk)
);
assign  w_884_16b  =  r7_w_conv1_1_stencil_0_0_2_16b ;
assign  w_885_16b  =  w_repeat_edge_1_stencil_3_1_2_8b ;
assign  w_886_16b  =  w_885_16b ;
assign  w_887_16b  =  w_kernel_1_tap_stencil_3_1_16b ;
MULT_16b_pe mult_116 (
  .a(w_887_16b),
  .b(w_886_16b),
  .c(w_888_16b),
  .clk(clk)
);
ADD_16b_pe add_117 (
  .a(w_888_16b),
  .b(w_884_16b),
  .c(w_889_16b),
  .clk(clk)
);
assign  w_890_16b  =  r8_w_conv1_1_stencil_0_0_2_16b ;
assign  w_891_16b  =  w_repeat_edge_1_stencil_4_1_2_8b ;
assign  w_892_16b  =  w_891_16b ;
assign  w_893_16b  =  w_kernel_1_tap_stencil_4_1_16b ;
MULT_16b_pe mult_118 (
  .a(w_892_16b),
  .b(w_893_16b),
  .c(w_894_16b),
  .clk(clk)
);
ADD_16b_pe add_119 (
  .a(w_894_16b),
  .b(w_890_16b),
  .c(w_895_16b),
  .clk(clk)
);
assign  w_896_16b  =  r9_w_conv1_1_stencil_0_0_2_16b ;
assign  w_897_16b  =  w_repeat_edge_1_stencil_0_2_2_8b ;
assign  w_898_16b  =  w_897_16b ;
assign  w_899_16b  =  w_kernel_1_tap_stencil_0_2_16b ;
MULT_16b_pe mult_120 (
  .a(w_898_16b),
  .b(w_899_16b),
  .c(w_900_16b),
  .clk(clk)
);
ADD_16b_pe add_121 (
  .a(w_896_16b),
  .b(w_900_16b),
  .c(w_901_16b),
  .clk(clk)
);
assign  w_902_16b  =  r10_w_conv1_1_stencil_0_0_2_16b ;
assign  w_903_16b  =  w_repeat_edge_1_stencil_1_2_2_8b ;
assign  w_904_16b  =  w_903_16b ;
assign  w_905_16b  =  w_kernel_1_tap_stencil_1_2_16b ;
MULT_16b_pe mult_122 (
  .a(w_904_16b),
  .b(w_905_16b),
  .c(w_906_16b),
  .clk(clk)
);
ADD_16b_pe add_123 (
  .a(w_902_16b),
  .b(w_906_16b),
  .c(w_907_16b),
  .clk(clk)
);
assign  w_908_16b  =  r11_w_conv1_1_stencil_0_0_2_16b ;
assign  w_909_16b  =  w_repeat_edge_1_stencil_2_2_2_8b ;
assign  w_910_16b  =  w_909_16b ;
assign  w_911_16b  =  w_kernel_1_tap_stencil_2_2_16b ;
MULT_16b_pe mult_124 (
  .a(w_911_16b),
  .b(w_910_16b),
  .c(w_912_16b),
  .clk(clk)
);
ADD_16b_pe add_125 (
  .a(w_908_16b),
  .b(w_912_16b),
  .c(w_913_16b),
  .clk(clk)
);
assign  w_914_16b  =  r12_w_conv1_1_stencil_0_0_2_16b ;
assign  w_915_16b  =  w_repeat_edge_1_stencil_3_2_2_8b ;
assign  w_916_16b  =  w_915_16b ;
assign  w_917_16b  =  w_kernel_1_tap_stencil_3_2_16b ;
MULT_16b_pe mult_126 (
  .a(w_917_16b),
  .b(w_916_16b),
  .c(w_918_16b),
  .clk(clk)
);
ADD_16b_pe add_127 (
  .a(w_918_16b),
  .b(w_914_16b),
  .c(w_919_16b),
  .clk(clk)
);
assign  w_920_16b  =  r13_w_conv1_1_stencil_0_0_2_16b ;
assign  w_921_16b  =  w_repeat_edge_1_stencil_4_2_2_8b ;
assign  w_922_16b  =  w_921_16b ;
assign  w_923_16b  =  w_kernel_1_tap_stencil_4_2_16b ;
MULT_16b_pe mult_128 (
  .a(w_922_16b),
  .b(w_923_16b),
  .c(w_924_16b),
  .clk(clk)
);
ADD_16b_pe add_129 (
  .a(w_920_16b),
  .b(w_924_16b),
  .c(w_925_16b),
  .clk(clk)
);
assign  w_926_16b  =  r14_w_conv1_1_stencil_0_0_2_16b ;
assign  w_927_16b  =  w_repeat_edge_1_stencil_0_3_2_8b ;
assign  w_928_16b  =  w_927_16b ;
assign  w_929_16b  =  w_kernel_1_tap_stencil_0_3_16b ;
MULT_16b_pe mult_130 (
  .a(w_928_16b),
  .b(w_929_16b),
  .c(w_930_16b),
  .clk(clk)
);
ADD_16b_pe add_131 (
  .a(w_926_16b),
  .b(w_930_16b),
  .c(w_931_16b),
  .clk(clk)
);
assign  w_932_16b  =  r15_w_conv1_1_stencil_0_0_2_16b ;
assign  w_933_16b  =  w_repeat_edge_1_stencil_1_3_2_8b ;
assign  w_934_16b  =  w_933_16b ;
assign  w_935_16b  =  w_kernel_1_tap_stencil_1_3_16b ;
MULT_16b_pe mult_132 (
  .a(w_935_16b),
  .b(w_934_16b),
  .c(w_936_16b),
  .clk(clk)
);
ADD_16b_pe add_133 (
  .a(w_936_16b),
  .b(w_932_16b),
  .c(w_937_16b),
  .clk(clk)
);
assign  w_938_16b  =  r16_w_conv1_1_stencil_0_0_2_16b ;
assign  w_939_16b  =  w_repeat_edge_1_stencil_2_3_2_8b ;
assign  w_940_16b  =  w_939_16b ;
assign  w_941_16b  =  w_kernel_1_tap_stencil_2_3_16b ;
MULT_16b_pe mult_134 (
  .a(w_940_16b),
  .b(w_941_16b),
  .c(w_942_16b),
  .clk(clk)
);
ADD_16b_pe add_135 (
  .a(w_942_16b),
  .b(w_938_16b),
  .c(w_943_16b),
  .clk(clk)
);
assign  w_944_16b  =  r17_w_conv1_1_stencil_0_0_2_16b ;
assign  w_945_16b  =  w_repeat_edge_1_stencil_3_3_2_8b ;
assign  w_946_16b  =  w_945_16b ;
assign  w_947_16b  =  w_kernel_1_tap_stencil_3_3_16b ;
MULT_16b_pe mult_136 (
  .a(w_946_16b),
  .b(w_947_16b),
  .c(w_948_16b),
  .clk(clk)
);
ADD_16b_pe add_137 (
  .a(w_944_16b),
  .b(w_948_16b),
  .c(w_949_16b),
  .clk(clk)
);
assign  w_950_16b  =  r18_w_conv1_1_stencil_0_0_2_16b ;
assign  w_951_16b  =  w_repeat_edge_1_stencil_4_3_2_8b ;
assign  w_952_16b  =  w_951_16b ;
assign  w_953_16b  =  w_kernel_1_tap_stencil_4_3_16b ;
MULT_16b_pe mult_138 (
  .a(w_953_16b),
  .b(w_952_16b),
  .c(w_954_16b),
  .clk(clk)
);
ADD_16b_pe add_139 (
  .a(w_954_16b),
  .b(w_950_16b),
  .c(w_955_16b),
  .clk(clk)
);
assign  w_956_16b  =  r19_w_conv1_1_stencil_0_0_2_16b ;
assign  w_957_16b  =  w_repeat_edge_1_stencil_0_4_2_8b ;
assign  w_958_16b  =  w_957_16b ;
assign  w_959_16b  =  w_kernel_1_tap_stencil_0_4_16b ;
MULT_16b_pe mult_140 (
  .a(w_959_16b),
  .b(w_958_16b),
  .c(w_960_16b),
  .clk(clk)
);
ADD_16b_pe add_141 (
  .a(w_956_16b),
  .b(w_960_16b),
  .c(w_961_16b),
  .clk(clk)
);
assign  w_962_16b  =  r20_w_conv1_1_stencil_0_0_2_16b ;
assign  w_963_16b  =  w_repeat_edge_1_stencil_1_4_2_8b ;
assign  w_964_16b  =  w_963_16b ;
assign  w_965_16b  =  w_kernel_1_tap_stencil_1_4_16b ;
MULT_16b_pe mult_142 (
  .a(w_964_16b),
  .b(w_965_16b),
  .c(w_966_16b),
  .clk(clk)
);
ADD_16b_pe add_143 (
  .a(w_966_16b),
  .b(w_962_16b),
  .c(w_967_16b),
  .clk(clk)
);
assign  w_968_16b  =  r21_w_conv1_1_stencil_0_0_2_16b ;
assign  w_969_16b  =  w_repeat_edge_1_stencil_2_4_2_8b ;
assign  w_970_16b  =  w_969_16b ;
assign  w_971_16b  =  w_kernel_1_tap_stencil_2_4_16b ;
MULT_16b_pe mult_144 (
  .a(w_971_16b),
  .b(w_970_16b),
  .c(w_972_16b),
  .clk(clk)
);
ADD_16b_pe add_145 (
  .a(w_972_16b),
  .b(w_968_16b),
  .c(w_973_16b),
  .clk(clk)
);
assign  w_974_16b  =  r22_w_conv1_1_stencil_0_0_2_16b ;
assign  w_975_16b  =  w_repeat_edge_1_stencil_3_4_2_8b ;
assign  w_976_16b  =  w_975_16b ;
assign  w_977_16b  =  w_kernel_1_tap_stencil_3_4_16b ;
MULT_16b_pe mult_146 (
  .a(w_977_16b),
  .b(w_976_16b),
  .c(w_978_16b),
  .clk(clk)
);
ADD_16b_pe add_147 (
  .a(w_978_16b),
  .b(w_974_16b),
  .c(w_979_16b),
  .clk(clk)
);
assign  w_980_16b  =  r23_w_conv1_1_stencil_0_0_2_16b ;
assign  w_981_16b  =  w_repeat_edge_1_stencil_4_4_2_8b ;
assign  w_982_16b  =  w_981_16b ;
assign  w_983_16b  =  w_kernel_1_tap_stencil_4_4_16b ;
MULT_16b_pe mult_148 (
  .a(w_982_16b),
  .b(w_983_16b),
  .c(w_984_16b),
  .clk(clk)
);
ADD_16b_pe add_149 (
  .a(w_980_16b),
  .b(w_984_16b),
  .c(w_985_16b),
  .clk(clk)
);
assign  w_conv1_1_stencil_0_0_0_16b  = 1'b0;
assign  w_conv1_1_stencil_0_0_1_16b  = 1'b0;
assign  w_conv1_1_stencil_0_0_2_16b  = 1'b0;

endmodule







module kernel__f1_stencil_stream(
//Inputs
  w_bias_16b,
  w_conv1_1_stencil_0_0_0_16b,
  w_conv1_1_stencil_0_0_1_16b,
  w_conv1_1_stencil_0_0_2_16b,
  w_conv1_1_stencil_0_1_0_16b,
  w_conv1_1_stencil_0_1_1_16b,
  w_conv1_1_stencil_0_1_2_16b,
  w_conv1_1_stencil_0_2_0_16b,
  w_conv1_1_stencil_0_2_1_16b,
  w_conv1_1_stencil_0_2_2_16b,
  w_conv1_1_stencil_0_3_0_16b,
  w_conv1_1_stencil_0_3_1_16b,
  w_conv1_1_stencil_0_3_2_16b,
  w_conv1_1_stencil_0_4_0_16b,
  w_conv1_1_stencil_0_4_1_16b,
  w_conv1_1_stencil_0_4_2_16b,
  w_conv1_1_stencil_1_0_0_16b,
  w_conv1_1_stencil_1_0_1_16b,
  w_conv1_1_stencil_1_0_2_16b,
  w_conv1_1_stencil_1_1_0_16b,
  w_conv1_1_stencil_1_1_1_16b,
  w_conv1_1_stencil_1_1_2_16b,
  w_conv1_1_stencil_1_2_0_16b,
  w_conv1_1_stencil_1_2_1_16b,
  w_conv1_1_stencil_1_2_2_16b,
  w_conv1_1_stencil_1_3_0_16b,
  w_conv1_1_stencil_1_3_1_16b,
  w_conv1_1_stencil_1_3_2_16b,
  w_conv1_1_stencil_1_4_0_16b,
  w_conv1_1_stencil_1_4_1_16b,
  w_conv1_1_stencil_1_4_2_16b,
  w_conv1_1_stencil_2_0_0_16b,
  w_conv1_1_stencil_2_0_1_16b,
  w_conv1_1_stencil_2_0_2_16b,
  w_conv1_1_stencil_2_1_0_16b,
  w_conv1_1_stencil_2_1_1_16b,
  w_conv1_1_stencil_2_1_2_16b,
  w_conv1_1_stencil_2_2_0_16b,
  w_conv1_1_stencil_2_2_1_16b,
  w_conv1_1_stencil_2_2_2_16b,
  w_conv1_1_stencil_2_3_0_16b,
  w_conv1_1_stencil_2_3_1_16b,
  w_conv1_1_stencil_2_3_2_16b,
  w_conv1_1_stencil_2_4_0_16b,
  w_conv1_1_stencil_2_4_1_16b,
  w_conv1_1_stencil_2_4_2_16b,
  w_conv1_1_stencil_3_0_0_16b,
  w_conv1_1_stencil_3_0_1_16b,
  w_conv1_1_stencil_3_0_2_16b,
  w_conv1_1_stencil_3_1_0_16b,
  w_conv1_1_stencil_3_1_1_16b,
  w_conv1_1_stencil_3_1_2_16b,
  w_conv1_1_stencil_3_2_0_16b,
  w_conv1_1_stencil_3_2_1_16b,
  w_conv1_1_stencil_3_2_2_16b,
  w_conv1_1_stencil_3_3_0_16b,
  w_conv1_1_stencil_3_3_1_16b,
  w_conv1_1_stencil_3_3_2_16b,
  w_conv1_1_stencil_3_4_0_16b,
  w_conv1_1_stencil_3_4_1_16b,
  w_conv1_1_stencil_3_4_2_16b,
  w_conv1_1_stencil_4_0_0_16b,
  w_conv1_1_stencil_4_0_1_16b,
  w_conv1_1_stencil_4_0_2_16b,
  w_conv1_1_stencil_4_1_0_16b,
  w_conv1_1_stencil_4_1_1_16b,
  w_conv1_1_stencil_4_1_2_16b,
  w_conv1_1_stencil_4_2_0_16b,
  w_conv1_1_stencil_4_2_1_16b,
  w_conv1_1_stencil_4_2_2_16b,
  w_conv1_1_stencil_4_3_0_16b,
  w_conv1_1_stencil_4_3_1_16b,
  w_conv1_1_stencil_4_3_2_16b,
  w_conv1_1_stencil_4_4_0_16b,
  w_conv1_1_stencil_4_4_1_16b,
  w_conv1_1_stencil_4_4_2_16b,
  w_weight_tap_stencil_0_0_8b,
  w_weight_tap_stencil_0_1_8b,
  w_weight_tap_stencil_0_2_8b,
  w_weight_tap_stencil_0_3_8b,
  w_weight_tap_stencil_0_4_8b,
  w_weight_tap_stencil_1_0_8b,
  w_weight_tap_stencil_1_1_8b,
  w_weight_tap_stencil_1_2_8b,
  w_weight_tap_stencil_1_3_8b,
  w_weight_tap_stencil_1_4_8b,
  w_weight_tap_stencil_2_0_8b,
  w_weight_tap_stencil_2_1_8b,
  w_weight_tap_stencil_2_2_8b,
  w_weight_tap_stencil_2_3_8b,
  w_weight_tap_stencil_2_4_8b,
  w_weight_tap_stencil_3_0_8b,
  w_weight_tap_stencil_3_1_8b,
  w_weight_tap_stencil_3_2_8b,
  w_weight_tap_stencil_3_3_8b,
  w_weight_tap_stencil_3_4_8b,
  w_weight_tap_stencil_4_0_8b,
  w_weight_tap_stencil_4_1_8b,
  w_weight_tap_stencil_4_2_8b,
  w_weight_tap_stencil_4_3_8b,
  w_weight_tap_stencil_4_4_8b,
//Outputs
  out_w_f1_stencil_0_0_1_8b,
  out_w_f1_stencil_0_0_2_8b,
  out_w_f1_stencil_packed_16b,

  clk
);

//Inputs
input  w_conv1_1_stencil_1_4_2_16b;
input  w_conv1_1_stencil_1_4_1_16b;
input  w_conv1_1_stencil_1_4_0_16b;
input  w_bias_16b;
input  w_conv1_1_stencil_1_2_1_16b;
input  w_conv1_1_stencil_1_2_0_16b;
input  w_conv1_1_stencil_1_2_2_16b;
input  w_conv1_1_stencil_1_0_2_16b;
input  w_conv1_1_stencil_1_0_1_16b;
input  w_conv1_1_stencil_1_0_0_16b;
input  w_conv1_1_stencil_3_1_0_16b;
input  w_conv1_1_stencil_3_1_1_16b;
input  w_weight_tap_stencil_3_2_8b;
input  w_weight_tap_stencil_3_3_8b;
input  w_weight_tap_stencil_3_0_8b;
input  w_weight_tap_stencil_3_1_8b;
input  w_weight_tap_stencil_3_4_8b;
input  w_weight_tap_stencil_1_4_8b;
input  w_weight_tap_stencil_1_0_8b;
input  w_weight_tap_stencil_1_1_8b;
input  w_weight_tap_stencil_1_2_8b;
input  w_weight_tap_stencil_1_3_8b;
input  w_conv1_1_stencil_3_3_0_16b;
input  w_conv1_1_stencil_3_3_1_16b;
input  w_conv1_1_stencil_0_3_1_16b;
input  w_conv1_1_stencil_0_3_0_16b;
input  w_conv1_1_stencil_0_3_2_16b;
input  w_weight_tap_stencil_4_1_8b;
input  w_weight_tap_stencil_4_0_8b;
input  w_weight_tap_stencil_4_3_8b;
input  w_weight_tap_stencil_4_2_8b;
input  w_weight_tap_stencil_4_4_8b;
input  w_conv1_1_stencil_0_1_2_16b;
input  w_conv1_1_stencil_0_1_1_16b;
input  w_conv1_1_stencil_0_1_0_16b;
input  w_conv1_1_stencil_2_2_1_16b;
input  w_conv1_1_stencil_2_1_1_16b;
input  w_conv1_1_stencil_2_1_0_16b;
input  w_conv1_1_stencil_3_1_2_16b;
input  w_conv1_1_stencil_2_1_2_16b;
input  w_weight_tap_stencil_2_3_8b;
input  w_weight_tap_stencil_2_2_8b;
input  w_weight_tap_stencil_2_1_8b;
input  w_weight_tap_stencil_2_0_8b;
input  w_weight_tap_stencil_2_4_8b;
input  w_weight_tap_stencil_0_4_8b;
input  w_weight_tap_stencil_0_1_8b;
input  w_weight_tap_stencil_0_0_8b;
input  w_weight_tap_stencil_0_3_8b;
input  w_weight_tap_stencil_0_2_8b;
input  w_conv1_1_stencil_0_4_2_16b;
input  w_conv1_1_stencil_0_4_0_16b;
input  w_conv1_1_stencil_0_4_1_16b;
input  w_conv1_1_stencil_4_2_0_16b;
input  w_conv1_1_stencil_4_2_1_16b;
input  w_conv1_1_stencil_4_2_2_16b;
input  w_conv1_1_stencil_0_2_0_16b;
input  w_conv1_1_stencil_0_2_1_16b;
input  w_conv1_1_stencil_0_2_2_16b;
input  w_conv1_1_stencil_3_3_2_16b;
input  w_conv1_1_stencil_2_3_2_16b;
input  w_conv1_1_stencil_2_3_1_16b;
input  w_conv1_1_stencil_2_3_0_16b;
input  w_conv1_1_stencil_4_4_2_16b;
input  w_conv1_1_stencil_4_4_0_16b;
input  w_conv1_1_stencil_4_4_1_16b;
input  w_conv1_1_stencil_1_3_1_16b;
input  w_conv1_1_stencil_3_0_1_16b;
input  w_conv1_1_stencil_3_0_0_16b;
input  w_conv1_1_stencil_3_0_2_16b;
input  w_conv1_1_stencil_1_3_2_16b;
input  w_conv1_1_stencil_0_0_2_16b;
input  w_conv1_1_stencil_0_0_0_16b;
input  w_conv1_1_stencil_0_0_1_16b;
input  w_conv1_1_stencil_4_0_2_16b;
input  w_conv1_1_stencil_4_0_0_16b;
input  w_conv1_1_stencil_4_0_1_16b;
input  w_conv1_1_stencil_4_3_1_16b;
input  w_conv1_1_stencil_4_3_0_16b;
input  w_conv1_1_stencil_4_3_2_16b;
input  w_conv1_1_stencil_2_4_0_16b;
input  w_conv1_1_stencil_2_4_1_16b;
input  w_conv1_1_stencil_2_4_2_16b;
input  w_conv1_1_stencil_4_1_2_16b;
input  w_conv1_1_stencil_4_1_1_16b;
input  w_conv1_1_stencil_4_1_0_16b;
input  w_conv1_1_stencil_2_0_0_16b;
input  w_conv1_1_stencil_2_0_1_16b;
input  w_conv1_1_stencil_2_0_2_16b;
input  w_conv1_1_stencil_2_2_2_16b;
input  w_conv1_1_stencil_1_3_0_16b;
input  w_conv1_1_stencil_3_2_2_16b;
input  w_conv1_1_stencil_3_2_1_16b;
input  w_conv1_1_stencil_3_2_0_16b;
input  w_conv1_1_stencil_1_1_2_16b;
input  w_conv1_1_stencil_1_1_0_16b;
input  w_conv1_1_stencil_1_1_1_16b;
input  w_conv1_1_stencil_3_4_1_16b;
input  w_conv1_1_stencil_3_4_0_16b;
input  w_conv1_1_stencil_2_2_0_16b;
input  w_conv1_1_stencil_3_4_2_16b;
//Outputs
output  out_w_f1_stencil_packed_16b;
output  out_w_f1_stencil_0_0_2_8b;
output  out_w_f1_stencil_0_0_1_8b;

input  clk;


wire  r0_w_local_sum_1a659_0_16b;
wire  r0_w_local_sum_1a660_0_16b;
wire  r0_w_local_sum_1a661_0_16b;
wire  r10_w_local_sum_1a659_0_16b;
wire  r10_w_local_sum_1a660_0_16b;
wire  r10_w_local_sum_1a661_0_16b;
wire  r11_w_local_sum_1a659_0_16b;
wire  r11_w_local_sum_1a660_0_16b;
wire  r11_w_local_sum_1a661_0_16b;
wire  r12_w_local_sum_1a659_0_16b;
wire  r12_w_local_sum_1a660_0_16b;
wire  r12_w_local_sum_1a661_0_16b;
wire  r13_w_local_sum_1a659_0_16b;
wire  r13_w_local_sum_1a660_0_16b;
wire  r13_w_local_sum_1a661_0_16b;
wire  r14_w_local_sum_1a659_0_16b;
wire  r14_w_local_sum_1a660_0_16b;
wire  r14_w_local_sum_1a661_0_16b;
wire  r15_w_local_sum_1a659_0_16b;
wire  r15_w_local_sum_1a660_0_16b;
wire  r15_w_local_sum_1a661_0_16b;
wire  r16_w_local_sum_1a659_0_16b;
wire  r16_w_local_sum_1a660_0_16b;
wire  r16_w_local_sum_1a661_0_16b;
wire  r17_w_local_sum_1a659_0_16b;
wire  r17_w_local_sum_1a660_0_16b;
wire  r17_w_local_sum_1a661_0_16b;
wire  r18_w_local_sum_1a659_0_16b;
wire  r18_w_local_sum_1a660_0_16b;
wire  r18_w_local_sum_1a661_0_16b;
wire  r19_w_local_sum_1a659_0_16b;
wire  r19_w_local_sum_1a660_0_16b;
wire  r19_w_local_sum_1a661_0_16b;
wire  r1_w_local_sum_1a659_0_16b;
wire  r1_w_local_sum_1a660_0_16b;
wire  r1_w_local_sum_1a661_0_16b;
wire  r20_w_local_sum_1a659_0_16b;
wire  r20_w_local_sum_1a660_0_16b;
wire  r20_w_local_sum_1a661_0_16b;
wire  r21_w_local_sum_1a659_0_16b;
wire  r21_w_local_sum_1a660_0_16b;
wire  r21_w_local_sum_1a661_0_16b;
wire  r22_w_local_sum_1a659_0_16b;
wire  r22_w_local_sum_1a660_0_16b;
wire  r22_w_local_sum_1a661_0_16b;
wire  r23_w_local_sum_1a659_0_16b;
wire  r23_w_local_sum_1a660_0_16b;
wire  r23_w_local_sum_1a661_0_16b;
wire  r24_w_local_sum_1a659_0_16b;
wire  r24_w_local_sum_1a660_0_16b;
wire  r24_w_local_sum_1a661_0_16b;
wire  r2_w_local_sum_1a659_0_16b;
wire  r2_w_local_sum_1a660_0_16b;
wire  r2_w_local_sum_1a661_0_16b;
wire  r3_w_local_sum_1a659_0_16b;
wire  r3_w_local_sum_1a660_0_16b;
wire  r3_w_local_sum_1a661_0_16b;
wire  r4_w_local_sum_1a659_0_16b;
wire  r4_w_local_sum_1a660_0_16b;
wire  r4_w_local_sum_1a661_0_16b;
wire  r5_w_local_sum_1a659_0_16b;
wire  r5_w_local_sum_1a660_0_16b;
wire  r5_w_local_sum_1a661_0_16b;
wire  r6_w_local_sum_1a659_0_16b;
wire  r6_w_local_sum_1a660_0_16b;
wire  r6_w_local_sum_1a661_0_16b;
wire  r7_w_local_sum_1a659_0_16b;
wire  r7_w_local_sum_1a660_0_16b;
wire  r7_w_local_sum_1a661_0_16b;
wire  r8_w_local_sum_1a659_0_16b;
wire  r8_w_local_sum_1a660_0_16b;
wire  r8_w_local_sum_1a661_0_16b;
wire  r9_w_local_sum_1a659_0_16b;
wire  r9_w_local_sum_1a660_0_16b;
wire  r9_w_local_sum_1a661_0_16b;
wire  w_1000_16b;
wire  w_1001_16b;
wire  w_1002_16b;
wire  w_1003_16b;
wire  w_1004_16b;
wire  w_1005_16b;
wire  w_1006_16b;
wire  w_1007_16b;
wire  w_1008_16b;
wire  w_1009_16b;
wire  w_1010_16b;
wire  w_1011_16b;
wire  w_1012_16b;
wire  w_1013_16b;
wire  w_1014_16b;
wire  w_1015_16b;
wire  w_1016_16b;
wire  w_1017_16b;
wire  w_1018_16b;
wire  w_1019_16b;
wire  w_1020_16b;
wire  w_1021_16b;
wire  w_1022_16b;
wire  w_1023_16b;
wire  w_1024_16b;
wire  w_1025_16b;
wire  w_1026_16b;
wire  w_1027_16b;
wire  w_1028_16b;
wire  w_1029_16b;
wire  w_1030_16b;
wire  w_1031_16b;
wire  w_1032_16b;
wire  w_1033_16b;
wire  w_1034_16b;
wire  w_1035_16b;
wire  w_1036_16b;
wire  w_1037_16b;
wire  w_1038_16b;
wire  w_1039_16b;
wire  w_1040_16b;
wire  w_1041_16b;
wire  w_1042_16b;
wire  w_1043_16b;
wire  w_1044_16b;
wire  w_1045_16b;
wire  w_1046_16b;
wire  w_1047_16b;
wire  w_1048_16b;
wire  w_1049_16b;
wire  w_1050_16b;
wire  w_1051_16b;
wire  w_1052_16b;
wire  w_1053_16b;
wire  w_1054_16b;
wire  w_1055_16b;
wire  w_1056_16b;
wire  w_1057_16b;
wire  w_1058_16b;
wire  w_1059_16b;
wire  w_1060_16b;
wire  w_1061_16b;
wire  w_1062_16b;
wire  w_1063_16b;
wire  w_1064_16b;
wire  w_1065_16b;
wire  w_1066_16b;
wire  w_1067_16b;
wire  w_1068_16b;
wire  w_1069_16b;
wire  w_1070_16b;
wire  w_1071_16b;
wire  w_1072_16b;
wire  w_1073_16b;
wire  w_1074_16b;
wire  w_1075_16b;
wire  w_1076_16b;
wire  w_1077_16b;
wire  w_1078_16b;
wire  w_1079_16b;
wire  w_1080_16b;
wire  w_1081_16b;
wire  w_1082_16b;
wire  w_1083_16b;
wire  w_1084_16b;
wire  w_1085_16b;
wire  w_1086_16b;
wire  w_1087_16b;
wire  w_1088_16b;
wire  w_1089_16b;
wire  w_1090_16b;
wire  w_1091_16b;
wire  w_1092_16b;
wire  w_1093_16b;
wire  w_1094_16b;
wire  w_1095_16b;
wire  w_1096_16b;
wire  w_1097_16b;
wire  w_1098_16b;
wire  w_1099_16b;
wire  w_1100_16b;
wire  w_1101_16b;
wire  w_1102_16b;
wire  w_1103_16b;
wire  w_1104_16b;
wire  w_1105_16b;
wire  w_1106_16b;
wire  w_1107_16b;
wire  w_1108_16b;
wire  w_1109_16b;
wire  w_1110_16b;
wire  w_1111_16b;
wire  w_1112_16b;
wire  w_1113_16b;
wire  w_1114_16b;
wire  w_1115_16b;
wire  w_1116_16b;
wire  w_1117_16b;
wire  w_1118_16b;
wire  w_1119_16b;
wire  w_1120_16b;
wire  w_1121_16b;
wire  w_1122_16b;
wire  w_1123_16b;
wire  w_1124_16b;
wire  w_1125_16b;
wire  w_1126_16b;
wire  w_1127_16b;
wire  w_1128_16b;
wire  w_1129_16b;
wire  w_1130_16b;
wire  w_1131_16b;
wire  w_1132_16b;
wire  w_1133_16b;
wire  w_1134_16b;
wire  w_1135_16b;
wire  w_1136_16b;
wire  w_1137_16b;
wire  w_1138_16b;
wire  w_1139_16b;
wire  w_1140_16b;
wire  w_1141_16b;
wire  w_1142_16b;
wire  w_1143_16b;
wire  w_1144_16b;
wire  w_1145_16b;
wire  w_1146_16b;
wire  w_1147_16b;
wire  w_1148_16b;
wire  w_1149_16b;
wire  w_1150_16b;
wire  w_1151_16b;
wire  w_1152_16b;
wire  w_1153_16b;
wire  w_1154_16b;
wire  w_1155_16b;
wire  w_1156_16b;
wire  w_1157_16b;
wire  w_1158_16b;
wire  w_1159_16b;
wire  w_1160_16b;
wire  w_1161_16b;
wire  w_1162_16b;
wire  w_1163_16b;
wire  w_1164_16b;
wire  w_1165_16b;
wire  w_1166_16b;
wire  w_1167_16b;
wire  w_1168_16b;
wire  w_1169_16b;
wire  w_1170_16b;
wire  w_1171_16b;
wire  w_1172_16b;
wire  w_1173_16b;
wire  w_1174_16b;
wire  w_1175_16b;
wire  w_1176_16b;
wire  w_1177_16b;
wire  w_1178_16b;
wire  w_1179_16b;
wire  w_1180_16b;
wire  w_1181_16b;
wire  w_1182_16b;
wire  w_1183_16b;
wire  w_1184_16b;
wire  w_1185_16b;
wire  w_1186_16b;
wire  w_1187_16b;
wire  w_1188_16b;
wire  w_1189_16b;
wire  w_1190_16b;
wire  w_1191_16b;
wire  w_1192_16b;
wire  w_1193_16b;
wire  w_1194_16b;
wire  w_1195_16b;
wire  w_1196_16b;
wire  w_1197_16b;
wire  w_1198_16b;
wire  w_1199_16b;
wire  w_1200_16b;
wire  w_1201_16b;
wire  w_1202_16b;
wire  w_1203_16b;
wire  w_1204_16b;
wire  w_1205_16b;
wire  w_1206_16b;
wire  w_1207_16b;
wire  w_1208_16b;
wire  w_1209_16b;
wire  w_1210_16b;
wire  w_1211_16b;
wire  w_1212_16b;
wire  w_1213_16b;
wire  w_1214_16b;
wire  w_1215_16b;
wire  w_1216_16b;
wire  w_1217_16b;
wire  w_1218_16b;
wire  w_1219_16b;
wire  w_1220_16b;
wire  w_1221_16b;
wire  w_1222_16b;
wire  w_1223_16b;
wire  w_1224_16b;
wire  w_1225_16b;
wire  w_1226_16b;
wire  w_1227_16b;
wire  w_1228_16b;
wire  w_1229_16b;
wire  w_1230_16b;
wire  w_1231_16b;
wire  w_1232_16b;
wire  w_1233_16b;
wire  w_1234_16b;
wire  w_1235_16b;
wire  w_1236_16b;
wire  w_1237_16b;
wire  w_1238_16b;
wire  w_1239_16b;
wire  w_1240_16b;
wire  w_1241_16b;
wire  w_1242_16b;
wire  w_1243_16b;
wire  w_1244_16b;
wire  w_1245_16b;
wire  w_1246_16b;
wire  w_1247_16b;
wire  w_1248_16b;
wire  w_1249_16b;
wire  w_1250_16b;
wire  w_1251_16b;
wire  w_1252_16b;
wire  w_1253_16b;
wire  w_1254_16b;
wire  w_1255_16b;
wire  w_1256_16b;
wire  w_1257_16b;
wire  w_1258_16b;
wire  w_1259_16b;
wire  w_1260_16b;
wire  w_1261_16b;
wire  w_1262_16b;
wire  w_1263_16b;
wire  w_1264_16b;
wire  w_1265_16b;
wire  w_1266_16b;
wire  w_1267_16b;
wire  w_1268_16b;
wire  w_1269_16b;
wire  w_1270_16b;
wire  w_1271_16b;
wire  w_1272_16b;
wire  w_1273_16b;
wire  w_1274_16b;
wire  w_1275_16b;
wire  w_1276_16b;
wire  w_1277_16b;
wire  w_1278_16b;
wire  w_1279_16b;
wire  w_1280_16b;
wire  w_1281_16b;
wire  w_1282_16b;
wire  w_1283_16b;
wire  w_1284_16b;
wire  w_1285_16b;
wire  w_1286_16b;
wire  w_1287_16b;
wire  w_1288_16b;
wire  w_1289_16b;
wire  w_1290_16b;
wire  w_1291_16b;
wire  w_1292_16b;
wire  w_1293_16b;
wire  w_1294_16b;
wire  w_1295_16b;
wire  w_1296_16b;
wire  w_1297_16b;
wire  w_1298_16b;
wire  w_1299_16b;
wire  w_1300_16b;
wire  w_1301_16b;
wire  w_1302_16b;
wire  w_1303_16b;
wire  w_1304_16b;
wire  w_1305_16b;
wire  w_1306_16b;
wire  w_1307_16b;
wire  w_1308_16b;
wire  w_1309_16b;
wire  w_1310_16b;
wire  w_1311_16b;
wire  w_1312_16b;
wire  w_1313_16b;
wire  w_1314_16b;
wire  w_1315_16b;
wire  w_1316_16b;
wire  w_1317_16b;
wire  w_1318_16b;
wire  w_1319_16b;
wire  w_1320_16b;
wire  w_1321_16b;
wire  w_1322_16b;
wire  w_1323_16b;
wire  w_1324_16b;
wire  w_1325_16b;
wire  w_1326_16b;
wire  w_1327_16b;
wire  w_1328_16b;
wire  w_1329_16b;
wire  w_1330_16b;
wire  w_1331_16b;
wire  w_1332_16b;
wire  w_1333_16b;
wire  w_1334_16b;
wire  w_1335_16b;
wire  w_1336_16b;
wire  w_1337_16b;
wire  w_1338_16b;
wire  w_1339_16b;
wire  w_1340_16b;
wire  w_1341_16b;
wire  w_1342_16b;
wire  w_1343_16b;
wire  w_1344_16b;
wire  w_1345_16b;
wire  w_1346_16b;
wire  w_1347_16b;
wire  w_1348_16b;
wire  w_1349_16b;
wire  w_1350_16b;
wire  w_1351_16b;
wire  w_1352_16b;
wire  w_1353_16b;
wire  w_1354_16b;
wire  w_1355_16b;
wire  w_1356_16b;
wire  w_1357_16b;
wire  w_1358_16b;
wire  w_1359_16b;
wire  w_1360_16b;
wire  w_1361_16b;
wire  w_1362_16b;
wire  w_1363_16b;
wire  w_1364_16b;
wire  w_1365_16b;
wire  w_1366_16b;
wire  w_1367_16b;
wire  w_1368_16b;
wire  w_1369_16b;
wire  w_1370_16b;
wire  w_1371_16b;
wire  w_1372_16b;
wire  w_1373_16b;
wire  w_1374_16b;
wire  w_1375_16b;
wire  w_1376_16b;
wire  w_1377_16b;
wire  w_1378_16b;
wire  w_1379_16b;
wire  w_1380_16b;
wire  w_1381_16b;
wire  w_1382_16b;
wire  w_1383_16b;
wire  w_1384_16b;
wire  w_1385_16b;
wire  w_1386_16b;
wire  w_1387_16b;
wire  w_1388_16b;
wire  w_1389_16b;
wire  w_1390_16b;
wire  w_1391_16b;
wire  w_1392_16b;
wire  w_1393_16b;
wire  w_1394_16b;
wire  w_1395_16b;
wire  w_1396_16b;
wire  w_1397_16b;
wire  w_1398_16b;
wire  w_1399_16b;
wire  w_1400_16b;
wire  w_1401_16b;
wire  w_1402_16b;
wire  w_1403_16b;
wire  w_1404_16b;
wire  w_1405_16b;
wire  w_1406_16b;
wire  w_1407_16b;
wire  w_1408_16b;
wire  w_1409_16b;
wire  w_1410_16b;
wire  w_1411_16b;
wire  w_1412_16b;
wire  w_1413_16b;
wire  w_1414_16b;
wire  w_1415_16b;
wire  w_1416_16b;
wire  w_1417_16b;
wire  w_1418_16b;
wire  w_1419_16b;
wire  w_1420_16b;
wire  w_1421_16b;
wire  w_1422_16b;
wire  w_1423_16b;
wire  w_1424_16b;
wire  w_1425_16b;
wire  w_1426_16b;
wire  w_1427_16b;
wire  w_1428_16b;
wire  w_1429_16b;
wire  w_1430_16b;
wire  w_1431_16b;
wire  w_1432_16b;
wire  w_1433_16b;
wire  w_1434_16b;
wire  w_1435_16b;
wire  w_1436_16b;
wire  w_1437_16b;
wire  w_1438_16b;
wire  w_1439_16b;
wire  w_1440_16b;
wire  w_1441_16b;
wire  w_1442_16b;
wire  w_1443_16b;
wire  w_1444_16b;
wire  w_986_16b;
wire  w_987_16b;
wire  w_988_16b;
wire  w_989_16b;
wire  w_990_16b;
wire  w_991_16b;
wire  w_992_16b;
wire  w_993_16b;
wire  w_994_16b;
wire  w_995_16b;
wire  w_996_16b;
wire  w_997_16b;
wire  w_998_16b;
wire  w_999_16b;
wire  w_f1_stencil_0_0_0_8b;
wire  w_f1_stencil_0_0_1_8b;
wire  w_f1_stencil_0_0_2_8b;
wire  w_f1_stencil_packed_16b;
wire  w_local_sum_1a659_0_16b;
wire  w_local_sum_1a660_0_16b;
wire  w_local_sum_1a661_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_f1_stencil_packed_16b = w_f1_stencil_packed_16b;
assign out_w_f1_stencil_0_0_2_8b = w_f1_stencil_0_0_2_8b;
assign out_w_f1_stencil_0_0_1_8b = w_f1_stencil_0_0_1_8b;
assign  r0_w_local_sum_1a659_0_16b  =  w_991_16b ;
assign  r0_w_local_sum_1a660_0_16b  =  w_1144_16b ;
assign  r0_w_local_sum_1a661_0_16b  =  w_1297_16b ;
assign  r10_w_local_sum_1a659_0_16b  =  w_1051_16b ;
assign  r10_w_local_sum_1a660_0_16b  =  w_1204_16b ;
assign  r10_w_local_sum_1a661_0_16b  =  w_1357_16b ;
assign  r11_w_local_sum_1a659_0_16b  =  w_1057_16b ;
assign  r11_w_local_sum_1a660_0_16b  =  w_1210_16b ;
assign  r11_w_local_sum_1a661_0_16b  =  w_1363_16b ;
assign  r12_w_local_sum_1a659_0_16b  =  w_1063_16b ;
assign  r12_w_local_sum_1a660_0_16b  =  w_1216_16b ;
assign  r12_w_local_sum_1a661_0_16b  =  w_1369_16b ;
assign  r13_w_local_sum_1a659_0_16b  =  w_1069_16b ;
assign  r13_w_local_sum_1a660_0_16b  =  w_1222_16b ;
assign  r13_w_local_sum_1a661_0_16b  =  w_1375_16b ;
assign  r14_w_local_sum_1a659_0_16b  =  w_1075_16b ;
assign  r14_w_local_sum_1a660_0_16b  =  w_1228_16b ;
assign  r14_w_local_sum_1a661_0_16b  =  w_1381_16b ;
assign  r15_w_local_sum_1a659_0_16b  =  w_1081_16b ;
assign  r15_w_local_sum_1a660_0_16b  =  w_1234_16b ;
assign  r15_w_local_sum_1a661_0_16b  =  w_1387_16b ;
assign  r16_w_local_sum_1a659_0_16b  =  w_1087_16b ;
assign  r16_w_local_sum_1a660_0_16b  =  w_1240_16b ;
assign  r16_w_local_sum_1a661_0_16b  =  w_1393_16b ;
assign  r17_w_local_sum_1a659_0_16b  =  w_1093_16b ;
assign  r17_w_local_sum_1a660_0_16b  =  w_1246_16b ;
assign  r17_w_local_sum_1a661_0_16b  =  w_1399_16b ;
assign  r18_w_local_sum_1a659_0_16b  =  w_1099_16b ;
assign  r18_w_local_sum_1a660_0_16b  =  w_1252_16b ;
assign  r18_w_local_sum_1a661_0_16b  =  w_1405_16b ;
assign  r19_w_local_sum_1a659_0_16b  =  w_1105_16b ;
assign  r19_w_local_sum_1a660_0_16b  =  w_1258_16b ;
assign  r19_w_local_sum_1a661_0_16b  =  w_1411_16b ;
assign  r1_w_local_sum_1a659_0_16b  =  w_997_16b ;
assign  r1_w_local_sum_1a660_0_16b  =  w_1150_16b ;
assign  r1_w_local_sum_1a661_0_16b  =  w_1303_16b ;
assign  r20_w_local_sum_1a659_0_16b  =  w_1111_16b ;
assign  r20_w_local_sum_1a660_0_16b  =  w_1264_16b ;
assign  r20_w_local_sum_1a661_0_16b  =  w_1417_16b ;
assign  r21_w_local_sum_1a659_0_16b  =  w_1117_16b ;
assign  r21_w_local_sum_1a660_0_16b  =  w_1270_16b ;
assign  r21_w_local_sum_1a661_0_16b  =  w_1423_16b ;
assign  r22_w_local_sum_1a659_0_16b  =  w_1123_16b ;
assign  r22_w_local_sum_1a660_0_16b  =  w_1276_16b ;
assign  r22_w_local_sum_1a661_0_16b  =  w_1429_16b ;
assign  r23_w_local_sum_1a659_0_16b  =  w_1129_16b ;
assign  r23_w_local_sum_1a660_0_16b  =  w_1282_16b ;
assign  r23_w_local_sum_1a661_0_16b  =  w_1435_16b ;
assign  r24_w_local_sum_1a659_0_16b  =  w_1135_16b ;
assign  r24_w_local_sum_1a660_0_16b  =  w_1288_16b ;
assign  r24_w_local_sum_1a661_0_16b  =  w_1441_16b ;
assign  r2_w_local_sum_1a659_0_16b  =  w_1003_16b ;
assign  r2_w_local_sum_1a660_0_16b  =  w_1156_16b ;
assign  r2_w_local_sum_1a661_0_16b  =  w_1309_16b ;
assign  r3_w_local_sum_1a659_0_16b  =  w_1009_16b ;
assign  r3_w_local_sum_1a660_0_16b  =  w_1162_16b ;
assign  r3_w_local_sum_1a661_0_16b  =  w_1315_16b ;
assign  r4_w_local_sum_1a659_0_16b  =  w_1015_16b ;
assign  r4_w_local_sum_1a660_0_16b  =  w_1168_16b ;
assign  r4_w_local_sum_1a661_0_16b  =  w_1321_16b ;
assign  r5_w_local_sum_1a659_0_16b  =  w_1021_16b ;
assign  r5_w_local_sum_1a660_0_16b  =  w_1174_16b ;
assign  r5_w_local_sum_1a661_0_16b  =  w_1327_16b ;
assign  r6_w_local_sum_1a659_0_16b  =  w_1027_16b ;
assign  r6_w_local_sum_1a660_0_16b  =  w_1180_16b ;
assign  r6_w_local_sum_1a661_0_16b  =  w_1333_16b ;
assign  r7_w_local_sum_1a659_0_16b  =  w_1033_16b ;
assign  r7_w_local_sum_1a660_0_16b  =  w_1186_16b ;
assign  r7_w_local_sum_1a661_0_16b  =  w_1339_16b ;
assign  r8_w_local_sum_1a659_0_16b  =  w_1039_16b ;
assign  r8_w_local_sum_1a660_0_16b  =  w_1192_16b ;
assign  r8_w_local_sum_1a661_0_16b  =  w_1345_16b ;
assign  r9_w_local_sum_1a659_0_16b  =  w_1045_16b ;
assign  r9_w_local_sum_1a660_0_16b  =  w_1198_16b ;
assign  r9_w_local_sum_1a661_0_16b  =  w_1351_16b ;
assign  w_1000_16b  =  w_weight_tap_stencil_2_0_8b ;
assign  w_1001_16b  =  w_1000_16b ;
MULT_16b_pe mult_0 (
  .a(w_999_16b),
  .b(w_1001_16b),
  .c(w_1002_16b),
  .clk(clk)
);
ADD_16b_pe add_1 (
  .a(w_998_16b),
  .b(w_1002_16b),
  .c(w_1003_16b),
  .clk(clk)
);
assign  w_1004_16b  =  r2_w_local_sum_1a659_0_16b ;
assign  w_1005_16b  =  w_conv1_1_stencil_3_0_0_16b ;
assign  w_1006_16b  =  w_weight_tap_stencil_3_0_8b ;
assign  w_1007_16b  =  w_1006_16b ;
MULT_16b_pe mult_2 (
  .a(w_1007_16b),
  .b(w_1005_16b),
  .c(w_1008_16b),
  .clk(clk)
);
ADD_16b_pe add_3 (
  .a(w_1008_16b),
  .b(w_1004_16b),
  .c(w_1009_16b),
  .clk(clk)
);
assign  w_1010_16b  =  r3_w_local_sum_1a659_0_16b ;
assign  w_1011_16b  =  w_conv1_1_stencil_4_0_0_16b ;
assign  w_1012_16b  =  w_weight_tap_stencil_4_0_8b ;
assign  w_1013_16b  =  w_1012_16b ;
MULT_16b_pe mult_4 (
  .a(w_1011_16b),
  .b(w_1013_16b),
  .c(w_1014_16b),
  .clk(clk)
);
ADD_16b_pe add_5 (
  .a(w_1014_16b),
  .b(w_1010_16b),
  .c(w_1015_16b),
  .clk(clk)
);
assign  w_1016_16b  =  r4_w_local_sum_1a659_0_16b ;
assign  w_1017_16b  =  w_conv1_1_stencil_0_1_0_16b ;
assign  w_1018_16b  =  w_weight_tap_stencil_0_1_8b ;
assign  w_1019_16b  =  w_1018_16b ;
MULT_16b_pe mult_6 (
  .a(w_1017_16b),
  .b(w_1019_16b),
  .c(w_1020_16b),
  .clk(clk)
);
ADD_16b_pe add_7 (
  .a(w_1020_16b),
  .b(w_1016_16b),
  .c(w_1021_16b),
  .clk(clk)
);
assign  w_1022_16b  =  r5_w_local_sum_1a659_0_16b ;
assign  w_1023_16b  =  w_conv1_1_stencil_1_1_0_16b ;
assign  w_1024_16b  =  w_weight_tap_stencil_1_1_8b ;
assign  w_1025_16b  =  w_1024_16b ;
MULT_16b_pe mult_8 (
  .a(w_1023_16b),
  .b(w_1025_16b),
  .c(w_1026_16b),
  .clk(clk)
);
ADD_16b_pe add_9 (
  .a(w_1022_16b),
  .b(w_1026_16b),
  .c(w_1027_16b),
  .clk(clk)
);
assign  w_1028_16b  =  r6_w_local_sum_1a659_0_16b ;
assign  w_1029_16b  =  w_conv1_1_stencil_2_1_0_16b ;
assign  w_1030_16b  =  w_weight_tap_stencil_2_1_8b ;
assign  w_1031_16b  =  w_1030_16b ;
MULT_16b_pe mult_10 (
  .a(w_1029_16b),
  .b(w_1031_16b),
  .c(w_1032_16b),
  .clk(clk)
);
ADD_16b_pe add_11 (
  .a(w_1032_16b),
  .b(w_1028_16b),
  .c(w_1033_16b),
  .clk(clk)
);
assign  w_1034_16b  =  r7_w_local_sum_1a659_0_16b ;
assign  w_1035_16b  =  w_conv1_1_stencil_3_1_0_16b ;
assign  w_1036_16b  =  w_weight_tap_stencil_3_1_8b ;
assign  w_1037_16b  =  w_1036_16b ;
MULT_16b_pe mult_12 (
  .a(w_1037_16b),
  .b(w_1035_16b),
  .c(w_1038_16b),
  .clk(clk)
);
ADD_16b_pe add_13 (
  .a(w_1038_16b),
  .b(w_1034_16b),
  .c(w_1039_16b),
  .clk(clk)
);
assign  w_1040_16b  =  r8_w_local_sum_1a659_0_16b ;
assign  w_1041_16b  =  w_conv1_1_stencil_4_1_0_16b ;
assign  w_1042_16b  =  w_weight_tap_stencil_4_1_8b ;
assign  w_1043_16b  =  w_1042_16b ;
MULT_16b_pe mult_14 (
  .a(w_1043_16b),
  .b(w_1041_16b),
  .c(w_1044_16b),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_1044_16b),
  .b(w_1040_16b),
  .c(w_1045_16b),
  .clk(clk)
);
assign  w_1046_16b  =  r9_w_local_sum_1a659_0_16b ;
assign  w_1047_16b  =  w_conv1_1_stencil_0_2_0_16b ;
assign  w_1048_16b  =  w_weight_tap_stencil_0_2_8b ;
assign  w_1049_16b  =  w_1048_16b ;
MULT_16b_pe mult_16 (
  .a(w_1047_16b),
  .b(w_1049_16b),
  .c(w_1050_16b),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_1050_16b),
  .b(w_1046_16b),
  .c(w_1051_16b),
  .clk(clk)
);
assign  w_1052_16b  =  r10_w_local_sum_1a659_0_16b ;
assign  w_1053_16b  =  w_conv1_1_stencil_1_2_0_16b ;
assign  w_1054_16b  =  w_weight_tap_stencil_1_2_8b ;
assign  w_1055_16b  =  w_1054_16b ;
MULT_16b_pe mult_18 (
  .a(w_1053_16b),
  .b(w_1055_16b),
  .c(w_1056_16b),
  .clk(clk)
);
ADD_16b_pe add_19 (
  .a(w_1052_16b),
  .b(w_1056_16b),
  .c(w_1057_16b),
  .clk(clk)
);
assign  w_1058_16b  =  r11_w_local_sum_1a659_0_16b ;
assign  w_1059_16b  =  w_conv1_1_stencil_2_2_0_16b ;
assign  w_1060_16b  =  w_weight_tap_stencil_2_2_8b ;
assign  w_1061_16b  =  w_1060_16b ;
MULT_16b_pe mult_20 (
  .a(w_1059_16b),
  .b(w_1061_16b),
  .c(w_1062_16b),
  .clk(clk)
);
ADD_16b_pe add_21 (
  .a(w_1058_16b),
  .b(w_1062_16b),
  .c(w_1063_16b),
  .clk(clk)
);
assign  w_1064_16b  =  r12_w_local_sum_1a659_0_16b ;
assign  w_1065_16b  =  w_conv1_1_stencil_3_2_0_16b ;
assign  w_1066_16b  =  w_weight_tap_stencil_3_2_8b ;
assign  w_1067_16b  =  w_1066_16b ;
MULT_16b_pe mult_22 (
  .a(w_1065_16b),
  .b(w_1067_16b),
  .c(w_1068_16b),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_1064_16b),
  .b(w_1068_16b),
  .c(w_1069_16b),
  .clk(clk)
);
assign  w_1070_16b  =  r13_w_local_sum_1a659_0_16b ;
assign  w_1071_16b  =  w_conv1_1_stencil_4_2_0_16b ;
assign  w_1072_16b  =  w_weight_tap_stencil_4_2_8b ;
assign  w_1073_16b  =  w_1072_16b ;
MULT_16b_pe mult_24 (
  .a(w_1073_16b),
  .b(w_1071_16b),
  .c(w_1074_16b),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_1074_16b),
  .b(w_1070_16b),
  .c(w_1075_16b),
  .clk(clk)
);
assign  w_1076_16b  =  r14_w_local_sum_1a659_0_16b ;
assign  w_1077_16b  =  w_conv1_1_stencil_0_3_0_16b ;
assign  w_1078_16b  =  w_weight_tap_stencil_0_3_8b ;
assign  w_1079_16b  =  w_1078_16b ;
MULT_16b_pe mult_26 (
  .a(w_1077_16b),
  .b(w_1079_16b),
  .c(w_1080_16b),
  .clk(clk)
);
ADD_16b_pe add_27 (
  .a(w_1076_16b),
  .b(w_1080_16b),
  .c(w_1081_16b),
  .clk(clk)
);
assign  w_1082_16b  =  r15_w_local_sum_1a659_0_16b ;
assign  w_1083_16b  =  w_conv1_1_stencil_1_3_0_16b ;
assign  w_1084_16b  =  w_weight_tap_stencil_1_3_8b ;
assign  w_1085_16b  =  w_1084_16b ;
MULT_16b_pe mult_28 (
  .a(w_1083_16b),
  .b(w_1085_16b),
  .c(w_1086_16b),
  .clk(clk)
);
ADD_16b_pe add_29 (
  .a(w_1082_16b),
  .b(w_1086_16b),
  .c(w_1087_16b),
  .clk(clk)
);
assign  w_1088_16b  =  r16_w_local_sum_1a659_0_16b ;
assign  w_1089_16b  =  w_conv1_1_stencil_2_3_0_16b ;
assign  w_1090_16b  =  w_weight_tap_stencil_2_3_8b ;
assign  w_1091_16b  =  w_1090_16b ;
MULT_16b_pe mult_30 (
  .a(w_1089_16b),
  .b(w_1091_16b),
  .c(w_1092_16b),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_1088_16b),
  .b(w_1092_16b),
  .c(w_1093_16b),
  .clk(clk)
);
assign  w_1094_16b  =  r17_w_local_sum_1a659_0_16b ;
assign  w_1095_16b  =  w_conv1_1_stencil_3_3_0_16b ;
assign  w_1096_16b  =  w_weight_tap_stencil_3_3_8b ;
assign  w_1097_16b  =  w_1096_16b ;
MULT_16b_pe mult_32 (
  .a(w_1095_16b),
  .b(w_1097_16b),
  .c(w_1098_16b),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_1094_16b),
  .b(w_1098_16b),
  .c(w_1099_16b),
  .clk(clk)
);
assign  w_1100_16b  =  r18_w_local_sum_1a659_0_16b ;
assign  w_1101_16b  =  w_conv1_1_stencil_4_3_0_16b ;
assign  w_1102_16b  =  w_weight_tap_stencil_4_3_8b ;
assign  w_1103_16b  =  w_1102_16b ;
MULT_16b_pe mult_34 (
  .a(w_1103_16b),
  .b(w_1101_16b),
  .c(w_1104_16b),
  .clk(clk)
);
ADD_16b_pe add_35 (
  .a(w_1100_16b),
  .b(w_1104_16b),
  .c(w_1105_16b),
  .clk(clk)
);
assign  w_1106_16b  =  r19_w_local_sum_1a659_0_16b ;
assign  w_1107_16b  =  w_conv1_1_stencil_0_4_0_16b ;
assign  w_1108_16b  =  w_weight_tap_stencil_0_4_8b ;
assign  w_1109_16b  =  w_1108_16b ;
MULT_16b_pe mult_36 (
  .a(w_1109_16b),
  .b(w_1107_16b),
  .c(w_1110_16b),
  .clk(clk)
);
ADD_16b_pe add_37 (
  .a(w_1110_16b),
  .b(w_1106_16b),
  .c(w_1111_16b),
  .clk(clk)
);
assign  w_1112_16b  =  r20_w_local_sum_1a659_0_16b ;
assign  w_1113_16b  =  w_conv1_1_stencil_1_4_0_16b ;
assign  w_1114_16b  =  w_weight_tap_stencil_1_4_8b ;
assign  w_1115_16b  =  w_1114_16b ;
MULT_16b_pe mult_38 (
  .a(w_1113_16b),
  .b(w_1115_16b),
  .c(w_1116_16b),
  .clk(clk)
);
ADD_16b_pe add_39 (
  .a(w_1112_16b),
  .b(w_1116_16b),
  .c(w_1117_16b),
  .clk(clk)
);
assign  w_1118_16b  =  r21_w_local_sum_1a659_0_16b ;
assign  w_1119_16b  =  w_conv1_1_stencil_2_4_0_16b ;
assign  w_1120_16b  =  w_weight_tap_stencil_2_4_8b ;
assign  w_1121_16b  =  w_1120_16b ;
MULT_16b_pe mult_40 (
  .a(w_1119_16b),
  .b(w_1121_16b),
  .c(w_1122_16b),
  .clk(clk)
);
ADD_16b_pe add_41 (
  .a(w_1118_16b),
  .b(w_1122_16b),
  .c(w_1123_16b),
  .clk(clk)
);
assign  w_1124_16b  =  r22_w_local_sum_1a659_0_16b ;
assign  w_1125_16b  =  w_conv1_1_stencil_3_4_0_16b ;
assign  w_1126_16b  =  w_weight_tap_stencil_3_4_8b ;
assign  w_1127_16b  =  w_1126_16b ;
MULT_16b_pe mult_42 (
  .a(w_1125_16b),
  .b(w_1127_16b),
  .c(w_1128_16b),
  .clk(clk)
);
ADD_16b_pe add_43 (
  .a(w_1124_16b),
  .b(w_1128_16b),
  .c(w_1129_16b),
  .clk(clk)
);
assign  w_1130_16b  =  r23_w_local_sum_1a659_0_16b ;
assign  w_1131_16b  =  w_conv1_1_stencil_4_4_0_16b ;
assign  w_1132_16b  =  w_weight_tap_stencil_4_4_8b ;
assign  w_1133_16b  =  w_1132_16b ;
MULT_16b_pe mult_44 (
  .a(w_1133_16b),
  .b(w_1131_16b),
  .c(w_1134_16b),
  .clk(clk)
);
ADD_16b_pe add_45 (
  .a(w_1130_16b),
  .b(w_1134_16b),
  .c(w_1135_16b),
  .clk(clk)
);
assign  w_1136_16b  =  r24_w_local_sum_1a659_0_16b ;
LSHIFT_16b_pe lshift_46 (
  .a(1'b0),
  .b(w_1136_16b),
  .c(w_1137_16b),
  .clk(clk)
);
assign  w_1138_16b  =  w_1137_16b ;
assign  w_1139_16b  =  w_local_sum_1a660_0_16b ;
assign  w_1140_16b  =  w_conv1_1_stencil_0_0_1_16b ;
assign  w_1141_16b  =  w_weight_tap_stencil_0_0_8b ;
assign  w_1142_16b  =  w_1141_16b ;
MULT_16b_pe mult_47 (
  .a(w_1142_16b),
  .b(w_1140_16b),
  .c(w_1143_16b),
  .clk(clk)
);
ADD_16b_pe add_48 (
  .a(w_1139_16b),
  .b(w_1143_16b),
  .c(w_1144_16b),
  .clk(clk)
);
assign  w_1145_16b  =  r0_w_local_sum_1a660_0_16b ;
assign  w_1146_16b  =  w_conv1_1_stencil_1_0_1_16b ;
assign  w_1147_16b  =  w_weight_tap_stencil_1_0_8b ;
assign  w_1148_16b  =  w_1147_16b ;
MULT_16b_pe mult_49 (
  .a(w_1146_16b),
  .b(w_1148_16b),
  .c(w_1149_16b),
  .clk(clk)
);
ADD_16b_pe add_50 (
  .a(w_1145_16b),
  .b(w_1149_16b),
  .c(w_1150_16b),
  .clk(clk)
);
assign  w_1151_16b  =  r1_w_local_sum_1a660_0_16b ;
assign  w_1152_16b  =  w_conv1_1_stencil_2_0_1_16b ;
assign  w_1153_16b  =  w_weight_tap_stencil_2_0_8b ;
assign  w_1154_16b  =  w_1153_16b ;
MULT_16b_pe mult_51 (
  .a(w_1154_16b),
  .b(w_1152_16b),
  .c(w_1155_16b),
  .clk(clk)
);
ADD_16b_pe add_52 (
  .a(w_1155_16b),
  .b(w_1151_16b),
  .c(w_1156_16b),
  .clk(clk)
);
assign  w_1157_16b  =  r2_w_local_sum_1a660_0_16b ;
assign  w_1158_16b  =  w_conv1_1_stencil_3_0_1_16b ;
assign  w_1159_16b  =  w_weight_tap_stencil_3_0_8b ;
assign  w_1160_16b  =  w_1159_16b ;
MULT_16b_pe mult_53 (
  .a(w_1160_16b),
  .b(w_1158_16b),
  .c(w_1161_16b),
  .clk(clk)
);
ADD_16b_pe add_54 (
  .a(w_1161_16b),
  .b(w_1157_16b),
  .c(w_1162_16b),
  .clk(clk)
);
assign  w_1163_16b  =  r3_w_local_sum_1a660_0_16b ;
assign  w_1164_16b  =  w_conv1_1_stencil_4_0_1_16b ;
assign  w_1165_16b  =  w_weight_tap_stencil_4_0_8b ;
assign  w_1166_16b  =  w_1165_16b ;
MULT_16b_pe mult_55 (
  .a(w_1164_16b),
  .b(w_1166_16b),
  .c(w_1167_16b),
  .clk(clk)
);
ADD_16b_pe add_56 (
  .a(w_1163_16b),
  .b(w_1167_16b),
  .c(w_1168_16b),
  .clk(clk)
);
assign  w_1169_16b  =  r4_w_local_sum_1a660_0_16b ;
assign  w_1170_16b  =  w_conv1_1_stencil_0_1_1_16b ;
assign  w_1171_16b  =  w_weight_tap_stencil_0_1_8b ;
assign  w_1172_16b  =  w_1171_16b ;
MULT_16b_pe mult_57 (
  .a(w_1172_16b),
  .b(w_1170_16b),
  .c(w_1173_16b),
  .clk(clk)
);
ADD_16b_pe add_58 (
  .a(w_1169_16b),
  .b(w_1173_16b),
  .c(w_1174_16b),
  .clk(clk)
);
assign  w_1175_16b  =  r5_w_local_sum_1a660_0_16b ;
assign  w_1176_16b  =  w_conv1_1_stencil_1_1_1_16b ;
assign  w_1177_16b  =  w_weight_tap_stencil_1_1_8b ;
assign  w_1178_16b  =  w_1177_16b ;
MULT_16b_pe mult_59 (
  .a(w_1176_16b),
  .b(w_1178_16b),
  .c(w_1179_16b),
  .clk(clk)
);
ADD_16b_pe add_60 (
  .a(w_1175_16b),
  .b(w_1179_16b),
  .c(w_1180_16b),
  .clk(clk)
);
assign  w_1181_16b  =  r6_w_local_sum_1a660_0_16b ;
assign  w_1182_16b  =  w_conv1_1_stencil_2_1_1_16b ;
assign  w_1183_16b  =  w_weight_tap_stencil_2_1_8b ;
assign  w_1184_16b  =  w_1183_16b ;
MULT_16b_pe mult_61 (
  .a(w_1182_16b),
  .b(w_1184_16b),
  .c(w_1185_16b),
  .clk(clk)
);
ADD_16b_pe add_62 (
  .a(w_1181_16b),
  .b(w_1185_16b),
  .c(w_1186_16b),
  .clk(clk)
);
assign  w_1187_16b  =  r7_w_local_sum_1a660_0_16b ;
assign  w_1188_16b  =  w_conv1_1_stencil_3_1_1_16b ;
assign  w_1189_16b  =  w_weight_tap_stencil_3_1_8b ;
assign  w_1190_16b  =  w_1189_16b ;
MULT_16b_pe mult_63 (
  .a(w_1190_16b),
  .b(w_1188_16b),
  .c(w_1191_16b),
  .clk(clk)
);
ADD_16b_pe add_64 (
  .a(w_1191_16b),
  .b(w_1187_16b),
  .c(w_1192_16b),
  .clk(clk)
);
assign  w_1193_16b  =  r8_w_local_sum_1a660_0_16b ;
assign  w_1194_16b  =  w_conv1_1_stencil_4_1_1_16b ;
assign  w_1195_16b  =  w_weight_tap_stencil_4_1_8b ;
assign  w_1196_16b  =  w_1195_16b ;
MULT_16b_pe mult_65 (
  .a(w_1194_16b),
  .b(w_1196_16b),
  .c(w_1197_16b),
  .clk(clk)
);
ADD_16b_pe add_66 (
  .a(w_1193_16b),
  .b(w_1197_16b),
  .c(w_1198_16b),
  .clk(clk)
);
assign  w_1199_16b  =  r9_w_local_sum_1a660_0_16b ;
assign  w_1200_16b  =  w_conv1_1_stencil_0_2_1_16b ;
assign  w_1201_16b  =  w_weight_tap_stencil_0_2_8b ;
assign  w_1202_16b  =  w_1201_16b ;
MULT_16b_pe mult_67 (
  .a(w_1200_16b),
  .b(w_1202_16b),
  .c(w_1203_16b),
  .clk(clk)
);
ADD_16b_pe add_68 (
  .a(w_1199_16b),
  .b(w_1203_16b),
  .c(w_1204_16b),
  .clk(clk)
);
assign  w_1205_16b  =  r10_w_local_sum_1a660_0_16b ;
assign  w_1206_16b  =  w_conv1_1_stencil_1_2_1_16b ;
assign  w_1207_16b  =  w_weight_tap_stencil_1_2_8b ;
assign  w_1208_16b  =  w_1207_16b ;
MULT_16b_pe mult_69 (
  .a(w_1208_16b),
  .b(w_1206_16b),
  .c(w_1209_16b),
  .clk(clk)
);
ADD_16b_pe add_70 (
  .a(w_1209_16b),
  .b(w_1205_16b),
  .c(w_1210_16b),
  .clk(clk)
);
assign  w_1211_16b  =  r11_w_local_sum_1a660_0_16b ;
assign  w_1212_16b  =  w_conv1_1_stencil_2_2_1_16b ;
assign  w_1213_16b  =  w_weight_tap_stencil_2_2_8b ;
assign  w_1214_16b  =  w_1213_16b ;
MULT_16b_pe mult_71 (
  .a(w_1212_16b),
  .b(w_1214_16b),
  .c(w_1215_16b),
  .clk(clk)
);
ADD_16b_pe add_72 (
  .a(w_1211_16b),
  .b(w_1215_16b),
  .c(w_1216_16b),
  .clk(clk)
);
assign  w_1217_16b  =  r12_w_local_sum_1a660_0_16b ;
assign  w_1218_16b  =  w_conv1_1_stencil_3_2_1_16b ;
assign  w_1219_16b  =  w_weight_tap_stencil_3_2_8b ;
assign  w_1220_16b  =  w_1219_16b ;
MULT_16b_pe mult_73 (
  .a(w_1218_16b),
  .b(w_1220_16b),
  .c(w_1221_16b),
  .clk(clk)
);
ADD_16b_pe add_74 (
  .a(w_1221_16b),
  .b(w_1217_16b),
  .c(w_1222_16b),
  .clk(clk)
);
assign  w_1223_16b  =  r13_w_local_sum_1a660_0_16b ;
assign  w_1224_16b  =  w_conv1_1_stencil_4_2_1_16b ;
assign  w_1225_16b  =  w_weight_tap_stencil_4_2_8b ;
assign  w_1226_16b  =  w_1225_16b ;
MULT_16b_pe mult_75 (
  .a(w_1226_16b),
  .b(w_1224_16b),
  .c(w_1227_16b),
  .clk(clk)
);
ADD_16b_pe add_76 (
  .a(w_1223_16b),
  .b(w_1227_16b),
  .c(w_1228_16b),
  .clk(clk)
);
assign  w_1229_16b  =  r14_w_local_sum_1a660_0_16b ;
assign  w_1230_16b  =  w_conv1_1_stencil_0_3_1_16b ;
assign  w_1231_16b  =  w_weight_tap_stencil_0_3_8b ;
assign  w_1232_16b  =  w_1231_16b ;
MULT_16b_pe mult_77 (
  .a(w_1230_16b),
  .b(w_1232_16b),
  .c(w_1233_16b),
  .clk(clk)
);
ADD_16b_pe add_78 (
  .a(w_1229_16b),
  .b(w_1233_16b),
  .c(w_1234_16b),
  .clk(clk)
);
assign  w_1235_16b  =  r15_w_local_sum_1a660_0_16b ;
assign  w_1236_16b  =  w_conv1_1_stencil_1_3_1_16b ;
assign  w_1237_16b  =  w_weight_tap_stencil_1_3_8b ;
assign  w_1238_16b  =  w_1237_16b ;
MULT_16b_pe mult_79 (
  .a(w_1236_16b),
  .b(w_1238_16b),
  .c(w_1239_16b),
  .clk(clk)
);
ADD_16b_pe add_80 (
  .a(w_1235_16b),
  .b(w_1239_16b),
  .c(w_1240_16b),
  .clk(clk)
);
assign  w_1241_16b  =  r16_w_local_sum_1a660_0_16b ;
assign  w_1242_16b  =  w_conv1_1_stencil_2_3_1_16b ;
assign  w_1243_16b  =  w_weight_tap_stencil_2_3_8b ;
assign  w_1244_16b  =  w_1243_16b ;
MULT_16b_pe mult_81 (
  .a(w_1244_16b),
  .b(w_1242_16b),
  .c(w_1245_16b),
  .clk(clk)
);
ADD_16b_pe add_82 (
  .a(w_1245_16b),
  .b(w_1241_16b),
  .c(w_1246_16b),
  .clk(clk)
);
assign  w_1247_16b  =  r17_w_local_sum_1a660_0_16b ;
assign  w_1248_16b  =  w_conv1_1_stencil_3_3_1_16b ;
assign  w_1249_16b  =  w_weight_tap_stencil_3_3_8b ;
assign  w_1250_16b  =  w_1249_16b ;
MULT_16b_pe mult_83 (
  .a(w_1248_16b),
  .b(w_1250_16b),
  .c(w_1251_16b),
  .clk(clk)
);
ADD_16b_pe add_84 (
  .a(w_1247_16b),
  .b(w_1251_16b),
  .c(w_1252_16b),
  .clk(clk)
);
assign  w_1253_16b  =  r18_w_local_sum_1a660_0_16b ;
assign  w_1254_16b  =  w_conv1_1_stencil_4_3_1_16b ;
assign  w_1255_16b  =  w_weight_tap_stencil_4_3_8b ;
assign  w_1256_16b  =  w_1255_16b ;
MULT_16b_pe mult_85 (
  .a(w_1256_16b),
  .b(w_1254_16b),
  .c(w_1257_16b),
  .clk(clk)
);
ADD_16b_pe add_86 (
  .a(w_1257_16b),
  .b(w_1253_16b),
  .c(w_1258_16b),
  .clk(clk)
);
assign  w_1259_16b  =  r19_w_local_sum_1a660_0_16b ;
assign  w_1260_16b  =  w_conv1_1_stencil_0_4_1_16b ;
assign  w_1261_16b  =  w_weight_tap_stencil_0_4_8b ;
assign  w_1262_16b  =  w_1261_16b ;
MULT_16b_pe mult_87 (
  .a(w_1262_16b),
  .b(w_1260_16b),
  .c(w_1263_16b),
  .clk(clk)
);
ADD_16b_pe add_88 (
  .a(w_1263_16b),
  .b(w_1259_16b),
  .c(w_1264_16b),
  .clk(clk)
);
assign  w_1265_16b  =  r20_w_local_sum_1a660_0_16b ;
assign  w_1266_16b  =  w_conv1_1_stencil_1_4_1_16b ;
assign  w_1267_16b  =  w_weight_tap_stencil_1_4_8b ;
assign  w_1268_16b  =  w_1267_16b ;
MULT_16b_pe mult_89 (
  .a(w_1266_16b),
  .b(w_1268_16b),
  .c(w_1269_16b),
  .clk(clk)
);
ADD_16b_pe add_90 (
  .a(w_1265_16b),
  .b(w_1269_16b),
  .c(w_1270_16b),
  .clk(clk)
);
assign  w_1271_16b  =  r21_w_local_sum_1a660_0_16b ;
assign  w_1272_16b  =  w_conv1_1_stencil_2_4_1_16b ;
assign  w_1273_16b  =  w_weight_tap_stencil_2_4_8b ;
assign  w_1274_16b  =  w_1273_16b ;
MULT_16b_pe mult_91 (
  .a(w_1272_16b),
  .b(w_1274_16b),
  .c(w_1275_16b),
  .clk(clk)
);
ADD_16b_pe add_92 (
  .a(w_1271_16b),
  .b(w_1275_16b),
  .c(w_1276_16b),
  .clk(clk)
);
assign  w_1277_16b  =  r22_w_local_sum_1a660_0_16b ;
assign  w_1278_16b  =  w_conv1_1_stencil_3_4_1_16b ;
assign  w_1279_16b  =  w_weight_tap_stencil_3_4_8b ;
assign  w_1280_16b  =  w_1279_16b ;
MULT_16b_pe mult_93 (
  .a(w_1278_16b),
  .b(w_1280_16b),
  .c(w_1281_16b),
  .clk(clk)
);
ADD_16b_pe add_94 (
  .a(w_1281_16b),
  .b(w_1277_16b),
  .c(w_1282_16b),
  .clk(clk)
);
assign  w_1283_16b  =  r23_w_local_sum_1a660_0_16b ;
assign  w_1284_16b  =  w_conv1_1_stencil_4_4_1_16b ;
assign  w_1285_16b  =  w_weight_tap_stencil_4_4_8b ;
assign  w_1286_16b  =  w_1285_16b ;
MULT_16b_pe mult_95 (
  .a(w_1284_16b),
  .b(w_1286_16b),
  .c(w_1287_16b),
  .clk(clk)
);
ADD_16b_pe add_96 (
  .a(w_1283_16b),
  .b(w_1287_16b),
  .c(w_1288_16b),
  .clk(clk)
);
assign  w_1289_16b  =  r24_w_local_sum_1a660_0_16b ;
LSHIFT_16b_pe lshift_97 (
  .a(w_1289_16b),
  .b(1'b0),
  .c(w_1290_16b),
  .clk(clk)
);
assign  w_1291_16b  =  w_1290_16b ;
assign  w_1292_16b  =  w_local_sum_1a661_0_16b ;
assign  w_1293_16b  =  w_conv1_1_stencil_0_0_2_16b ;
assign  w_1294_16b  =  w_weight_tap_stencil_0_0_8b ;
assign  w_1295_16b  =  w_1294_16b ;
MULT_16b_pe mult_98 (
  .a(w_1293_16b),
  .b(w_1295_16b),
  .c(w_1296_16b),
  .clk(clk)
);
ADD_16b_pe add_99 (
  .a(w_1292_16b),
  .b(w_1296_16b),
  .c(w_1297_16b),
  .clk(clk)
);
assign  w_1298_16b  =  r0_w_local_sum_1a661_0_16b ;
assign  w_1299_16b  =  w_conv1_1_stencil_1_0_2_16b ;
assign  w_1300_16b  =  w_weight_tap_stencil_1_0_8b ;
assign  w_1301_16b  =  w_1300_16b ;
MULT_16b_pe mult_100 (
  .a(w_1301_16b),
  .b(w_1299_16b),
  .c(w_1302_16b),
  .clk(clk)
);
ADD_16b_pe add_101 (
  .a(w_1298_16b),
  .b(w_1302_16b),
  .c(w_1303_16b),
  .clk(clk)
);
assign  w_1304_16b  =  r1_w_local_sum_1a661_0_16b ;
assign  w_1305_16b  =  w_conv1_1_stencil_2_0_2_16b ;
assign  w_1306_16b  =  w_weight_tap_stencil_2_0_8b ;
assign  w_1307_16b  =  w_1306_16b ;
MULT_16b_pe mult_102 (
  .a(w_1305_16b),
  .b(w_1307_16b),
  .c(w_1308_16b),
  .clk(clk)
);
ADD_16b_pe add_103 (
  .a(w_1308_16b),
  .b(w_1304_16b),
  .c(w_1309_16b),
  .clk(clk)
);
assign  w_1310_16b  =  r2_w_local_sum_1a661_0_16b ;
assign  w_1311_16b  =  w_conv1_1_stencil_3_0_2_16b ;
assign  w_1312_16b  =  w_weight_tap_stencil_3_0_8b ;
assign  w_1313_16b  =  w_1312_16b ;
MULT_16b_pe mult_104 (
  .a(w_1313_16b),
  .b(w_1311_16b),
  .c(w_1314_16b),
  .clk(clk)
);
ADD_16b_pe add_105 (
  .a(w_1314_16b),
  .b(w_1310_16b),
  .c(w_1315_16b),
  .clk(clk)
);
assign  w_1316_16b  =  r3_w_local_sum_1a661_0_16b ;
assign  w_1317_16b  =  w_conv1_1_stencil_4_0_2_16b ;
assign  w_1318_16b  =  w_weight_tap_stencil_4_0_8b ;
assign  w_1319_16b  =  w_1318_16b ;
MULT_16b_pe mult_106 (
  .a(w_1317_16b),
  .b(w_1319_16b),
  .c(w_1320_16b),
  .clk(clk)
);
ADD_16b_pe add_107 (
  .a(w_1316_16b),
  .b(w_1320_16b),
  .c(w_1321_16b),
  .clk(clk)
);
assign  w_1322_16b  =  r4_w_local_sum_1a661_0_16b ;
assign  w_1323_16b  =  w_conv1_1_stencil_0_1_2_16b ;
assign  w_1324_16b  =  w_weight_tap_stencil_0_1_8b ;
assign  w_1325_16b  =  w_1324_16b ;
MULT_16b_pe mult_108 (
  .a(w_1325_16b),
  .b(w_1323_16b),
  .c(w_1326_16b),
  .clk(clk)
);
ADD_16b_pe add_109 (
  .a(w_1326_16b),
  .b(w_1322_16b),
  .c(w_1327_16b),
  .clk(clk)
);
assign  w_1328_16b  =  r5_w_local_sum_1a661_0_16b ;
assign  w_1329_16b  =  w_conv1_1_stencil_1_1_2_16b ;
assign  w_1330_16b  =  w_weight_tap_stencil_1_1_8b ;
assign  w_1331_16b  =  w_1330_16b ;
MULT_16b_pe mult_110 (
  .a(w_1331_16b),
  .b(w_1329_16b),
  .c(w_1332_16b),
  .clk(clk)
);
ADD_16b_pe add_111 (
  .a(w_1328_16b),
  .b(w_1332_16b),
  .c(w_1333_16b),
  .clk(clk)
);
assign  w_1334_16b  =  r6_w_local_sum_1a661_0_16b ;
assign  w_1335_16b  =  w_conv1_1_stencil_2_1_2_16b ;
assign  w_1336_16b  =  w_weight_tap_stencil_2_1_8b ;
assign  w_1337_16b  =  w_1336_16b ;
MULT_16b_pe mult_112 (
  .a(w_1335_16b),
  .b(w_1337_16b),
  .c(w_1338_16b),
  .clk(clk)
);
ADD_16b_pe add_113 (
  .a(w_1334_16b),
  .b(w_1338_16b),
  .c(w_1339_16b),
  .clk(clk)
);
assign  w_1340_16b  =  r7_w_local_sum_1a661_0_16b ;
assign  w_1341_16b  =  w_conv1_1_stencil_3_1_2_16b ;
assign  w_1342_16b  =  w_weight_tap_stencil_3_1_8b ;
assign  w_1343_16b  =  w_1342_16b ;
MULT_16b_pe mult_114 (
  .a(w_1341_16b),
  .b(w_1343_16b),
  .c(w_1344_16b),
  .clk(clk)
);
ADD_16b_pe add_115 (
  .a(w_1344_16b),
  .b(w_1340_16b),
  .c(w_1345_16b),
  .clk(clk)
);
assign  w_1346_16b  =  r8_w_local_sum_1a661_0_16b ;
assign  w_1347_16b  =  w_conv1_1_stencil_4_1_2_16b ;
assign  w_1348_16b  =  w_weight_tap_stencil_4_1_8b ;
assign  w_1349_16b  =  w_1348_16b ;
MULT_16b_pe mult_116 (
  .a(w_1347_16b),
  .b(w_1349_16b),
  .c(w_1350_16b),
  .clk(clk)
);
ADD_16b_pe add_117 (
  .a(w_1346_16b),
  .b(w_1350_16b),
  .c(w_1351_16b),
  .clk(clk)
);
assign  w_1352_16b  =  r9_w_local_sum_1a661_0_16b ;
assign  w_1353_16b  =  w_conv1_1_stencil_0_2_2_16b ;
assign  w_1354_16b  =  w_weight_tap_stencil_0_2_8b ;
assign  w_1355_16b  =  w_1354_16b ;
MULT_16b_pe mult_118 (
  .a(w_1353_16b),
  .b(w_1355_16b),
  .c(w_1356_16b),
  .clk(clk)
);
ADD_16b_pe add_119 (
  .a(w_1352_16b),
  .b(w_1356_16b),
  .c(w_1357_16b),
  .clk(clk)
);
assign  w_1358_16b  =  r10_w_local_sum_1a661_0_16b ;
assign  w_1359_16b  =  w_conv1_1_stencil_1_2_2_16b ;
assign  w_1360_16b  =  w_weight_tap_stencil_1_2_8b ;
assign  w_1361_16b  =  w_1360_16b ;
MULT_16b_pe mult_120 (
  .a(w_1359_16b),
  .b(w_1361_16b),
  .c(w_1362_16b),
  .clk(clk)
);
ADD_16b_pe add_121 (
  .a(w_1362_16b),
  .b(w_1358_16b),
  .c(w_1363_16b),
  .clk(clk)
);
assign  w_1364_16b  =  r11_w_local_sum_1a661_0_16b ;
assign  w_1365_16b  =  w_conv1_1_stencil_2_2_2_16b ;
assign  w_1366_16b  =  w_weight_tap_stencil_2_2_8b ;
assign  w_1367_16b  =  w_1366_16b ;
MULT_16b_pe mult_122 (
  .a(w_1367_16b),
  .b(w_1365_16b),
  .c(w_1368_16b),
  .clk(clk)
);
ADD_16b_pe add_123 (
  .a(w_1368_16b),
  .b(w_1364_16b),
  .c(w_1369_16b),
  .clk(clk)
);
assign  w_1370_16b  =  r12_w_local_sum_1a661_0_16b ;
assign  w_1371_16b  =  w_conv1_1_stencil_3_2_2_16b ;
assign  w_1372_16b  =  w_weight_tap_stencil_3_2_8b ;
assign  w_1373_16b  =  w_1372_16b ;
MULT_16b_pe mult_124 (
  .a(w_1371_16b),
  .b(w_1373_16b),
  .c(w_1374_16b),
  .clk(clk)
);
ADD_16b_pe add_125 (
  .a(w_1370_16b),
  .b(w_1374_16b),
  .c(w_1375_16b),
  .clk(clk)
);
assign  w_1376_16b  =  r13_w_local_sum_1a661_0_16b ;
assign  w_1377_16b  =  w_conv1_1_stencil_4_2_2_16b ;
assign  w_1378_16b  =  w_weight_tap_stencil_4_2_8b ;
assign  w_1379_16b  =  w_1378_16b ;
MULT_16b_pe mult_126 (
  .a(w_1379_16b),
  .b(w_1377_16b),
  .c(w_1380_16b),
  .clk(clk)
);
ADD_16b_pe add_127 (
  .a(w_1380_16b),
  .b(w_1376_16b),
  .c(w_1381_16b),
  .clk(clk)
);
assign  w_1382_16b  =  r14_w_local_sum_1a661_0_16b ;
assign  w_1383_16b  =  w_conv1_1_stencil_0_3_2_16b ;
assign  w_1384_16b  =  w_weight_tap_stencil_0_3_8b ;
assign  w_1385_16b  =  w_1384_16b ;
MULT_16b_pe mult_128 (
  .a(w_1383_16b),
  .b(w_1385_16b),
  .c(w_1386_16b),
  .clk(clk)
);
ADD_16b_pe add_129 (
  .a(w_1382_16b),
  .b(w_1386_16b),
  .c(w_1387_16b),
  .clk(clk)
);
assign  w_1388_16b  =  r15_w_local_sum_1a661_0_16b ;
assign  w_1389_16b  =  w_conv1_1_stencil_1_3_2_16b ;
assign  w_1390_16b  =  w_weight_tap_stencil_1_3_8b ;
assign  w_1391_16b  =  w_1390_16b ;
MULT_16b_pe mult_130 (
  .a(w_1389_16b),
  .b(w_1391_16b),
  .c(w_1392_16b),
  .clk(clk)
);
ADD_16b_pe add_131 (
  .a(w_1388_16b),
  .b(w_1392_16b),
  .c(w_1393_16b),
  .clk(clk)
);
assign  w_1394_16b  =  r16_w_local_sum_1a661_0_16b ;
assign  w_1395_16b  =  w_conv1_1_stencil_2_3_2_16b ;
assign  w_1396_16b  =  w_weight_tap_stencil_2_3_8b ;
assign  w_1397_16b  =  w_1396_16b ;
MULT_16b_pe mult_132 (
  .a(w_1397_16b),
  .b(w_1395_16b),
  .c(w_1398_16b),
  .clk(clk)
);
ADD_16b_pe add_133 (
  .a(w_1394_16b),
  .b(w_1398_16b),
  .c(w_1399_16b),
  .clk(clk)
);
assign  w_1400_16b  =  r17_w_local_sum_1a661_0_16b ;
assign  w_1401_16b  =  w_conv1_1_stencil_3_3_2_16b ;
assign  w_1402_16b  =  w_weight_tap_stencil_3_3_8b ;
assign  w_1403_16b  =  w_1402_16b ;
MULT_16b_pe mult_134 (
  .a(w_1403_16b),
  .b(w_1401_16b),
  .c(w_1404_16b),
  .clk(clk)
);
ADD_16b_pe add_135 (
  .a(w_1404_16b),
  .b(w_1400_16b),
  .c(w_1405_16b),
  .clk(clk)
);
assign  w_1406_16b  =  r18_w_local_sum_1a661_0_16b ;
assign  w_1407_16b  =  w_conv1_1_stencil_4_3_2_16b ;
assign  w_1408_16b  =  w_weight_tap_stencil_4_3_8b ;
assign  w_1409_16b  =  w_1408_16b ;
MULT_16b_pe mult_136 (
  .a(w_1407_16b),
  .b(w_1409_16b),
  .c(w_1410_16b),
  .clk(clk)
);
ADD_16b_pe add_137 (
  .a(w_1410_16b),
  .b(w_1406_16b),
  .c(w_1411_16b),
  .clk(clk)
);
assign  w_1412_16b  =  r19_w_local_sum_1a661_0_16b ;
assign  w_1413_16b  =  w_conv1_1_stencil_0_4_2_16b ;
assign  w_1414_16b  =  w_weight_tap_stencil_0_4_8b ;
assign  w_1415_16b  =  w_1414_16b ;
MULT_16b_pe mult_138 (
  .a(w_1413_16b),
  .b(w_1415_16b),
  .c(w_1416_16b),
  .clk(clk)
);
ADD_16b_pe add_139 (
  .a(w_1412_16b),
  .b(w_1416_16b),
  .c(w_1417_16b),
  .clk(clk)
);
assign  w_1418_16b  =  r20_w_local_sum_1a661_0_16b ;
assign  w_1419_16b  =  w_conv1_1_stencil_1_4_2_16b ;
assign  w_1420_16b  =  w_weight_tap_stencil_1_4_8b ;
assign  w_1421_16b  =  w_1420_16b ;
MULT_16b_pe mult_140 (
  .a(w_1419_16b),
  .b(w_1421_16b),
  .c(w_1422_16b),
  .clk(clk)
);
ADD_16b_pe add_141 (
  .a(w_1418_16b),
  .b(w_1422_16b),
  .c(w_1423_16b),
  .clk(clk)
);
assign  w_1424_16b  =  r21_w_local_sum_1a661_0_16b ;
assign  w_1425_16b  =  w_conv1_1_stencil_2_4_2_16b ;
assign  w_1426_16b  =  w_weight_tap_stencil_2_4_8b ;
assign  w_1427_16b  =  w_1426_16b ;
MULT_16b_pe mult_142 (
  .a(w_1425_16b),
  .b(w_1427_16b),
  .c(w_1428_16b),
  .clk(clk)
);
ADD_16b_pe add_143 (
  .a(w_1424_16b),
  .b(w_1428_16b),
  .c(w_1429_16b),
  .clk(clk)
);
assign  w_1430_16b  =  r22_w_local_sum_1a661_0_16b ;
assign  w_1431_16b  =  w_conv1_1_stencil_3_4_2_16b ;
assign  w_1432_16b  =  w_weight_tap_stencil_3_4_8b ;
assign  w_1433_16b  =  w_1432_16b ;
MULT_16b_pe mult_144 (
  .a(w_1433_16b),
  .b(w_1431_16b),
  .c(w_1434_16b),
  .clk(clk)
);
ADD_16b_pe add_145 (
  .a(w_1434_16b),
  .b(w_1430_16b),
  .c(w_1435_16b),
  .clk(clk)
);
assign  w_1436_16b  =  r23_w_local_sum_1a661_0_16b ;
assign  w_1437_16b  =  w_conv1_1_stencil_4_4_2_16b ;
assign  w_1438_16b  =  w_weight_tap_stencil_4_4_8b ;
assign  w_1439_16b  =  w_1438_16b ;
MULT_16b_pe mult_146 (
  .a(w_1437_16b),
  .b(w_1439_16b),
  .c(w_1440_16b),
  .clk(clk)
);
ADD_16b_pe add_147 (
  .a(w_1436_16b),
  .b(w_1440_16b),
  .c(w_1441_16b),
  .clk(clk)
);
assign  w_1442_16b  =  r24_w_local_sum_1a661_0_16b ;
LSHIFT_16b_pe lshift_148 (
  .a(w_1442_16b),
  .b(1'b0),
  .c(w_1443_16b),
  .clk(clk)
);
assign  w_1444_16b  =  w_1443_16b ;
assign  w_986_16b  =  w_local_sum_1a659_0_16b ;
assign  w_987_16b  =  w_conv1_1_stencil_0_0_0_16b ;
assign  w_988_16b  =  w_weight_tap_stencil_0_0_8b ;
assign  w_989_16b  =  w_988_16b ;
MULT_16b_pe mult_149 (
  .a(w_989_16b),
  .b(w_987_16b),
  .c(w_990_16b),
  .clk(clk)
);
ADD_16b_pe add_150 (
  .a(w_990_16b),
  .b(w_986_16b),
  .c(w_991_16b),
  .clk(clk)
);
assign  w_992_16b  =  r0_w_local_sum_1a659_0_16b ;
assign  w_993_16b  =  w_conv1_1_stencil_1_0_0_16b ;
assign  w_994_16b  =  w_weight_tap_stencil_1_0_8b ;
assign  w_995_16b  =  w_994_16b ;
MULT_16b_pe mult_151 (
  .a(w_993_16b),
  .b(w_995_16b),
  .c(w_996_16b),
  .clk(clk)
);
ADD_16b_pe add_152 (
  .a(w_992_16b),
  .b(w_996_16b),
  .c(w_997_16b),
  .clk(clk)
);
assign  w_998_16b  =  r1_w_local_sum_1a659_0_16b ;
assign  w_999_16b  =  w_conv1_1_stencil_2_0_0_16b ;
assign  w_f1_stencil_0_0_0_8b  =  w_1138_16b ;
assign  w_f1_stencil_0_0_1_8b  =  w_1291_16b ;
assign  w_f1_stencil_0_0_2_8b  =  w_1444_16b ;
assign  w_f1_stencil_packed_16b  =  w_f1_stencil_0_0_0_8b ;
assign  w_local_sum_1a659_0_16b  =  w_bias_16b ;
assign  w_local_sum_1a660_0_16b  =  w_bias_16b ;
assign  w_local_sum_1a661_0_16b  =  w_bias_16b ;

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

    



module LB_5_5_3_8bit_False (
    clk,

    in0,
    in1,
    in2,

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
    out74
);

// (5, 5, 3, 8, False)
    input clk;

    input in0;
    input in1;
    input in2;

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

//##// (5, 5, 3, 8, False)
    LB_base_5_5_8bit  LB_base_inst0 (
        .clk(clk),
        .inp(in0),
        .out_0_0(out0),
        .out_0_1(out1),
        .out_0_2(out2),
        .out_0_3(out3),
        .out_0_4(out4),
        .out_1_0(out5),
        .out_1_1(out6),
        .out_1_2(out7),
        .out_1_3(out8),
        .out_1_4(out9),
        .out_2_0(out10),
        .out_2_1(out11),
        .out_2_2(out12),
        .out_2_3(out13),
        .out_2_4(out14),
        .out_3_0(out15),
        .out_3_1(out16),
        .out_3_2(out17),
        .out_3_3(out18),
        .out_3_4(out19),
        .out_4_0(out20),
        .out_4_1(out21),
        .out_4_2(out22),
        .out_4_3(out23),
        .out_4_4(out24)
    );

//##// (5, 5, 3, 8, False)
    LB_base_5_5_8bit  LB_base_inst1 (
        .clk(clk),
        .inp(in1),
        .out_0_0(out25),
        .out_0_1(out26),
        .out_0_2(out27),
        .out_0_3(out28),
        .out_0_4(out29),
        .out_1_0(out30),
        .out_1_1(out31),
        .out_1_2(out32),
        .out_1_3(out33),
        .out_1_4(out34),
        .out_2_0(out35),
        .out_2_1(out36),
        .out_2_2(out37),
        .out_2_3(out38),
        .out_2_4(out39),
        .out_3_0(out40),
        .out_3_1(out41),
        .out_3_2(out42),
        .out_3_3(out43),
        .out_3_4(out44),
        .out_4_0(out45),
        .out_4_1(out46),
        .out_4_2(out47),
        .out_4_3(out48),
        .out_4_4(out49)
    );

//##// (5, 5, 3, 8, False)
    LB_base_5_5_8bit  LB_base_inst2 (
        .clk(clk),
        .inp(in2),
        .out_0_0(out50),
        .out_0_1(out51),
        .out_0_2(out52),
        .out_0_3(out53),
        .out_0_4(out54),
        .out_1_0(out55),
        .out_1_1(out56),
        .out_1_2(out57),
        .out_1_3(out58),
        .out_1_4(out59),
        .out_2_0(out60),
        .out_2_1(out61),
        .out_2_2(out62),
        .out_2_3(out63),
        .out_2_4(out64),
        .out_3_0(out65),
        .out_3_1(out66),
        .out_3_2(out67),
        .out_3_3(out68),
        .out_3_4(out69),
        .out_4_0(out70),
        .out_4_1(out71),
        .out_4_2(out72),
        .out_4_3(out73),
        .out_4_4(out74)
    );

endmodule

module LB_5_5_3_16bit_False (
    clk,

    in0,
    in1,
    in2,

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
    out74
);

// (5, 5, 3, 16, False)
    input clk;

    input in0;
    input in1;
    input in2;

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

//##// (5, 5, 3, 16, False)
    LB_base_5_5_16bit  LB_base_inst0 (
        .clk(clk),
        .inp(in0),
        .out_0_0(out0),
        .out_0_1(out1),
        .out_0_2(out2),
        .out_0_3(out3),
        .out_0_4(out4),
        .out_1_0(out5),
        .out_1_1(out6),
        .out_1_2(out7),
        .out_1_3(out8),
        .out_1_4(out9),
        .out_2_0(out10),
        .out_2_1(out11),
        .out_2_2(out12),
        .out_2_3(out13),
        .out_2_4(out14),
        .out_3_0(out15),
        .out_3_1(out16),
        .out_3_2(out17),
        .out_3_3(out18),
        .out_3_4(out19),
        .out_4_0(out20),
        .out_4_1(out21),
        .out_4_2(out22),
        .out_4_3(out23),
        .out_4_4(out24)
    );

//##// (5, 5, 3, 16, False)
    LB_base_5_5_16bit  LB_base_inst1 (
        .clk(clk),
        .inp(in1),
        .out_0_0(out25),
        .out_0_1(out26),
        .out_0_2(out27),
        .out_0_3(out28),
        .out_0_4(out29),
        .out_1_0(out30),
        .out_1_1(out31),
        .out_1_2(out32),
        .out_1_3(out33),
        .out_1_4(out34),
        .out_2_0(out35),
        .out_2_1(out36),
        .out_2_2(out37),
        .out_2_3(out38),
        .out_2_4(out39),
        .out_3_0(out40),
        .out_3_1(out41),
        .out_3_2(out42),
        .out_3_3(out43),
        .out_3_4(out44),
        .out_4_0(out45),
        .out_4_1(out46),
        .out_4_2(out47),
        .out_4_3(out48),
        .out_4_4(out49)
    );

//##// (5, 5, 3, 16, False)
    LB_base_5_5_16bit  LB_base_inst2 (
        .clk(clk),
        .inp(in2),
        .out_0_0(out50),
        .out_0_1(out51),
        .out_0_2(out52),
        .out_0_3(out53),
        .out_0_4(out54),
        .out_1_0(out55),
        .out_1_1(out56),
        .out_1_2(out57),
        .out_1_3(out58),
        .out_1_4(out59),
        .out_2_0(out60),
        .out_2_1(out61),
        .out_2_2(out62),
        .out_2_3(out63),
        .out_2_4(out64),
        .out_3_0(out65),
        .out_3_1(out66),
        .out_3_2(out67),
        .out_3_3(out68),
        .out_3_4(out69),
        .out_4_0(out70),
        .out_4_1(out71),
        .out_4_2(out72),
        .out_4_3(out73),
        .out_4_4(out74)
    );

endmodule

module LB_base_5_5_8bit (
    clk,

    inp,

    out_0_0,
    out_0_1,
    out_0_2,
    out_0_3,
    out_0_4,
    out_1_0,
    out_1_1,
    out_1_2,
    out_1_3,
    out_1_4,
    out_2_0,
    out_2_1,
    out_2_2,
    out_2_3,
    out_2_4,
    out_3_0,
    out_3_1,
    out_3_2,
    out_3_3,
    out_3_4,
    out_4_0,
    out_4_1,
    out_4_2,
    out_4_3,
    out_4_4
);

    input clk;

    input inp;

    output out_0_0;
    output out_0_1;
    output out_0_2;
    output out_0_3;
    output out_0_4;
    output out_1_0;
    output out_1_1;
    output out_1_2;
    output out_1_3;
    output out_1_4;
    output out_2_0;
    output out_2_1;
    output out_2_2;
    output out_2_3;
    output out_2_4;
    output out_3_0;
    output out_3_1;
    output out_3_2;
    output out_3_3;
    output out_3_4;
    output out_4_0;
    output out_4_1;
    output out_4_2;
    output out_4_3;
    output out_4_4;

    wire sram_out_0;
    wire sram_out_1;
    wire sram_out_2;
    wire sram_out_3;
    wire sram_out_4;

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


    reg  inp_reg;

    always @(posedge clk) begin

        inp_reg <= inp;
    end

    assign sram_out_4 = inp_reg;


    ShiftReg_base_5_8bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1),
        .out_2_16b (out_0_2),
        .out_3_16b (out_0_3),
        .out_4_16b (out_0_4)
    );


    ShiftReg_base_5_8bit ShiftersRow_1(
        .clk (clk),

        .inp_16b (sram_out_1),

        .out_0_16b (out_1_0),
        .out_1_16b (out_1_1),
        .out_2_16b (out_1_2),
        .out_3_16b (out_1_3),
        .out_4_16b (out_1_4)
    );


    ShiftReg_base_5_8bit ShiftersRow_2(
        .clk (clk),

        .inp_16b (sram_out_2),

        .out_0_16b (out_2_0),
        .out_1_16b (out_2_1),
        .out_2_16b (out_2_2),
        .out_3_16b (out_2_3),
        .out_4_16b (out_2_4)
    );


    ShiftReg_base_5_8bit ShiftersRow_3(
        .clk (clk),

        .inp_16b (sram_out_3),

        .out_0_16b (out_3_0),
        .out_1_16b (out_3_1),
        .out_2_16b (out_3_2),
        .out_3_16b (out_3_3),
        .out_4_16b (out_3_4)
    );


    ShiftReg_base_5_8bit ShiftersRow_4(
        .clk (clk),

        .inp_16b (sram_out_4),

        .out_0_16b (out_4_0),
        .out_1_16b (out_4_1),
        .out_2_16b (out_4_2),
        .out_3_16b (out_4_3),
        .out_4_16b (out_4_4)
    );


endmodule

module LB_base_5_5_16bit (
    clk,

    inp,

    out_0_0,
    out_0_1,
    out_0_2,
    out_0_3,
    out_0_4,
    out_1_0,
    out_1_1,
    out_1_2,
    out_1_3,
    out_1_4,
    out_2_0,
    out_2_1,
    out_2_2,
    out_2_3,
    out_2_4,
    out_3_0,
    out_3_1,
    out_3_2,
    out_3_3,
    out_3_4,
    out_4_0,
    out_4_1,
    out_4_2,
    out_4_3,
    out_4_4
);

    input clk;

    input inp;

    output out_0_0;
    output out_0_1;
    output out_0_2;
    output out_0_3;
    output out_0_4;
    output out_1_0;
    output out_1_1;
    output out_1_2;
    output out_1_3;
    output out_1_4;
    output out_2_0;
    output out_2_1;
    output out_2_2;
    output out_2_3;
    output out_2_4;
    output out_3_0;
    output out_3_1;
    output out_3_2;
    output out_3_3;
    output out_3_4;
    output out_4_0;
    output out_4_1;
    output out_4_2;
    output out_4_3;
    output out_4_4;

    wire sram_out_0;
    wire sram_out_1;
    wire sram_out_2;
    wire sram_out_3;
    wire sram_out_4;

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


    reg  inp_reg;

    always @(posedge clk) begin

        inp_reg <= inp;
    end

    assign sram_out_4 = inp_reg;


    ShiftReg_base_5_16bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1),
        .out_2_16b (out_0_2),
        .out_3_16b (out_0_3),
        .out_4_16b (out_0_4)
    );


    ShiftReg_base_5_16bit ShiftersRow_1(
        .clk (clk),

        .inp_16b (sram_out_1),

        .out_0_16b (out_1_0),
        .out_1_16b (out_1_1),
        .out_2_16b (out_1_2),
        .out_3_16b (out_1_3),
        .out_4_16b (out_1_4)
    );


    ShiftReg_base_5_16bit ShiftersRow_2(
        .clk (clk),

        .inp_16b (sram_out_2),

        .out_0_16b (out_2_0),
        .out_1_16b (out_2_1),
        .out_2_16b (out_2_2),
        .out_3_16b (out_2_3),
        .out_4_16b (out_2_4)
    );


    ShiftReg_base_5_16bit ShiftersRow_3(
        .clk (clk),

        .inp_16b (sram_out_3),

        .out_0_16b (out_3_0),
        .out_1_16b (out_3_1),
        .out_2_16b (out_3_2),
        .out_3_16b (out_3_3),
        .out_4_16b (out_3_4)
    );


    ShiftReg_base_5_16bit ShiftersRow_4(
        .clk (clk),

        .inp_16b (sram_out_4),

        .out_0_16b (out_4_0),
        .out_1_16b (out_4_1),
        .out_2_16b (out_4_2),
        .out_3_16b (out_4_3),
        .out_4_16b (out_4_4)
    );


endmodule

module ShiftReg_base_5_16bit (
    clk,

    inp_16b,

    out_0_16b,
    out_1_16b,
    out_2_16b,
    out_3_16b,
    out_4_16b
);

    input clk;

    input inp_16b;

    output out_0_16b;
    output out_1_16b;
    output out_2_16b;
    output out_3_16b;
    output out_4_16b;

    reg out_0_16b;
    reg out_1_16b;
    reg out_2_16b;
    reg out_3_16b;
    reg out_4_16b;


    always @(posedge clk) begin
        out_0_16b <= inp_16b;
        out_1_16b <= out_0_16b;
        out_2_16b <= out_1_16b;
        out_3_16b <= out_2_16b;
        out_4_16b <= out_3_16b;
    end

endmodule

module ShiftReg_base_5_8bit (
    clk,

    inp_16b,

    out_0_16b,
    out_1_16b,
    out_2_16b,
    out_3_16b,
    out_4_16b
);

    input clk;

    input inp_16b;

    output out_0_16b;
    output out_1_16b;
    output out_2_16b;
    output out_3_16b;
    output out_4_16b;

    reg out_0_16b;
    reg out_1_16b;
    reg out_2_16b;
    reg out_3_16b;
    reg out_4_16b;


    always @(posedge clk) begin
        out_0_16b <= inp_16b;
        out_1_16b <= out_0_16b;
        out_2_16b <= out_1_16b;
        out_3_16b <= out_2_16b;
        out_4_16b <= out_3_16b;
    end

endmodule


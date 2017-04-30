module top(
//Inputs
  w_bias,

  w_kernel_1_tap_stencil_0_0,
  w_kernel_1_tap_stencil_0_1,
  w_kernel_1_tap_stencil_0_2,
  w_kernel_1_tap_stencil_0_3,
  w_kernel_1_tap_stencil_0_4,
  w_kernel_1_tap_stencil_1_0,
  w_kernel_1_tap_stencil_1_1,
  w_kernel_1_tap_stencil_1_2,
  w_kernel_1_tap_stencil_1_3,
  w_kernel_1_tap_stencil_1_4,
  w_kernel_1_tap_stencil_2_0,
  w_kernel_1_tap_stencil_2_1,
  w_kernel_1_tap_stencil_2_2,
  w_kernel_1_tap_stencil_2_3,
  w_kernel_1_tap_stencil_2_4,
  w_kernel_1_tap_stencil_3_0,
  w_kernel_1_tap_stencil_3_1,
  w_kernel_1_tap_stencil_3_2,
  w_kernel_1_tap_stencil_3_3,
  w_kernel_1_tap_stencil_3_4,
  w_kernel_1_tap_stencil_4_0,
  w_kernel_1_tap_stencil_4_1,
  w_kernel_1_tap_stencil_4_2,
  w_kernel_1_tap_stencil_4_3,
  w_kernel_1_tap_stencil_4_4,

  w_repeat_edge_1_stencil_update_stream_0_0_0,
  w_repeat_edge_1_stencil_update_stream_0_0_1,
  w_repeat_edge_1_stencil_update_stream_0_0_2,

  w_weight_tap_stencil_0_0,
  w_weight_tap_stencil_0_1,
  w_weight_tap_stencil_0_2,
  w_weight_tap_stencil_0_3,
  w_weight_tap_stencil_0_4,
  w_weight_tap_stencil_1_0,
  w_weight_tap_stencil_1_1,
  w_weight_tap_stencil_1_2,
  w_weight_tap_stencil_1_3,
  w_weight_tap_stencil_1_4,
  w_weight_tap_stencil_2_0,
  w_weight_tap_stencil_2_1,
  w_weight_tap_stencil_2_2,
  w_weight_tap_stencil_2_3,
  w_weight_tap_stencil_2_4,
  w_weight_tap_stencil_3_0,
  w_weight_tap_stencil_3_1,
  w_weight_tap_stencil_3_2,
  w_weight_tap_stencil_3_3,
  w_weight_tap_stencil_3_4,
  w_weight_tap_stencil_4_0,
  w_weight_tap_stencil_4_1,
  w_weight_tap_stencil_4_2,
  w_weight_tap_stencil_4_3,
  w_weight_tap_stencil_4_4,

//Outputs
  w_f1_stencil_stream_0_0_0,
  w_f1_stencil_stream_0_0_1,
  w_f1_stencil_stream_0_0_2,

  clk
);

//Inputs
input    w_bias;

input    w_kernel_1_tap_stencil_0_0;
input    w_kernel_1_tap_stencil_0_1;
input    w_kernel_1_tap_stencil_0_2;
input    w_kernel_1_tap_stencil_0_3;
input    w_kernel_1_tap_stencil_0_4;
input    w_kernel_1_tap_stencil_1_0;
input    w_kernel_1_tap_stencil_1_1;
input    w_kernel_1_tap_stencil_1_2;
input    w_kernel_1_tap_stencil_1_3;
input    w_kernel_1_tap_stencil_1_4;
input    w_kernel_1_tap_stencil_2_0;
input    w_kernel_1_tap_stencil_2_1;
input    w_kernel_1_tap_stencil_2_2;
input    w_kernel_1_tap_stencil_2_3;
input    w_kernel_1_tap_stencil_2_4;
input    w_kernel_1_tap_stencil_3_0;
input    w_kernel_1_tap_stencil_3_1;
input    w_kernel_1_tap_stencil_3_2;
input    w_kernel_1_tap_stencil_3_3;
input    w_kernel_1_tap_stencil_3_4;
input    w_kernel_1_tap_stencil_4_0;
input    w_kernel_1_tap_stencil_4_1;
input    w_kernel_1_tap_stencil_4_2;
input    w_kernel_1_tap_stencil_4_3;
input    w_kernel_1_tap_stencil_4_4;

input    w_repeat_edge_1_stencil_update_stream_0_0_0;
input    w_repeat_edge_1_stencil_update_stream_0_0_1;
input    w_repeat_edge_1_stencil_update_stream_0_0_2;

input    w_weight_tap_stencil_0_0;
input    w_weight_tap_stencil_0_1;
input    w_weight_tap_stencil_0_2;
input    w_weight_tap_stencil_0_3;
input    w_weight_tap_stencil_0_4;
input    w_weight_tap_stencil_1_0;
input    w_weight_tap_stencil_1_1;
input    w_weight_tap_stencil_1_2;
input    w_weight_tap_stencil_1_3;
input    w_weight_tap_stencil_1_4;
input    w_weight_tap_stencil_2_0;
input    w_weight_tap_stencil_2_1;
input    w_weight_tap_stencil_2_2;
input    w_weight_tap_stencil_2_3;
input    w_weight_tap_stencil_2_4;
input    w_weight_tap_stencil_3_0;
input    w_weight_tap_stencil_3_1;
input    w_weight_tap_stencil_3_2;
input    w_weight_tap_stencil_3_3;
input    w_weight_tap_stencil_3_4;
input    w_weight_tap_stencil_4_0;
input    w_weight_tap_stencil_4_1;
input    w_weight_tap_stencil_4_2;
input    w_weight_tap_stencil_4_3;
input    w_weight_tap_stencil_4_4;

//Outputs
output   w_f1_stencil_stream_0_0_0;
output   w_f1_stencil_stream_0_0_1;
output   w_f1_stencil_stream_0_0_2;

input   clk;

wire   w_conv1_1_stencil_stream_0_0_0;
wire   w_conv1_1_stencil_stream_0_0_1;
wire   w_conv1_1_stencil_stream_0_0_2;
wire   w_conv1_1_stencil_stream_0_1_0;
wire   w_conv1_1_stencil_stream_0_1_1;
wire   w_conv1_1_stencil_stream_0_1_2;
wire   w_conv1_1_stencil_stream_0_2_0;
wire   w_conv1_1_stencil_stream_0_2_1;
wire   w_conv1_1_stencil_stream_0_2_2;
wire   w_conv1_1_stencil_stream_0_3_0;
wire   w_conv1_1_stencil_stream_0_3_1;
wire   w_conv1_1_stencil_stream_0_3_2;
wire   w_conv1_1_stencil_stream_0_4_0;
wire   w_conv1_1_stencil_stream_0_4_1;
wire   w_conv1_1_stencil_stream_0_4_2;
wire   w_conv1_1_stencil_stream_1_0_0;
wire   w_conv1_1_stencil_stream_1_0_1;
wire   w_conv1_1_stencil_stream_1_0_2;
wire   w_conv1_1_stencil_stream_1_1_0;
wire   w_conv1_1_stencil_stream_1_1_1;
wire   w_conv1_1_stencil_stream_1_1_2;
wire   w_conv1_1_stencil_stream_1_2_0;
wire   w_conv1_1_stencil_stream_1_2_1;
wire   w_conv1_1_stencil_stream_1_2_2;
wire   w_conv1_1_stencil_stream_1_3_0;
wire   w_conv1_1_stencil_stream_1_3_1;
wire   w_conv1_1_stencil_stream_1_3_2;
wire   w_conv1_1_stencil_stream_1_4_0;
wire   w_conv1_1_stencil_stream_1_4_1;
wire   w_conv1_1_stencil_stream_1_4_2;
wire   w_conv1_1_stencil_stream_2_0_0;
wire   w_conv1_1_stencil_stream_2_0_1;
wire   w_conv1_1_stencil_stream_2_0_2;
wire   w_conv1_1_stencil_stream_2_1_0;
wire   w_conv1_1_stencil_stream_2_1_1;
wire   w_conv1_1_stencil_stream_2_1_2;
wire   w_conv1_1_stencil_stream_2_2_0;
wire   w_conv1_1_stencil_stream_2_2_1;
wire   w_conv1_1_stencil_stream_2_2_2;
wire   w_conv1_1_stencil_stream_2_3_0;
wire   w_conv1_1_stencil_stream_2_3_1;
wire   w_conv1_1_stencil_stream_2_3_2;
wire   w_conv1_1_stencil_stream_2_4_0;
wire   w_conv1_1_stencil_stream_2_4_1;
wire   w_conv1_1_stencil_stream_2_4_2;
wire   w_conv1_1_stencil_stream_3_0_0;
wire   w_conv1_1_stencil_stream_3_0_1;
wire   w_conv1_1_stencil_stream_3_0_2;
wire   w_conv1_1_stencil_stream_3_1_0;
wire   w_conv1_1_stencil_stream_3_1_1;
wire   w_conv1_1_stencil_stream_3_1_2;
wire   w_conv1_1_stencil_stream_3_2_0;
wire   w_conv1_1_stencil_stream_3_2_1;
wire   w_conv1_1_stencil_stream_3_2_2;
wire   w_conv1_1_stencil_stream_3_3_0;
wire   w_conv1_1_stencil_stream_3_3_1;
wire   w_conv1_1_stencil_stream_3_3_2;
wire   w_conv1_1_stencil_stream_3_4_0;
wire   w_conv1_1_stencil_stream_3_4_1;
wire   w_conv1_1_stencil_stream_3_4_2;
wire   w_conv1_1_stencil_stream_4_0_0;
wire   w_conv1_1_stencil_stream_4_0_1;
wire   w_conv1_1_stencil_stream_4_0_2;
wire   w_conv1_1_stencil_stream_4_1_0;
wire   w_conv1_1_stencil_stream_4_1_1;
wire   w_conv1_1_stencil_stream_4_1_2;
wire   w_conv1_1_stencil_stream_4_2_0;
wire   w_conv1_1_stencil_stream_4_2_1;
wire   w_conv1_1_stencil_stream_4_2_2;
wire   w_conv1_1_stencil_stream_4_3_0;
wire   w_conv1_1_stencil_stream_4_3_1;
wire   w_conv1_1_stencil_stream_4_3_2;
wire   w_conv1_1_stencil_stream_4_4_0;
wire   w_conv1_1_stencil_stream_4_4_1;
wire   w_conv1_1_stencil_stream_4_4_2;

wire   w_conv1_1_stencil_update_stream_0_0_0;
wire   w_conv1_1_stencil_update_stream_0_0_1;
wire   w_conv1_1_stencil_update_stream_0_0_2;

wire   w_repeat_edge_1_stencil_stream_0_0_0;
wire   w_repeat_edge_1_stencil_stream_0_0_1;
wire   w_repeat_edge_1_stencil_stream_0_0_2;
wire   w_repeat_edge_1_stencil_stream_0_1_0;
wire   w_repeat_edge_1_stencil_stream_0_1_1;
wire   w_repeat_edge_1_stencil_stream_0_1_2;
wire   w_repeat_edge_1_stencil_stream_0_2_0;
wire   w_repeat_edge_1_stencil_stream_0_2_1;
wire   w_repeat_edge_1_stencil_stream_0_2_2;
wire   w_repeat_edge_1_stencil_stream_0_3_0;
wire   w_repeat_edge_1_stencil_stream_0_3_1;
wire   w_repeat_edge_1_stencil_stream_0_3_2;
wire   w_repeat_edge_1_stencil_stream_0_4_0;
wire   w_repeat_edge_1_stencil_stream_0_4_1;
wire   w_repeat_edge_1_stencil_stream_0_4_2;
wire   w_repeat_edge_1_stencil_stream_1_0_0;
wire   w_repeat_edge_1_stencil_stream_1_0_1;
wire   w_repeat_edge_1_stencil_stream_1_0_2;
wire   w_repeat_edge_1_stencil_stream_1_1_0;
wire   w_repeat_edge_1_stencil_stream_1_1_1;
wire   w_repeat_edge_1_stencil_stream_1_1_2;
wire   w_repeat_edge_1_stencil_stream_1_2_0;
wire   w_repeat_edge_1_stencil_stream_1_2_1;
wire   w_repeat_edge_1_stencil_stream_1_2_2;
wire   w_repeat_edge_1_stencil_stream_1_3_0;
wire   w_repeat_edge_1_stencil_stream_1_3_1;
wire   w_repeat_edge_1_stencil_stream_1_3_2;
wire   w_repeat_edge_1_stencil_stream_1_4_0;
wire   w_repeat_edge_1_stencil_stream_1_4_1;
wire   w_repeat_edge_1_stencil_stream_1_4_2;
wire   w_repeat_edge_1_stencil_stream_2_0_0;
wire   w_repeat_edge_1_stencil_stream_2_0_1;
wire   w_repeat_edge_1_stencil_stream_2_0_2;
wire   w_repeat_edge_1_stencil_stream_2_1_0;
wire   w_repeat_edge_1_stencil_stream_2_1_1;
wire   w_repeat_edge_1_stencil_stream_2_1_2;
wire   w_repeat_edge_1_stencil_stream_2_2_0;
wire   w_repeat_edge_1_stencil_stream_2_2_1;
wire   w_repeat_edge_1_stencil_stream_2_2_2;
wire   w_repeat_edge_1_stencil_stream_2_3_0;
wire   w_repeat_edge_1_stencil_stream_2_3_1;
wire   w_repeat_edge_1_stencil_stream_2_3_2;
wire   w_repeat_edge_1_stencil_stream_2_4_0;
wire   w_repeat_edge_1_stencil_stream_2_4_1;
wire   w_repeat_edge_1_stencil_stream_2_4_2;
wire   w_repeat_edge_1_stencil_stream_3_0_0;
wire   w_repeat_edge_1_stencil_stream_3_0_1;
wire   w_repeat_edge_1_stencil_stream_3_0_2;
wire   w_repeat_edge_1_stencil_stream_3_1_0;
wire   w_repeat_edge_1_stencil_stream_3_1_1;
wire   w_repeat_edge_1_stencil_stream_3_1_2;
wire   w_repeat_edge_1_stencil_stream_3_2_0;
wire   w_repeat_edge_1_stencil_stream_3_2_1;
wire   w_repeat_edge_1_stencil_stream_3_2_2;
wire   w_repeat_edge_1_stencil_stream_3_3_0;
wire   w_repeat_edge_1_stencil_stream_3_3_1;
wire   w_repeat_edge_1_stencil_stream_3_3_2;
wire   w_repeat_edge_1_stencil_stream_3_4_0;
wire   w_repeat_edge_1_stencil_stream_3_4_1;
wire   w_repeat_edge_1_stencil_stream_3_4_2;
wire   w_repeat_edge_1_stencil_stream_4_0_0;
wire   w_repeat_edge_1_stencil_stream_4_0_1;
wire   w_repeat_edge_1_stencil_stream_4_0_2;
wire   w_repeat_edge_1_stencil_stream_4_1_0;
wire   w_repeat_edge_1_stencil_stream_4_1_1;
wire   w_repeat_edge_1_stencil_stream_4_1_2;
wire   w_repeat_edge_1_stencil_stream_4_2_0;
wire   w_repeat_edge_1_stencil_stream_4_2_1;
wire   w_repeat_edge_1_stencil_stream_4_2_2;
wire   w_repeat_edge_1_stencil_stream_4_3_0;
wire   w_repeat_edge_1_stencil_stream_4_3_1;
wire   w_repeat_edge_1_stencil_stream_4_3_2;
wire   w_repeat_edge_1_stencil_stream_4_4_0;
wire   w_repeat_edge_1_stencil_stream_4_4_1;
wire   w_repeat_edge_1_stencil_stream_4_4_2;

wire   gnd;
assign gnd=1'b0;

kernel__conv1_1_stencil_update_stream KERN__conv1_1_stencil_update_stream (
    .w_kernel_1_tap_stencil_0_0(w_kernel_1_tap_stencil_0_0),
    .w_kernel_1_tap_stencil_0_1(w_kernel_1_tap_stencil_0_1),
    .w_kernel_1_tap_stencil_0_2(w_kernel_1_tap_stencil_0_2),
    .w_kernel_1_tap_stencil_0_3(w_kernel_1_tap_stencil_0_3),
    .w_kernel_1_tap_stencil_0_4(w_kernel_1_tap_stencil_0_4),
    .w_kernel_1_tap_stencil_1_0(w_kernel_1_tap_stencil_1_0),
    .w_kernel_1_tap_stencil_1_1(w_kernel_1_tap_stencil_1_1),
    .w_kernel_1_tap_stencil_1_2(w_kernel_1_tap_stencil_1_2),
    .w_kernel_1_tap_stencil_1_3(w_kernel_1_tap_stencil_1_3),
    .w_kernel_1_tap_stencil_1_4(w_kernel_1_tap_stencil_1_4),
    .w_kernel_1_tap_stencil_2_0(w_kernel_1_tap_stencil_2_0),
    .w_kernel_1_tap_stencil_2_1(w_kernel_1_tap_stencil_2_1),
    .w_kernel_1_tap_stencil_2_2(w_kernel_1_tap_stencil_2_2),
    .w_kernel_1_tap_stencil_2_3(w_kernel_1_tap_stencil_2_3),
    .w_kernel_1_tap_stencil_2_4(w_kernel_1_tap_stencil_2_4),
    .w_kernel_1_tap_stencil_3_0(w_kernel_1_tap_stencil_3_0),
    .w_kernel_1_tap_stencil_3_1(w_kernel_1_tap_stencil_3_1),
    .w_kernel_1_tap_stencil_3_2(w_kernel_1_tap_stencil_3_2),
    .w_kernel_1_tap_stencil_3_3(w_kernel_1_tap_stencil_3_3),
    .w_kernel_1_tap_stencil_3_4(w_kernel_1_tap_stencil_3_4),
    .w_kernel_1_tap_stencil_4_0(w_kernel_1_tap_stencil_4_0),
    .w_kernel_1_tap_stencil_4_1(w_kernel_1_tap_stencil_4_1),
    .w_kernel_1_tap_stencil_4_2(w_kernel_1_tap_stencil_4_2),
    .w_kernel_1_tap_stencil_4_3(w_kernel_1_tap_stencil_4_3),
    .w_kernel_1_tap_stencil_4_4(w_kernel_1_tap_stencil_4_4),
    .w_repeat_edge_1_stencil_0_0_0(w_repeat_edge_1_stencil_stream_0_0_0),
    .w_repeat_edge_1_stencil_0_0_1(w_repeat_edge_1_stencil_stream_0_0_1),
    .w_repeat_edge_1_stencil_0_0_2(w_repeat_edge_1_stencil_stream_0_0_2),
    .w_repeat_edge_1_stencil_0_1_0(w_repeat_edge_1_stencil_stream_0_1_0),
    .w_repeat_edge_1_stencil_0_1_1(w_repeat_edge_1_stencil_stream_0_1_1),
    .w_repeat_edge_1_stencil_0_1_2(w_repeat_edge_1_stencil_stream_0_1_2),
    .w_repeat_edge_1_stencil_0_2_0(w_repeat_edge_1_stencil_stream_0_2_0),
    .w_repeat_edge_1_stencil_0_2_1(w_repeat_edge_1_stencil_stream_0_2_1),
    .w_repeat_edge_1_stencil_0_2_2(w_repeat_edge_1_stencil_stream_0_2_2),
    .w_repeat_edge_1_stencil_0_3_0(w_repeat_edge_1_stencil_stream_0_3_0),
    .w_repeat_edge_1_stencil_0_3_1(w_repeat_edge_1_stencil_stream_0_3_1),
    .w_repeat_edge_1_stencil_0_3_2(w_repeat_edge_1_stencil_stream_0_3_2),
    .w_repeat_edge_1_stencil_0_4_0(w_repeat_edge_1_stencil_stream_0_4_0),
    .w_repeat_edge_1_stencil_0_4_1(w_repeat_edge_1_stencil_stream_0_4_1),
    .w_repeat_edge_1_stencil_0_4_2(w_repeat_edge_1_stencil_stream_0_4_2),
    .w_repeat_edge_1_stencil_1_0_0(w_repeat_edge_1_stencil_stream_1_0_0),
    .w_repeat_edge_1_stencil_1_0_1(w_repeat_edge_1_stencil_stream_1_0_1),
    .w_repeat_edge_1_stencil_1_0_2(w_repeat_edge_1_stencil_stream_1_0_2),
    .w_repeat_edge_1_stencil_1_1_0(w_repeat_edge_1_stencil_stream_1_1_0),
    .w_repeat_edge_1_stencil_1_1_1(w_repeat_edge_1_stencil_stream_1_1_1),
    .w_repeat_edge_1_stencil_1_1_2(w_repeat_edge_1_stencil_stream_1_1_2),
    .w_repeat_edge_1_stencil_1_2_0(w_repeat_edge_1_stencil_stream_1_2_0),
    .w_repeat_edge_1_stencil_1_2_1(w_repeat_edge_1_stencil_stream_1_2_1),
    .w_repeat_edge_1_stencil_1_2_2(w_repeat_edge_1_stencil_stream_1_2_2),
    .w_repeat_edge_1_stencil_1_3_0(w_repeat_edge_1_stencil_stream_1_3_0),
    .w_repeat_edge_1_stencil_1_3_1(w_repeat_edge_1_stencil_stream_1_3_1),
    .w_repeat_edge_1_stencil_1_3_2(w_repeat_edge_1_stencil_stream_1_3_2),
    .w_repeat_edge_1_stencil_1_4_0(w_repeat_edge_1_stencil_stream_1_4_0),
    .w_repeat_edge_1_stencil_1_4_1(w_repeat_edge_1_stencil_stream_1_4_1),
    .w_repeat_edge_1_stencil_1_4_2(w_repeat_edge_1_stencil_stream_1_4_2),
    .w_repeat_edge_1_stencil_2_0_0(w_repeat_edge_1_stencil_stream_2_0_0),
    .w_repeat_edge_1_stencil_2_0_1(w_repeat_edge_1_stencil_stream_2_0_1),
    .w_repeat_edge_1_stencil_2_0_2(w_repeat_edge_1_stencil_stream_2_0_2),
    .w_repeat_edge_1_stencil_2_1_0(w_repeat_edge_1_stencil_stream_2_1_0),
    .w_repeat_edge_1_stencil_2_1_1(w_repeat_edge_1_stencil_stream_2_1_1),
    .w_repeat_edge_1_stencil_2_1_2(w_repeat_edge_1_stencil_stream_2_1_2),
    .w_repeat_edge_1_stencil_2_2_0(w_repeat_edge_1_stencil_stream_2_2_0),
    .w_repeat_edge_1_stencil_2_2_1(w_repeat_edge_1_stencil_stream_2_2_1),
    .w_repeat_edge_1_stencil_2_2_2(w_repeat_edge_1_stencil_stream_2_2_2),
    .w_repeat_edge_1_stencil_2_3_0(w_repeat_edge_1_stencil_stream_2_3_0),
    .w_repeat_edge_1_stencil_2_3_1(w_repeat_edge_1_stencil_stream_2_3_1),
    .w_repeat_edge_1_stencil_2_3_2(w_repeat_edge_1_stencil_stream_2_3_2),
    .w_repeat_edge_1_stencil_2_4_0(w_repeat_edge_1_stencil_stream_2_4_0),
    .w_repeat_edge_1_stencil_2_4_1(w_repeat_edge_1_stencil_stream_2_4_1),
    .w_repeat_edge_1_stencil_2_4_2(w_repeat_edge_1_stencil_stream_2_4_2),
    .w_repeat_edge_1_stencil_3_0_0(w_repeat_edge_1_stencil_stream_3_0_0),
    .w_repeat_edge_1_stencil_3_0_1(w_repeat_edge_1_stencil_stream_3_0_1),
    .w_repeat_edge_1_stencil_3_0_2(w_repeat_edge_1_stencil_stream_3_0_2),
    .w_repeat_edge_1_stencil_3_1_0(w_repeat_edge_1_stencil_stream_3_1_0),
    .w_repeat_edge_1_stencil_3_1_1(w_repeat_edge_1_stencil_stream_3_1_1),
    .w_repeat_edge_1_stencil_3_1_2(w_repeat_edge_1_stencil_stream_3_1_2),
    .w_repeat_edge_1_stencil_3_2_0(w_repeat_edge_1_stencil_stream_3_2_0),
    .w_repeat_edge_1_stencil_3_2_1(w_repeat_edge_1_stencil_stream_3_2_1),
    .w_repeat_edge_1_stencil_3_2_2(w_repeat_edge_1_stencil_stream_3_2_2),
    .w_repeat_edge_1_stencil_3_3_0(w_repeat_edge_1_stencil_stream_3_3_0),
    .w_repeat_edge_1_stencil_3_3_1(w_repeat_edge_1_stencil_stream_3_3_1),
    .w_repeat_edge_1_stencil_3_3_2(w_repeat_edge_1_stencil_stream_3_3_2),
    .w_repeat_edge_1_stencil_3_4_0(w_repeat_edge_1_stencil_stream_3_4_0),
    .w_repeat_edge_1_stencil_3_4_1(w_repeat_edge_1_stencil_stream_3_4_1),
    .w_repeat_edge_1_stencil_3_4_2(w_repeat_edge_1_stencil_stream_3_4_2),
    .w_repeat_edge_1_stencil_4_0_0(w_repeat_edge_1_stencil_stream_4_0_0),
    .w_repeat_edge_1_stencil_4_0_1(w_repeat_edge_1_stencil_stream_4_0_1),
    .w_repeat_edge_1_stencil_4_0_2(w_repeat_edge_1_stencil_stream_4_0_2),
    .w_repeat_edge_1_stencil_4_1_0(w_repeat_edge_1_stencil_stream_4_1_0),
    .w_repeat_edge_1_stencil_4_1_1(w_repeat_edge_1_stencil_stream_4_1_1),
    .w_repeat_edge_1_stencil_4_1_2(w_repeat_edge_1_stencil_stream_4_1_2),
    .w_repeat_edge_1_stencil_4_2_0(w_repeat_edge_1_stencil_stream_4_2_0),
    .w_repeat_edge_1_stencil_4_2_1(w_repeat_edge_1_stencil_stream_4_2_1),
    .w_repeat_edge_1_stencil_4_2_2(w_repeat_edge_1_stencil_stream_4_2_2),
    .w_repeat_edge_1_stencil_4_3_0(w_repeat_edge_1_stencil_stream_4_3_0),
    .w_repeat_edge_1_stencil_4_3_1(w_repeat_edge_1_stencil_stream_4_3_1),
    .w_repeat_edge_1_stencil_4_3_2(w_repeat_edge_1_stencil_stream_4_3_2),
    .w_repeat_edge_1_stencil_4_4_0(w_repeat_edge_1_stencil_stream_4_4_0),
    .w_repeat_edge_1_stencil_4_4_1(w_repeat_edge_1_stencil_stream_4_4_1),
    .w_repeat_edge_1_stencil_4_4_2(w_repeat_edge_1_stencil_stream_4_4_2),

    .out_w_conv1_1_stencil_0_0_0(w_conv1_1_stencil_update_stream_0_0_0),
    .out_w_conv1_1_stencil_0_0_1(w_conv1_1_stencil_update_stream_0_0_1),
    .out_w_conv1_1_stencil_0_0_2(w_conv1_1_stencil_update_stream_0_0_2),

    .clk(clk)
);

LB_5_5_3_16bit_False LB__conv1_1_stencil_stream (
    .clk(clk),

    .in0(w_conv1_1_stencil_update_stream_0_0_0),
    .in1(w_conv1_1_stencil_update_stream_0_0_1),
    .in2(w_conv1_1_stencil_update_stream_0_0_2),

    .out0(w_conv1_1_stencil_stream_0_0_0),
    .out1(w_conv1_1_stencil_stream_0_0_1),
    .out2(w_conv1_1_stencil_stream_0_0_2),
    .out3(w_conv1_1_stencil_stream_0_1_0),
    .out4(w_conv1_1_stencil_stream_0_1_1),
    .out5(w_conv1_1_stencil_stream_0_1_2),
    .out6(w_conv1_1_stencil_stream_0_2_0),
    .out7(w_conv1_1_stencil_stream_0_2_1),
    .out8(w_conv1_1_stencil_stream_0_2_2),
    .out9(w_conv1_1_stencil_stream_0_3_0),
    .out10(w_conv1_1_stencil_stream_0_3_1),
    .out11(w_conv1_1_stencil_stream_0_3_2),
    .out12(w_conv1_1_stencil_stream_0_4_0),
    .out13(w_conv1_1_stencil_stream_0_4_1),
    .out14(w_conv1_1_stencil_stream_0_4_2),
    .out15(w_conv1_1_stencil_stream_1_0_0),
    .out16(w_conv1_1_stencil_stream_1_0_1),
    .out17(w_conv1_1_stencil_stream_1_0_2),
    .out18(w_conv1_1_stencil_stream_1_1_0),
    .out19(w_conv1_1_stencil_stream_1_1_1),
    .out20(w_conv1_1_stencil_stream_1_1_2),
    .out21(w_conv1_1_stencil_stream_1_2_0),
    .out22(w_conv1_1_stencil_stream_1_2_1),
    .out23(w_conv1_1_stencil_stream_1_2_2),
    .out24(w_conv1_1_stencil_stream_1_3_0),
    .out25(w_conv1_1_stencil_stream_1_3_1),
    .out26(w_conv1_1_stencil_stream_1_3_2),
    .out27(w_conv1_1_stencil_stream_1_4_0),
    .out28(w_conv1_1_stencil_stream_1_4_1),
    .out29(w_conv1_1_stencil_stream_1_4_2),
    .out30(w_conv1_1_stencil_stream_2_0_0),
    .out31(w_conv1_1_stencil_stream_2_0_1),
    .out32(w_conv1_1_stencil_stream_2_0_2),
    .out33(w_conv1_1_stencil_stream_2_1_0),
    .out34(w_conv1_1_stencil_stream_2_1_1),
    .out35(w_conv1_1_stencil_stream_2_1_2),
    .out36(w_conv1_1_stencil_stream_2_2_0),
    .out37(w_conv1_1_stencil_stream_2_2_1),
    .out38(w_conv1_1_stencil_stream_2_2_2),
    .out39(w_conv1_1_stencil_stream_2_3_0),
    .out40(w_conv1_1_stencil_stream_2_3_1),
    .out41(w_conv1_1_stencil_stream_2_3_2),
    .out42(w_conv1_1_stencil_stream_2_4_0),
    .out43(w_conv1_1_stencil_stream_2_4_1),
    .out44(w_conv1_1_stencil_stream_2_4_2),
    .out45(w_conv1_1_stencil_stream_3_0_0),
    .out46(w_conv1_1_stencil_stream_3_0_1),
    .out47(w_conv1_1_stencil_stream_3_0_2),
    .out48(w_conv1_1_stencil_stream_3_1_0),
    .out49(w_conv1_1_stencil_stream_3_1_1),
    .out50(w_conv1_1_stencil_stream_3_1_2),
    .out51(w_conv1_1_stencil_stream_3_2_0),
    .out52(w_conv1_1_stencil_stream_3_2_1),
    .out53(w_conv1_1_stencil_stream_3_2_2),
    .out54(w_conv1_1_stencil_stream_3_3_0),
    .out55(w_conv1_1_stencil_stream_3_3_1),
    .out56(w_conv1_1_stencil_stream_3_3_2),
    .out57(w_conv1_1_stencil_stream_3_4_0),
    .out58(w_conv1_1_stencil_stream_3_4_1),
    .out59(w_conv1_1_stencil_stream_3_4_2),
    .out60(w_conv1_1_stencil_stream_4_0_0),
    .out61(w_conv1_1_stencil_stream_4_0_1),
    .out62(w_conv1_1_stencil_stream_4_0_2),
    .out63(w_conv1_1_stencil_stream_4_1_0),
    .out64(w_conv1_1_stencil_stream_4_1_1),
    .out65(w_conv1_1_stencil_stream_4_1_2),
    .out66(w_conv1_1_stencil_stream_4_2_0),
    .out67(w_conv1_1_stencil_stream_4_2_1),
    .out68(w_conv1_1_stencil_stream_4_2_2),
    .out69(w_conv1_1_stencil_stream_4_3_0),
    .out70(w_conv1_1_stencil_stream_4_3_1),
    .out71(w_conv1_1_stencil_stream_4_3_2),
    .out72(w_conv1_1_stencil_stream_4_4_0),
    .out73(w_conv1_1_stencil_stream_4_4_1),
    .out74(w_conv1_1_stencil_stream_4_4_2)
);

kernel__f1_stencil_stream KERN__f1_stencil_stream (
    .w_bias(w_bias),
    .w_conv1_1_stencil_0_0_0(w_conv1_1_stencil_stream_0_0_0),
    .w_conv1_1_stencil_0_0_1(w_conv1_1_stencil_stream_0_0_1),
    .w_conv1_1_stencil_0_0_2(w_conv1_1_stencil_stream_0_0_2),
    .w_conv1_1_stencil_0_1_0(w_conv1_1_stencil_stream_0_1_0),
    .w_conv1_1_stencil_0_1_1(w_conv1_1_stencil_stream_0_1_1),
    .w_conv1_1_stencil_0_1_2(w_conv1_1_stencil_stream_0_1_2),
    .w_conv1_1_stencil_0_2_0(w_conv1_1_stencil_stream_0_2_0),
    .w_conv1_1_stencil_0_2_1(w_conv1_1_stencil_stream_0_2_1),
    .w_conv1_1_stencil_0_2_2(w_conv1_1_stencil_stream_0_2_2),
    .w_conv1_1_stencil_0_3_0(w_conv1_1_stencil_stream_0_3_0),
    .w_conv1_1_stencil_0_3_1(w_conv1_1_stencil_stream_0_3_1),
    .w_conv1_1_stencil_0_3_2(w_conv1_1_stencil_stream_0_3_2),
    .w_conv1_1_stencil_0_4_0(w_conv1_1_stencil_stream_0_4_0),
    .w_conv1_1_stencil_0_4_1(w_conv1_1_stencil_stream_0_4_1),
    .w_conv1_1_stencil_0_4_2(w_conv1_1_stencil_stream_0_4_2),
    .w_conv1_1_stencil_1_0_0(w_conv1_1_stencil_stream_1_0_0),
    .w_conv1_1_stencil_1_0_1(w_conv1_1_stencil_stream_1_0_1),
    .w_conv1_1_stencil_1_0_2(w_conv1_1_stencil_stream_1_0_2),
    .w_conv1_1_stencil_1_1_0(w_conv1_1_stencil_stream_1_1_0),
    .w_conv1_1_stencil_1_1_1(w_conv1_1_stencil_stream_1_1_1),
    .w_conv1_1_stencil_1_1_2(w_conv1_1_stencil_stream_1_1_2),
    .w_conv1_1_stencil_1_2_0(w_conv1_1_stencil_stream_1_2_0),
    .w_conv1_1_stencil_1_2_1(w_conv1_1_stencil_stream_1_2_1),
    .w_conv1_1_stencil_1_2_2(w_conv1_1_stencil_stream_1_2_2),
    .w_conv1_1_stencil_1_3_0(w_conv1_1_stencil_stream_1_3_0),
    .w_conv1_1_stencil_1_3_1(w_conv1_1_stencil_stream_1_3_1),
    .w_conv1_1_stencil_1_3_2(w_conv1_1_stencil_stream_1_3_2),
    .w_conv1_1_stencil_1_4_0(w_conv1_1_stencil_stream_1_4_0),
    .w_conv1_1_stencil_1_4_1(w_conv1_1_stencil_stream_1_4_1),
    .w_conv1_1_stencil_1_4_2(w_conv1_1_stencil_stream_1_4_2),
    .w_conv1_1_stencil_2_0_0(w_conv1_1_stencil_stream_2_0_0),
    .w_conv1_1_stencil_2_0_1(w_conv1_1_stencil_stream_2_0_1),
    .w_conv1_1_stencil_2_0_2(w_conv1_1_stencil_stream_2_0_2),
    .w_conv1_1_stencil_2_1_0(w_conv1_1_stencil_stream_2_1_0),
    .w_conv1_1_stencil_2_1_1(w_conv1_1_stencil_stream_2_1_1),
    .w_conv1_1_stencil_2_1_2(w_conv1_1_stencil_stream_2_1_2),
    .w_conv1_1_stencil_2_2_0(w_conv1_1_stencil_stream_2_2_0),
    .w_conv1_1_stencil_2_2_1(w_conv1_1_stencil_stream_2_2_1),
    .w_conv1_1_stencil_2_2_2(w_conv1_1_stencil_stream_2_2_2),
    .w_conv1_1_stencil_2_3_0(w_conv1_1_stencil_stream_2_3_0),
    .w_conv1_1_stencil_2_3_1(w_conv1_1_stencil_stream_2_3_1),
    .w_conv1_1_stencil_2_3_2(w_conv1_1_stencil_stream_2_3_2),
    .w_conv1_1_stencil_2_4_0(w_conv1_1_stencil_stream_2_4_0),
    .w_conv1_1_stencil_2_4_1(w_conv1_1_stencil_stream_2_4_1),
    .w_conv1_1_stencil_2_4_2(w_conv1_1_stencil_stream_2_4_2),
    .w_conv1_1_stencil_3_0_0(w_conv1_1_stencil_stream_3_0_0),
    .w_conv1_1_stencil_3_0_1(w_conv1_1_stencil_stream_3_0_1),
    .w_conv1_1_stencil_3_0_2(w_conv1_1_stencil_stream_3_0_2),
    .w_conv1_1_stencil_3_1_0(w_conv1_1_stencil_stream_3_1_0),
    .w_conv1_1_stencil_3_1_1(w_conv1_1_stencil_stream_3_1_1),
    .w_conv1_1_stencil_3_1_2(w_conv1_1_stencil_stream_3_1_2),
    .w_conv1_1_stencil_3_2_0(w_conv1_1_stencil_stream_3_2_0),
    .w_conv1_1_stencil_3_2_1(w_conv1_1_stencil_stream_3_2_1),
    .w_conv1_1_stencil_3_2_2(w_conv1_1_stencil_stream_3_2_2),
    .w_conv1_1_stencil_3_3_0(w_conv1_1_stencil_stream_3_3_0),
    .w_conv1_1_stencil_3_3_1(w_conv1_1_stencil_stream_3_3_1),
    .w_conv1_1_stencil_3_3_2(w_conv1_1_stencil_stream_3_3_2),
    .w_conv1_1_stencil_3_4_0(w_conv1_1_stencil_stream_3_4_0),
    .w_conv1_1_stencil_3_4_1(w_conv1_1_stencil_stream_3_4_1),
    .w_conv1_1_stencil_3_4_2(w_conv1_1_stencil_stream_3_4_2),
    .w_conv1_1_stencil_4_0_0(w_conv1_1_stencil_stream_4_0_0),
    .w_conv1_1_stencil_4_0_1(w_conv1_1_stencil_stream_4_0_1),
    .w_conv1_1_stencil_4_0_2(w_conv1_1_stencil_stream_4_0_2),
    .w_conv1_1_stencil_4_1_0(w_conv1_1_stencil_stream_4_1_0),
    .w_conv1_1_stencil_4_1_1(w_conv1_1_stencil_stream_4_1_1),
    .w_conv1_1_stencil_4_1_2(w_conv1_1_stencil_stream_4_1_2),
    .w_conv1_1_stencil_4_2_0(w_conv1_1_stencil_stream_4_2_0),
    .w_conv1_1_stencil_4_2_1(w_conv1_1_stencil_stream_4_2_1),
    .w_conv1_1_stencil_4_2_2(w_conv1_1_stencil_stream_4_2_2),
    .w_conv1_1_stencil_4_3_0(w_conv1_1_stencil_stream_4_3_0),
    .w_conv1_1_stencil_4_3_1(w_conv1_1_stencil_stream_4_3_1),
    .w_conv1_1_stencil_4_3_2(w_conv1_1_stencil_stream_4_3_2),
    .w_conv1_1_stencil_4_4_0(w_conv1_1_stencil_stream_4_4_0),
    .w_conv1_1_stencil_4_4_1(w_conv1_1_stencil_stream_4_4_1),
    .w_conv1_1_stencil_4_4_2(w_conv1_1_stencil_stream_4_4_2),
    .w_weight_tap_stencil_0_0(w_weight_tap_stencil_0_0),
    .w_weight_tap_stencil_0_1(w_weight_tap_stencil_0_1),
    .w_weight_tap_stencil_0_2(w_weight_tap_stencil_0_2),
    .w_weight_tap_stencil_0_3(w_weight_tap_stencil_0_3),
    .w_weight_tap_stencil_0_4(w_weight_tap_stencil_0_4),
    .w_weight_tap_stencil_1_0(w_weight_tap_stencil_1_0),
    .w_weight_tap_stencil_1_1(w_weight_tap_stencil_1_1),
    .w_weight_tap_stencil_1_2(w_weight_tap_stencil_1_2),
    .w_weight_tap_stencil_1_3(w_weight_tap_stencil_1_3),
    .w_weight_tap_stencil_1_4(w_weight_tap_stencil_1_4),
    .w_weight_tap_stencil_2_0(w_weight_tap_stencil_2_0),
    .w_weight_tap_stencil_2_1(w_weight_tap_stencil_2_1),
    .w_weight_tap_stencil_2_2(w_weight_tap_stencil_2_2),
    .w_weight_tap_stencil_2_3(w_weight_tap_stencil_2_3),
    .w_weight_tap_stencil_2_4(w_weight_tap_stencil_2_4),
    .w_weight_tap_stencil_3_0(w_weight_tap_stencil_3_0),
    .w_weight_tap_stencil_3_1(w_weight_tap_stencil_3_1),
    .w_weight_tap_stencil_3_2(w_weight_tap_stencil_3_2),
    .w_weight_tap_stencil_3_3(w_weight_tap_stencil_3_3),
    .w_weight_tap_stencil_3_4(w_weight_tap_stencil_3_4),
    .w_weight_tap_stencil_4_0(w_weight_tap_stencil_4_0),
    .w_weight_tap_stencil_4_1(w_weight_tap_stencil_4_1),
    .w_weight_tap_stencil_4_2(w_weight_tap_stencil_4_2),
    .w_weight_tap_stencil_4_3(w_weight_tap_stencil_4_3),
    .w_weight_tap_stencil_4_4(w_weight_tap_stencil_4_4),

    .out_w_f1_stencil_0_0_1(w_f1_stencil_stream_0_0_0),
    .out_w_f1_stencil_0_0_2(w_f1_stencil_stream_0_0_1),
    .out_w_f1_stencil_packed(w_f1_stencil_stream_0_0_2),

    .clk(clk)
);

LB_5_5_3_8bit_False LB__repeat_edge_1_stencil_stream (
    .clk(clk),

    .in0(w_repeat_edge_1_stencil_update_stream_0_0_0),
    .in1(w_repeat_edge_1_stencil_update_stream_0_0_1),
    .in2(w_repeat_edge_1_stencil_update_stream_0_0_2),

    .out0(w_repeat_edge_1_stencil_stream_0_0_0),
    .out1(w_repeat_edge_1_stencil_stream_0_0_1),
    .out2(w_repeat_edge_1_stencil_stream_0_0_2),
    .out3(w_repeat_edge_1_stencil_stream_0_1_0),
    .out4(w_repeat_edge_1_stencil_stream_0_1_1),
    .out5(w_repeat_edge_1_stencil_stream_0_1_2),
    .out6(w_repeat_edge_1_stencil_stream_0_2_0),
    .out7(w_repeat_edge_1_stencil_stream_0_2_1),
    .out8(w_repeat_edge_1_stencil_stream_0_2_2),
    .out9(w_repeat_edge_1_stencil_stream_0_3_0),
    .out10(w_repeat_edge_1_stencil_stream_0_3_1),
    .out11(w_repeat_edge_1_stencil_stream_0_3_2),
    .out12(w_repeat_edge_1_stencil_stream_0_4_0),
    .out13(w_repeat_edge_1_stencil_stream_0_4_1),
    .out14(w_repeat_edge_1_stencil_stream_0_4_2),
    .out15(w_repeat_edge_1_stencil_stream_1_0_0),
    .out16(w_repeat_edge_1_stencil_stream_1_0_1),
    .out17(w_repeat_edge_1_stencil_stream_1_0_2),
    .out18(w_repeat_edge_1_stencil_stream_1_1_0),
    .out19(w_repeat_edge_1_stencil_stream_1_1_1),
    .out20(w_repeat_edge_1_stencil_stream_1_1_2),
    .out21(w_repeat_edge_1_stencil_stream_1_2_0),
    .out22(w_repeat_edge_1_stencil_stream_1_2_1),
    .out23(w_repeat_edge_1_stencil_stream_1_2_2),
    .out24(w_repeat_edge_1_stencil_stream_1_3_0),
    .out25(w_repeat_edge_1_stencil_stream_1_3_1),
    .out26(w_repeat_edge_1_stencil_stream_1_3_2),
    .out27(w_repeat_edge_1_stencil_stream_1_4_0),
    .out28(w_repeat_edge_1_stencil_stream_1_4_1),
    .out29(w_repeat_edge_1_stencil_stream_1_4_2),
    .out30(w_repeat_edge_1_stencil_stream_2_0_0),
    .out31(w_repeat_edge_1_stencil_stream_2_0_1),
    .out32(w_repeat_edge_1_stencil_stream_2_0_2),
    .out33(w_repeat_edge_1_stencil_stream_2_1_0),
    .out34(w_repeat_edge_1_stencil_stream_2_1_1),
    .out35(w_repeat_edge_1_stencil_stream_2_1_2),
    .out36(w_repeat_edge_1_stencil_stream_2_2_0),
    .out37(w_repeat_edge_1_stencil_stream_2_2_1),
    .out38(w_repeat_edge_1_stencil_stream_2_2_2),
    .out39(w_repeat_edge_1_stencil_stream_2_3_0),
    .out40(w_repeat_edge_1_stencil_stream_2_3_1),
    .out41(w_repeat_edge_1_stencil_stream_2_3_2),
    .out42(w_repeat_edge_1_stencil_stream_2_4_0),
    .out43(w_repeat_edge_1_stencil_stream_2_4_1),
    .out44(w_repeat_edge_1_stencil_stream_2_4_2),
    .out45(w_repeat_edge_1_stencil_stream_3_0_0),
    .out46(w_repeat_edge_1_stencil_stream_3_0_1),
    .out47(w_repeat_edge_1_stencil_stream_3_0_2),
    .out48(w_repeat_edge_1_stencil_stream_3_1_0),
    .out49(w_repeat_edge_1_stencil_stream_3_1_1),
    .out50(w_repeat_edge_1_stencil_stream_3_1_2),
    .out51(w_repeat_edge_1_stencil_stream_3_2_0),
    .out52(w_repeat_edge_1_stencil_stream_3_2_1),
    .out53(w_repeat_edge_1_stencil_stream_3_2_2),
    .out54(w_repeat_edge_1_stencil_stream_3_3_0),
    .out55(w_repeat_edge_1_stencil_stream_3_3_1),
    .out56(w_repeat_edge_1_stencil_stream_3_3_2),
    .out57(w_repeat_edge_1_stencil_stream_3_4_0),
    .out58(w_repeat_edge_1_stencil_stream_3_4_1),
    .out59(w_repeat_edge_1_stencil_stream_3_4_2),
    .out60(w_repeat_edge_1_stencil_stream_4_0_0),
    .out61(w_repeat_edge_1_stencil_stream_4_0_1),
    .out62(w_repeat_edge_1_stencil_stream_4_0_2),
    .out63(w_repeat_edge_1_stencil_stream_4_1_0),
    .out64(w_repeat_edge_1_stencil_stream_4_1_1),
    .out65(w_repeat_edge_1_stencil_stream_4_1_2),
    .out66(w_repeat_edge_1_stencil_stream_4_2_0),
    .out67(w_repeat_edge_1_stencil_stream_4_2_1),
    .out68(w_repeat_edge_1_stencil_stream_4_2_2),
    .out69(w_repeat_edge_1_stencil_stream_4_3_0),
    .out70(w_repeat_edge_1_stencil_stream_4_3_1),
    .out71(w_repeat_edge_1_stencil_stream_4_3_2),
    .out72(w_repeat_edge_1_stencil_stream_4_4_0),
    .out73(w_repeat_edge_1_stencil_stream_4_4_1),
    .out74(w_repeat_edge_1_stencil_stream_4_4_2)
);

endmodule



module kernel__conv1_1_stencil_update_stream(
//Inputs
  w_kernel_1_tap_stencil_0_0,
  w_kernel_1_tap_stencil_0_1,
  w_kernel_1_tap_stencil_0_2,
  w_kernel_1_tap_stencil_0_3,
  w_kernel_1_tap_stencil_0_4,
  w_kernel_1_tap_stencil_1_0,
  w_kernel_1_tap_stencil_1_1,
  w_kernel_1_tap_stencil_1_2,
  w_kernel_1_tap_stencil_1_3,
  w_kernel_1_tap_stencil_1_4,
  w_kernel_1_tap_stencil_2_0,
  w_kernel_1_tap_stencil_2_1,
  w_kernel_1_tap_stencil_2_2,
  w_kernel_1_tap_stencil_2_3,
  w_kernel_1_tap_stencil_2_4,
  w_kernel_1_tap_stencil_3_0,
  w_kernel_1_tap_stencil_3_1,
  w_kernel_1_tap_stencil_3_2,
  w_kernel_1_tap_stencil_3_3,
  w_kernel_1_tap_stencil_3_4,
  w_kernel_1_tap_stencil_4_0,
  w_kernel_1_tap_stencil_4_1,
  w_kernel_1_tap_stencil_4_2,
  w_kernel_1_tap_stencil_4_3,
  w_kernel_1_tap_stencil_4_4,
  w_repeat_edge_1_stencil_0_0_0,
  w_repeat_edge_1_stencil_0_0_1,
  w_repeat_edge_1_stencil_0_0_2,
  w_repeat_edge_1_stencil_0_1_0,
  w_repeat_edge_1_stencil_0_1_1,
  w_repeat_edge_1_stencil_0_1_2,
  w_repeat_edge_1_stencil_0_2_0,
  w_repeat_edge_1_stencil_0_2_1,
  w_repeat_edge_1_stencil_0_2_2,
  w_repeat_edge_1_stencil_0_3_0,
  w_repeat_edge_1_stencil_0_3_1,
  w_repeat_edge_1_stencil_0_3_2,
  w_repeat_edge_1_stencil_0_4_0,
  w_repeat_edge_1_stencil_0_4_1,
  w_repeat_edge_1_stencil_0_4_2,
  w_repeat_edge_1_stencil_1_0_0,
  w_repeat_edge_1_stencil_1_0_1,
  w_repeat_edge_1_stencil_1_0_2,
  w_repeat_edge_1_stencil_1_1_0,
  w_repeat_edge_1_stencil_1_1_1,
  w_repeat_edge_1_stencil_1_1_2,
  w_repeat_edge_1_stencil_1_2_0,
  w_repeat_edge_1_stencil_1_2_1,
  w_repeat_edge_1_stencil_1_2_2,
  w_repeat_edge_1_stencil_1_3_0,
  w_repeat_edge_1_stencil_1_3_1,
  w_repeat_edge_1_stencil_1_3_2,
  w_repeat_edge_1_stencil_1_4_0,
  w_repeat_edge_1_stencil_1_4_1,
  w_repeat_edge_1_stencil_1_4_2,
  w_repeat_edge_1_stencil_2_0_0,
  w_repeat_edge_1_stencil_2_0_1,
  w_repeat_edge_1_stencil_2_0_2,
  w_repeat_edge_1_stencil_2_1_0,
  w_repeat_edge_1_stencil_2_1_1,
  w_repeat_edge_1_stencil_2_1_2,
  w_repeat_edge_1_stencil_2_2_0,
  w_repeat_edge_1_stencil_2_2_1,
  w_repeat_edge_1_stencil_2_2_2,
  w_repeat_edge_1_stencil_2_3_0,
  w_repeat_edge_1_stencil_2_3_1,
  w_repeat_edge_1_stencil_2_3_2,
  w_repeat_edge_1_stencil_2_4_0,
  w_repeat_edge_1_stencil_2_4_1,
  w_repeat_edge_1_stencil_2_4_2,
  w_repeat_edge_1_stencil_3_0_0,
  w_repeat_edge_1_stencil_3_0_1,
  w_repeat_edge_1_stencil_3_0_2,
  w_repeat_edge_1_stencil_3_1_0,
  w_repeat_edge_1_stencil_3_1_1,
  w_repeat_edge_1_stencil_3_1_2,
  w_repeat_edge_1_stencil_3_2_0,
  w_repeat_edge_1_stencil_3_2_1,
  w_repeat_edge_1_stencil_3_2_2,
  w_repeat_edge_1_stencil_3_3_0,
  w_repeat_edge_1_stencil_3_3_1,
  w_repeat_edge_1_stencil_3_3_2,
  w_repeat_edge_1_stencil_3_4_0,
  w_repeat_edge_1_stencil_3_4_1,
  w_repeat_edge_1_stencil_3_4_2,
  w_repeat_edge_1_stencil_4_0_0,
  w_repeat_edge_1_stencil_4_0_1,
  w_repeat_edge_1_stencil_4_0_2,
  w_repeat_edge_1_stencil_4_1_0,
  w_repeat_edge_1_stencil_4_1_1,
  w_repeat_edge_1_stencil_4_1_2,
  w_repeat_edge_1_stencil_4_2_0,
  w_repeat_edge_1_stencil_4_2_1,
  w_repeat_edge_1_stencil_4_2_2,
  w_repeat_edge_1_stencil_4_3_0,
  w_repeat_edge_1_stencil_4_3_1,
  w_repeat_edge_1_stencil_4_3_2,
  w_repeat_edge_1_stencil_4_4_0,
  w_repeat_edge_1_stencil_4_4_1,
  w_repeat_edge_1_stencil_4_4_2,
//Outputs
  out_w_conv1_1_stencil_0_0_0,
  out_w_conv1_1_stencil_0_0_1,
  out_w_conv1_1_stencil_0_0_2,

  clk
);

//Inputs
input  w_repeat_edge_1_stencil_0_2_2;
input  w_repeat_edge_1_stencil_0_2_0;
input  w_repeat_edge_1_stencil_0_2_1;
input  w_repeat_edge_1_stencil_1_4_1;
input  w_repeat_edge_1_stencil_1_4_0;
input  w_repeat_edge_1_stencil_1_4_2;
input  w_repeat_edge_1_stencil_1_0_1;
input  w_repeat_edge_1_stencil_1_0_0;
input  w_repeat_edge_1_stencil_1_0_2;
input  w_repeat_edge_1_stencil_3_3_0;
input  w_repeat_edge_1_stencil_3_4_2;
input  w_repeat_edge_1_stencil_3_3_2;
input  w_repeat_edge_1_stencil_3_4_0;
input  w_repeat_edge_1_stencil_0_4_0;
input  w_repeat_edge_1_stencil_0_4_1;
input  w_repeat_edge_1_stencil_0_4_2;
input  w_repeat_edge_1_stencil_4_4_1;
input  w_repeat_edge_1_stencil_2_3_1;
input  w_repeat_edge_1_stencil_2_3_0;
input  w_repeat_edge_1_stencil_2_3_2;
input  w_repeat_edge_1_stencil_0_0_0;
input  w_repeat_edge_1_stencil_0_0_1;
input  w_repeat_edge_1_stencil_0_0_2;
input  w_repeat_edge_1_stencil_3_1_2;
input  w_repeat_edge_1_stencil_3_1_0;
input  w_repeat_edge_1_stencil_3_1_1;
input  w_kernel_1_tap_stencil_2_4;
input  w_kernel_1_tap_stencil_2_2;
input  w_kernel_1_tap_stencil_2_3;
input  w_kernel_1_tap_stencil_2_0;
input  w_kernel_1_tap_stencil_2_1;
input  w_kernel_1_tap_stencil_3_3;
input  w_repeat_edge_1_stencil_4_2_0;
input  w_kernel_1_tap_stencil_3_0;
input  w_repeat_edge_1_stencil_2_1_2;
input  w_repeat_edge_1_stencil_2_1_1;
input  w_repeat_edge_1_stencil_2_1_0;
input  w_repeat_edge_1_stencil_2_0_2;
input  w_repeat_edge_1_stencil_2_0_0;
input  w_repeat_edge_1_stencil_2_0_1;
input  w_repeat_edge_1_stencil_2_2_0;
input  w_repeat_edge_1_stencil_2_2_1;
input  w_repeat_edge_1_stencil_2_2_2;
input  w_kernel_1_tap_stencil_1_1;
input  w_kernel_1_tap_stencil_1_0;
input  w_kernel_1_tap_stencil_1_3;
input  w_kernel_1_tap_stencil_1_2;
input  w_repeat_edge_1_stencil_4_4_0;
input  w_kernel_1_tap_stencil_1_4;
input  w_repeat_edge_1_stencil_4_4_2;
input  w_repeat_edge_1_stencil_3_3_1;
input  w_kernel_1_tap_stencil_3_4;
input  w_repeat_edge_1_stencil_4_2_2;
input  w_kernel_1_tap_stencil_3_2;
input  w_kernel_1_tap_stencil_3_1;
input  w_repeat_edge_1_stencil_4_2_1;
input  w_repeat_edge_1_stencil_4_0_0;
input  w_repeat_edge_1_stencil_4_0_1;
input  w_repeat_edge_1_stencil_4_0_2;
input  w_repeat_edge_1_stencil_2_4_2;
input  w_repeat_edge_1_stencil_2_4_0;
input  w_repeat_edge_1_stencil_2_4_1;
input  w_repeat_edge_1_stencil_4_3_2;
input  w_repeat_edge_1_stencil_4_3_1;
input  w_repeat_edge_1_stencil_4_3_0;
input  w_repeat_edge_1_stencil_0_3_2;
input  w_repeat_edge_1_stencil_0_3_1;
input  w_repeat_edge_1_stencil_0_3_0;
input  w_repeat_edge_1_stencil_3_4_1;
input  w_repeat_edge_1_stencil_4_1_1;
input  w_repeat_edge_1_stencil_4_1_0;
input  w_repeat_edge_1_stencil_4_1_2;
input  w_repeat_edge_1_stencil_0_1_1;
input  w_repeat_edge_1_stencil_0_1_0;
input  w_repeat_edge_1_stencil_0_1_2;
input  w_kernel_1_tap_stencil_4_4;
input  w_kernel_1_tap_stencil_4_0;
input  w_kernel_1_tap_stencil_4_1;
input  w_kernel_1_tap_stencil_4_2;
input  w_kernel_1_tap_stencil_4_3;
input  w_repeat_edge_1_stencil_1_3_2;
input  w_repeat_edge_1_stencil_1_3_0;
input  w_repeat_edge_1_stencil_1_3_1;
input  w_repeat_edge_1_stencil_1_1_0;
input  w_repeat_edge_1_stencil_1_1_1;
input  w_repeat_edge_1_stencil_1_1_2;
input  w_repeat_edge_1_stencil_3_2_1;
input  w_repeat_edge_1_stencil_3_2_0;
input  w_repeat_edge_1_stencil_3_2_2;
input  w_repeat_edge_1_stencil_1_2_2;
input  w_repeat_edge_1_stencil_1_2_1;
input  w_repeat_edge_1_stencil_1_2_0;
input  w_kernel_1_tap_stencil_0_0;
input  w_kernel_1_tap_stencil_0_1;
input  w_kernel_1_tap_stencil_0_2;
input  w_kernel_1_tap_stencil_0_3;
input  w_kernel_1_tap_stencil_0_4;
input  w_repeat_edge_1_stencil_3_0_2;
input  w_repeat_edge_1_stencil_3_0_1;
input  w_repeat_edge_1_stencil_3_0_0;
//Outputs
output  out_w_conv1_1_stencil_0_0_2;
output  out_w_conv1_1_stencil_0_0_1;
output  out_w_conv1_1_stencil_0_0_0;

input  clk;


wire  r0_w_conv1_1_stencil_0_0_0;
wire  r0_w_conv1_1_stencil_0_0_1;
wire  r0_w_conv1_1_stencil_0_0_2;
wire  r10_w_conv1_1_stencil_0_0_0;
wire  r10_w_conv1_1_stencil_0_0_1;
wire  r10_w_conv1_1_stencil_0_0_2;
wire  r11_w_conv1_1_stencil_0_0_0;
wire  r11_w_conv1_1_stencil_0_0_1;
wire  r11_w_conv1_1_stencil_0_0_2;
wire  r12_w_conv1_1_stencil_0_0_0;
wire  r12_w_conv1_1_stencil_0_0_1;
wire  r12_w_conv1_1_stencil_0_0_2;
wire  r13_w_conv1_1_stencil_0_0_0;
wire  r13_w_conv1_1_stencil_0_0_1;
wire  r13_w_conv1_1_stencil_0_0_2;
wire  r14_w_conv1_1_stencil_0_0_0;
wire  r14_w_conv1_1_stencil_0_0_1;
wire  r14_w_conv1_1_stencil_0_0_2;
wire  r15_w_conv1_1_stencil_0_0_0;
wire  r15_w_conv1_1_stencil_0_0_1;
wire  r15_w_conv1_1_stencil_0_0_2;
wire  r16_w_conv1_1_stencil_0_0_0;
wire  r16_w_conv1_1_stencil_0_0_1;
wire  r16_w_conv1_1_stencil_0_0_2;
wire  r17_w_conv1_1_stencil_0_0_0;
wire  r17_w_conv1_1_stencil_0_0_1;
wire  r17_w_conv1_1_stencil_0_0_2;
wire  r18_w_conv1_1_stencil_0_0_0;
wire  r18_w_conv1_1_stencil_0_0_1;
wire  r18_w_conv1_1_stencil_0_0_2;
wire  r19_w_conv1_1_stencil_0_0_0;
wire  r19_w_conv1_1_stencil_0_0_1;
wire  r19_w_conv1_1_stencil_0_0_2;
wire  r1_w_conv1_1_stencil_0_0_0;
wire  r1_w_conv1_1_stencil_0_0_1;
wire  r1_w_conv1_1_stencil_0_0_2;
wire  r20_w_conv1_1_stencil_0_0_0;
wire  r20_w_conv1_1_stencil_0_0_1;
wire  r20_w_conv1_1_stencil_0_0_2;
wire  r21_w_conv1_1_stencil_0_0_0;
wire  r21_w_conv1_1_stencil_0_0_1;
wire  r21_w_conv1_1_stencil_0_0_2;
wire  r22_w_conv1_1_stencil_0_0_0;
wire  r22_w_conv1_1_stencil_0_0_1;
wire  r22_w_conv1_1_stencil_0_0_2;
wire  r23_w_conv1_1_stencil_0_0_0;
wire  r23_w_conv1_1_stencil_0_0_1;
wire  r23_w_conv1_1_stencil_0_0_2;
wire  r24_w_conv1_1_stencil_0_0_0;
wire  r24_w_conv1_1_stencil_0_0_1;
wire  r24_w_conv1_1_stencil_0_0_2;
wire  r2_w_conv1_1_stencil_0_0_0;
wire  r2_w_conv1_1_stencil_0_0_1;
wire  r2_w_conv1_1_stencil_0_0_2;
wire  r3_w_conv1_1_stencil_0_0_0;
wire  r3_w_conv1_1_stencil_0_0_1;
wire  r3_w_conv1_1_stencil_0_0_2;
wire  r4_w_conv1_1_stencil_0_0_0;
wire  r4_w_conv1_1_stencil_0_0_1;
wire  r4_w_conv1_1_stencil_0_0_2;
wire  r5_w_conv1_1_stencil_0_0_0;
wire  r5_w_conv1_1_stencil_0_0_1;
wire  r5_w_conv1_1_stencil_0_0_2;
wire  r6_w_conv1_1_stencil_0_0_0;
wire  r6_w_conv1_1_stencil_0_0_1;
wire  r6_w_conv1_1_stencil_0_0_2;
wire  r7_w_conv1_1_stencil_0_0_0;
wire  r7_w_conv1_1_stencil_0_0_1;
wire  r7_w_conv1_1_stencil_0_0_2;
wire  r8_w_conv1_1_stencil_0_0_0;
wire  r8_w_conv1_1_stencil_0_0_1;
wire  r8_w_conv1_1_stencil_0_0_2;
wire  r9_w_conv1_1_stencil_0_0_0;
wire  r9_w_conv1_1_stencil_0_0_1;
wire  r9_w_conv1_1_stencil_0_0_2;
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
wire  w_810;
wire  w_811;
wire  w_812;
wire  w_813;
wire  w_814;
wire  w_815;
wire  w_816;
wire  w_817;
wire  w_818;
wire  w_819;
wire  w_820;
wire  w_821;
wire  w_822;
wire  w_823;
wire  w_824;
wire  w_825;
wire  w_826;
wire  w_827;
wire  w_828;
wire  w_829;
wire  w_830;
wire  w_831;
wire  w_832;
wire  w_833;
wire  w_834;
wire  w_835;
wire  w_836;
wire  w_837;
wire  w_838;
wire  w_839;
wire  w_840;
wire  w_841;
wire  w_842;
wire  w_843;
wire  w_844;
wire  w_845;
wire  w_846;
wire  w_847;
wire  w_848;
wire  w_849;
wire  w_850;
wire  w_851;
wire  w_852;
wire  w_853;
wire  w_854;
wire  w_855;
wire  w_856;
wire  w_857;
wire  w_858;
wire  w_859;
wire  w_860;
wire  w_861;
wire  w_862;
wire  w_863;
wire  w_864;
wire  w_865;
wire  w_866;
wire  w_867;
wire  w_868;
wire  w_869;
wire  w_870;
wire  w_871;
wire  w_872;
wire  w_873;
wire  w_874;
wire  w_875;
wire  w_876;
wire  w_877;
wire  w_878;
wire  w_879;
wire  w_880;
wire  w_881;
wire  w_882;
wire  w_883;
wire  w_884;
wire  w_885;
wire  w_886;
wire  w_887;
wire  w_888;
wire  w_889;
wire  w_890;
wire  w_891;
wire  w_892;
wire  w_893;
wire  w_894;
wire  w_895;
wire  w_896;
wire  w_897;
wire  w_898;
wire  w_899;
wire  w_900;
wire  w_901;
wire  w_902;
wire  w_903;
wire  w_904;
wire  w_905;
wire  w_906;
wire  w_907;
wire  w_908;
wire  w_909;
wire  w_910;
wire  w_911;
wire  w_912;
wire  w_913;
wire  w_914;
wire  w_915;
wire  w_916;
wire  w_917;
wire  w_918;
wire  w_919;
wire  w_920;
wire  w_921;
wire  w_922;
wire  w_923;
wire  w_924;
wire  w_925;
wire  w_926;
wire  w_927;
wire  w_928;
wire  w_929;
wire  w_930;
wire  w_931;
wire  w_932;
wire  w_933;
wire  w_934;
wire  w_935;
wire  w_936;
wire  w_937;
wire  w_938;
wire  w_939;
wire  w_940;
wire  w_941;
wire  w_942;
wire  w_943;
wire  w_944;
wire  w_945;
wire  w_946;
wire  w_947;
wire  w_948;
wire  w_949;
wire  w_950;
wire  w_951;
wire  w_952;
wire  w_953;
wire  w_954;
wire  w_955;
wire  w_956;
wire  w_957;
wire  w_958;
wire  w_959;
wire  w_960;
wire  w_961;
wire  w_962;
wire  w_963;
wire  w_964;
wire  w_965;
wire  w_966;
wire  w_967;
wire  w_968;
wire  w_969;
wire  w_970;
wire  w_971;
wire  w_972;
wire  w_973;
wire  w_974;
wire  w_975;
wire  w_976;
wire  w_977;
wire  w_978;
wire  w_979;
wire  w_980;
wire  w_981;
wire  w_982;
wire  w_983;
wire  w_984;
wire  w_985;
wire  w_conv1_1_stencil_0_0_0;
wire  w_conv1_1_stencil_0_0_1;
wire  w_conv1_1_stencil_0_0_2;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_conv1_1_stencil_0_0_2=r24_w_conv1_1_stencil_0_0_2;
assign out_w_conv1_1_stencil_0_0_1=r24_w_conv1_1_stencil_0_0_1;
assign out_w_conv1_1_stencil_0_0_0=r24_w_conv1_1_stencil_0_0_0;
assign  r0_w_conv1_1_stencil_0_0_0  =  w_541 ;
assign  r0_w_conv1_1_stencil_0_0_1  =  w_691 ;
assign  r0_w_conv1_1_stencil_0_0_2  =  w_841 ;
assign  r10_w_conv1_1_stencil_0_0_0  =  w_601 ;
assign  r10_w_conv1_1_stencil_0_0_1  =  w_751 ;
assign  r10_w_conv1_1_stencil_0_0_2  =  w_901 ;
assign  r11_w_conv1_1_stencil_0_0_0  =  w_607 ;
assign  r11_w_conv1_1_stencil_0_0_1  =  w_757 ;
assign  r11_w_conv1_1_stencil_0_0_2  =  w_907 ;
assign  r12_w_conv1_1_stencil_0_0_0  =  w_613 ;
assign  r12_w_conv1_1_stencil_0_0_1  =  w_763 ;
assign  r12_w_conv1_1_stencil_0_0_2  =  w_913 ;
assign  r13_w_conv1_1_stencil_0_0_0  =  w_619 ;
assign  r13_w_conv1_1_stencil_0_0_1  =  w_769 ;
assign  r13_w_conv1_1_stencil_0_0_2  =  w_919 ;
assign  r14_w_conv1_1_stencil_0_0_0  =  w_625 ;
assign  r14_w_conv1_1_stencil_0_0_1  =  w_775 ;
assign  r14_w_conv1_1_stencil_0_0_2  =  w_925 ;
assign  r15_w_conv1_1_stencil_0_0_0  =  w_631 ;
assign  r15_w_conv1_1_stencil_0_0_1  =  w_781 ;
assign  r15_w_conv1_1_stencil_0_0_2  =  w_931 ;
assign  r16_w_conv1_1_stencil_0_0_0  =  w_637 ;
assign  r16_w_conv1_1_stencil_0_0_1  =  w_787 ;
assign  r16_w_conv1_1_stencil_0_0_2  =  w_937 ;
assign  r17_w_conv1_1_stencil_0_0_0  =  w_643 ;
assign  r17_w_conv1_1_stencil_0_0_1  =  w_793 ;
assign  r17_w_conv1_1_stencil_0_0_2  =  w_943 ;
assign  r18_w_conv1_1_stencil_0_0_0  =  w_649 ;
assign  r18_w_conv1_1_stencil_0_0_1  =  w_799 ;
assign  r18_w_conv1_1_stencil_0_0_2  =  w_949 ;
assign  r19_w_conv1_1_stencil_0_0_0  =  w_655 ;
assign  r19_w_conv1_1_stencil_0_0_1  =  w_805 ;
assign  r19_w_conv1_1_stencil_0_0_2  =  w_955 ;
assign  r1_w_conv1_1_stencil_0_0_0  =  w_547 ;
assign  r1_w_conv1_1_stencil_0_0_1  =  w_697 ;
assign  r1_w_conv1_1_stencil_0_0_2  =  w_847 ;
assign  r20_w_conv1_1_stencil_0_0_0  =  w_661 ;
assign  r20_w_conv1_1_stencil_0_0_1  =  w_811 ;
assign  r20_w_conv1_1_stencil_0_0_2  =  w_961 ;
assign  r21_w_conv1_1_stencil_0_0_0  =  w_667 ;
assign  r21_w_conv1_1_stencil_0_0_1  =  w_817 ;
assign  r21_w_conv1_1_stencil_0_0_2  =  w_967 ;
assign  r22_w_conv1_1_stencil_0_0_0  =  w_673 ;
assign  r22_w_conv1_1_stencil_0_0_1  =  w_823 ;
assign  r22_w_conv1_1_stencil_0_0_2  =  w_973 ;
assign  r23_w_conv1_1_stencil_0_0_0  =  w_679 ;
assign  r23_w_conv1_1_stencil_0_0_1  =  w_829 ;
assign  r23_w_conv1_1_stencil_0_0_2  =  w_979 ;
assign  r24_w_conv1_1_stencil_0_0_0  =  w_685 ;
assign  r24_w_conv1_1_stencil_0_0_1  =  w_835 ;
assign  r24_w_conv1_1_stencil_0_0_2  =  w_985 ;
assign  r2_w_conv1_1_stencil_0_0_0  =  w_553 ;
assign  r2_w_conv1_1_stencil_0_0_1  =  w_703 ;
assign  r2_w_conv1_1_stencil_0_0_2  =  w_853 ;
assign  r3_w_conv1_1_stencil_0_0_0  =  w_559 ;
assign  r3_w_conv1_1_stencil_0_0_1  =  w_709 ;
assign  r3_w_conv1_1_stencil_0_0_2  =  w_859 ;
assign  r4_w_conv1_1_stencil_0_0_0  =  w_565 ;
assign  r4_w_conv1_1_stencil_0_0_1  =  w_715 ;
assign  r4_w_conv1_1_stencil_0_0_2  =  w_865 ;
assign  r5_w_conv1_1_stencil_0_0_0  =  w_571 ;
assign  r5_w_conv1_1_stencil_0_0_1  =  w_721 ;
assign  r5_w_conv1_1_stencil_0_0_2  =  w_871 ;
assign  r6_w_conv1_1_stencil_0_0_0  =  w_577 ;
assign  r6_w_conv1_1_stencil_0_0_1  =  w_727 ;
assign  r6_w_conv1_1_stencil_0_0_2  =  w_877 ;
assign  r7_w_conv1_1_stencil_0_0_0  =  w_583 ;
assign  r7_w_conv1_1_stencil_0_0_1  =  w_733 ;
assign  r7_w_conv1_1_stencil_0_0_2  =  w_883 ;
assign  r8_w_conv1_1_stencil_0_0_0  =  w_589 ;
assign  r8_w_conv1_1_stencil_0_0_1  =  w_739 ;
assign  r8_w_conv1_1_stencil_0_0_2  =  w_889 ;
assign  r9_w_conv1_1_stencil_0_0_0  =  w_595 ;
assign  r9_w_conv1_1_stencil_0_0_1  =  w_745 ;
assign  r9_w_conv1_1_stencil_0_0_2  =  w_895 ;
assign  w_533  = 1'b0;
assign  w_534  = 1'b0;
assign  w_535  = 1'b0;
assign  w_536  = 1'b0;
assign  w_537  =  w_repeat_edge_1_stencil_0_0_0 ;
assign  w_538  =  w_537 ;
assign  w_539  =  w_kernel_1_tap_stencil_0_0 ;
MULT_16b_pe mult_0 (
  .a(w_539),
  .b(w_538),
  .c(w_540),
  .clk(clk)
);
ADD_16b_pe add_1 (
  .a(w_540),
  .b(w_536),
  .c(w_541),
  .clk(clk)
);
assign  w_542  =  r0_w_conv1_1_stencil_0_0_0 ;
assign  w_543  =  w_repeat_edge_1_stencil_1_0_0 ;
assign  w_544  =  w_543 ;
assign  w_545  =  w_kernel_1_tap_stencil_1_0 ;
MULT_16b_pe mult_2 (
  .a(w_544),
  .b(w_545),
  .c(w_546),
  .clk(clk)
);
ADD_16b_pe add_3 (
  .a(w_542),
  .b(w_546),
  .c(w_547),
  .clk(clk)
);
assign  w_548  =  r1_w_conv1_1_stencil_0_0_0 ;
assign  w_549  =  w_repeat_edge_1_stencil_2_0_0 ;
assign  w_550  =  w_549 ;
assign  w_551  =  w_kernel_1_tap_stencil_2_0 ;
MULT_16b_pe mult_4 (
  .a(w_551),
  .b(w_550),
  .c(w_552),
  .clk(clk)
);
ADD_16b_pe add_5 (
  .a(w_548),
  .b(w_552),
  .c(w_553),
  .clk(clk)
);
assign  w_554  =  r2_w_conv1_1_stencil_0_0_0 ;
assign  w_555  =  w_repeat_edge_1_stencil_3_0_0 ;
assign  w_556  =  w_555 ;
assign  w_557  =  w_kernel_1_tap_stencil_3_0 ;
MULT_16b_pe mult_6 (
  .a(w_557),
  .b(w_556),
  .c(w_558),
  .clk(clk)
);
ADD_16b_pe add_7 (
  .a(w_558),
  .b(w_554),
  .c(w_559),
  .clk(clk)
);
assign  w_560  =  r3_w_conv1_1_stencil_0_0_0 ;
assign  w_561  =  w_repeat_edge_1_stencil_4_0_0 ;
assign  w_562  =  w_561 ;
assign  w_563  =  w_kernel_1_tap_stencil_4_0 ;
MULT_16b_pe mult_8 (
  .a(w_562),
  .b(w_563),
  .c(w_564),
  .clk(clk)
);
ADD_16b_pe add_9 (
  .a(w_560),
  .b(w_564),
  .c(w_565),
  .clk(clk)
);
assign  w_566  =  r4_w_conv1_1_stencil_0_0_0 ;
assign  w_567  =  w_repeat_edge_1_stencil_0_1_0 ;
assign  w_568  =  w_567 ;
assign  w_569  =  w_kernel_1_tap_stencil_0_1 ;
MULT_16b_pe mult_10 (
  .a(w_568),
  .b(w_569),
  .c(w_570),
  .clk(clk)
);
ADD_16b_pe add_11 (
  .a(w_566),
  .b(w_570),
  .c(w_571),
  .clk(clk)
);
assign  w_572  =  r5_w_conv1_1_stencil_0_0_0 ;
assign  w_573  =  w_repeat_edge_1_stencil_1_1_0 ;
assign  w_574  =  w_573 ;
assign  w_575  =  w_kernel_1_tap_stencil_1_1 ;
MULT_16b_pe mult_12 (
  .a(w_575),
  .b(w_574),
  .c(w_576),
  .clk(clk)
);
ADD_16b_pe add_13 (
  .a(w_576),
  .b(w_572),
  .c(w_577),
  .clk(clk)
);
assign  w_578  =  r6_w_conv1_1_stencil_0_0_0 ;
assign  w_579  =  w_repeat_edge_1_stencil_2_1_0 ;
assign  w_580  =  w_579 ;
assign  w_581  =  w_kernel_1_tap_stencil_2_1 ;
MULT_16b_pe mult_14 (
  .a(w_580),
  .b(w_581),
  .c(w_582),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_582),
  .b(w_578),
  .c(w_583),
  .clk(clk)
);
assign  w_584  =  r7_w_conv1_1_stencil_0_0_0 ;
assign  w_585  =  w_repeat_edge_1_stencil_3_1_0 ;
assign  w_586  =  w_585 ;
assign  w_587  =  w_kernel_1_tap_stencil_3_1 ;
MULT_16b_pe mult_16 (
  .a(w_586),
  .b(w_587),
  .c(w_588),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_584),
  .b(w_588),
  .c(w_589),
  .clk(clk)
);
assign  w_590  =  r8_w_conv1_1_stencil_0_0_0 ;
assign  w_591  =  w_repeat_edge_1_stencil_4_1_0 ;
assign  w_592  =  w_591 ;
assign  w_593  =  w_kernel_1_tap_stencil_4_1 ;
MULT_16b_pe mult_18 (
  .a(w_593),
  .b(w_592),
  .c(w_594),
  .clk(clk)
);
ADD_16b_pe add_19 (
  .a(w_594),
  .b(w_590),
  .c(w_595),
  .clk(clk)
);
assign  w_596  =  r9_w_conv1_1_stencil_0_0_0 ;
assign  w_597  =  w_repeat_edge_1_stencil_0_2_0 ;
assign  w_598  =  w_597 ;
assign  w_599  =  w_kernel_1_tap_stencil_0_2 ;
MULT_16b_pe mult_20 (
  .a(w_599),
  .b(w_598),
  .c(w_600),
  .clk(clk)
);
ADD_16b_pe add_21 (
  .a(w_596),
  .b(w_600),
  .c(w_601),
  .clk(clk)
);
assign  w_602  =  r10_w_conv1_1_stencil_0_0_0 ;
assign  w_603  =  w_repeat_edge_1_stencil_1_2_0 ;
assign  w_604  =  w_603 ;
assign  w_605  =  w_kernel_1_tap_stencil_1_2 ;
MULT_16b_pe mult_22 (
  .a(w_605),
  .b(w_604),
  .c(w_606),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_606),
  .b(w_602),
  .c(w_607),
  .clk(clk)
);
assign  w_608  =  r11_w_conv1_1_stencil_0_0_0 ;
assign  w_609  =  w_repeat_edge_1_stencil_2_2_0 ;
assign  w_610  =  w_609 ;
assign  w_611  =  w_kernel_1_tap_stencil_2_2 ;
MULT_16b_pe mult_24 (
  .a(w_610),
  .b(w_611),
  .c(w_612),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_612),
  .b(w_608),
  .c(w_613),
  .clk(clk)
);
assign  w_614  =  r12_w_conv1_1_stencil_0_0_0 ;
assign  w_615  =  w_repeat_edge_1_stencil_3_2_0 ;
assign  w_616  =  w_615 ;
assign  w_617  =  w_kernel_1_tap_stencil_3_2 ;
MULT_16b_pe mult_26 (
  .a(w_616),
  .b(w_617),
  .c(w_618),
  .clk(clk)
);
ADD_16b_pe add_27 (
  .a(w_614),
  .b(w_618),
  .c(w_619),
  .clk(clk)
);
assign  w_620  =  r13_w_conv1_1_stencil_0_0_0 ;
assign  w_621  =  w_repeat_edge_1_stencil_4_2_0 ;
assign  w_622  =  w_621 ;
assign  w_623  =  w_kernel_1_tap_stencil_4_2 ;
MULT_16b_pe mult_28 (
  .a(w_623),
  .b(w_622),
  .c(w_624),
  .clk(clk)
);
ADD_16b_pe add_29 (
  .a(w_620),
  .b(w_624),
  .c(w_625),
  .clk(clk)
);
assign  w_626  =  r14_w_conv1_1_stencil_0_0_0 ;
assign  w_627  =  w_repeat_edge_1_stencil_0_3_0 ;
assign  w_628  =  w_627 ;
assign  w_629  =  w_kernel_1_tap_stencil_0_3 ;
MULT_16b_pe mult_30 (
  .a(w_629),
  .b(w_628),
  .c(w_630),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_630),
  .b(w_626),
  .c(w_631),
  .clk(clk)
);
assign  w_632  =  r15_w_conv1_1_stencil_0_0_0 ;
assign  w_633  =  w_repeat_edge_1_stencil_1_3_0 ;
assign  w_634  =  w_633 ;
assign  w_635  =  w_kernel_1_tap_stencil_1_3 ;
MULT_16b_pe mult_32 (
  .a(w_634),
  .b(w_635),
  .c(w_636),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_636),
  .b(w_632),
  .c(w_637),
  .clk(clk)
);
assign  w_638  =  r16_w_conv1_1_stencil_0_0_0 ;
assign  w_639  =  w_repeat_edge_1_stencil_2_3_0 ;
assign  w_640  =  w_639 ;
assign  w_641  =  w_kernel_1_tap_stencil_2_3 ;
MULT_16b_pe mult_34 (
  .a(w_641),
  .b(w_640),
  .c(w_642),
  .clk(clk)
);
ADD_16b_pe add_35 (
  .a(w_642),
  .b(w_638),
  .c(w_643),
  .clk(clk)
);
assign  w_644  =  r17_w_conv1_1_stencil_0_0_0 ;
assign  w_645  =  w_repeat_edge_1_stencil_3_3_0 ;
assign  w_646  =  w_645 ;
assign  w_647  =  w_kernel_1_tap_stencil_3_3 ;
MULT_16b_pe mult_36 (
  .a(w_647),
  .b(w_646),
  .c(w_648),
  .clk(clk)
);
ADD_16b_pe add_37 (
  .a(w_648),
  .b(w_644),
  .c(w_649),
  .clk(clk)
);
assign  w_650  =  r18_w_conv1_1_stencil_0_0_0 ;
assign  w_651  =  w_repeat_edge_1_stencil_4_3_0 ;
assign  w_652  =  w_651 ;
assign  w_653  =  w_kernel_1_tap_stencil_4_3 ;
MULT_16b_pe mult_38 (
  .a(w_652),
  .b(w_653),
  .c(w_654),
  .clk(clk)
);
ADD_16b_pe add_39 (
  .a(w_650),
  .b(w_654),
  .c(w_655),
  .clk(clk)
);
assign  w_656  =  r19_w_conv1_1_stencil_0_0_0 ;
assign  w_657  =  w_repeat_edge_1_stencil_0_4_0 ;
assign  w_658  =  w_657 ;
assign  w_659  =  w_kernel_1_tap_stencil_0_4 ;
MULT_16b_pe mult_40 (
  .a(w_658),
  .b(w_659),
  .c(w_660),
  .clk(clk)
);
ADD_16b_pe add_41 (
  .a(w_656),
  .b(w_660),
  .c(w_661),
  .clk(clk)
);
assign  w_662  =  r20_w_conv1_1_stencil_0_0_0 ;
assign  w_663  =  w_repeat_edge_1_stencil_1_4_0 ;
assign  w_664  =  w_663 ;
assign  w_665  =  w_kernel_1_tap_stencil_1_4 ;
MULT_16b_pe mult_42 (
  .a(w_665),
  .b(w_664),
  .c(w_666),
  .clk(clk)
);
ADD_16b_pe add_43 (
  .a(w_666),
  .b(w_662),
  .c(w_667),
  .clk(clk)
);
assign  w_668  =  r21_w_conv1_1_stencil_0_0_0 ;
assign  w_669  =  w_repeat_edge_1_stencil_2_4_0 ;
assign  w_670  =  w_669 ;
assign  w_671  =  w_kernel_1_tap_stencil_2_4 ;
MULT_16b_pe mult_44 (
  .a(w_670),
  .b(w_671),
  .c(w_672),
  .clk(clk)
);
ADD_16b_pe add_45 (
  .a(w_672),
  .b(w_668),
  .c(w_673),
  .clk(clk)
);
assign  w_674  =  r22_w_conv1_1_stencil_0_0_0 ;
assign  w_675  =  w_repeat_edge_1_stencil_3_4_0 ;
assign  w_676  =  w_675 ;
assign  w_677  =  w_kernel_1_tap_stencil_3_4 ;
MULT_16b_pe mult_46 (
  .a(w_676),
  .b(w_677),
  .c(w_678),
  .clk(clk)
);
ADD_16b_pe add_47 (
  .a(w_678),
  .b(w_674),
  .c(w_679),
  .clk(clk)
);
assign  w_680  =  r23_w_conv1_1_stencil_0_0_0 ;
assign  w_681  =  w_repeat_edge_1_stencil_4_4_0 ;
assign  w_682  =  w_681 ;
assign  w_683  =  w_kernel_1_tap_stencil_4_4 ;
MULT_16b_pe mult_48 (
  .a(w_683),
  .b(w_682),
  .c(w_684),
  .clk(clk)
);
ADD_16b_pe add_49 (
  .a(w_684),
  .b(w_680),
  .c(w_685),
  .clk(clk)
);
assign  w_686  = 1'b0;
assign  w_687  =  w_repeat_edge_1_stencil_0_0_1 ;
assign  w_688  =  w_687 ;
assign  w_689  =  w_kernel_1_tap_stencil_0_0 ;
MULT_16b_pe mult_50 (
  .a(w_689),
  .b(w_688),
  .c(w_690),
  .clk(clk)
);
ADD_16b_pe add_51 (
  .a(w_686),
  .b(w_690),
  .c(w_691),
  .clk(clk)
);
assign  w_692  =  r0_w_conv1_1_stencil_0_0_1 ;
assign  w_693  =  w_repeat_edge_1_stencil_1_0_1 ;
assign  w_694  =  w_693 ;
assign  w_695  =  w_kernel_1_tap_stencil_1_0 ;
MULT_16b_pe mult_52 (
  .a(w_694),
  .b(w_695),
  .c(w_696),
  .clk(clk)
);
ADD_16b_pe add_53 (
  .a(w_696),
  .b(w_692),
  .c(w_697),
  .clk(clk)
);
assign  w_698  =  r1_w_conv1_1_stencil_0_0_1 ;
assign  w_699  =  w_repeat_edge_1_stencil_2_0_1 ;
assign  w_700  =  w_699 ;
assign  w_701  =  w_kernel_1_tap_stencil_2_0 ;
MULT_16b_pe mult_54 (
  .a(w_700),
  .b(w_701),
  .c(w_702),
  .clk(clk)
);
ADD_16b_pe add_55 (
  .a(w_702),
  .b(w_698),
  .c(w_703),
  .clk(clk)
);
assign  w_704  =  r2_w_conv1_1_stencil_0_0_1 ;
assign  w_705  =  w_repeat_edge_1_stencil_3_0_1 ;
assign  w_706  =  w_705 ;
assign  w_707  =  w_kernel_1_tap_stencil_3_0 ;
MULT_16b_pe mult_56 (
  .a(w_706),
  .b(w_707),
  .c(w_708),
  .clk(clk)
);
ADD_16b_pe add_57 (
  .a(w_704),
  .b(w_708),
  .c(w_709),
  .clk(clk)
);
assign  w_710  =  r3_w_conv1_1_stencil_0_0_1 ;
assign  w_711  =  w_repeat_edge_1_stencil_4_0_1 ;
assign  w_712  =  w_711 ;
assign  w_713  =  w_kernel_1_tap_stencil_4_0 ;
MULT_16b_pe mult_58 (
  .a(w_713),
  .b(w_712),
  .c(w_714),
  .clk(clk)
);
ADD_16b_pe add_59 (
  .a(w_710),
  .b(w_714),
  .c(w_715),
  .clk(clk)
);
assign  w_716  =  r4_w_conv1_1_stencil_0_0_1 ;
assign  w_717  =  w_repeat_edge_1_stencil_0_1_1 ;
assign  w_718  =  w_717 ;
assign  w_719  =  w_kernel_1_tap_stencil_0_1 ;
MULT_16b_pe mult_60 (
  .a(w_719),
  .b(w_718),
  .c(w_720),
  .clk(clk)
);
ADD_16b_pe add_61 (
  .a(w_716),
  .b(w_720),
  .c(w_721),
  .clk(clk)
);
assign  w_722  =  r5_w_conv1_1_stencil_0_0_1 ;
assign  w_723  =  w_repeat_edge_1_stencil_1_1_1 ;
assign  w_724  =  w_723 ;
assign  w_725  =  w_kernel_1_tap_stencil_1_1 ;
MULT_16b_pe mult_62 (
  .a(w_724),
  .b(w_725),
  .c(w_726),
  .clk(clk)
);
ADD_16b_pe add_63 (
  .a(w_726),
  .b(w_722),
  .c(w_727),
  .clk(clk)
);
assign  w_728  =  r6_w_conv1_1_stencil_0_0_1 ;
assign  w_729  =  w_repeat_edge_1_stencil_2_1_1 ;
assign  w_730  =  w_729 ;
assign  w_731  =  w_kernel_1_tap_stencil_2_1 ;
MULT_16b_pe mult_64 (
  .a(w_731),
  .b(w_730),
  .c(w_732),
  .clk(clk)
);
ADD_16b_pe add_65 (
  .a(w_728),
  .b(w_732),
  .c(w_733),
  .clk(clk)
);
assign  w_734  =  r7_w_conv1_1_stencil_0_0_1 ;
assign  w_735  =  w_repeat_edge_1_stencil_3_1_1 ;
assign  w_736  =  w_735 ;
assign  w_737  =  w_kernel_1_tap_stencil_3_1 ;
MULT_16b_pe mult_66 (
  .a(w_737),
  .b(w_736),
  .c(w_738),
  .clk(clk)
);
ADD_16b_pe add_67 (
  .a(w_734),
  .b(w_738),
  .c(w_739),
  .clk(clk)
);
assign  w_740  =  r8_w_conv1_1_stencil_0_0_1 ;
assign  w_741  =  w_repeat_edge_1_stencil_4_1_1 ;
assign  w_742  =  w_741 ;
assign  w_743  =  w_kernel_1_tap_stencil_4_1 ;
MULT_16b_pe mult_68 (
  .a(w_742),
  .b(w_743),
  .c(w_744),
  .clk(clk)
);
ADD_16b_pe add_69 (
  .a(w_740),
  .b(w_744),
  .c(w_745),
  .clk(clk)
);
assign  w_746  =  r9_w_conv1_1_stencil_0_0_1 ;
assign  w_747  =  w_repeat_edge_1_stencil_0_2_1 ;
assign  w_748  =  w_747 ;
assign  w_749  =  w_kernel_1_tap_stencil_0_2 ;
MULT_16b_pe mult_70 (
  .a(w_748),
  .b(w_749),
  .c(w_750),
  .clk(clk)
);
ADD_16b_pe add_71 (
  .a(w_746),
  .b(w_750),
  .c(w_751),
  .clk(clk)
);
assign  w_752  =  r10_w_conv1_1_stencil_0_0_1 ;
assign  w_753  =  w_repeat_edge_1_stencil_1_2_1 ;
assign  w_754  =  w_753 ;
assign  w_755  =  w_kernel_1_tap_stencil_1_2 ;
MULT_16b_pe mult_72 (
  .a(w_755),
  .b(w_754),
  .c(w_756),
  .clk(clk)
);
ADD_16b_pe add_73 (
  .a(w_756),
  .b(w_752),
  .c(w_757),
  .clk(clk)
);
assign  w_758  =  r11_w_conv1_1_stencil_0_0_1 ;
assign  w_759  =  w_repeat_edge_1_stencil_2_2_1 ;
assign  w_760  =  w_759 ;
assign  w_761  =  w_kernel_1_tap_stencil_2_2 ;
MULT_16b_pe mult_74 (
  .a(w_760),
  .b(w_761),
  .c(w_762),
  .clk(clk)
);
ADD_16b_pe add_75 (
  .a(w_762),
  .b(w_758),
  .c(w_763),
  .clk(clk)
);
assign  w_764  =  r12_w_conv1_1_stencil_0_0_1 ;
assign  w_765  =  w_repeat_edge_1_stencil_3_2_1 ;
assign  w_766  =  w_765 ;
assign  w_767  =  w_kernel_1_tap_stencil_3_2 ;
MULT_16b_pe mult_76 (
  .a(w_766),
  .b(w_767),
  .c(w_768),
  .clk(clk)
);
ADD_16b_pe add_77 (
  .a(w_768),
  .b(w_764),
  .c(w_769),
  .clk(clk)
);
assign  w_770  =  r13_w_conv1_1_stencil_0_0_1 ;
assign  w_771  =  w_repeat_edge_1_stencil_4_2_1 ;
assign  w_772  =  w_771 ;
assign  w_773  =  w_kernel_1_tap_stencil_4_2 ;
MULT_16b_pe mult_78 (
  .a(w_773),
  .b(w_772),
  .c(w_774),
  .clk(clk)
);
ADD_16b_pe add_79 (
  .a(w_770),
  .b(w_774),
  .c(w_775),
  .clk(clk)
);
assign  w_776  =  r14_w_conv1_1_stencil_0_0_1 ;
assign  w_777  =  w_repeat_edge_1_stencil_0_3_1 ;
assign  w_778  =  w_777 ;
assign  w_779  =  w_kernel_1_tap_stencil_0_3 ;
MULT_16b_pe mult_80 (
  .a(w_779),
  .b(w_778),
  .c(w_780),
  .clk(clk)
);
ADD_16b_pe add_81 (
  .a(w_780),
  .b(w_776),
  .c(w_781),
  .clk(clk)
);
assign  w_782  =  r15_w_conv1_1_stencil_0_0_1 ;
assign  w_783  =  w_repeat_edge_1_stencil_1_3_1 ;
assign  w_784  =  w_783 ;
assign  w_785  =  w_kernel_1_tap_stencil_1_3 ;
MULT_16b_pe mult_82 (
  .a(w_784),
  .b(w_785),
  .c(w_786),
  .clk(clk)
);
ADD_16b_pe add_83 (
  .a(w_786),
  .b(w_782),
  .c(w_787),
  .clk(clk)
);
assign  w_788  =  r16_w_conv1_1_stencil_0_0_1 ;
assign  w_789  =  w_repeat_edge_1_stencil_2_3_1 ;
assign  w_790  =  w_789 ;
assign  w_791  =  w_kernel_1_tap_stencil_2_3 ;
MULT_16b_pe mult_84 (
  .a(w_791),
  .b(w_790),
  .c(w_792),
  .clk(clk)
);
ADD_16b_pe add_85 (
  .a(w_792),
  .b(w_788),
  .c(w_793),
  .clk(clk)
);
assign  w_794  =  r17_w_conv1_1_stencil_0_0_1 ;
assign  w_795  =  w_repeat_edge_1_stencil_3_3_1 ;
assign  w_796  =  w_795 ;
assign  w_797  =  w_kernel_1_tap_stencil_3_3 ;
MULT_16b_pe mult_86 (
  .a(w_797),
  .b(w_796),
  .c(w_798),
  .clk(clk)
);
ADD_16b_pe add_87 (
  .a(w_798),
  .b(w_794),
  .c(w_799),
  .clk(clk)
);
assign  w_800  =  r18_w_conv1_1_stencil_0_0_1 ;
assign  w_801  =  w_repeat_edge_1_stencil_4_3_1 ;
assign  w_802  =  w_801 ;
assign  w_803  =  w_kernel_1_tap_stencil_4_3 ;
MULT_16b_pe mult_88 (
  .a(w_803),
  .b(w_802),
  .c(w_804),
  .clk(clk)
);
ADD_16b_pe add_89 (
  .a(w_800),
  .b(w_804),
  .c(w_805),
  .clk(clk)
);
assign  w_806  =  r19_w_conv1_1_stencil_0_0_1 ;
assign  w_807  =  w_repeat_edge_1_stencil_0_4_1 ;
assign  w_808  =  w_807 ;
assign  w_809  =  w_kernel_1_tap_stencil_0_4 ;
MULT_16b_pe mult_90 (
  .a(w_809),
  .b(w_808),
  .c(w_810),
  .clk(clk)
);
ADD_16b_pe add_91 (
  .a(w_810),
  .b(w_806),
  .c(w_811),
  .clk(clk)
);
assign  w_812  =  r20_w_conv1_1_stencil_0_0_1 ;
assign  w_813  =  w_repeat_edge_1_stencil_1_4_1 ;
assign  w_814  =  w_813 ;
assign  w_815  =  w_kernel_1_tap_stencil_1_4 ;
MULT_16b_pe mult_92 (
  .a(w_814),
  .b(w_815),
  .c(w_816),
  .clk(clk)
);
ADD_16b_pe add_93 (
  .a(w_816),
  .b(w_812),
  .c(w_817),
  .clk(clk)
);
assign  w_818  =  r21_w_conv1_1_stencil_0_0_1 ;
assign  w_819  =  w_repeat_edge_1_stencil_2_4_1 ;
assign  w_820  =  w_819 ;
assign  w_821  =  w_kernel_1_tap_stencil_2_4 ;
MULT_16b_pe mult_94 (
  .a(w_821),
  .b(w_820),
  .c(w_822),
  .clk(clk)
);
ADD_16b_pe add_95 (
  .a(w_818),
  .b(w_822),
  .c(w_823),
  .clk(clk)
);
assign  w_824  =  r22_w_conv1_1_stencil_0_0_1 ;
assign  w_825  =  w_repeat_edge_1_stencil_3_4_1 ;
assign  w_826  =  w_825 ;
assign  w_827  =  w_kernel_1_tap_stencil_3_4 ;
MULT_16b_pe mult_96 (
  .a(w_827),
  .b(w_826),
  .c(w_828),
  .clk(clk)
);
ADD_16b_pe add_97 (
  .a(w_824),
  .b(w_828),
  .c(w_829),
  .clk(clk)
);
assign  w_830  =  r23_w_conv1_1_stencil_0_0_1 ;
assign  w_831  =  w_repeat_edge_1_stencil_4_4_1 ;
assign  w_832  =  w_831 ;
assign  w_833  =  w_kernel_1_tap_stencil_4_4 ;
MULT_16b_pe mult_98 (
  .a(w_832),
  .b(w_833),
  .c(w_834),
  .clk(clk)
);
ADD_16b_pe add_99 (
  .a(w_834),
  .b(w_830),
  .c(w_835),
  .clk(clk)
);
assign  w_836  = 1'b0;
assign  w_837  =  w_repeat_edge_1_stencil_0_0_2 ;
assign  w_838  =  w_837 ;
assign  w_839  =  w_kernel_1_tap_stencil_0_0 ;
MULT_16b_pe mult_100 (
  .a(w_838),
  .b(w_839),
  .c(w_840),
  .clk(clk)
);
ADD_16b_pe add_101 (
  .a(w_836),
  .b(w_840),
  .c(w_841),
  .clk(clk)
);
assign  w_842  =  r0_w_conv1_1_stencil_0_0_2 ;
assign  w_843  =  w_repeat_edge_1_stencil_1_0_2 ;
assign  w_844  =  w_843 ;
assign  w_845  =  w_kernel_1_tap_stencil_1_0 ;
MULT_16b_pe mult_102 (
  .a(w_845),
  .b(w_844),
  .c(w_846),
  .clk(clk)
);
ADD_16b_pe add_103 (
  .a(w_846),
  .b(w_842),
  .c(w_847),
  .clk(clk)
);
assign  w_848  =  r1_w_conv1_1_stencil_0_0_2 ;
assign  w_849  =  w_repeat_edge_1_stencil_2_0_2 ;
assign  w_850  =  w_849 ;
assign  w_851  =  w_kernel_1_tap_stencil_2_0 ;
MULT_16b_pe mult_104 (
  .a(w_850),
  .b(w_851),
  .c(w_852),
  .clk(clk)
);
ADD_16b_pe add_105 (
  .a(w_852),
  .b(w_848),
  .c(w_853),
  .clk(clk)
);
assign  w_854  =  r2_w_conv1_1_stencil_0_0_2 ;
assign  w_855  =  w_repeat_edge_1_stencil_3_0_2 ;
assign  w_856  =  w_855 ;
assign  w_857  =  w_kernel_1_tap_stencil_3_0 ;
MULT_16b_pe mult_106 (
  .a(w_856),
  .b(w_857),
  .c(w_858),
  .clk(clk)
);
ADD_16b_pe add_107 (
  .a(w_858),
  .b(w_854),
  .c(w_859),
  .clk(clk)
);
assign  w_860  =  r3_w_conv1_1_stencil_0_0_2 ;
assign  w_861  =  w_repeat_edge_1_stencil_4_0_2 ;
assign  w_862  =  w_861 ;
assign  w_863  =  w_kernel_1_tap_stencil_4_0 ;
MULT_16b_pe mult_108 (
  .a(w_863),
  .b(w_862),
  .c(w_864),
  .clk(clk)
);
ADD_16b_pe add_109 (
  .a(w_860),
  .b(w_864),
  .c(w_865),
  .clk(clk)
);
assign  w_866  =  r4_w_conv1_1_stencil_0_0_2 ;
assign  w_867  =  w_repeat_edge_1_stencil_0_1_2 ;
assign  w_868  =  w_867 ;
assign  w_869  =  w_kernel_1_tap_stencil_0_1 ;
MULT_16b_pe mult_110 (
  .a(w_869),
  .b(w_868),
  .c(w_870),
  .clk(clk)
);
ADD_16b_pe add_111 (
  .a(w_870),
  .b(w_866),
  .c(w_871),
  .clk(clk)
);
assign  w_872  =  r5_w_conv1_1_stencil_0_0_2 ;
assign  w_873  =  w_repeat_edge_1_stencil_1_1_2 ;
assign  w_874  =  w_873 ;
assign  w_875  =  w_kernel_1_tap_stencil_1_1 ;
MULT_16b_pe mult_112 (
  .a(w_874),
  .b(w_875),
  .c(w_876),
  .clk(clk)
);
ADD_16b_pe add_113 (
  .a(w_872),
  .b(w_876),
  .c(w_877),
  .clk(clk)
);
assign  w_878  =  r6_w_conv1_1_stencil_0_0_2 ;
assign  w_879  =  w_repeat_edge_1_stencil_2_1_2 ;
assign  w_880  =  w_879 ;
assign  w_881  =  w_kernel_1_tap_stencil_2_1 ;
MULT_16b_pe mult_114 (
  .a(w_881),
  .b(w_880),
  .c(w_882),
  .clk(clk)
);
ADD_16b_pe add_115 (
  .a(w_882),
  .b(w_878),
  .c(w_883),
  .clk(clk)
);
assign  w_884  =  r7_w_conv1_1_stencil_0_0_2 ;
assign  w_885  =  w_repeat_edge_1_stencil_3_1_2 ;
assign  w_886  =  w_885 ;
assign  w_887  =  w_kernel_1_tap_stencil_3_1 ;
MULT_16b_pe mult_116 (
  .a(w_887),
  .b(w_886),
  .c(w_888),
  .clk(clk)
);
ADD_16b_pe add_117 (
  .a(w_888),
  .b(w_884),
  .c(w_889),
  .clk(clk)
);
assign  w_890  =  r8_w_conv1_1_stencil_0_0_2 ;
assign  w_891  =  w_repeat_edge_1_stencil_4_1_2 ;
assign  w_892  =  w_891 ;
assign  w_893  =  w_kernel_1_tap_stencil_4_1 ;
MULT_16b_pe mult_118 (
  .a(w_892),
  .b(w_893),
  .c(w_894),
  .clk(clk)
);
ADD_16b_pe add_119 (
  .a(w_894),
  .b(w_890),
  .c(w_895),
  .clk(clk)
);
assign  w_896  =  r9_w_conv1_1_stencil_0_0_2 ;
assign  w_897  =  w_repeat_edge_1_stencil_0_2_2 ;
assign  w_898  =  w_897 ;
assign  w_899  =  w_kernel_1_tap_stencil_0_2 ;
MULT_16b_pe mult_120 (
  .a(w_898),
  .b(w_899),
  .c(w_900),
  .clk(clk)
);
ADD_16b_pe add_121 (
  .a(w_896),
  .b(w_900),
  .c(w_901),
  .clk(clk)
);
assign  w_902  =  r10_w_conv1_1_stencil_0_0_2 ;
assign  w_903  =  w_repeat_edge_1_stencil_1_2_2 ;
assign  w_904  =  w_903 ;
assign  w_905  =  w_kernel_1_tap_stencil_1_2 ;
MULT_16b_pe mult_122 (
  .a(w_904),
  .b(w_905),
  .c(w_906),
  .clk(clk)
);
ADD_16b_pe add_123 (
  .a(w_902),
  .b(w_906),
  .c(w_907),
  .clk(clk)
);
assign  w_908  =  r11_w_conv1_1_stencil_0_0_2 ;
assign  w_909  =  w_repeat_edge_1_stencil_2_2_2 ;
assign  w_910  =  w_909 ;
assign  w_911  =  w_kernel_1_tap_stencil_2_2 ;
MULT_16b_pe mult_124 (
  .a(w_911),
  .b(w_910),
  .c(w_912),
  .clk(clk)
);
ADD_16b_pe add_125 (
  .a(w_908),
  .b(w_912),
  .c(w_913),
  .clk(clk)
);
assign  w_914  =  r12_w_conv1_1_stencil_0_0_2 ;
assign  w_915  =  w_repeat_edge_1_stencil_3_2_2 ;
assign  w_916  =  w_915 ;
assign  w_917  =  w_kernel_1_tap_stencil_3_2 ;
MULT_16b_pe mult_126 (
  .a(w_917),
  .b(w_916),
  .c(w_918),
  .clk(clk)
);
ADD_16b_pe add_127 (
  .a(w_918),
  .b(w_914),
  .c(w_919),
  .clk(clk)
);
assign  w_920  =  r13_w_conv1_1_stencil_0_0_2 ;
assign  w_921  =  w_repeat_edge_1_stencil_4_2_2 ;
assign  w_922  =  w_921 ;
assign  w_923  =  w_kernel_1_tap_stencil_4_2 ;
MULT_16b_pe mult_128 (
  .a(w_922),
  .b(w_923),
  .c(w_924),
  .clk(clk)
);
ADD_16b_pe add_129 (
  .a(w_920),
  .b(w_924),
  .c(w_925),
  .clk(clk)
);
assign  w_926  =  r14_w_conv1_1_stencil_0_0_2 ;
assign  w_927  =  w_repeat_edge_1_stencil_0_3_2 ;
assign  w_928  =  w_927 ;
assign  w_929  =  w_kernel_1_tap_stencil_0_3 ;
MULT_16b_pe mult_130 (
  .a(w_928),
  .b(w_929),
  .c(w_930),
  .clk(clk)
);
ADD_16b_pe add_131 (
  .a(w_926),
  .b(w_930),
  .c(w_931),
  .clk(clk)
);
assign  w_932  =  r15_w_conv1_1_stencil_0_0_2 ;
assign  w_933  =  w_repeat_edge_1_stencil_1_3_2 ;
assign  w_934  =  w_933 ;
assign  w_935  =  w_kernel_1_tap_stencil_1_3 ;
MULT_16b_pe mult_132 (
  .a(w_935),
  .b(w_934),
  .c(w_936),
  .clk(clk)
);
ADD_16b_pe add_133 (
  .a(w_936),
  .b(w_932),
  .c(w_937),
  .clk(clk)
);
assign  w_938  =  r16_w_conv1_1_stencil_0_0_2 ;
assign  w_939  =  w_repeat_edge_1_stencil_2_3_2 ;
assign  w_940  =  w_939 ;
assign  w_941  =  w_kernel_1_tap_stencil_2_3 ;
MULT_16b_pe mult_134 (
  .a(w_940),
  .b(w_941),
  .c(w_942),
  .clk(clk)
);
ADD_16b_pe add_135 (
  .a(w_942),
  .b(w_938),
  .c(w_943),
  .clk(clk)
);
assign  w_944  =  r17_w_conv1_1_stencil_0_0_2 ;
assign  w_945  =  w_repeat_edge_1_stencil_3_3_2 ;
assign  w_946  =  w_945 ;
assign  w_947  =  w_kernel_1_tap_stencil_3_3 ;
MULT_16b_pe mult_136 (
  .a(w_946),
  .b(w_947),
  .c(w_948),
  .clk(clk)
);
ADD_16b_pe add_137 (
  .a(w_944),
  .b(w_948),
  .c(w_949),
  .clk(clk)
);
assign  w_950  =  r18_w_conv1_1_stencil_0_0_2 ;
assign  w_951  =  w_repeat_edge_1_stencil_4_3_2 ;
assign  w_952  =  w_951 ;
assign  w_953  =  w_kernel_1_tap_stencil_4_3 ;
MULT_16b_pe mult_138 (
  .a(w_953),
  .b(w_952),
  .c(w_954),
  .clk(clk)
);
ADD_16b_pe add_139 (
  .a(w_954),
  .b(w_950),
  .c(w_955),
  .clk(clk)
);
assign  w_956  =  r19_w_conv1_1_stencil_0_0_2 ;
assign  w_957  =  w_repeat_edge_1_stencil_0_4_2 ;
assign  w_958  =  w_957 ;
assign  w_959  =  w_kernel_1_tap_stencil_0_4 ;
MULT_16b_pe mult_140 (
  .a(w_959),
  .b(w_958),
  .c(w_960),
  .clk(clk)
);
ADD_16b_pe add_141 (
  .a(w_956),
  .b(w_960),
  .c(w_961),
  .clk(clk)
);
assign  w_962  =  r20_w_conv1_1_stencil_0_0_2 ;
assign  w_963  =  w_repeat_edge_1_stencil_1_4_2 ;
assign  w_964  =  w_963 ;
assign  w_965  =  w_kernel_1_tap_stencil_1_4 ;
MULT_16b_pe mult_142 (
  .a(w_964),
  .b(w_965),
  .c(w_966),
  .clk(clk)
);
ADD_16b_pe add_143 (
  .a(w_966),
  .b(w_962),
  .c(w_967),
  .clk(clk)
);
assign  w_968  =  r21_w_conv1_1_stencil_0_0_2 ;
assign  w_969  =  w_repeat_edge_1_stencil_2_4_2 ;
assign  w_970  =  w_969 ;
assign  w_971  =  w_kernel_1_tap_stencil_2_4 ;
MULT_16b_pe mult_144 (
  .a(w_971),
  .b(w_970),
  .c(w_972),
  .clk(clk)
);
ADD_16b_pe add_145 (
  .a(w_972),
  .b(w_968),
  .c(w_973),
  .clk(clk)
);
assign  w_974  =  r22_w_conv1_1_stencil_0_0_2 ;
assign  w_975  =  w_repeat_edge_1_stencil_3_4_2 ;
assign  w_976  =  w_975 ;
assign  w_977  =  w_kernel_1_tap_stencil_3_4 ;
MULT_16b_pe mult_146 (
  .a(w_977),
  .b(w_976),
  .c(w_978),
  .clk(clk)
);
ADD_16b_pe add_147 (
  .a(w_978),
  .b(w_974),
  .c(w_979),
  .clk(clk)
);
assign  w_980  =  r23_w_conv1_1_stencil_0_0_2 ;
assign  w_981  =  w_repeat_edge_1_stencil_4_4_2 ;
assign  w_982  =  w_981 ;
assign  w_983  =  w_kernel_1_tap_stencil_4_4 ;
MULT_16b_pe mult_148 (
  .a(w_982),
  .b(w_983),
  .c(w_984),
  .clk(clk)
);
ADD_16b_pe add_149 (
  .a(w_980),
  .b(w_984),
  .c(w_985),
  .clk(clk)
);
assign  w_conv1_1_stencil_0_0_0  = 1'b0;
assign  w_conv1_1_stencil_0_0_1  = 1'b0;
assign  w_conv1_1_stencil_0_0_2  = 1'b0;

endmodule







module kernel__f1_stencil_stream(
//Inputs
  w_bias,
  w_conv1_1_stencil_0_0_0,
  w_conv1_1_stencil_0_0_1,
  w_conv1_1_stencil_0_0_2,
  w_conv1_1_stencil_0_1_0,
  w_conv1_1_stencil_0_1_1,
  w_conv1_1_stencil_0_1_2,
  w_conv1_1_stencil_0_2_0,
  w_conv1_1_stencil_0_2_1,
  w_conv1_1_stencil_0_2_2,
  w_conv1_1_stencil_0_3_0,
  w_conv1_1_stencil_0_3_1,
  w_conv1_1_stencil_0_3_2,
  w_conv1_1_stencil_0_4_0,
  w_conv1_1_stencil_0_4_1,
  w_conv1_1_stencil_0_4_2,
  w_conv1_1_stencil_1_0_0,
  w_conv1_1_stencil_1_0_1,
  w_conv1_1_stencil_1_0_2,
  w_conv1_1_stencil_1_1_0,
  w_conv1_1_stencil_1_1_1,
  w_conv1_1_stencil_1_1_2,
  w_conv1_1_stencil_1_2_0,
  w_conv1_1_stencil_1_2_1,
  w_conv1_1_stencil_1_2_2,
  w_conv1_1_stencil_1_3_0,
  w_conv1_1_stencil_1_3_1,
  w_conv1_1_stencil_1_3_2,
  w_conv1_1_stencil_1_4_0,
  w_conv1_1_stencil_1_4_1,
  w_conv1_1_stencil_1_4_2,
  w_conv1_1_stencil_2_0_0,
  w_conv1_1_stencil_2_0_1,
  w_conv1_1_stencil_2_0_2,
  w_conv1_1_stencil_2_1_0,
  w_conv1_1_stencil_2_1_1,
  w_conv1_1_stencil_2_1_2,
  w_conv1_1_stencil_2_2_0,
  w_conv1_1_stencil_2_2_1,
  w_conv1_1_stencil_2_2_2,
  w_conv1_1_stencil_2_3_0,
  w_conv1_1_stencil_2_3_1,
  w_conv1_1_stencil_2_3_2,
  w_conv1_1_stencil_2_4_0,
  w_conv1_1_stencil_2_4_1,
  w_conv1_1_stencil_2_4_2,
  w_conv1_1_stencil_3_0_0,
  w_conv1_1_stencil_3_0_1,
  w_conv1_1_stencil_3_0_2,
  w_conv1_1_stencil_3_1_0,
  w_conv1_1_stencil_3_1_1,
  w_conv1_1_stencil_3_1_2,
  w_conv1_1_stencil_3_2_0,
  w_conv1_1_stencil_3_2_1,
  w_conv1_1_stencil_3_2_2,
  w_conv1_1_stencil_3_3_0,
  w_conv1_1_stencil_3_3_1,
  w_conv1_1_stencil_3_3_2,
  w_conv1_1_stencil_3_4_0,
  w_conv1_1_stencil_3_4_1,
  w_conv1_1_stencil_3_4_2,
  w_conv1_1_stencil_4_0_0,
  w_conv1_1_stencil_4_0_1,
  w_conv1_1_stencil_4_0_2,
  w_conv1_1_stencil_4_1_0,
  w_conv1_1_stencil_4_1_1,
  w_conv1_1_stencil_4_1_2,
  w_conv1_1_stencil_4_2_0,
  w_conv1_1_stencil_4_2_1,
  w_conv1_1_stencil_4_2_2,
  w_conv1_1_stencil_4_3_0,
  w_conv1_1_stencil_4_3_1,
  w_conv1_1_stencil_4_3_2,
  w_conv1_1_stencil_4_4_0,
  w_conv1_1_stencil_4_4_1,
  w_conv1_1_stencil_4_4_2,
  w_weight_tap_stencil_0_0,
  w_weight_tap_stencil_0_1,
  w_weight_tap_stencil_0_2,
  w_weight_tap_stencil_0_3,
  w_weight_tap_stencil_0_4,
  w_weight_tap_stencil_1_0,
  w_weight_tap_stencil_1_1,
  w_weight_tap_stencil_1_2,
  w_weight_tap_stencil_1_3,
  w_weight_tap_stencil_1_4,
  w_weight_tap_stencil_2_0,
  w_weight_tap_stencil_2_1,
  w_weight_tap_stencil_2_2,
  w_weight_tap_stencil_2_3,
  w_weight_tap_stencil_2_4,
  w_weight_tap_stencil_3_0,
  w_weight_tap_stencil_3_1,
  w_weight_tap_stencil_3_2,
  w_weight_tap_stencil_3_3,
  w_weight_tap_stencil_3_4,
  w_weight_tap_stencil_4_0,
  w_weight_tap_stencil_4_1,
  w_weight_tap_stencil_4_2,
  w_weight_tap_stencil_4_3,
  w_weight_tap_stencil_4_4,
//Outputs
  out_w_f1_stencil_0_0_1,
  out_w_f1_stencil_0_0_2,
  out_w_f1_stencil_packed,

  clk
);

//Inputs
input  w_conv1_1_stencil_1_4_2;
input  w_conv1_1_stencil_1_4_1;
input  w_conv1_1_stencil_1_4_0;
input  w_bias;
input  w_conv1_1_stencil_1_2_1;
input  w_conv1_1_stencil_1_2_0;
input  w_conv1_1_stencil_1_2_2;
input  w_conv1_1_stencil_1_0_2;
input  w_conv1_1_stencil_1_0_1;
input  w_conv1_1_stencil_1_0_0;
input  w_conv1_1_stencil_3_1_0;
input  w_conv1_1_stencil_3_1_1;
input  w_weight_tap_stencil_3_2;
input  w_weight_tap_stencil_3_3;
input  w_weight_tap_stencil_3_0;
input  w_weight_tap_stencil_3_1;
input  w_weight_tap_stencil_3_4;
input  w_weight_tap_stencil_1_4;
input  w_weight_tap_stencil_1_0;
input  w_weight_tap_stencil_1_1;
input  w_weight_tap_stencil_1_2;
input  w_weight_tap_stencil_1_3;
input  w_conv1_1_stencil_3_3_0;
input  w_conv1_1_stencil_3_3_1;
input  w_conv1_1_stencil_0_3_1;
input  w_conv1_1_stencil_0_3_0;
input  w_conv1_1_stencil_0_3_2;
input  w_weight_tap_stencil_4_1;
input  w_weight_tap_stencil_4_0;
input  w_weight_tap_stencil_4_3;
input  w_weight_tap_stencil_4_2;
input  w_weight_tap_stencil_4_4;
input  w_conv1_1_stencil_0_1_2;
input  w_conv1_1_stencil_0_1_1;
input  w_conv1_1_stencil_0_1_0;
input  w_conv1_1_stencil_2_2_1;
input  w_conv1_1_stencil_2_1_1;
input  w_conv1_1_stencil_2_1_0;
input  w_conv1_1_stencil_3_1_2;
input  w_conv1_1_stencil_2_1_2;
input  w_weight_tap_stencil_2_3;
input  w_weight_tap_stencil_2_2;
input  w_weight_tap_stencil_2_1;
input  w_weight_tap_stencil_2_0;
input  w_weight_tap_stencil_2_4;
input  w_weight_tap_stencil_0_4;
input  w_weight_tap_stencil_0_1;
input  w_weight_tap_stencil_0_0;
input  w_weight_tap_stencil_0_3;
input  w_weight_tap_stencil_0_2;
input  w_conv1_1_stencil_0_4_2;
input  w_conv1_1_stencil_0_4_0;
input  w_conv1_1_stencil_0_4_1;
input  w_conv1_1_stencil_4_2_0;
input  w_conv1_1_stencil_4_2_1;
input  w_conv1_1_stencil_4_2_2;
input  w_conv1_1_stencil_0_2_0;
input  w_conv1_1_stencil_0_2_1;
input  w_conv1_1_stencil_0_2_2;
input  w_conv1_1_stencil_3_3_2;
input  w_conv1_1_stencil_2_3_2;
input  w_conv1_1_stencil_2_3_1;
input  w_conv1_1_stencil_2_3_0;
input  w_conv1_1_stencil_4_4_2;
input  w_conv1_1_stencil_4_4_0;
input  w_conv1_1_stencil_4_4_1;
input  w_conv1_1_stencil_1_3_1;
input  w_conv1_1_stencil_3_0_1;
input  w_conv1_1_stencil_3_0_0;
input  w_conv1_1_stencil_3_0_2;
input  w_conv1_1_stencil_1_3_2;
input  w_conv1_1_stencil_0_0_2;
input  w_conv1_1_stencil_0_0_0;
input  w_conv1_1_stencil_0_0_1;
input  w_conv1_1_stencil_4_0_2;
input  w_conv1_1_stencil_4_0_0;
input  w_conv1_1_stencil_4_0_1;
input  w_conv1_1_stencil_4_3_1;
input  w_conv1_1_stencil_4_3_0;
input  w_conv1_1_stencil_4_3_2;
input  w_conv1_1_stencil_2_4_0;
input  w_conv1_1_stencil_2_4_1;
input  w_conv1_1_stencil_2_4_2;
input  w_conv1_1_stencil_4_1_2;
input  w_conv1_1_stencil_4_1_1;
input  w_conv1_1_stencil_4_1_0;
input  w_conv1_1_stencil_2_0_0;
input  w_conv1_1_stencil_2_0_1;
input  w_conv1_1_stencil_2_0_2;
input  w_conv1_1_stencil_2_2_2;
input  w_conv1_1_stencil_1_3_0;
input  w_conv1_1_stencil_3_2_2;
input  w_conv1_1_stencil_3_2_1;
input  w_conv1_1_stencil_3_2_0;
input  w_conv1_1_stencil_1_1_2;
input  w_conv1_1_stencil_1_1_0;
input  w_conv1_1_stencil_1_1_1;
input  w_conv1_1_stencil_3_4_1;
input  w_conv1_1_stencil_3_4_0;
input  w_conv1_1_stencil_2_2_0;
input  w_conv1_1_stencil_3_4_2;
//Outputs
output  out_w_f1_stencil_packed;
output  out_w_f1_stencil_0_0_2;
output  out_w_f1_stencil_0_0_1;

input  clk;


wire  r0_w_local_sum_1a659_0;
wire  r0_w_local_sum_1a660_0;
wire  r0_w_local_sum_1a661_0;
wire  r10_w_local_sum_1a659_0;
wire  r10_w_local_sum_1a660_0;
wire  r10_w_local_sum_1a661_0;
wire  r11_w_local_sum_1a659_0;
wire  r11_w_local_sum_1a660_0;
wire  r11_w_local_sum_1a661_0;
wire  r12_w_local_sum_1a659_0;
wire  r12_w_local_sum_1a660_0;
wire  r12_w_local_sum_1a661_0;
wire  r13_w_local_sum_1a659_0;
wire  r13_w_local_sum_1a660_0;
wire  r13_w_local_sum_1a661_0;
wire  r14_w_local_sum_1a659_0;
wire  r14_w_local_sum_1a660_0;
wire  r14_w_local_sum_1a661_0;
wire  r15_w_local_sum_1a659_0;
wire  r15_w_local_sum_1a660_0;
wire  r15_w_local_sum_1a661_0;
wire  r16_w_local_sum_1a659_0;
wire  r16_w_local_sum_1a660_0;
wire  r16_w_local_sum_1a661_0;
wire  r17_w_local_sum_1a659_0;
wire  r17_w_local_sum_1a660_0;
wire  r17_w_local_sum_1a661_0;
wire  r18_w_local_sum_1a659_0;
wire  r18_w_local_sum_1a660_0;
wire  r18_w_local_sum_1a661_0;
wire  r19_w_local_sum_1a659_0;
wire  r19_w_local_sum_1a660_0;
wire  r19_w_local_sum_1a661_0;
wire  r1_w_local_sum_1a659_0;
wire  r1_w_local_sum_1a660_0;
wire  r1_w_local_sum_1a661_0;
wire  r20_w_local_sum_1a659_0;
wire  r20_w_local_sum_1a660_0;
wire  r20_w_local_sum_1a661_0;
wire  r21_w_local_sum_1a659_0;
wire  r21_w_local_sum_1a660_0;
wire  r21_w_local_sum_1a661_0;
wire  r22_w_local_sum_1a659_0;
wire  r22_w_local_sum_1a660_0;
wire  r22_w_local_sum_1a661_0;
wire  r23_w_local_sum_1a659_0;
wire  r23_w_local_sum_1a660_0;
wire  r23_w_local_sum_1a661_0;
wire  r24_w_local_sum_1a659_0;
wire  r24_w_local_sum_1a660_0;
wire  r24_w_local_sum_1a661_0;
wire  r2_w_local_sum_1a659_0;
wire  r2_w_local_sum_1a660_0;
wire  r2_w_local_sum_1a661_0;
wire  r3_w_local_sum_1a659_0;
wire  r3_w_local_sum_1a660_0;
wire  r3_w_local_sum_1a661_0;
wire  r4_w_local_sum_1a659_0;
wire  r4_w_local_sum_1a660_0;
wire  r4_w_local_sum_1a661_0;
wire  r5_w_local_sum_1a659_0;
wire  r5_w_local_sum_1a660_0;
wire  r5_w_local_sum_1a661_0;
wire  r6_w_local_sum_1a659_0;
wire  r6_w_local_sum_1a660_0;
wire  r6_w_local_sum_1a661_0;
wire  r7_w_local_sum_1a659_0;
wire  r7_w_local_sum_1a660_0;
wire  r7_w_local_sum_1a661_0;
wire  r8_w_local_sum_1a659_0;
wire  r8_w_local_sum_1a660_0;
wire  r8_w_local_sum_1a661_0;
wire  r9_w_local_sum_1a659_0;
wire  r9_w_local_sum_1a660_0;
wire  r9_w_local_sum_1a661_0;
wire  w_1000;
wire  w_1001;
wire  w_1002;
wire  w_1003;
wire  w_1004;
wire  w_1005;
wire  w_1006;
wire  w_1007;
wire  w_1008;
wire  w_1009;
wire  w_1010;
wire  w_1011;
wire  w_1012;
wire  w_1013;
wire  w_1014;
wire  w_1015;
wire  w_1016;
wire  w_1017;
wire  w_1018;
wire  w_1019;
wire  w_1020;
wire  w_1021;
wire  w_1022;
wire  w_1023;
wire  w_1024;
wire  w_1025;
wire  w_1026;
wire  w_1027;
wire  w_1028;
wire  w_1029;
wire  w_1030;
wire  w_1031;
wire  w_1032;
wire  w_1033;
wire  w_1034;
wire  w_1035;
wire  w_1036;
wire  w_1037;
wire  w_1038;
wire  w_1039;
wire  w_1040;
wire  w_1041;
wire  w_1042;
wire  w_1043;
wire  w_1044;
wire  w_1045;
wire  w_1046;
wire  w_1047;
wire  w_1048;
wire  w_1049;
wire  w_1050;
wire  w_1051;
wire  w_1052;
wire  w_1053;
wire  w_1054;
wire  w_1055;
wire  w_1056;
wire  w_1057;
wire  w_1058;
wire  w_1059;
wire  w_1060;
wire  w_1061;
wire  w_1062;
wire  w_1063;
wire  w_1064;
wire  w_1065;
wire  w_1066;
wire  w_1067;
wire  w_1068;
wire  w_1069;
wire  w_1070;
wire  w_1071;
wire  w_1072;
wire  w_1073;
wire  w_1074;
wire  w_1075;
wire  w_1076;
wire  w_1077;
wire  w_1078;
wire  w_1079;
wire  w_1080;
wire  w_1081;
wire  w_1082;
wire  w_1083;
wire  w_1084;
wire  w_1085;
wire  w_1086;
wire  w_1087;
wire  w_1088;
wire  w_1089;
wire  w_1090;
wire  w_1091;
wire  w_1092;
wire  w_1093;
wire  w_1094;
wire  w_1095;
wire  w_1096;
wire  w_1097;
wire  w_1098;
wire  w_1099;
wire  w_1100;
wire  w_1101;
wire  w_1102;
wire  w_1103;
wire  w_1104;
wire  w_1105;
wire  w_1106;
wire  w_1107;
wire  w_1108;
wire  w_1109;
wire  w_1110;
wire  w_1111;
wire  w_1112;
wire  w_1113;
wire  w_1114;
wire  w_1115;
wire  w_1116;
wire  w_1117;
wire  w_1118;
wire  w_1119;
wire  w_1120;
wire  w_1121;
wire  w_1122;
wire  w_1123;
wire  w_1124;
wire  w_1125;
wire  w_1126;
wire  w_1127;
wire  w_1128;
wire  w_1129;
wire  w_1130;
wire  w_1131;
wire  w_1132;
wire  w_1133;
wire  w_1134;
wire  w_1135;
wire  w_1136;
wire  w_1137;
wire  w_1138;
wire  w_1139;
wire  w_1140;
wire  w_1141;
wire  w_1142;
wire  w_1143;
wire  w_1144;
wire  w_1145;
wire  w_1146;
wire  w_1147;
wire  w_1148;
wire  w_1149;
wire  w_1150;
wire  w_1151;
wire  w_1152;
wire  w_1153;
wire  w_1154;
wire  w_1155;
wire  w_1156;
wire  w_1157;
wire  w_1158;
wire  w_1159;
wire  w_1160;
wire  w_1161;
wire  w_1162;
wire  w_1163;
wire  w_1164;
wire  w_1165;
wire  w_1166;
wire  w_1167;
wire  w_1168;
wire  w_1169;
wire  w_1170;
wire  w_1171;
wire  w_1172;
wire  w_1173;
wire  w_1174;
wire  w_1175;
wire  w_1176;
wire  w_1177;
wire  w_1178;
wire  w_1179;
wire  w_1180;
wire  w_1181;
wire  w_1182;
wire  w_1183;
wire  w_1184;
wire  w_1185;
wire  w_1186;
wire  w_1187;
wire  w_1188;
wire  w_1189;
wire  w_1190;
wire  w_1191;
wire  w_1192;
wire  w_1193;
wire  w_1194;
wire  w_1195;
wire  w_1196;
wire  w_1197;
wire  w_1198;
wire  w_1199;
wire  w_1200;
wire  w_1201;
wire  w_1202;
wire  w_1203;
wire  w_1204;
wire  w_1205;
wire  w_1206;
wire  w_1207;
wire  w_1208;
wire  w_1209;
wire  w_1210;
wire  w_1211;
wire  w_1212;
wire  w_1213;
wire  w_1214;
wire  w_1215;
wire  w_1216;
wire  w_1217;
wire  w_1218;
wire  w_1219;
wire  w_1220;
wire  w_1221;
wire  w_1222;
wire  w_1223;
wire  w_1224;
wire  w_1225;
wire  w_1226;
wire  w_1227;
wire  w_1228;
wire  w_1229;
wire  w_1230;
wire  w_1231;
wire  w_1232;
wire  w_1233;
wire  w_1234;
wire  w_1235;
wire  w_1236;
wire  w_1237;
wire  w_1238;
wire  w_1239;
wire  w_1240;
wire  w_1241;
wire  w_1242;
wire  w_1243;
wire  w_1244;
wire  w_1245;
wire  w_1246;
wire  w_1247;
wire  w_1248;
wire  w_1249;
wire  w_1250;
wire  w_1251;
wire  w_1252;
wire  w_1253;
wire  w_1254;
wire  w_1255;
wire  w_1256;
wire  w_1257;
wire  w_1258;
wire  w_1259;
wire  w_1260;
wire  w_1261;
wire  w_1262;
wire  w_1263;
wire  w_1264;
wire  w_1265;
wire  w_1266;
wire  w_1267;
wire  w_1268;
wire  w_1269;
wire  w_1270;
wire  w_1271;
wire  w_1272;
wire  w_1273;
wire  w_1274;
wire  w_1275;
wire  w_1276;
wire  w_1277;
wire  w_1278;
wire  w_1279;
wire  w_1280;
wire  w_1281;
wire  w_1282;
wire  w_1283;
wire  w_1284;
wire  w_1285;
wire  w_1286;
wire  w_1287;
wire  w_1288;
wire  w_1289;
wire  w_1290;
wire  w_1291;
wire  w_1292;
wire  w_1293;
wire  w_1294;
wire  w_1295;
wire  w_1296;
wire  w_1297;
wire  w_1298;
wire  w_1299;
wire  w_1300;
wire  w_1301;
wire  w_1302;
wire  w_1303;
wire  w_1304;
wire  w_1305;
wire  w_1306;
wire  w_1307;
wire  w_1308;
wire  w_1309;
wire  w_1310;
wire  w_1311;
wire  w_1312;
wire  w_1313;
wire  w_1314;
wire  w_1315;
wire  w_1316;
wire  w_1317;
wire  w_1318;
wire  w_1319;
wire  w_1320;
wire  w_1321;
wire  w_1322;
wire  w_1323;
wire  w_1324;
wire  w_1325;
wire  w_1326;
wire  w_1327;
wire  w_1328;
wire  w_1329;
wire  w_1330;
wire  w_1331;
wire  w_1332;
wire  w_1333;
wire  w_1334;
wire  w_1335;
wire  w_1336;
wire  w_1337;
wire  w_1338;
wire  w_1339;
wire  w_1340;
wire  w_1341;
wire  w_1342;
wire  w_1343;
wire  w_1344;
wire  w_1345;
wire  w_1346;
wire  w_1347;
wire  w_1348;
wire  w_1349;
wire  w_1350;
wire  w_1351;
wire  w_1352;
wire  w_1353;
wire  w_1354;
wire  w_1355;
wire  w_1356;
wire  w_1357;
wire  w_1358;
wire  w_1359;
wire  w_1360;
wire  w_1361;
wire  w_1362;
wire  w_1363;
wire  w_1364;
wire  w_1365;
wire  w_1366;
wire  w_1367;
wire  w_1368;
wire  w_1369;
wire  w_1370;
wire  w_1371;
wire  w_1372;
wire  w_1373;
wire  w_1374;
wire  w_1375;
wire  w_1376;
wire  w_1377;
wire  w_1378;
wire  w_1379;
wire  w_1380;
wire  w_1381;
wire  w_1382;
wire  w_1383;
wire  w_1384;
wire  w_1385;
wire  w_1386;
wire  w_1387;
wire  w_1388;
wire  w_1389;
wire  w_1390;
wire  w_1391;
wire  w_1392;
wire  w_1393;
wire  w_1394;
wire  w_1395;
wire  w_1396;
wire  w_1397;
wire  w_1398;
wire  w_1399;
wire  w_1400;
wire  w_1401;
wire  w_1402;
wire  w_1403;
wire  w_1404;
wire  w_1405;
wire  w_1406;
wire  w_1407;
wire  w_1408;
wire  w_1409;
wire  w_1410;
wire  w_1411;
wire  w_1412;
wire  w_1413;
wire  w_1414;
wire  w_1415;
wire  w_1416;
wire  w_1417;
wire  w_1418;
wire  w_1419;
wire  w_1420;
wire  w_1421;
wire  w_1422;
wire  w_1423;
wire  w_1424;
wire  w_1425;
wire  w_1426;
wire  w_1427;
wire  w_1428;
wire  w_1429;
wire  w_1430;
wire  w_1431;
wire  w_1432;
wire  w_1433;
wire  w_1434;
wire  w_1435;
wire  w_1436;
wire  w_1437;
wire  w_1438;
wire  w_1439;
wire  w_1440;
wire  w_1441;
wire  w_1442;
wire  w_1443;
wire  w_1444;
wire  w_986;
wire  w_987;
wire  w_988;
wire  w_989;
wire  w_990;
wire  w_991;
wire  w_992;
wire  w_993;
wire  w_994;
wire  w_995;
wire  w_996;
wire  w_997;
wire  w_998;
wire  w_999;
wire  w_f1_stencil_0_0_0;
wire  w_f1_stencil_0_0_1;
wire  w_f1_stencil_0_0_2;
wire  w_f1_stencil_packed;
wire  w_local_sum_1a659_0;
wire  w_local_sum_1a660_0;
wire  w_local_sum_1a661_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_f1_stencil_packed=w_f1_stencil_packed;
assign out_w_f1_stencil_0_0_2=w_f1_stencil_0_0_2;
assign out_w_f1_stencil_0_0_1=w_f1_stencil_0_0_1;
assign  r0_w_local_sum_1a659_0  =  w_991 ;
assign  r0_w_local_sum_1a660_0  =  w_1144 ;
assign  r0_w_local_sum_1a661_0  =  w_1297 ;
assign  r10_w_local_sum_1a659_0  =  w_1051 ;
assign  r10_w_local_sum_1a660_0  =  w_1204 ;
assign  r10_w_local_sum_1a661_0  =  w_1357 ;
assign  r11_w_local_sum_1a659_0  =  w_1057 ;
assign  r11_w_local_sum_1a660_0  =  w_1210 ;
assign  r11_w_local_sum_1a661_0  =  w_1363 ;
assign  r12_w_local_sum_1a659_0  =  w_1063 ;
assign  r12_w_local_sum_1a660_0  =  w_1216 ;
assign  r12_w_local_sum_1a661_0  =  w_1369 ;
assign  r13_w_local_sum_1a659_0  =  w_1069 ;
assign  r13_w_local_sum_1a660_0  =  w_1222 ;
assign  r13_w_local_sum_1a661_0  =  w_1375 ;
assign  r14_w_local_sum_1a659_0  =  w_1075 ;
assign  r14_w_local_sum_1a660_0  =  w_1228 ;
assign  r14_w_local_sum_1a661_0  =  w_1381 ;
assign  r15_w_local_sum_1a659_0  =  w_1081 ;
assign  r15_w_local_sum_1a660_0  =  w_1234 ;
assign  r15_w_local_sum_1a661_0  =  w_1387 ;
assign  r16_w_local_sum_1a659_0  =  w_1087 ;
assign  r16_w_local_sum_1a660_0  =  w_1240 ;
assign  r16_w_local_sum_1a661_0  =  w_1393 ;
assign  r17_w_local_sum_1a659_0  =  w_1093 ;
assign  r17_w_local_sum_1a660_0  =  w_1246 ;
assign  r17_w_local_sum_1a661_0  =  w_1399 ;
assign  r18_w_local_sum_1a659_0  =  w_1099 ;
assign  r18_w_local_sum_1a660_0  =  w_1252 ;
assign  r18_w_local_sum_1a661_0  =  w_1405 ;
assign  r19_w_local_sum_1a659_0  =  w_1105 ;
assign  r19_w_local_sum_1a660_0  =  w_1258 ;
assign  r19_w_local_sum_1a661_0  =  w_1411 ;
assign  r1_w_local_sum_1a659_0  =  w_997 ;
assign  r1_w_local_sum_1a660_0  =  w_1150 ;
assign  r1_w_local_sum_1a661_0  =  w_1303 ;
assign  r20_w_local_sum_1a659_0  =  w_1111 ;
assign  r20_w_local_sum_1a660_0  =  w_1264 ;
assign  r20_w_local_sum_1a661_0  =  w_1417 ;
assign  r21_w_local_sum_1a659_0  =  w_1117 ;
assign  r21_w_local_sum_1a660_0  =  w_1270 ;
assign  r21_w_local_sum_1a661_0  =  w_1423 ;
assign  r22_w_local_sum_1a659_0  =  w_1123 ;
assign  r22_w_local_sum_1a660_0  =  w_1276 ;
assign  r22_w_local_sum_1a661_0  =  w_1429 ;
assign  r23_w_local_sum_1a659_0  =  w_1129 ;
assign  r23_w_local_sum_1a660_0  =  w_1282 ;
assign  r23_w_local_sum_1a661_0  =  w_1435 ;
assign  r24_w_local_sum_1a659_0  =  w_1135 ;
assign  r24_w_local_sum_1a660_0  =  w_1288 ;
assign  r24_w_local_sum_1a661_0  =  w_1441 ;
assign  r2_w_local_sum_1a659_0  =  w_1003 ;
assign  r2_w_local_sum_1a660_0  =  w_1156 ;
assign  r2_w_local_sum_1a661_0  =  w_1309 ;
assign  r3_w_local_sum_1a659_0  =  w_1009 ;
assign  r3_w_local_sum_1a660_0  =  w_1162 ;
assign  r3_w_local_sum_1a661_0  =  w_1315 ;
assign  r4_w_local_sum_1a659_0  =  w_1015 ;
assign  r4_w_local_sum_1a660_0  =  w_1168 ;
assign  r4_w_local_sum_1a661_0  =  w_1321 ;
assign  r5_w_local_sum_1a659_0  =  w_1021 ;
assign  r5_w_local_sum_1a660_0  =  w_1174 ;
assign  r5_w_local_sum_1a661_0  =  w_1327 ;
assign  r6_w_local_sum_1a659_0  =  w_1027 ;
assign  r6_w_local_sum_1a660_0  =  w_1180 ;
assign  r6_w_local_sum_1a661_0  =  w_1333 ;
assign  r7_w_local_sum_1a659_0  =  w_1033 ;
assign  r7_w_local_sum_1a660_0  =  w_1186 ;
assign  r7_w_local_sum_1a661_0  =  w_1339 ;
assign  r8_w_local_sum_1a659_0  =  w_1039 ;
assign  r8_w_local_sum_1a660_0  =  w_1192 ;
assign  r8_w_local_sum_1a661_0  =  w_1345 ;
assign  r9_w_local_sum_1a659_0  =  w_1045 ;
assign  r9_w_local_sum_1a660_0  =  w_1198 ;
assign  r9_w_local_sum_1a661_0  =  w_1351 ;
assign  w_1000  =  w_weight_tap_stencil_2_0 ;
assign  w_1001  =  w_1000 ;
MULT_16b_pe mult_0 (
  .a(w_999),
  .b(w_1001),
  .c(w_1002),
  .clk(clk)
);
ADD_16b_pe add_1 (
  .a(w_998),
  .b(w_1002),
  .c(w_1003),
  .clk(clk)
);
assign  w_1004  =  r2_w_local_sum_1a659_0 ;
assign  w_1005  =  w_conv1_1_stencil_3_0_0 ;
assign  w_1006  =  w_weight_tap_stencil_3_0 ;
assign  w_1007  =  w_1006 ;
MULT_16b_pe mult_2 (
  .a(w_1007),
  .b(w_1005),
  .c(w_1008),
  .clk(clk)
);
ADD_16b_pe add_3 (
  .a(w_1008),
  .b(w_1004),
  .c(w_1009),
  .clk(clk)
);
assign  w_1010  =  r3_w_local_sum_1a659_0 ;
assign  w_1011  =  w_conv1_1_stencil_4_0_0 ;
assign  w_1012  =  w_weight_tap_stencil_4_0 ;
assign  w_1013  =  w_1012 ;
MULT_16b_pe mult_4 (
  .a(w_1011),
  .b(w_1013),
  .c(w_1014),
  .clk(clk)
);
ADD_16b_pe add_5 (
  .a(w_1014),
  .b(w_1010),
  .c(w_1015),
  .clk(clk)
);
assign  w_1016  =  r4_w_local_sum_1a659_0 ;
assign  w_1017  =  w_conv1_1_stencil_0_1_0 ;
assign  w_1018  =  w_weight_tap_stencil_0_1 ;
assign  w_1019  =  w_1018 ;
MULT_16b_pe mult_6 (
  .a(w_1017),
  .b(w_1019),
  .c(w_1020),
  .clk(clk)
);
ADD_16b_pe add_7 (
  .a(w_1020),
  .b(w_1016),
  .c(w_1021),
  .clk(clk)
);
assign  w_1022  =  r5_w_local_sum_1a659_0 ;
assign  w_1023  =  w_conv1_1_stencil_1_1_0 ;
assign  w_1024  =  w_weight_tap_stencil_1_1 ;
assign  w_1025  =  w_1024 ;
MULT_16b_pe mult_8 (
  .a(w_1023),
  .b(w_1025),
  .c(w_1026),
  .clk(clk)
);
ADD_16b_pe add_9 (
  .a(w_1022),
  .b(w_1026),
  .c(w_1027),
  .clk(clk)
);
assign  w_1028  =  r6_w_local_sum_1a659_0 ;
assign  w_1029  =  w_conv1_1_stencil_2_1_0 ;
assign  w_1030  =  w_weight_tap_stencil_2_1 ;
assign  w_1031  =  w_1030 ;
MULT_16b_pe mult_10 (
  .a(w_1029),
  .b(w_1031),
  .c(w_1032),
  .clk(clk)
);
ADD_16b_pe add_11 (
  .a(w_1032),
  .b(w_1028),
  .c(w_1033),
  .clk(clk)
);
assign  w_1034  =  r7_w_local_sum_1a659_0 ;
assign  w_1035  =  w_conv1_1_stencil_3_1_0 ;
assign  w_1036  =  w_weight_tap_stencil_3_1 ;
assign  w_1037  =  w_1036 ;
MULT_16b_pe mult_12 (
  .a(w_1037),
  .b(w_1035),
  .c(w_1038),
  .clk(clk)
);
ADD_16b_pe add_13 (
  .a(w_1038),
  .b(w_1034),
  .c(w_1039),
  .clk(clk)
);
assign  w_1040  =  r8_w_local_sum_1a659_0 ;
assign  w_1041  =  w_conv1_1_stencil_4_1_0 ;
assign  w_1042  =  w_weight_tap_stencil_4_1 ;
assign  w_1043  =  w_1042 ;
MULT_16b_pe mult_14 (
  .a(w_1043),
  .b(w_1041),
  .c(w_1044),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_1044),
  .b(w_1040),
  .c(w_1045),
  .clk(clk)
);
assign  w_1046  =  r9_w_local_sum_1a659_0 ;
assign  w_1047  =  w_conv1_1_stencil_0_2_0 ;
assign  w_1048  =  w_weight_tap_stencil_0_2 ;
assign  w_1049  =  w_1048 ;
MULT_16b_pe mult_16 (
  .a(w_1047),
  .b(w_1049),
  .c(w_1050),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_1050),
  .b(w_1046),
  .c(w_1051),
  .clk(clk)
);
assign  w_1052  =  r10_w_local_sum_1a659_0 ;
assign  w_1053  =  w_conv1_1_stencil_1_2_0 ;
assign  w_1054  =  w_weight_tap_stencil_1_2 ;
assign  w_1055  =  w_1054 ;
MULT_16b_pe mult_18 (
  .a(w_1053),
  .b(w_1055),
  .c(w_1056),
  .clk(clk)
);
ADD_16b_pe add_19 (
  .a(w_1052),
  .b(w_1056),
  .c(w_1057),
  .clk(clk)
);
assign  w_1058  =  r11_w_local_sum_1a659_0 ;
assign  w_1059  =  w_conv1_1_stencil_2_2_0 ;
assign  w_1060  =  w_weight_tap_stencil_2_2 ;
assign  w_1061  =  w_1060 ;
MULT_16b_pe mult_20 (
  .a(w_1059),
  .b(w_1061),
  .c(w_1062),
  .clk(clk)
);
ADD_16b_pe add_21 (
  .a(w_1058),
  .b(w_1062),
  .c(w_1063),
  .clk(clk)
);
assign  w_1064  =  r12_w_local_sum_1a659_0 ;
assign  w_1065  =  w_conv1_1_stencil_3_2_0 ;
assign  w_1066  =  w_weight_tap_stencil_3_2 ;
assign  w_1067  =  w_1066 ;
MULT_16b_pe mult_22 (
  .a(w_1065),
  .b(w_1067),
  .c(w_1068),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_1064),
  .b(w_1068),
  .c(w_1069),
  .clk(clk)
);
assign  w_1070  =  r13_w_local_sum_1a659_0 ;
assign  w_1071  =  w_conv1_1_stencil_4_2_0 ;
assign  w_1072  =  w_weight_tap_stencil_4_2 ;
assign  w_1073  =  w_1072 ;
MULT_16b_pe mult_24 (
  .a(w_1073),
  .b(w_1071),
  .c(w_1074),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_1074),
  .b(w_1070),
  .c(w_1075),
  .clk(clk)
);
assign  w_1076  =  r14_w_local_sum_1a659_0 ;
assign  w_1077  =  w_conv1_1_stencil_0_3_0 ;
assign  w_1078  =  w_weight_tap_stencil_0_3 ;
assign  w_1079  =  w_1078 ;
MULT_16b_pe mult_26 (
  .a(w_1077),
  .b(w_1079),
  .c(w_1080),
  .clk(clk)
);
ADD_16b_pe add_27 (
  .a(w_1076),
  .b(w_1080),
  .c(w_1081),
  .clk(clk)
);
assign  w_1082  =  r15_w_local_sum_1a659_0 ;
assign  w_1083  =  w_conv1_1_stencil_1_3_0 ;
assign  w_1084  =  w_weight_tap_stencil_1_3 ;
assign  w_1085  =  w_1084 ;
MULT_16b_pe mult_28 (
  .a(w_1083),
  .b(w_1085),
  .c(w_1086),
  .clk(clk)
);
ADD_16b_pe add_29 (
  .a(w_1082),
  .b(w_1086),
  .c(w_1087),
  .clk(clk)
);
assign  w_1088  =  r16_w_local_sum_1a659_0 ;
assign  w_1089  =  w_conv1_1_stencil_2_3_0 ;
assign  w_1090  =  w_weight_tap_stencil_2_3 ;
assign  w_1091  =  w_1090 ;
MULT_16b_pe mult_30 (
  .a(w_1089),
  .b(w_1091),
  .c(w_1092),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_1088),
  .b(w_1092),
  .c(w_1093),
  .clk(clk)
);
assign  w_1094  =  r17_w_local_sum_1a659_0 ;
assign  w_1095  =  w_conv1_1_stencil_3_3_0 ;
assign  w_1096  =  w_weight_tap_stencil_3_3 ;
assign  w_1097  =  w_1096 ;
MULT_16b_pe mult_32 (
  .a(w_1095),
  .b(w_1097),
  .c(w_1098),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_1094),
  .b(w_1098),
  .c(w_1099),
  .clk(clk)
);
assign  w_1100  =  r18_w_local_sum_1a659_0 ;
assign  w_1101  =  w_conv1_1_stencil_4_3_0 ;
assign  w_1102  =  w_weight_tap_stencil_4_3 ;
assign  w_1103  =  w_1102 ;
MULT_16b_pe mult_34 (
  .a(w_1103),
  .b(w_1101),
  .c(w_1104),
  .clk(clk)
);
ADD_16b_pe add_35 (
  .a(w_1100),
  .b(w_1104),
  .c(w_1105),
  .clk(clk)
);
assign  w_1106  =  r19_w_local_sum_1a659_0 ;
assign  w_1107  =  w_conv1_1_stencil_0_4_0 ;
assign  w_1108  =  w_weight_tap_stencil_0_4 ;
assign  w_1109  =  w_1108 ;
MULT_16b_pe mult_36 (
  .a(w_1109),
  .b(w_1107),
  .c(w_1110),
  .clk(clk)
);
ADD_16b_pe add_37 (
  .a(w_1110),
  .b(w_1106),
  .c(w_1111),
  .clk(clk)
);
assign  w_1112  =  r20_w_local_sum_1a659_0 ;
assign  w_1113  =  w_conv1_1_stencil_1_4_0 ;
assign  w_1114  =  w_weight_tap_stencil_1_4 ;
assign  w_1115  =  w_1114 ;
MULT_16b_pe mult_38 (
  .a(w_1113),
  .b(w_1115),
  .c(w_1116),
  .clk(clk)
);
ADD_16b_pe add_39 (
  .a(w_1112),
  .b(w_1116),
  .c(w_1117),
  .clk(clk)
);
assign  w_1118  =  r21_w_local_sum_1a659_0 ;
assign  w_1119  =  w_conv1_1_stencil_2_4_0 ;
assign  w_1120  =  w_weight_tap_stencil_2_4 ;
assign  w_1121  =  w_1120 ;
MULT_16b_pe mult_40 (
  .a(w_1119),
  .b(w_1121),
  .c(w_1122),
  .clk(clk)
);
ADD_16b_pe add_41 (
  .a(w_1118),
  .b(w_1122),
  .c(w_1123),
  .clk(clk)
);
assign  w_1124  =  r22_w_local_sum_1a659_0 ;
assign  w_1125  =  w_conv1_1_stencil_3_4_0 ;
assign  w_1126  =  w_weight_tap_stencil_3_4 ;
assign  w_1127  =  w_1126 ;
MULT_16b_pe mult_42 (
  .a(w_1125),
  .b(w_1127),
  .c(w_1128),
  .clk(clk)
);
ADD_16b_pe add_43 (
  .a(w_1124),
  .b(w_1128),
  .c(w_1129),
  .clk(clk)
);
assign  w_1130  =  r23_w_local_sum_1a659_0 ;
assign  w_1131  =  w_conv1_1_stencil_4_4_0 ;
assign  w_1132  =  w_weight_tap_stencil_4_4 ;
assign  w_1133  =  w_1132 ;
MULT_16b_pe mult_44 (
  .a(w_1133),
  .b(w_1131),
  .c(w_1134),
  .clk(clk)
);
ADD_16b_pe add_45 (
  .a(w_1130),
  .b(w_1134),
  .c(w_1135),
  .clk(clk)
);
assign  w_1136  =  r24_w_local_sum_1a659_0 ;
LSHIFT_16b_pe lshift_46 (
  .a(1'b0),
  .b(w_1136),
  .c(w_1137),
  .clk(clk)
);
assign  w_1138  =  w_1137 ;
assign  w_1139  =  w_local_sum_1a660_0 ;
assign  w_1140  =  w_conv1_1_stencil_0_0_1 ;
assign  w_1141  =  w_weight_tap_stencil_0_0 ;
assign  w_1142  =  w_1141 ;
MULT_16b_pe mult_47 (
  .a(w_1142),
  .b(w_1140),
  .c(w_1143),
  .clk(clk)
);
ADD_16b_pe add_48 (
  .a(w_1139),
  .b(w_1143),
  .c(w_1144),
  .clk(clk)
);
assign  w_1145  =  r0_w_local_sum_1a660_0 ;
assign  w_1146  =  w_conv1_1_stencil_1_0_1 ;
assign  w_1147  =  w_weight_tap_stencil_1_0 ;
assign  w_1148  =  w_1147 ;
MULT_16b_pe mult_49 (
  .a(w_1146),
  .b(w_1148),
  .c(w_1149),
  .clk(clk)
);
ADD_16b_pe add_50 (
  .a(w_1145),
  .b(w_1149),
  .c(w_1150),
  .clk(clk)
);
assign  w_1151  =  r1_w_local_sum_1a660_0 ;
assign  w_1152  =  w_conv1_1_stencil_2_0_1 ;
assign  w_1153  =  w_weight_tap_stencil_2_0 ;
assign  w_1154  =  w_1153 ;
MULT_16b_pe mult_51 (
  .a(w_1154),
  .b(w_1152),
  .c(w_1155),
  .clk(clk)
);
ADD_16b_pe add_52 (
  .a(w_1155),
  .b(w_1151),
  .c(w_1156),
  .clk(clk)
);
assign  w_1157  =  r2_w_local_sum_1a660_0 ;
assign  w_1158  =  w_conv1_1_stencil_3_0_1 ;
assign  w_1159  =  w_weight_tap_stencil_3_0 ;
assign  w_1160  =  w_1159 ;
MULT_16b_pe mult_53 (
  .a(w_1160),
  .b(w_1158),
  .c(w_1161),
  .clk(clk)
);
ADD_16b_pe add_54 (
  .a(w_1161),
  .b(w_1157),
  .c(w_1162),
  .clk(clk)
);
assign  w_1163  =  r3_w_local_sum_1a660_0 ;
assign  w_1164  =  w_conv1_1_stencil_4_0_1 ;
assign  w_1165  =  w_weight_tap_stencil_4_0 ;
assign  w_1166  =  w_1165 ;
MULT_16b_pe mult_55 (
  .a(w_1164),
  .b(w_1166),
  .c(w_1167),
  .clk(clk)
);
ADD_16b_pe add_56 (
  .a(w_1163),
  .b(w_1167),
  .c(w_1168),
  .clk(clk)
);
assign  w_1169  =  r4_w_local_sum_1a660_0 ;
assign  w_1170  =  w_conv1_1_stencil_0_1_1 ;
assign  w_1171  =  w_weight_tap_stencil_0_1 ;
assign  w_1172  =  w_1171 ;
MULT_16b_pe mult_57 (
  .a(w_1172),
  .b(w_1170),
  .c(w_1173),
  .clk(clk)
);
ADD_16b_pe add_58 (
  .a(w_1169),
  .b(w_1173),
  .c(w_1174),
  .clk(clk)
);
assign  w_1175  =  r5_w_local_sum_1a660_0 ;
assign  w_1176  =  w_conv1_1_stencil_1_1_1 ;
assign  w_1177  =  w_weight_tap_stencil_1_1 ;
assign  w_1178  =  w_1177 ;
MULT_16b_pe mult_59 (
  .a(w_1176),
  .b(w_1178),
  .c(w_1179),
  .clk(clk)
);
ADD_16b_pe add_60 (
  .a(w_1175),
  .b(w_1179),
  .c(w_1180),
  .clk(clk)
);
assign  w_1181  =  r6_w_local_sum_1a660_0 ;
assign  w_1182  =  w_conv1_1_stencil_2_1_1 ;
assign  w_1183  =  w_weight_tap_stencil_2_1 ;
assign  w_1184  =  w_1183 ;
MULT_16b_pe mult_61 (
  .a(w_1182),
  .b(w_1184),
  .c(w_1185),
  .clk(clk)
);
ADD_16b_pe add_62 (
  .a(w_1181),
  .b(w_1185),
  .c(w_1186),
  .clk(clk)
);
assign  w_1187  =  r7_w_local_sum_1a660_0 ;
assign  w_1188  =  w_conv1_1_stencil_3_1_1 ;
assign  w_1189  =  w_weight_tap_stencil_3_1 ;
assign  w_1190  =  w_1189 ;
MULT_16b_pe mult_63 (
  .a(w_1190),
  .b(w_1188),
  .c(w_1191),
  .clk(clk)
);
ADD_16b_pe add_64 (
  .a(w_1191),
  .b(w_1187),
  .c(w_1192),
  .clk(clk)
);
assign  w_1193  =  r8_w_local_sum_1a660_0 ;
assign  w_1194  =  w_conv1_1_stencil_4_1_1 ;
assign  w_1195  =  w_weight_tap_stencil_4_1 ;
assign  w_1196  =  w_1195 ;
MULT_16b_pe mult_65 (
  .a(w_1194),
  .b(w_1196),
  .c(w_1197),
  .clk(clk)
);
ADD_16b_pe add_66 (
  .a(w_1193),
  .b(w_1197),
  .c(w_1198),
  .clk(clk)
);
assign  w_1199  =  r9_w_local_sum_1a660_0 ;
assign  w_1200  =  w_conv1_1_stencil_0_2_1 ;
assign  w_1201  =  w_weight_tap_stencil_0_2 ;
assign  w_1202  =  w_1201 ;
MULT_16b_pe mult_67 (
  .a(w_1200),
  .b(w_1202),
  .c(w_1203),
  .clk(clk)
);
ADD_16b_pe add_68 (
  .a(w_1199),
  .b(w_1203),
  .c(w_1204),
  .clk(clk)
);
assign  w_1205  =  r10_w_local_sum_1a660_0 ;
assign  w_1206  =  w_conv1_1_stencil_1_2_1 ;
assign  w_1207  =  w_weight_tap_stencil_1_2 ;
assign  w_1208  =  w_1207 ;
MULT_16b_pe mult_69 (
  .a(w_1208),
  .b(w_1206),
  .c(w_1209),
  .clk(clk)
);
ADD_16b_pe add_70 (
  .a(w_1209),
  .b(w_1205),
  .c(w_1210),
  .clk(clk)
);
assign  w_1211  =  r11_w_local_sum_1a660_0 ;
assign  w_1212  =  w_conv1_1_stencil_2_2_1 ;
assign  w_1213  =  w_weight_tap_stencil_2_2 ;
assign  w_1214  =  w_1213 ;
MULT_16b_pe mult_71 (
  .a(w_1212),
  .b(w_1214),
  .c(w_1215),
  .clk(clk)
);
ADD_16b_pe add_72 (
  .a(w_1211),
  .b(w_1215),
  .c(w_1216),
  .clk(clk)
);
assign  w_1217  =  r12_w_local_sum_1a660_0 ;
assign  w_1218  =  w_conv1_1_stencil_3_2_1 ;
assign  w_1219  =  w_weight_tap_stencil_3_2 ;
assign  w_1220  =  w_1219 ;
MULT_16b_pe mult_73 (
  .a(w_1218),
  .b(w_1220),
  .c(w_1221),
  .clk(clk)
);
ADD_16b_pe add_74 (
  .a(w_1221),
  .b(w_1217),
  .c(w_1222),
  .clk(clk)
);
assign  w_1223  =  r13_w_local_sum_1a660_0 ;
assign  w_1224  =  w_conv1_1_stencil_4_2_1 ;
assign  w_1225  =  w_weight_tap_stencil_4_2 ;
assign  w_1226  =  w_1225 ;
MULT_16b_pe mult_75 (
  .a(w_1226),
  .b(w_1224),
  .c(w_1227),
  .clk(clk)
);
ADD_16b_pe add_76 (
  .a(w_1223),
  .b(w_1227),
  .c(w_1228),
  .clk(clk)
);
assign  w_1229  =  r14_w_local_sum_1a660_0 ;
assign  w_1230  =  w_conv1_1_stencil_0_3_1 ;
assign  w_1231  =  w_weight_tap_stencil_0_3 ;
assign  w_1232  =  w_1231 ;
MULT_16b_pe mult_77 (
  .a(w_1230),
  .b(w_1232),
  .c(w_1233),
  .clk(clk)
);
ADD_16b_pe add_78 (
  .a(w_1229),
  .b(w_1233),
  .c(w_1234),
  .clk(clk)
);
assign  w_1235  =  r15_w_local_sum_1a660_0 ;
assign  w_1236  =  w_conv1_1_stencil_1_3_1 ;
assign  w_1237  =  w_weight_tap_stencil_1_3 ;
assign  w_1238  =  w_1237 ;
MULT_16b_pe mult_79 (
  .a(w_1236),
  .b(w_1238),
  .c(w_1239),
  .clk(clk)
);
ADD_16b_pe add_80 (
  .a(w_1235),
  .b(w_1239),
  .c(w_1240),
  .clk(clk)
);
assign  w_1241  =  r16_w_local_sum_1a660_0 ;
assign  w_1242  =  w_conv1_1_stencil_2_3_1 ;
assign  w_1243  =  w_weight_tap_stencil_2_3 ;
assign  w_1244  =  w_1243 ;
MULT_16b_pe mult_81 (
  .a(w_1244),
  .b(w_1242),
  .c(w_1245),
  .clk(clk)
);
ADD_16b_pe add_82 (
  .a(w_1245),
  .b(w_1241),
  .c(w_1246),
  .clk(clk)
);
assign  w_1247  =  r17_w_local_sum_1a660_0 ;
assign  w_1248  =  w_conv1_1_stencil_3_3_1 ;
assign  w_1249  =  w_weight_tap_stencil_3_3 ;
assign  w_1250  =  w_1249 ;
MULT_16b_pe mult_83 (
  .a(w_1248),
  .b(w_1250),
  .c(w_1251),
  .clk(clk)
);
ADD_16b_pe add_84 (
  .a(w_1247),
  .b(w_1251),
  .c(w_1252),
  .clk(clk)
);
assign  w_1253  =  r18_w_local_sum_1a660_0 ;
assign  w_1254  =  w_conv1_1_stencil_4_3_1 ;
assign  w_1255  =  w_weight_tap_stencil_4_3 ;
assign  w_1256  =  w_1255 ;
MULT_16b_pe mult_85 (
  .a(w_1256),
  .b(w_1254),
  .c(w_1257),
  .clk(clk)
);
ADD_16b_pe add_86 (
  .a(w_1257),
  .b(w_1253),
  .c(w_1258),
  .clk(clk)
);
assign  w_1259  =  r19_w_local_sum_1a660_0 ;
assign  w_1260  =  w_conv1_1_stencil_0_4_1 ;
assign  w_1261  =  w_weight_tap_stencil_0_4 ;
assign  w_1262  =  w_1261 ;
MULT_16b_pe mult_87 (
  .a(w_1262),
  .b(w_1260),
  .c(w_1263),
  .clk(clk)
);
ADD_16b_pe add_88 (
  .a(w_1263),
  .b(w_1259),
  .c(w_1264),
  .clk(clk)
);
assign  w_1265  =  r20_w_local_sum_1a660_0 ;
assign  w_1266  =  w_conv1_1_stencil_1_4_1 ;
assign  w_1267  =  w_weight_tap_stencil_1_4 ;
assign  w_1268  =  w_1267 ;
MULT_16b_pe mult_89 (
  .a(w_1266),
  .b(w_1268),
  .c(w_1269),
  .clk(clk)
);
ADD_16b_pe add_90 (
  .a(w_1265),
  .b(w_1269),
  .c(w_1270),
  .clk(clk)
);
assign  w_1271  =  r21_w_local_sum_1a660_0 ;
assign  w_1272  =  w_conv1_1_stencil_2_4_1 ;
assign  w_1273  =  w_weight_tap_stencil_2_4 ;
assign  w_1274  =  w_1273 ;
MULT_16b_pe mult_91 (
  .a(w_1272),
  .b(w_1274),
  .c(w_1275),
  .clk(clk)
);
ADD_16b_pe add_92 (
  .a(w_1271),
  .b(w_1275),
  .c(w_1276),
  .clk(clk)
);
assign  w_1277  =  r22_w_local_sum_1a660_0 ;
assign  w_1278  =  w_conv1_1_stencil_3_4_1 ;
assign  w_1279  =  w_weight_tap_stencil_3_4 ;
assign  w_1280  =  w_1279 ;
MULT_16b_pe mult_93 (
  .a(w_1278),
  .b(w_1280),
  .c(w_1281),
  .clk(clk)
);
ADD_16b_pe add_94 (
  .a(w_1281),
  .b(w_1277),
  .c(w_1282),
  .clk(clk)
);
assign  w_1283  =  r23_w_local_sum_1a660_0 ;
assign  w_1284  =  w_conv1_1_stencil_4_4_1 ;
assign  w_1285  =  w_weight_tap_stencil_4_4 ;
assign  w_1286  =  w_1285 ;
MULT_16b_pe mult_95 (
  .a(w_1284),
  .b(w_1286),
  .c(w_1287),
  .clk(clk)
);
ADD_16b_pe add_96 (
  .a(w_1283),
  .b(w_1287),
  .c(w_1288),
  .clk(clk)
);
assign  w_1289  =  r24_w_local_sum_1a660_0 ;
LSHIFT_16b_pe lshift_97 (
  .a(w_1289),
  .b(1'b0),
  .c(w_1290),
  .clk(clk)
);
assign  w_1291  =  w_1290 ;
assign  w_1292  =  w_local_sum_1a661_0 ;
assign  w_1293  =  w_conv1_1_stencil_0_0_2 ;
assign  w_1294  =  w_weight_tap_stencil_0_0 ;
assign  w_1295  =  w_1294 ;
MULT_16b_pe mult_98 (
  .a(w_1293),
  .b(w_1295),
  .c(w_1296),
  .clk(clk)
);
ADD_16b_pe add_99 (
  .a(w_1292),
  .b(w_1296),
  .c(w_1297),
  .clk(clk)
);
assign  w_1298  =  r0_w_local_sum_1a661_0 ;
assign  w_1299  =  w_conv1_1_stencil_1_0_2 ;
assign  w_1300  =  w_weight_tap_stencil_1_0 ;
assign  w_1301  =  w_1300 ;
MULT_16b_pe mult_100 (
  .a(w_1301),
  .b(w_1299),
  .c(w_1302),
  .clk(clk)
);
ADD_16b_pe add_101 (
  .a(w_1298),
  .b(w_1302),
  .c(w_1303),
  .clk(clk)
);
assign  w_1304  =  r1_w_local_sum_1a661_0 ;
assign  w_1305  =  w_conv1_1_stencil_2_0_2 ;
assign  w_1306  =  w_weight_tap_stencil_2_0 ;
assign  w_1307  =  w_1306 ;
MULT_16b_pe mult_102 (
  .a(w_1305),
  .b(w_1307),
  .c(w_1308),
  .clk(clk)
);
ADD_16b_pe add_103 (
  .a(w_1308),
  .b(w_1304),
  .c(w_1309),
  .clk(clk)
);
assign  w_1310  =  r2_w_local_sum_1a661_0 ;
assign  w_1311  =  w_conv1_1_stencil_3_0_2 ;
assign  w_1312  =  w_weight_tap_stencil_3_0 ;
assign  w_1313  =  w_1312 ;
MULT_16b_pe mult_104 (
  .a(w_1313),
  .b(w_1311),
  .c(w_1314),
  .clk(clk)
);
ADD_16b_pe add_105 (
  .a(w_1314),
  .b(w_1310),
  .c(w_1315),
  .clk(clk)
);
assign  w_1316  =  r3_w_local_sum_1a661_0 ;
assign  w_1317  =  w_conv1_1_stencil_4_0_2 ;
assign  w_1318  =  w_weight_tap_stencil_4_0 ;
assign  w_1319  =  w_1318 ;
MULT_16b_pe mult_106 (
  .a(w_1317),
  .b(w_1319),
  .c(w_1320),
  .clk(clk)
);
ADD_16b_pe add_107 (
  .a(w_1316),
  .b(w_1320),
  .c(w_1321),
  .clk(clk)
);
assign  w_1322  =  r4_w_local_sum_1a661_0 ;
assign  w_1323  =  w_conv1_1_stencil_0_1_2 ;
assign  w_1324  =  w_weight_tap_stencil_0_1 ;
assign  w_1325  =  w_1324 ;
MULT_16b_pe mult_108 (
  .a(w_1325),
  .b(w_1323),
  .c(w_1326),
  .clk(clk)
);
ADD_16b_pe add_109 (
  .a(w_1326),
  .b(w_1322),
  .c(w_1327),
  .clk(clk)
);
assign  w_1328  =  r5_w_local_sum_1a661_0 ;
assign  w_1329  =  w_conv1_1_stencil_1_1_2 ;
assign  w_1330  =  w_weight_tap_stencil_1_1 ;
assign  w_1331  =  w_1330 ;
MULT_16b_pe mult_110 (
  .a(w_1331),
  .b(w_1329),
  .c(w_1332),
  .clk(clk)
);
ADD_16b_pe add_111 (
  .a(w_1328),
  .b(w_1332),
  .c(w_1333),
  .clk(clk)
);
assign  w_1334  =  r6_w_local_sum_1a661_0 ;
assign  w_1335  =  w_conv1_1_stencil_2_1_2 ;
assign  w_1336  =  w_weight_tap_stencil_2_1 ;
assign  w_1337  =  w_1336 ;
MULT_16b_pe mult_112 (
  .a(w_1335),
  .b(w_1337),
  .c(w_1338),
  .clk(clk)
);
ADD_16b_pe add_113 (
  .a(w_1334),
  .b(w_1338),
  .c(w_1339),
  .clk(clk)
);
assign  w_1340  =  r7_w_local_sum_1a661_0 ;
assign  w_1341  =  w_conv1_1_stencil_3_1_2 ;
assign  w_1342  =  w_weight_tap_stencil_3_1 ;
assign  w_1343  =  w_1342 ;
MULT_16b_pe mult_114 (
  .a(w_1341),
  .b(w_1343),
  .c(w_1344),
  .clk(clk)
);
ADD_16b_pe add_115 (
  .a(w_1344),
  .b(w_1340),
  .c(w_1345),
  .clk(clk)
);
assign  w_1346  =  r8_w_local_sum_1a661_0 ;
assign  w_1347  =  w_conv1_1_stencil_4_1_2 ;
assign  w_1348  =  w_weight_tap_stencil_4_1 ;
assign  w_1349  =  w_1348 ;
MULT_16b_pe mult_116 (
  .a(w_1347),
  .b(w_1349),
  .c(w_1350),
  .clk(clk)
);
ADD_16b_pe add_117 (
  .a(w_1346),
  .b(w_1350),
  .c(w_1351),
  .clk(clk)
);
assign  w_1352  =  r9_w_local_sum_1a661_0 ;
assign  w_1353  =  w_conv1_1_stencil_0_2_2 ;
assign  w_1354  =  w_weight_tap_stencil_0_2 ;
assign  w_1355  =  w_1354 ;
MULT_16b_pe mult_118 (
  .a(w_1353),
  .b(w_1355),
  .c(w_1356),
  .clk(clk)
);
ADD_16b_pe add_119 (
  .a(w_1352),
  .b(w_1356),
  .c(w_1357),
  .clk(clk)
);
assign  w_1358  =  r10_w_local_sum_1a661_0 ;
assign  w_1359  =  w_conv1_1_stencil_1_2_2 ;
assign  w_1360  =  w_weight_tap_stencil_1_2 ;
assign  w_1361  =  w_1360 ;
MULT_16b_pe mult_120 (
  .a(w_1359),
  .b(w_1361),
  .c(w_1362),
  .clk(clk)
);
ADD_16b_pe add_121 (
  .a(w_1362),
  .b(w_1358),
  .c(w_1363),
  .clk(clk)
);
assign  w_1364  =  r11_w_local_sum_1a661_0 ;
assign  w_1365  =  w_conv1_1_stencil_2_2_2 ;
assign  w_1366  =  w_weight_tap_stencil_2_2 ;
assign  w_1367  =  w_1366 ;
MULT_16b_pe mult_122 (
  .a(w_1367),
  .b(w_1365),
  .c(w_1368),
  .clk(clk)
);
ADD_16b_pe add_123 (
  .a(w_1368),
  .b(w_1364),
  .c(w_1369),
  .clk(clk)
);
assign  w_1370  =  r12_w_local_sum_1a661_0 ;
assign  w_1371  =  w_conv1_1_stencil_3_2_2 ;
assign  w_1372  =  w_weight_tap_stencil_3_2 ;
assign  w_1373  =  w_1372 ;
MULT_16b_pe mult_124 (
  .a(w_1371),
  .b(w_1373),
  .c(w_1374),
  .clk(clk)
);
ADD_16b_pe add_125 (
  .a(w_1370),
  .b(w_1374),
  .c(w_1375),
  .clk(clk)
);
assign  w_1376  =  r13_w_local_sum_1a661_0 ;
assign  w_1377  =  w_conv1_1_stencil_4_2_2 ;
assign  w_1378  =  w_weight_tap_stencil_4_2 ;
assign  w_1379  =  w_1378 ;
MULT_16b_pe mult_126 (
  .a(w_1379),
  .b(w_1377),
  .c(w_1380),
  .clk(clk)
);
ADD_16b_pe add_127 (
  .a(w_1380),
  .b(w_1376),
  .c(w_1381),
  .clk(clk)
);
assign  w_1382  =  r14_w_local_sum_1a661_0 ;
assign  w_1383  =  w_conv1_1_stencil_0_3_2 ;
assign  w_1384  =  w_weight_tap_stencil_0_3 ;
assign  w_1385  =  w_1384 ;
MULT_16b_pe mult_128 (
  .a(w_1383),
  .b(w_1385),
  .c(w_1386),
  .clk(clk)
);
ADD_16b_pe add_129 (
  .a(w_1382),
  .b(w_1386),
  .c(w_1387),
  .clk(clk)
);
assign  w_1388  =  r15_w_local_sum_1a661_0 ;
assign  w_1389  =  w_conv1_1_stencil_1_3_2 ;
assign  w_1390  =  w_weight_tap_stencil_1_3 ;
assign  w_1391  =  w_1390 ;
MULT_16b_pe mult_130 (
  .a(w_1389),
  .b(w_1391),
  .c(w_1392),
  .clk(clk)
);
ADD_16b_pe add_131 (
  .a(w_1388),
  .b(w_1392),
  .c(w_1393),
  .clk(clk)
);
assign  w_1394  =  r16_w_local_sum_1a661_0 ;
assign  w_1395  =  w_conv1_1_stencil_2_3_2 ;
assign  w_1396  =  w_weight_tap_stencil_2_3 ;
assign  w_1397  =  w_1396 ;
MULT_16b_pe mult_132 (
  .a(w_1397),
  .b(w_1395),
  .c(w_1398),
  .clk(clk)
);
ADD_16b_pe add_133 (
  .a(w_1394),
  .b(w_1398),
  .c(w_1399),
  .clk(clk)
);
assign  w_1400  =  r17_w_local_sum_1a661_0 ;
assign  w_1401  =  w_conv1_1_stencil_3_3_2 ;
assign  w_1402  =  w_weight_tap_stencil_3_3 ;
assign  w_1403  =  w_1402 ;
MULT_16b_pe mult_134 (
  .a(w_1403),
  .b(w_1401),
  .c(w_1404),
  .clk(clk)
);
ADD_16b_pe add_135 (
  .a(w_1404),
  .b(w_1400),
  .c(w_1405),
  .clk(clk)
);
assign  w_1406  =  r18_w_local_sum_1a661_0 ;
assign  w_1407  =  w_conv1_1_stencil_4_3_2 ;
assign  w_1408  =  w_weight_tap_stencil_4_3 ;
assign  w_1409  =  w_1408 ;
MULT_16b_pe mult_136 (
  .a(w_1407),
  .b(w_1409),
  .c(w_1410),
  .clk(clk)
);
ADD_16b_pe add_137 (
  .a(w_1410),
  .b(w_1406),
  .c(w_1411),
  .clk(clk)
);
assign  w_1412  =  r19_w_local_sum_1a661_0 ;
assign  w_1413  =  w_conv1_1_stencil_0_4_2 ;
assign  w_1414  =  w_weight_tap_stencil_0_4 ;
assign  w_1415  =  w_1414 ;
MULT_16b_pe mult_138 (
  .a(w_1413),
  .b(w_1415),
  .c(w_1416),
  .clk(clk)
);
ADD_16b_pe add_139 (
  .a(w_1412),
  .b(w_1416),
  .c(w_1417),
  .clk(clk)
);
assign  w_1418  =  r20_w_local_sum_1a661_0 ;
assign  w_1419  =  w_conv1_1_stencil_1_4_2 ;
assign  w_1420  =  w_weight_tap_stencil_1_4 ;
assign  w_1421  =  w_1420 ;
MULT_16b_pe mult_140 (
  .a(w_1419),
  .b(w_1421),
  .c(w_1422),
  .clk(clk)
);
ADD_16b_pe add_141 (
  .a(w_1418),
  .b(w_1422),
  .c(w_1423),
  .clk(clk)
);
assign  w_1424  =  r21_w_local_sum_1a661_0 ;
assign  w_1425  =  w_conv1_1_stencil_2_4_2 ;
assign  w_1426  =  w_weight_tap_stencil_2_4 ;
assign  w_1427  =  w_1426 ;
MULT_16b_pe mult_142 (
  .a(w_1425),
  .b(w_1427),
  .c(w_1428),
  .clk(clk)
);
ADD_16b_pe add_143 (
  .a(w_1424),
  .b(w_1428),
  .c(w_1429),
  .clk(clk)
);
assign  w_1430  =  r22_w_local_sum_1a661_0 ;
assign  w_1431  =  w_conv1_1_stencil_3_4_2 ;
assign  w_1432  =  w_weight_tap_stencil_3_4 ;
assign  w_1433  =  w_1432 ;
MULT_16b_pe mult_144 (
  .a(w_1433),
  .b(w_1431),
  .c(w_1434),
  .clk(clk)
);
ADD_16b_pe add_145 (
  .a(w_1434),
  .b(w_1430),
  .c(w_1435),
  .clk(clk)
);
assign  w_1436  =  r23_w_local_sum_1a661_0 ;
assign  w_1437  =  w_conv1_1_stencil_4_4_2 ;
assign  w_1438  =  w_weight_tap_stencil_4_4 ;
assign  w_1439  =  w_1438 ;
MULT_16b_pe mult_146 (
  .a(w_1437),
  .b(w_1439),
  .c(w_1440),
  .clk(clk)
);
ADD_16b_pe add_147 (
  .a(w_1436),
  .b(w_1440),
  .c(w_1441),
  .clk(clk)
);
assign  w_1442  =  r24_w_local_sum_1a661_0 ;
LSHIFT_16b_pe lshift_148 (
  .a(w_1442),
  .b(1'b0),
  .c(w_1443),
  .clk(clk)
);
assign  w_1444  =  w_1443 ;
assign  w_986  =  w_local_sum_1a659_0 ;
assign  w_987  =  w_conv1_1_stencil_0_0_0 ;
assign  w_988  =  w_weight_tap_stencil_0_0 ;
assign  w_989  =  w_988 ;
MULT_16b_pe mult_149 (
  .a(w_989),
  .b(w_987),
  .c(w_990),
  .clk(clk)
);
ADD_16b_pe add_150 (
  .a(w_990),
  .b(w_986),
  .c(w_991),
  .clk(clk)
);
assign  w_992  =  r0_w_local_sum_1a659_0 ;
assign  w_993  =  w_conv1_1_stencil_1_0_0 ;
assign  w_994  =  w_weight_tap_stencil_1_0 ;
assign  w_995  =  w_994 ;
MULT_16b_pe mult_151 (
  .a(w_993),
  .b(w_995),
  .c(w_996),
  .clk(clk)
);
ADD_16b_pe add_152 (
  .a(w_992),
  .b(w_996),
  .c(w_997),
  .clk(clk)
);
assign  w_998  =  r1_w_local_sum_1a659_0 ;
assign  w_999  =  w_conv1_1_stencil_2_0_0 ;
assign  w_f1_stencil_0_0_0  =  w_1138 ;
assign  w_f1_stencil_0_0_1  =  w_1291 ;
assign  w_f1_stencil_0_0_2  =  w_1444 ;
assign  w_f1_stencil_packed  =  w_f1_stencil_0_0_0 ;
assign  w_local_sum_1a659_0  =  w_bias ;
assign  w_local_sum_1a660_0  =  w_bias ;
assign  w_local_sum_1a661_0  =  w_bias ;

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


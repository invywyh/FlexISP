// Source:  /home/tema8/projects/Halide-HLS/apps/hls_examples/demosaic_harris_hls/hls_target.cpp 

module top(
//Inputs
  w_p2_grad_x_stencil_stream_to_p2_grad_xx_0_0_16b,

  w_p2_grad_y_stencil_stream_to_p2_grad_xy_0_0_16b,

  w_downsample_1_stencil_stream_to_hw_output_1_0_0_0_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_0_0_1_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_0_0_2_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_0_1_0_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_0_1_1_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_0_1_2_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_0_2_0_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_0_2_1_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_0_2_2_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_1_0_0_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_1_0_1_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_1_0_2_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_1_1_0_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_1_1_1_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_1_1_2_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_1_2_0_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_1_2_1_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_1_2_2_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_2_0_0_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_2_0_1_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_2_0_2_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_2_1_0_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_2_1_1_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_2_1_2_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_2_2_0_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_2_2_1_8b,
  w_downsample_1_stencil_stream_to_hw_output_1_2_2_2_8b,

  w_padded_1_stencil_update_stream_0_0_8b,
  w_padded_1_stencil_update_stream_0_1_8b,
  w_padded_1_stencil_update_stream_1_0_8b,
  w_padded_1_stencil_update_stream_1_1_8b,

//Outputs
  w_hw_output_1_stencil_stream_0_0_0_8b,
  w_hw_output_1_stencil_stream_1_0_0_8b,
  w_hw_output_1_stencil_stream_2_0_0_8b,

  clk
);

//Inputs
input    w_p2_grad_x_stencil_stream_to_p2_grad_xx_0_0_16b;

input    w_p2_grad_y_stencil_stream_to_p2_grad_xy_0_0_16b;

input    w_downsample_1_stencil_stream_to_hw_output_1_0_0_0_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_0_1_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_0_2_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_1_0_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_1_1_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_1_2_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_2_0_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_2_1_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_2_2_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_0_0_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_0_1_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_0_2_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_1_0_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_1_1_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_1_2_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_2_0_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_2_1_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_2_2_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_0_0_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_0_1_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_0_2_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_1_0_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_1_1_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_1_2_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_2_0_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_2_1_8b;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_2_2_8b;

input    w_padded_1_stencil_update_stream_0_0_8b;
input    w_padded_1_stencil_update_stream_0_1_8b;
input    w_padded_1_stencil_update_stream_1_0_8b;
input    w_padded_1_stencil_update_stream_1_1_8b;

//Outputs
output   w_hw_output_1_stencil_stream_0_0_0_8b;
output   w_hw_output_1_stencil_stream_1_0_0_8b;
output   w_hw_output_1_stencil_stream_2_0_0_8b;

input   clk;

wire   w_p2_grad_gx_stencil_stream_0_0_16b;

wire   w_downsample_1_stencil_update_stream_0_0_0_8b;
wire   w_downsample_1_stencil_update_stream_1_0_0_8b;
wire   w_downsample_1_stencil_update_stream_2_0_0_8b;

wire   w_p2_grad_gxy_stencil_stream_0_0_16b;

wire   w_padded_1_stencil_stream_0_0_8b;
wire   w_padded_1_stencil_stream_0_1_8b;
wire   w_padded_1_stencil_stream_0_2_8b;
wire   w_padded_1_stencil_stream_0_3_8b;
wire   w_padded_1_stencil_stream_1_0_8b;
wire   w_padded_1_stencil_stream_1_1_8b;
wire   w_padded_1_stencil_stream_1_2_8b;
wire   w_padded_1_stencil_stream_1_3_8b;
wire   w_padded_1_stencil_stream_2_0_8b;
wire   w_padded_1_stencil_stream_2_1_8b;
wire   w_padded_1_stencil_stream_2_2_8b;
wire   w_padded_1_stencil_stream_2_3_8b;
wire   w_padded_1_stencil_stream_3_0_8b;
wire   w_padded_1_stencil_stream_3_1_8b;
wire   w_padded_1_stencil_stream_3_2_8b;
wire   w_padded_1_stencil_stream_3_3_8b;

wire   w_p2_cim_stencil_stream_0_0_16b;
wire   w_p2_cim_stencil_stream_0_1_16b;
wire   w_p2_cim_stencil_stream_0_2_16b;
wire   w_p2_cim_stencil_stream_1_0_16b;
wire   w_p2_cim_stencil_stream_1_1_16b;
wire   w_p2_cim_stencil_stream_1_2_16b;
wire   w_p2_cim_stencil_stream_2_0_16b;
wire   w_p2_cim_stencil_stream_2_1_16b;
wire   w_p2_cim_stencil_stream_2_2_16b;

wire   w_p2_grad_xx_stencil_update_stream_0_0_16b;

wire   w_p2_grad_xy_stencil_update_stream_0_0_16b;

wire   w_downsample_1_stencil_stream_0_0_0_8b;
wire   w_downsample_1_stencil_stream_0_0_1_8b;
wire   w_downsample_1_stencil_stream_0_0_2_8b;
wire   w_downsample_1_stencil_stream_0_1_0_8b;
wire   w_downsample_1_stencil_stream_0_1_1_8b;
wire   w_downsample_1_stencil_stream_0_1_2_8b;
wire   w_downsample_1_stencil_stream_0_2_0_8b;
wire   w_downsample_1_stencil_stream_0_2_1_8b;
wire   w_downsample_1_stencil_stream_0_2_2_8b;
wire   w_downsample_1_stencil_stream_1_0_0_8b;
wire   w_downsample_1_stencil_stream_1_0_1_8b;
wire   w_downsample_1_stencil_stream_1_0_2_8b;
wire   w_downsample_1_stencil_stream_1_1_0_8b;
wire   w_downsample_1_stencil_stream_1_1_1_8b;
wire   w_downsample_1_stencil_stream_1_1_2_8b;
wire   w_downsample_1_stencil_stream_1_2_0_8b;
wire   w_downsample_1_stencil_stream_1_2_1_8b;
wire   w_downsample_1_stencil_stream_1_2_2_8b;
wire   w_downsample_1_stencil_stream_2_0_0_8b;
wire   w_downsample_1_stencil_stream_2_0_1_8b;
wire   w_downsample_1_stencil_stream_2_0_2_8b;
wire   w_downsample_1_stencil_stream_2_1_0_8b;
wire   w_downsample_1_stencil_stream_2_1_1_8b;
wire   w_downsample_1_stencil_stream_2_1_2_8b;
wire   w_downsample_1_stencil_stream_2_2_0_8b;
wire   w_downsample_1_stencil_stream_2_2_1_8b;
wire   w_downsample_1_stencil_stream_2_2_2_8b;

wire   w_p2_grad_yy_stencil_update_stream_0_0_16b;

wire   w_p2_grad_xx_stencil_stream_0_0_16b;
wire   w_p2_grad_xx_stencil_stream_0_1_16b;
wire   w_p2_grad_xx_stencil_stream_0_2_16b;
wire   w_p2_grad_xx_stencil_stream_1_0_16b;
wire   w_p2_grad_xx_stencil_stream_1_1_16b;
wire   w_p2_grad_xx_stencil_stream_1_2_16b;
wire   w_p2_grad_xx_stencil_stream_2_0_16b;
wire   w_p2_grad_xx_stencil_stream_2_1_16b;
wire   w_p2_grad_xx_stencil_stream_2_2_16b;

wire   w_p2_grad_xy_stencil_stream_0_0_16b;
wire   w_p2_grad_xy_stencil_stream_0_1_16b;
wire   w_p2_grad_xy_stencil_stream_0_2_16b;
wire   w_p2_grad_xy_stencil_stream_1_0_16b;
wire   w_p2_grad_xy_stencil_stream_1_1_16b;
wire   w_p2_grad_xy_stencil_stream_1_2_16b;
wire   w_p2_grad_xy_stencil_stream_2_0_16b;
wire   w_p2_grad_xy_stencil_stream_2_1_16b;
wire   w_p2_grad_xy_stencil_stream_2_2_16b;

wire   w_p2_grad_y_stencil_stream_0_0_16b;

wire   w_p2_cim_stencil_update_stream_0_0_16b;

wire   w_p2_grad_yy_stencil_stream_0_0_16b;
wire   w_p2_grad_yy_stencil_stream_0_1_16b;
wire   w_p2_grad_yy_stencil_stream_0_2_16b;
wire   w_p2_grad_yy_stencil_stream_1_0_16b;
wire   w_p2_grad_yy_stencil_stream_1_1_16b;
wire   w_p2_grad_yy_stencil_stream_1_2_16b;
wire   w_p2_grad_yy_stencil_stream_2_0_16b;
wire   w_p2_grad_yy_stencil_stream_2_1_16b;
wire   w_p2_grad_yy_stencil_stream_2_2_16b;

wire   w_p2_grad_x_stencil_stream_0_0_16b;

wire   w_p2_corners_stencil_stream_0_0_1b;

wire   w_p2_grad_gy_stencil_stream_0_0_16b;

wire   gnd;
assign gnd=1'b0;

kernel__p2_grad_gx_stencil_stream KERN__p2_grad_gx_stencil_stream (
    .w_p2_grad_xx_stencil_0_0_16b(w_p2_grad_xx_stencil_stream_0_0_16b),
    .w_p2_grad_xx_stencil_0_1_16b(w_p2_grad_xx_stencil_stream_0_1_16b),
    .w_p2_grad_xx_stencil_0_2_16b(w_p2_grad_xx_stencil_stream_0_2_16b),
    .w_p2_grad_xx_stencil_1_0_16b(w_p2_grad_xx_stencil_stream_1_0_16b),
    .w_p2_grad_xx_stencil_1_1_16b(w_p2_grad_xx_stencil_stream_1_1_16b),
    .w_p2_grad_xx_stencil_1_2_16b(w_p2_grad_xx_stencil_stream_1_2_16b),
    .w_p2_grad_xx_stencil_2_0_16b(w_p2_grad_xx_stencil_stream_2_0_16b),
    .w_p2_grad_xx_stencil_2_1_16b(w_p2_grad_xx_stencil_stream_2_1_16b),
    .w_p2_grad_xx_stencil_2_2_16b(w_p2_grad_xx_stencil_stream_2_2_16b),

    .out_w_p2_grad_gx_stencil_0_0_16b(w_p2_grad_gx_stencil_stream_0_0_16b),

    .clk(clk)
);

LB_3_3_1_32bit_False LB__p2_grad_xy_stencil_stream (
    .clk(clk),

    .in0(w_p2_grad_xy_stencil_update_stream_0_0_16b),

    .out0(w_p2_grad_xy_stencil_stream_0_0_16b),
    .out1(w_p2_grad_xy_stencil_stream_0_1_16b),
    .out2(w_p2_grad_xy_stencil_stream_0_2_16b),
    .out3(w_p2_grad_xy_stencil_stream_1_0_16b),
    .out4(w_p2_grad_xy_stencil_stream_1_1_16b),
    .out5(w_p2_grad_xy_stencil_stream_1_2_16b),
    .out6(w_p2_grad_xy_stencil_stream_2_0_16b),
    .out7(w_p2_grad_xy_stencil_stream_2_1_16b),
    .out8(w_p2_grad_xy_stencil_stream_2_2_16b)
);

kernel__p2_grad_gxy_stencil_stream KERN__p2_grad_gxy_stencil_stream (
    .w_p2_grad_xy_stencil_0_0_16b(w_p2_grad_xy_stencil_stream_0_0_16b),
    .w_p2_grad_xy_stencil_0_1_16b(w_p2_grad_xy_stencil_stream_0_1_16b),
    .w_p2_grad_xy_stencil_0_2_16b(w_p2_grad_xy_stencil_stream_0_2_16b),
    .w_p2_grad_xy_stencil_1_0_16b(w_p2_grad_xy_stencil_stream_1_0_16b),
    .w_p2_grad_xy_stencil_1_1_16b(w_p2_grad_xy_stencil_stream_1_1_16b),
    .w_p2_grad_xy_stencil_1_2_16b(w_p2_grad_xy_stencil_stream_1_2_16b),
    .w_p2_grad_xy_stencil_2_0_16b(w_p2_grad_xy_stencil_stream_2_0_16b),
    .w_p2_grad_xy_stencil_2_1_16b(w_p2_grad_xy_stencil_stream_2_1_16b),
    .w_p2_grad_xy_stencil_2_2_16b(w_p2_grad_xy_stencil_stream_2_2_16b),

    .out_w_p2_grad_gxy_stencil_0_0_16b(w_p2_grad_gxy_stencil_stream_0_0_16b),

    .clk(clk)
);

LB_4_4_1_8bit_False LB__padded_1_stencil_stream (
    .clk(clk),

    .in0(w_padded_1_stencil_update_stream_0_0_8b),
//    .in1(w_padded_1_stencil_update_stream_0_1_8b),
//    .in2(w_padded_1_stencil_update_stream_1_0_8b),
//    .in3(w_padded_1_stencil_update_stream_1_1_8b),

    .out0(w_padded_1_stencil_stream_0_0_8b),
    .out1(w_padded_1_stencil_stream_0_1_8b),
    .out2(w_padded_1_stencil_stream_0_2_8b),
    .out3(w_padded_1_stencil_stream_0_3_8b),
    .out4(w_padded_1_stencil_stream_1_0_8b),
    .out5(w_padded_1_stencil_stream_1_1_8b),
    .out6(w_padded_1_stencil_stream_1_2_8b),
    .out7(w_padded_1_stencil_stream_1_3_8b),
    .out8(w_padded_1_stencil_stream_2_0_8b),
    .out9(w_padded_1_stencil_stream_2_1_8b),
    .out10(w_padded_1_stencil_stream_2_2_8b),
    .out11(w_padded_1_stencil_stream_2_3_8b),
    .out12(w_padded_1_stencil_stream_3_0_8b),
    .out13(w_padded_1_stencil_stream_3_1_8b),
    .out14(w_padded_1_stencil_stream_3_2_8b),
    .out15(w_padded_1_stencil_stream_3_3_8b)
);

LB_3_3_1_16bit_False LB__p2_cim_stencil_stream (
    .clk(clk),

    .in0(w_p2_cim_stencil_update_stream_0_0_16b),

    .out0(w_p2_cim_stencil_stream_0_0_16b),
    .out1(w_p2_cim_stencil_stream_0_1_16b),
    .out2(w_p2_cim_stencil_stream_0_2_16b),
    .out3(w_p2_cim_stencil_stream_1_0_16b),
    .out4(w_p2_cim_stencil_stream_1_1_16b),
    .out5(w_p2_cim_stencil_stream_1_2_16b),
    .out6(w_p2_cim_stencil_stream_2_0_16b),
    .out7(w_p2_cim_stencil_stream_2_1_16b),
    .out8(w_p2_cim_stencil_stream_2_2_16b)
);

kernel__p2_grad_xx_stencil_update_stream KERN__p2_grad_xx_stencil_update_stream (
    .w_p2_grad_x_stencil_0_0_16b(w_p2_grad_x_stencil_stream_to_p2_grad_xx_0_0_16b),

    .out_w_p2_grad_xx_stencil_0_0_16b(w_p2_grad_xx_stencil_update_stream_0_0_16b),

    .clk(clk)
);

kernel__p2_grad_xy_stencil_update_stream KERN__p2_grad_xy_stencil_update_stream (
    .w_p2_grad_x_stencil_0_0_16b(w_p2_grad_x_stencil_stream_0_0_16b),
    .w_p2_grad_y_stencil_0_0_16b(w_p2_grad_y_stencil_stream_to_p2_grad_xy_0_0_16b),

    .out_w_p2_grad_xy_stencil_0_0_16b(w_p2_grad_xy_stencil_update_stream_0_0_16b),

    .clk(clk)
);

LB_3_3_3_8bit_False LB__downsample_1_stencil_stream (
    .clk(clk),

    .in0(w_downsample_1_stencil_update_stream_0_0_0_8b),
    .in1(w_downsample_1_stencil_update_stream_1_0_0_8b),
    .in2(w_downsample_1_stencil_update_stream_2_0_0_8b),

    .out0(w_downsample_1_stencil_stream_0_0_0_8b),
    .out1(w_downsample_1_stencil_stream_0_0_1_8b),
    .out2(w_downsample_1_stencil_stream_0_0_2_8b),
    .out3(w_downsample_1_stencil_stream_0_1_0_8b),
    .out4(w_downsample_1_stencil_stream_0_1_1_8b),
    .out5(w_downsample_1_stencil_stream_0_1_2_8b),
    .out6(w_downsample_1_stencil_stream_0_2_0_8b),
    .out7(w_downsample_1_stencil_stream_0_2_1_8b),
    .out8(w_downsample_1_stencil_stream_0_2_2_8b),
    .out9(w_downsample_1_stencil_stream_1_0_0_8b),
    .out10(w_downsample_1_stencil_stream_1_0_1_8b),
    .out11(w_downsample_1_stencil_stream_1_0_2_8b),
    .out12(w_downsample_1_stencil_stream_1_1_0_8b),
    .out13(w_downsample_1_stencil_stream_1_1_1_8b),
    .out14(w_downsample_1_stencil_stream_1_1_2_8b),
    .out15(w_downsample_1_stencil_stream_1_2_0_8b),
    .out16(w_downsample_1_stencil_stream_1_2_1_8b),
    .out17(w_downsample_1_stencil_stream_1_2_2_8b),
    .out18(w_downsample_1_stencil_stream_2_0_0_8b),
    .out19(w_downsample_1_stencil_stream_2_0_1_8b),
    .out20(w_downsample_1_stencil_stream_2_0_2_8b),
    .out21(w_downsample_1_stencil_stream_2_1_0_8b),
    .out22(w_downsample_1_stencil_stream_2_1_1_8b),
    .out23(w_downsample_1_stencil_stream_2_1_2_8b),
    .out24(w_downsample_1_stencil_stream_2_2_0_8b),
    .out25(w_downsample_1_stencil_stream_2_2_1_8b),
    .out26(w_downsample_1_stencil_stream_2_2_2_8b)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_downsample_1_stencil_0_2_2_8b(w_p2_corners_stencil_stream_0_0_1b),
    .w_downsample_1_stencil_1_2_2_8b(w_downsample_1_stencil_stream_to_hw_output_1_0_0_0_8b),
    .w_downsample_1_stencil_2_2_2_8b(w_downsample_1_stencil_stream_to_hw_output_1_0_0_1_8b),
    .w_p2_corners_stencil_0_0_1b(w_downsample_1_stencil_stream_to_hw_output_1_0_0_2_8b),

    .out_w_hw_output_1_stencil_1_0_0_8b(w_hw_output_1_stencil_stream_0_0_0_8b),
    .out_w_hw_output_1_stencil_2_0_0_8b(w_hw_output_1_stencil_stream_1_0_0_8b),
    .out_w_hw_output_1_stencil_packed_16b(w_hw_output_1_stencil_stream_2_0_0_8b),

    .clk(clk)
);

kernel__p2_grad_yy_stencil_update_stream KERN__p2_grad_yy_stencil_update_stream (
    .w_p2_grad_y_stencil_0_0_16b(w_p2_grad_y_stencil_stream_0_0_16b),

    .out_w_p2_grad_yy_stencil_0_0_16b(w_p2_grad_yy_stencil_update_stream_0_0_16b),

    .clk(clk)
);

LB_3_3_1_32bit_False LB__p2_grad_xx_stencil_stream (
    .clk(clk),

    .in0(w_p2_grad_xx_stencil_update_stream_0_0_16b),

    .out0(w_p2_grad_xx_stencil_stream_0_0_16b),
    .out1(w_p2_grad_xx_stencil_stream_0_1_16b),
    .out2(w_p2_grad_xx_stencil_stream_0_2_16b),
    .out3(w_p2_grad_xx_stencil_stream_1_0_16b),
    .out4(w_p2_grad_xx_stencil_stream_1_1_16b),
    .out5(w_p2_grad_xx_stencil_stream_1_2_16b),
    .out6(w_p2_grad_xx_stencil_stream_2_0_16b),
    .out7(w_p2_grad_xx_stencil_stream_2_1_16b),
    .out8(w_p2_grad_xx_stencil_stream_2_2_16b)
);

kernel__downsample_1_stencil_update_stream KERN__downsample_1_stencil_update_stream (
    .w_padded_1_stencil_0_0_8b(w_padded_1_stencil_stream_0_0_8b),
    .w_padded_1_stencil_0_1_8b(w_padded_1_stencil_stream_0_1_8b),
    .w_padded_1_stencil_0_2_8b(w_padded_1_stencil_stream_0_2_8b),
    .w_padded_1_stencil_1_0_8b(w_padded_1_stencil_stream_0_3_8b),
    .w_padded_1_stencil_1_1_8b(w_padded_1_stencil_stream_1_0_8b),
    .w_padded_1_stencil_1_2_8b(w_padded_1_stencil_stream_1_1_8b),
    .w_padded_1_stencil_1_3_8b(w_padded_1_stencil_stream_1_2_8b),
    .w_padded_1_stencil_2_0_8b(w_padded_1_stencil_stream_1_3_8b),
    .w_padded_1_stencil_2_1_8b(w_padded_1_stencil_stream_2_0_8b),
    .w_padded_1_stencil_2_2_8b(w_padded_1_stencil_stream_2_1_8b),
    .w_padded_1_stencil_2_3_8b(w_padded_1_stencil_stream_2_2_8b),
    .w_padded_1_stencil_3_1_8b(w_padded_1_stencil_stream_2_3_8b),
    .w_padded_1_stencil_3_2_8b(w_padded_1_stencil_stream_3_0_8b),
    .w_padded_1_stencil_3_3_8b(w_padded_1_stencil_stream_3_1_8b),

    .out_w_downsample_1_stencil_0_0_0_8b(w_downsample_1_stencil_update_stream_0_0_0_8b),
    .out_w_downsample_1_stencil_1_0_0_8b(w_downsample_1_stencil_update_stream_1_0_0_8b),
    .out_w_downsample_1_stencil_2_0_0_8b(w_downsample_1_stencil_update_stream_2_0_0_8b),

    .clk(clk)
);

kernel__p2_grad_y_stencil_stream KERN__p2_grad_y_stencil_stream (
    .w_downsample_1_stencil_0_0_0_8b(w_downsample_1_stencil_stream_0_0_0_8b),
    .w_downsample_1_stencil_0_0_2_8b(w_downsample_1_stencil_stream_0_0_1_8b),
    .w_downsample_1_stencil_0_1_0_8b(w_downsample_1_stencil_stream_0_0_2_8b),
    .w_downsample_1_stencil_0_1_2_8b(w_downsample_1_stencil_stream_0_1_0_8b),
    .w_downsample_1_stencil_0_2_0_8b(w_downsample_1_stencil_stream_0_1_1_8b),
    .w_downsample_1_stencil_0_2_2_8b(w_downsample_1_stencil_stream_0_1_2_8b),
    .w_downsample_1_stencil_1_0_0_8b(w_downsample_1_stencil_stream_0_2_0_8b),
    .w_downsample_1_stencil_1_0_2_8b(w_downsample_1_stencil_stream_0_2_1_8b),
    .w_downsample_1_stencil_1_1_0_8b(w_downsample_1_stencil_stream_0_2_2_8b),
    .w_downsample_1_stencil_1_1_2_8b(w_downsample_1_stencil_stream_1_0_0_8b),
    .w_downsample_1_stencil_1_2_0_8b(w_downsample_1_stencil_stream_1_0_1_8b),
    .w_downsample_1_stencil_1_2_2_8b(w_downsample_1_stencil_stream_1_0_2_8b),
    .w_downsample_1_stencil_2_0_0_8b(w_downsample_1_stencil_stream_1_1_0_8b),
    .w_downsample_1_stencil_2_0_2_8b(w_downsample_1_stencil_stream_1_1_1_8b),
    .w_downsample_1_stencil_2_1_0_8b(w_downsample_1_stencil_stream_1_1_2_8b),
    .w_downsample_1_stencil_2_1_2_8b(w_downsample_1_stencil_stream_1_2_0_8b),
    .w_downsample_1_stencil_2_2_0_8b(w_downsample_1_stencil_stream_1_2_1_8b),
    .w_downsample_1_stencil_2_2_2_8b(w_downsample_1_stencil_stream_1_2_2_8b),

    .out_w_p2_grad_y_stencil_0_0_16b(w_p2_grad_y_stencil_stream_0_0_16b),

    .clk(clk)
);

kernel__p2_cim_stencil_update_stream KERN__p2_cim_stencil_update_stream (
    .w_p2_grad_gx_stencil_0_0_16b(w_p2_grad_gx_stencil_stream_0_0_16b),
    .w_p2_grad_gxy_stencil_0_0_16b(w_p2_grad_gxy_stencil_stream_0_0_16b),
    .w_p2_grad_gy_stencil_0_0_16b(w_p2_grad_gy_stencil_stream_0_0_16b),

    .out_w_p2_cim_stencil_0_0_16b(w_p2_cim_stencil_update_stream_0_0_16b),

    .clk(clk)
);

LB_3_3_1_32bit_False LB__p2_grad_yy_stencil_stream (
    .clk(clk),

    .in0(w_p2_grad_yy_stencil_update_stream_0_0_16b),

    .out0(w_p2_grad_yy_stencil_stream_0_0_16b),
    .out1(w_p2_grad_yy_stencil_stream_0_1_16b),
    .out2(w_p2_grad_yy_stencil_stream_0_2_16b),
    .out3(w_p2_grad_yy_stencil_stream_1_0_16b),
    .out4(w_p2_grad_yy_stencil_stream_1_1_16b),
    .out5(w_p2_grad_yy_stencil_stream_1_2_16b),
    .out6(w_p2_grad_yy_stencil_stream_2_0_16b),
    .out7(w_p2_grad_yy_stencil_stream_2_1_16b),
    .out8(w_p2_grad_yy_stencil_stream_2_2_16b)
);

kernel__p2_grad_x_stencil_stream KERN__p2_grad_x_stencil_stream (
    .w_downsample_1_stencil_0_0_0_8b(w_downsample_1_stencil_stream_0_0_0_8b),
    .w_downsample_1_stencil_0_0_1_8b(w_downsample_1_stencil_stream_0_0_1_8b),
    .w_downsample_1_stencil_0_0_2_8b(w_downsample_1_stencil_stream_0_0_2_8b),
    .w_downsample_1_stencil_0_2_0_8b(w_downsample_1_stencil_stream_0_1_0_8b),
    .w_downsample_1_stencil_0_2_1_8b(w_downsample_1_stencil_stream_0_1_1_8b),
    .w_downsample_1_stencil_0_2_2_8b(w_downsample_1_stencil_stream_0_1_2_8b),
    .w_downsample_1_stencil_1_0_0_8b(w_downsample_1_stencil_stream_0_2_0_8b),
    .w_downsample_1_stencil_1_0_1_8b(w_downsample_1_stencil_stream_0_2_1_8b),
    .w_downsample_1_stencil_1_0_2_8b(w_downsample_1_stencil_stream_0_2_2_8b),
    .w_downsample_1_stencil_1_2_0_8b(w_downsample_1_stencil_stream_1_0_0_8b),
    .w_downsample_1_stencil_1_2_1_8b(w_downsample_1_stencil_stream_1_0_1_8b),
    .w_downsample_1_stencil_1_2_2_8b(w_downsample_1_stencil_stream_1_0_2_8b),
    .w_downsample_1_stencil_2_0_0_8b(w_downsample_1_stencil_stream_1_1_0_8b),
    .w_downsample_1_stencil_2_0_1_8b(w_downsample_1_stencil_stream_1_1_1_8b),
    .w_downsample_1_stencil_2_0_2_8b(w_downsample_1_stencil_stream_1_1_2_8b),
    .w_downsample_1_stencil_2_2_0_8b(w_downsample_1_stencil_stream_1_2_0_8b),
    .w_downsample_1_stencil_2_2_1_8b(w_downsample_1_stencil_stream_1_2_1_8b),
    .w_downsample_1_stencil_2_2_2_8b(w_downsample_1_stencil_stream_1_2_2_8b),

    .out_w_p2_grad_x_stencil_0_0_16b(w_p2_grad_x_stencil_stream_0_0_16b),

    .clk(clk)
);

kernel__p2_corners_stencil_stream KERN__p2_corners_stencil_stream (
    .w_p2_cim_stencil_0_0_16b(w_p2_cim_stencil_stream_0_0_16b),
    .w_p2_cim_stencil_0_1_16b(w_p2_cim_stencil_stream_0_1_16b),
    .w_p2_cim_stencil_0_2_16b(w_p2_cim_stencil_stream_0_2_16b),
    .w_p2_cim_stencil_1_0_16b(w_p2_cim_stencil_stream_1_0_16b),
    .w_p2_cim_stencil_1_1_16b(w_p2_cim_stencil_stream_1_1_16b),
    .w_p2_cim_stencil_1_2_16b(w_p2_cim_stencil_stream_1_2_16b),
    .w_p2_cim_stencil_2_0_16b(w_p2_cim_stencil_stream_2_0_16b),
    .w_p2_cim_stencil_2_1_16b(w_p2_cim_stencil_stream_2_1_16b),
    .w_p2_cim_stencil_2_2_16b(w_p2_cim_stencil_stream_2_2_16b),

    .out_w_p2_corners_stencil_0_0_1b(w_p2_corners_stencil_stream_0_0_1b),

    .clk(clk)
);

kernel__p2_grad_gy_stencil_stream KERN__p2_grad_gy_stencil_stream (
    .w_p2_grad_yy_stencil_0_0_16b(w_p2_grad_yy_stencil_stream_0_0_16b),
    .w_p2_grad_yy_stencil_0_1_16b(w_p2_grad_yy_stencil_stream_0_1_16b),
    .w_p2_grad_yy_stencil_0_2_16b(w_p2_grad_yy_stencil_stream_0_2_16b),
    .w_p2_grad_yy_stencil_1_0_16b(w_p2_grad_yy_stencil_stream_1_0_16b),
    .w_p2_grad_yy_stencil_1_1_16b(w_p2_grad_yy_stencil_stream_1_1_16b),
    .w_p2_grad_yy_stencil_1_2_16b(w_p2_grad_yy_stencil_stream_1_2_16b),
    .w_p2_grad_yy_stencil_2_0_16b(w_p2_grad_yy_stencil_stream_2_0_16b),
    .w_p2_grad_yy_stencil_2_1_16b(w_p2_grad_yy_stencil_stream_2_1_16b),
    .w_p2_grad_yy_stencil_2_2_16b(w_p2_grad_yy_stencil_stream_2_2_16b),

    .out_w_p2_grad_gy_stencil_0_0_16b(w_p2_grad_gy_stencil_stream_0_0_16b),

    .clk(clk)
);

endmodule



module kernel__p2_grad_gxy_stencil_stream(
//Inputs
  w_p2_grad_xy_stencil_0_0_16b,
  w_p2_grad_xy_stencil_0_1_16b,
  w_p2_grad_xy_stencil_0_2_16b,
  w_p2_grad_xy_stencil_1_0_16b,
  w_p2_grad_xy_stencil_1_1_16b,
  w_p2_grad_xy_stencil_1_2_16b,
  w_p2_grad_xy_stencil_2_0_16b,
  w_p2_grad_xy_stencil_2_1_16b,
  w_p2_grad_xy_stencil_2_2_16b,
//Outputs
  out_w_p2_grad_gxy_stencil_0_0_16b,

  clk
);

//Inputs
input  w_p2_grad_xy_stencil_1_2_16b;
input  w_p2_grad_xy_stencil_1_1_16b;
input  w_p2_grad_xy_stencil_1_0_16b;
input  w_p2_grad_xy_stencil_0_2_16b;
input  w_p2_grad_xy_stencil_0_0_16b;
input  w_p2_grad_xy_stencil_0_1_16b;
input  w_p2_grad_xy_stencil_2_0_16b;
input  w_p2_grad_xy_stencil_2_1_16b;
input  w_p2_grad_xy_stencil_2_2_16b;
//Outputs
output  out_w_p2_grad_gxy_stencil_0_0_16b;

input  clk;


wire  r0_w_p2_grad_gxy_stencil_0_0_16b;
wire  r1_w_p2_grad_gxy_stencil_0_0_16b;
wire  r2_w_p2_grad_gxy_stencil_0_0_16b;
wire  r3_w_p2_grad_gxy_stencil_0_0_16b;
wire  r4_w_p2_grad_gxy_stencil_0_0_16b;
wire  r5_w_p2_grad_gxy_stencil_0_0_16b;
wire  r6_w_p2_grad_gxy_stencil_0_0_16b;
wire  r7_w_p2_grad_gxy_stencil_0_0_16b;
wire  r8_w_p2_grad_gxy_stencil_0_0_16b;
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
wire  w_p2_grad_gxy_stencil_0_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_gxy_stencil_0_0_16b = r8_w_p2_grad_gxy_stencil_0_0_16b;
assign  r0_w_p2_grad_gxy_stencil_0_0_16b  =  w_455_16b ;
assign  r1_w_p2_grad_gxy_stencil_0_0_16b  =  w_458_16b ;
assign  r2_w_p2_grad_gxy_stencil_0_0_16b  =  w_461_16b ;
assign  r3_w_p2_grad_gxy_stencil_0_0_16b  =  w_464_16b ;
assign  r4_w_p2_grad_gxy_stencil_0_0_16b  =  w_467_16b ;
assign  r5_w_p2_grad_gxy_stencil_0_0_16b  =  w_470_16b ;
assign  r6_w_p2_grad_gxy_stencil_0_0_16b  =  w_473_16b ;
assign  r7_w_p2_grad_gxy_stencil_0_0_16b  =  w_476_16b ;
assign  r8_w_p2_grad_gxy_stencil_0_0_16b  =  w_479_16b ;
assign  w_453_16b  = 1'b0;
assign  w_454_16b  =  w_p2_grad_xy_stencil_0_0_16b ;
ADD_16b_pe add_0 (
  .a(w_454_16b),
  .b(w_453_16b),
  .c(w_455_16b),
  .clk(clk)
);
assign  w_456_16b  =  r0_w_p2_grad_gxy_stencil_0_0_16b ;
assign  w_457_16b  =  w_p2_grad_xy_stencil_1_0_16b ;
ADD_16b_pe add_1 (
  .a(w_456_16b),
  .b(w_457_16b),
  .c(w_458_16b),
  .clk(clk)
);
assign  w_459_16b  =  r1_w_p2_grad_gxy_stencil_0_0_16b ;
assign  w_460_16b  =  w_p2_grad_xy_stencil_2_0_16b ;
ADD_16b_pe add_2 (
  .a(w_459_16b),
  .b(w_460_16b),
  .c(w_461_16b),
  .clk(clk)
);
assign  w_462_16b  =  r2_w_p2_grad_gxy_stencil_0_0_16b ;
assign  w_463_16b  =  w_p2_grad_xy_stencil_0_1_16b ;
ADD_16b_pe add_3 (
  .a(w_463_16b),
  .b(w_462_16b),
  .c(w_464_16b),
  .clk(clk)
);
assign  w_465_16b  =  r3_w_p2_grad_gxy_stencil_0_0_16b ;
assign  w_466_16b  =  w_p2_grad_xy_stencil_1_1_16b ;
ADD_16b_pe add_4 (
  .a(w_465_16b),
  .b(w_466_16b),
  .c(w_467_16b),
  .clk(clk)
);
assign  w_468_16b  =  r4_w_p2_grad_gxy_stencil_0_0_16b ;
assign  w_469_16b  =  w_p2_grad_xy_stencil_2_1_16b ;
ADD_16b_pe add_5 (
  .a(w_469_16b),
  .b(w_468_16b),
  .c(w_470_16b),
  .clk(clk)
);
assign  w_471_16b  =  r5_w_p2_grad_gxy_stencil_0_0_16b ;
assign  w_472_16b  =  w_p2_grad_xy_stencil_0_2_16b ;
ADD_16b_pe add_6 (
  .a(w_472_16b),
  .b(w_471_16b),
  .c(w_473_16b),
  .clk(clk)
);
assign  w_474_16b  =  r6_w_p2_grad_gxy_stencil_0_0_16b ;
assign  w_475_16b  =  w_p2_grad_xy_stencil_1_2_16b ;
ADD_16b_pe add_7 (
  .a(w_474_16b),
  .b(w_475_16b),
  .c(w_476_16b),
  .clk(clk)
);
assign  w_477_16b  =  r7_w_p2_grad_gxy_stencil_0_0_16b ;
assign  w_478_16b  =  w_p2_grad_xy_stencil_2_2_16b ;
ADD_16b_pe add_8 (
  .a(w_477_16b),
  .b(w_478_16b),
  .c(w_479_16b),
  .clk(clk)
);
assign  w_p2_grad_gxy_stencil_0_0_16b  = 1'b0;

endmodule







module kernel__p2_grad_y_stencil_stream(
//Inputs
  w_downsample_1_stencil_0_0_0_8b,
  w_downsample_1_stencil_0_0_2_8b,
  w_downsample_1_stencil_0_1_0_8b,
  w_downsample_1_stencil_0_1_2_8b,
  w_downsample_1_stencil_0_2_0_8b,
  w_downsample_1_stencil_0_2_2_8b,
  w_downsample_1_stencil_1_0_0_8b,
  w_downsample_1_stencil_1_0_2_8b,
  w_downsample_1_stencil_1_1_0_8b,
  w_downsample_1_stencil_1_1_2_8b,
  w_downsample_1_stencil_1_2_0_8b,
  w_downsample_1_stencil_1_2_2_8b,
  w_downsample_1_stencil_2_0_0_8b,
  w_downsample_1_stencil_2_0_2_8b,
  w_downsample_1_stencil_2_1_0_8b,
  w_downsample_1_stencil_2_1_2_8b,
  w_downsample_1_stencil_2_2_0_8b,
  w_downsample_1_stencil_2_2_2_8b,
//Outputs
  out_w_p2_grad_y_stencil_0_0_16b,

  clk
);

//Inputs
input  w_downsample_1_stencil_1_1_0_8b;
input  w_downsample_1_stencil_0_1_0_8b;
input  w_downsample_1_stencil_1_1_2_8b;
input  w_downsample_1_stencil_0_1_2_8b;
input  w_downsample_1_stencil_2_1_2_8b;
input  w_downsample_1_stencil_0_0_0_8b;
input  w_downsample_1_stencil_0_0_2_8b;
input  w_downsample_1_stencil_1_2_2_8b;
input  w_downsample_1_stencil_1_2_0_8b;
input  w_downsample_1_stencil_2_0_2_8b;
input  w_downsample_1_stencil_2_1_0_8b;
input  w_downsample_1_stencil_2_2_0_8b;
input  w_downsample_1_stencil_2_2_2_8b;
input  w_downsample_1_stencil_1_0_0_8b;
input  w_downsample_1_stencil_1_0_2_8b;
input  w_downsample_1_stencil_0_2_2_8b;
input  w_downsample_1_stencil_2_0_0_8b;
input  w_downsample_1_stencil_0_2_0_8b;
//Outputs
output  out_w_p2_grad_y_stencil_0_0_16b;

input  clk;


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
wire  w_p2_grad_y_stencil_0_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_y_stencil_0_0_16b = w_p2_grad_y_stencil_0_0_16b;
assign  w_353_16b  =  w_downsample_1_stencil_0_0_2_8b ;
assign  w_354_16b  =  w_353_16b ;
assign  w_355_16b  = 1'b0;
MULT_16b_pe mult_0 (
  .a(w_355_16b),
  .b(w_354_16b),
  .c(w_356_16b),
  .clk(clk)
);
assign  w_357_16b  =  w_downsample_1_stencil_1_0_2_8b ;
assign  w_358_16b  =  w_357_16b ;
assign  w_359_16b  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_359_16b),
  .b(w_358_16b),
  .c(w_360_16b),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_356_16b),
  .b(w_360_16b),
  .c(w_361_16b),
  .clk(clk)
);
assign  w_362_16b  =  w_downsample_1_stencil_2_0_2_8b ;
assign  w_363_16b  =  w_362_16b ;
assign  w_364_16b  = 1'b0;
MULT_16b_pe mult_3 (
  .a(w_364_16b),
  .b(w_363_16b),
  .c(w_365_16b),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_365_16b),
  .b(w_361_16b),
  .c(w_366_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_5 (
  .a(w_366_16b),
  .b(1'b0),
  .c(w_367_16b),
  .clk(clk)
);
assign  w_368_16b  =  w_367_16b ;
assign  w_369_16b  =  w_368_16b ;
assign  w_370_16b  =  w_downsample_1_stencil_0_0_0_8b ;
assign  w_371_16b  =  w_370_16b ;
MULT_16b_pe mult_6 (
  .a(w_371_16b),
  .b(w_355_16b),
  .c(w_372_16b),
  .clk(clk)
);
assign  w_373_16b  =  w_downsample_1_stencil_1_0_0_8b ;
assign  w_374_16b  =  w_373_16b ;
MULT_16b_pe mult_7 (
  .a(w_374_16b),
  .b(w_359_16b),
  .c(w_375_16b),
  .clk(clk)
);
ADD_16b_pe add_8 (
  .a(w_375_16b),
  .b(w_372_16b),
  .c(w_376_16b),
  .clk(clk)
);
assign  w_377_16b  =  w_downsample_1_stencil_2_0_0_8b ;
assign  w_378_16b  =  w_377_16b ;
MULT_16b_pe mult_9 (
  .a(w_364_16b),
  .b(w_378_16b),
  .c(w_379_16b),
  .clk(clk)
);
ADD_16b_pe add_10 (
  .a(w_376_16b),
  .b(w_379_16b),
  .c(w_380_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(w_380_16b),
  .b(1'b0),
  .c(w_381_16b),
  .clk(clk)
);
assign  w_382_16b  =  w_381_16b ;
assign  w_383_16b  =  w_382_16b ;
SUB_16b_pe sub_12 (
  .a(w_383_16b),
  .b(w_369_16b),
  .c(w_384_16b),
  .clk(clk)
);
assign  w_385_16b  =  w_downsample_1_stencil_0_1_2_8b ;
assign  w_386_16b  =  w_385_16b ;
MULT_16b_pe mult_13 (
  .a(w_355_16b),
  .b(w_386_16b),
  .c(w_387_16b),
  .clk(clk)
);
assign  w_388_16b  =  w_downsample_1_stencil_1_1_2_8b ;
assign  w_389_16b  =  w_388_16b ;
MULT_16b_pe mult_14 (
  .a(w_389_16b),
  .b(w_359_16b),
  .c(w_390_16b),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_390_16b),
  .b(w_387_16b),
  .c(w_391_16b),
  .clk(clk)
);
assign  w_392_16b  =  w_downsample_1_stencil_2_1_2_8b ;
assign  w_393_16b  =  w_392_16b ;
MULT_16b_pe mult_16 (
  .a(w_364_16b),
  .b(w_393_16b),
  .c(w_394_16b),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_394_16b),
  .b(w_391_16b),
  .c(w_395_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_18 (
  .a(1'b0),
  .b(w_395_16b),
  .c(w_396_16b),
  .clk(clk)
);
assign  w_397_16b  =  w_396_16b ;
assign  w_398_16b  =  w_397_16b ;
assign  w_399_16b  = 1'b0;
MULT_16b_pe mult_19 (
  .a(w_399_16b),
  .b(w_398_16b),
  .c(w_400_16b),
  .clk(clk)
);
ADD_16b_pe add_20 (
  .a(w_384_16b),
  .b(w_400_16b),
  .c(w_401_16b),
  .clk(clk)
);
assign  w_402_16b  =  w_downsample_1_stencil_0_1_0_8b ;
assign  w_403_16b  =  w_402_16b ;
MULT_16b_pe mult_21 (
  .a(w_403_16b),
  .b(w_355_16b),
  .c(w_404_16b),
  .clk(clk)
);
assign  w_405_16b  =  w_downsample_1_stencil_1_1_0_8b ;
assign  w_406_16b  =  w_405_16b ;
MULT_16b_pe mult_22 (
  .a(w_406_16b),
  .b(w_359_16b),
  .c(w_407_16b),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_407_16b),
  .b(w_404_16b),
  .c(w_408_16b),
  .clk(clk)
);
assign  w_409_16b  =  w_downsample_1_stencil_2_1_0_8b ;
assign  w_410_16b  =  w_409_16b ;
MULT_16b_pe mult_24 (
  .a(w_410_16b),
  .b(w_364_16b),
  .c(w_411_16b),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_411_16b),
  .b(w_408_16b),
  .c(w_412_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_26 (
  .a(1'b0),
  .b(w_412_16b),
  .c(w_413_16b),
  .clk(clk)
);
assign  w_414_16b  =  w_413_16b ;
assign  w_415_16b  =  w_414_16b ;
MULT_16b_pe mult_27 (
  .a(w_415_16b),
  .b(w_399_16b),
  .c(w_416_16b),
  .clk(clk)
);
SUB_16b_pe sub_28 (
  .a(w_416_16b),
  .b(w_401_16b),
  .c(w_417_16b),
  .clk(clk)
);
assign  w_418_16b  =  w_downsample_1_stencil_0_2_2_8b ;
assign  w_419_16b  =  w_418_16b ;
MULT_16b_pe mult_29 (
  .a(w_419_16b),
  .b(w_355_16b),
  .c(w_420_16b),
  .clk(clk)
);
assign  w_421_16b  =  w_downsample_1_stencil_1_2_2_8b ;
assign  w_422_16b  =  w_421_16b ;
MULT_16b_pe mult_30 (
  .a(w_359_16b),
  .b(w_422_16b),
  .c(w_423_16b),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_420_16b),
  .b(w_423_16b),
  .c(w_424_16b),
  .clk(clk)
);
assign  w_425_16b  =  w_downsample_1_stencil_2_2_2_8b ;
assign  w_426_16b  =  w_425_16b ;
MULT_16b_pe mult_32 (
  .a(w_364_16b),
  .b(w_426_16b),
  .c(w_427_16b),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_424_16b),
  .b(w_427_16b),
  .c(w_428_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_34 (
  .a(w_428_16b),
  .b(1'b0),
  .c(w_429_16b),
  .clk(clk)
);
assign  w_430_16b  =  w_429_16b ;
assign  w_431_16b  =  w_430_16b ;
ADD_16b_pe add_35 (
  .a(w_431_16b),
  .b(w_417_16b),
  .c(w_432_16b),
  .clk(clk)
);
assign  w_433_16b  =  w_downsample_1_stencil_0_2_0_8b ;
assign  w_434_16b  =  w_433_16b ;
MULT_16b_pe mult_36 (
  .a(w_355_16b),
  .b(w_434_16b),
  .c(w_435_16b),
  .clk(clk)
);
assign  w_436_16b  =  w_downsample_1_stencil_1_2_0_8b ;
assign  w_437_16b  =  w_436_16b ;
MULT_16b_pe mult_37 (
  .a(w_359_16b),
  .b(w_437_16b),
  .c(w_438_16b),
  .clk(clk)
);
ADD_16b_pe add_38 (
  .a(w_438_16b),
  .b(w_435_16b),
  .c(w_439_16b),
  .clk(clk)
);
assign  w_440_16b  =  w_downsample_1_stencil_2_2_0_8b ;
assign  w_441_16b  =  w_440_16b ;
MULT_16b_pe mult_39 (
  .a(w_441_16b),
  .b(w_364_16b),
  .c(w_442_16b),
  .clk(clk)
);
ADD_16b_pe add_40 (
  .a(w_442_16b),
  .b(w_439_16b),
  .c(w_443_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_41 (
  .a(w_443_16b),
  .b(1'b0),
  .c(w_444_16b),
  .clk(clk)
);
assign  w_445_16b  =  w_444_16b ;
assign  w_446_16b  =  w_445_16b ;
SUB_16b_pe sub_42 (
  .a(w_432_16b),
  .b(w_446_16b),
  .c(w_447_16b),
  .clk(clk)
);
assign  w_p2_grad_y_stencil_0_0_16b  =  w_447_16b ;

endmodule







module kernel__p2_grad_yy_stencil_update_stream(
//Inputs
  w_p2_grad_y_stencil_0_0_16b,
//Outputs
  out_w_p2_grad_yy_stencil_0_0_16b,

  clk
);

//Inputs
input  w_p2_grad_y_stencil_0_0_16b;
//Outputs
output  out_w_p2_grad_yy_stencil_0_0_16b;

input  clk;


wire  w_480_16b;
wire  w_481_16b;
wire  w_482_16b;
wire  w_p2_grad_yy_stencil_0_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_yy_stencil_0_0_16b = w_p2_grad_yy_stencil_0_0_16b;
assign  w_480_16b  =  w_p2_grad_y_stencil_0_0_16b ;
assign  w_481_16b  =  w_480_16b ;
MULT_16b_pe mult_0 (
  .a(w_481_16b),
  .b(1'b0),
  .c(w_482_16b),
  .clk(clk)
);
assign  w_p2_grad_yy_stencil_0_0_16b  =  w_482_16b ;

endmodule







module kernel__p2_grad_gx_stencil_stream(
//Inputs
  w_p2_grad_xx_stencil_0_0_16b,
  w_p2_grad_xx_stencil_0_1_16b,
  w_p2_grad_xx_stencil_0_2_16b,
  w_p2_grad_xx_stencil_1_0_16b,
  w_p2_grad_xx_stencil_1_1_16b,
  w_p2_grad_xx_stencil_1_2_16b,
  w_p2_grad_xx_stencil_2_0_16b,
  w_p2_grad_xx_stencil_2_1_16b,
  w_p2_grad_xx_stencil_2_2_16b,
//Outputs
  out_w_p2_grad_gx_stencil_0_0_16b,

  clk
);

//Inputs
input  w_p2_grad_xx_stencil_0_2_16b;
input  w_p2_grad_xx_stencil_0_1_16b;
input  w_p2_grad_xx_stencil_0_0_16b;
input  w_p2_grad_xx_stencil_2_1_16b;
input  w_p2_grad_xx_stencil_2_0_16b;
input  w_p2_grad_xx_stencil_2_2_16b;
input  w_p2_grad_xx_stencil_1_2_16b;
input  w_p2_grad_xx_stencil_1_0_16b;
input  w_p2_grad_xx_stencil_1_1_16b;
//Outputs
output  out_w_p2_grad_gx_stencil_0_0_16b;

input  clk;


wire  r0_w_p2_grad_gx_stencil_0_0_16b;
wire  r1_w_p2_grad_gx_stencil_0_0_16b;
wire  r2_w_p2_grad_gx_stencil_0_0_16b;
wire  r3_w_p2_grad_gx_stencil_0_0_16b;
wire  r4_w_p2_grad_gx_stencil_0_0_16b;
wire  r5_w_p2_grad_gx_stencil_0_0_16b;
wire  r6_w_p2_grad_gx_stencil_0_0_16b;
wire  r7_w_p2_grad_gx_stencil_0_0_16b;
wire  r8_w_p2_grad_gx_stencil_0_0_16b;
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
wire  w_p2_grad_gx_stencil_0_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_gx_stencil_0_0_16b = r8_w_p2_grad_gx_stencil_0_0_16b;
assign  r0_w_p2_grad_gx_stencil_0_0_16b  =  w_328_16b ;
assign  r1_w_p2_grad_gx_stencil_0_0_16b  =  w_331_16b ;
assign  r2_w_p2_grad_gx_stencil_0_0_16b  =  w_334_16b ;
assign  r3_w_p2_grad_gx_stencil_0_0_16b  =  w_337_16b ;
assign  r4_w_p2_grad_gx_stencil_0_0_16b  =  w_340_16b ;
assign  r5_w_p2_grad_gx_stencil_0_0_16b  =  w_343_16b ;
assign  r6_w_p2_grad_gx_stencil_0_0_16b  =  w_346_16b ;
assign  r7_w_p2_grad_gx_stencil_0_0_16b  =  w_349_16b ;
assign  r8_w_p2_grad_gx_stencil_0_0_16b  =  w_352_16b ;
assign  w_326_16b  = 1'b0;
assign  w_327_16b  =  w_p2_grad_xx_stencil_0_0_16b ;
ADD_16b_pe add_0 (
  .a(w_326_16b),
  .b(w_327_16b),
  .c(w_328_16b),
  .clk(clk)
);
assign  w_329_16b  =  r0_w_p2_grad_gx_stencil_0_0_16b ;
assign  w_330_16b  =  w_p2_grad_xx_stencil_1_0_16b ;
ADD_16b_pe add_1 (
  .a(w_330_16b),
  .b(w_329_16b),
  .c(w_331_16b),
  .clk(clk)
);
assign  w_332_16b  =  r1_w_p2_grad_gx_stencil_0_0_16b ;
assign  w_333_16b  =  w_p2_grad_xx_stencil_2_0_16b ;
ADD_16b_pe add_2 (
  .a(w_333_16b),
  .b(w_332_16b),
  .c(w_334_16b),
  .clk(clk)
);
assign  w_335_16b  =  r2_w_p2_grad_gx_stencil_0_0_16b ;
assign  w_336_16b  =  w_p2_grad_xx_stencil_0_1_16b ;
ADD_16b_pe add_3 (
  .a(w_335_16b),
  .b(w_336_16b),
  .c(w_337_16b),
  .clk(clk)
);
assign  w_338_16b  =  r3_w_p2_grad_gx_stencil_0_0_16b ;
assign  w_339_16b  =  w_p2_grad_xx_stencil_1_1_16b ;
ADD_16b_pe add_4 (
  .a(w_339_16b),
  .b(w_338_16b),
  .c(w_340_16b),
  .clk(clk)
);
assign  w_341_16b  =  r4_w_p2_grad_gx_stencil_0_0_16b ;
assign  w_342_16b  =  w_p2_grad_xx_stencil_2_1_16b ;
ADD_16b_pe add_5 (
  .a(w_341_16b),
  .b(w_342_16b),
  .c(w_343_16b),
  .clk(clk)
);
assign  w_344_16b  =  r5_w_p2_grad_gx_stencil_0_0_16b ;
assign  w_345_16b  =  w_p2_grad_xx_stencil_0_2_16b ;
ADD_16b_pe add_6 (
  .a(w_344_16b),
  .b(w_345_16b),
  .c(w_346_16b),
  .clk(clk)
);
assign  w_347_16b  =  r6_w_p2_grad_gx_stencil_0_0_16b ;
assign  w_348_16b  =  w_p2_grad_xx_stencil_1_2_16b ;
ADD_16b_pe add_7 (
  .a(w_347_16b),
  .b(w_348_16b),
  .c(w_349_16b),
  .clk(clk)
);
assign  w_350_16b  =  r7_w_p2_grad_gx_stencil_0_0_16b ;
assign  w_351_16b  =  w_p2_grad_xx_stencil_2_2_16b ;
ADD_16b_pe add_8 (
  .a(w_351_16b),
  .b(w_350_16b),
  .c(w_352_16b),
  .clk(clk)
);
assign  w_p2_grad_gx_stencil_0_0_16b  = 1'b0;

endmodule







module kernel__p2_corners_stencil_stream(
//Inputs
  w_p2_cim_stencil_0_0_16b,
  w_p2_cim_stencil_0_1_16b,
  w_p2_cim_stencil_0_2_16b,
  w_p2_cim_stencil_1_0_16b,
  w_p2_cim_stencil_1_1_16b,
  w_p2_cim_stencil_1_2_16b,
  w_p2_cim_stencil_2_0_16b,
  w_p2_cim_stencil_2_1_16b,
  w_p2_cim_stencil_2_2_16b,
//Outputs
  out_w_p2_corners_stencil_0_0_1b,

  clk
);

//Inputs
input  w_p2_cim_stencil_2_2_16b;
input  w_p2_cim_stencil_2_1_16b;
input  w_p2_cim_stencil_2_0_16b;
input  w_p2_cim_stencil_1_0_16b;
input  w_p2_cim_stencil_1_1_16b;
input  w_p2_cim_stencil_1_2_16b;
input  w_p2_cim_stencil_0_1_16b;
input  w_p2_cim_stencil_0_0_16b;
input  w_p2_cim_stencil_0_2_16b;
//Outputs
output  out_w_p2_corners_stencil_0_0_1b;

input  clk;


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
wire  w_p2_corners_stencil_0_0_1b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_corners_stencil_0_0_1b = w_p2_corners_stencil_0_0_1b;
assign  w_549_16b  =  w_p2_cim_stencil_1_1_16b ;
assign  w_550_16b  =  w_p2_cim_stencil_0_0_16b ;
assign  w_551_16b  =  w_p2_cim_stencil_1_0_16b ;
MAX_16b_pe max_0 (
  .a(w_551_16b),
  .b(w_550_16b),
  .c(w_552_16b),
  .clk(clk)
);
assign  w_553_16b  =  w_p2_cim_stencil_2_0_16b ;
MAX_16b_pe max_1 (
  .a(w_553_16b),
  .b(w_552_16b),
  .c(w_554_16b),
  .clk(clk)
);
assign  w_555_16b  =  w_p2_cim_stencil_0_1_16b ;
MAX_16b_pe max_2 (
  .a(w_555_16b),
  .b(w_554_16b),
  .c(w_556_16b),
  .clk(clk)
);
assign  w_557_16b  =  w_p2_cim_stencil_2_1_16b ;
MAX_16b_pe max_3 (
  .a(w_557_16b),
  .b(w_556_16b),
  .c(w_558_16b),
  .clk(clk)
);
assign  w_559_16b  =  w_p2_cim_stencil_0_2_16b ;
MAX_16b_pe max_4 (
  .a(w_559_16b),
  .b(w_558_16b),
  .c(w_560_16b),
  .clk(clk)
);
assign  w_561_16b  =  w_p2_cim_stencil_1_2_16b ;
MAX_16b_pe max_5 (
  .a(w_560_16b),
  .b(w_561_16b),
  .c(w_562_16b),
  .clk(clk)
);
assign  w_563_16b  =  w_p2_cim_stencil_2_2_16b ;
MAX_16b_pe max_6 (
  .a(w_562_16b),
  .b(w_563_16b),
  .c(w_564_16b),
  .clk(clk)
);
LT_16b_pe lt_7 (
  .a(w_549_16b),
  .b(w_564_16b),
  .c(w_565_16b),
  .clk(clk)
);
LTE_16b_pe lte_8 (
  .a(1'b0),
  .b(w_549_16b),
  .c(w_566_16b),
  .clk(clk)
);
AND_16b_pe and_9 (
  .a(w_565_16b),
  .b(w_566_16b),
  .c(w_567_16b),
  .clk(clk)
);
assign  w_p2_corners_stencil_0_0_1b  =  w_567_16b ;

endmodule







module kernel__downsample_1_stencil_update_stream(
//Inputs
  w_padded_1_stencil_0_0_8b,
  w_padded_1_stencil_0_1_8b,
  w_padded_1_stencil_0_2_8b,
  w_padded_1_stencil_1_0_8b,
  w_padded_1_stencil_1_1_8b,
  w_padded_1_stencil_1_2_8b,
  w_padded_1_stencil_1_3_8b,
  w_padded_1_stencil_2_0_8b,
  w_padded_1_stencil_2_1_8b,
  w_padded_1_stencil_2_2_8b,
  w_padded_1_stencil_2_3_8b,
  w_padded_1_stencil_3_1_8b,
  w_padded_1_stencil_3_2_8b,
  w_padded_1_stencil_3_3_8b,
//Outputs
  out_w_downsample_1_stencil_0_0_0_8b,
  out_w_downsample_1_stencil_1_0_0_8b,
  out_w_downsample_1_stencil_2_0_0_8b,

  clk
);

//Inputs
input  w_padded_1_stencil_3_1_8b;
input  w_padded_1_stencil_3_2_8b;
input  w_padded_1_stencil_3_3_8b;
input  w_padded_1_stencil_2_1_8b;
input  w_padded_1_stencil_2_0_8b;
input  w_padded_1_stencil_2_3_8b;
input  w_padded_1_stencil_2_2_8b;
input  w_padded_1_stencil_1_2_8b;
input  w_padded_1_stencil_1_3_8b;
input  w_padded_1_stencil_1_0_8b;
input  w_padded_1_stencil_1_1_8b;
input  w_padded_1_stencil_0_2_8b;
input  w_padded_1_stencil_0_1_8b;
input  w_padded_1_stencil_0_0_8b;
//Outputs
output  out_w_downsample_1_stencil_0_0_0_8b;
output  out_w_downsample_1_stencil_1_0_0_8b;
output  out_w_downsample_1_stencil_2_0_0_8b;

input  clk;


wire  w_128_16b;
wire  w_129_16b;
wire  w_130_16b;
wire  w_131_16b;
wire  w_132_16b;
wire  w_133_16b;
wire  w_134_16b;
wire  w_135_16b;
wire  w_136_16b;
wire  w_137_16b;
wire  w_138_16b;
wire  w_139_16b;
wire  w_140_16b;
wire  w_141_16b;
wire  w_142_16b;
wire  w_143_16b;
wire  w_144_16b;
wire  w_145_16b;
wire  w_146_16b;
wire  w_147_16b;
wire  w_148_16b;
wire  w_149_16b;
wire  w_150_16b;
wire  w_151_16b;
wire  w_152_16b;
wire  w_153_16b;
wire  w_154_16b;
wire  w_155_16b;
wire  w_156_16b;
wire  w_157_16b;
wire  w_158_16b;
wire  w_159_16b;
wire  w_160_16b;
wire  w_161_16b;
wire  w_162_16b;
wire  w_163_16b;
wire  w_164_16b;
wire  w_165_16b;
wire  w_166_16b;
wire  w_167_16b;
wire  w_168_16b;
wire  w_169_16b;
wire  w_170_16b;
wire  w_171_16b;
wire  w_172_16b;
wire  w_173_16b;
wire  w_174_16b;
wire  w_175_16b;
wire  w_176_16b;
wire  w_177_16b;
wire  w_178_16b;
wire  w_179_16b;
wire  w_180_16b;
wire  w_181_16b;
wire  w_182_16b;
wire  w_183_16b;
wire  w_184_16b;
wire  w_185_16b;
wire  w_186_16b;
wire  w_187_16b;
wire  w_188_16b;
wire  w_189_16b;
wire  w_190_16b;
wire  w_191_16b;
wire  w_192_16b;
wire  w_193_16b;
wire  w_194_16b;
wire  w_195_16b;
wire  w_196_16b;
wire  w_197_16b;
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
wire  w_downsample_1_stencil_0_0_0_8b;
wire  w_downsample_1_stencil_1_0_0_8b;
wire  w_downsample_1_stencil_2_0_0_8b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_downsample_1_stencil_0_0_0_8b = w_downsample_1_stencil_0_0_0_8b;
assign out_w_downsample_1_stencil_1_0_0_8b = w_downsample_1_stencil_1_0_0_8b;
assign out_w_downsample_1_stencil_2_0_0_8b = w_downsample_1_stencil_2_0_0_8b;
assign  w_128_16b  =  w_padded_1_stencil_1_1_8b ;
assign  w_129_16b  =  w_128_16b ;
assign  w_130_16b  =  w_padded_1_stencil_3_1_8b ;
assign  w_131_16b  =  w_130_16b ;
ADD_16b_pe add_0 (
  .a(w_129_16b),
  .b(w_131_16b),
  .c(w_132_16b),
  .clk(clk)
);
assign  w_133_16b  =  w_padded_1_stencil_1_3_8b ;
LSHIFT_16b_pe lshift_1 (
  .a(1'b0),
  .b(w_132_16b),
  .c(w_134_16b),
  .clk(clk)
);
assign  w_135_16b  =  w_134_16b ;
assign  w_136_16b  =  w_135_16b ;
ADD_16b_pe add_2 (
  .a(w_129_16b),
  .b(w_136_16b),
  .c(w_137_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_3 (
  .a(w_137_16b),
  .b(1'b0),
  .c(w_138_16b),
  .clk(clk)
);
assign  w_139_16b  =  w_138_16b ;
assign  w_140_16b  =  w_139_16b ;
assign  w_141_16b  =  w_133_16b ;
ADD_16b_pe add_4 (
  .a(w_129_16b),
  .b(w_141_16b),
  .c(w_142_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_5 (
  .a(1'b0),
  .b(w_142_16b),
  .c(w_143_16b),
  .clk(clk)
);
assign  w_144_16b  =  w_143_16b ;
assign  w_145_16b  =  w_144_16b ;
ADD_16b_pe add_6 (
  .a(w_132_16b),
  .b(w_141_16b),
  .c(w_146_16b),
  .clk(clk)
);
assign  w_147_16b  =  w_padded_1_stencil_3_3_8b ;
assign  w_148_16b  =  w_147_16b ;
ADD_16b_pe add_7 (
  .a(w_146_16b),
  .b(w_148_16b),
  .c(w_149_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_8 (
  .a(1'b0),
  .b(w_149_16b),
  .c(w_150_16b),
  .clk(clk)
);
assign  w_151_16b  =  w_150_16b ;
assign  w_152_16b  =  w_151_16b ;
ADD_16b_pe add_9 (
  .a(w_145_16b),
  .b(w_152_16b),
  .c(w_153_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_10 (
  .a(1'b0),
  .b(w_153_16b),
  .c(w_154_16b),
  .clk(clk)
);
assign  w_155_16b  =  w_154_16b ;
assign  w_156_16b  =  w_155_16b ;
ADD_16b_pe add_11 (
  .a(w_156_16b),
  .b(w_140_16b),
  .c(w_157_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_12 (
  .a(1'b0),
  .b(w_157_16b),
  .c(w_158_16b),
  .clk(clk)
);
assign  w_159_16b  =  w_158_16b ;
assign  w_160_16b  =  w_padded_1_stencil_2_1_8b ;
assign  w_161_16b  =  w_padded_1_stencil_1_2_8b ;
assign  w_162_16b  =  w_padded_1_stencil_0_1_8b ;
assign  w_163_16b  =  w_162_16b ;
assign  w_164_16b  =  w_160_16b ;
ADD_16b_pe add_13 (
  .a(w_164_16b),
  .b(w_163_16b),
  .c(w_165_16b),
  .clk(clk)
);
assign  w_166_16b  =  w_padded_1_stencil_1_0_8b ;
assign  w_167_16b  =  w_166_16b ;
ADD_16b_pe add_14 (
  .a(w_165_16b),
  .b(w_167_16b),
  .c(w_168_16b),
  .clk(clk)
);
assign  w_169_16b  =  w_161_16b ;
ADD_16b_pe add_15 (
  .a(w_168_16b),
  .b(w_169_16b),
  .c(w_170_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_16 (
  .a(1'b0),
  .b(w_170_16b),
  .c(w_171_16b),
  .clk(clk)
);
assign  w_172_16b  =  w_171_16b ;
assign  w_173_16b  =  w_172_16b ;
ADD_16b_pe add_17 (
  .a(w_173_16b),
  .b(w_164_16b),
  .c(w_174_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_18 (
  .a(1'b0),
  .b(w_174_16b),
  .c(w_175_16b),
  .clk(clk)
);
assign  w_176_16b  =  w_175_16b ;
assign  w_177_16b  =  w_176_16b ;
assign  w_178_16b  =  w_padded_1_stencil_3_2_8b ;
assign  w_179_16b  =  w_178_16b ;
ADD_16b_pe add_19 (
  .a(w_179_16b),
  .b(w_169_16b),
  .c(w_180_16b),
  .clk(clk)
);
ADD_16b_pe add_20 (
  .a(w_164_16b),
  .b(w_180_16b),
  .c(w_181_16b),
  .clk(clk)
);
assign  w_182_16b  =  w_padded_1_stencil_2_3_8b ;
assign  w_183_16b  =  w_182_16b ;
ADD_16b_pe add_21 (
  .a(w_183_16b),
  .b(w_181_16b),
  .c(w_184_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_22 (
  .a(1'b0),
  .b(w_184_16b),
  .c(w_185_16b),
  .clk(clk)
);
assign  w_186_16b  =  w_185_16b ;
assign  w_187_16b  =  w_186_16b ;
ADD_16b_pe add_23 (
  .a(w_169_16b),
  .b(w_187_16b),
  .c(w_188_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_24 (
  .a(1'b0),
  .b(w_188_16b),
  .c(w_189_16b),
  .clk(clk)
);
assign  w_190_16b  =  w_189_16b ;
assign  w_191_16b  =  w_190_16b ;
ADD_16b_pe add_25 (
  .a(w_191_16b),
  .b(w_177_16b),
  .c(w_192_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_26 (
  .a(1'b0),
  .b(w_192_16b),
  .c(w_193_16b),
  .clk(clk)
);
assign  w_194_16b  =  w_193_16b ;
assign  w_195_16b  =  w_padded_1_stencil_0_2_8b ;
assign  w_196_16b  =  w_padded_1_stencil_2_2_8b ;
assign  w_197_16b  =  w_padded_1_stencil_2_0_8b ;
assign  w_198_16b  =  w_padded_1_stencil_0_0_8b ;
assign  w_199_16b  =  w_198_16b ;
assign  w_200_16b  =  w_197_16b ;
ADD_16b_pe add_27 (
  .a(w_199_16b),
  .b(w_200_16b),
  .c(w_201_16b),
  .clk(clk)
);
assign  w_202_16b  =  w_195_16b ;
ADD_16b_pe add_28 (
  .a(w_201_16b),
  .b(w_202_16b),
  .c(w_203_16b),
  .clk(clk)
);
assign  w_204_16b  =  w_196_16b ;
ADD_16b_pe add_29 (
  .a(w_203_16b),
  .b(w_204_16b),
  .c(w_205_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_30 (
  .a(1'b0),
  .b(w_205_16b),
  .c(w_206_16b),
  .clk(clk)
);
assign  w_207_16b  =  w_206_16b ;
assign  w_208_16b  =  w_207_16b ;
ADD_16b_pe add_31 (
  .a(w_200_16b),
  .b(w_204_16b),
  .c(w_209_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_32 (
  .a(w_209_16b),
  .b(1'b0),
  .c(w_210_16b),
  .clk(clk)
);
assign  w_211_16b  =  w_210_16b ;
assign  w_212_16b  =  w_211_16b ;
ADD_16b_pe add_33 (
  .a(w_212_16b),
  .b(w_208_16b),
  .c(w_213_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_34 (
  .a(1'b0),
  .b(w_213_16b),
  .c(w_214_16b),
  .clk(clk)
);
assign  w_215_16b  =  w_214_16b ;
assign  w_216_16b  =  w_215_16b ;
ADD_16b_pe add_35 (
  .a(w_202_16b),
  .b(w_204_16b),
  .c(w_217_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_36 (
  .a(1'b0),
  .b(w_217_16b),
  .c(w_218_16b),
  .clk(clk)
);
assign  w_219_16b  =  w_218_16b ;
assign  w_220_16b  =  w_219_16b ;
ADD_16b_pe add_37 (
  .a(w_204_16b),
  .b(w_220_16b),
  .c(w_221_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_38 (
  .a(1'b0),
  .b(w_221_16b),
  .c(w_222_16b),
  .clk(clk)
);
assign  w_223_16b  =  w_222_16b ;
assign  w_224_16b  =  w_223_16b ;
ADD_16b_pe add_39 (
  .a(w_224_16b),
  .b(w_216_16b),
  .c(w_225_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_40 (
  .a(1'b0),
  .b(w_225_16b),
  .c(w_226_16b),
  .clk(clk)
);
assign  w_227_16b  =  w_226_16b ;
assign  w_downsample_1_stencil_0_0_0_8b  =  w_159_16b ;
assign  w_downsample_1_stencil_1_0_0_8b  =  w_194_16b ;
assign  w_downsample_1_stencil_2_0_0_8b  =  w_227_16b ;

endmodule







module kernel__p2_grad_x_stencil_stream(
//Inputs
  w_downsample_1_stencil_0_0_0_8b,
  w_downsample_1_stencil_0_0_1_8b,
  w_downsample_1_stencil_0_0_2_8b,
  w_downsample_1_stencil_0_2_0_8b,
  w_downsample_1_stencil_0_2_1_8b,
  w_downsample_1_stencil_0_2_2_8b,
  w_downsample_1_stencil_1_0_0_8b,
  w_downsample_1_stencil_1_0_1_8b,
  w_downsample_1_stencil_1_0_2_8b,
  w_downsample_1_stencil_1_2_0_8b,
  w_downsample_1_stencil_1_2_1_8b,
  w_downsample_1_stencil_1_2_2_8b,
  w_downsample_1_stencil_2_0_0_8b,
  w_downsample_1_stencil_2_0_1_8b,
  w_downsample_1_stencil_2_0_2_8b,
  w_downsample_1_stencil_2_2_0_8b,
  w_downsample_1_stencil_2_2_1_8b,
  w_downsample_1_stencil_2_2_2_8b,
//Outputs
  out_w_p2_grad_x_stencil_0_0_16b,

  clk
);

//Inputs
input  w_downsample_1_stencil_0_0_0_8b;
input  w_downsample_1_stencil_0_0_1_8b;
input  w_downsample_1_stencil_0_0_2_8b;
input  w_downsample_1_stencil_2_0_1_8b;
input  w_downsample_1_stencil_1_2_2_8b;
input  w_downsample_1_stencil_1_2_1_8b;
input  w_downsample_1_stencil_1_2_0_8b;
input  w_downsample_1_stencil_2_0_2_8b;
input  w_downsample_1_stencil_2_2_0_8b;
input  w_downsample_1_stencil_2_2_1_8b;
input  w_downsample_1_stencil_2_2_2_8b;
input  w_downsample_1_stencil_1_0_1_8b;
input  w_downsample_1_stencil_1_0_0_8b;
input  w_downsample_1_stencil_1_0_2_8b;
input  w_downsample_1_stencil_0_2_2_8b;
input  w_downsample_1_stencil_2_0_0_8b;
input  w_downsample_1_stencil_0_2_0_8b;
input  w_downsample_1_stencil_0_2_1_8b;
//Outputs
output  out_w_p2_grad_x_stencil_0_0_16b;

input  clk;


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
wire  w_p2_grad_x_stencil_0_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_x_stencil_0_0_16b = w_p2_grad_x_stencil_0_0_16b;
assign  w_228_16b  =  w_downsample_1_stencil_0_2_0_8b ;
assign  w_229_16b  =  w_228_16b ;
assign  w_230_16b  = 1'b0;
MULT_16b_pe mult_0 (
  .a(w_230_16b),
  .b(w_229_16b),
  .c(w_231_16b),
  .clk(clk)
);
assign  w_232_16b  =  w_downsample_1_stencil_1_2_0_8b ;
assign  w_233_16b  =  w_232_16b ;
assign  w_234_16b  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_233_16b),
  .b(w_234_16b),
  .c(w_235_16b),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_231_16b),
  .b(w_235_16b),
  .c(w_236_16b),
  .clk(clk)
);
assign  w_237_16b  =  w_downsample_1_stencil_2_2_0_8b ;
assign  w_238_16b  =  w_237_16b ;
assign  w_239_16b  = 1'b0;
MULT_16b_pe mult_3 (
  .a(w_238_16b),
  .b(w_239_16b),
  .c(w_240_16b),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_240_16b),
  .b(w_236_16b),
  .c(w_241_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_5 (
  .a(1'b0),
  .b(w_241_16b),
  .c(w_242_16b),
  .clk(clk)
);
assign  w_243_16b  =  w_242_16b ;
assign  w_244_16b  =  w_243_16b ;
assign  w_245_16b  =  w_downsample_1_stencil_0_0_0_8b ;
assign  w_246_16b  =  w_245_16b ;
MULT_16b_pe mult_6 (
  .a(w_230_16b),
  .b(w_246_16b),
  .c(w_247_16b),
  .clk(clk)
);
assign  w_248_16b  =  w_downsample_1_stencil_1_0_0_8b ;
assign  w_249_16b  =  w_248_16b ;
MULT_16b_pe mult_7 (
  .a(w_234_16b),
  .b(w_249_16b),
  .c(w_250_16b),
  .clk(clk)
);
ADD_16b_pe add_8 (
  .a(w_247_16b),
  .b(w_250_16b),
  .c(w_251_16b),
  .clk(clk)
);
assign  w_252_16b  =  w_downsample_1_stencil_2_0_0_8b ;
assign  w_253_16b  =  w_252_16b ;
MULT_16b_pe mult_9 (
  .a(w_239_16b),
  .b(w_253_16b),
  .c(w_254_16b),
  .clk(clk)
);
ADD_16b_pe add_10 (
  .a(w_254_16b),
  .b(w_251_16b),
  .c(w_255_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(1'b0),
  .b(w_255_16b),
  .c(w_256_16b),
  .clk(clk)
);
assign  w_257_16b  =  w_256_16b ;
assign  w_258_16b  =  w_257_16b ;
SUB_16b_pe sub_12 (
  .a(w_244_16b),
  .b(w_258_16b),
  .c(w_259_16b),
  .clk(clk)
);
assign  w_260_16b  =  w_downsample_1_stencil_0_0_1_8b ;
assign  w_261_16b  =  w_260_16b ;
MULT_16b_pe mult_13 (
  .a(w_230_16b),
  .b(w_261_16b),
  .c(w_262_16b),
  .clk(clk)
);
assign  w_263_16b  =  w_downsample_1_stencil_1_0_1_8b ;
assign  w_264_16b  =  w_263_16b ;
MULT_16b_pe mult_14 (
  .a(w_234_16b),
  .b(w_264_16b),
  .c(w_265_16b),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_262_16b),
  .b(w_265_16b),
  .c(w_266_16b),
  .clk(clk)
);
assign  w_267_16b  =  w_downsample_1_stencil_2_0_1_8b ;
assign  w_268_16b  =  w_267_16b ;
MULT_16b_pe mult_16 (
  .a(w_239_16b),
  .b(w_268_16b),
  .c(w_269_16b),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_269_16b),
  .b(w_266_16b),
  .c(w_270_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_18 (
  .a(1'b0),
  .b(w_270_16b),
  .c(w_271_16b),
  .clk(clk)
);
assign  w_272_16b  =  w_271_16b ;
assign  w_273_16b  =  w_272_16b ;
assign  w_274_16b  = 1'b0;
MULT_16b_pe mult_19 (
  .a(w_274_16b),
  .b(w_273_16b),
  .c(w_275_16b),
  .clk(clk)
);
SUB_16b_pe sub_20 (
  .a(w_275_16b),
  .b(w_259_16b),
  .c(w_276_16b),
  .clk(clk)
);
assign  w_277_16b  =  w_downsample_1_stencil_0_2_1_8b ;
assign  w_278_16b  =  w_277_16b ;
MULT_16b_pe mult_21 (
  .a(w_230_16b),
  .b(w_278_16b),
  .c(w_279_16b),
  .clk(clk)
);
assign  w_280_16b  =  w_downsample_1_stencil_1_2_1_8b ;
assign  w_281_16b  =  w_280_16b ;
MULT_16b_pe mult_22 (
  .a(w_281_16b),
  .b(w_234_16b),
  .c(w_282_16b),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_282_16b),
  .b(w_279_16b),
  .c(w_283_16b),
  .clk(clk)
);
assign  w_284_16b  =  w_downsample_1_stencil_2_2_1_8b ;
assign  w_285_16b  =  w_284_16b ;
MULT_16b_pe mult_24 (
  .a(w_239_16b),
  .b(w_285_16b),
  .c(w_286_16b),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_283_16b),
  .b(w_286_16b),
  .c(w_287_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_26 (
  .a(1'b0),
  .b(w_287_16b),
  .c(w_288_16b),
  .clk(clk)
);
assign  w_289_16b  =  w_288_16b ;
assign  w_290_16b  =  w_289_16b ;
MULT_16b_pe mult_27 (
  .a(w_274_16b),
  .b(w_290_16b),
  .c(w_291_16b),
  .clk(clk)
);
ADD_16b_pe add_28 (
  .a(w_276_16b),
  .b(w_291_16b),
  .c(w_292_16b),
  .clk(clk)
);
assign  w_293_16b  =  w_downsample_1_stencil_0_0_2_8b ;
assign  w_294_16b  =  w_293_16b ;
MULT_16b_pe mult_29 (
  .a(w_230_16b),
  .b(w_294_16b),
  .c(w_295_16b),
  .clk(clk)
);
assign  w_296_16b  =  w_downsample_1_stencil_1_0_2_8b ;
assign  w_297_16b  =  w_296_16b ;
MULT_16b_pe mult_30 (
  .a(w_234_16b),
  .b(w_297_16b),
  .c(w_298_16b),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_298_16b),
  .b(w_295_16b),
  .c(w_299_16b),
  .clk(clk)
);
assign  w_300_16b  =  w_downsample_1_stencil_2_0_2_8b ;
assign  w_301_16b  =  w_300_16b ;
MULT_16b_pe mult_32 (
  .a(w_301_16b),
  .b(w_239_16b),
  .c(w_302_16b),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_302_16b),
  .b(w_299_16b),
  .c(w_303_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_34 (
  .a(1'b0),
  .b(w_303_16b),
  .c(w_304_16b),
  .clk(clk)
);
assign  w_305_16b  =  w_304_16b ;
assign  w_306_16b  =  w_305_16b ;
SUB_16b_pe sub_35 (
  .a(w_292_16b),
  .b(w_306_16b),
  .c(w_307_16b),
  .clk(clk)
);
assign  w_308_16b  =  w_downsample_1_stencil_0_2_2_8b ;
assign  w_309_16b  =  w_308_16b ;
MULT_16b_pe mult_36 (
  .a(w_230_16b),
  .b(w_309_16b),
  .c(w_310_16b),
  .clk(clk)
);
assign  w_311_16b  =  w_downsample_1_stencil_1_2_2_8b ;
assign  w_312_16b  =  w_311_16b ;
MULT_16b_pe mult_37 (
  .a(w_234_16b),
  .b(w_312_16b),
  .c(w_313_16b),
  .clk(clk)
);
ADD_16b_pe add_38 (
  .a(w_313_16b),
  .b(w_310_16b),
  .c(w_314_16b),
  .clk(clk)
);
assign  w_315_16b  =  w_downsample_1_stencil_2_2_2_8b ;
assign  w_316_16b  =  w_315_16b ;
MULT_16b_pe mult_39 (
  .a(w_316_16b),
  .b(w_239_16b),
  .c(w_317_16b),
  .clk(clk)
);
ADD_16b_pe add_40 (
  .a(w_317_16b),
  .b(w_314_16b),
  .c(w_318_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_41 (
  .a(1'b0),
  .b(w_318_16b),
  .c(w_319_16b),
  .clk(clk)
);
assign  w_320_16b  =  w_319_16b ;
assign  w_321_16b  =  w_320_16b ;
ADD_16b_pe add_42 (
  .a(w_321_16b),
  .b(w_307_16b),
  .c(w_322_16b),
  .clk(clk)
);
assign  w_p2_grad_x_stencil_0_0_16b  =  w_322_16b ;

endmodule







module kernel__p2_grad_xy_stencil_update_stream(
//Inputs
  w_p2_grad_x_stencil_0_0_16b,
  w_p2_grad_y_stencil_0_0_16b,
//Outputs
  out_w_p2_grad_xy_stencil_0_0_16b,

  clk
);

//Inputs
input  w_p2_grad_x_stencil_0_0_16b;
input  w_p2_grad_y_stencil_0_0_16b;
//Outputs
output  out_w_p2_grad_xy_stencil_0_0_16b;

input  clk;


wire  w_448_16b;
wire  w_449_16b;
wire  w_450_16b;
wire  w_451_16b;
wire  w_452_16b;
wire  w_p2_grad_xy_stencil_0_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_xy_stencil_0_0_16b = w_p2_grad_xy_stencil_0_0_16b;
assign  w_448_16b  =  w_p2_grad_x_stencil_0_0_16b ;
assign  w_449_16b  =  w_448_16b ;
assign  w_450_16b  =  w_p2_grad_y_stencil_0_0_16b ;
assign  w_451_16b  =  w_450_16b ;
MULT_16b_pe mult_0 (
  .a(w_449_16b),
  .b(w_451_16b),
  .c(w_452_16b),
  .clk(clk)
);
assign  w_p2_grad_xy_stencil_0_0_16b  =  w_452_16b ;

endmodule







module kernel__hw_output_1_stencil_stream(
//Inputs
  w_downsample_1_stencil_0_2_2_8b,
  w_downsample_1_stencil_1_2_2_8b,
  w_downsample_1_stencil_2_2_2_8b,
  w_p2_corners_stencil_0_0_1b,
//Outputs
  out_w_hw_output_1_stencil_1_0_0_8b,
  out_w_hw_output_1_stencil_2_0_0_8b,
  out_w_hw_output_1_stencil_packed_16b,

  clk
);

//Inputs
input  w_p2_corners_stencil_0_0_1b;
input  w_downsample_1_stencil_0_2_2_8b;
input  w_downsample_1_stencil_1_2_2_8b;
input  w_downsample_1_stencil_2_2_2_8b;
//Outputs
output  out_w_hw_output_1_stencil_1_0_0_8b;
output  out_w_hw_output_1_stencil_2_0_0_8b;
output  out_w_hw_output_1_stencil_packed_16b;

input  clk;


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
assign  w_568_16b  = 1'b0;
assign  w_569_16b  =  w_downsample_1_stencil_0_2_2_8b ;
assign  w_570_16b  =  w_p2_corners_stencil_0_0_1b ;
MUX_16b_pe mux_0 (
  .a(w_568_16b),
  .b(w_569_16b),
  .s(w_570_16b),
  .c(w_571_16b),
  .clk(clk)
);
assign  w_572_16b  = 1'b0;
assign  w_573_16b  =  w_downsample_1_stencil_1_2_2_8b ;
assign  w_574_16b  =  w_p2_corners_stencil_0_0_1b ;
MUX_16b_pe mux_1 (
  .a(w_574_16b),
  .b(w_573_16b),
  .s(w_572_16b),
  .c(w_575_16b),
  .clk(clk)
);
assign  w_576_16b  = 1'b0;
assign  w_577_16b  =  w_downsample_1_stencil_2_2_2_8b ;
assign  w_578_16b  =  w_p2_corners_stencil_0_0_1b ;
MUX_16b_pe mux_2 (
  .a(w_577_16b),
  .b(w_576_16b),
  .s(w_578_16b),
  .c(w_579_16b),
  .clk(clk)
);
assign  w_hw_output_1_stencil_0_0_0_8b  =  w_571_16b ;
assign  w_hw_output_1_stencil_1_0_0_8b  =  w_575_16b ;
assign  w_hw_output_1_stencil_2_0_0_8b  =  w_579_16b ;
assign  w_hw_output_1_stencil_packed_16b  =  w_hw_output_1_stencil_0_0_0_8b ;

endmodule







module kernel__p2_grad_gy_stencil_stream(
//Inputs
  w_p2_grad_yy_stencil_0_0_16b,
  w_p2_grad_yy_stencil_0_1_16b,
  w_p2_grad_yy_stencil_0_2_16b,
  w_p2_grad_yy_stencil_1_0_16b,
  w_p2_grad_yy_stencil_1_1_16b,
  w_p2_grad_yy_stencil_1_2_16b,
  w_p2_grad_yy_stencil_2_0_16b,
  w_p2_grad_yy_stencil_2_1_16b,
  w_p2_grad_yy_stencil_2_2_16b,
//Outputs
  out_w_p2_grad_gy_stencil_0_0_16b,

  clk
);

//Inputs
input  w_p2_grad_yy_stencil_2_2_16b;
input  w_p2_grad_yy_stencil_2_1_16b;
input  w_p2_grad_yy_stencil_2_0_16b;
input  w_p2_grad_yy_stencil_0_1_16b;
input  w_p2_grad_yy_stencil_0_0_16b;
input  w_p2_grad_yy_stencil_0_2_16b;
input  w_p2_grad_yy_stencil_1_0_16b;
input  w_p2_grad_yy_stencil_1_1_16b;
input  w_p2_grad_yy_stencil_1_2_16b;
//Outputs
output  out_w_p2_grad_gy_stencil_0_0_16b;

input  clk;


wire  r0_w_p2_grad_gy_stencil_0_0_16b;
wire  r1_w_p2_grad_gy_stencil_0_0_16b;
wire  r2_w_p2_grad_gy_stencil_0_0_16b;
wire  r3_w_p2_grad_gy_stencil_0_0_16b;
wire  r4_w_p2_grad_gy_stencil_0_0_16b;
wire  r5_w_p2_grad_gy_stencil_0_0_16b;
wire  r6_w_p2_grad_gy_stencil_0_0_16b;
wire  r7_w_p2_grad_gy_stencil_0_0_16b;
wire  r8_w_p2_grad_gy_stencil_0_0_16b;
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
wire  w_p2_grad_gy_stencil_0_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_gy_stencil_0_0_16b = r8_w_p2_grad_gy_stencil_0_0_16b;
assign  r0_w_p2_grad_gy_stencil_0_0_16b  =  w_485_16b ;
assign  r1_w_p2_grad_gy_stencil_0_0_16b  =  w_488_16b ;
assign  r2_w_p2_grad_gy_stencil_0_0_16b  =  w_491_16b ;
assign  r3_w_p2_grad_gy_stencil_0_0_16b  =  w_494_16b ;
assign  r4_w_p2_grad_gy_stencil_0_0_16b  =  w_497_16b ;
assign  r5_w_p2_grad_gy_stencil_0_0_16b  =  w_500_16b ;
assign  r6_w_p2_grad_gy_stencil_0_0_16b  =  w_503_16b ;
assign  r7_w_p2_grad_gy_stencil_0_0_16b  =  w_506_16b ;
assign  r8_w_p2_grad_gy_stencil_0_0_16b  =  w_509_16b ;
assign  w_483_16b  = 1'b0;
assign  w_484_16b  =  w_p2_grad_yy_stencil_0_0_16b ;
ADD_16b_pe add_0 (
  .a(w_484_16b),
  .b(w_483_16b),
  .c(w_485_16b),
  .clk(clk)
);
assign  w_486_16b  =  r0_w_p2_grad_gy_stencil_0_0_16b ;
assign  w_487_16b  =  w_p2_grad_yy_stencil_1_0_16b ;
ADD_16b_pe add_1 (
  .a(w_487_16b),
  .b(w_486_16b),
  .c(w_488_16b),
  .clk(clk)
);
assign  w_489_16b  =  r1_w_p2_grad_gy_stencil_0_0_16b ;
assign  w_490_16b  =  w_p2_grad_yy_stencil_2_0_16b ;
ADD_16b_pe add_2 (
  .a(w_490_16b),
  .b(w_489_16b),
  .c(w_491_16b),
  .clk(clk)
);
assign  w_492_16b  =  r2_w_p2_grad_gy_stencil_0_0_16b ;
assign  w_493_16b  =  w_p2_grad_yy_stencil_0_1_16b ;
ADD_16b_pe add_3 (
  .a(w_492_16b),
  .b(w_493_16b),
  .c(w_494_16b),
  .clk(clk)
);
assign  w_495_16b  =  r3_w_p2_grad_gy_stencil_0_0_16b ;
assign  w_496_16b  =  w_p2_grad_yy_stencil_1_1_16b ;
ADD_16b_pe add_4 (
  .a(w_495_16b),
  .b(w_496_16b),
  .c(w_497_16b),
  .clk(clk)
);
assign  w_498_16b  =  r4_w_p2_grad_gy_stencil_0_0_16b ;
assign  w_499_16b  =  w_p2_grad_yy_stencil_2_1_16b ;
ADD_16b_pe add_5 (
  .a(w_498_16b),
  .b(w_499_16b),
  .c(w_500_16b),
  .clk(clk)
);
assign  w_501_16b  =  r5_w_p2_grad_gy_stencil_0_0_16b ;
assign  w_502_16b  =  w_p2_grad_yy_stencil_0_2_16b ;
ADD_16b_pe add_6 (
  .a(w_502_16b),
  .b(w_501_16b),
  .c(w_503_16b),
  .clk(clk)
);
assign  w_504_16b  =  r6_w_p2_grad_gy_stencil_0_0_16b ;
assign  w_505_16b  =  w_p2_grad_yy_stencil_1_2_16b ;
ADD_16b_pe add_7 (
  .a(w_504_16b),
  .b(w_505_16b),
  .c(w_506_16b),
  .clk(clk)
);
assign  w_507_16b  =  r7_w_p2_grad_gy_stencil_0_0_16b ;
assign  w_508_16b  =  w_p2_grad_yy_stencil_2_2_16b ;
ADD_16b_pe add_8 (
  .a(w_507_16b),
  .b(w_508_16b),
  .c(w_509_16b),
  .clk(clk)
);
assign  w_p2_grad_gy_stencil_0_0_16b  = 1'b0;

endmodule







module kernel__p2_grad_xx_stencil_update_stream(
//Inputs
  w_p2_grad_x_stencil_0_0_16b,
//Outputs
  out_w_p2_grad_xx_stencil_0_0_16b,

  clk
);

//Inputs
input  w_p2_grad_x_stencil_0_0_16b;
//Outputs
output  out_w_p2_grad_xx_stencil_0_0_16b;

input  clk;


wire  w_323_16b;
wire  w_324_16b;
wire  w_325_16b;
wire  w_p2_grad_xx_stencil_0_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_xx_stencil_0_0_16b = w_p2_grad_xx_stencil_0_0_16b;
assign  w_323_16b  =  w_p2_grad_x_stencil_0_0_16b ;
assign  w_324_16b  =  w_323_16b ;
MULT_16b_pe mult_0 (
  .a(w_324_16b),
  .b(1'b0),
  .c(w_325_16b),
  .clk(clk)
);
assign  w_p2_grad_xx_stencil_0_0_16b  =  w_325_16b ;

endmodule







module kernel__p2_cim_stencil_update_stream(
//Inputs
  w_p2_grad_gx_stencil_0_0_16b,
  w_p2_grad_gxy_stencil_0_0_16b,
  w_p2_grad_gy_stencil_0_0_16b,
//Outputs
  out_w_p2_cim_stencil_0_0_16b,

  clk
);

//Inputs
input  w_p2_grad_gxy_stencil_0_0_16b;
input  w_p2_grad_gx_stencil_0_0_16b;
input  w_p2_grad_gy_stencil_0_0_16b;
//Outputs
output  out_w_p2_cim_stencil_0_0_16b;

input  clk;


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
wire  w_p2_cim_stencil_0_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_cim_stencil_0_0_16b = w_p2_cim_stencil_0_0_16b;
assign  w_510_16b  =  w_p2_grad_gx_stencil_0_0_16b ;
assign  w_511_16b  =  w_p2_grad_gy_stencil_0_0_16b ;
assign  w_512_16b  =  w_p2_grad_gxy_stencil_0_0_16b ;
DIV_16b_pe div_0 (
  .a(1'b0),
  .b(w_510_16b),
  .c(w_513_16b),
  .clk(clk)
);
MULT_16b_pe mult_1 (
  .a(1'b0),
  .b(w_513_16b),
  .c(w_514_16b),
  .clk(clk)
);
SUB_16b_pe sub_2 (
  .a(w_514_16b),
  .b(w_510_16b),
  .c(w_515_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_3 (
  .a(w_515_16b),
  .b(1'b0),
  .c(w_516_16b),
  .clk(clk)
);
assign  w_517_16b  = 1'b0;
AND_16b_pe and_4 (
  .a(w_517_16b),
  .b(w_516_16b),
  .c(w_518_16b),
  .clk(clk)
);
SUB_16b_pe sub_5 (
  .a(w_518_16b),
  .b(w_513_16b),
  .c(w_519_16b),
  .clk(clk)
);
assign  w_520_16b  = 1'b0;
AND_16b_pe and_6 (
  .a(w_516_16b),
  .b(w_520_16b),
  .c(w_521_16b),
  .clk(clk)
);
ADD_16b_pe add_7 (
  .a(w_519_16b),
  .b(w_521_16b),
  .c(w_522_16b),
  .clk(clk)
);
assign  w_523_16b  =  w_522_16b ;
DIV_16b_pe div_8 (
  .a(1'b0),
  .b(w_511_16b),
  .c(w_524_16b),
  .clk(clk)
);
MULT_16b_pe mult_9 (
  .a(w_524_16b),
  .b(1'b0),
  .c(w_525_16b),
  .clk(clk)
);
SUB_16b_pe sub_10 (
  .a(w_525_16b),
  .b(w_511_16b),
  .c(w_526_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(w_526_16b),
  .b(1'b0),
  .c(w_527_16b),
  .clk(clk)
);
AND_16b_pe and_12 (
  .a(w_517_16b),
  .b(w_527_16b),
  .c(w_528_16b),
  .clk(clk)
);
SUB_16b_pe sub_13 (
  .a(w_524_16b),
  .b(w_528_16b),
  .c(w_529_16b),
  .clk(clk)
);
AND_16b_pe and_14 (
  .a(w_527_16b),
  .b(w_520_16b),
  .c(w_530_16b),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_530_16b),
  .b(w_529_16b),
  .c(w_531_16b),
  .clk(clk)
);
assign  w_532_16b  =  w_531_16b ;
ADD_16b_pe add_16 (
  .a(w_532_16b),
  .b(w_523_16b),
  .c(w_533_16b),
  .clk(clk)
);
MULT_16b_pe mult_17 (
  .a(w_532_16b),
  .b(w_523_16b),
  .c(w_534_16b),
  .clk(clk)
);
DIV_16b_pe div_18 (
  .a(1'b0),
  .b(w_512_16b),
  .c(w_535_16b),
  .clk(clk)
);
MULT_16b_pe mult_19 (
  .a(1'b0),
  .b(w_535_16b),
  .c(w_536_16b),
  .clk(clk)
);
SUB_16b_pe sub_20 (
  .a(w_536_16b),
  .b(w_512_16b),
  .c(w_537_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_21 (
  .a(1'b0),
  .b(w_537_16b),
  .c(w_538_16b),
  .clk(clk)
);
AND_16b_pe and_22 (
  .a(w_517_16b),
  .b(w_538_16b),
  .c(w_539_16b),
  .clk(clk)
);
SUB_16b_pe sub_23 (
  .a(w_539_16b),
  .b(w_535_16b),
  .c(w_540_16b),
  .clk(clk)
);
AND_16b_pe and_24 (
  .a(w_538_16b),
  .b(w_520_16b),
  .c(w_541_16b),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_540_16b),
  .b(w_541_16b),
  .c(w_542_16b),
  .clk(clk)
);
assign  w_543_16b  =  w_542_16b ;
MULT_16b_pe mult_26 (
  .a(w_543_16b),
  .b(1'b0),
  .c(w_544_16b),
  .clk(clk)
);
SUB_16b_pe sub_27 (
  .a(w_544_16b),
  .b(w_534_16b),
  .c(w_545_16b),
  .clk(clk)
);
MULT_16b_pe mult_28 (
  .a(w_533_16b),
  .b(1'b0),
  .c(w_546_16b),
  .clk(clk)
);
MULT_16b_pe mult_29 (
  .a(w_533_16b),
  .b(w_546_16b),
  .c(w_547_16b),
  .clk(clk)
);
SUB_16b_pe sub_30 (
  .a(w_547_16b),
  .b(w_545_16b),
  .c(w_548_16b),
  .clk(clk)
);
assign  w_p2_cim_stencil_0_0_16b  =  w_548_16b ;

endmodule








module AND_16b_pe(a,b,c,clk);
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

    


module LTE_16b_pe(a,b,c,clk);
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

    



module LB_3_3_1_16bit_False (
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
    out8
);

// (3, 3, 1, 16, False)
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

//##// (3, 3, 1, 16, False)
    LB_base_3_3_16bit  LB_base_inst0 (
        .clk(clk),
        .inp(in0),
        .out_0_0(out0),
        .out_0_1(out1),
        .out_0_2(out2),
        .out_1_0(out3),
        .out_1_1(out4),
        .out_1_2(out5),
        .out_2_0(out6),
        .out_2_1(out7),
        .out_2_2(out8)
    );

endmodule

module LB_3_3_3_8bit_False (
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
    out26
);

// (3, 3, 3, 8, False)
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

//##// (3, 3, 3, 8, False)
    LB_base_3_3_8bit  LB_base_inst0 (
        .clk(clk),
        .inp(in0),
        .out_0_0(out0),
        .out_0_1(out1),
        .out_0_2(out2),
        .out_1_0(out3),
        .out_1_1(out4),
        .out_1_2(out5),
        .out_2_0(out6),
        .out_2_1(out7),
        .out_2_2(out8)
    );

//##// (3, 3, 3, 8, False)
    LB_base_3_3_8bit  LB_base_inst1 (
        .clk(clk),
        .inp(in1),
        .out_0_0(out9),
        .out_0_1(out10),
        .out_0_2(out11),
        .out_1_0(out12),
        .out_1_1(out13),
        .out_1_2(out14),
        .out_2_0(out15),
        .out_2_1(out16),
        .out_2_2(out17)
    );

//##// (3, 3, 3, 8, False)
    LB_base_3_3_8bit  LB_base_inst2 (
        .clk(clk),
        .inp(in2),
        .out_0_0(out18),
        .out_0_1(out19),
        .out_0_2(out20),
        .out_1_0(out21),
        .out_1_1(out22),
        .out_1_2(out23),
        .out_2_0(out24),
        .out_2_1(out25),
        .out_2_2(out26)
    );

endmodule

module LB_4_4_1_8bit_False (
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
    out15
);

// (4, 4, 1, 8, False)
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

//##// (4, 4, 1, 8, False)
    LB_base_4_4_8bit  LB_base_inst0 (
        .clk(clk),
        .inp(in0),
        .out_0_0(out0),
        .out_0_1(out1),
        .out_0_2(out2),
        .out_0_3(out3),
        .out_1_0(out4),
        .out_1_1(out5),
        .out_1_2(out6),
        .out_1_3(out7),
        .out_2_0(out8),
        .out_2_1(out9),
        .out_2_2(out10),
        .out_2_3(out11),
        .out_3_0(out12),
        .out_3_1(out13),
        .out_3_2(out14),
        .out_3_3(out15)
    );

endmodule

module LB_3_3_1_32bit_False (
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
    out8
);

// (3, 3, 1, 32, False)
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

//##// (3, 3, 1, 32, False)
    LB_base_3_3_32bit  LB_base_inst0 (
        .clk(clk),
        .inp(in0),
        .out_0_0(out0),
        .out_0_1(out1),
        .out_0_2(out2),
        .out_1_0(out3),
        .out_1_1(out4),
        .out_1_2(out5),
        .out_2_0(out6),
        .out_2_1(out7),
        .out_2_2(out8)
    );

endmodule

module LB_base_4_4_8bit (
    clk,

    inp,

    out_0_0,
    out_0_1,
    out_0_2,
    out_0_3,
    out_1_0,
    out_1_1,
    out_1_2,
    out_1_3,
    out_2_0,
    out_2_1,
    out_2_2,
    out_2_3,
    out_3_0,
    out_3_1,
    out_3_2,
    out_3_3
);

    input clk;

    input inp;

    output out_0_0;
    output out_0_1;
    output out_0_2;
    output out_0_3;
    output out_1_0;
    output out_1_1;
    output out_1_2;
    output out_1_3;
    output out_2_0;
    output out_2_1;
    output out_2_2;
    output out_2_3;
    output out_3_0;
    output out_3_1;
    output out_3_2;
    output out_3_3;

    wire sram_out_0;
    wire sram_out_1;
    wire sram_out_2;
    wire sram_out_3;

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


    ShiftReg_base_4_8bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1),
        .out_2_16b (out_0_2),
        .out_3_16b (out_0_3)
    );


    ShiftReg_base_4_8bit ShiftersRow_1(
        .clk (clk),

        .inp_16b (sram_out_1),

        .out_0_16b (out_1_0),
        .out_1_16b (out_1_1),
        .out_2_16b (out_1_2),
        .out_3_16b (out_1_3)
    );


    ShiftReg_base_4_8bit ShiftersRow_2(
        .clk (clk),

        .inp_16b (sram_out_2),

        .out_0_16b (out_2_0),
        .out_1_16b (out_2_1),
        .out_2_16b (out_2_2),
        .out_3_16b (out_2_3)
    );


    ShiftReg_base_4_8bit ShiftersRow_3(
        .clk (clk),

        .inp_16b (sram_out_3),

        .out_0_16b (out_3_0),
        .out_1_16b (out_3_1),
        .out_2_16b (out_3_2),
        .out_3_16b (out_3_3)
    );


endmodule

module LB_base_3_3_16bit (
    clk,

    inp,

    out_0_0,
    out_0_1,
    out_0_2,
    out_1_0,
    out_1_1,
    out_1_2,
    out_2_0,
    out_2_1,
    out_2_2
);

    input clk;

    input inp;

    output out_0_0;
    output out_0_1;
    output out_0_2;
    output out_1_0;
    output out_1_1;
    output out_1_2;
    output out_2_0;
    output out_2_1;
    output out_2_2;

    wire sram_out_0;
    wire sram_out_1;
    wire sram_out_2;

    my_lb2 SRAM_BLOCK_0 (
        .clk (clk),

        .inp_16b (inp),

        .out_0_16b (sram_out_0),

        .out_1_16b (sram_out_1)

    );


    reg  inp_reg;

    always @(posedge clk) begin

        inp_reg <= inp;
    end

    assign sram_out_2 = inp_reg;


    ShiftReg_base_3_16bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1),
        .out_2_16b (out_0_2)
    );


    ShiftReg_base_3_16bit ShiftersRow_1(
        .clk (clk),

        .inp_16b (sram_out_1),

        .out_0_16b (out_1_0),
        .out_1_16b (out_1_1),
        .out_2_16b (out_1_2)
    );


    ShiftReg_base_3_16bit ShiftersRow_2(
        .clk (clk),

        .inp_16b (sram_out_2),

        .out_0_16b (out_2_0),
        .out_1_16b (out_2_1),
        .out_2_16b (out_2_2)
    );


endmodule

module LB_base_3_3_32bit (
    clk,

    inp,

    out_0_0,
    out_0_1,
    out_0_2,
    out_1_0,
    out_1_1,
    out_1_2,
    out_2_0,
    out_2_1,
    out_2_2
);

    input clk;

    input inp;

    output out_0_0;
    output out_0_1;
    output out_0_2;
    output out_1_0;
    output out_1_1;
    output out_1_2;
    output out_2_0;
    output out_2_1;
    output out_2_2;

    wire sram_out_0;
    wire sram_out_1;
    wire sram_out_2;

    my_lb2 SRAM_BLOCK_0 (
        .clk (clk),

        .inp_16b (inp),

        .out_0_16b (sram_out_0),

        .out_1_16b (sram_out_1)

    );


    reg  inp_reg;

    always @(posedge clk) begin

        inp_reg <= inp;
    end

    assign sram_out_2 = inp_reg;


    ShiftReg_base_3_32bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1),
        .out_2_16b (out_0_2)
    );


    ShiftReg_base_3_32bit ShiftersRow_1(
        .clk (clk),

        .inp_16b (sram_out_1),

        .out_0_16b (out_1_0),
        .out_1_16b (out_1_1),
        .out_2_16b (out_1_2)
    );


    ShiftReg_base_3_32bit ShiftersRow_2(
        .clk (clk),

        .inp_16b (sram_out_2),

        .out_0_16b (out_2_0),
        .out_1_16b (out_2_1),
        .out_2_16b (out_2_2)
    );


endmodule

module LB_base_3_3_8bit (
    clk,

    inp,

    out_0_0,
    out_0_1,
    out_0_2,
    out_1_0,
    out_1_1,
    out_1_2,
    out_2_0,
    out_2_1,
    out_2_2
);

    input clk;

    input inp;

    output out_0_0;
    output out_0_1;
    output out_0_2;
    output out_1_0;
    output out_1_1;
    output out_1_2;
    output out_2_0;
    output out_2_1;
    output out_2_2;

    wire sram_out_0;
    wire sram_out_1;
    wire sram_out_2;

    my_lb2 SRAM_BLOCK_0 (
        .clk (clk),

        .inp_16b (inp),

        .out_0_16b (sram_out_0),

        .out_1_16b (sram_out_1)

    );


    reg  inp_reg;

    always @(posedge clk) begin

        inp_reg <= inp;
    end

    assign sram_out_2 = inp_reg;


    ShiftReg_base_3_8bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1),
        .out_2_16b (out_0_2)
    );


    ShiftReg_base_3_8bit ShiftersRow_1(
        .clk (clk),

        .inp_16b (sram_out_1),

        .out_0_16b (out_1_0),
        .out_1_16b (out_1_1),
        .out_2_16b (out_1_2)
    );


    ShiftReg_base_3_8bit ShiftersRow_2(
        .clk (clk),

        .inp_16b (sram_out_2),

        .out_0_16b (out_2_0),
        .out_1_16b (out_2_1),
        .out_2_16b (out_2_2)
    );


endmodule

module ShiftReg_base_3_16bit (
    clk,

    inp_16b,

    out_0_16b,
    out_1_16b,
    out_2_16b
);

    input clk;

    input inp_16b;

    output out_0_16b;
    output out_1_16b;
    output out_2_16b;

    reg out_0_16b;
    reg out_1_16b;
    reg out_2_16b;


    always @(posedge clk) begin
        out_0_16b <= inp_16b;
        out_1_16b <= out_0_16b;
        out_2_16b <= out_1_16b;
    end

endmodule

module ShiftReg_base_3_8bit (
    clk,

    inp_16b,

    out_0_16b,
    out_1_16b,
    out_2_16b
);

    input clk;

    input inp_16b;

    output out_0_16b;
    output out_1_16b;
    output out_2_16b;

    reg out_0_16b;
    reg out_1_16b;
    reg out_2_16b;


    always @(posedge clk) begin
        out_0_16b <= inp_16b;
        out_1_16b <= out_0_16b;
        out_2_16b <= out_1_16b;
    end

endmodule

module ShiftReg_base_3_32bit (
    clk,

    inp_16b,

    out_0_16b,
    out_1_16b,
    out_2_16b
);

    input clk;

    input inp_16b;

    output out_0_16b;
    output out_1_16b;
    output out_2_16b;

    reg out_0_16b;
    reg out_1_16b;
    reg out_2_16b;


    always @(posedge clk) begin
        out_0_16b <= inp_16b;
        out_1_16b <= out_0_16b;
        out_2_16b <= out_1_16b;
    end

endmodule

module ShiftReg_base_4_8bit (
    clk,

    inp_16b,

    out_0_16b,
    out_1_16b,
    out_2_16b,
    out_3_16b
);

    input clk;

    input inp_16b;

    output out_0_16b;
    output out_1_16b;
    output out_2_16b;
    output out_3_16b;

    reg out_0_16b;
    reg out_1_16b;
    reg out_2_16b;
    reg out_3_16b;


    always @(posedge clk) begin
        out_0_16b <= inp_16b;
        out_1_16b <= out_0_16b;
        out_2_16b <= out_1_16b;
        out_3_16b <= out_2_16b;
    end

endmodule


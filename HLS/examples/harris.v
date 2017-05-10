// Source:  /home/tema8/projects/Halide-HLS/apps/hls_examples/harris_hls/hls_target.cpp 

module top(
//Inputs
  w_grad_y_1_stencil_stream_to_grad_xy_1_0_0_16b,
  w_grad_y_1_stencil_stream_to_grad_xy_1_1_0_16b,

  w_padded_1_stencil_stream_to_grad_x_1_0_0_8b,
  w_padded_1_stencil_stream_to_grad_x_1_0_1_8b,
  w_padded_1_stencil_stream_to_grad_x_1_0_2_8b,
  w_padded_1_stencil_stream_to_grad_x_1_1_0_8b,
  w_padded_1_stencil_stream_to_grad_x_1_1_1_8b,
  w_padded_1_stencil_stream_to_grad_x_1_1_2_8b,
  w_padded_1_stencil_stream_to_grad_x_1_2_0_8b,
  w_padded_1_stencil_stream_to_grad_x_1_2_1_8b,
  w_padded_1_stencil_stream_to_grad_x_1_2_2_8b,
  w_padded_1_stencil_stream_to_grad_x_1_3_0_8b,
  w_padded_1_stencil_stream_to_grad_x_1_3_1_8b,
  w_padded_1_stencil_stream_to_grad_x_1_3_2_8b,

  w_grad_x_1_stencil_stream_to_grad_xx_1_0_0_16b,
  w_grad_x_1_stencil_stream_to_grad_xx_1_1_0_16b,

  w_padded_1_stencil_update_stream_0_0_8b,
  w_padded_1_stencil_update_stream_1_0_8b,

//Outputs
  w_hw_output_1_stencil_stream_0_0_8b,
  w_hw_output_1_stencil_stream_1_0_8b,

  clk
);

//Inputs
input    w_grad_y_1_stencil_stream_to_grad_xy_1_0_0_16b;
input    w_grad_y_1_stencil_stream_to_grad_xy_1_1_0_16b;

input    w_padded_1_stencil_stream_to_grad_x_1_0_0_8b;
input    w_padded_1_stencil_stream_to_grad_x_1_0_1_8b;
input    w_padded_1_stencil_stream_to_grad_x_1_0_2_8b;
input    w_padded_1_stencil_stream_to_grad_x_1_1_0_8b;
input    w_padded_1_stencil_stream_to_grad_x_1_1_1_8b;
input    w_padded_1_stencil_stream_to_grad_x_1_1_2_8b;
input    w_padded_1_stencil_stream_to_grad_x_1_2_0_8b;
input    w_padded_1_stencil_stream_to_grad_x_1_2_1_8b;
input    w_padded_1_stencil_stream_to_grad_x_1_2_2_8b;
input    w_padded_1_stencil_stream_to_grad_x_1_3_0_8b;
input    w_padded_1_stencil_stream_to_grad_x_1_3_1_8b;
input    w_padded_1_stencil_stream_to_grad_x_1_3_2_8b;

input    w_grad_x_1_stencil_stream_to_grad_xx_1_0_0_16b;
input    w_grad_x_1_stencil_stream_to_grad_xx_1_1_0_16b;

input    w_padded_1_stencil_update_stream_0_0_8b;
input    w_padded_1_stencil_update_stream_1_0_8b;

//Outputs
output   w_hw_output_1_stencil_stream_0_0_8b;
output   w_hw_output_1_stencil_stream_1_0_8b;

input   clk;

wire   w_grad_yy_1_stencil_stream_0_0_16b;
wire   w_grad_yy_1_stencil_stream_0_1_16b;
wire   w_grad_yy_1_stencil_stream_0_2_16b;
wire   w_grad_yy_1_stencil_stream_1_0_16b;
wire   w_grad_yy_1_stencil_stream_1_1_16b;
wire   w_grad_yy_1_stencil_stream_1_2_16b;
wire   w_grad_yy_1_stencil_stream_2_0_16b;
wire   w_grad_yy_1_stencil_stream_2_1_16b;
wire   w_grad_yy_1_stencil_stream_2_2_16b;
wire   w_grad_yy_1_stencil_stream_3_0_16b;
wire   w_grad_yy_1_stencil_stream_3_1_16b;
wire   w_grad_yy_1_stencil_stream_3_2_16b;

wire   w_padded_1_stencil_stream_0_0_8b;
wire   w_padded_1_stencil_stream_0_1_8b;
wire   w_padded_1_stencil_stream_0_2_8b;
wire   w_padded_1_stencil_stream_1_0_8b;
wire   w_padded_1_stencil_stream_1_1_8b;
wire   w_padded_1_stencil_stream_1_2_8b;
wire   w_padded_1_stencil_stream_2_0_8b;
wire   w_padded_1_stencil_stream_2_1_8b;
wire   w_padded_1_stencil_stream_2_2_8b;
wire   w_padded_1_stencil_stream_3_0_8b;
wire   w_padded_1_stencil_stream_3_1_8b;
wire   w_padded_1_stencil_stream_3_2_8b;

wire   w_grad_xy_1_stencil_stream_0_0_16b;
wire   w_grad_xy_1_stencil_stream_0_1_16b;
wire   w_grad_xy_1_stencil_stream_0_2_16b;
wire   w_grad_xy_1_stencil_stream_1_0_16b;
wire   w_grad_xy_1_stencil_stream_1_1_16b;
wire   w_grad_xy_1_stencil_stream_1_2_16b;
wire   w_grad_xy_1_stencil_stream_2_0_16b;
wire   w_grad_xy_1_stencil_stream_2_1_16b;
wire   w_grad_xy_1_stencil_stream_2_2_16b;
wire   w_grad_xy_1_stencil_stream_3_0_16b;
wire   w_grad_xy_1_stencil_stream_3_1_16b;
wire   w_grad_xy_1_stencil_stream_3_2_16b;

wire   w_p2_cim_stencil_stream_0_0_16b;
wire   w_p2_cim_stencil_stream_0_1_16b;
wire   w_p2_cim_stencil_stream_0_2_16b;
wire   w_p2_cim_stencil_stream_1_0_16b;
wire   w_p2_cim_stencil_stream_1_1_16b;
wire   w_p2_cim_stencil_stream_1_2_16b;
wire   w_p2_cim_stencil_stream_2_0_16b;
wire   w_p2_cim_stencil_stream_2_1_16b;
wire   w_p2_cim_stencil_stream_2_2_16b;
wire   w_p2_cim_stencil_stream_3_0_16b;
wire   w_p2_cim_stencil_stream_3_1_16b;
wire   w_p2_cim_stencil_stream_3_2_16b;

wire   w_grad_y_1_stencil_stream_0_0_16b;
wire   w_grad_y_1_stencil_stream_1_0_16b;

wire   w_grad_xx_1_stencil_update_stream_0_0_16b;
wire   w_grad_xx_1_stencil_update_stream_1_0_16b;

wire   w_grad_yy_1_stencil_update_stream_0_0_16b;
wire   w_grad_yy_1_stencil_update_stream_1_0_16b;

wire   w_grad_xy_1_stencil_update_stream_0_0_16b;
wire   w_grad_xy_1_stencil_update_stream_1_0_16b;

wire   w_p2_cim_stencil_update_stream_0_0_16b;
wire   w_p2_cim_stencil_update_stream_1_0_16b;

wire   w_grad_gy_1_stencil_stream_0_0_16b;
wire   w_grad_gy_1_stencil_stream_1_0_16b;

wire   w_grad_xx_1_stencil_stream_0_0_16b;
wire   w_grad_xx_1_stencil_stream_0_1_16b;
wire   w_grad_xx_1_stencil_stream_0_2_16b;
wire   w_grad_xx_1_stencil_stream_1_0_16b;
wire   w_grad_xx_1_stencil_stream_1_1_16b;
wire   w_grad_xx_1_stencil_stream_1_2_16b;
wire   w_grad_xx_1_stencil_stream_2_0_16b;
wire   w_grad_xx_1_stencil_stream_2_1_16b;
wire   w_grad_xx_1_stencil_stream_2_2_16b;
wire   w_grad_xx_1_stencil_stream_3_0_16b;
wire   w_grad_xx_1_stencil_stream_3_1_16b;
wire   w_grad_xx_1_stencil_stream_3_2_16b;

wire   w_grad_x_1_stencil_stream_0_0_16b;
wire   w_grad_x_1_stencil_stream_1_0_16b;

wire   w_grad_gx_1_stencil_stream_0_0_16b;
wire   w_grad_gx_1_stencil_stream_1_0_16b;

wire   w_grad_gxy_1_stencil_stream_0_0_16b;
wire   w_grad_gxy_1_stencil_stream_1_0_16b;

wire   gnd;
assign gnd=1'b0;

LB_3_4_1_32bit_False LB__grad_yy_1_stencil_stream (
    .clk(clk),

    .in0(w_grad_yy_1_stencil_update_stream_0_0_16b),
//    .in1(w_grad_yy_1_stencil_update_stream_1_0_16b),

    .out0(w_grad_yy_1_stencil_stream_0_0_16b),
    .out1(w_grad_yy_1_stencil_stream_0_1_16b),
    .out2(w_grad_yy_1_stencil_stream_0_2_16b),
    .out3(w_grad_yy_1_stencil_stream_1_0_16b),
    .out4(w_grad_yy_1_stencil_stream_1_1_16b),
    .out5(w_grad_yy_1_stencil_stream_1_2_16b),
    .out6(w_grad_yy_1_stencil_stream_2_0_16b),
    .out7(w_grad_yy_1_stencil_stream_2_1_16b),
    .out8(w_grad_yy_1_stencil_stream_2_2_16b),
    .out9(w_grad_yy_1_stencil_stream_3_0_16b),
    .out10(w_grad_yy_1_stencil_stream_3_1_16b),
    .out11(w_grad_yy_1_stencil_stream_3_2_16b)
);

LB_3_4_1_8bit_False LB__padded_1_stencil_stream (
    .clk(clk),

    .in0(w_padded_1_stencil_update_stream_0_0_8b),
//    .in1(w_padded_1_stencil_update_stream_1_0_8b),

    .out0(w_padded_1_stencil_stream_0_0_8b),
    .out1(w_padded_1_stencil_stream_0_1_8b),
    .out2(w_padded_1_stencil_stream_0_2_8b),
    .out3(w_padded_1_stencil_stream_1_0_8b),
    .out4(w_padded_1_stencil_stream_1_1_8b),
    .out5(w_padded_1_stencil_stream_1_2_8b),
    .out6(w_padded_1_stencil_stream_2_0_8b),
    .out7(w_padded_1_stencil_stream_2_1_8b),
    .out8(w_padded_1_stencil_stream_2_2_8b),
    .out9(w_padded_1_stencil_stream_3_0_8b),
    .out10(w_padded_1_stencil_stream_3_1_8b),
    .out11(w_padded_1_stencil_stream_3_2_8b)
);

LB_3_4_1_32bit_False LB__grad_xy_1_stencil_stream (
    .clk(clk),

    .in0(w_grad_xy_1_stencil_update_stream_0_0_16b),
//    .in1(w_grad_xy_1_stencil_update_stream_1_0_16b),

    .out0(w_grad_xy_1_stencil_stream_0_0_16b),
    .out1(w_grad_xy_1_stencil_stream_0_1_16b),
    .out2(w_grad_xy_1_stencil_stream_0_2_16b),
    .out3(w_grad_xy_1_stencil_stream_1_0_16b),
    .out4(w_grad_xy_1_stencil_stream_1_1_16b),
    .out5(w_grad_xy_1_stencil_stream_1_2_16b),
    .out6(w_grad_xy_1_stencil_stream_2_0_16b),
    .out7(w_grad_xy_1_stencil_stream_2_1_16b),
    .out8(w_grad_xy_1_stencil_stream_2_2_16b),
    .out9(w_grad_xy_1_stencil_stream_3_0_16b),
    .out10(w_grad_xy_1_stencil_stream_3_1_16b),
    .out11(w_grad_xy_1_stencil_stream_3_2_16b)
);

LB_3_4_1_16bit_False LB__p2_cim_stencil_stream (
    .clk(clk),

    .in0(w_p2_cim_stencil_update_stream_0_0_16b),
//    .in1(w_p2_cim_stencil_update_stream_1_0_16b),

    .out0(w_p2_cim_stencil_stream_0_0_16b),
    .out1(w_p2_cim_stencil_stream_0_1_16b),
    .out2(w_p2_cim_stencil_stream_0_2_16b),
    .out3(w_p2_cim_stencil_stream_1_0_16b),
    .out4(w_p2_cim_stencil_stream_1_1_16b),
    .out5(w_p2_cim_stencil_stream_1_2_16b),
    .out6(w_p2_cim_stencil_stream_2_0_16b),
    .out7(w_p2_cim_stencil_stream_2_1_16b),
    .out8(w_p2_cim_stencil_stream_2_2_16b),
    .out9(w_p2_cim_stencil_stream_3_0_16b),
    .out10(w_p2_cim_stencil_stream_3_1_16b),
    .out11(w_p2_cim_stencil_stream_3_2_16b)
);

kernel__grad_y_1_stencil_stream KERN__grad_y_1_stencil_stream (
    .w_padded_1_stencil_0_0_8b(w_padded_1_stencil_stream_0_0_8b),
    .w_padded_1_stencil_0_2_8b(w_padded_1_stencil_stream_0_1_8b),
    .w_padded_1_stencil_1_0_8b(w_padded_1_stencil_stream_0_2_8b),
    .w_padded_1_stencil_1_2_8b(w_padded_1_stencil_stream_1_0_8b),
    .w_padded_1_stencil_2_0_8b(w_padded_1_stencil_stream_1_1_8b),
    .w_padded_1_stencil_2_2_8b(w_padded_1_stencil_stream_1_2_8b),
    .w_padded_1_stencil_3_0_8b(w_padded_1_stencil_stream_2_0_8b),
    .w_padded_1_stencil_3_2_8b(w_padded_1_stencil_stream_2_1_8b),

    .out_w_grad_y_1_stencil_0_0_16b(w_grad_y_1_stencil_stream_0_0_16b),
    .out_w_grad_y_1_stencil_1_0_16b(w_grad_y_1_stencil_stream_1_0_16b),

    .clk(clk)
);

kernel__grad_xx_1_stencil_update_stream KERN__grad_xx_1_stencil_update_stream (
    .w_grad_x_1_stencil_0_0_16b(w_grad_x_1_stencil_stream_to_grad_xx_1_0_0_16b),
    .w_grad_x_1_stencil_1_0_16b(w_grad_x_1_stencil_stream_to_grad_xx_1_1_0_16b),

    .out_w_grad_xx_1_stencil_0_0_16b(w_grad_xx_1_stencil_update_stream_0_0_16b),
    .out_w_grad_xx_1_stencil_1_0_16b(w_grad_xx_1_stencil_update_stream_1_0_16b),

    .clk(clk)
);

kernel__grad_yy_1_stencil_update_stream KERN__grad_yy_1_stencil_update_stream (
    .w_grad_y_1_stencil_0_0_16b(w_grad_y_1_stencil_stream_0_0_16b),
    .w_grad_y_1_stencil_1_0_16b(w_grad_y_1_stencil_stream_1_0_16b),

    .out_w_grad_yy_1_stencil_0_0_16b(w_grad_yy_1_stencil_update_stream_0_0_16b),
    .out_w_grad_yy_1_stencil_1_0_16b(w_grad_yy_1_stencil_update_stream_1_0_16b),

    .clk(clk)
);

kernel__grad_xy_1_stencil_update_stream KERN__grad_xy_1_stencil_update_stream (
    .w_grad_x_1_stencil_0_0_16b(w_grad_y_1_stencil_stream_to_grad_xy_1_0_0_16b),
    .w_grad_x_1_stencil_1_0_16b(w_grad_y_1_stencil_stream_to_grad_xy_1_1_0_16b),
    .w_grad_y_1_stencil_0_0_16b(w_grad_x_1_stencil_stream_0_0_16b),
    .w_grad_y_1_stencil_1_0_16b(w_grad_x_1_stencil_stream_1_0_16b),

    .out_w_grad_xy_1_stencil_0_0_16b(w_grad_xy_1_stencil_update_stream_0_0_16b),
    .out_w_grad_xy_1_stencil_1_0_16b(w_grad_xy_1_stencil_update_stream_1_0_16b),

    .clk(clk)
);

kernel__p2_cim_stencil_update_stream KERN__p2_cim_stencil_update_stream (
    .w_grad_gx_1_stencil_0_0_16b(w_grad_gy_1_stencil_stream_0_0_16b),
    .w_grad_gx_1_stencil_1_0_16b(w_grad_gy_1_stencil_stream_1_0_16b),
    .w_grad_gxy_1_stencil_0_0_16b(w_grad_gx_1_stencil_stream_0_0_16b),
    .w_grad_gxy_1_stencil_1_0_16b(w_grad_gx_1_stencil_stream_1_0_16b),
    .w_grad_gy_1_stencil_0_0_16b(w_grad_gxy_1_stencil_stream_0_0_16b),
    .w_grad_gy_1_stencil_1_0_16b(w_grad_gxy_1_stencil_stream_1_0_16b),

    .out_w_p2_cim_stencil_0_0_16b(w_p2_cim_stencil_update_stream_0_0_16b),
    .out_w_p2_cim_stencil_1_0_16b(w_p2_cim_stencil_update_stream_1_0_16b),

    .clk(clk)
);

kernel__grad_gy_1_stencil_stream KERN__grad_gy_1_stencil_stream (
    .w_grad_yy_1_stencil_0_0_16b(w_grad_yy_1_stencil_stream_0_0_16b),
    .w_grad_yy_1_stencil_0_1_16b(w_grad_yy_1_stencil_stream_0_1_16b),
    .w_grad_yy_1_stencil_0_2_16b(w_grad_yy_1_stencil_stream_0_2_16b),
    .w_grad_yy_1_stencil_1_0_16b(w_grad_yy_1_stencil_stream_1_0_16b),
    .w_grad_yy_1_stencil_1_1_16b(w_grad_yy_1_stencil_stream_1_1_16b),
    .w_grad_yy_1_stencil_1_2_16b(w_grad_yy_1_stencil_stream_1_2_16b),
    .w_grad_yy_1_stencil_2_0_16b(w_grad_yy_1_stencil_stream_2_0_16b),
    .w_grad_yy_1_stencil_2_1_16b(w_grad_yy_1_stencil_stream_2_1_16b),
    .w_grad_yy_1_stencil_2_2_16b(w_grad_yy_1_stencil_stream_2_2_16b),
    .w_grad_yy_1_stencil_3_0_16b(w_grad_yy_1_stencil_stream_3_0_16b),
    .w_grad_yy_1_stencil_3_1_16b(w_grad_yy_1_stencil_stream_3_1_16b),
    .w_grad_yy_1_stencil_3_2_16b(w_grad_yy_1_stencil_stream_3_2_16b),

    .out_w_grad_gy_1_stencil_0_0_16b(w_grad_gy_1_stencil_stream_0_0_16b),
    .out_w_grad_gy_1_stencil_1_0_16b(w_grad_gy_1_stencil_stream_1_0_16b),

    .clk(clk)
);

LB_3_4_1_32bit_False LB__grad_xx_1_stencil_stream (
    .clk(clk),

    .in0(w_grad_xx_1_stencil_update_stream_0_0_16b),
//    .in1(w_grad_xx_1_stencil_update_stream_1_0_16b),

    .out0(w_grad_xx_1_stencil_stream_0_0_16b),
    .out1(w_grad_xx_1_stencil_stream_0_1_16b),
    .out2(w_grad_xx_1_stencil_stream_0_2_16b),
    .out3(w_grad_xx_1_stencil_stream_1_0_16b),
    .out4(w_grad_xx_1_stencil_stream_1_1_16b),
    .out5(w_grad_xx_1_stencil_stream_1_2_16b),
    .out6(w_grad_xx_1_stencil_stream_2_0_16b),
    .out7(w_grad_xx_1_stencil_stream_2_1_16b),
    .out8(w_grad_xx_1_stencil_stream_2_2_16b),
    .out9(w_grad_xx_1_stencil_stream_3_0_16b),
    .out10(w_grad_xx_1_stencil_stream_3_1_16b),
    .out11(w_grad_xx_1_stencil_stream_3_2_16b)
);

kernel__grad_gxy_1_stencil_stream KERN__grad_gxy_1_stencil_stream (
    .w_grad_xy_1_stencil_0_0_16b(w_grad_xy_1_stencil_stream_0_0_16b),
    .w_grad_xy_1_stencil_0_1_16b(w_grad_xy_1_stencil_stream_0_1_16b),
    .w_grad_xy_1_stencil_0_2_16b(w_grad_xy_1_stencil_stream_0_2_16b),
    .w_grad_xy_1_stencil_1_0_16b(w_grad_xy_1_stencil_stream_1_0_16b),
    .w_grad_xy_1_stencil_1_1_16b(w_grad_xy_1_stencil_stream_1_1_16b),
    .w_grad_xy_1_stencil_1_2_16b(w_grad_xy_1_stencil_stream_1_2_16b),
    .w_grad_xy_1_stencil_2_0_16b(w_grad_xy_1_stencil_stream_2_0_16b),
    .w_grad_xy_1_stencil_2_1_16b(w_grad_xy_1_stencil_stream_2_1_16b),
    .w_grad_xy_1_stencil_2_2_16b(w_grad_xy_1_stencil_stream_2_2_16b),
    .w_grad_xy_1_stencil_3_0_16b(w_grad_xy_1_stencil_stream_3_0_16b),
    .w_grad_xy_1_stencil_3_1_16b(w_grad_xy_1_stencil_stream_3_1_16b),
    .w_grad_xy_1_stencil_3_2_16b(w_grad_xy_1_stencil_stream_3_2_16b),

    .out_w_grad_gxy_1_stencil_0_0_16b(w_grad_gxy_1_stencil_stream_0_0_16b),
    .out_w_grad_gxy_1_stencil_1_0_16b(w_grad_gxy_1_stencil_stream_1_0_16b),

    .clk(clk)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_p2_cim_stencil_0_0_16b(w_p2_cim_stencil_stream_0_0_16b),
    .w_p2_cim_stencil_0_1_16b(w_p2_cim_stencil_stream_0_1_16b),
    .w_p2_cim_stencil_0_2_16b(w_p2_cim_stencil_stream_0_2_16b),
    .w_p2_cim_stencil_1_0_16b(w_p2_cim_stencil_stream_1_0_16b),
    .w_p2_cim_stencil_1_1_16b(w_p2_cim_stencil_stream_1_1_16b),
    .w_p2_cim_stencil_1_2_16b(w_p2_cim_stencil_stream_1_2_16b),
    .w_p2_cim_stencil_2_0_16b(w_p2_cim_stencil_stream_2_0_16b),
    .w_p2_cim_stencil_2_1_16b(w_p2_cim_stencil_stream_2_1_16b),
    .w_p2_cim_stencil_2_2_16b(w_p2_cim_stencil_stream_2_2_16b),
    .w_p2_cim_stencil_3_0_16b(w_p2_cim_stencil_stream_3_0_16b),
    .w_p2_cim_stencil_3_1_16b(w_p2_cim_stencil_stream_3_1_16b),
    .w_p2_cim_stencil_3_2_16b(w_p2_cim_stencil_stream_3_2_16b),

    .out_w_hw_output_1_stencil_1_0_8b(w_hw_output_1_stencil_stream_0_0_8b),
    .out_w_hw_output_1_stencil_packed_16b(w_hw_output_1_stencil_stream_1_0_8b),

    .clk(clk)
);

kernel__grad_gx_1_stencil_stream KERN__grad_gx_1_stencil_stream (
    .w_grad_xx_1_stencil_0_0_16b(w_grad_xx_1_stencil_stream_0_0_16b),
    .w_grad_xx_1_stencil_0_1_16b(w_grad_xx_1_stencil_stream_0_1_16b),
    .w_grad_xx_1_stencil_0_2_16b(w_grad_xx_1_stencil_stream_0_2_16b),
    .w_grad_xx_1_stencil_1_0_16b(w_grad_xx_1_stencil_stream_1_0_16b),
    .w_grad_xx_1_stencil_1_1_16b(w_grad_xx_1_stencil_stream_1_1_16b),
    .w_grad_xx_1_stencil_1_2_16b(w_grad_xx_1_stencil_stream_1_2_16b),
    .w_grad_xx_1_stencil_2_0_16b(w_grad_xx_1_stencil_stream_2_0_16b),
    .w_grad_xx_1_stencil_2_1_16b(w_grad_xx_1_stencil_stream_2_1_16b),
    .w_grad_xx_1_stencil_2_2_16b(w_grad_xx_1_stencil_stream_2_2_16b),
    .w_grad_xx_1_stencil_3_0_16b(w_grad_xx_1_stencil_stream_3_0_16b),
    .w_grad_xx_1_stencil_3_1_16b(w_grad_xx_1_stencil_stream_3_1_16b),
    .w_grad_xx_1_stencil_3_2_16b(w_grad_xx_1_stencil_stream_3_2_16b),

    .out_w_grad_gx_1_stencil_0_0_16b(w_grad_gx_1_stencil_stream_0_0_16b),
    .out_w_grad_gx_1_stencil_1_0_16b(w_grad_gx_1_stencil_stream_1_0_16b),

    .clk(clk)
);

kernel__grad_x_1_stencil_stream KERN__grad_x_1_stencil_stream (
    .w_padded_1_stencil_0_0_8b(w_padded_1_stencil_stream_to_grad_x_1_0_0_8b),
    .w_padded_1_stencil_0_1_8b(w_padded_1_stencil_stream_to_grad_x_1_0_1_8b),
    .w_padded_1_stencil_0_2_8b(w_padded_1_stencil_stream_to_grad_x_1_0_2_8b),
    .w_padded_1_stencil_1_0_8b(w_padded_1_stencil_stream_to_grad_x_1_1_0_8b),
    .w_padded_1_stencil_1_1_8b(w_padded_1_stencil_stream_to_grad_x_1_1_1_8b),
    .w_padded_1_stencil_1_2_8b(w_padded_1_stencil_stream_to_grad_x_1_1_2_8b),
    .w_padded_1_stencil_2_0_8b(w_padded_1_stencil_stream_to_grad_x_1_2_0_8b),
    .w_padded_1_stencil_2_1_8b(w_padded_1_stencil_stream_to_grad_x_1_2_1_8b),
    .w_padded_1_stencil_2_2_8b(w_padded_1_stencil_stream_to_grad_x_1_2_2_8b),
    .w_padded_1_stencil_3_0_8b(w_padded_1_stencil_stream_to_grad_x_1_3_0_8b),
    .w_padded_1_stencil_3_1_8b(w_padded_1_stencil_stream_to_grad_x_1_3_1_8b),
    .w_padded_1_stencil_3_2_8b(w_padded_1_stencil_stream_to_grad_x_1_3_2_8b),

    .out_w_grad_x_1_stencil_0_0_16b(w_grad_x_1_stencil_stream_0_0_16b),
    .out_w_grad_x_1_stencil_1_0_16b(w_grad_x_1_stencil_stream_1_0_16b),

    .clk(clk)
);

endmodule



module kernel__grad_xx_1_stencil_update_stream(
//Inputs
  w_grad_x_1_stencil_0_0_16b,
  w_grad_x_1_stencil_1_0_16b,
//Outputs
  out_w_grad_xx_1_stencil_0_0_16b,
  out_w_grad_xx_1_stencil_1_0_16b,

  clk
);

//Inputs
input  w_grad_x_1_stencil_0_0_16b;
input  w_grad_x_1_stencil_1_0_16b;
//Outputs
output  out_w_grad_xx_1_stencil_1_0_16b;
output  out_w_grad_xx_1_stencil_0_0_16b;

input  clk;


wire  w_266_16b;
wire  w_267_16b;
wire  w_268_16b;
wire  w_269_16b;
wire  w_270_16b;
wire  w_271_16b;
wire  w_grad_xx_1_stencil_0_0_16b;
wire  w_grad_xx_1_stencil_1_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_xx_1_stencil_1_0_16b = w_grad_xx_1_stencil_1_0_16b;
assign out_w_grad_xx_1_stencil_0_0_16b = w_grad_xx_1_stencil_0_0_16b;
assign  w_266_16b  =  w_grad_x_1_stencil_0_0_16b ;
assign  w_267_16b  =  w_266_16b ;
MULT_16b_pe mult_0 (
  .a(w_267_16b),
  .b(1'b0),
  .c(w_268_16b),
  .clk(clk)
);
assign  w_269_16b  =  w_grad_x_1_stencil_1_0_16b ;
assign  w_270_16b  =  w_269_16b ;
MULT_16b_pe mult_1 (
  .a(w_270_16b),
  .b(1'b0),
  .c(w_271_16b),
  .clk(clk)
);
assign  w_grad_xx_1_stencil_0_0_16b  =  w_268_16b ;
assign  w_grad_xx_1_stencil_1_0_16b  =  w_271_16b ;

endmodule







module kernel__p2_cim_stencil_update_stream(
//Inputs
  w_grad_gx_1_stencil_0_0_16b,
  w_grad_gx_1_stencil_1_0_16b,
  w_grad_gxy_1_stencil_0_0_16b,
  w_grad_gxy_1_stencil_1_0_16b,
  w_grad_gy_1_stencil_0_0_16b,
  w_grad_gy_1_stencil_1_0_16b,
//Outputs
  out_w_p2_cim_stencil_0_0_16b,
  out_w_p2_cim_stencil_1_0_16b,

  clk
);

//Inputs
input  w_grad_gy_1_stencil_0_0_16b;
input  w_grad_gx_1_stencil_1_0_16b;
input  w_grad_gy_1_stencil_1_0_16b;
input  w_grad_gxy_1_stencil_1_0_16b;
input  w_grad_gx_1_stencil_0_0_16b;
input  w_grad_gxy_1_stencil_0_0_16b;
//Outputs
output  out_w_p2_cim_stencil_1_0_16b;
output  out_w_p2_cim_stencil_0_0_16b;

input  clk;


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
wire  w_p2_cim_stencil_0_0_16b;
wire  w_p2_cim_stencil_1_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_cim_stencil_1_0_16b = w_p2_cim_stencil_1_0_16b;
assign out_w_p2_cim_stencil_0_0_16b = w_p2_cim_stencil_0_0_16b;
assign  w_490_16b  =  w_grad_gx_1_stencil_0_0_16b ;
assign  w_491_16b  =  w_grad_gy_1_stencil_0_0_16b ;
assign  w_492_16b  =  w_grad_gxy_1_stencil_0_0_16b ;
DIV_16b_pe div_0 (
  .a(w_490_16b),
  .b(1'b0),
  .c(w_493_16b),
  .clk(clk)
);
MULT_16b_pe mult_1 (
  .a(1'b0),
  .b(w_493_16b),
  .c(w_494_16b),
  .clk(clk)
);
SUB_16b_pe sub_2 (
  .a(w_490_16b),
  .b(w_494_16b),
  .c(w_495_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_3 (
  .a(1'b0),
  .b(w_495_16b),
  .c(w_496_16b),
  .clk(clk)
);
assign  w_497_16b  = 1'b0;
AND_16b_pe and_4 (
  .a(w_496_16b),
  .b(w_497_16b),
  .c(w_498_16b),
  .clk(clk)
);
SUB_16b_pe sub_5 (
  .a(w_498_16b),
  .b(w_493_16b),
  .c(w_499_16b),
  .clk(clk)
);
assign  w_500_16b  = 1'b0;
AND_16b_pe and_6 (
  .a(w_500_16b),
  .b(w_496_16b),
  .c(w_501_16b),
  .clk(clk)
);
ADD_16b_pe add_7 (
  .a(w_499_16b),
  .b(w_501_16b),
  .c(w_502_16b),
  .clk(clk)
);
assign  w_503_16b  =  w_502_16b ;
DIV_16b_pe div_8 (
  .a(w_491_16b),
  .b(1'b0),
  .c(w_504_16b),
  .clk(clk)
);
MULT_16b_pe mult_9 (
  .a(w_504_16b),
  .b(1'b0),
  .c(w_505_16b),
  .clk(clk)
);
SUB_16b_pe sub_10 (
  .a(w_491_16b),
  .b(w_505_16b),
  .c(w_506_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(w_506_16b),
  .b(1'b0),
  .c(w_507_16b),
  .clk(clk)
);
AND_16b_pe and_12 (
  .a(w_507_16b),
  .b(w_497_16b),
  .c(w_508_16b),
  .clk(clk)
);
SUB_16b_pe sub_13 (
  .a(w_504_16b),
  .b(w_508_16b),
  .c(w_509_16b),
  .clk(clk)
);
AND_16b_pe and_14 (
  .a(w_507_16b),
  .b(w_500_16b),
  .c(w_510_16b),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_510_16b),
  .b(w_509_16b),
  .c(w_511_16b),
  .clk(clk)
);
assign  w_512_16b  =  w_511_16b ;
ADD_16b_pe add_16 (
  .a(w_503_16b),
  .b(w_512_16b),
  .c(w_513_16b),
  .clk(clk)
);
MULT_16b_pe mult_17 (
  .a(w_503_16b),
  .b(w_512_16b),
  .c(w_514_16b),
  .clk(clk)
);
DIV_16b_pe div_18 (
  .a(w_492_16b),
  .b(1'b0),
  .c(w_515_16b),
  .clk(clk)
);
MULT_16b_pe mult_19 (
  .a(w_515_16b),
  .b(1'b0),
  .c(w_516_16b),
  .clk(clk)
);
SUB_16b_pe sub_20 (
  .a(w_492_16b),
  .b(w_516_16b),
  .c(w_517_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_21 (
  .a(w_517_16b),
  .b(1'b0),
  .c(w_518_16b),
  .clk(clk)
);
AND_16b_pe and_22 (
  .a(w_518_16b),
  .b(w_497_16b),
  .c(w_519_16b),
  .clk(clk)
);
SUB_16b_pe sub_23 (
  .a(w_515_16b),
  .b(w_519_16b),
  .c(w_520_16b),
  .clk(clk)
);
AND_16b_pe and_24 (
  .a(w_518_16b),
  .b(w_500_16b),
  .c(w_521_16b),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_520_16b),
  .b(w_521_16b),
  .c(w_522_16b),
  .clk(clk)
);
assign  w_523_16b  =  w_522_16b ;
MULT_16b_pe mult_26 (
  .a(w_523_16b),
  .b(1'b0),
  .c(w_524_16b),
  .clk(clk)
);
SUB_16b_pe sub_27 (
  .a(w_524_16b),
  .b(w_514_16b),
  .c(w_525_16b),
  .clk(clk)
);
MULT_16b_pe mult_28 (
  .a(1'b0),
  .b(w_513_16b),
  .c(w_526_16b),
  .clk(clk)
);
MULT_16b_pe mult_29 (
  .a(w_526_16b),
  .b(w_513_16b),
  .c(w_527_16b),
  .clk(clk)
);
SUB_16b_pe sub_30 (
  .a(w_525_16b),
  .b(w_527_16b),
  .c(w_528_16b),
  .clk(clk)
);
assign  w_529_16b  =  w_grad_gx_1_stencil_1_0_16b ;
assign  w_530_16b  =  w_grad_gy_1_stencil_1_0_16b ;
assign  w_531_16b  =  w_grad_gxy_1_stencil_1_0_16b ;
DIV_16b_pe div_31 (
  .a(1'b0),
  .b(w_529_16b),
  .c(w_532_16b),
  .clk(clk)
);
MULT_16b_pe mult_32 (
  .a(w_532_16b),
  .b(1'b0),
  .c(w_533_16b),
  .clk(clk)
);
SUB_16b_pe sub_33 (
  .a(w_533_16b),
  .b(w_529_16b),
  .c(w_534_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_34 (
  .a(1'b0),
  .b(w_534_16b),
  .c(w_535_16b),
  .clk(clk)
);
assign  w_536_16b  = 1'b0;
AND_16b_pe and_35 (
  .a(w_536_16b),
  .b(w_535_16b),
  .c(w_537_16b),
  .clk(clk)
);
SUB_16b_pe sub_36 (
  .a(w_532_16b),
  .b(w_537_16b),
  .c(w_538_16b),
  .clk(clk)
);
assign  w_539_16b  = 1'b0;
AND_16b_pe and_37 (
  .a(w_539_16b),
  .b(w_535_16b),
  .c(w_540_16b),
  .clk(clk)
);
ADD_16b_pe add_38 (
  .a(w_540_16b),
  .b(w_538_16b),
  .c(w_541_16b),
  .clk(clk)
);
assign  w_542_16b  =  w_541_16b ;
DIV_16b_pe div_39 (
  .a(1'b0),
  .b(w_530_16b),
  .c(w_543_16b),
  .clk(clk)
);
MULT_16b_pe mult_40 (
  .a(w_543_16b),
  .b(1'b0),
  .c(w_544_16b),
  .clk(clk)
);
SUB_16b_pe sub_41 (
  .a(w_530_16b),
  .b(w_544_16b),
  .c(w_545_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_42 (
  .a(1'b0),
  .b(w_545_16b),
  .c(w_546_16b),
  .clk(clk)
);
AND_16b_pe and_43 (
  .a(w_546_16b),
  .b(w_536_16b),
  .c(w_547_16b),
  .clk(clk)
);
SUB_16b_pe sub_44 (
  .a(w_543_16b),
  .b(w_547_16b),
  .c(w_548_16b),
  .clk(clk)
);
AND_16b_pe and_45 (
  .a(w_539_16b),
  .b(w_546_16b),
  .c(w_549_16b),
  .clk(clk)
);
ADD_16b_pe add_46 (
  .a(w_548_16b),
  .b(w_549_16b),
  .c(w_550_16b),
  .clk(clk)
);
assign  w_551_16b  =  w_550_16b ;
ADD_16b_pe add_47 (
  .a(w_542_16b),
  .b(w_551_16b),
  .c(w_552_16b),
  .clk(clk)
);
MULT_16b_pe mult_48 (
  .a(w_542_16b),
  .b(w_551_16b),
  .c(w_553_16b),
  .clk(clk)
);
DIV_16b_pe div_49 (
  .a(w_531_16b),
  .b(1'b0),
  .c(w_554_16b),
  .clk(clk)
);
MULT_16b_pe mult_50 (
  .a(1'b0),
  .b(w_554_16b),
  .c(w_555_16b),
  .clk(clk)
);
SUB_16b_pe sub_51 (
  .a(w_531_16b),
  .b(w_555_16b),
  .c(w_556_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_52 (
  .a(1'b0),
  .b(w_556_16b),
  .c(w_557_16b),
  .clk(clk)
);
AND_16b_pe and_53 (
  .a(w_536_16b),
  .b(w_557_16b),
  .c(w_558_16b),
  .clk(clk)
);
SUB_16b_pe sub_54 (
  .a(w_558_16b),
  .b(w_554_16b),
  .c(w_559_16b),
  .clk(clk)
);
AND_16b_pe and_55 (
  .a(w_539_16b),
  .b(w_557_16b),
  .c(w_560_16b),
  .clk(clk)
);
ADD_16b_pe add_56 (
  .a(w_559_16b),
  .b(w_560_16b),
  .c(w_561_16b),
  .clk(clk)
);
assign  w_562_16b  =  w_561_16b ;
MULT_16b_pe mult_57 (
  .a(w_562_16b),
  .b(1'b0),
  .c(w_563_16b),
  .clk(clk)
);
SUB_16b_pe sub_58 (
  .a(w_553_16b),
  .b(w_563_16b),
  .c(w_564_16b),
  .clk(clk)
);
MULT_16b_pe mult_59 (
  .a(1'b0),
  .b(w_552_16b),
  .c(w_565_16b),
  .clk(clk)
);
MULT_16b_pe mult_60 (
  .a(w_552_16b),
  .b(w_565_16b),
  .c(w_566_16b),
  .clk(clk)
);
SUB_16b_pe sub_61 (
  .a(w_564_16b),
  .b(w_566_16b),
  .c(w_567_16b),
  .clk(clk)
);
assign  w_p2_cim_stencil_0_0_16b  =  w_528_16b ;
assign  w_p2_cim_stencil_1_0_16b  =  w_567_16b ;

endmodule







module kernel__grad_x_1_stencil_stream(
//Inputs
  w_padded_1_stencil_0_0_8b,
  w_padded_1_stencil_0_1_8b,
  w_padded_1_stencil_0_2_8b,
  w_padded_1_stencil_1_0_8b,
  w_padded_1_stencil_1_1_8b,
  w_padded_1_stencil_1_2_8b,
  w_padded_1_stencil_2_0_8b,
  w_padded_1_stencil_2_1_8b,
  w_padded_1_stencil_2_2_8b,
  w_padded_1_stencil_3_0_8b,
  w_padded_1_stencil_3_1_8b,
  w_padded_1_stencil_3_2_8b,
//Outputs
  out_w_grad_x_1_stencil_0_0_16b,
  out_w_grad_x_1_stencil_1_0_16b,

  clk
);

//Inputs
input  w_padded_1_stencil_3_0_8b;
input  w_padded_1_stencil_3_1_8b;
input  w_padded_1_stencil_3_2_8b;
input  w_padded_1_stencil_2_1_8b;
input  w_padded_1_stencil_2_0_8b;
input  w_padded_1_stencil_2_2_8b;
input  w_padded_1_stencil_1_2_8b;
input  w_padded_1_stencil_1_0_8b;
input  w_padded_1_stencil_1_1_8b;
input  w_padded_1_stencil_0_2_8b;
input  w_padded_1_stencil_0_1_8b;
input  w_padded_1_stencil_0_0_8b;
//Outputs
output  out_w_grad_x_1_stencil_0_0_16b;
output  out_w_grad_x_1_stencil_1_0_16b;

input  clk;


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
wire  w_grad_x_1_stencil_0_0_16b;
wire  w_grad_x_1_stencil_1_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_x_1_stencil_0_0_16b = w_grad_x_1_stencil_0_0_16b;
assign out_w_grad_x_1_stencil_1_0_16b = w_grad_x_1_stencil_1_0_16b;
assign  w_226_16b  =  w_padded_1_stencil_2_0_8b ;
assign  w_227_16b  =  w_226_16b ;
assign  w_228_16b  =  w_padded_1_stencil_0_0_8b ;
assign  w_229_16b  =  w_228_16b ;
SUB_16b_pe sub_0 (
  .a(w_227_16b),
  .b(w_229_16b),
  .c(w_230_16b),
  .clk(clk)
);
assign  w_231_16b  =  w_padded_1_stencil_0_1_8b ;
assign  w_232_16b  =  w_231_16b ;
assign  w_233_16b  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_232_16b),
  .b(w_233_16b),
  .c(w_234_16b),
  .clk(clk)
);
SUB_16b_pe sub_2 (
  .a(w_230_16b),
  .b(w_234_16b),
  .c(w_235_16b),
  .clk(clk)
);
assign  w_236_16b  =  w_padded_1_stencil_2_1_8b ;
assign  w_237_16b  =  w_236_16b ;
MULT_16b_pe mult_3 (
  .a(w_233_16b),
  .b(w_237_16b),
  .c(w_238_16b),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_238_16b),
  .b(w_235_16b),
  .c(w_239_16b),
  .clk(clk)
);
assign  w_240_16b  =  w_padded_1_stencil_0_2_8b ;
assign  w_241_16b  =  w_240_16b ;
SUB_16b_pe sub_5 (
  .a(w_239_16b),
  .b(w_241_16b),
  .c(w_242_16b),
  .clk(clk)
);
assign  w_243_16b  =  w_padded_1_stencil_2_2_8b ;
assign  w_244_16b  =  w_243_16b ;
ADD_16b_pe add_6 (
  .a(w_244_16b),
  .b(w_242_16b),
  .c(w_245_16b),
  .clk(clk)
);
assign  w_246_16b  =  w_padded_1_stencil_3_0_8b ;
assign  w_247_16b  =  w_246_16b ;
assign  w_248_16b  =  w_padded_1_stencil_1_0_8b ;
assign  w_249_16b  =  w_248_16b ;
SUB_16b_pe sub_7 (
  .a(w_247_16b),
  .b(w_249_16b),
  .c(w_250_16b),
  .clk(clk)
);
assign  w_251_16b  =  w_padded_1_stencil_1_1_8b ;
assign  w_252_16b  =  w_251_16b ;
assign  w_253_16b  = 1'b0;
MULT_16b_pe mult_8 (
  .a(w_252_16b),
  .b(w_253_16b),
  .c(w_254_16b),
  .clk(clk)
);
SUB_16b_pe sub_9 (
  .a(w_254_16b),
  .b(w_250_16b),
  .c(w_255_16b),
  .clk(clk)
);
assign  w_256_16b  =  w_padded_1_stencil_3_1_8b ;
assign  w_257_16b  =  w_256_16b ;
MULT_16b_pe mult_10 (
  .a(w_257_16b),
  .b(w_253_16b),
  .c(w_258_16b),
  .clk(clk)
);
ADD_16b_pe add_11 (
  .a(w_255_16b),
  .b(w_258_16b),
  .c(w_259_16b),
  .clk(clk)
);
assign  w_260_16b  =  w_padded_1_stencil_1_2_8b ;
assign  w_261_16b  =  w_260_16b ;
SUB_16b_pe sub_12 (
  .a(w_261_16b),
  .b(w_259_16b),
  .c(w_262_16b),
  .clk(clk)
);
assign  w_263_16b  =  w_padded_1_stencil_3_2_8b ;
assign  w_264_16b  =  w_263_16b ;
ADD_16b_pe add_13 (
  .a(w_262_16b),
  .b(w_264_16b),
  .c(w_265_16b),
  .clk(clk)
);
assign  w_grad_x_1_stencil_0_0_16b  =  w_245_16b ;
assign  w_grad_x_1_stencil_1_0_16b  =  w_265_16b ;

endmodule







module kernel__grad_gx_1_stencil_stream(
//Inputs
  w_grad_xx_1_stencil_0_0_16b,
  w_grad_xx_1_stencil_0_1_16b,
  w_grad_xx_1_stencil_0_2_16b,
  w_grad_xx_1_stencil_1_0_16b,
  w_grad_xx_1_stencil_1_1_16b,
  w_grad_xx_1_stencil_1_2_16b,
  w_grad_xx_1_stencil_2_0_16b,
  w_grad_xx_1_stencil_2_1_16b,
  w_grad_xx_1_stencil_2_2_16b,
  w_grad_xx_1_stencil_3_0_16b,
  w_grad_xx_1_stencil_3_1_16b,
  w_grad_xx_1_stencil_3_2_16b,
//Outputs
  out_w_grad_gx_1_stencil_0_0_16b,
  out_w_grad_gx_1_stencil_1_0_16b,

  clk
);

//Inputs
input  w_grad_xx_1_stencil_2_1_16b;
input  w_grad_xx_1_stencil_2_0_16b;
input  w_grad_xx_1_stencil_2_2_16b;
input  w_grad_xx_1_stencil_3_0_16b;
input  w_grad_xx_1_stencil_3_1_16b;
input  w_grad_xx_1_stencil_3_2_16b;
input  w_grad_xx_1_stencil_0_2_16b;
input  w_grad_xx_1_stencil_0_1_16b;
input  w_grad_xx_1_stencil_0_0_16b;
input  w_grad_xx_1_stencil_1_2_16b;
input  w_grad_xx_1_stencil_1_0_16b;
input  w_grad_xx_1_stencil_1_1_16b;
//Outputs
output  out_w_grad_gx_1_stencil_0_0_16b;
output  out_w_grad_gx_1_stencil_1_0_16b;

input  clk;


wire  r0_w_grad_gx_1_stencil_0_0_16b;
wire  r0_w_grad_gx_1_stencil_1_0_16b;
wire  r1_w_grad_gx_1_stencil_0_0_16b;
wire  r1_w_grad_gx_1_stencil_1_0_16b;
wire  r2_w_grad_gx_1_stencil_0_0_16b;
wire  r2_w_grad_gx_1_stencil_1_0_16b;
wire  r3_w_grad_gx_1_stencil_0_0_16b;
wire  r3_w_grad_gx_1_stencil_1_0_16b;
wire  r4_w_grad_gx_1_stencil_0_0_16b;
wire  r4_w_grad_gx_1_stencil_1_0_16b;
wire  r5_w_grad_gx_1_stencil_0_0_16b;
wire  r5_w_grad_gx_1_stencil_1_0_16b;
wire  r6_w_grad_gx_1_stencil_0_0_16b;
wire  r6_w_grad_gx_1_stencil_1_0_16b;
wire  r7_w_grad_gx_1_stencil_0_0_16b;
wire  r7_w_grad_gx_1_stencil_1_0_16b;
wire  r8_w_grad_gx_1_stencil_0_0_16b;
wire  r8_w_grad_gx_1_stencil_1_0_16b;
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
wire  w_grad_gx_1_stencil_0_0_16b;
wire  w_grad_gx_1_stencil_1_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_gx_1_stencil_0_0_16b = r8_w_grad_gx_1_stencil_0_0_16b;
assign out_w_grad_gx_1_stencil_1_0_16b = r8_w_grad_gx_1_stencil_1_0_16b;
assign  r0_w_grad_gx_1_stencil_0_0_16b  =  w_274_16b ;
assign  r0_w_grad_gx_1_stencil_1_0_16b  =  w_301_16b ;
assign  r1_w_grad_gx_1_stencil_0_0_16b  =  w_277_16b ;
assign  r1_w_grad_gx_1_stencil_1_0_16b  =  w_304_16b ;
assign  r2_w_grad_gx_1_stencil_0_0_16b  =  w_280_16b ;
assign  r2_w_grad_gx_1_stencil_1_0_16b  =  w_307_16b ;
assign  r3_w_grad_gx_1_stencil_0_0_16b  =  w_283_16b ;
assign  r3_w_grad_gx_1_stencil_1_0_16b  =  w_310_16b ;
assign  r4_w_grad_gx_1_stencil_0_0_16b  =  w_286_16b ;
assign  r4_w_grad_gx_1_stencil_1_0_16b  =  w_313_16b ;
assign  r5_w_grad_gx_1_stencil_0_0_16b  =  w_289_16b ;
assign  r5_w_grad_gx_1_stencil_1_0_16b  =  w_316_16b ;
assign  r6_w_grad_gx_1_stencil_0_0_16b  =  w_292_16b ;
assign  r6_w_grad_gx_1_stencil_1_0_16b  =  w_319_16b ;
assign  r7_w_grad_gx_1_stencil_0_0_16b  =  w_295_16b ;
assign  r7_w_grad_gx_1_stencil_1_0_16b  =  w_322_16b ;
assign  r8_w_grad_gx_1_stencil_0_0_16b  =  w_298_16b ;
assign  r8_w_grad_gx_1_stencil_1_0_16b  =  w_325_16b ;
assign  w_272_16b  = 1'b0;
assign  w_273_16b  =  w_grad_xx_1_stencil_0_0_16b ;
ADD_16b_pe add_0 (
  .a(w_272_16b),
  .b(w_273_16b),
  .c(w_274_16b),
  .clk(clk)
);
assign  w_275_16b  =  r0_w_grad_gx_1_stencil_0_0_16b ;
assign  w_276_16b  =  w_grad_xx_1_stencil_1_0_16b ;
ADD_16b_pe add_1 (
  .a(w_275_16b),
  .b(w_276_16b),
  .c(w_277_16b),
  .clk(clk)
);
assign  w_278_16b  =  r1_w_grad_gx_1_stencil_0_0_16b ;
assign  w_279_16b  =  w_grad_xx_1_stencil_2_0_16b ;
ADD_16b_pe add_2 (
  .a(w_278_16b),
  .b(w_279_16b),
  .c(w_280_16b),
  .clk(clk)
);
assign  w_281_16b  =  r2_w_grad_gx_1_stencil_0_0_16b ;
assign  w_282_16b  =  w_grad_xx_1_stencil_0_1_16b ;
ADD_16b_pe add_3 (
  .a(w_281_16b),
  .b(w_282_16b),
  .c(w_283_16b),
  .clk(clk)
);
assign  w_284_16b  =  r3_w_grad_gx_1_stencil_0_0_16b ;
assign  w_285_16b  =  w_grad_xx_1_stencil_1_1_16b ;
ADD_16b_pe add_4 (
  .a(w_285_16b),
  .b(w_284_16b),
  .c(w_286_16b),
  .clk(clk)
);
assign  w_287_16b  =  r4_w_grad_gx_1_stencil_0_0_16b ;
assign  w_288_16b  =  w_grad_xx_1_stencil_2_1_16b ;
ADD_16b_pe add_5 (
  .a(w_288_16b),
  .b(w_287_16b),
  .c(w_289_16b),
  .clk(clk)
);
assign  w_290_16b  =  r5_w_grad_gx_1_stencil_0_0_16b ;
assign  w_291_16b  =  w_grad_xx_1_stencil_0_2_16b ;
ADD_16b_pe add_6 (
  .a(w_290_16b),
  .b(w_291_16b),
  .c(w_292_16b),
  .clk(clk)
);
assign  w_293_16b  =  r6_w_grad_gx_1_stencil_0_0_16b ;
assign  w_294_16b  =  w_grad_xx_1_stencil_1_2_16b ;
ADD_16b_pe add_7 (
  .a(w_293_16b),
  .b(w_294_16b),
  .c(w_295_16b),
  .clk(clk)
);
assign  w_296_16b  =  r7_w_grad_gx_1_stencil_0_0_16b ;
assign  w_297_16b  =  w_grad_xx_1_stencil_2_2_16b ;
ADD_16b_pe add_8 (
  .a(w_296_16b),
  .b(w_297_16b),
  .c(w_298_16b),
  .clk(clk)
);
assign  w_299_16b  = 1'b0;
assign  w_300_16b  =  w_grad_xx_1_stencil_1_0_16b ;
ADD_16b_pe add_9 (
  .a(w_300_16b),
  .b(w_299_16b),
  .c(w_301_16b),
  .clk(clk)
);
assign  w_302_16b  =  r0_w_grad_gx_1_stencil_1_0_16b ;
assign  w_303_16b  =  w_grad_xx_1_stencil_2_0_16b ;
ADD_16b_pe add_10 (
  .a(w_302_16b),
  .b(w_303_16b),
  .c(w_304_16b),
  .clk(clk)
);
assign  w_305_16b  =  r1_w_grad_gx_1_stencil_1_0_16b ;
assign  w_306_16b  =  w_grad_xx_1_stencil_3_0_16b ;
ADD_16b_pe add_11 (
  .a(w_305_16b),
  .b(w_306_16b),
  .c(w_307_16b),
  .clk(clk)
);
assign  w_308_16b  =  r2_w_grad_gx_1_stencil_1_0_16b ;
assign  w_309_16b  =  w_grad_xx_1_stencil_1_1_16b ;
ADD_16b_pe add_12 (
  .a(w_308_16b),
  .b(w_309_16b),
  .c(w_310_16b),
  .clk(clk)
);
assign  w_311_16b  =  r3_w_grad_gx_1_stencil_1_0_16b ;
assign  w_312_16b  =  w_grad_xx_1_stencil_2_1_16b ;
ADD_16b_pe add_13 (
  .a(w_312_16b),
  .b(w_311_16b),
  .c(w_313_16b),
  .clk(clk)
);
assign  w_314_16b  =  r4_w_grad_gx_1_stencil_1_0_16b ;
assign  w_315_16b  =  w_grad_xx_1_stencil_3_1_16b ;
ADD_16b_pe add_14 (
  .a(w_315_16b),
  .b(w_314_16b),
  .c(w_316_16b),
  .clk(clk)
);
assign  w_317_16b  =  r5_w_grad_gx_1_stencil_1_0_16b ;
assign  w_318_16b  =  w_grad_xx_1_stencil_1_2_16b ;
ADD_16b_pe add_15 (
  .a(w_317_16b),
  .b(w_318_16b),
  .c(w_319_16b),
  .clk(clk)
);
assign  w_320_16b  =  r6_w_grad_gx_1_stencil_1_0_16b ;
assign  w_321_16b  =  w_grad_xx_1_stencil_2_2_16b ;
ADD_16b_pe add_16 (
  .a(w_320_16b),
  .b(w_321_16b),
  .c(w_322_16b),
  .clk(clk)
);
assign  w_323_16b  =  r7_w_grad_gx_1_stencil_1_0_16b ;
assign  w_324_16b  =  w_grad_xx_1_stencil_3_2_16b ;
ADD_16b_pe add_17 (
  .a(w_323_16b),
  .b(w_324_16b),
  .c(w_325_16b),
  .clk(clk)
);
assign  w_grad_gx_1_stencil_0_0_16b  = 1'b0;
assign  w_grad_gx_1_stencil_1_0_16b  = 1'b0;

endmodule







module kernel__grad_gy_1_stencil_stream(
//Inputs
  w_grad_yy_1_stencil_0_0_16b,
  w_grad_yy_1_stencil_0_1_16b,
  w_grad_yy_1_stencil_0_2_16b,
  w_grad_yy_1_stencil_1_0_16b,
  w_grad_yy_1_stencil_1_1_16b,
  w_grad_yy_1_stencil_1_2_16b,
  w_grad_yy_1_stencil_2_0_16b,
  w_grad_yy_1_stencil_2_1_16b,
  w_grad_yy_1_stencil_2_2_16b,
  w_grad_yy_1_stencil_3_0_16b,
  w_grad_yy_1_stencil_3_1_16b,
  w_grad_yy_1_stencil_3_2_16b,
//Outputs
  out_w_grad_gy_1_stencil_0_0_16b,
  out_w_grad_gy_1_stencil_1_0_16b,

  clk
);

//Inputs
input  w_grad_yy_1_stencil_0_1_16b;
input  w_grad_yy_1_stencil_0_0_16b;
input  w_grad_yy_1_stencil_0_2_16b;
input  w_grad_yy_1_stencil_3_2_16b;
input  w_grad_yy_1_stencil_3_0_16b;
input  w_grad_yy_1_stencil_3_1_16b;
input  w_grad_yy_1_stencil_1_0_16b;
input  w_grad_yy_1_stencil_1_1_16b;
input  w_grad_yy_1_stencil_1_2_16b;
input  w_grad_yy_1_stencil_2_2_16b;
input  w_grad_yy_1_stencil_2_1_16b;
input  w_grad_yy_1_stencil_2_0_16b;
//Outputs
output  out_w_grad_gy_1_stencil_1_0_16b;
output  out_w_grad_gy_1_stencil_0_0_16b;

input  clk;


wire  r0_w_grad_gy_1_stencil_0_0_16b;
wire  r0_w_grad_gy_1_stencil_1_0_16b;
wire  r1_w_grad_gy_1_stencil_0_0_16b;
wire  r1_w_grad_gy_1_stencil_1_0_16b;
wire  r2_w_grad_gy_1_stencil_0_0_16b;
wire  r2_w_grad_gy_1_stencil_1_0_16b;
wire  r3_w_grad_gy_1_stencil_0_0_16b;
wire  r3_w_grad_gy_1_stencil_1_0_16b;
wire  r4_w_grad_gy_1_stencil_0_0_16b;
wire  r4_w_grad_gy_1_stencil_1_0_16b;
wire  r5_w_grad_gy_1_stencil_0_0_16b;
wire  r5_w_grad_gy_1_stencil_1_0_16b;
wire  r6_w_grad_gy_1_stencil_0_0_16b;
wire  r6_w_grad_gy_1_stencil_1_0_16b;
wire  r7_w_grad_gy_1_stencil_0_0_16b;
wire  r7_w_grad_gy_1_stencil_1_0_16b;
wire  r8_w_grad_gy_1_stencil_0_0_16b;
wire  r8_w_grad_gy_1_stencil_1_0_16b;
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
wire  w_grad_gy_1_stencil_0_0_16b;
wire  w_grad_gy_1_stencil_1_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_gy_1_stencil_1_0_16b = r8_w_grad_gy_1_stencil_1_0_16b;
assign out_w_grad_gy_1_stencil_0_0_16b = r8_w_grad_gy_1_stencil_0_0_16b;
assign  r0_w_grad_gy_1_stencil_0_0_16b  =  w_438_16b ;
assign  r0_w_grad_gy_1_stencil_1_0_16b  =  w_465_16b ;
assign  r1_w_grad_gy_1_stencil_0_0_16b  =  w_441_16b ;
assign  r1_w_grad_gy_1_stencil_1_0_16b  =  w_468_16b ;
assign  r2_w_grad_gy_1_stencil_0_0_16b  =  w_444_16b ;
assign  r2_w_grad_gy_1_stencil_1_0_16b  =  w_471_16b ;
assign  r3_w_grad_gy_1_stencil_0_0_16b  =  w_447_16b ;
assign  r3_w_grad_gy_1_stencil_1_0_16b  =  w_474_16b ;
assign  r4_w_grad_gy_1_stencil_0_0_16b  =  w_450_16b ;
assign  r4_w_grad_gy_1_stencil_1_0_16b  =  w_477_16b ;
assign  r5_w_grad_gy_1_stencil_0_0_16b  =  w_453_16b ;
assign  r5_w_grad_gy_1_stencil_1_0_16b  =  w_480_16b ;
assign  r6_w_grad_gy_1_stencil_0_0_16b  =  w_456_16b ;
assign  r6_w_grad_gy_1_stencil_1_0_16b  =  w_483_16b ;
assign  r7_w_grad_gy_1_stencil_0_0_16b  =  w_459_16b ;
assign  r7_w_grad_gy_1_stencil_1_0_16b  =  w_486_16b ;
assign  r8_w_grad_gy_1_stencil_0_0_16b  =  w_462_16b ;
assign  r8_w_grad_gy_1_stencil_1_0_16b  =  w_489_16b ;
assign  w_436_16b  = 1'b0;
assign  w_437_16b  =  w_grad_yy_1_stencil_0_0_16b ;
ADD_16b_pe add_0 (
  .a(w_436_16b),
  .b(w_437_16b),
  .c(w_438_16b),
  .clk(clk)
);
assign  w_439_16b  =  r0_w_grad_gy_1_stencil_0_0_16b ;
assign  w_440_16b  =  w_grad_yy_1_stencil_1_0_16b ;
ADD_16b_pe add_1 (
  .a(w_439_16b),
  .b(w_440_16b),
  .c(w_441_16b),
  .clk(clk)
);
assign  w_442_16b  =  r1_w_grad_gy_1_stencil_0_0_16b ;
assign  w_443_16b  =  w_grad_yy_1_stencil_2_0_16b ;
ADD_16b_pe add_2 (
  .a(w_443_16b),
  .b(w_442_16b),
  .c(w_444_16b),
  .clk(clk)
);
assign  w_445_16b  =  r2_w_grad_gy_1_stencil_0_0_16b ;
assign  w_446_16b  =  w_grad_yy_1_stencil_0_1_16b ;
ADD_16b_pe add_3 (
  .a(w_446_16b),
  .b(w_445_16b),
  .c(w_447_16b),
  .clk(clk)
);
assign  w_448_16b  =  r3_w_grad_gy_1_stencil_0_0_16b ;
assign  w_449_16b  =  w_grad_yy_1_stencil_1_1_16b ;
ADD_16b_pe add_4 (
  .a(w_449_16b),
  .b(w_448_16b),
  .c(w_450_16b),
  .clk(clk)
);
assign  w_451_16b  =  r4_w_grad_gy_1_stencil_0_0_16b ;
assign  w_452_16b  =  w_grad_yy_1_stencil_2_1_16b ;
ADD_16b_pe add_5 (
  .a(w_451_16b),
  .b(w_452_16b),
  .c(w_453_16b),
  .clk(clk)
);
assign  w_454_16b  =  r5_w_grad_gy_1_stencil_0_0_16b ;
assign  w_455_16b  =  w_grad_yy_1_stencil_0_2_16b ;
ADD_16b_pe add_6 (
  .a(w_454_16b),
  .b(w_455_16b),
  .c(w_456_16b),
  .clk(clk)
);
assign  w_457_16b  =  r6_w_grad_gy_1_stencil_0_0_16b ;
assign  w_458_16b  =  w_grad_yy_1_stencil_1_2_16b ;
ADD_16b_pe add_7 (
  .a(w_457_16b),
  .b(w_458_16b),
  .c(w_459_16b),
  .clk(clk)
);
assign  w_460_16b  =  r7_w_grad_gy_1_stencil_0_0_16b ;
assign  w_461_16b  =  w_grad_yy_1_stencil_2_2_16b ;
ADD_16b_pe add_8 (
  .a(w_461_16b),
  .b(w_460_16b),
  .c(w_462_16b),
  .clk(clk)
);
assign  w_463_16b  = 1'b0;
assign  w_464_16b  =  w_grad_yy_1_stencil_1_0_16b ;
ADD_16b_pe add_9 (
  .a(w_464_16b),
  .b(w_463_16b),
  .c(w_465_16b),
  .clk(clk)
);
assign  w_466_16b  =  r0_w_grad_gy_1_stencil_1_0_16b ;
assign  w_467_16b  =  w_grad_yy_1_stencil_2_0_16b ;
ADD_16b_pe add_10 (
  .a(w_467_16b),
  .b(w_466_16b),
  .c(w_468_16b),
  .clk(clk)
);
assign  w_469_16b  =  r1_w_grad_gy_1_stencil_1_0_16b ;
assign  w_470_16b  =  w_grad_yy_1_stencil_3_0_16b ;
ADD_16b_pe add_11 (
  .a(w_469_16b),
  .b(w_470_16b),
  .c(w_471_16b),
  .clk(clk)
);
assign  w_472_16b  =  r2_w_grad_gy_1_stencil_1_0_16b ;
assign  w_473_16b  =  w_grad_yy_1_stencil_1_1_16b ;
ADD_16b_pe add_12 (
  .a(w_472_16b),
  .b(w_473_16b),
  .c(w_474_16b),
  .clk(clk)
);
assign  w_475_16b  =  r3_w_grad_gy_1_stencil_1_0_16b ;
assign  w_476_16b  =  w_grad_yy_1_stencil_2_1_16b ;
ADD_16b_pe add_13 (
  .a(w_476_16b),
  .b(w_475_16b),
  .c(w_477_16b),
  .clk(clk)
);
assign  w_478_16b  =  r4_w_grad_gy_1_stencil_1_0_16b ;
assign  w_479_16b  =  w_grad_yy_1_stencil_3_1_16b ;
ADD_16b_pe add_14 (
  .a(w_478_16b),
  .b(w_479_16b),
  .c(w_480_16b),
  .clk(clk)
);
assign  w_481_16b  =  r5_w_grad_gy_1_stencil_1_0_16b ;
assign  w_482_16b  =  w_grad_yy_1_stencil_1_2_16b ;
ADD_16b_pe add_15 (
  .a(w_482_16b),
  .b(w_481_16b),
  .c(w_483_16b),
  .clk(clk)
);
assign  w_484_16b  =  r6_w_grad_gy_1_stencil_1_0_16b ;
assign  w_485_16b  =  w_grad_yy_1_stencil_2_2_16b ;
ADD_16b_pe add_16 (
  .a(w_485_16b),
  .b(w_484_16b),
  .c(w_486_16b),
  .clk(clk)
);
assign  w_487_16b  =  r7_w_grad_gy_1_stencil_1_0_16b ;
assign  w_488_16b  =  w_grad_yy_1_stencil_3_2_16b ;
ADD_16b_pe add_17 (
  .a(w_487_16b),
  .b(w_488_16b),
  .c(w_489_16b),
  .clk(clk)
);
assign  w_grad_gy_1_stencil_0_0_16b  = 1'b0;
assign  w_grad_gy_1_stencil_1_0_16b  = 1'b0;

endmodule







module kernel__grad_yy_1_stencil_update_stream(
//Inputs
  w_grad_y_1_stencil_0_0_16b,
  w_grad_y_1_stencil_1_0_16b,
//Outputs
  out_w_grad_yy_1_stencil_0_0_16b,
  out_w_grad_yy_1_stencil_1_0_16b,

  clk
);

//Inputs
input  w_grad_y_1_stencil_1_0_16b;
input  w_grad_y_1_stencil_0_0_16b;
//Outputs
output  out_w_grad_yy_1_stencil_1_0_16b;
output  out_w_grad_yy_1_stencil_0_0_16b;

input  clk;


wire  w_430_16b;
wire  w_431_16b;
wire  w_432_16b;
wire  w_433_16b;
wire  w_434_16b;
wire  w_435_16b;
wire  w_grad_yy_1_stencil_0_0_16b;
wire  w_grad_yy_1_stencil_1_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_yy_1_stencil_1_0_16b = w_grad_yy_1_stencil_1_0_16b;
assign out_w_grad_yy_1_stencil_0_0_16b = w_grad_yy_1_stencil_0_0_16b;
assign  w_430_16b  =  w_grad_y_1_stencil_0_0_16b ;
assign  w_431_16b  =  w_430_16b ;
MULT_16b_pe mult_0 (
  .a(w_431_16b),
  .b(1'b0),
  .c(w_432_16b),
  .clk(clk)
);
assign  w_433_16b  =  w_grad_y_1_stencil_1_0_16b ;
assign  w_434_16b  =  w_433_16b ;
MULT_16b_pe mult_1 (
  .a(w_434_16b),
  .b(1'b0),
  .c(w_435_16b),
  .clk(clk)
);
assign  w_grad_yy_1_stencil_0_0_16b  =  w_432_16b ;
assign  w_grad_yy_1_stencil_1_0_16b  =  w_435_16b ;

endmodule







module kernel__hw_output_1_stencil_stream(
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
  w_p2_cim_stencil_3_0_16b,
  w_p2_cim_stencil_3_1_16b,
  w_p2_cim_stencil_3_2_16b,
//Outputs
  out_w_hw_output_1_stencil_1_0_8b,
  out_w_hw_output_1_stencil_packed_16b,

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
input  w_p2_cim_stencil_3_2_16b;
input  w_p2_cim_stencil_3_0_16b;
input  w_p2_cim_stencil_3_1_16b;
//Outputs
output  out_w_hw_output_1_stencil_packed_16b;
output  out_w_hw_output_1_stencil_1_0_8b;

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
wire  w_hw_output_1_stencil_0_0_8b;
wire  w_hw_output_1_stencil_1_0_8b;
wire  w_hw_output_1_stencil_packed_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_hw_output_1_stencil_packed_16b = w_hw_output_1_stencil_packed_16b;
assign out_w_hw_output_1_stencil_1_0_8b = w_hw_output_1_stencil_1_0_8b;
assign  w_568_16b  =  w_p2_cim_stencil_1_1_16b ;
assign  w_569_16b  = 1'b0;
assign  w_570_16b  = 1'b0;
assign  w_571_16b  =  w_p2_cim_stencil_0_0_16b ;
assign  w_572_16b  =  w_p2_cim_stencil_1_0_16b ;
MAX_16b_pe max_0 (
  .a(w_572_16b),
  .b(w_571_16b),
  .c(w_573_16b),
  .clk(clk)
);
assign  w_574_16b  =  w_p2_cim_stencil_2_0_16b ;
MAX_16b_pe max_1 (
  .a(w_574_16b),
  .b(w_573_16b),
  .c(w_575_16b),
  .clk(clk)
);
assign  w_576_16b  =  w_p2_cim_stencil_0_1_16b ;
MAX_16b_pe max_2 (
  .a(w_576_16b),
  .b(w_575_16b),
  .c(w_577_16b),
  .clk(clk)
);
assign  w_578_16b  =  w_p2_cim_stencil_2_1_16b ;
MAX_16b_pe max_3 (
  .a(w_577_16b),
  .b(w_578_16b),
  .c(w_579_16b),
  .clk(clk)
);
assign  w_580_16b  =  w_p2_cim_stencil_0_2_16b ;
MAX_16b_pe max_4 (
  .a(w_580_16b),
  .b(w_579_16b),
  .c(w_581_16b),
  .clk(clk)
);
assign  w_582_16b  =  w_p2_cim_stencil_1_2_16b ;
MAX_16b_pe max_5 (
  .a(w_582_16b),
  .b(w_581_16b),
  .c(w_583_16b),
  .clk(clk)
);
assign  w_584_16b  =  w_p2_cim_stencil_2_2_16b ;
MAX_16b_pe max_6 (
  .a(w_584_16b),
  .b(w_583_16b),
  .c(w_585_16b),
  .clk(clk)
);
LT_16b_pe lt_7 (
  .a(w_568_16b),
  .b(w_585_16b),
  .c(w_586_16b),
  .clk(clk)
);
LTE_16b_pe lte_8 (
  .a(1'b0),
  .b(w_568_16b),
  .c(w_587_16b),
  .clk(clk)
);
AND_16b_pe and_9 (
  .a(w_586_16b),
  .b(w_587_16b),
  .c(w_588_16b),
  .clk(clk)
);
MUX_16b_pe mux_10 (
  .a(w_569_16b),
  .b(w_588_16b),
  .s(w_570_16b),
  .c(w_589_16b),
  .clk(clk)
);
assign  w_590_16b  =  w_p2_cim_stencil_2_1_16b ;
assign  w_591_16b  = 1'b0;
assign  w_592_16b  = 1'b0;
assign  w_593_16b  =  w_p2_cim_stencil_1_0_16b ;
assign  w_594_16b  =  w_p2_cim_stencil_2_0_16b ;
MAX_16b_pe max_11 (
  .a(w_594_16b),
  .b(w_593_16b),
  .c(w_595_16b),
  .clk(clk)
);
assign  w_596_16b  =  w_p2_cim_stencil_3_0_16b ;
MAX_16b_pe max_12 (
  .a(w_595_16b),
  .b(w_596_16b),
  .c(w_597_16b),
  .clk(clk)
);
assign  w_598_16b  =  w_p2_cim_stencil_1_1_16b ;
MAX_16b_pe max_13 (
  .a(w_597_16b),
  .b(w_598_16b),
  .c(w_599_16b),
  .clk(clk)
);
assign  w_600_16b  =  w_p2_cim_stencil_3_1_16b ;
MAX_16b_pe max_14 (
  .a(w_599_16b),
  .b(w_600_16b),
  .c(w_601_16b),
  .clk(clk)
);
assign  w_602_16b  =  w_p2_cim_stencil_1_2_16b ;
MAX_16b_pe max_15 (
  .a(w_601_16b),
  .b(w_602_16b),
  .c(w_603_16b),
  .clk(clk)
);
assign  w_604_16b  =  w_p2_cim_stencil_2_2_16b ;
MAX_16b_pe max_16 (
  .a(w_604_16b),
  .b(w_603_16b),
  .c(w_605_16b),
  .clk(clk)
);
assign  w_606_16b  =  w_p2_cim_stencil_3_2_16b ;
MAX_16b_pe max_17 (
  .a(w_605_16b),
  .b(w_606_16b),
  .c(w_607_16b),
  .clk(clk)
);
LT_16b_pe lt_18 (
  .a(w_607_16b),
  .b(w_590_16b),
  .c(w_608_16b),
  .clk(clk)
);
LTE_16b_pe lte_19 (
  .a(1'b0),
  .b(w_590_16b),
  .c(w_609_16b),
  .clk(clk)
);
AND_16b_pe and_20 (
  .a(w_609_16b),
  .b(w_608_16b),
  .c(w_610_16b),
  .clk(clk)
);
MUX_16b_pe mux_21 (
  .a(w_591_16b),
  .b(w_610_16b),
  .s(w_592_16b),
  .c(w_611_16b),
  .clk(clk)
);
assign  w_hw_output_1_stencil_0_0_8b  =  w_589_16b ;
assign  w_hw_output_1_stencil_1_0_8b  =  w_611_16b ;
assign  w_hw_output_1_stencil_packed_16b  =  w_hw_output_1_stencil_0_0_8b ;

endmodule







module kernel__grad_gxy_1_stencil_stream(
//Inputs
  w_grad_xy_1_stencil_0_0_16b,
  w_grad_xy_1_stencil_0_1_16b,
  w_grad_xy_1_stencil_0_2_16b,
  w_grad_xy_1_stencil_1_0_16b,
  w_grad_xy_1_stencil_1_1_16b,
  w_grad_xy_1_stencil_1_2_16b,
  w_grad_xy_1_stencil_2_0_16b,
  w_grad_xy_1_stencil_2_1_16b,
  w_grad_xy_1_stencil_2_2_16b,
  w_grad_xy_1_stencil_3_0_16b,
  w_grad_xy_1_stencil_3_1_16b,
  w_grad_xy_1_stencil_3_2_16b,
//Outputs
  out_w_grad_gxy_1_stencil_0_0_16b,
  out_w_grad_gxy_1_stencil_1_0_16b,

  clk
);

//Inputs
input  w_grad_xy_1_stencil_1_2_16b;
input  w_grad_xy_1_stencil_1_1_16b;
input  w_grad_xy_1_stencil_1_0_16b;
input  w_grad_xy_1_stencil_0_2_16b;
input  w_grad_xy_1_stencil_0_0_16b;
input  w_grad_xy_1_stencil_0_1_16b;
input  w_grad_xy_1_stencil_3_1_16b;
input  w_grad_xy_1_stencil_3_0_16b;
input  w_grad_xy_1_stencil_3_2_16b;
input  w_grad_xy_1_stencil_2_0_16b;
input  w_grad_xy_1_stencil_2_1_16b;
input  w_grad_xy_1_stencil_2_2_16b;
//Outputs
output  out_w_grad_gxy_1_stencil_0_0_16b;
output  out_w_grad_gxy_1_stencil_1_0_16b;

input  clk;


wire  r0_w_grad_gxy_1_stencil_0_0_16b;
wire  r0_w_grad_gxy_1_stencil_1_0_16b;
wire  r1_w_grad_gxy_1_stencil_0_0_16b;
wire  r1_w_grad_gxy_1_stencil_1_0_16b;
wire  r2_w_grad_gxy_1_stencil_0_0_16b;
wire  r2_w_grad_gxy_1_stencil_1_0_16b;
wire  r3_w_grad_gxy_1_stencil_0_0_16b;
wire  r3_w_grad_gxy_1_stencil_1_0_16b;
wire  r4_w_grad_gxy_1_stencil_0_0_16b;
wire  r4_w_grad_gxy_1_stencil_1_0_16b;
wire  r5_w_grad_gxy_1_stencil_0_0_16b;
wire  r5_w_grad_gxy_1_stencil_1_0_16b;
wire  r6_w_grad_gxy_1_stencil_0_0_16b;
wire  r6_w_grad_gxy_1_stencil_1_0_16b;
wire  r7_w_grad_gxy_1_stencil_0_0_16b;
wire  r7_w_grad_gxy_1_stencil_1_0_16b;
wire  r8_w_grad_gxy_1_stencil_0_0_16b;
wire  r8_w_grad_gxy_1_stencil_1_0_16b;
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
wire  w_grad_gxy_1_stencil_0_0_16b;
wire  w_grad_gxy_1_stencil_1_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_gxy_1_stencil_0_0_16b = r8_w_grad_gxy_1_stencil_0_0_16b;
assign out_w_grad_gxy_1_stencil_1_0_16b = r8_w_grad_gxy_1_stencil_1_0_16b;
assign  r0_w_grad_gxy_1_stencil_0_0_16b  =  w_378_16b ;
assign  r0_w_grad_gxy_1_stencil_1_0_16b  =  w_405_16b ;
assign  r1_w_grad_gxy_1_stencil_0_0_16b  =  w_381_16b ;
assign  r1_w_grad_gxy_1_stencil_1_0_16b  =  w_408_16b ;
assign  r2_w_grad_gxy_1_stencil_0_0_16b  =  w_384_16b ;
assign  r2_w_grad_gxy_1_stencil_1_0_16b  =  w_411_16b ;
assign  r3_w_grad_gxy_1_stencil_0_0_16b  =  w_387_16b ;
assign  r3_w_grad_gxy_1_stencil_1_0_16b  =  w_414_16b ;
assign  r4_w_grad_gxy_1_stencil_0_0_16b  =  w_390_16b ;
assign  r4_w_grad_gxy_1_stencil_1_0_16b  =  w_417_16b ;
assign  r5_w_grad_gxy_1_stencil_0_0_16b  =  w_393_16b ;
assign  r5_w_grad_gxy_1_stencil_1_0_16b  =  w_420_16b ;
assign  r6_w_grad_gxy_1_stencil_0_0_16b  =  w_396_16b ;
assign  r6_w_grad_gxy_1_stencil_1_0_16b  =  w_423_16b ;
assign  r7_w_grad_gxy_1_stencil_0_0_16b  =  w_399_16b ;
assign  r7_w_grad_gxy_1_stencil_1_0_16b  =  w_426_16b ;
assign  r8_w_grad_gxy_1_stencil_0_0_16b  =  w_402_16b ;
assign  r8_w_grad_gxy_1_stencil_1_0_16b  =  w_429_16b ;
assign  w_376_16b  = 1'b0;
assign  w_377_16b  =  w_grad_xy_1_stencil_0_0_16b ;
ADD_16b_pe add_0 (
  .a(w_377_16b),
  .b(w_376_16b),
  .c(w_378_16b),
  .clk(clk)
);
assign  w_379_16b  =  r0_w_grad_gxy_1_stencil_0_0_16b ;
assign  w_380_16b  =  w_grad_xy_1_stencil_1_0_16b ;
ADD_16b_pe add_1 (
  .a(w_380_16b),
  .b(w_379_16b),
  .c(w_381_16b),
  .clk(clk)
);
assign  w_382_16b  =  r1_w_grad_gxy_1_stencil_0_0_16b ;
assign  w_383_16b  =  w_grad_xy_1_stencil_2_0_16b ;
ADD_16b_pe add_2 (
  .a(w_382_16b),
  .b(w_383_16b),
  .c(w_384_16b),
  .clk(clk)
);
assign  w_385_16b  =  r2_w_grad_gxy_1_stencil_0_0_16b ;
assign  w_386_16b  =  w_grad_xy_1_stencil_0_1_16b ;
ADD_16b_pe add_3 (
  .a(w_385_16b),
  .b(w_386_16b),
  .c(w_387_16b),
  .clk(clk)
);
assign  w_388_16b  =  r3_w_grad_gxy_1_stencil_0_0_16b ;
assign  w_389_16b  =  w_grad_xy_1_stencil_1_1_16b ;
ADD_16b_pe add_4 (
  .a(w_388_16b),
  .b(w_389_16b),
  .c(w_390_16b),
  .clk(clk)
);
assign  w_391_16b  =  r4_w_grad_gxy_1_stencil_0_0_16b ;
assign  w_392_16b  =  w_grad_xy_1_stencil_2_1_16b ;
ADD_16b_pe add_5 (
  .a(w_392_16b),
  .b(w_391_16b),
  .c(w_393_16b),
  .clk(clk)
);
assign  w_394_16b  =  r5_w_grad_gxy_1_stencil_0_0_16b ;
assign  w_395_16b  =  w_grad_xy_1_stencil_0_2_16b ;
ADD_16b_pe add_6 (
  .a(w_395_16b),
  .b(w_394_16b),
  .c(w_396_16b),
  .clk(clk)
);
assign  w_397_16b  =  r6_w_grad_gxy_1_stencil_0_0_16b ;
assign  w_398_16b  =  w_grad_xy_1_stencil_1_2_16b ;
ADD_16b_pe add_7 (
  .a(w_397_16b),
  .b(w_398_16b),
  .c(w_399_16b),
  .clk(clk)
);
assign  w_400_16b  =  r7_w_grad_gxy_1_stencil_0_0_16b ;
assign  w_401_16b  =  w_grad_xy_1_stencil_2_2_16b ;
ADD_16b_pe add_8 (
  .a(w_401_16b),
  .b(w_400_16b),
  .c(w_402_16b),
  .clk(clk)
);
assign  w_403_16b  = 1'b0;
assign  w_404_16b  =  w_grad_xy_1_stencil_1_0_16b ;
ADD_16b_pe add_9 (
  .a(w_404_16b),
  .b(w_403_16b),
  .c(w_405_16b),
  .clk(clk)
);
assign  w_406_16b  =  r0_w_grad_gxy_1_stencil_1_0_16b ;
assign  w_407_16b  =  w_grad_xy_1_stencil_2_0_16b ;
ADD_16b_pe add_10 (
  .a(w_407_16b),
  .b(w_406_16b),
  .c(w_408_16b),
  .clk(clk)
);
assign  w_409_16b  =  r1_w_grad_gxy_1_stencil_1_0_16b ;
assign  w_410_16b  =  w_grad_xy_1_stencil_3_0_16b ;
ADD_16b_pe add_11 (
  .a(w_410_16b),
  .b(w_409_16b),
  .c(w_411_16b),
  .clk(clk)
);
assign  w_412_16b  =  r2_w_grad_gxy_1_stencil_1_0_16b ;
assign  w_413_16b  =  w_grad_xy_1_stencil_1_1_16b ;
ADD_16b_pe add_12 (
  .a(w_412_16b),
  .b(w_413_16b),
  .c(w_414_16b),
  .clk(clk)
);
assign  w_415_16b  =  r3_w_grad_gxy_1_stencil_1_0_16b ;
assign  w_416_16b  =  w_grad_xy_1_stencil_2_1_16b ;
ADD_16b_pe add_13 (
  .a(w_415_16b),
  .b(w_416_16b),
  .c(w_417_16b),
  .clk(clk)
);
assign  w_418_16b  =  r4_w_grad_gxy_1_stencil_1_0_16b ;
assign  w_419_16b  =  w_grad_xy_1_stencil_3_1_16b ;
ADD_16b_pe add_14 (
  .a(w_418_16b),
  .b(w_419_16b),
  .c(w_420_16b),
  .clk(clk)
);
assign  w_421_16b  =  r5_w_grad_gxy_1_stencil_1_0_16b ;
assign  w_422_16b  =  w_grad_xy_1_stencil_1_2_16b ;
ADD_16b_pe add_15 (
  .a(w_421_16b),
  .b(w_422_16b),
  .c(w_423_16b),
  .clk(clk)
);
assign  w_424_16b  =  r6_w_grad_gxy_1_stencil_1_0_16b ;
assign  w_425_16b  =  w_grad_xy_1_stencil_2_2_16b ;
ADD_16b_pe add_16 (
  .a(w_425_16b),
  .b(w_424_16b),
  .c(w_426_16b),
  .clk(clk)
);
assign  w_427_16b  =  r7_w_grad_gxy_1_stencil_1_0_16b ;
assign  w_428_16b  =  w_grad_xy_1_stencil_3_2_16b ;
ADD_16b_pe add_17 (
  .a(w_428_16b),
  .b(w_427_16b),
  .c(w_429_16b),
  .clk(clk)
);
assign  w_grad_gxy_1_stencil_0_0_16b  = 1'b0;
assign  w_grad_gxy_1_stencil_1_0_16b  = 1'b0;

endmodule







module kernel__grad_y_1_stencil_stream(
//Inputs
  w_padded_1_stencil_0_0_8b,
  w_padded_1_stencil_0_2_8b,
  w_padded_1_stencil_1_0_8b,
  w_padded_1_stencil_1_2_8b,
  w_padded_1_stencil_2_0_8b,
  w_padded_1_stencil_2_2_8b,
  w_padded_1_stencil_3_0_8b,
  w_padded_1_stencil_3_2_8b,
//Outputs
  out_w_grad_y_1_stencil_0_0_16b,
  out_w_grad_y_1_stencil_1_0_16b,

  clk
);

//Inputs
input  w_padded_1_stencil_3_0_8b;
input  w_padded_1_stencil_3_2_8b;
input  w_padded_1_stencil_2_0_8b;
input  w_padded_1_stencil_2_2_8b;
input  w_padded_1_stencil_1_2_8b;
input  w_padded_1_stencil_1_0_8b;
input  w_padded_1_stencil_0_2_8b;
input  w_padded_1_stencil_0_0_8b;
//Outputs
output  out_w_grad_y_1_stencil_1_0_16b;
output  out_w_grad_y_1_stencil_0_0_16b;

input  clk;


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
wire  w_grad_y_1_stencil_0_0_16b;
wire  w_grad_y_1_stencil_1_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_y_1_stencil_1_0_16b = w_grad_y_1_stencil_1_0_16b;
assign out_w_grad_y_1_stencil_0_0_16b = w_grad_y_1_stencil_0_0_16b;
assign  w_326_16b  =  w_padded_1_stencil_0_2_8b ;
assign  w_327_16b  =  w_326_16b ;
assign  w_328_16b  =  w_padded_1_stencil_0_0_8b ;
assign  w_329_16b  =  w_328_16b ;
SUB_16b_pe sub_0 (
  .a(w_329_16b),
  .b(w_327_16b),
  .c(w_330_16b),
  .clk(clk)
);
assign  w_331_16b  =  w_padded_1_stencil_1_2_8b ;
assign  w_332_16b  =  w_331_16b ;
assign  w_333_16b  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_333_16b),
  .b(w_332_16b),
  .c(w_334_16b),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_330_16b),
  .b(w_334_16b),
  .c(w_335_16b),
  .clk(clk)
);
assign  w_336_16b  =  w_padded_1_stencil_1_0_8b ;
assign  w_337_16b  =  w_336_16b ;
MULT_16b_pe mult_3 (
  .a(w_333_16b),
  .b(w_337_16b),
  .c(w_338_16b),
  .clk(clk)
);
SUB_16b_pe sub_4 (
  .a(w_338_16b),
  .b(w_335_16b),
  .c(w_339_16b),
  .clk(clk)
);
assign  w_340_16b  =  w_padded_1_stencil_2_2_8b ;
assign  w_341_16b  =  w_340_16b ;
ADD_16b_pe add_5 (
  .a(w_339_16b),
  .b(w_341_16b),
  .c(w_342_16b),
  .clk(clk)
);
assign  w_343_16b  =  w_padded_1_stencil_2_0_8b ;
assign  w_344_16b  =  w_343_16b ;
SUB_16b_pe sub_6 (
  .a(w_344_16b),
  .b(w_342_16b),
  .c(w_345_16b),
  .clk(clk)
);
assign  w_346_16b  =  w_padded_1_stencil_1_2_8b ;
assign  w_347_16b  =  w_346_16b ;
assign  w_348_16b  =  w_padded_1_stencil_1_0_8b ;
assign  w_349_16b  =  w_348_16b ;
SUB_16b_pe sub_7 (
  .a(w_347_16b),
  .b(w_349_16b),
  .c(w_350_16b),
  .clk(clk)
);
assign  w_351_16b  =  w_padded_1_stencil_2_2_8b ;
assign  w_352_16b  =  w_351_16b ;
assign  w_353_16b  = 1'b0;
MULT_16b_pe mult_8 (
  .a(w_353_16b),
  .b(w_352_16b),
  .c(w_354_16b),
  .clk(clk)
);
ADD_16b_pe add_9 (
  .a(w_350_16b),
  .b(w_354_16b),
  .c(w_355_16b),
  .clk(clk)
);
assign  w_356_16b  =  w_padded_1_stencil_2_0_8b ;
assign  w_357_16b  =  w_356_16b ;
MULT_16b_pe mult_10 (
  .a(w_353_16b),
  .b(w_357_16b),
  .c(w_358_16b),
  .clk(clk)
);
SUB_16b_pe sub_11 (
  .a(w_358_16b),
  .b(w_355_16b),
  .c(w_359_16b),
  .clk(clk)
);
assign  w_360_16b  =  w_padded_1_stencil_3_2_8b ;
assign  w_361_16b  =  w_360_16b ;
ADD_16b_pe add_12 (
  .a(w_359_16b),
  .b(w_361_16b),
  .c(w_362_16b),
  .clk(clk)
);
assign  w_363_16b  =  w_padded_1_stencil_3_0_8b ;
assign  w_364_16b  =  w_363_16b ;
SUB_16b_pe sub_13 (
  .a(w_364_16b),
  .b(w_362_16b),
  .c(w_365_16b),
  .clk(clk)
);
assign  w_grad_y_1_stencil_0_0_16b  =  w_345_16b ;
assign  w_grad_y_1_stencil_1_0_16b  =  w_365_16b ;

endmodule







module kernel__grad_xy_1_stencil_update_stream(
//Inputs
  w_grad_x_1_stencil_0_0_16b,
  w_grad_x_1_stencil_1_0_16b,
  w_grad_y_1_stencil_0_0_16b,
  w_grad_y_1_stencil_1_0_16b,
//Outputs
  out_w_grad_xy_1_stencil_0_0_16b,
  out_w_grad_xy_1_stencil_1_0_16b,

  clk
);

//Inputs
input  w_grad_x_1_stencil_0_0_16b;
input  w_grad_y_1_stencil_1_0_16b;
input  w_grad_x_1_stencil_1_0_16b;
input  w_grad_y_1_stencil_0_0_16b;
//Outputs
output  out_w_grad_xy_1_stencil_0_0_16b;
output  out_w_grad_xy_1_stencil_1_0_16b;

input  clk;


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
wire  w_grad_xy_1_stencil_0_0_16b;
wire  w_grad_xy_1_stencil_1_0_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_xy_1_stencil_0_0_16b = w_grad_xy_1_stencil_0_0_16b;
assign out_w_grad_xy_1_stencil_1_0_16b = w_grad_xy_1_stencil_1_0_16b;
assign  w_366_16b  =  w_grad_x_1_stencil_0_0_16b ;
assign  w_367_16b  =  w_366_16b ;
assign  w_368_16b  =  w_grad_y_1_stencil_0_0_16b ;
assign  w_369_16b  =  w_368_16b ;
MULT_16b_pe mult_0 (
  .a(w_367_16b),
  .b(w_369_16b),
  .c(w_370_16b),
  .clk(clk)
);
assign  w_371_16b  =  w_grad_x_1_stencil_1_0_16b ;
assign  w_372_16b  =  w_371_16b ;
assign  w_373_16b  =  w_grad_y_1_stencil_1_0_16b ;
assign  w_374_16b  =  w_373_16b ;
MULT_16b_pe mult_1 (
  .a(w_374_16b),
  .b(w_372_16b),
  .c(w_375_16b),
  .clk(clk)
);
assign  w_grad_xy_1_stencil_0_0_16b  =  w_370_16b ;
assign  w_grad_xy_1_stencil_1_0_16b  =  w_375_16b ;

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

    



module LB_3_4_1_8bit_False (
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
    out11
);

// (3, 4, 1, 8, False)
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

//##// (3, 4, 1, 8, False)
    LB_base_3_4_8bit  LB_base_inst0 (
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
        .out_2_3(out11)
    );

endmodule

module LB_3_4_1_32bit_False (
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
    out11
);

// (3, 4, 1, 32, False)
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

//##// (3, 4, 1, 32, False)
    LB_base_3_4_32bit  LB_base_inst0 (
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
        .out_2_3(out11)
    );

endmodule

module LB_3_4_1_16bit_False (
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
    out11
);

// (3, 4, 1, 16, False)
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

//##// (3, 4, 1, 16, False)
    LB_base_3_4_16bit  LB_base_inst0 (
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
        .out_2_3(out11)
    );

endmodule

module LB_base_3_4_32bit (
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
    out_2_3
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


    ShiftReg_base_4_32bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1),
        .out_2_16b (out_0_2),
        .out_3_16b (out_0_3)
    );


    ShiftReg_base_4_32bit ShiftersRow_1(
        .clk (clk),

        .inp_16b (sram_out_1),

        .out_0_16b (out_1_0),
        .out_1_16b (out_1_1),
        .out_2_16b (out_1_2),
        .out_3_16b (out_1_3)
    );


    ShiftReg_base_4_32bit ShiftersRow_2(
        .clk (clk),

        .inp_16b (sram_out_2),

        .out_0_16b (out_2_0),
        .out_1_16b (out_2_1),
        .out_2_16b (out_2_2),
        .out_3_16b (out_2_3)
    );


endmodule

module LB_base_3_4_8bit (
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
    out_2_3
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


endmodule

module LB_base_3_4_16bit (
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
    out_2_3
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


    ShiftReg_base_4_16bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1),
        .out_2_16b (out_0_2),
        .out_3_16b (out_0_3)
    );


    ShiftReg_base_4_16bit ShiftersRow_1(
        .clk (clk),

        .inp_16b (sram_out_1),

        .out_0_16b (out_1_0),
        .out_1_16b (out_1_1),
        .out_2_16b (out_1_2),
        .out_3_16b (out_1_3)
    );


    ShiftReg_base_4_16bit ShiftersRow_2(
        .clk (clk),

        .inp_16b (sram_out_2),

        .out_0_16b (out_2_0),
        .out_1_16b (out_2_1),
        .out_2_16b (out_2_2),
        .out_3_16b (out_2_3)
    );


endmodule

module ShiftReg_base_4_16bit (
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

module ShiftReg_base_4_32bit (
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


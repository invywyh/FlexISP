module top(
//Inputs
  w_p2_grad_x_stencil_stream_to_p2_grad_xx_0_0,

  w_p2_grad_y_stencil_stream_to_p2_grad_xy_0_0,

  w_downsample_1_stencil_stream_to_hw_output_1_0_0_0,
  w_downsample_1_stencil_stream_to_hw_output_1_0_0_1,
  w_downsample_1_stencil_stream_to_hw_output_1_0_0_2,
  w_downsample_1_stencil_stream_to_hw_output_1_0_1_0,
  w_downsample_1_stencil_stream_to_hw_output_1_0_1_1,
  w_downsample_1_stencil_stream_to_hw_output_1_0_1_2,
  w_downsample_1_stencil_stream_to_hw_output_1_0_2_0,
  w_downsample_1_stencil_stream_to_hw_output_1_0_2_1,
  w_downsample_1_stencil_stream_to_hw_output_1_0_2_2,
  w_downsample_1_stencil_stream_to_hw_output_1_1_0_0,
  w_downsample_1_stencil_stream_to_hw_output_1_1_0_1,
  w_downsample_1_stencil_stream_to_hw_output_1_1_0_2,
  w_downsample_1_stencil_stream_to_hw_output_1_1_1_0,
  w_downsample_1_stencil_stream_to_hw_output_1_1_1_1,
  w_downsample_1_stencil_stream_to_hw_output_1_1_1_2,
  w_downsample_1_stencil_stream_to_hw_output_1_1_2_0,
  w_downsample_1_stencil_stream_to_hw_output_1_1_2_1,
  w_downsample_1_stencil_stream_to_hw_output_1_1_2_2,
  w_downsample_1_stencil_stream_to_hw_output_1_2_0_0,
  w_downsample_1_stencil_stream_to_hw_output_1_2_0_1,
  w_downsample_1_stencil_stream_to_hw_output_1_2_0_2,
  w_downsample_1_stencil_stream_to_hw_output_1_2_1_0,
  w_downsample_1_stencil_stream_to_hw_output_1_2_1_1,
  w_downsample_1_stencil_stream_to_hw_output_1_2_1_2,
  w_downsample_1_stencil_stream_to_hw_output_1_2_2_0,
  w_downsample_1_stencil_stream_to_hw_output_1_2_2_1,
  w_downsample_1_stencil_stream_to_hw_output_1_2_2_2,

  w_padded_1_stencil_update_stream_0_0,
  w_padded_1_stencil_update_stream_0_1,
  w_padded_1_stencil_update_stream_1_0,
  w_padded_1_stencil_update_stream_1_1,

//Outputs
  w_hw_output_1_stencil_stream_0_0_0,
  w_hw_output_1_stencil_stream_1_0_0,
  w_hw_output_1_stencil_stream_2_0_0,

  clk
);

//Inputs
input    w_p2_grad_x_stencil_stream_to_p2_grad_xx_0_0;

input    w_p2_grad_y_stencil_stream_to_p2_grad_xy_0_0;

input    w_downsample_1_stencil_stream_to_hw_output_1_0_0_0;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_0_1;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_0_2;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_1_0;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_1_1;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_1_2;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_2_0;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_2_1;
input    w_downsample_1_stencil_stream_to_hw_output_1_0_2_2;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_0_0;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_0_1;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_0_2;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_1_0;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_1_1;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_1_2;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_2_0;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_2_1;
input    w_downsample_1_stencil_stream_to_hw_output_1_1_2_2;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_0_0;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_0_1;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_0_2;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_1_0;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_1_1;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_1_2;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_2_0;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_2_1;
input    w_downsample_1_stencil_stream_to_hw_output_1_2_2_2;

input    w_padded_1_stencil_update_stream_0_0;
input    w_padded_1_stencil_update_stream_0_1;
input    w_padded_1_stencil_update_stream_1_0;
input    w_padded_1_stencil_update_stream_1_1;

//Outputs
output   w_hw_output_1_stencil_stream_0_0_0;
output   w_hw_output_1_stencil_stream_1_0_0;
output   w_hw_output_1_stencil_stream_2_0_0;

input   clk;

wire   w_p2_grad_gx_stencil_stream_0_0;

wire   w_downsample_1_stencil_update_stream_0_0_0;
wire   w_downsample_1_stencil_update_stream_1_0_0;
wire   w_downsample_1_stencil_update_stream_2_0_0;

wire   w_p2_grad_gxy_stencil_stream_0_0;

wire   w_padded_1_stencil_stream_0_0;
wire   w_padded_1_stencil_stream_0_1;
wire   w_padded_1_stencil_stream_0_2;
wire   w_padded_1_stencil_stream_0_3;
wire   w_padded_1_stencil_stream_1_0;
wire   w_padded_1_stencil_stream_1_1;
wire   w_padded_1_stencil_stream_1_2;
wire   w_padded_1_stencil_stream_1_3;
wire   w_padded_1_stencil_stream_2_0;
wire   w_padded_1_stencil_stream_2_1;
wire   w_padded_1_stencil_stream_2_2;
wire   w_padded_1_stencil_stream_2_3;
wire   w_padded_1_stencil_stream_3_0;
wire   w_padded_1_stencil_stream_3_1;
wire   w_padded_1_stencil_stream_3_2;
wire   w_padded_1_stencil_stream_3_3;

wire   w_p2_cim_stencil_stream_0_0;
wire   w_p2_cim_stencil_stream_0_1;
wire   w_p2_cim_stencil_stream_0_2;
wire   w_p2_cim_stencil_stream_1_0;
wire   w_p2_cim_stencil_stream_1_1;
wire   w_p2_cim_stencil_stream_1_2;
wire   w_p2_cim_stencil_stream_2_0;
wire   w_p2_cim_stencil_stream_2_1;
wire   w_p2_cim_stencil_stream_2_2;

wire   w_p2_grad_xx_stencil_update_stream_0_0;

wire   w_p2_grad_xy_stencil_update_stream_0_0;

wire   w_downsample_1_stencil_stream_0_0_0;
wire   w_downsample_1_stencil_stream_0_0_1;
wire   w_downsample_1_stencil_stream_0_0_2;
wire   w_downsample_1_stencil_stream_0_1_0;
wire   w_downsample_1_stencil_stream_0_1_1;
wire   w_downsample_1_stencil_stream_0_1_2;
wire   w_downsample_1_stencil_stream_0_2_0;
wire   w_downsample_1_stencil_stream_0_2_1;
wire   w_downsample_1_stencil_stream_0_2_2;
wire   w_downsample_1_stencil_stream_1_0_0;
wire   w_downsample_1_stencil_stream_1_0_1;
wire   w_downsample_1_stencil_stream_1_0_2;
wire   w_downsample_1_stencil_stream_1_1_0;
wire   w_downsample_1_stencil_stream_1_1_1;
wire   w_downsample_1_stencil_stream_1_1_2;
wire   w_downsample_1_stencil_stream_1_2_0;
wire   w_downsample_1_stencil_stream_1_2_1;
wire   w_downsample_1_stencil_stream_1_2_2;
wire   w_downsample_1_stencil_stream_2_0_0;
wire   w_downsample_1_stencil_stream_2_0_1;
wire   w_downsample_1_stencil_stream_2_0_2;
wire   w_downsample_1_stencil_stream_2_1_0;
wire   w_downsample_1_stencil_stream_2_1_1;
wire   w_downsample_1_stencil_stream_2_1_2;
wire   w_downsample_1_stencil_stream_2_2_0;
wire   w_downsample_1_stencil_stream_2_2_1;
wire   w_downsample_1_stencil_stream_2_2_2;

wire   w_p2_grad_yy_stencil_update_stream_0_0;

wire   w_p2_grad_xx_stencil_stream_0_0;
wire   w_p2_grad_xx_stencil_stream_0_1;
wire   w_p2_grad_xx_stencil_stream_0_2;
wire   w_p2_grad_xx_stencil_stream_1_0;
wire   w_p2_grad_xx_stencil_stream_1_1;
wire   w_p2_grad_xx_stencil_stream_1_2;
wire   w_p2_grad_xx_stencil_stream_2_0;
wire   w_p2_grad_xx_stencil_stream_2_1;
wire   w_p2_grad_xx_stencil_stream_2_2;

wire   w_p2_grad_xy_stencil_stream_0_0;
wire   w_p2_grad_xy_stencil_stream_0_1;
wire   w_p2_grad_xy_stencil_stream_0_2;
wire   w_p2_grad_xy_stencil_stream_1_0;
wire   w_p2_grad_xy_stencil_stream_1_1;
wire   w_p2_grad_xy_stencil_stream_1_2;
wire   w_p2_grad_xy_stencil_stream_2_0;
wire   w_p2_grad_xy_stencil_stream_2_1;
wire   w_p2_grad_xy_stencil_stream_2_2;

wire   w_p2_grad_y_stencil_stream_0_0;

wire   w_p2_cim_stencil_update_stream_0_0;

wire   w_p2_grad_yy_stencil_stream_0_0;
wire   w_p2_grad_yy_stencil_stream_0_1;
wire   w_p2_grad_yy_stencil_stream_0_2;
wire   w_p2_grad_yy_stencil_stream_1_0;
wire   w_p2_grad_yy_stencil_stream_1_1;
wire   w_p2_grad_yy_stencil_stream_1_2;
wire   w_p2_grad_yy_stencil_stream_2_0;
wire   w_p2_grad_yy_stencil_stream_2_1;
wire   w_p2_grad_yy_stencil_stream_2_2;

wire   w_p2_grad_x_stencil_stream_0_0;

wire   w_p2_corners_stencil_stream_0_0;

wire   w_p2_grad_gy_stencil_stream_0_0;

wire   gnd;
assign gnd=1'b0;

kernel__p2_grad_gx_stencil_stream KERN__p2_grad_gx_stencil_stream (
    .w_p2_grad_xx_stencil_0_0(w_p2_grad_xx_stencil_stream_0_0),
    .w_p2_grad_xx_stencil_0_1(w_p2_grad_xx_stencil_stream_0_1),
    .w_p2_grad_xx_stencil_0_2(w_p2_grad_xx_stencil_stream_0_2),
    .w_p2_grad_xx_stencil_1_0(w_p2_grad_xx_stencil_stream_1_0),
    .w_p2_grad_xx_stencil_1_1(w_p2_grad_xx_stencil_stream_1_1),
    .w_p2_grad_xx_stencil_1_2(w_p2_grad_xx_stencil_stream_1_2),
    .w_p2_grad_xx_stencil_2_0(w_p2_grad_xx_stencil_stream_2_0),
    .w_p2_grad_xx_stencil_2_1(w_p2_grad_xx_stencil_stream_2_1),
    .w_p2_grad_xx_stencil_2_2(w_p2_grad_xx_stencil_stream_2_2),

    .out_w_p2_grad_gx_stencil_0_0(w_p2_grad_gx_stencil_stream_0_0),

    .clk(clk)
);

LB_3_3_1_32bit_False LB__p2_grad_xy_stencil_stream (
    .clk(clk),

    .in0(w_p2_grad_xy_stencil_update_stream_0_0),

    .out0(w_p2_grad_xy_stencil_stream_0_0),
    .out1(w_p2_grad_xy_stencil_stream_0_1),
    .out2(w_p2_grad_xy_stencil_stream_0_2),
    .out3(w_p2_grad_xy_stencil_stream_1_0),
    .out4(w_p2_grad_xy_stencil_stream_1_1),
    .out5(w_p2_grad_xy_stencil_stream_1_2),
    .out6(w_p2_grad_xy_stencil_stream_2_0),
    .out7(w_p2_grad_xy_stencil_stream_2_1),
    .out8(w_p2_grad_xy_stencil_stream_2_2)
);

kernel__p2_grad_gxy_stencil_stream KERN__p2_grad_gxy_stencil_stream (
    .w_p2_grad_xy_stencil_0_0(w_p2_grad_xy_stencil_stream_0_0),
    .w_p2_grad_xy_stencil_0_1(w_p2_grad_xy_stencil_stream_0_1),
    .w_p2_grad_xy_stencil_0_2(w_p2_grad_xy_stencil_stream_0_2),
    .w_p2_grad_xy_stencil_1_0(w_p2_grad_xy_stencil_stream_1_0),
    .w_p2_grad_xy_stencil_1_1(w_p2_grad_xy_stencil_stream_1_1),
    .w_p2_grad_xy_stencil_1_2(w_p2_grad_xy_stencil_stream_1_2),
    .w_p2_grad_xy_stencil_2_0(w_p2_grad_xy_stencil_stream_2_0),
    .w_p2_grad_xy_stencil_2_1(w_p2_grad_xy_stencil_stream_2_1),
    .w_p2_grad_xy_stencil_2_2(w_p2_grad_xy_stencil_stream_2_2),

    .out_w_p2_grad_gxy_stencil_0_0(w_p2_grad_gxy_stencil_stream_0_0),

    .clk(clk)
);

LB_4_4_1_8bit_False LB__padded_1_stencil_stream (
    .clk(clk),

    .in0(w_padded_1_stencil_update_stream_0_0),

    .out0(w_padded_1_stencil_stream_0_0),
    .out1(w_padded_1_stencil_stream_0_1),
    .out2(w_padded_1_stencil_stream_0_2),
    .out3(w_padded_1_stencil_stream_0_3),
    .out4(w_padded_1_stencil_stream_1_0),
    .out5(w_padded_1_stencil_stream_1_1),
    .out6(w_padded_1_stencil_stream_1_2),
    .out7(w_padded_1_stencil_stream_1_3),
    .out8(w_padded_1_stencil_stream_2_0),
    .out9(w_padded_1_stencil_stream_2_1),
    .out10(w_padded_1_stencil_stream_2_2),
    .out11(w_padded_1_stencil_stream_2_3),
    .out12(w_padded_1_stencil_stream_3_0),
    .out13(w_padded_1_stencil_stream_3_1),
    .out14(w_padded_1_stencil_stream_3_2),
    .out15(w_padded_1_stencil_stream_3_3)
);

LB_3_3_1_16bit_False LB__p2_cim_stencil_stream (
    .clk(clk),

    .in0(w_p2_cim_stencil_update_stream_0_0),

    .out0(w_p2_cim_stencil_stream_0_0),
    .out1(w_p2_cim_stencil_stream_0_1),
    .out2(w_p2_cim_stencil_stream_0_2),
    .out3(w_p2_cim_stencil_stream_1_0),
    .out4(w_p2_cim_stencil_stream_1_1),
    .out5(w_p2_cim_stencil_stream_1_2),
    .out6(w_p2_cim_stencil_stream_2_0),
    .out7(w_p2_cim_stencil_stream_2_1),
    .out8(w_p2_cim_stencil_stream_2_2)
);

kernel__p2_grad_xx_stencil_update_stream KERN__p2_grad_xx_stencil_update_stream (
    .w_p2_grad_x_stencil_0_0(w_p2_grad_x_stencil_stream_to_p2_grad_xx_0_0),

    .out_w_p2_grad_xx_stencil_0_0(w_p2_grad_xx_stencil_update_stream_0_0),

    .clk(clk)
);

kernel__p2_grad_xy_stencil_update_stream KERN__p2_grad_xy_stencil_update_stream (
    .w_p2_grad_x_stencil_0_0(w_p2_grad_x_stencil_stream_0_0),
    .w_p2_grad_y_stencil_0_0(w_p2_grad_y_stencil_stream_to_p2_grad_xy_0_0),

    .out_w_p2_grad_xy_stencil_0_0(w_p2_grad_xy_stencil_update_stream_0_0),

    .clk(clk)
);

LB_3_3_3_8bit_False LB__downsample_1_stencil_stream (
    .clk(clk),

    .in0(w_downsample_1_stencil_update_stream_0_0_0),
    .in1(w_downsample_1_stencil_update_stream_1_0_0),
    .in2(w_downsample_1_stencil_update_stream_2_0_0),

    .out0(w_downsample_1_stencil_stream_0_0_0),
    .out1(w_downsample_1_stencil_stream_0_0_1),
    .out2(w_downsample_1_stencil_stream_0_0_2),
    .out3(w_downsample_1_stencil_stream_0_1_0),
    .out4(w_downsample_1_stencil_stream_0_1_1),
    .out5(w_downsample_1_stencil_stream_0_1_2),
    .out6(w_downsample_1_stencil_stream_0_2_0),
    .out7(w_downsample_1_stencil_stream_0_2_1),
    .out8(w_downsample_1_stencil_stream_0_2_2),
    .out9(w_downsample_1_stencil_stream_1_0_0),
    .out10(w_downsample_1_stencil_stream_1_0_1),
    .out11(w_downsample_1_stencil_stream_1_0_2),
    .out12(w_downsample_1_stencil_stream_1_1_0),
    .out13(w_downsample_1_stencil_stream_1_1_1),
    .out14(w_downsample_1_stencil_stream_1_1_2),
    .out15(w_downsample_1_stencil_stream_1_2_0),
    .out16(w_downsample_1_stencil_stream_1_2_1),
    .out17(w_downsample_1_stencil_stream_1_2_2),
    .out18(w_downsample_1_stencil_stream_2_0_0),
    .out19(w_downsample_1_stencil_stream_2_0_1),
    .out20(w_downsample_1_stencil_stream_2_0_2),
    .out21(w_downsample_1_stencil_stream_2_1_0),
    .out22(w_downsample_1_stencil_stream_2_1_1),
    .out23(w_downsample_1_stencil_stream_2_1_2),
    .out24(w_downsample_1_stencil_stream_2_2_0),
    .out25(w_downsample_1_stencil_stream_2_2_1),
    .out26(w_downsample_1_stencil_stream_2_2_2)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_downsample_1_stencil_0_2_2(w_p2_corners_stencil_stream_0_0),
    .w_downsample_1_stencil_1_2_2(w_downsample_1_stencil_stream_to_hw_output_1_0_0_0),
    .w_downsample_1_stencil_2_2_2(w_downsample_1_stencil_stream_to_hw_output_1_0_0_1),
    .w_p2_corners_stencil_0_0(w_downsample_1_stencil_stream_to_hw_output_1_0_0_2),

    .out_w_hw_output_1_stencil_1_0_0(w_hw_output_1_stencil_stream_0_0_0),
    .out_w_hw_output_1_stencil_2_0_0(w_hw_output_1_stencil_stream_1_0_0),
    .out_w_hw_output_1_stencil_packed(w_hw_output_1_stencil_stream_2_0_0),

    .clk(clk)
);

kernel__p2_grad_yy_stencil_update_stream KERN__p2_grad_yy_stencil_update_stream (
    .w_p2_grad_y_stencil_0_0(w_p2_grad_y_stencil_stream_0_0),

    .out_w_p2_grad_yy_stencil_0_0(w_p2_grad_yy_stencil_update_stream_0_0),

    .clk(clk)
);

LB_3_3_1_32bit_False LB__p2_grad_xx_stencil_stream (
    .clk(clk),

    .in0(w_p2_grad_xx_stencil_update_stream_0_0),

    .out0(w_p2_grad_xx_stencil_stream_0_0),
    .out1(w_p2_grad_xx_stencil_stream_0_1),
    .out2(w_p2_grad_xx_stencil_stream_0_2),
    .out3(w_p2_grad_xx_stencil_stream_1_0),
    .out4(w_p2_grad_xx_stencil_stream_1_1),
    .out5(w_p2_grad_xx_stencil_stream_1_2),
    .out6(w_p2_grad_xx_stencil_stream_2_0),
    .out7(w_p2_grad_xx_stencil_stream_2_1),
    .out8(w_p2_grad_xx_stencil_stream_2_2)
);

kernel__downsample_1_stencil_update_stream KERN__downsample_1_stencil_update_stream (
    .w_padded_1_stencil_0_0(w_padded_1_stencil_stream_0_0),
    .w_padded_1_stencil_0_1(w_padded_1_stencil_stream_0_1),
    .w_padded_1_stencil_0_2(w_padded_1_stencil_stream_0_2),
    .w_padded_1_stencil_1_0(w_padded_1_stencil_stream_0_3),
    .w_padded_1_stencil_1_1(w_padded_1_stencil_stream_1_0),
    .w_padded_1_stencil_1_2(w_padded_1_stencil_stream_1_1),
    .w_padded_1_stencil_1_3(w_padded_1_stencil_stream_1_2),
    .w_padded_1_stencil_2_0(w_padded_1_stencil_stream_1_3),
    .w_padded_1_stencil_2_1(w_padded_1_stencil_stream_2_0),
    .w_padded_1_stencil_2_2(w_padded_1_stencil_stream_2_1),
    .w_padded_1_stencil_2_3(w_padded_1_stencil_stream_2_2),
    .w_padded_1_stencil_3_1(w_padded_1_stencil_stream_2_3),
    .w_padded_1_stencil_3_2(w_padded_1_stencil_stream_3_0),
    .w_padded_1_stencil_3_3(w_padded_1_stencil_stream_3_1),

    .out_w_downsample_1_stencil_0_0_0(w_downsample_1_stencil_update_stream_0_0_0),
    .out_w_downsample_1_stencil_1_0_0(w_downsample_1_stencil_update_stream_1_0_0),
    .out_w_downsample_1_stencil_2_0_0(w_downsample_1_stencil_update_stream_2_0_0),

    .clk(clk)
);

kernel__p2_grad_y_stencil_stream KERN__p2_grad_y_stencil_stream (
    .w_downsample_1_stencil_0_0_0(w_downsample_1_stencil_stream_0_0_0),
    .w_downsample_1_stencil_0_0_2(w_downsample_1_stencil_stream_0_0_1),
    .w_downsample_1_stencil_0_1_0(w_downsample_1_stencil_stream_0_0_2),
    .w_downsample_1_stencil_0_1_2(w_downsample_1_stencil_stream_0_1_0),
    .w_downsample_1_stencil_0_2_0(w_downsample_1_stencil_stream_0_1_1),
    .w_downsample_1_stencil_0_2_2(w_downsample_1_stencil_stream_0_1_2),
    .w_downsample_1_stencil_1_0_0(w_downsample_1_stencil_stream_0_2_0),
    .w_downsample_1_stencil_1_0_2(w_downsample_1_stencil_stream_0_2_1),
    .w_downsample_1_stencil_1_1_0(w_downsample_1_stencil_stream_0_2_2),
    .w_downsample_1_stencil_1_1_2(w_downsample_1_stencil_stream_1_0_0),
    .w_downsample_1_stencil_1_2_0(w_downsample_1_stencil_stream_1_0_1),
    .w_downsample_1_stencil_1_2_2(w_downsample_1_stencil_stream_1_0_2),
    .w_downsample_1_stencil_2_0_0(w_downsample_1_stencil_stream_1_1_0),
    .w_downsample_1_stencil_2_0_2(w_downsample_1_stencil_stream_1_1_1),
    .w_downsample_1_stencil_2_1_0(w_downsample_1_stencil_stream_1_1_2),
    .w_downsample_1_stencil_2_1_2(w_downsample_1_stencil_stream_1_2_0),
    .w_downsample_1_stencil_2_2_0(w_downsample_1_stencil_stream_1_2_1),
    .w_downsample_1_stencil_2_2_2(w_downsample_1_stencil_stream_1_2_2),

    .out_w_p2_grad_y_stencil_0_0(w_p2_grad_y_stencil_stream_0_0),

    .clk(clk)
);

kernel__p2_cim_stencil_update_stream KERN__p2_cim_stencil_update_stream (
    .w_p2_grad_gx_stencil_0_0(w_p2_grad_gx_stencil_stream_0_0),
    .w_p2_grad_gxy_stencil_0_0(w_p2_grad_gxy_stencil_stream_0_0),
    .w_p2_grad_gy_stencil_0_0(w_p2_grad_gy_stencil_stream_0_0),

    .out_w_p2_cim_stencil_0_0(w_p2_cim_stencil_update_stream_0_0),

    .clk(clk)
);

LB_3_3_1_32bit_False LB__p2_grad_yy_stencil_stream (
    .clk(clk),

    .in0(w_p2_grad_yy_stencil_update_stream_0_0),

    .out0(w_p2_grad_yy_stencil_stream_0_0),
    .out1(w_p2_grad_yy_stencil_stream_0_1),
    .out2(w_p2_grad_yy_stencil_stream_0_2),
    .out3(w_p2_grad_yy_stencil_stream_1_0),
    .out4(w_p2_grad_yy_stencil_stream_1_1),
    .out5(w_p2_grad_yy_stencil_stream_1_2),
    .out6(w_p2_grad_yy_stencil_stream_2_0),
    .out7(w_p2_grad_yy_stencil_stream_2_1),
    .out8(w_p2_grad_yy_stencil_stream_2_2)
);

kernel__p2_grad_x_stencil_stream KERN__p2_grad_x_stencil_stream (
    .w_downsample_1_stencil_0_0_0(w_downsample_1_stencil_stream_0_0_0),
    .w_downsample_1_stencil_0_0_1(w_downsample_1_stencil_stream_0_0_1),
    .w_downsample_1_stencil_0_0_2(w_downsample_1_stencil_stream_0_0_2),
    .w_downsample_1_stencil_0_2_0(w_downsample_1_stencil_stream_0_1_0),
    .w_downsample_1_stencil_0_2_1(w_downsample_1_stencil_stream_0_1_1),
    .w_downsample_1_stencil_0_2_2(w_downsample_1_stencil_stream_0_1_2),
    .w_downsample_1_stencil_1_0_0(w_downsample_1_stencil_stream_0_2_0),
    .w_downsample_1_stencil_1_0_1(w_downsample_1_stencil_stream_0_2_1),
    .w_downsample_1_stencil_1_0_2(w_downsample_1_stencil_stream_0_2_2),
    .w_downsample_1_stencil_1_2_0(w_downsample_1_stencil_stream_1_0_0),
    .w_downsample_1_stencil_1_2_1(w_downsample_1_stencil_stream_1_0_1),
    .w_downsample_1_stencil_1_2_2(w_downsample_1_stencil_stream_1_0_2),
    .w_downsample_1_stencil_2_0_0(w_downsample_1_stencil_stream_1_1_0),
    .w_downsample_1_stencil_2_0_1(w_downsample_1_stencil_stream_1_1_1),
    .w_downsample_1_stencil_2_0_2(w_downsample_1_stencil_stream_1_1_2),
    .w_downsample_1_stencil_2_2_0(w_downsample_1_stencil_stream_1_2_0),
    .w_downsample_1_stencil_2_2_1(w_downsample_1_stencil_stream_1_2_1),
    .w_downsample_1_stencil_2_2_2(w_downsample_1_stencil_stream_1_2_2),

    .out_w_p2_grad_x_stencil_0_0(w_p2_grad_x_stencil_stream_0_0),

    .clk(clk)
);

kernel__p2_corners_stencil_stream KERN__p2_corners_stencil_stream (
    .w_p2_cim_stencil_0_0(w_p2_cim_stencil_stream_0_0),
    .w_p2_cim_stencil_0_1(w_p2_cim_stencil_stream_0_1),
    .w_p2_cim_stencil_0_2(w_p2_cim_stencil_stream_0_2),
    .w_p2_cim_stencil_1_0(w_p2_cim_stencil_stream_1_0),
    .w_p2_cim_stencil_1_1(w_p2_cim_stencil_stream_1_1),
    .w_p2_cim_stencil_1_2(w_p2_cim_stencil_stream_1_2),
    .w_p2_cim_stencil_2_0(w_p2_cim_stencil_stream_2_0),
    .w_p2_cim_stencil_2_1(w_p2_cim_stencil_stream_2_1),
    .w_p2_cim_stencil_2_2(w_p2_cim_stencil_stream_2_2),

    .out_w_p2_corners_stencil_0_0(w_p2_corners_stencil_stream_0_0),

    .clk(clk)
);

kernel__p2_grad_gy_stencil_stream KERN__p2_grad_gy_stencil_stream (
    .w_p2_grad_yy_stencil_0_0(w_p2_grad_yy_stencil_stream_0_0),
    .w_p2_grad_yy_stencil_0_1(w_p2_grad_yy_stencil_stream_0_1),
    .w_p2_grad_yy_stencil_0_2(w_p2_grad_yy_stencil_stream_0_2),
    .w_p2_grad_yy_stencil_1_0(w_p2_grad_yy_stencil_stream_1_0),
    .w_p2_grad_yy_stencil_1_1(w_p2_grad_yy_stencil_stream_1_1),
    .w_p2_grad_yy_stencil_1_2(w_p2_grad_yy_stencil_stream_1_2),
    .w_p2_grad_yy_stencil_2_0(w_p2_grad_yy_stencil_stream_2_0),
    .w_p2_grad_yy_stencil_2_1(w_p2_grad_yy_stencil_stream_2_1),
    .w_p2_grad_yy_stencil_2_2(w_p2_grad_yy_stencil_stream_2_2),

    .out_w_p2_grad_gy_stencil_0_0(w_p2_grad_gy_stencil_stream_0_0),

    .clk(clk)
);

endmodule



module kernel__p2_grad_gxy_stencil_stream(
//Inputs
  w_p2_grad_xy_stencil_0_0,
  w_p2_grad_xy_stencil_0_1,
  w_p2_grad_xy_stencil_0_2,
  w_p2_grad_xy_stencil_1_0,
  w_p2_grad_xy_stencil_1_1,
  w_p2_grad_xy_stencil_1_2,
  w_p2_grad_xy_stencil_2_0,
  w_p2_grad_xy_stencil_2_1,
  w_p2_grad_xy_stencil_2_2,
//Outputs
  out_w_p2_grad_gxy_stencil_0_0,

  clk
);

//Inputs
input  w_p2_grad_xy_stencil_1_2;
input  w_p2_grad_xy_stencil_1_1;
input  w_p2_grad_xy_stencil_1_0;
input  w_p2_grad_xy_stencil_0_2;
input  w_p2_grad_xy_stencil_0_0;
input  w_p2_grad_xy_stencil_0_1;
input  w_p2_grad_xy_stencil_2_0;
input  w_p2_grad_xy_stencil_2_1;
input  w_p2_grad_xy_stencil_2_2;
//Outputs
output  out_w_p2_grad_gxy_stencil_0_0;

input  clk;


wire  r0_w_p2_grad_gxy_stencil_0_0;
wire  r1_w_p2_grad_gxy_stencil_0_0;
wire  r2_w_p2_grad_gxy_stencil_0_0;
wire  r3_w_p2_grad_gxy_stencil_0_0;
wire  r4_w_p2_grad_gxy_stencil_0_0;
wire  r5_w_p2_grad_gxy_stencil_0_0;
wire  r6_w_p2_grad_gxy_stencil_0_0;
wire  r7_w_p2_grad_gxy_stencil_0_0;
wire  r8_w_p2_grad_gxy_stencil_0_0;
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
wire  w_p2_grad_gxy_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_gxy_stencil_0_0=r8_w_p2_grad_gxy_stencil_0_0;
assign  r0_w_p2_grad_gxy_stencil_0_0  =  w_455 ;
assign  r1_w_p2_grad_gxy_stencil_0_0  =  w_458 ;
assign  r2_w_p2_grad_gxy_stencil_0_0  =  w_461 ;
assign  r3_w_p2_grad_gxy_stencil_0_0  =  w_464 ;
assign  r4_w_p2_grad_gxy_stencil_0_0  =  w_467 ;
assign  r5_w_p2_grad_gxy_stencil_0_0  =  w_470 ;
assign  r6_w_p2_grad_gxy_stencil_0_0  =  w_473 ;
assign  r7_w_p2_grad_gxy_stencil_0_0  =  w_476 ;
assign  r8_w_p2_grad_gxy_stencil_0_0  =  w_479 ;
assign  w_453  = 1'b0;
assign  w_454  =  w_p2_grad_xy_stencil_0_0 ;
ADD_16b_pe add_0 (
  .a(w_454),
  .b(w_453),
  .c(w_455),
  .clk(clk)
);
assign  w_456  =  r0_w_p2_grad_gxy_stencil_0_0 ;
assign  w_457  =  w_p2_grad_xy_stencil_1_0 ;
ADD_16b_pe add_1 (
  .a(w_456),
  .b(w_457),
  .c(w_458),
  .clk(clk)
);
assign  w_459  =  r1_w_p2_grad_gxy_stencil_0_0 ;
assign  w_460  =  w_p2_grad_xy_stencil_2_0 ;
ADD_16b_pe add_2 (
  .a(w_459),
  .b(w_460),
  .c(w_461),
  .clk(clk)
);
assign  w_462  =  r2_w_p2_grad_gxy_stencil_0_0 ;
assign  w_463  =  w_p2_grad_xy_stencil_0_1 ;
ADD_16b_pe add_3 (
  .a(w_463),
  .b(w_462),
  .c(w_464),
  .clk(clk)
);
assign  w_465  =  r3_w_p2_grad_gxy_stencil_0_0 ;
assign  w_466  =  w_p2_grad_xy_stencil_1_1 ;
ADD_16b_pe add_4 (
  .a(w_465),
  .b(w_466),
  .c(w_467),
  .clk(clk)
);
assign  w_468  =  r4_w_p2_grad_gxy_stencil_0_0 ;
assign  w_469  =  w_p2_grad_xy_stencil_2_1 ;
ADD_16b_pe add_5 (
  .a(w_469),
  .b(w_468),
  .c(w_470),
  .clk(clk)
);
assign  w_471  =  r5_w_p2_grad_gxy_stencil_0_0 ;
assign  w_472  =  w_p2_grad_xy_stencil_0_2 ;
ADD_16b_pe add_6 (
  .a(w_472),
  .b(w_471),
  .c(w_473),
  .clk(clk)
);
assign  w_474  =  r6_w_p2_grad_gxy_stencil_0_0 ;
assign  w_475  =  w_p2_grad_xy_stencil_1_2 ;
ADD_16b_pe add_7 (
  .a(w_474),
  .b(w_475),
  .c(w_476),
  .clk(clk)
);
assign  w_477  =  r7_w_p2_grad_gxy_stencil_0_0 ;
assign  w_478  =  w_p2_grad_xy_stencil_2_2 ;
ADD_16b_pe add_8 (
  .a(w_477),
  .b(w_478),
  .c(w_479),
  .clk(clk)
);
assign  w_p2_grad_gxy_stencil_0_0  = 1'b0;

endmodule







module kernel__p2_grad_y_stencil_stream(
//Inputs
  w_downsample_1_stencil_0_0_0,
  w_downsample_1_stencil_0_0_2,
  w_downsample_1_stencil_0_1_0,
  w_downsample_1_stencil_0_1_2,
  w_downsample_1_stencil_0_2_0,
  w_downsample_1_stencil_0_2_2,
  w_downsample_1_stencil_1_0_0,
  w_downsample_1_stencil_1_0_2,
  w_downsample_1_stencil_1_1_0,
  w_downsample_1_stencil_1_1_2,
  w_downsample_1_stencil_1_2_0,
  w_downsample_1_stencil_1_2_2,
  w_downsample_1_stencil_2_0_0,
  w_downsample_1_stencil_2_0_2,
  w_downsample_1_stencil_2_1_0,
  w_downsample_1_stencil_2_1_2,
  w_downsample_1_stencil_2_2_0,
  w_downsample_1_stencil_2_2_2,
//Outputs
  out_w_p2_grad_y_stencil_0_0,

  clk
);

//Inputs
input  w_downsample_1_stencil_1_1_0;
input  w_downsample_1_stencil_0_1_0;
input  w_downsample_1_stencil_1_1_2;
input  w_downsample_1_stencil_0_1_2;
input  w_downsample_1_stencil_2_1_2;
input  w_downsample_1_stencil_0_0_0;
input  w_downsample_1_stencil_0_0_2;
input  w_downsample_1_stencil_1_2_2;
input  w_downsample_1_stencil_1_2_0;
input  w_downsample_1_stencil_2_0_2;
input  w_downsample_1_stencil_2_1_0;
input  w_downsample_1_stencil_2_2_0;
input  w_downsample_1_stencil_2_2_2;
input  w_downsample_1_stencil_1_0_0;
input  w_downsample_1_stencil_1_0_2;
input  w_downsample_1_stencil_0_2_2;
input  w_downsample_1_stencil_2_0_0;
input  w_downsample_1_stencil_0_2_0;
//Outputs
output  out_w_p2_grad_y_stencil_0_0;

input  clk;


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
wire  w_p2_grad_y_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_y_stencil_0_0=w_p2_grad_y_stencil_0_0;
assign  w_353  =  w_downsample_1_stencil_0_0_2 ;
assign  w_354  =  w_353 ;
assign  w_355  = 1'b0;
MULT_16b_pe mult_0 (
  .a(w_355),
  .b(w_354),
  .c(w_356),
  .clk(clk)
);
assign  w_357  =  w_downsample_1_stencil_1_0_2 ;
assign  w_358  =  w_357 ;
assign  w_359  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_359),
  .b(w_358),
  .c(w_360),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_356),
  .b(w_360),
  .c(w_361),
  .clk(clk)
);
assign  w_362  =  w_downsample_1_stencil_2_0_2 ;
assign  w_363  =  w_362 ;
assign  w_364  = 1'b0;
MULT_16b_pe mult_3 (
  .a(w_364),
  .b(w_363),
  .c(w_365),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_365),
  .b(w_361),
  .c(w_366),
  .clk(clk)
);
LSHIFT_16b_pe lshift_5 (
  .a(w_366),
  .b(1'b0),
  .c(w_367),
  .clk(clk)
);
assign  w_368  =  w_367 ;
assign  w_369  =  w_368 ;
assign  w_370  =  w_downsample_1_stencil_0_0_0 ;
assign  w_371  =  w_370 ;
MULT_16b_pe mult_6 (
  .a(w_371),
  .b(w_355),
  .c(w_372),
  .clk(clk)
);
assign  w_373  =  w_downsample_1_stencil_1_0_0 ;
assign  w_374  =  w_373 ;
MULT_16b_pe mult_7 (
  .a(w_374),
  .b(w_359),
  .c(w_375),
  .clk(clk)
);
ADD_16b_pe add_8 (
  .a(w_375),
  .b(w_372),
  .c(w_376),
  .clk(clk)
);
assign  w_377  =  w_downsample_1_stencil_2_0_0 ;
assign  w_378  =  w_377 ;
MULT_16b_pe mult_9 (
  .a(w_364),
  .b(w_378),
  .c(w_379),
  .clk(clk)
);
ADD_16b_pe add_10 (
  .a(w_376),
  .b(w_379),
  .c(w_380),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(w_380),
  .b(1'b0),
  .c(w_381),
  .clk(clk)
);
assign  w_382  =  w_381 ;
assign  w_383  =  w_382 ;
SUB_16b_pe sub_12 (
  .a(w_383),
  .b(w_369),
  .c(w_384),
  .clk(clk)
);
assign  w_385  =  w_downsample_1_stencil_0_1_2 ;
assign  w_386  =  w_385 ;
MULT_16b_pe mult_13 (
  .a(w_355),
  .b(w_386),
  .c(w_387),
  .clk(clk)
);
assign  w_388  =  w_downsample_1_stencil_1_1_2 ;
assign  w_389  =  w_388 ;
MULT_16b_pe mult_14 (
  .a(w_389),
  .b(w_359),
  .c(w_390),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_390),
  .b(w_387),
  .c(w_391),
  .clk(clk)
);
assign  w_392  =  w_downsample_1_stencil_2_1_2 ;
assign  w_393  =  w_392 ;
MULT_16b_pe mult_16 (
  .a(w_364),
  .b(w_393),
  .c(w_394),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_394),
  .b(w_391),
  .c(w_395),
  .clk(clk)
);
LSHIFT_16b_pe lshift_18 (
  .a(1'b0),
  .b(w_395),
  .c(w_396),
  .clk(clk)
);
assign  w_397  =  w_396 ;
assign  w_398  =  w_397 ;
assign  w_399  = 1'b0;
MULT_16b_pe mult_19 (
  .a(w_399),
  .b(w_398),
  .c(w_400),
  .clk(clk)
);
ADD_16b_pe add_20 (
  .a(w_384),
  .b(w_400),
  .c(w_401),
  .clk(clk)
);
assign  w_402  =  w_downsample_1_stencil_0_1_0 ;
assign  w_403  =  w_402 ;
MULT_16b_pe mult_21 (
  .a(w_403),
  .b(w_355),
  .c(w_404),
  .clk(clk)
);
assign  w_405  =  w_downsample_1_stencil_1_1_0 ;
assign  w_406  =  w_405 ;
MULT_16b_pe mult_22 (
  .a(w_406),
  .b(w_359),
  .c(w_407),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_407),
  .b(w_404),
  .c(w_408),
  .clk(clk)
);
assign  w_409  =  w_downsample_1_stencil_2_1_0 ;
assign  w_410  =  w_409 ;
MULT_16b_pe mult_24 (
  .a(w_410),
  .b(w_364),
  .c(w_411),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_411),
  .b(w_408),
  .c(w_412),
  .clk(clk)
);
LSHIFT_16b_pe lshift_26 (
  .a(1'b0),
  .b(w_412),
  .c(w_413),
  .clk(clk)
);
assign  w_414  =  w_413 ;
assign  w_415  =  w_414 ;
MULT_16b_pe mult_27 (
  .a(w_415),
  .b(w_399),
  .c(w_416),
  .clk(clk)
);
SUB_16b_pe sub_28 (
  .a(w_416),
  .b(w_401),
  .c(w_417),
  .clk(clk)
);
assign  w_418  =  w_downsample_1_stencil_0_2_2 ;
assign  w_419  =  w_418 ;
MULT_16b_pe mult_29 (
  .a(w_419),
  .b(w_355),
  .c(w_420),
  .clk(clk)
);
assign  w_421  =  w_downsample_1_stencil_1_2_2 ;
assign  w_422  =  w_421 ;
MULT_16b_pe mult_30 (
  .a(w_359),
  .b(w_422),
  .c(w_423),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_420),
  .b(w_423),
  .c(w_424),
  .clk(clk)
);
assign  w_425  =  w_downsample_1_stencil_2_2_2 ;
assign  w_426  =  w_425 ;
MULT_16b_pe mult_32 (
  .a(w_364),
  .b(w_426),
  .c(w_427),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_424),
  .b(w_427),
  .c(w_428),
  .clk(clk)
);
LSHIFT_16b_pe lshift_34 (
  .a(w_428),
  .b(1'b0),
  .c(w_429),
  .clk(clk)
);
assign  w_430  =  w_429 ;
assign  w_431  =  w_430 ;
ADD_16b_pe add_35 (
  .a(w_431),
  .b(w_417),
  .c(w_432),
  .clk(clk)
);
assign  w_433  =  w_downsample_1_stencil_0_2_0 ;
assign  w_434  =  w_433 ;
MULT_16b_pe mult_36 (
  .a(w_355),
  .b(w_434),
  .c(w_435),
  .clk(clk)
);
assign  w_436  =  w_downsample_1_stencil_1_2_0 ;
assign  w_437  =  w_436 ;
MULT_16b_pe mult_37 (
  .a(w_359),
  .b(w_437),
  .c(w_438),
  .clk(clk)
);
ADD_16b_pe add_38 (
  .a(w_438),
  .b(w_435),
  .c(w_439),
  .clk(clk)
);
assign  w_440  =  w_downsample_1_stencil_2_2_0 ;
assign  w_441  =  w_440 ;
MULT_16b_pe mult_39 (
  .a(w_441),
  .b(w_364),
  .c(w_442),
  .clk(clk)
);
ADD_16b_pe add_40 (
  .a(w_442),
  .b(w_439),
  .c(w_443),
  .clk(clk)
);
LSHIFT_16b_pe lshift_41 (
  .a(w_443),
  .b(1'b0),
  .c(w_444),
  .clk(clk)
);
assign  w_445  =  w_444 ;
assign  w_446  =  w_445 ;
SUB_16b_pe sub_42 (
  .a(w_432),
  .b(w_446),
  .c(w_447),
  .clk(clk)
);
assign  w_p2_grad_y_stencil_0_0  =  w_447 ;

endmodule







module kernel__p2_grad_yy_stencil_update_stream(
//Inputs
  w_p2_grad_y_stencil_0_0,
//Outputs
  out_w_p2_grad_yy_stencil_0_0,

  clk
);

//Inputs
input  w_p2_grad_y_stencil_0_0;
//Outputs
output  out_w_p2_grad_yy_stencil_0_0;

input  clk;


wire  w_480;
wire  w_481;
wire  w_482;
wire  w_p2_grad_yy_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_yy_stencil_0_0=w_p2_grad_yy_stencil_0_0;
assign  w_480  =  w_p2_grad_y_stencil_0_0 ;
assign  w_481  =  w_480 ;
MULT_16b_pe mult_0 (
  .a(w_481),
  .b(1'b0),
  .c(w_482),
  .clk(clk)
);
assign  w_p2_grad_yy_stencil_0_0  =  w_482 ;

endmodule







module kernel__p2_grad_gx_stencil_stream(
//Inputs
  w_p2_grad_xx_stencil_0_0,
  w_p2_grad_xx_stencil_0_1,
  w_p2_grad_xx_stencil_0_2,
  w_p2_grad_xx_stencil_1_0,
  w_p2_grad_xx_stencil_1_1,
  w_p2_grad_xx_stencil_1_2,
  w_p2_grad_xx_stencil_2_0,
  w_p2_grad_xx_stencil_2_1,
  w_p2_grad_xx_stencil_2_2,
//Outputs
  out_w_p2_grad_gx_stencil_0_0,

  clk
);

//Inputs
input  w_p2_grad_xx_stencil_0_2;
input  w_p2_grad_xx_stencil_0_1;
input  w_p2_grad_xx_stencil_0_0;
input  w_p2_grad_xx_stencil_2_1;
input  w_p2_grad_xx_stencil_2_0;
input  w_p2_grad_xx_stencil_2_2;
input  w_p2_grad_xx_stencil_1_2;
input  w_p2_grad_xx_stencil_1_0;
input  w_p2_grad_xx_stencil_1_1;
//Outputs
output  out_w_p2_grad_gx_stencil_0_0;

input  clk;


wire  r0_w_p2_grad_gx_stencil_0_0;
wire  r1_w_p2_grad_gx_stencil_0_0;
wire  r2_w_p2_grad_gx_stencil_0_0;
wire  r3_w_p2_grad_gx_stencil_0_0;
wire  r4_w_p2_grad_gx_stencil_0_0;
wire  r5_w_p2_grad_gx_stencil_0_0;
wire  r6_w_p2_grad_gx_stencil_0_0;
wire  r7_w_p2_grad_gx_stencil_0_0;
wire  r8_w_p2_grad_gx_stencil_0_0;
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
wire  w_p2_grad_gx_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_gx_stencil_0_0=r8_w_p2_grad_gx_stencil_0_0;
assign  r0_w_p2_grad_gx_stencil_0_0  =  w_328 ;
assign  r1_w_p2_grad_gx_stencil_0_0  =  w_331 ;
assign  r2_w_p2_grad_gx_stencil_0_0  =  w_334 ;
assign  r3_w_p2_grad_gx_stencil_0_0  =  w_337 ;
assign  r4_w_p2_grad_gx_stencil_0_0  =  w_340 ;
assign  r5_w_p2_grad_gx_stencil_0_0  =  w_343 ;
assign  r6_w_p2_grad_gx_stencil_0_0  =  w_346 ;
assign  r7_w_p2_grad_gx_stencil_0_0  =  w_349 ;
assign  r8_w_p2_grad_gx_stencil_0_0  =  w_352 ;
assign  w_326  = 1'b0;
assign  w_327  =  w_p2_grad_xx_stencil_0_0 ;
ADD_16b_pe add_0 (
  .a(w_326),
  .b(w_327),
  .c(w_328),
  .clk(clk)
);
assign  w_329  =  r0_w_p2_grad_gx_stencil_0_0 ;
assign  w_330  =  w_p2_grad_xx_stencil_1_0 ;
ADD_16b_pe add_1 (
  .a(w_330),
  .b(w_329),
  .c(w_331),
  .clk(clk)
);
assign  w_332  =  r1_w_p2_grad_gx_stencil_0_0 ;
assign  w_333  =  w_p2_grad_xx_stencil_2_0 ;
ADD_16b_pe add_2 (
  .a(w_333),
  .b(w_332),
  .c(w_334),
  .clk(clk)
);
assign  w_335  =  r2_w_p2_grad_gx_stencil_0_0 ;
assign  w_336  =  w_p2_grad_xx_stencil_0_1 ;
ADD_16b_pe add_3 (
  .a(w_335),
  .b(w_336),
  .c(w_337),
  .clk(clk)
);
assign  w_338  =  r3_w_p2_grad_gx_stencil_0_0 ;
assign  w_339  =  w_p2_grad_xx_stencil_1_1 ;
ADD_16b_pe add_4 (
  .a(w_339),
  .b(w_338),
  .c(w_340),
  .clk(clk)
);
assign  w_341  =  r4_w_p2_grad_gx_stencil_0_0 ;
assign  w_342  =  w_p2_grad_xx_stencil_2_1 ;
ADD_16b_pe add_5 (
  .a(w_341),
  .b(w_342),
  .c(w_343),
  .clk(clk)
);
assign  w_344  =  r5_w_p2_grad_gx_stencil_0_0 ;
assign  w_345  =  w_p2_grad_xx_stencil_0_2 ;
ADD_16b_pe add_6 (
  .a(w_344),
  .b(w_345),
  .c(w_346),
  .clk(clk)
);
assign  w_347  =  r6_w_p2_grad_gx_stencil_0_0 ;
assign  w_348  =  w_p2_grad_xx_stencil_1_2 ;
ADD_16b_pe add_7 (
  .a(w_347),
  .b(w_348),
  .c(w_349),
  .clk(clk)
);
assign  w_350  =  r7_w_p2_grad_gx_stencil_0_0 ;
assign  w_351  =  w_p2_grad_xx_stencil_2_2 ;
ADD_16b_pe add_8 (
  .a(w_351),
  .b(w_350),
  .c(w_352),
  .clk(clk)
);
assign  w_p2_grad_gx_stencil_0_0  = 1'b0;

endmodule







module kernel__p2_corners_stencil_stream(
//Inputs
  w_p2_cim_stencil_0_0,
  w_p2_cim_stencil_0_1,
  w_p2_cim_stencil_0_2,
  w_p2_cim_stencil_1_0,
  w_p2_cim_stencil_1_1,
  w_p2_cim_stencil_1_2,
  w_p2_cim_stencil_2_0,
  w_p2_cim_stencil_2_1,
  w_p2_cim_stencil_2_2,
//Outputs
  out_w_p2_corners_stencil_0_0,

  clk
);

//Inputs
input  w_p2_cim_stencil_2_2;
input  w_p2_cim_stencil_2_1;
input  w_p2_cim_stencil_2_0;
input  w_p2_cim_stencil_1_0;
input  w_p2_cim_stencil_1_1;
input  w_p2_cim_stencil_1_2;
input  w_p2_cim_stencil_0_1;
input  w_p2_cim_stencil_0_0;
input  w_p2_cim_stencil_0_2;
//Outputs
output  out_w_p2_corners_stencil_0_0;

input  clk;


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
wire  w_p2_corners_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_corners_stencil_0_0=w_p2_corners_stencil_0_0;
assign  w_549  =  w_p2_cim_stencil_1_1 ;
assign  w_550  =  w_p2_cim_stencil_0_0 ;
assign  w_551  =  w_p2_cim_stencil_1_0 ;
MAX_16b_pe max_0 (
  .a(w_551),
  .b(w_550),
  .c(w_552),
  .clk(clk)
);
assign  w_553  =  w_p2_cim_stencil_2_0 ;
MAX_16b_pe max_1 (
  .a(w_553),
  .b(w_552),
  .c(w_554),
  .clk(clk)
);
assign  w_555  =  w_p2_cim_stencil_0_1 ;
MAX_16b_pe max_2 (
  .a(w_555),
  .b(w_554),
  .c(w_556),
  .clk(clk)
);
assign  w_557  =  w_p2_cim_stencil_2_1 ;
MAX_16b_pe max_3 (
  .a(w_557),
  .b(w_556),
  .c(w_558),
  .clk(clk)
);
assign  w_559  =  w_p2_cim_stencil_0_2 ;
MAX_16b_pe max_4 (
  .a(w_559),
  .b(w_558),
  .c(w_560),
  .clk(clk)
);
assign  w_561  =  w_p2_cim_stencil_1_2 ;
MAX_16b_pe max_5 (
  .a(w_560),
  .b(w_561),
  .c(w_562),
  .clk(clk)
);
assign  w_563  =  w_p2_cim_stencil_2_2 ;
MAX_16b_pe max_6 (
  .a(w_562),
  .b(w_563),
  .c(w_564),
  .clk(clk)
);
LT_16b_pe lt_7 (
  .a(w_549),
  .b(w_564),
  .c(w_565),
  .clk(clk)
);
LTE_16b_pe lte_8 (
  .a(1'b0),
  .b(w_549),
  .c(w_566),
  .clk(clk)
);
AND_16b_pe and_9 (
  .a(w_565),
  .b(w_566),
  .c(w_567),
  .clk(clk)
);
assign  w_p2_corners_stencil_0_0  =  w_567 ;

endmodule







module kernel__downsample_1_stencil_update_stream(
//Inputs
  w_padded_1_stencil_0_0,
  w_padded_1_stencil_0_1,
  w_padded_1_stencil_0_2,
  w_padded_1_stencil_1_0,
  w_padded_1_stencil_1_1,
  w_padded_1_stencil_1_2,
  w_padded_1_stencil_1_3,
  w_padded_1_stencil_2_0,
  w_padded_1_stencil_2_1,
  w_padded_1_stencil_2_2,
  w_padded_1_stencil_2_3,
  w_padded_1_stencil_3_1,
  w_padded_1_stencil_3_2,
  w_padded_1_stencil_3_3,
//Outputs
  out_w_downsample_1_stencil_0_0_0,
  out_w_downsample_1_stencil_1_0_0,
  out_w_downsample_1_stencil_2_0_0,

  clk
);

//Inputs
input  w_padded_1_stencil_3_1;
input  w_padded_1_stencil_3_2;
input  w_padded_1_stencil_3_3;
input  w_padded_1_stencil_2_1;
input  w_padded_1_stencil_2_0;
input  w_padded_1_stencil_2_3;
input  w_padded_1_stencil_2_2;
input  w_padded_1_stencil_1_2;
input  w_padded_1_stencil_1_3;
input  w_padded_1_stencil_1_0;
input  w_padded_1_stencil_1_1;
input  w_padded_1_stencil_0_2;
input  w_padded_1_stencil_0_1;
input  w_padded_1_stencil_0_0;
//Outputs
output  out_w_downsample_1_stencil_0_0_0;
output  out_w_downsample_1_stencil_1_0_0;
output  out_w_downsample_1_stencil_2_0_0;

input  clk;


wire  w_128;
wire  w_129;
wire  w_130;
wire  w_131;
wire  w_132;
wire  w_133;
wire  w_134;
wire  w_135;
wire  w_136;
wire  w_137;
wire  w_138;
wire  w_139;
wire  w_140;
wire  w_141;
wire  w_142;
wire  w_143;
wire  w_144;
wire  w_145;
wire  w_146;
wire  w_147;
wire  w_148;
wire  w_149;
wire  w_150;
wire  w_151;
wire  w_152;
wire  w_153;
wire  w_154;
wire  w_155;
wire  w_156;
wire  w_157;
wire  w_158;
wire  w_159;
wire  w_160;
wire  w_161;
wire  w_162;
wire  w_163;
wire  w_164;
wire  w_165;
wire  w_166;
wire  w_167;
wire  w_168;
wire  w_169;
wire  w_170;
wire  w_171;
wire  w_172;
wire  w_173;
wire  w_174;
wire  w_175;
wire  w_176;
wire  w_177;
wire  w_178;
wire  w_179;
wire  w_180;
wire  w_181;
wire  w_182;
wire  w_183;
wire  w_184;
wire  w_185;
wire  w_186;
wire  w_187;
wire  w_188;
wire  w_189;
wire  w_190;
wire  w_191;
wire  w_192;
wire  w_193;
wire  w_194;
wire  w_195;
wire  w_196;
wire  w_197;
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
wire  w_downsample_1_stencil_0_0_0;
wire  w_downsample_1_stencil_1_0_0;
wire  w_downsample_1_stencil_2_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_downsample_1_stencil_0_0_0=w_downsample_1_stencil_0_0_0;
assign out_w_downsample_1_stencil_1_0_0=w_downsample_1_stencil_1_0_0;
assign out_w_downsample_1_stencil_2_0_0=w_downsample_1_stencil_2_0_0;
assign  w_128  =  w_padded_1_stencil_1_1 ;
assign  w_129  =  w_128 ;
assign  w_130  =  w_padded_1_stencil_3_1 ;
assign  w_131  =  w_130 ;
ADD_16b_pe add_0 (
  .a(w_129),
  .b(w_131),
  .c(w_132),
  .clk(clk)
);
assign  w_133  =  w_padded_1_stencil_1_3 ;
LSHIFT_16b_pe lshift_1 (
  .a(1'b0),
  .b(w_132),
  .c(w_134),
  .clk(clk)
);
assign  w_135  =  w_134 ;
assign  w_136  =  w_135 ;
ADD_16b_pe add_2 (
  .a(w_129),
  .b(w_136),
  .c(w_137),
  .clk(clk)
);
LSHIFT_16b_pe lshift_3 (
  .a(w_137),
  .b(1'b0),
  .c(w_138),
  .clk(clk)
);
assign  w_139  =  w_138 ;
assign  w_140  =  w_139 ;
assign  w_141  =  w_133 ;
ADD_16b_pe add_4 (
  .a(w_129),
  .b(w_141),
  .c(w_142),
  .clk(clk)
);
LSHIFT_16b_pe lshift_5 (
  .a(1'b0),
  .b(w_142),
  .c(w_143),
  .clk(clk)
);
assign  w_144  =  w_143 ;
assign  w_145  =  w_144 ;
ADD_16b_pe add_6 (
  .a(w_132),
  .b(w_141),
  .c(w_146),
  .clk(clk)
);
assign  w_147  =  w_padded_1_stencil_3_3 ;
assign  w_148  =  w_147 ;
ADD_16b_pe add_7 (
  .a(w_146),
  .b(w_148),
  .c(w_149),
  .clk(clk)
);
LSHIFT_16b_pe lshift_8 (
  .a(1'b0),
  .b(w_149),
  .c(w_150),
  .clk(clk)
);
assign  w_151  =  w_150 ;
assign  w_152  =  w_151 ;
ADD_16b_pe add_9 (
  .a(w_145),
  .b(w_152),
  .c(w_153),
  .clk(clk)
);
LSHIFT_16b_pe lshift_10 (
  .a(1'b0),
  .b(w_153),
  .c(w_154),
  .clk(clk)
);
assign  w_155  =  w_154 ;
assign  w_156  =  w_155 ;
ADD_16b_pe add_11 (
  .a(w_156),
  .b(w_140),
  .c(w_157),
  .clk(clk)
);
LSHIFT_16b_pe lshift_12 (
  .a(1'b0),
  .b(w_157),
  .c(w_158),
  .clk(clk)
);
assign  w_159  =  w_158 ;
assign  w_160  =  w_padded_1_stencil_2_1 ;
assign  w_161  =  w_padded_1_stencil_1_2 ;
assign  w_162  =  w_padded_1_stencil_0_1 ;
assign  w_163  =  w_162 ;
assign  w_164  =  w_160 ;
ADD_16b_pe add_13 (
  .a(w_164),
  .b(w_163),
  .c(w_165),
  .clk(clk)
);
assign  w_166  =  w_padded_1_stencil_1_0 ;
assign  w_167  =  w_166 ;
ADD_16b_pe add_14 (
  .a(w_165),
  .b(w_167),
  .c(w_168),
  .clk(clk)
);
assign  w_169  =  w_161 ;
ADD_16b_pe add_15 (
  .a(w_168),
  .b(w_169),
  .c(w_170),
  .clk(clk)
);
LSHIFT_16b_pe lshift_16 (
  .a(1'b0),
  .b(w_170),
  .c(w_171),
  .clk(clk)
);
assign  w_172  =  w_171 ;
assign  w_173  =  w_172 ;
ADD_16b_pe add_17 (
  .a(w_173),
  .b(w_164),
  .c(w_174),
  .clk(clk)
);
LSHIFT_16b_pe lshift_18 (
  .a(1'b0),
  .b(w_174),
  .c(w_175),
  .clk(clk)
);
assign  w_176  =  w_175 ;
assign  w_177  =  w_176 ;
assign  w_178  =  w_padded_1_stencil_3_2 ;
assign  w_179  =  w_178 ;
ADD_16b_pe add_19 (
  .a(w_179),
  .b(w_169),
  .c(w_180),
  .clk(clk)
);
ADD_16b_pe add_20 (
  .a(w_164),
  .b(w_180),
  .c(w_181),
  .clk(clk)
);
assign  w_182  =  w_padded_1_stencil_2_3 ;
assign  w_183  =  w_182 ;
ADD_16b_pe add_21 (
  .a(w_183),
  .b(w_181),
  .c(w_184),
  .clk(clk)
);
LSHIFT_16b_pe lshift_22 (
  .a(1'b0),
  .b(w_184),
  .c(w_185),
  .clk(clk)
);
assign  w_186  =  w_185 ;
assign  w_187  =  w_186 ;
ADD_16b_pe add_23 (
  .a(w_169),
  .b(w_187),
  .c(w_188),
  .clk(clk)
);
LSHIFT_16b_pe lshift_24 (
  .a(1'b0),
  .b(w_188),
  .c(w_189),
  .clk(clk)
);
assign  w_190  =  w_189 ;
assign  w_191  =  w_190 ;
ADD_16b_pe add_25 (
  .a(w_191),
  .b(w_177),
  .c(w_192),
  .clk(clk)
);
LSHIFT_16b_pe lshift_26 (
  .a(1'b0),
  .b(w_192),
  .c(w_193),
  .clk(clk)
);
assign  w_194  =  w_193 ;
assign  w_195  =  w_padded_1_stencil_0_2 ;
assign  w_196  =  w_padded_1_stencil_2_2 ;
assign  w_197  =  w_padded_1_stencil_2_0 ;
assign  w_198  =  w_padded_1_stencil_0_0 ;
assign  w_199  =  w_198 ;
assign  w_200  =  w_197 ;
ADD_16b_pe add_27 (
  .a(w_199),
  .b(w_200),
  .c(w_201),
  .clk(clk)
);
assign  w_202  =  w_195 ;
ADD_16b_pe add_28 (
  .a(w_201),
  .b(w_202),
  .c(w_203),
  .clk(clk)
);
assign  w_204  =  w_196 ;
ADD_16b_pe add_29 (
  .a(w_203),
  .b(w_204),
  .c(w_205),
  .clk(clk)
);
LSHIFT_16b_pe lshift_30 (
  .a(1'b0),
  .b(w_205),
  .c(w_206),
  .clk(clk)
);
assign  w_207  =  w_206 ;
assign  w_208  =  w_207 ;
ADD_16b_pe add_31 (
  .a(w_200),
  .b(w_204),
  .c(w_209),
  .clk(clk)
);
LSHIFT_16b_pe lshift_32 (
  .a(w_209),
  .b(1'b0),
  .c(w_210),
  .clk(clk)
);
assign  w_211  =  w_210 ;
assign  w_212  =  w_211 ;
ADD_16b_pe add_33 (
  .a(w_212),
  .b(w_208),
  .c(w_213),
  .clk(clk)
);
LSHIFT_16b_pe lshift_34 (
  .a(1'b0),
  .b(w_213),
  .c(w_214),
  .clk(clk)
);
assign  w_215  =  w_214 ;
assign  w_216  =  w_215 ;
ADD_16b_pe add_35 (
  .a(w_202),
  .b(w_204),
  .c(w_217),
  .clk(clk)
);
LSHIFT_16b_pe lshift_36 (
  .a(1'b0),
  .b(w_217),
  .c(w_218),
  .clk(clk)
);
assign  w_219  =  w_218 ;
assign  w_220  =  w_219 ;
ADD_16b_pe add_37 (
  .a(w_204),
  .b(w_220),
  .c(w_221),
  .clk(clk)
);
LSHIFT_16b_pe lshift_38 (
  .a(1'b0),
  .b(w_221),
  .c(w_222),
  .clk(clk)
);
assign  w_223  =  w_222 ;
assign  w_224  =  w_223 ;
ADD_16b_pe add_39 (
  .a(w_224),
  .b(w_216),
  .c(w_225),
  .clk(clk)
);
LSHIFT_16b_pe lshift_40 (
  .a(1'b0),
  .b(w_225),
  .c(w_226),
  .clk(clk)
);
assign  w_227  =  w_226 ;
assign  w_downsample_1_stencil_0_0_0  =  w_159 ;
assign  w_downsample_1_stencil_1_0_0  =  w_194 ;
assign  w_downsample_1_stencil_2_0_0  =  w_227 ;

endmodule







module kernel__p2_grad_x_stencil_stream(
//Inputs
  w_downsample_1_stencil_0_0_0,
  w_downsample_1_stencil_0_0_1,
  w_downsample_1_stencil_0_0_2,
  w_downsample_1_stencil_0_2_0,
  w_downsample_1_stencil_0_2_1,
  w_downsample_1_stencil_0_2_2,
  w_downsample_1_stencil_1_0_0,
  w_downsample_1_stencil_1_0_1,
  w_downsample_1_stencil_1_0_2,
  w_downsample_1_stencil_1_2_0,
  w_downsample_1_stencil_1_2_1,
  w_downsample_1_stencil_1_2_2,
  w_downsample_1_stencil_2_0_0,
  w_downsample_1_stencil_2_0_1,
  w_downsample_1_stencil_2_0_2,
  w_downsample_1_stencil_2_2_0,
  w_downsample_1_stencil_2_2_1,
  w_downsample_1_stencil_2_2_2,
//Outputs
  out_w_p2_grad_x_stencil_0_0,

  clk
);

//Inputs
input  w_downsample_1_stencil_0_0_0;
input  w_downsample_1_stencil_0_0_1;
input  w_downsample_1_stencil_0_0_2;
input  w_downsample_1_stencil_2_0_1;
input  w_downsample_1_stencil_1_2_2;
input  w_downsample_1_stencil_1_2_1;
input  w_downsample_1_stencil_1_2_0;
input  w_downsample_1_stencil_2_0_2;
input  w_downsample_1_stencil_2_2_0;
input  w_downsample_1_stencil_2_2_1;
input  w_downsample_1_stencil_2_2_2;
input  w_downsample_1_stencil_1_0_1;
input  w_downsample_1_stencil_1_0_0;
input  w_downsample_1_stencil_1_0_2;
input  w_downsample_1_stencil_0_2_2;
input  w_downsample_1_stencil_2_0_0;
input  w_downsample_1_stencil_0_2_0;
input  w_downsample_1_stencil_0_2_1;
//Outputs
output  out_w_p2_grad_x_stencil_0_0;

input  clk;


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
wire  w_p2_grad_x_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_x_stencil_0_0=w_p2_grad_x_stencil_0_0;
assign  w_228  =  w_downsample_1_stencil_0_2_0 ;
assign  w_229  =  w_228 ;
assign  w_230  = 1'b0;
MULT_16b_pe mult_0 (
  .a(w_230),
  .b(w_229),
  .c(w_231),
  .clk(clk)
);
assign  w_232  =  w_downsample_1_stencil_1_2_0 ;
assign  w_233  =  w_232 ;
assign  w_234  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_233),
  .b(w_234),
  .c(w_235),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_231),
  .b(w_235),
  .c(w_236),
  .clk(clk)
);
assign  w_237  =  w_downsample_1_stencil_2_2_0 ;
assign  w_238  =  w_237 ;
assign  w_239  = 1'b0;
MULT_16b_pe mult_3 (
  .a(w_238),
  .b(w_239),
  .c(w_240),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_240),
  .b(w_236),
  .c(w_241),
  .clk(clk)
);
LSHIFT_16b_pe lshift_5 (
  .a(1'b0),
  .b(w_241),
  .c(w_242),
  .clk(clk)
);
assign  w_243  =  w_242 ;
assign  w_244  =  w_243 ;
assign  w_245  =  w_downsample_1_stencil_0_0_0 ;
assign  w_246  =  w_245 ;
MULT_16b_pe mult_6 (
  .a(w_230),
  .b(w_246),
  .c(w_247),
  .clk(clk)
);
assign  w_248  =  w_downsample_1_stencil_1_0_0 ;
assign  w_249  =  w_248 ;
MULT_16b_pe mult_7 (
  .a(w_234),
  .b(w_249),
  .c(w_250),
  .clk(clk)
);
ADD_16b_pe add_8 (
  .a(w_247),
  .b(w_250),
  .c(w_251),
  .clk(clk)
);
assign  w_252  =  w_downsample_1_stencil_2_0_0 ;
assign  w_253  =  w_252 ;
MULT_16b_pe mult_9 (
  .a(w_239),
  .b(w_253),
  .c(w_254),
  .clk(clk)
);
ADD_16b_pe add_10 (
  .a(w_254),
  .b(w_251),
  .c(w_255),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(1'b0),
  .b(w_255),
  .c(w_256),
  .clk(clk)
);
assign  w_257  =  w_256 ;
assign  w_258  =  w_257 ;
SUB_16b_pe sub_12 (
  .a(w_244),
  .b(w_258),
  .c(w_259),
  .clk(clk)
);
assign  w_260  =  w_downsample_1_stencil_0_0_1 ;
assign  w_261  =  w_260 ;
MULT_16b_pe mult_13 (
  .a(w_230),
  .b(w_261),
  .c(w_262),
  .clk(clk)
);
assign  w_263  =  w_downsample_1_stencil_1_0_1 ;
assign  w_264  =  w_263 ;
MULT_16b_pe mult_14 (
  .a(w_234),
  .b(w_264),
  .c(w_265),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_262),
  .b(w_265),
  .c(w_266),
  .clk(clk)
);
assign  w_267  =  w_downsample_1_stencil_2_0_1 ;
assign  w_268  =  w_267 ;
MULT_16b_pe mult_16 (
  .a(w_239),
  .b(w_268),
  .c(w_269),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_269),
  .b(w_266),
  .c(w_270),
  .clk(clk)
);
LSHIFT_16b_pe lshift_18 (
  .a(1'b0),
  .b(w_270),
  .c(w_271),
  .clk(clk)
);
assign  w_272  =  w_271 ;
assign  w_273  =  w_272 ;
assign  w_274  = 1'b0;
MULT_16b_pe mult_19 (
  .a(w_274),
  .b(w_273),
  .c(w_275),
  .clk(clk)
);
SUB_16b_pe sub_20 (
  .a(w_275),
  .b(w_259),
  .c(w_276),
  .clk(clk)
);
assign  w_277  =  w_downsample_1_stencil_0_2_1 ;
assign  w_278  =  w_277 ;
MULT_16b_pe mult_21 (
  .a(w_230),
  .b(w_278),
  .c(w_279),
  .clk(clk)
);
assign  w_280  =  w_downsample_1_stencil_1_2_1 ;
assign  w_281  =  w_280 ;
MULT_16b_pe mult_22 (
  .a(w_281),
  .b(w_234),
  .c(w_282),
  .clk(clk)
);
ADD_16b_pe add_23 (
  .a(w_282),
  .b(w_279),
  .c(w_283),
  .clk(clk)
);
assign  w_284  =  w_downsample_1_stencil_2_2_1 ;
assign  w_285  =  w_284 ;
MULT_16b_pe mult_24 (
  .a(w_239),
  .b(w_285),
  .c(w_286),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_283),
  .b(w_286),
  .c(w_287),
  .clk(clk)
);
LSHIFT_16b_pe lshift_26 (
  .a(1'b0),
  .b(w_287),
  .c(w_288),
  .clk(clk)
);
assign  w_289  =  w_288 ;
assign  w_290  =  w_289 ;
MULT_16b_pe mult_27 (
  .a(w_274),
  .b(w_290),
  .c(w_291),
  .clk(clk)
);
ADD_16b_pe add_28 (
  .a(w_276),
  .b(w_291),
  .c(w_292),
  .clk(clk)
);
assign  w_293  =  w_downsample_1_stencil_0_0_2 ;
assign  w_294  =  w_293 ;
MULT_16b_pe mult_29 (
  .a(w_230),
  .b(w_294),
  .c(w_295),
  .clk(clk)
);
assign  w_296  =  w_downsample_1_stencil_1_0_2 ;
assign  w_297  =  w_296 ;
MULT_16b_pe mult_30 (
  .a(w_234),
  .b(w_297),
  .c(w_298),
  .clk(clk)
);
ADD_16b_pe add_31 (
  .a(w_298),
  .b(w_295),
  .c(w_299),
  .clk(clk)
);
assign  w_300  =  w_downsample_1_stencil_2_0_2 ;
assign  w_301  =  w_300 ;
MULT_16b_pe mult_32 (
  .a(w_301),
  .b(w_239),
  .c(w_302),
  .clk(clk)
);
ADD_16b_pe add_33 (
  .a(w_302),
  .b(w_299),
  .c(w_303),
  .clk(clk)
);
LSHIFT_16b_pe lshift_34 (
  .a(1'b0),
  .b(w_303),
  .c(w_304),
  .clk(clk)
);
assign  w_305  =  w_304 ;
assign  w_306  =  w_305 ;
SUB_16b_pe sub_35 (
  .a(w_292),
  .b(w_306),
  .c(w_307),
  .clk(clk)
);
assign  w_308  =  w_downsample_1_stencil_0_2_2 ;
assign  w_309  =  w_308 ;
MULT_16b_pe mult_36 (
  .a(w_230),
  .b(w_309),
  .c(w_310),
  .clk(clk)
);
assign  w_311  =  w_downsample_1_stencil_1_2_2 ;
assign  w_312  =  w_311 ;
MULT_16b_pe mult_37 (
  .a(w_234),
  .b(w_312),
  .c(w_313),
  .clk(clk)
);
ADD_16b_pe add_38 (
  .a(w_313),
  .b(w_310),
  .c(w_314),
  .clk(clk)
);
assign  w_315  =  w_downsample_1_stencil_2_2_2 ;
assign  w_316  =  w_315 ;
MULT_16b_pe mult_39 (
  .a(w_316),
  .b(w_239),
  .c(w_317),
  .clk(clk)
);
ADD_16b_pe add_40 (
  .a(w_317),
  .b(w_314),
  .c(w_318),
  .clk(clk)
);
LSHIFT_16b_pe lshift_41 (
  .a(1'b0),
  .b(w_318),
  .c(w_319),
  .clk(clk)
);
assign  w_320  =  w_319 ;
assign  w_321  =  w_320 ;
ADD_16b_pe add_42 (
  .a(w_321),
  .b(w_307),
  .c(w_322),
  .clk(clk)
);
assign  w_p2_grad_x_stencil_0_0  =  w_322 ;

endmodule







module kernel__p2_grad_xy_stencil_update_stream(
//Inputs
  w_p2_grad_x_stencil_0_0,
  w_p2_grad_y_stencil_0_0,
//Outputs
  out_w_p2_grad_xy_stencil_0_0,

  clk
);

//Inputs
input  w_p2_grad_x_stencil_0_0;
input  w_p2_grad_y_stencil_0_0;
//Outputs
output  out_w_p2_grad_xy_stencil_0_0;

input  clk;


wire  w_448;
wire  w_449;
wire  w_450;
wire  w_451;
wire  w_452;
wire  w_p2_grad_xy_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_xy_stencil_0_0=w_p2_grad_xy_stencil_0_0;
assign  w_448  =  w_p2_grad_x_stencil_0_0 ;
assign  w_449  =  w_448 ;
assign  w_450  =  w_p2_grad_y_stencil_0_0 ;
assign  w_451  =  w_450 ;
MULT_16b_pe mult_0 (
  .a(w_449),
  .b(w_451),
  .c(w_452),
  .clk(clk)
);
assign  w_p2_grad_xy_stencil_0_0  =  w_452 ;

endmodule







module kernel__hw_output_1_stencil_stream(
//Inputs
  w_downsample_1_stencil_0_2_2,
  w_downsample_1_stencil_1_2_2,
  w_downsample_1_stencil_2_2_2,
  w_p2_corners_stencil_0_0,
//Outputs
  out_w_hw_output_1_stencil_1_0_0,
  out_w_hw_output_1_stencil_2_0_0,
  out_w_hw_output_1_stencil_packed,

  clk
);

//Inputs
input  w_p2_corners_stencil_0_0;
input  w_downsample_1_stencil_0_2_2;
input  w_downsample_1_stencil_1_2_2;
input  w_downsample_1_stencil_2_2_2;
//Outputs
output  out_w_hw_output_1_stencil_1_0_0;
output  out_w_hw_output_1_stencil_2_0_0;
output  out_w_hw_output_1_stencil_packed;

input  clk;


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
assign  w_568  = 1'b0;
assign  w_569  =  w_downsample_1_stencil_0_2_2 ;
assign  w_570  =  w_p2_corners_stencil_0_0 ;
MUX_16b_pe mux_0 (
  .a(w_568),
  .b(w_569),
  .s(w_570),
  .c(w_571),
  .clk(clk)
);
assign  w_572  = 1'b0;
assign  w_573  =  w_downsample_1_stencil_1_2_2 ;
assign  w_574  =  w_p2_corners_stencil_0_0 ;
MUX_16b_pe mux_1 (
  .a(w_574),
  .b(w_573),
  .s(w_572),
  .c(w_575),
  .clk(clk)
);
assign  w_576  = 1'b0;
assign  w_577  =  w_downsample_1_stencil_2_2_2 ;
assign  w_578  =  w_p2_corners_stencil_0_0 ;
MUX_16b_pe mux_2 (
  .a(w_577),
  .b(w_576),
  .s(w_578),
  .c(w_579),
  .clk(clk)
);
assign  w_hw_output_1_stencil_0_0_0  =  w_571 ;
assign  w_hw_output_1_stencil_1_0_0  =  w_575 ;
assign  w_hw_output_1_stencil_2_0_0  =  w_579 ;
assign  w_hw_output_1_stencil_packed  =  w_hw_output_1_stencil_0_0_0 ;

endmodule







module kernel__p2_grad_gy_stencil_stream(
//Inputs
  w_p2_grad_yy_stencil_0_0,
  w_p2_grad_yy_stencil_0_1,
  w_p2_grad_yy_stencil_0_2,
  w_p2_grad_yy_stencil_1_0,
  w_p2_grad_yy_stencil_1_1,
  w_p2_grad_yy_stencil_1_2,
  w_p2_grad_yy_stencil_2_0,
  w_p2_grad_yy_stencil_2_1,
  w_p2_grad_yy_stencil_2_2,
//Outputs
  out_w_p2_grad_gy_stencil_0_0,

  clk
);

//Inputs
input  w_p2_grad_yy_stencil_2_2;
input  w_p2_grad_yy_stencil_2_1;
input  w_p2_grad_yy_stencil_2_0;
input  w_p2_grad_yy_stencil_0_1;
input  w_p2_grad_yy_stencil_0_0;
input  w_p2_grad_yy_stencil_0_2;
input  w_p2_grad_yy_stencil_1_0;
input  w_p2_grad_yy_stencil_1_1;
input  w_p2_grad_yy_stencil_1_2;
//Outputs
output  out_w_p2_grad_gy_stencil_0_0;

input  clk;


wire  r0_w_p2_grad_gy_stencil_0_0;
wire  r1_w_p2_grad_gy_stencil_0_0;
wire  r2_w_p2_grad_gy_stencil_0_0;
wire  r3_w_p2_grad_gy_stencil_0_0;
wire  r4_w_p2_grad_gy_stencil_0_0;
wire  r5_w_p2_grad_gy_stencil_0_0;
wire  r6_w_p2_grad_gy_stencil_0_0;
wire  r7_w_p2_grad_gy_stencil_0_0;
wire  r8_w_p2_grad_gy_stencil_0_0;
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
wire  w_p2_grad_gy_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_gy_stencil_0_0=r8_w_p2_grad_gy_stencil_0_0;
assign  r0_w_p2_grad_gy_stencil_0_0  =  w_485 ;
assign  r1_w_p2_grad_gy_stencil_0_0  =  w_488 ;
assign  r2_w_p2_grad_gy_stencil_0_0  =  w_491 ;
assign  r3_w_p2_grad_gy_stencil_0_0  =  w_494 ;
assign  r4_w_p2_grad_gy_stencil_0_0  =  w_497 ;
assign  r5_w_p2_grad_gy_stencil_0_0  =  w_500 ;
assign  r6_w_p2_grad_gy_stencil_0_0  =  w_503 ;
assign  r7_w_p2_grad_gy_stencil_0_0  =  w_506 ;
assign  r8_w_p2_grad_gy_stencil_0_0  =  w_509 ;
assign  w_483  = 1'b0;
assign  w_484  =  w_p2_grad_yy_stencil_0_0 ;
ADD_16b_pe add_0 (
  .a(w_484),
  .b(w_483),
  .c(w_485),
  .clk(clk)
);
assign  w_486  =  r0_w_p2_grad_gy_stencil_0_0 ;
assign  w_487  =  w_p2_grad_yy_stencil_1_0 ;
ADD_16b_pe add_1 (
  .a(w_487),
  .b(w_486),
  .c(w_488),
  .clk(clk)
);
assign  w_489  =  r1_w_p2_grad_gy_stencil_0_0 ;
assign  w_490  =  w_p2_grad_yy_stencil_2_0 ;
ADD_16b_pe add_2 (
  .a(w_490),
  .b(w_489),
  .c(w_491),
  .clk(clk)
);
assign  w_492  =  r2_w_p2_grad_gy_stencil_0_0 ;
assign  w_493  =  w_p2_grad_yy_stencil_0_1 ;
ADD_16b_pe add_3 (
  .a(w_492),
  .b(w_493),
  .c(w_494),
  .clk(clk)
);
assign  w_495  =  r3_w_p2_grad_gy_stencil_0_0 ;
assign  w_496  =  w_p2_grad_yy_stencil_1_1 ;
ADD_16b_pe add_4 (
  .a(w_495),
  .b(w_496),
  .c(w_497),
  .clk(clk)
);
assign  w_498  =  r4_w_p2_grad_gy_stencil_0_0 ;
assign  w_499  =  w_p2_grad_yy_stencil_2_1 ;
ADD_16b_pe add_5 (
  .a(w_498),
  .b(w_499),
  .c(w_500),
  .clk(clk)
);
assign  w_501  =  r5_w_p2_grad_gy_stencil_0_0 ;
assign  w_502  =  w_p2_grad_yy_stencil_0_2 ;
ADD_16b_pe add_6 (
  .a(w_502),
  .b(w_501),
  .c(w_503),
  .clk(clk)
);
assign  w_504  =  r6_w_p2_grad_gy_stencil_0_0 ;
assign  w_505  =  w_p2_grad_yy_stencil_1_2 ;
ADD_16b_pe add_7 (
  .a(w_504),
  .b(w_505),
  .c(w_506),
  .clk(clk)
);
assign  w_507  =  r7_w_p2_grad_gy_stencil_0_0 ;
assign  w_508  =  w_p2_grad_yy_stencil_2_2 ;
ADD_16b_pe add_8 (
  .a(w_507),
  .b(w_508),
  .c(w_509),
  .clk(clk)
);
assign  w_p2_grad_gy_stencil_0_0  = 1'b0;

endmodule







module kernel__p2_grad_xx_stencil_update_stream(
//Inputs
  w_p2_grad_x_stencil_0_0,
//Outputs
  out_w_p2_grad_xx_stencil_0_0,

  clk
);

//Inputs
input  w_p2_grad_x_stencil_0_0;
//Outputs
output  out_w_p2_grad_xx_stencil_0_0;

input  clk;


wire  w_323;
wire  w_324;
wire  w_325;
wire  w_p2_grad_xx_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_grad_xx_stencil_0_0=w_p2_grad_xx_stencil_0_0;
assign  w_323  =  w_p2_grad_x_stencil_0_0 ;
assign  w_324  =  w_323 ;
MULT_16b_pe mult_0 (
  .a(w_324),
  .b(1'b0),
  .c(w_325),
  .clk(clk)
);
assign  w_p2_grad_xx_stencil_0_0  =  w_325 ;

endmodule







module kernel__p2_cim_stencil_update_stream(
//Inputs
  w_p2_grad_gx_stencil_0_0,
  w_p2_grad_gxy_stencil_0_0,
  w_p2_grad_gy_stencil_0_0,
//Outputs
  out_w_p2_cim_stencil_0_0,

  clk
);

//Inputs
input  w_p2_grad_gxy_stencil_0_0;
input  w_p2_grad_gx_stencil_0_0;
input  w_p2_grad_gy_stencil_0_0;
//Outputs
output  out_w_p2_cim_stencil_0_0;

input  clk;


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
wire  w_p2_cim_stencil_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_cim_stencil_0_0=w_p2_cim_stencil_0_0;
assign  w_510  =  w_p2_grad_gx_stencil_0_0 ;
assign  w_511  =  w_p2_grad_gy_stencil_0_0 ;
assign  w_512  =  w_p2_grad_gxy_stencil_0_0 ;
DIV_16b_pe div_0 (
  .a(1'b0),
  .b(w_510),
  .c(w_513),
  .clk(clk)
);
MULT_16b_pe mult_1 (
  .a(1'b0),
  .b(w_513),
  .c(w_514),
  .clk(clk)
);
SUB_16b_pe sub_2 (
  .a(w_514),
  .b(w_510),
  .c(w_515),
  .clk(clk)
);
LSHIFT_16b_pe lshift_3 (
  .a(w_515),
  .b(1'b0),
  .c(w_516),
  .clk(clk)
);
assign  w_517  = 1'b0;
AND_16b_pe and_4 (
  .a(w_517),
  .b(w_516),
  .c(w_518),
  .clk(clk)
);
SUB_16b_pe sub_5 (
  .a(w_518),
  .b(w_513),
  .c(w_519),
  .clk(clk)
);
assign  w_520  = 1'b0;
AND_16b_pe and_6 (
  .a(w_516),
  .b(w_520),
  .c(w_521),
  .clk(clk)
);
ADD_16b_pe add_7 (
  .a(w_519),
  .b(w_521),
  .c(w_522),
  .clk(clk)
);
assign  w_523  =  w_522 ;
DIV_16b_pe div_8 (
  .a(1'b0),
  .b(w_511),
  .c(w_524),
  .clk(clk)
);
MULT_16b_pe mult_9 (
  .a(w_524),
  .b(1'b0),
  .c(w_525),
  .clk(clk)
);
SUB_16b_pe sub_10 (
  .a(w_525),
  .b(w_511),
  .c(w_526),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(w_526),
  .b(1'b0),
  .c(w_527),
  .clk(clk)
);
AND_16b_pe and_12 (
  .a(w_517),
  .b(w_527),
  .c(w_528),
  .clk(clk)
);
SUB_16b_pe sub_13 (
  .a(w_524),
  .b(w_528),
  .c(w_529),
  .clk(clk)
);
AND_16b_pe and_14 (
  .a(w_527),
  .b(w_520),
  .c(w_530),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_530),
  .b(w_529),
  .c(w_531),
  .clk(clk)
);
assign  w_532  =  w_531 ;
ADD_16b_pe add_16 (
  .a(w_532),
  .b(w_523),
  .c(w_533),
  .clk(clk)
);
MULT_16b_pe mult_17 (
  .a(w_532),
  .b(w_523),
  .c(w_534),
  .clk(clk)
);
DIV_16b_pe div_18 (
  .a(1'b0),
  .b(w_512),
  .c(w_535),
  .clk(clk)
);
MULT_16b_pe mult_19 (
  .a(1'b0),
  .b(w_535),
  .c(w_536),
  .clk(clk)
);
SUB_16b_pe sub_20 (
  .a(w_536),
  .b(w_512),
  .c(w_537),
  .clk(clk)
);
LSHIFT_16b_pe lshift_21 (
  .a(1'b0),
  .b(w_537),
  .c(w_538),
  .clk(clk)
);
AND_16b_pe and_22 (
  .a(w_517),
  .b(w_538),
  .c(w_539),
  .clk(clk)
);
SUB_16b_pe sub_23 (
  .a(w_539),
  .b(w_535),
  .c(w_540),
  .clk(clk)
);
AND_16b_pe and_24 (
  .a(w_538),
  .b(w_520),
  .c(w_541),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_540),
  .b(w_541),
  .c(w_542),
  .clk(clk)
);
assign  w_543  =  w_542 ;
MULT_16b_pe mult_26 (
  .a(w_543),
  .b(1'b0),
  .c(w_544),
  .clk(clk)
);
SUB_16b_pe sub_27 (
  .a(w_544),
  .b(w_534),
  .c(w_545),
  .clk(clk)
);
MULT_16b_pe mult_28 (
  .a(w_533),
  .b(1'b0),
  .c(w_546),
  .clk(clk)
);
MULT_16b_pe mult_29 (
  .a(w_533),
  .b(w_546),
  .c(w_547),
  .clk(clk)
);
SUB_16b_pe sub_30 (
  .a(w_547),
  .b(w_545),
  .c(w_548),
  .clk(clk)
);
assign  w_p2_cim_stencil_0_0  =  w_548 ;

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


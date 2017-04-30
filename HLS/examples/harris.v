module top(
//Inputs
  w_grad_y_1_stencil_stream_to_grad_xy_1_0_0,
  w_grad_y_1_stencil_stream_to_grad_xy_1_1_0,

  w_padded_1_stencil_stream_to_grad_x_1_0_0,
  w_padded_1_stencil_stream_to_grad_x_1_0_1,
  w_padded_1_stencil_stream_to_grad_x_1_0_2,
  w_padded_1_stencil_stream_to_grad_x_1_1_0,
  w_padded_1_stencil_stream_to_grad_x_1_1_1,
  w_padded_1_stencil_stream_to_grad_x_1_1_2,
  w_padded_1_stencil_stream_to_grad_x_1_2_0,
  w_padded_1_stencil_stream_to_grad_x_1_2_1,
  w_padded_1_stencil_stream_to_grad_x_1_2_2,
  w_padded_1_stencil_stream_to_grad_x_1_3_0,
  w_padded_1_stencil_stream_to_grad_x_1_3_1,
  w_padded_1_stencil_stream_to_grad_x_1_3_2,

  w_grad_x_1_stencil_stream_to_grad_xx_1_0_0,
  w_grad_x_1_stencil_stream_to_grad_xx_1_1_0,

  w_padded_1_stencil_update_stream_0_0,
  w_padded_1_stencil_update_stream_1_0,

//Outputs
  w_hw_output_1_stencil_stream_0_0,
  w_hw_output_1_stencil_stream_1_0,

  clk
);

//Inputs
input    w_grad_y_1_stencil_stream_to_grad_xy_1_0_0;
input    w_grad_y_1_stencil_stream_to_grad_xy_1_1_0;

input    w_padded_1_stencil_stream_to_grad_x_1_0_0;
input    w_padded_1_stencil_stream_to_grad_x_1_0_1;
input    w_padded_1_stencil_stream_to_grad_x_1_0_2;
input    w_padded_1_stencil_stream_to_grad_x_1_1_0;
input    w_padded_1_stencil_stream_to_grad_x_1_1_1;
input    w_padded_1_stencil_stream_to_grad_x_1_1_2;
input    w_padded_1_stencil_stream_to_grad_x_1_2_0;
input    w_padded_1_stencil_stream_to_grad_x_1_2_1;
input    w_padded_1_stencil_stream_to_grad_x_1_2_2;
input    w_padded_1_stencil_stream_to_grad_x_1_3_0;
input    w_padded_1_stencil_stream_to_grad_x_1_3_1;
input    w_padded_1_stencil_stream_to_grad_x_1_3_2;

input    w_grad_x_1_stencil_stream_to_grad_xx_1_0_0;
input    w_grad_x_1_stencil_stream_to_grad_xx_1_1_0;

input    w_padded_1_stencil_update_stream_0_0;
input    w_padded_1_stencil_update_stream_1_0;

//Outputs
output   w_hw_output_1_stencil_stream_0_0;
output   w_hw_output_1_stencil_stream_1_0;

input   clk;

wire   w_grad_yy_1_stencil_stream_0_0;
wire   w_grad_yy_1_stencil_stream_0_1;
wire   w_grad_yy_1_stencil_stream_0_2;
wire   w_grad_yy_1_stencil_stream_1_0;
wire   w_grad_yy_1_stencil_stream_1_1;
wire   w_grad_yy_1_stencil_stream_1_2;
wire   w_grad_yy_1_stencil_stream_2_0;
wire   w_grad_yy_1_stencil_stream_2_1;
wire   w_grad_yy_1_stencil_stream_2_2;
wire   w_grad_yy_1_stencil_stream_3_0;
wire   w_grad_yy_1_stencil_stream_3_1;
wire   w_grad_yy_1_stencil_stream_3_2;

wire   w_padded_1_stencil_stream_0_0;
wire   w_padded_1_stencil_stream_0_1;
wire   w_padded_1_stencil_stream_0_2;
wire   w_padded_1_stencil_stream_1_0;
wire   w_padded_1_stencil_stream_1_1;
wire   w_padded_1_stencil_stream_1_2;
wire   w_padded_1_stencil_stream_2_0;
wire   w_padded_1_stencil_stream_2_1;
wire   w_padded_1_stencil_stream_2_2;
wire   w_padded_1_stencil_stream_3_0;
wire   w_padded_1_stencil_stream_3_1;
wire   w_padded_1_stencil_stream_3_2;

wire   w_grad_xy_1_stencil_stream_0_0;
wire   w_grad_xy_1_stencil_stream_0_1;
wire   w_grad_xy_1_stencil_stream_0_2;
wire   w_grad_xy_1_stencil_stream_1_0;
wire   w_grad_xy_1_stencil_stream_1_1;
wire   w_grad_xy_1_stencil_stream_1_2;
wire   w_grad_xy_1_stencil_stream_2_0;
wire   w_grad_xy_1_stencil_stream_2_1;
wire   w_grad_xy_1_stencil_stream_2_2;
wire   w_grad_xy_1_stencil_stream_3_0;
wire   w_grad_xy_1_stencil_stream_3_1;
wire   w_grad_xy_1_stencil_stream_3_2;

wire   w_p2_cim_stencil_stream_0_0;
wire   w_p2_cim_stencil_stream_0_1;
wire   w_p2_cim_stencil_stream_0_2;
wire   w_p2_cim_stencil_stream_1_0;
wire   w_p2_cim_stencil_stream_1_1;
wire   w_p2_cim_stencil_stream_1_2;
wire   w_p2_cim_stencil_stream_2_0;
wire   w_p2_cim_stencil_stream_2_1;
wire   w_p2_cim_stencil_stream_2_2;
wire   w_p2_cim_stencil_stream_3_0;
wire   w_p2_cim_stencil_stream_3_1;
wire   w_p2_cim_stencil_stream_3_2;

wire   w_grad_y_1_stencil_stream_0_0;
wire   w_grad_y_1_stencil_stream_1_0;

wire   w_grad_xx_1_stencil_update_stream_0_0;
wire   w_grad_xx_1_stencil_update_stream_1_0;

wire   w_grad_yy_1_stencil_update_stream_0_0;
wire   w_grad_yy_1_stencil_update_stream_1_0;

wire   w_grad_xy_1_stencil_update_stream_0_0;
wire   w_grad_xy_1_stencil_update_stream_1_0;

wire   w_p2_cim_stencil_update_stream_0_0;
wire   w_p2_cim_stencil_update_stream_1_0;

wire   w_grad_gy_1_stencil_stream_0_0;
wire   w_grad_gy_1_stencil_stream_1_0;

wire   w_grad_xx_1_stencil_stream_0_0;
wire   w_grad_xx_1_stencil_stream_0_1;
wire   w_grad_xx_1_stencil_stream_0_2;
wire   w_grad_xx_1_stencil_stream_1_0;
wire   w_grad_xx_1_stencil_stream_1_1;
wire   w_grad_xx_1_stencil_stream_1_2;
wire   w_grad_xx_1_stencil_stream_2_0;
wire   w_grad_xx_1_stencil_stream_2_1;
wire   w_grad_xx_1_stencil_stream_2_2;
wire   w_grad_xx_1_stencil_stream_3_0;
wire   w_grad_xx_1_stencil_stream_3_1;
wire   w_grad_xx_1_stencil_stream_3_2;

wire   w_grad_x_1_stencil_stream_0_0;
wire   w_grad_x_1_stencil_stream_1_0;

wire   w_grad_gx_1_stencil_stream_0_0;
wire   w_grad_gx_1_stencil_stream_1_0;

wire   w_grad_gxy_1_stencil_stream_0_0;
wire   w_grad_gxy_1_stencil_stream_1_0;

wire   gnd;
assign gnd=1'b0;

LB_3_4_1_32bit_False LB__grad_yy_1_stencil_stream (
    .clk(clk),

    .in0(w_grad_yy_1_stencil_update_stream_0_0),

    .out0(w_grad_yy_1_stencil_stream_0_0),
    .out1(w_grad_yy_1_stencil_stream_0_1),
    .out2(w_grad_yy_1_stencil_stream_0_2),
    .out3(w_grad_yy_1_stencil_stream_1_0),
    .out4(w_grad_yy_1_stencil_stream_1_1),
    .out5(w_grad_yy_1_stencil_stream_1_2),
    .out6(w_grad_yy_1_stencil_stream_2_0),
    .out7(w_grad_yy_1_stencil_stream_2_1),
    .out8(w_grad_yy_1_stencil_stream_2_2),
    .out9(w_grad_yy_1_stencil_stream_3_0),
    .out10(w_grad_yy_1_stencil_stream_3_1),
    .out11(w_grad_yy_1_stencil_stream_3_2)
);

LB_3_4_1_8bit_False LB__padded_1_stencil_stream (
    .clk(clk),

    .in0(w_padded_1_stencil_update_stream_0_0),

    .out0(w_padded_1_stencil_stream_0_0),
    .out1(w_padded_1_stencil_stream_0_1),
    .out2(w_padded_1_stencil_stream_0_2),
    .out3(w_padded_1_stencil_stream_1_0),
    .out4(w_padded_1_stencil_stream_1_1),
    .out5(w_padded_1_stencil_stream_1_2),
    .out6(w_padded_1_stencil_stream_2_0),
    .out7(w_padded_1_stencil_stream_2_1),
    .out8(w_padded_1_stencil_stream_2_2),
    .out9(w_padded_1_stencil_stream_3_0),
    .out10(w_padded_1_stencil_stream_3_1),
    .out11(w_padded_1_stencil_stream_3_2)
);

LB_3_4_1_32bit_False LB__grad_xy_1_stencil_stream (
    .clk(clk),

    .in0(w_grad_xy_1_stencil_update_stream_1_0),

    .out0(w_grad_xy_1_stencil_stream_0_0),
    .out1(w_grad_xy_1_stencil_stream_0_1),
    .out2(w_grad_xy_1_stencil_stream_0_2),
    .out3(w_grad_xy_1_stencil_stream_1_0),
    .out4(w_grad_xy_1_stencil_stream_1_1),
    .out5(w_grad_xy_1_stencil_stream_1_2),
    .out6(w_grad_xy_1_stencil_stream_2_0),
    .out7(w_grad_xy_1_stencil_stream_2_1),
    .out8(w_grad_xy_1_stencil_stream_2_2),
    .out9(w_grad_xy_1_stencil_stream_3_0),
    .out10(w_grad_xy_1_stencil_stream_3_1),
    .out11(w_grad_xy_1_stencil_stream_3_2)
);

LB_3_4_1_16bit_False LB__p2_cim_stencil_stream (
    .clk(clk),

    .in0(w_p2_cim_stencil_update_stream_0_0),
    //.in1(w_p2_cim_stencil_update_stream_1_0),

    .out0(w_p2_cim_stencil_stream_0_0),
    .out1(w_p2_cim_stencil_stream_0_1),
    .out2(w_p2_cim_stencil_stream_0_2),
    .out3(w_p2_cim_stencil_stream_1_0),
    .out4(w_p2_cim_stencil_stream_1_1),
    .out5(w_p2_cim_stencil_stream_1_2),
    .out6(w_p2_cim_stencil_stream_2_0),
    .out7(w_p2_cim_stencil_stream_2_1),
    .out8(w_p2_cim_stencil_stream_2_2),
    .out9(w_p2_cim_stencil_stream_3_0),
    .out10(w_p2_cim_stencil_stream_3_1),
    .out11(w_p2_cim_stencil_stream_3_2)
);

kernel__grad_y_1_stencil_stream KERN__grad_y_1_stencil_stream (
    .w_padded_1_stencil_0_0(w_padded_1_stencil_stream_0_0),
    .w_padded_1_stencil_0_2(w_padded_1_stencil_stream_0_1),
    .w_padded_1_stencil_1_0(w_padded_1_stencil_stream_0_2),
    .w_padded_1_stencil_1_2(w_padded_1_stencil_stream_1_0),
    .w_padded_1_stencil_2_0(w_padded_1_stencil_stream_1_1),
    .w_padded_1_stencil_2_2(w_padded_1_stencil_stream_1_2),
    .w_padded_1_stencil_3_0(w_padded_1_stencil_stream_2_0),
    .w_padded_1_stencil_3_2(w_padded_1_stencil_stream_2_1),

    .out_w_grad_y_1_stencil_0_0(w_grad_y_1_stencil_stream_0_0),
    .out_w_grad_y_1_stencil_1_0(w_grad_y_1_stencil_stream_1_0),

    .clk(clk)
);

kernel__grad_xx_1_stencil_update_stream KERN__grad_xx_1_stencil_update_stream (
    .w_grad_x_1_stencil_0_0(w_grad_x_1_stencil_stream_to_grad_xx_1_0_0),
    .w_grad_x_1_stencil_1_0(w_grad_x_1_stencil_stream_to_grad_xx_1_1_0),

    .out_w_grad_xx_1_stencil_0_0(w_grad_xx_1_stencil_update_stream_0_0),
    .out_w_grad_xx_1_stencil_1_0(w_grad_xx_1_stencil_update_stream_1_0),

    .clk(clk)
);

kernel__grad_yy_1_stencil_update_stream KERN__grad_yy_1_stencil_update_stream (
    .w_grad_y_1_stencil_0_0(w_grad_y_1_stencil_stream_0_0),
    .w_grad_y_1_stencil_1_0(w_grad_y_1_stencil_stream_1_0),

    .out_w_grad_yy_1_stencil_0_0(w_grad_yy_1_stencil_update_stream_0_0),
    .out_w_grad_yy_1_stencil_1_0(w_grad_yy_1_stencil_update_stream_1_0),

    .clk(clk)
);

kernel__grad_xy_1_stencil_update_stream KERN__grad_xy_1_stencil_update_stream (
    .w_grad_x_1_stencil_0_0(w_grad_y_1_stencil_stream_to_grad_xy_1_0_0),
    .w_grad_x_1_stencil_1_0(w_grad_y_1_stencil_stream_to_grad_xy_1_1_0),
    .w_grad_y_1_stencil_0_0(w_grad_x_1_stencil_stream_0_0),
    .w_grad_y_1_stencil_1_0(w_grad_x_1_stencil_stream_1_0),

    .out_w_grad_xy_1_stencil_0_0(w_grad_xy_1_stencil_update_stream_0_0),
    .out_w_grad_xy_1_stencil_1_0(w_grad_xy_1_stencil_update_stream_1_0),

    .clk(clk)
);

kernel__p2_cim_stencil_update_stream KERN__p2_cim_stencil_update_stream (
    .w_grad_gx_1_stencil_0_0(w_grad_gy_1_stencil_stream_0_0),
    .w_grad_gx_1_stencil_1_0(w_grad_gy_1_stencil_stream_1_0),
    .w_grad_gxy_1_stencil_0_0(w_grad_gx_1_stencil_stream_0_0),
    .w_grad_gxy_1_stencil_1_0(w_grad_gx_1_stencil_stream_1_0),
    .w_grad_gy_1_stencil_0_0(w_grad_gxy_1_stencil_stream_0_0),
    .w_grad_gy_1_stencil_1_0(w_grad_gxy_1_stencil_stream_1_0),

    .out_w_p2_cim_stencil_0_0(w_p2_cim_stencil_update_stream_0_0),
    .out_w_p2_cim_stencil_1_0(w_p2_cim_stencil_update_stream_1_0),

    .clk(clk)
);

kernel__grad_gy_1_stencil_stream KERN__grad_gy_1_stencil_stream (
    .w_grad_yy_1_stencil_0_0(w_grad_yy_1_stencil_stream_0_0),
    .w_grad_yy_1_stencil_0_1(w_grad_yy_1_stencil_stream_0_1),
    .w_grad_yy_1_stencil_0_2(w_grad_yy_1_stencil_stream_0_2),
    .w_grad_yy_1_stencil_1_0(w_grad_yy_1_stencil_stream_1_0),
    .w_grad_yy_1_stencil_1_1(w_grad_yy_1_stencil_stream_1_1),
    .w_grad_yy_1_stencil_1_2(w_grad_yy_1_stencil_stream_1_2),
    .w_grad_yy_1_stencil_2_0(w_grad_yy_1_stencil_stream_2_0),
    .w_grad_yy_1_stencil_2_1(w_grad_yy_1_stencil_stream_2_1),
    .w_grad_yy_1_stencil_2_2(w_grad_yy_1_stencil_stream_2_2),
    .w_grad_yy_1_stencil_3_0(w_grad_yy_1_stencil_stream_3_0),
    .w_grad_yy_1_stencil_3_1(w_grad_yy_1_stencil_stream_3_1),
    .w_grad_yy_1_stencil_3_2(w_grad_yy_1_stencil_stream_3_2),

    .out_w_grad_gy_1_stencil_0_0(w_grad_gy_1_stencil_stream_0_0),
    .out_w_grad_gy_1_stencil_1_0(w_grad_gy_1_stencil_stream_1_0),

    .clk(clk)
);

LB_3_4_1_32bit_False LB__grad_xx_1_stencil_stream (
    .clk(clk),

    .in0(w_grad_xx_1_stencil_update_stream_0_0),

    .out0(w_grad_xx_1_stencil_stream_0_0),
    .out1(w_grad_xx_1_stencil_stream_0_1),
    .out2(w_grad_xx_1_stencil_stream_0_2),
    .out3(w_grad_xx_1_stencil_stream_1_0),
    .out4(w_grad_xx_1_stencil_stream_1_1),
    .out5(w_grad_xx_1_stencil_stream_1_2),
    .out6(w_grad_xx_1_stencil_stream_2_0),
    .out7(w_grad_xx_1_stencil_stream_2_1),
    .out8(w_grad_xx_1_stencil_stream_2_2),
    .out9(w_grad_xx_1_stencil_stream_3_0),
    .out10(w_grad_xx_1_stencil_stream_3_1),
    .out11(w_grad_xx_1_stencil_stream_3_2)
);

kernel__grad_gxy_1_stencil_stream KERN__grad_gxy_1_stencil_stream (
    .w_grad_xy_1_stencil_0_0(w_grad_xy_1_stencil_stream_0_0),
    .w_grad_xy_1_stencil_0_1(w_grad_xy_1_stencil_stream_0_1),
    .w_grad_xy_1_stencil_0_2(w_grad_xy_1_stencil_stream_0_2),
    .w_grad_xy_1_stencil_1_0(w_grad_xy_1_stencil_stream_1_0),
    .w_grad_xy_1_stencil_1_1(w_grad_xy_1_stencil_stream_1_1),
    .w_grad_xy_1_stencil_1_2(w_grad_xy_1_stencil_stream_1_2),
    .w_grad_xy_1_stencil_2_0(w_grad_xy_1_stencil_stream_2_0),
    .w_grad_xy_1_stencil_2_1(w_grad_xy_1_stencil_stream_2_1),
    .w_grad_xy_1_stencil_2_2(w_grad_xy_1_stencil_stream_2_2),
    .w_grad_xy_1_stencil_3_0(w_grad_xy_1_stencil_stream_3_0),
    .w_grad_xy_1_stencil_3_1(w_grad_xy_1_stencil_stream_3_1),
    .w_grad_xy_1_stencil_3_2(w_grad_xy_1_stencil_stream_3_2),

    .out_w_grad_gxy_1_stencil_0_0(w_grad_gxy_1_stencil_stream_0_0),
    .out_w_grad_gxy_1_stencil_1_0(w_grad_gxy_1_stencil_stream_1_0),

    .clk(clk)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_p2_cim_stencil_0_0(w_p2_cim_stencil_stream_0_0),
    .w_p2_cim_stencil_0_1(w_p2_cim_stencil_stream_0_1),
    .w_p2_cim_stencil_0_2(w_p2_cim_stencil_stream_0_2),
    .w_p2_cim_stencil_1_0(w_p2_cim_stencil_stream_1_0),
    .w_p2_cim_stencil_1_1(w_p2_cim_stencil_stream_1_1),
    .w_p2_cim_stencil_1_2(w_p2_cim_stencil_stream_1_2),
    .w_p2_cim_stencil_2_0(w_p2_cim_stencil_stream_2_0),
    .w_p2_cim_stencil_2_1(w_p2_cim_stencil_stream_2_1),
    .w_p2_cim_stencil_2_2(w_p2_cim_stencil_stream_2_2),
    .w_p2_cim_stencil_3_0(w_p2_cim_stencil_stream_3_0),
    .w_p2_cim_stencil_3_1(w_p2_cim_stencil_stream_3_1),
    .w_p2_cim_stencil_3_2(w_p2_cim_stencil_stream_3_2),

    .out_w_hw_output_1_stencil_1_0(w_hw_output_1_stencil_stream_0_0),
    .out_w_hw_output_1_stencil_packed(w_hw_output_1_stencil_stream_1_0),

    .clk(clk)
);

kernel__grad_gx_1_stencil_stream KERN__grad_gx_1_stencil_stream (
    .w_grad_xx_1_stencil_0_0(w_grad_xx_1_stencil_stream_0_0),
    .w_grad_xx_1_stencil_0_1(w_grad_xx_1_stencil_stream_0_1),
    .w_grad_xx_1_stencil_0_2(w_grad_xx_1_stencil_stream_0_2),
    .w_grad_xx_1_stencil_1_0(w_grad_xx_1_stencil_stream_1_0),
    .w_grad_xx_1_stencil_1_1(w_grad_xx_1_stencil_stream_1_1),
    .w_grad_xx_1_stencil_1_2(w_grad_xx_1_stencil_stream_1_2),
    .w_grad_xx_1_stencil_2_0(w_grad_xx_1_stencil_stream_2_0),
    .w_grad_xx_1_stencil_2_1(w_grad_xx_1_stencil_stream_2_1),
    .w_grad_xx_1_stencil_2_2(w_grad_xx_1_stencil_stream_2_2),
    .w_grad_xx_1_stencil_3_0(w_grad_xx_1_stencil_stream_3_0),
    .w_grad_xx_1_stencil_3_1(w_grad_xx_1_stencil_stream_3_1),
    .w_grad_xx_1_stencil_3_2(w_grad_xx_1_stencil_stream_3_2),

    .out_w_grad_gx_1_stencil_0_0(w_grad_gx_1_stencil_stream_0_0),
    .out_w_grad_gx_1_stencil_1_0(w_grad_gx_1_stencil_stream_1_0),

    .clk(clk)
);

kernel__grad_x_1_stencil_stream KERN__grad_x_1_stencil_stream (
    .w_padded_1_stencil_0_0(w_padded_1_stencil_stream_to_grad_x_1_0_0),
    .w_padded_1_stencil_0_1(w_padded_1_stencil_stream_to_grad_x_1_0_1),
    .w_padded_1_stencil_0_2(w_padded_1_stencil_stream_to_grad_x_1_0_2),
    .w_padded_1_stencil_1_0(w_padded_1_stencil_stream_to_grad_x_1_1_0),
    .w_padded_1_stencil_1_1(w_padded_1_stencil_stream_to_grad_x_1_1_1),
    .w_padded_1_stencil_1_2(w_padded_1_stencil_stream_to_grad_x_1_1_2),
    .w_padded_1_stencil_2_0(w_padded_1_stencil_stream_to_grad_x_1_2_0),
    .w_padded_1_stencil_2_1(w_padded_1_stencil_stream_to_grad_x_1_2_1),
    .w_padded_1_stencil_2_2(w_padded_1_stencil_stream_to_grad_x_1_2_2),
    .w_padded_1_stencil_3_0(w_padded_1_stencil_stream_to_grad_x_1_3_0),
    .w_padded_1_stencil_3_1(w_padded_1_stencil_stream_to_grad_x_1_3_1),
    .w_padded_1_stencil_3_2(w_padded_1_stencil_stream_to_grad_x_1_3_2),

    .out_w_grad_x_1_stencil_0_0(w_grad_x_1_stencil_stream_0_0),
    .out_w_grad_x_1_stencil_1_0(w_grad_x_1_stencil_stream_1_0),

    .clk(clk)
);

endmodule



module kernel__grad_xx_1_stencil_update_stream(
//Inputs
  w_grad_x_1_stencil_0_0,
  w_grad_x_1_stencil_1_0,
//Outputs
  out_w_grad_xx_1_stencil_0_0,
  out_w_grad_xx_1_stencil_1_0,

  clk
);

//Inputs
input  w_grad_x_1_stencil_0_0;
input  w_grad_x_1_stencil_1_0;
//Outputs
output  out_w_grad_xx_1_stencil_1_0;
output  out_w_grad_xx_1_stencil_0_0;

input  clk;


wire  w_266;
wire  w_267;
wire  w_268;
wire  w_269;
wire  w_270;
wire  w_271;
wire  w_grad_xx_1_stencil_0_0;
wire  w_grad_xx_1_stencil_1_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_xx_1_stencil_1_0=w_grad_xx_1_stencil_1_0;
assign out_w_grad_xx_1_stencil_0_0=w_grad_xx_1_stencil_0_0;
assign  w_266  =  w_grad_x_1_stencil_0_0 ;
assign  w_267  =  w_266 ;
MULT_16b_pe mult_0 (
  .a(w_267),
  .b(1'b0),
  .c(w_268),
  .clk(clk)
);
assign  w_269  =  w_grad_x_1_stencil_1_0 ;
assign  w_270  =  w_269 ;
MULT_16b_pe mult_1 (
  .a(w_270),
  .b(1'b0),
  .c(w_271),
  .clk(clk)
);
assign  w_grad_xx_1_stencil_0_0  =  w_268 ;
assign  w_grad_xx_1_stencil_1_0  =  w_271 ;

endmodule







module kernel__p2_cim_stencil_update_stream(
//Inputs
  w_grad_gx_1_stencil_0_0,
  w_grad_gx_1_stencil_1_0,
  w_grad_gxy_1_stencil_0_0,
  w_grad_gxy_1_stencil_1_0,
  w_grad_gy_1_stencil_0_0,
  w_grad_gy_1_stencil_1_0,
//Outputs
  out_w_p2_cim_stencil_0_0,
  out_w_p2_cim_stencil_1_0,

  clk
);

//Inputs
input  w_grad_gy_1_stencil_0_0;
input  w_grad_gx_1_stencil_1_0;
input  w_grad_gy_1_stencil_1_0;
input  w_grad_gxy_1_stencil_1_0;
input  w_grad_gx_1_stencil_0_0;
input  w_grad_gxy_1_stencil_0_0;
//Outputs
output  out_w_p2_cim_stencil_1_0;
output  out_w_p2_cim_stencil_0_0;

input  clk;


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
wire  w_p2_cim_stencil_0_0;
wire  w_p2_cim_stencil_1_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_p2_cim_stencil_1_0=w_p2_cim_stencil_1_0;
assign out_w_p2_cim_stencil_0_0=w_p2_cim_stencil_0_0;
assign  w_490  =  w_grad_gx_1_stencil_0_0 ;
assign  w_491  =  w_grad_gy_1_stencil_0_0 ;
assign  w_492  =  w_grad_gxy_1_stencil_0_0 ;
DIV_16b_pe div_0 (
  .a(w_490),
  .b(1'b0),
  .c(w_493),
  .clk(clk)
);
MULT_16b_pe mult_1 (
  .a(1'b0),
  .b(w_493),
  .c(w_494),
  .clk(clk)
);
SUB_16b_pe sub_2 (
  .a(w_490),
  .b(w_494),
  .c(w_495),
  .clk(clk)
);
LSHIFT_16b_pe lshift_3 (
  .a(1'b0),
  .b(w_495),
  .c(w_496),
  .clk(clk)
);
assign  w_497  = 1'b0;
AND_16b_pe and_4 (
  .a(w_496),
  .b(w_497),
  .c(w_498),
  .clk(clk)
);
SUB_16b_pe sub_5 (
  .a(w_498),
  .b(w_493),
  .c(w_499),
  .clk(clk)
);
assign  w_500  = 1'b0;
AND_16b_pe and_6 (
  .a(w_500),
  .b(w_496),
  .c(w_501),
  .clk(clk)
);
ADD_16b_pe add_7 (
  .a(w_499),
  .b(w_501),
  .c(w_502),
  .clk(clk)
);
assign  w_503  =  w_502 ;
DIV_16b_pe div_8 (
  .a(w_491),
  .b(1'b0),
  .c(w_504),
  .clk(clk)
);
MULT_16b_pe mult_9 (
  .a(w_504),
  .b(1'b0),
  .c(w_505),
  .clk(clk)
);
SUB_16b_pe sub_10 (
  .a(w_491),
  .b(w_505),
  .c(w_506),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(w_506),
  .b(1'b0),
  .c(w_507),
  .clk(clk)
);
AND_16b_pe and_12 (
  .a(w_507),
  .b(w_497),
  .c(w_508),
  .clk(clk)
);
SUB_16b_pe sub_13 (
  .a(w_504),
  .b(w_508),
  .c(w_509),
  .clk(clk)
);
AND_16b_pe and_14 (
  .a(w_507),
  .b(w_500),
  .c(w_510),
  .clk(clk)
);
ADD_16b_pe add_15 (
  .a(w_510),
  .b(w_509),
  .c(w_511),
  .clk(clk)
);
assign  w_512  =  w_511 ;
ADD_16b_pe add_16 (
  .a(w_503),
  .b(w_512),
  .c(w_513),
  .clk(clk)
);
MULT_16b_pe mult_17 (
  .a(w_503),
  .b(w_512),
  .c(w_514),
  .clk(clk)
);
DIV_16b_pe div_18 (
  .a(w_492),
  .b(1'b0),
  .c(w_515),
  .clk(clk)
);
MULT_16b_pe mult_19 (
  .a(w_515),
  .b(1'b0),
  .c(w_516),
  .clk(clk)
);
SUB_16b_pe sub_20 (
  .a(w_492),
  .b(w_516),
  .c(w_517),
  .clk(clk)
);
LSHIFT_16b_pe lshift_21 (
  .a(w_517),
  .b(1'b0),
  .c(w_518),
  .clk(clk)
);
AND_16b_pe and_22 (
  .a(w_518),
  .b(w_497),
  .c(w_519),
  .clk(clk)
);
SUB_16b_pe sub_23 (
  .a(w_515),
  .b(w_519),
  .c(w_520),
  .clk(clk)
);
AND_16b_pe and_24 (
  .a(w_518),
  .b(w_500),
  .c(w_521),
  .clk(clk)
);
ADD_16b_pe add_25 (
  .a(w_520),
  .b(w_521),
  .c(w_522),
  .clk(clk)
);
assign  w_523  =  w_522 ;
MULT_16b_pe mult_26 (
  .a(w_523),
  .b(1'b0),
  .c(w_524),
  .clk(clk)
);
SUB_16b_pe sub_27 (
  .a(w_524),
  .b(w_514),
  .c(w_525),
  .clk(clk)
);
MULT_16b_pe mult_28 (
  .a(1'b0),
  .b(w_513),
  .c(w_526),
  .clk(clk)
);
MULT_16b_pe mult_29 (
  .a(w_526),
  .b(w_513),
  .c(w_527),
  .clk(clk)
);
SUB_16b_pe sub_30 (
  .a(w_525),
  .b(w_527),
  .c(w_528),
  .clk(clk)
);
assign  w_529  =  w_grad_gx_1_stencil_1_0 ;
assign  w_530  =  w_grad_gy_1_stencil_1_0 ;
assign  w_531  =  w_grad_gxy_1_stencil_1_0 ;
DIV_16b_pe div_31 (
  .a(1'b0),
  .b(w_529),
  .c(w_532),
  .clk(clk)
);
MULT_16b_pe mult_32 (
  .a(w_532),
  .b(1'b0),
  .c(w_533),
  .clk(clk)
);
SUB_16b_pe sub_33 (
  .a(w_533),
  .b(w_529),
  .c(w_534),
  .clk(clk)
);
LSHIFT_16b_pe lshift_34 (
  .a(1'b0),
  .b(w_534),
  .c(w_535),
  .clk(clk)
);
assign  w_536  = 1'b0;
AND_16b_pe and_35 (
  .a(w_536),
  .b(w_535),
  .c(w_537),
  .clk(clk)
);
SUB_16b_pe sub_36 (
  .a(w_532),
  .b(w_537),
  .c(w_538),
  .clk(clk)
);
assign  w_539  = 1'b0;
AND_16b_pe and_37 (
  .a(w_539),
  .b(w_535),
  .c(w_540),
  .clk(clk)
);
ADD_16b_pe add_38 (
  .a(w_540),
  .b(w_538),
  .c(w_541),
  .clk(clk)
);
assign  w_542  =  w_541 ;
DIV_16b_pe div_39 (
  .a(1'b0),
  .b(w_530),
  .c(w_543),
  .clk(clk)
);
MULT_16b_pe mult_40 (
  .a(w_543),
  .b(1'b0),
  .c(w_544),
  .clk(clk)
);
SUB_16b_pe sub_41 (
  .a(w_530),
  .b(w_544),
  .c(w_545),
  .clk(clk)
);
LSHIFT_16b_pe lshift_42 (
  .a(1'b0),
  .b(w_545),
  .c(w_546),
  .clk(clk)
);
AND_16b_pe and_43 (
  .a(w_546),
  .b(w_536),
  .c(w_547),
  .clk(clk)
);
SUB_16b_pe sub_44 (
  .a(w_543),
  .b(w_547),
  .c(w_548),
  .clk(clk)
);
AND_16b_pe and_45 (
  .a(w_539),
  .b(w_546),
  .c(w_549),
  .clk(clk)
);
ADD_16b_pe add_46 (
  .a(w_548),
  .b(w_549),
  .c(w_550),
  .clk(clk)
);
assign  w_551  =  w_550 ;
ADD_16b_pe add_47 (
  .a(w_542),
  .b(w_551),
  .c(w_552),
  .clk(clk)
);
MULT_16b_pe mult_48 (
  .a(w_542),
  .b(w_551),
  .c(w_553),
  .clk(clk)
);
DIV_16b_pe div_49 (
  .a(w_531),
  .b(1'b0),
  .c(w_554),
  .clk(clk)
);
MULT_16b_pe mult_50 (
  .a(1'b0),
  .b(w_554),
  .c(w_555),
  .clk(clk)
);
SUB_16b_pe sub_51 (
  .a(w_531),
  .b(w_555),
  .c(w_556),
  .clk(clk)
);
LSHIFT_16b_pe lshift_52 (
  .a(1'b0),
  .b(w_556),
  .c(w_557),
  .clk(clk)
);
AND_16b_pe and_53 (
  .a(w_536),
  .b(w_557),
  .c(w_558),
  .clk(clk)
);
SUB_16b_pe sub_54 (
  .a(w_558),
  .b(w_554),
  .c(w_559),
  .clk(clk)
);
AND_16b_pe and_55 (
  .a(w_539),
  .b(w_557),
  .c(w_560),
  .clk(clk)
);
ADD_16b_pe add_56 (
  .a(w_559),
  .b(w_560),
  .c(w_561),
  .clk(clk)
);
assign  w_562  =  w_561 ;
MULT_16b_pe mult_57 (
  .a(w_562),
  .b(1'b0),
  .c(w_563),
  .clk(clk)
);
SUB_16b_pe sub_58 (
  .a(w_553),
  .b(w_563),
  .c(w_564),
  .clk(clk)
);
MULT_16b_pe mult_59 (
  .a(1'b0),
  .b(w_552),
  .c(w_565),
  .clk(clk)
);
MULT_16b_pe mult_60 (
  .a(w_552),
  .b(w_565),
  .c(w_566),
  .clk(clk)
);
SUB_16b_pe sub_61 (
  .a(w_564),
  .b(w_566),
  .c(w_567),
  .clk(clk)
);
assign  w_p2_cim_stencil_0_0  =  w_528 ;
assign  w_p2_cim_stencil_1_0  =  w_567 ;

endmodule







module kernel__grad_x_1_stencil_stream(
//Inputs
  w_padded_1_stencil_0_0,
  w_padded_1_stencil_0_1,
  w_padded_1_stencil_0_2,
  w_padded_1_stencil_1_0,
  w_padded_1_stencil_1_1,
  w_padded_1_stencil_1_2,
  w_padded_1_stencil_2_0,
  w_padded_1_stencil_2_1,
  w_padded_1_stencil_2_2,
  w_padded_1_stencil_3_0,
  w_padded_1_stencil_3_1,
  w_padded_1_stencil_3_2,
//Outputs
  out_w_grad_x_1_stencil_0_0,
  out_w_grad_x_1_stencil_1_0,

  clk
);

//Inputs
input  w_padded_1_stencil_3_0;
input  w_padded_1_stencil_3_1;
input  w_padded_1_stencil_3_2;
input  w_padded_1_stencil_2_1;
input  w_padded_1_stencil_2_0;
input  w_padded_1_stencil_2_2;
input  w_padded_1_stencil_1_2;
input  w_padded_1_stencil_1_0;
input  w_padded_1_stencil_1_1;
input  w_padded_1_stencil_0_2;
input  w_padded_1_stencil_0_1;
input  w_padded_1_stencil_0_0;
//Outputs
output  out_w_grad_x_1_stencil_0_0;
output  out_w_grad_x_1_stencil_1_0;

input  clk;


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
wire  w_grad_x_1_stencil_0_0;
wire  w_grad_x_1_stencil_1_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_x_1_stencil_0_0=w_grad_x_1_stencil_0_0;
assign out_w_grad_x_1_stencil_1_0=w_grad_x_1_stencil_1_0;
assign  w_226  =  w_padded_1_stencil_2_0 ;
assign  w_227  =  w_226 ;
assign  w_228  =  w_padded_1_stencil_0_0 ;
assign  w_229  =  w_228 ;
SUB_16b_pe sub_0 (
  .a(w_227),
  .b(w_229),
  .c(w_230),
  .clk(clk)
);
assign  w_231  =  w_padded_1_stencil_0_1 ;
assign  w_232  =  w_231 ;
assign  w_233  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_232),
  .b(w_233),
  .c(w_234),
  .clk(clk)
);
SUB_16b_pe sub_2 (
  .a(w_230),
  .b(w_234),
  .c(w_235),
  .clk(clk)
);
assign  w_236  =  w_padded_1_stencil_2_1 ;
assign  w_237  =  w_236 ;
MULT_16b_pe mult_3 (
  .a(w_233),
  .b(w_237),
  .c(w_238),
  .clk(clk)
);
ADD_16b_pe add_4 (
  .a(w_238),
  .b(w_235),
  .c(w_239),
  .clk(clk)
);
assign  w_240  =  w_padded_1_stencil_0_2 ;
assign  w_241  =  w_240 ;
SUB_16b_pe sub_5 (
  .a(w_239),
  .b(w_241),
  .c(w_242),
  .clk(clk)
);
assign  w_243  =  w_padded_1_stencil_2_2 ;
assign  w_244  =  w_243 ;
ADD_16b_pe add_6 (
  .a(w_244),
  .b(w_242),
  .c(w_245),
  .clk(clk)
);
assign  w_246  =  w_padded_1_stencil_3_0 ;
assign  w_247  =  w_246 ;
assign  w_248  =  w_padded_1_stencil_1_0 ;
assign  w_249  =  w_248 ;
SUB_16b_pe sub_7 (
  .a(w_247),
  .b(w_249),
  .c(w_250),
  .clk(clk)
);
assign  w_251  =  w_padded_1_stencil_1_1 ;
assign  w_252  =  w_251 ;
assign  w_253  = 1'b0;
MULT_16b_pe mult_8 (
  .a(w_252),
  .b(w_253),
  .c(w_254),
  .clk(clk)
);
SUB_16b_pe sub_9 (
  .a(w_254),
  .b(w_250),
  .c(w_255),
  .clk(clk)
);
assign  w_256  =  w_padded_1_stencil_3_1 ;
assign  w_257  =  w_256 ;
MULT_16b_pe mult_10 (
  .a(w_257),
  .b(w_253),
  .c(w_258),
  .clk(clk)
);
ADD_16b_pe add_11 (
  .a(w_255),
  .b(w_258),
  .c(w_259),
  .clk(clk)
);
assign  w_260  =  w_padded_1_stencil_1_2 ;
assign  w_261  =  w_260 ;
SUB_16b_pe sub_12 (
  .a(w_261),
  .b(w_259),
  .c(w_262),
  .clk(clk)
);
assign  w_263  =  w_padded_1_stencil_3_2 ;
assign  w_264  =  w_263 ;
ADD_16b_pe add_13 (
  .a(w_262),
  .b(w_264),
  .c(w_265),
  .clk(clk)
);
assign  w_grad_x_1_stencil_0_0  =  w_245 ;
assign  w_grad_x_1_stencil_1_0  =  w_265 ;

endmodule







module kernel__grad_gx_1_stencil_stream(
//Inputs
  w_grad_xx_1_stencil_0_0,
  w_grad_xx_1_stencil_0_1,
  w_grad_xx_1_stencil_0_2,
  w_grad_xx_1_stencil_1_0,
  w_grad_xx_1_stencil_1_1,
  w_grad_xx_1_stencil_1_2,
  w_grad_xx_1_stencil_2_0,
  w_grad_xx_1_stencil_2_1,
  w_grad_xx_1_stencil_2_2,
  w_grad_xx_1_stencil_3_0,
  w_grad_xx_1_stencil_3_1,
  w_grad_xx_1_stencil_3_2,
//Outputs
  out_w_grad_gx_1_stencil_0_0,
  out_w_grad_gx_1_stencil_1_0,

  clk
);

//Inputs
input  w_grad_xx_1_stencil_2_1;
input  w_grad_xx_1_stencil_2_0;
input  w_grad_xx_1_stencil_2_2;
input  w_grad_xx_1_stencil_3_0;
input  w_grad_xx_1_stencil_3_1;
input  w_grad_xx_1_stencil_3_2;
input  w_grad_xx_1_stencil_0_2;
input  w_grad_xx_1_stencil_0_1;
input  w_grad_xx_1_stencil_0_0;
input  w_grad_xx_1_stencil_1_2;
input  w_grad_xx_1_stencil_1_0;
input  w_grad_xx_1_stencil_1_1;
//Outputs
output  out_w_grad_gx_1_stencil_0_0;
output  out_w_grad_gx_1_stencil_1_0;

input  clk;


wire  r0_w_grad_gx_1_stencil_0_0;
wire  r0_w_grad_gx_1_stencil_1_0;
wire  r1_w_grad_gx_1_stencil_0_0;
wire  r1_w_grad_gx_1_stencil_1_0;
wire  r2_w_grad_gx_1_stencil_0_0;
wire  r2_w_grad_gx_1_stencil_1_0;
wire  r3_w_grad_gx_1_stencil_0_0;
wire  r3_w_grad_gx_1_stencil_1_0;
wire  r4_w_grad_gx_1_stencil_0_0;
wire  r4_w_grad_gx_1_stencil_1_0;
wire  r5_w_grad_gx_1_stencil_0_0;
wire  r5_w_grad_gx_1_stencil_1_0;
wire  r6_w_grad_gx_1_stencil_0_0;
wire  r6_w_grad_gx_1_stencil_1_0;
wire  r7_w_grad_gx_1_stencil_0_0;
wire  r7_w_grad_gx_1_stencil_1_0;
wire  r8_w_grad_gx_1_stencil_0_0;
wire  r8_w_grad_gx_1_stencil_1_0;
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
wire  w_grad_gx_1_stencil_0_0;
wire  w_grad_gx_1_stencil_1_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_gx_1_stencil_0_0=r8_w_grad_gx_1_stencil_0_0;
assign out_w_grad_gx_1_stencil_1_0=r8_w_grad_gx_1_stencil_1_0;
assign  r0_w_grad_gx_1_stencil_0_0  =  w_274 ;
assign  r0_w_grad_gx_1_stencil_1_0  =  w_301 ;
assign  r1_w_grad_gx_1_stencil_0_0  =  w_277 ;
assign  r1_w_grad_gx_1_stencil_1_0  =  w_304 ;
assign  r2_w_grad_gx_1_stencil_0_0  =  w_280 ;
assign  r2_w_grad_gx_1_stencil_1_0  =  w_307 ;
assign  r3_w_grad_gx_1_stencil_0_0  =  w_283 ;
assign  r3_w_grad_gx_1_stencil_1_0  =  w_310 ;
assign  r4_w_grad_gx_1_stencil_0_0  =  w_286 ;
assign  r4_w_grad_gx_1_stencil_1_0  =  w_313 ;
assign  r5_w_grad_gx_1_stencil_0_0  =  w_289 ;
assign  r5_w_grad_gx_1_stencil_1_0  =  w_316 ;
assign  r6_w_grad_gx_1_stencil_0_0  =  w_292 ;
assign  r6_w_grad_gx_1_stencil_1_0  =  w_319 ;
assign  r7_w_grad_gx_1_stencil_0_0  =  w_295 ;
assign  r7_w_grad_gx_1_stencil_1_0  =  w_322 ;
assign  r8_w_grad_gx_1_stencil_0_0  =  w_298 ;
assign  r8_w_grad_gx_1_stencil_1_0  =  w_325 ;
assign  w_272  = 1'b0;
assign  w_273  =  w_grad_xx_1_stencil_0_0 ;
ADD_16b_pe add_0 (
  .a(w_272),
  .b(w_273),
  .c(w_274),
  .clk(clk)
);
assign  w_275  =  r0_w_grad_gx_1_stencil_0_0 ;
assign  w_276  =  w_grad_xx_1_stencil_1_0 ;
ADD_16b_pe add_1 (
  .a(w_275),
  .b(w_276),
  .c(w_277),
  .clk(clk)
);
assign  w_278  =  r1_w_grad_gx_1_stencil_0_0 ;
assign  w_279  =  w_grad_xx_1_stencil_2_0 ;
ADD_16b_pe add_2 (
  .a(w_278),
  .b(w_279),
  .c(w_280),
  .clk(clk)
);
assign  w_281  =  r2_w_grad_gx_1_stencil_0_0 ;
assign  w_282  =  w_grad_xx_1_stencil_0_1 ;
ADD_16b_pe add_3 (
  .a(w_281),
  .b(w_282),
  .c(w_283),
  .clk(clk)
);
assign  w_284  =  r3_w_grad_gx_1_stencil_0_0 ;
assign  w_285  =  w_grad_xx_1_stencil_1_1 ;
ADD_16b_pe add_4 (
  .a(w_285),
  .b(w_284),
  .c(w_286),
  .clk(clk)
);
assign  w_287  =  r4_w_grad_gx_1_stencil_0_0 ;
assign  w_288  =  w_grad_xx_1_stencil_2_1 ;
ADD_16b_pe add_5 (
  .a(w_288),
  .b(w_287),
  .c(w_289),
  .clk(clk)
);
assign  w_290  =  r5_w_grad_gx_1_stencil_0_0 ;
assign  w_291  =  w_grad_xx_1_stencil_0_2 ;
ADD_16b_pe add_6 (
  .a(w_290),
  .b(w_291),
  .c(w_292),
  .clk(clk)
);
assign  w_293  =  r6_w_grad_gx_1_stencil_0_0 ;
assign  w_294  =  w_grad_xx_1_stencil_1_2 ;
ADD_16b_pe add_7 (
  .a(w_293),
  .b(w_294),
  .c(w_295),
  .clk(clk)
);
assign  w_296  =  r7_w_grad_gx_1_stencil_0_0 ;
assign  w_297  =  w_grad_xx_1_stencil_2_2 ;
ADD_16b_pe add_8 (
  .a(w_296),
  .b(w_297),
  .c(w_298),
  .clk(clk)
);
assign  w_299  = 1'b0;
assign  w_300  =  w_grad_xx_1_stencil_1_0 ;
ADD_16b_pe add_9 (
  .a(w_300),
  .b(w_299),
  .c(w_301),
  .clk(clk)
);
assign  w_302  =  r0_w_grad_gx_1_stencil_1_0 ;
assign  w_303  =  w_grad_xx_1_stencil_2_0 ;
ADD_16b_pe add_10 (
  .a(w_302),
  .b(w_303),
  .c(w_304),
  .clk(clk)
);
assign  w_305  =  r1_w_grad_gx_1_stencil_1_0 ;
assign  w_306  =  w_grad_xx_1_stencil_3_0 ;
ADD_16b_pe add_11 (
  .a(w_305),
  .b(w_306),
  .c(w_307),
  .clk(clk)
);
assign  w_308  =  r2_w_grad_gx_1_stencil_1_0 ;
assign  w_309  =  w_grad_xx_1_stencil_1_1 ;
ADD_16b_pe add_12 (
  .a(w_308),
  .b(w_309),
  .c(w_310),
  .clk(clk)
);
assign  w_311  =  r3_w_grad_gx_1_stencil_1_0 ;
assign  w_312  =  w_grad_xx_1_stencil_2_1 ;
ADD_16b_pe add_13 (
  .a(w_312),
  .b(w_311),
  .c(w_313),
  .clk(clk)
);
assign  w_314  =  r4_w_grad_gx_1_stencil_1_0 ;
assign  w_315  =  w_grad_xx_1_stencil_3_1 ;
ADD_16b_pe add_14 (
  .a(w_315),
  .b(w_314),
  .c(w_316),
  .clk(clk)
);
assign  w_317  =  r5_w_grad_gx_1_stencil_1_0 ;
assign  w_318  =  w_grad_xx_1_stencil_1_2 ;
ADD_16b_pe add_15 (
  .a(w_317),
  .b(w_318),
  .c(w_319),
  .clk(clk)
);
assign  w_320  =  r6_w_grad_gx_1_stencil_1_0 ;
assign  w_321  =  w_grad_xx_1_stencil_2_2 ;
ADD_16b_pe add_16 (
  .a(w_320),
  .b(w_321),
  .c(w_322),
  .clk(clk)
);
assign  w_323  =  r7_w_grad_gx_1_stencil_1_0 ;
assign  w_324  =  w_grad_xx_1_stencil_3_2 ;
ADD_16b_pe add_17 (
  .a(w_323),
  .b(w_324),
  .c(w_325),
  .clk(clk)
);
assign  w_grad_gx_1_stencil_0_0  = 1'b0;
assign  w_grad_gx_1_stencil_1_0  = 1'b0;

endmodule







module kernel__grad_gy_1_stencil_stream(
//Inputs
  w_grad_yy_1_stencil_0_0,
  w_grad_yy_1_stencil_0_1,
  w_grad_yy_1_stencil_0_2,
  w_grad_yy_1_stencil_1_0,
  w_grad_yy_1_stencil_1_1,
  w_grad_yy_1_stencil_1_2,
  w_grad_yy_1_stencil_2_0,
  w_grad_yy_1_stencil_2_1,
  w_grad_yy_1_stencil_2_2,
  w_grad_yy_1_stencil_3_0,
  w_grad_yy_1_stencil_3_1,
  w_grad_yy_1_stencil_3_2,
//Outputs
  out_w_grad_gy_1_stencil_0_0,
  out_w_grad_gy_1_stencil_1_0,

  clk
);

//Inputs
input  w_grad_yy_1_stencil_0_1;
input  w_grad_yy_1_stencil_0_0;
input  w_grad_yy_1_stencil_0_2;
input  w_grad_yy_1_stencil_3_2;
input  w_grad_yy_1_stencil_3_0;
input  w_grad_yy_1_stencil_3_1;
input  w_grad_yy_1_stencil_1_0;
input  w_grad_yy_1_stencil_1_1;
input  w_grad_yy_1_stencil_1_2;
input  w_grad_yy_1_stencil_2_2;
input  w_grad_yy_1_stencil_2_1;
input  w_grad_yy_1_stencil_2_0;
//Outputs
output  out_w_grad_gy_1_stencil_1_0;
output  out_w_grad_gy_1_stencil_0_0;

input  clk;


wire  r0_w_grad_gy_1_stencil_0_0;
wire  r0_w_grad_gy_1_stencil_1_0;
wire  r1_w_grad_gy_1_stencil_0_0;
wire  r1_w_grad_gy_1_stencil_1_0;
wire  r2_w_grad_gy_1_stencil_0_0;
wire  r2_w_grad_gy_1_stencil_1_0;
wire  r3_w_grad_gy_1_stencil_0_0;
wire  r3_w_grad_gy_1_stencil_1_0;
wire  r4_w_grad_gy_1_stencil_0_0;
wire  r4_w_grad_gy_1_stencil_1_0;
wire  r5_w_grad_gy_1_stencil_0_0;
wire  r5_w_grad_gy_1_stencil_1_0;
wire  r6_w_grad_gy_1_stencil_0_0;
wire  r6_w_grad_gy_1_stencil_1_0;
wire  r7_w_grad_gy_1_stencil_0_0;
wire  r7_w_grad_gy_1_stencil_1_0;
wire  r8_w_grad_gy_1_stencil_0_0;
wire  r8_w_grad_gy_1_stencil_1_0;
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
wire  w_grad_gy_1_stencil_0_0;
wire  w_grad_gy_1_stencil_1_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_gy_1_stencil_1_0=r8_w_grad_gy_1_stencil_1_0;
assign out_w_grad_gy_1_stencil_0_0=r8_w_grad_gy_1_stencil_0_0;
assign  r0_w_grad_gy_1_stencil_0_0  =  w_438 ;
assign  r0_w_grad_gy_1_stencil_1_0  =  w_465 ;
assign  r1_w_grad_gy_1_stencil_0_0  =  w_441 ;
assign  r1_w_grad_gy_1_stencil_1_0  =  w_468 ;
assign  r2_w_grad_gy_1_stencil_0_0  =  w_444 ;
assign  r2_w_grad_gy_1_stencil_1_0  =  w_471 ;
assign  r3_w_grad_gy_1_stencil_0_0  =  w_447 ;
assign  r3_w_grad_gy_1_stencil_1_0  =  w_474 ;
assign  r4_w_grad_gy_1_stencil_0_0  =  w_450 ;
assign  r4_w_grad_gy_1_stencil_1_0  =  w_477 ;
assign  r5_w_grad_gy_1_stencil_0_0  =  w_453 ;
assign  r5_w_grad_gy_1_stencil_1_0  =  w_480 ;
assign  r6_w_grad_gy_1_stencil_0_0  =  w_456 ;
assign  r6_w_grad_gy_1_stencil_1_0  =  w_483 ;
assign  r7_w_grad_gy_1_stencil_0_0  =  w_459 ;
assign  r7_w_grad_gy_1_stencil_1_0  =  w_486 ;
assign  r8_w_grad_gy_1_stencil_0_0  =  w_462 ;
assign  r8_w_grad_gy_1_stencil_1_0  =  w_489 ;
assign  w_436  = 1'b0;
assign  w_437  =  w_grad_yy_1_stencil_0_0 ;
ADD_16b_pe add_0 (
  .a(w_436),
  .b(w_437),
  .c(w_438),
  .clk(clk)
);
assign  w_439  =  r0_w_grad_gy_1_stencil_0_0 ;
assign  w_440  =  w_grad_yy_1_stencil_1_0 ;
ADD_16b_pe add_1 (
  .a(w_439),
  .b(w_440),
  .c(w_441),
  .clk(clk)
);
assign  w_442  =  r1_w_grad_gy_1_stencil_0_0 ;
assign  w_443  =  w_grad_yy_1_stencil_2_0 ;
ADD_16b_pe add_2 (
  .a(w_443),
  .b(w_442),
  .c(w_444),
  .clk(clk)
);
assign  w_445  =  r2_w_grad_gy_1_stencil_0_0 ;
assign  w_446  =  w_grad_yy_1_stencil_0_1 ;
ADD_16b_pe add_3 (
  .a(w_446),
  .b(w_445),
  .c(w_447),
  .clk(clk)
);
assign  w_448  =  r3_w_grad_gy_1_stencil_0_0 ;
assign  w_449  =  w_grad_yy_1_stencil_1_1 ;
ADD_16b_pe add_4 (
  .a(w_449),
  .b(w_448),
  .c(w_450),
  .clk(clk)
);
assign  w_451  =  r4_w_grad_gy_1_stencil_0_0 ;
assign  w_452  =  w_grad_yy_1_stencil_2_1 ;
ADD_16b_pe add_5 (
  .a(w_451),
  .b(w_452),
  .c(w_453),
  .clk(clk)
);
assign  w_454  =  r5_w_grad_gy_1_stencil_0_0 ;
assign  w_455  =  w_grad_yy_1_stencil_0_2 ;
ADD_16b_pe add_6 (
  .a(w_454),
  .b(w_455),
  .c(w_456),
  .clk(clk)
);
assign  w_457  =  r6_w_grad_gy_1_stencil_0_0 ;
assign  w_458  =  w_grad_yy_1_stencil_1_2 ;
ADD_16b_pe add_7 (
  .a(w_457),
  .b(w_458),
  .c(w_459),
  .clk(clk)
);
assign  w_460  =  r7_w_grad_gy_1_stencil_0_0 ;
assign  w_461  =  w_grad_yy_1_stencil_2_2 ;
ADD_16b_pe add_8 (
  .a(w_461),
  .b(w_460),
  .c(w_462),
  .clk(clk)
);
assign  w_463  = 1'b0;
assign  w_464  =  w_grad_yy_1_stencil_1_0 ;
ADD_16b_pe add_9 (
  .a(w_464),
  .b(w_463),
  .c(w_465),
  .clk(clk)
);
assign  w_466  =  r0_w_grad_gy_1_stencil_1_0 ;
assign  w_467  =  w_grad_yy_1_stencil_2_0 ;
ADD_16b_pe add_10 (
  .a(w_467),
  .b(w_466),
  .c(w_468),
  .clk(clk)
);
assign  w_469  =  r1_w_grad_gy_1_stencil_1_0 ;
assign  w_470  =  w_grad_yy_1_stencil_3_0 ;
ADD_16b_pe add_11 (
  .a(w_469),
  .b(w_470),
  .c(w_471),
  .clk(clk)
);
assign  w_472  =  r2_w_grad_gy_1_stencil_1_0 ;
assign  w_473  =  w_grad_yy_1_stencil_1_1 ;
ADD_16b_pe add_12 (
  .a(w_472),
  .b(w_473),
  .c(w_474),
  .clk(clk)
);
assign  w_475  =  r3_w_grad_gy_1_stencil_1_0 ;
assign  w_476  =  w_grad_yy_1_stencil_2_1 ;
ADD_16b_pe add_13 (
  .a(w_476),
  .b(w_475),
  .c(w_477),
  .clk(clk)
);
assign  w_478  =  r4_w_grad_gy_1_stencil_1_0 ;
assign  w_479  =  w_grad_yy_1_stencil_3_1 ;
ADD_16b_pe add_14 (
  .a(w_478),
  .b(w_479),
  .c(w_480),
  .clk(clk)
);
assign  w_481  =  r5_w_grad_gy_1_stencil_1_0 ;
assign  w_482  =  w_grad_yy_1_stencil_1_2 ;
ADD_16b_pe add_15 (
  .a(w_482),
  .b(w_481),
  .c(w_483),
  .clk(clk)
);
assign  w_484  =  r6_w_grad_gy_1_stencil_1_0 ;
assign  w_485  =  w_grad_yy_1_stencil_2_2 ;
ADD_16b_pe add_16 (
  .a(w_485),
  .b(w_484),
  .c(w_486),
  .clk(clk)
);
assign  w_487  =  r7_w_grad_gy_1_stencil_1_0 ;
assign  w_488  =  w_grad_yy_1_stencil_3_2 ;
ADD_16b_pe add_17 (
  .a(w_487),
  .b(w_488),
  .c(w_489),
  .clk(clk)
);
assign  w_grad_gy_1_stencil_0_0  = 1'b0;
assign  w_grad_gy_1_stencil_1_0  = 1'b0;

endmodule







module kernel__grad_yy_1_stencil_update_stream(
//Inputs
  w_grad_y_1_stencil_0_0,
  w_grad_y_1_stencil_1_0,
//Outputs
  out_w_grad_yy_1_stencil_0_0,
  out_w_grad_yy_1_stencil_1_0,

  clk
);

//Inputs
input  w_grad_y_1_stencil_1_0;
input  w_grad_y_1_stencil_0_0;
//Outputs
output  out_w_grad_yy_1_stencil_1_0;
output  out_w_grad_yy_1_stencil_0_0;

input  clk;


wire  w_430;
wire  w_431;
wire  w_432;
wire  w_433;
wire  w_434;
wire  w_435;
wire  w_grad_yy_1_stencil_0_0;
wire  w_grad_yy_1_stencil_1_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_yy_1_stencil_1_0=w_grad_yy_1_stencil_1_0;
assign out_w_grad_yy_1_stencil_0_0=w_grad_yy_1_stencil_0_0;
assign  w_430  =  w_grad_y_1_stencil_0_0 ;
assign  w_431  =  w_430 ;
MULT_16b_pe mult_0 (
  .a(w_431),
  .b(1'b0),
  .c(w_432),
  .clk(clk)
);
assign  w_433  =  w_grad_y_1_stencil_1_0 ;
assign  w_434  =  w_433 ;
MULT_16b_pe mult_1 (
  .a(w_434),
  .b(1'b0),
  .c(w_435),
  .clk(clk)
);
assign  w_grad_yy_1_stencil_0_0  =  w_432 ;
assign  w_grad_yy_1_stencil_1_0  =  w_435 ;

endmodule







module kernel__hw_output_1_stencil_stream(
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
  w_p2_cim_stencil_3_0,
  w_p2_cim_stencil_3_1,
  w_p2_cim_stencil_3_2,
//Outputs
  out_w_hw_output_1_stencil_1_0,
  out_w_hw_output_1_stencil_packed,

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
input  w_p2_cim_stencil_3_2;
input  w_p2_cim_stencil_3_0;
input  w_p2_cim_stencil_3_1;
//Outputs
output  out_w_hw_output_1_stencil_packed;
output  out_w_hw_output_1_stencil_1_0;

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
wire  w_hw_output_1_stencil_0_0;
wire  w_hw_output_1_stencil_1_0;
wire  w_hw_output_1_stencil_packed;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_hw_output_1_stencil_packed=w_hw_output_1_stencil_packed;
assign out_w_hw_output_1_stencil_1_0=w_hw_output_1_stencil_1_0;
assign  w_568  =  w_p2_cim_stencil_1_1 ;
assign  w_569  = 1'b0;
assign  w_570  = 1'b0;
assign  w_571  =  w_p2_cim_stencil_0_0 ;
assign  w_572  =  w_p2_cim_stencil_1_0 ;
MAX_16b_pe max_0 (
  .a(w_572),
  .b(w_571),
  .c(w_573),
  .clk(clk)
);
assign  w_574  =  w_p2_cim_stencil_2_0 ;
MAX_16b_pe max_1 (
  .a(w_574),
  .b(w_573),
  .c(w_575),
  .clk(clk)
);
assign  w_576  =  w_p2_cim_stencil_0_1 ;
MAX_16b_pe max_2 (
  .a(w_576),
  .b(w_575),
  .c(w_577),
  .clk(clk)
);
assign  w_578  =  w_p2_cim_stencil_2_1 ;
MAX_16b_pe max_3 (
  .a(w_577),
  .b(w_578),
  .c(w_579),
  .clk(clk)
);
assign  w_580  =  w_p2_cim_stencil_0_2 ;
MAX_16b_pe max_4 (
  .a(w_580),
  .b(w_579),
  .c(w_581),
  .clk(clk)
);
assign  w_582  =  w_p2_cim_stencil_1_2 ;
MAX_16b_pe max_5 (
  .a(w_582),
  .b(w_581),
  .c(w_583),
  .clk(clk)
);
assign  w_584  =  w_p2_cim_stencil_2_2 ;
MAX_16b_pe max_6 (
  .a(w_584),
  .b(w_583),
  .c(w_585),
  .clk(clk)
);
LT_16b_pe lt_7 (
  .a(w_568),
  .b(w_585),
  .c(w_586),
  .clk(clk)
);
LTE_16b_pe lte_8 (
  .a(1'b0),
  .b(w_568),
  .c(w_587),
  .clk(clk)
);
AND_16b_pe and_9 (
  .a(w_586),
  .b(w_587),
  .c(w_588),
  .clk(clk)
);
MUX_16b_pe mux_10 (
  .a(w_569),
  .b(w_588),
  .s(w_570),
  .c(w_589),
  .clk(clk)
);
assign  w_590  =  w_p2_cim_stencil_2_1 ;
assign  w_591  = 1'b0;
assign  w_592  = 1'b0;
assign  w_593  =  w_p2_cim_stencil_1_0 ;
assign  w_594  =  w_p2_cim_stencil_2_0 ;
MAX_16b_pe max_11 (
  .a(w_594),
  .b(w_593),
  .c(w_595),
  .clk(clk)
);
assign  w_596  =  w_p2_cim_stencil_3_0 ;
MAX_16b_pe max_12 (
  .a(w_595),
  .b(w_596),
  .c(w_597),
  .clk(clk)
);
assign  w_598  =  w_p2_cim_stencil_1_1 ;
MAX_16b_pe max_13 (
  .a(w_597),
  .b(w_598),
  .c(w_599),
  .clk(clk)
);
assign  w_600  =  w_p2_cim_stencil_3_1 ;
MAX_16b_pe max_14 (
  .a(w_599),
  .b(w_600),
  .c(w_601),
  .clk(clk)
);
assign  w_602  =  w_p2_cim_stencil_1_2 ;
MAX_16b_pe max_15 (
  .a(w_601),
  .b(w_602),
  .c(w_603),
  .clk(clk)
);
assign  w_604  =  w_p2_cim_stencil_2_2 ;
MAX_16b_pe max_16 (
  .a(w_604),
  .b(w_603),
  .c(w_605),
  .clk(clk)
);
assign  w_606  =  w_p2_cim_stencil_3_2 ;
MAX_16b_pe max_17 (
  .a(w_605),
  .b(w_606),
  .c(w_607),
  .clk(clk)
);
LT_16b_pe lt_18 (
  .a(w_607),
  .b(w_590),
  .c(w_608),
  .clk(clk)
);
LTE_16b_pe lte_19 (
  .a(1'b0),
  .b(w_590),
  .c(w_609),
  .clk(clk)
);
AND_16b_pe and_20 (
  .a(w_609),
  .b(w_608),
  .c(w_610),
  .clk(clk)
);
MUX_16b_pe mux_21 (
  .a(w_591),
  .b(w_610),
  .s(w_592),
  .c(w_611),
  .clk(clk)
);
assign  w_hw_output_1_stencil_0_0  =  w_589 ;
assign  w_hw_output_1_stencil_1_0  =  w_611 ;
assign  w_hw_output_1_stencil_packed  =  w_hw_output_1_stencil_0_0 ;

endmodule







module kernel__grad_gxy_1_stencil_stream(
//Inputs
  w_grad_xy_1_stencil_0_0,
  w_grad_xy_1_stencil_0_1,
  w_grad_xy_1_stencil_0_2,
  w_grad_xy_1_stencil_1_0,
  w_grad_xy_1_stencil_1_1,
  w_grad_xy_1_stencil_1_2,
  w_grad_xy_1_stencil_2_0,
  w_grad_xy_1_stencil_2_1,
  w_grad_xy_1_stencil_2_2,
  w_grad_xy_1_stencil_3_0,
  w_grad_xy_1_stencil_3_1,
  w_grad_xy_1_stencil_3_2,
//Outputs
  out_w_grad_gxy_1_stencil_0_0,
  out_w_grad_gxy_1_stencil_1_0,

  clk
);

//Inputs
input  w_grad_xy_1_stencil_1_2;
input  w_grad_xy_1_stencil_1_1;
input  w_grad_xy_1_stencil_1_0;
input  w_grad_xy_1_stencil_0_2;
input  w_grad_xy_1_stencil_0_0;
input  w_grad_xy_1_stencil_0_1;
input  w_grad_xy_1_stencil_3_1;
input  w_grad_xy_1_stencil_3_0;
input  w_grad_xy_1_stencil_3_2;
input  w_grad_xy_1_stencil_2_0;
input  w_grad_xy_1_stencil_2_1;
input  w_grad_xy_1_stencil_2_2;
//Outputs
output  out_w_grad_gxy_1_stencil_0_0;
output  out_w_grad_gxy_1_stencil_1_0;

input  clk;


wire  r0_w_grad_gxy_1_stencil_0_0;
wire  r0_w_grad_gxy_1_stencil_1_0;
wire  r1_w_grad_gxy_1_stencil_0_0;
wire  r1_w_grad_gxy_1_stencil_1_0;
wire  r2_w_grad_gxy_1_stencil_0_0;
wire  r2_w_grad_gxy_1_stencil_1_0;
wire  r3_w_grad_gxy_1_stencil_0_0;
wire  r3_w_grad_gxy_1_stencil_1_0;
wire  r4_w_grad_gxy_1_stencil_0_0;
wire  r4_w_grad_gxy_1_stencil_1_0;
wire  r5_w_grad_gxy_1_stencil_0_0;
wire  r5_w_grad_gxy_1_stencil_1_0;
wire  r6_w_grad_gxy_1_stencil_0_0;
wire  r6_w_grad_gxy_1_stencil_1_0;
wire  r7_w_grad_gxy_1_stencil_0_0;
wire  r7_w_grad_gxy_1_stencil_1_0;
wire  r8_w_grad_gxy_1_stencil_0_0;
wire  r8_w_grad_gxy_1_stencil_1_0;
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
wire  w_grad_gxy_1_stencil_0_0;
wire  w_grad_gxy_1_stencil_1_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_gxy_1_stencil_0_0=r8_w_grad_gxy_1_stencil_0_0;
assign out_w_grad_gxy_1_stencil_1_0=r8_w_grad_gxy_1_stencil_1_0;
assign  r0_w_grad_gxy_1_stencil_0_0  =  w_378 ;
assign  r0_w_grad_gxy_1_stencil_1_0  =  w_405 ;
assign  r1_w_grad_gxy_1_stencil_0_0  =  w_381 ;
assign  r1_w_grad_gxy_1_stencil_1_0  =  w_408 ;
assign  r2_w_grad_gxy_1_stencil_0_0  =  w_384 ;
assign  r2_w_grad_gxy_1_stencil_1_0  =  w_411 ;
assign  r3_w_grad_gxy_1_stencil_0_0  =  w_387 ;
assign  r3_w_grad_gxy_1_stencil_1_0  =  w_414 ;
assign  r4_w_grad_gxy_1_stencil_0_0  =  w_390 ;
assign  r4_w_grad_gxy_1_stencil_1_0  =  w_417 ;
assign  r5_w_grad_gxy_1_stencil_0_0  =  w_393 ;
assign  r5_w_grad_gxy_1_stencil_1_0  =  w_420 ;
assign  r6_w_grad_gxy_1_stencil_0_0  =  w_396 ;
assign  r6_w_grad_gxy_1_stencil_1_0  =  w_423 ;
assign  r7_w_grad_gxy_1_stencil_0_0  =  w_399 ;
assign  r7_w_grad_gxy_1_stencil_1_0  =  w_426 ;
assign  r8_w_grad_gxy_1_stencil_0_0  =  w_402 ;
assign  r8_w_grad_gxy_1_stencil_1_0  =  w_429 ;
assign  w_376  = 1'b0;
assign  w_377  =  w_grad_xy_1_stencil_0_0 ;
ADD_16b_pe add_0 (
  .a(w_377),
  .b(w_376),
  .c(w_378),
  .clk(clk)
);
assign  w_379  =  r0_w_grad_gxy_1_stencil_0_0 ;
assign  w_380  =  w_grad_xy_1_stencil_1_0 ;
ADD_16b_pe add_1 (
  .a(w_380),
  .b(w_379),
  .c(w_381),
  .clk(clk)
);
assign  w_382  =  r1_w_grad_gxy_1_stencil_0_0 ;
assign  w_383  =  w_grad_xy_1_stencil_2_0 ;
ADD_16b_pe add_2 (
  .a(w_382),
  .b(w_383),
  .c(w_384),
  .clk(clk)
);
assign  w_385  =  r2_w_grad_gxy_1_stencil_0_0 ;
assign  w_386  =  w_grad_xy_1_stencil_0_1 ;
ADD_16b_pe add_3 (
  .a(w_385),
  .b(w_386),
  .c(w_387),
  .clk(clk)
);
assign  w_388  =  r3_w_grad_gxy_1_stencil_0_0 ;
assign  w_389  =  w_grad_xy_1_stencil_1_1 ;
ADD_16b_pe add_4 (
  .a(w_388),
  .b(w_389),
  .c(w_390),
  .clk(clk)
);
assign  w_391  =  r4_w_grad_gxy_1_stencil_0_0 ;
assign  w_392  =  w_grad_xy_1_stencil_2_1 ;
ADD_16b_pe add_5 (
  .a(w_392),
  .b(w_391),
  .c(w_393),
  .clk(clk)
);
assign  w_394  =  r5_w_grad_gxy_1_stencil_0_0 ;
assign  w_395  =  w_grad_xy_1_stencil_0_2 ;
ADD_16b_pe add_6 (
  .a(w_395),
  .b(w_394),
  .c(w_396),
  .clk(clk)
);
assign  w_397  =  r6_w_grad_gxy_1_stencil_0_0 ;
assign  w_398  =  w_grad_xy_1_stencil_1_2 ;
ADD_16b_pe add_7 (
  .a(w_397),
  .b(w_398),
  .c(w_399),
  .clk(clk)
);
assign  w_400  =  r7_w_grad_gxy_1_stencil_0_0 ;
assign  w_401  =  w_grad_xy_1_stencil_2_2 ;
ADD_16b_pe add_8 (
  .a(w_401),
  .b(w_400),
  .c(w_402),
  .clk(clk)
);
assign  w_403  = 1'b0;
assign  w_404  =  w_grad_xy_1_stencil_1_0 ;
ADD_16b_pe add_9 (
  .a(w_404),
  .b(w_403),
  .c(w_405),
  .clk(clk)
);
assign  w_406  =  r0_w_grad_gxy_1_stencil_1_0 ;
assign  w_407  =  w_grad_xy_1_stencil_2_0 ;
ADD_16b_pe add_10 (
  .a(w_407),
  .b(w_406),
  .c(w_408),
  .clk(clk)
);
assign  w_409  =  r1_w_grad_gxy_1_stencil_1_0 ;
assign  w_410  =  w_grad_xy_1_stencil_3_0 ;
ADD_16b_pe add_11 (
  .a(w_410),
  .b(w_409),
  .c(w_411),
  .clk(clk)
);
assign  w_412  =  r2_w_grad_gxy_1_stencil_1_0 ;
assign  w_413  =  w_grad_xy_1_stencil_1_1 ;
ADD_16b_pe add_12 (
  .a(w_412),
  .b(w_413),
  .c(w_414),
  .clk(clk)
);
assign  w_415  =  r3_w_grad_gxy_1_stencil_1_0 ;
assign  w_416  =  w_grad_xy_1_stencil_2_1 ;
ADD_16b_pe add_13 (
  .a(w_415),
  .b(w_416),
  .c(w_417),
  .clk(clk)
);
assign  w_418  =  r4_w_grad_gxy_1_stencil_1_0 ;
assign  w_419  =  w_grad_xy_1_stencil_3_1 ;
ADD_16b_pe add_14 (
  .a(w_418),
  .b(w_419),
  .c(w_420),
  .clk(clk)
);
assign  w_421  =  r5_w_grad_gxy_1_stencil_1_0 ;
assign  w_422  =  w_grad_xy_1_stencil_1_2 ;
ADD_16b_pe add_15 (
  .a(w_421),
  .b(w_422),
  .c(w_423),
  .clk(clk)
);
assign  w_424  =  r6_w_grad_gxy_1_stencil_1_0 ;
assign  w_425  =  w_grad_xy_1_stencil_2_2 ;
ADD_16b_pe add_16 (
  .a(w_425),
  .b(w_424),
  .c(w_426),
  .clk(clk)
);
assign  w_427  =  r7_w_grad_gxy_1_stencil_1_0 ;
assign  w_428  =  w_grad_xy_1_stencil_3_2 ;
ADD_16b_pe add_17 (
  .a(w_428),
  .b(w_427),
  .c(w_429),
  .clk(clk)
);
assign  w_grad_gxy_1_stencil_0_0  = 1'b0;
assign  w_grad_gxy_1_stencil_1_0  = 1'b0;

endmodule







module kernel__grad_y_1_stencil_stream(
//Inputs
  w_padded_1_stencil_0_0,
  w_padded_1_stencil_0_2,
  w_padded_1_stencil_1_0,
  w_padded_1_stencil_1_2,
  w_padded_1_stencil_2_0,
  w_padded_1_stencil_2_2,
  w_padded_1_stencil_3_0,
  w_padded_1_stencil_3_2,
//Outputs
  out_w_grad_y_1_stencil_0_0,
  out_w_grad_y_1_stencil_1_0,

  clk
);

//Inputs
input  w_padded_1_stencil_3_0;
input  w_padded_1_stencil_3_2;
input  w_padded_1_stencil_2_0;
input  w_padded_1_stencil_2_2;
input  w_padded_1_stencil_1_2;
input  w_padded_1_stencil_1_0;
input  w_padded_1_stencil_0_2;
input  w_padded_1_stencil_0_0;
//Outputs
output  out_w_grad_y_1_stencil_1_0;
output  out_w_grad_y_1_stencil_0_0;

input  clk;


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
wire  w_grad_y_1_stencil_0_0;
wire  w_grad_y_1_stencil_1_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_y_1_stencil_1_0=w_grad_y_1_stencil_1_0;
assign out_w_grad_y_1_stencil_0_0=w_grad_y_1_stencil_0_0;
assign  w_326  =  w_padded_1_stencil_0_2 ;
assign  w_327  =  w_326 ;
assign  w_328  =  w_padded_1_stencil_0_0 ;
assign  w_329  =  w_328 ;
SUB_16b_pe sub_0 (
  .a(w_329),
  .b(w_327),
  .c(w_330),
  .clk(clk)
);
assign  w_331  =  w_padded_1_stencil_1_2 ;
assign  w_332  =  w_331 ;
assign  w_333  = 1'b0;
MULT_16b_pe mult_1 (
  .a(w_333),
  .b(w_332),
  .c(w_334),
  .clk(clk)
);
ADD_16b_pe add_2 (
  .a(w_330),
  .b(w_334),
  .c(w_335),
  .clk(clk)
);
assign  w_336  =  w_padded_1_stencil_1_0 ;
assign  w_337  =  w_336 ;
MULT_16b_pe mult_3 (
  .a(w_333),
  .b(w_337),
  .c(w_338),
  .clk(clk)
);
SUB_16b_pe sub_4 (
  .a(w_338),
  .b(w_335),
  .c(w_339),
  .clk(clk)
);
assign  w_340  =  w_padded_1_stencil_2_2 ;
assign  w_341  =  w_340 ;
ADD_16b_pe add_5 (
  .a(w_339),
  .b(w_341),
  .c(w_342),
  .clk(clk)
);
assign  w_343  =  w_padded_1_stencil_2_0 ;
assign  w_344  =  w_343 ;
SUB_16b_pe sub_6 (
  .a(w_344),
  .b(w_342),
  .c(w_345),
  .clk(clk)
);
assign  w_346  =  w_padded_1_stencil_1_2 ;
assign  w_347  =  w_346 ;
assign  w_348  =  w_padded_1_stencil_1_0 ;
assign  w_349  =  w_348 ;
SUB_16b_pe sub_7 (
  .a(w_347),
  .b(w_349),
  .c(w_350),
  .clk(clk)
);
assign  w_351  =  w_padded_1_stencil_2_2 ;
assign  w_352  =  w_351 ;
assign  w_353  = 1'b0;
MULT_16b_pe mult_8 (
  .a(w_353),
  .b(w_352),
  .c(w_354),
  .clk(clk)
);
ADD_16b_pe add_9 (
  .a(w_350),
  .b(w_354),
  .c(w_355),
  .clk(clk)
);
assign  w_356  =  w_padded_1_stencil_2_0 ;
assign  w_357  =  w_356 ;
MULT_16b_pe mult_10 (
  .a(w_353),
  .b(w_357),
  .c(w_358),
  .clk(clk)
);
SUB_16b_pe sub_11 (
  .a(w_358),
  .b(w_355),
  .c(w_359),
  .clk(clk)
);
assign  w_360  =  w_padded_1_stencil_3_2 ;
assign  w_361  =  w_360 ;
ADD_16b_pe add_12 (
  .a(w_359),
  .b(w_361),
  .c(w_362),
  .clk(clk)
);
assign  w_363  =  w_padded_1_stencil_3_0 ;
assign  w_364  =  w_363 ;
SUB_16b_pe sub_13 (
  .a(w_364),
  .b(w_362),
  .c(w_365),
  .clk(clk)
);
assign  w_grad_y_1_stencil_0_0  =  w_345 ;
assign  w_grad_y_1_stencil_1_0  =  w_365 ;

endmodule







module kernel__grad_xy_1_stencil_update_stream(
//Inputs
  w_grad_x_1_stencil_0_0,
  w_grad_x_1_stencil_1_0,
  w_grad_y_1_stencil_0_0,
  w_grad_y_1_stencil_1_0,
//Outputs
  out_w_grad_xy_1_stencil_0_0,
  out_w_grad_xy_1_stencil_1_0,

  clk
);

//Inputs
input  w_grad_x_1_stencil_0_0;
input  w_grad_y_1_stencil_1_0;
input  w_grad_x_1_stencil_1_0;
input  w_grad_y_1_stencil_0_0;
//Outputs
output  out_w_grad_xy_1_stencil_0_0;
output  out_w_grad_xy_1_stencil_1_0;

input  clk;


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
wire  w_grad_xy_1_stencil_0_0;
wire  w_grad_xy_1_stencil_1_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_grad_xy_1_stencil_0_0=w_grad_xy_1_stencil_0_0;
assign out_w_grad_xy_1_stencil_1_0=w_grad_xy_1_stencil_1_0;
assign  w_366  =  w_grad_x_1_stencil_0_0 ;
assign  w_367  =  w_366 ;
assign  w_368  =  w_grad_y_1_stencil_0_0 ;
assign  w_369  =  w_368 ;
MULT_16b_pe mult_0 (
  .a(w_367),
  .b(w_369),
  .c(w_370),
  .clk(clk)
);
assign  w_371  =  w_grad_x_1_stencil_1_0 ;
assign  w_372  =  w_371 ;
assign  w_373  =  w_grad_y_1_stencil_1_0 ;
assign  w_374  =  w_373 ;
MULT_16b_pe mult_1 (
  .a(w_374),
  .b(w_372),
  .c(w_375),
  .clk(clk)
);
assign  w_grad_xy_1_stencil_0_0  =  w_370 ;
assign  w_grad_xy_1_stencil_1_0  =  w_375 ;

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


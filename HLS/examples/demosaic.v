// Source:  /home/tema8/projects/Halide-HLS/apps/hls_examples/demosaic_hls/hls_target.cpp 

module top(
//Inputs
  w_padded_1_stencil_update_stream_0_0_8b,

//Outputs
  w_hw_output_1_stencil_stream_0_0_0_8b,
  w_hw_output_1_stencil_stream_1_0_0_8b,
  w_hw_output_1_stencil_stream_2_0_0_8b,

  clk
);

//Inputs
input    w_padded_1_stencil_update_stream_0_0_8b;

//Outputs
output   w_hw_output_1_stencil_stream_0_0_0_8b;
output   w_hw_output_1_stencil_stream_1_0_0_8b;
output   w_hw_output_1_stencil_stream_2_0_0_8b;

input   clk;

wire   w_lowpass_x_1_stencil_stream_0_0_0_8b;
wire   w_lowpass_x_1_stencil_stream_1_0_0_8b;
wire   w_lowpass_x_1_stencil_stream_2_0_0_8b;

wire   w_padded_1_stencil_stream_0_0_8b;
wire   w_padded_1_stencil_stream_0_1_8b;
wire   w_padded_1_stencil_stream_0_2_8b;
wire   w_padded_1_stencil_stream_1_0_8b;
wire   w_padded_1_stencil_stream_1_1_8b;
wire   w_padded_1_stencil_stream_1_2_8b;
wire   w_padded_1_stencil_stream_2_0_8b;
wire   w_padded_1_stencil_stream_2_1_8b;
wire   w_padded_1_stencil_stream_2_2_8b;

wire   w_demosaic_1_stencil_stream_0_0_0_8b;
wire   w_demosaic_1_stencil_stream_0_0_1_8b;
wire   w_demosaic_1_stencil_stream_0_1_0_8b;
wire   w_demosaic_1_stencil_stream_0_1_1_8b;
wire   w_demosaic_1_stencil_stream_1_0_0_8b;
wire   w_demosaic_1_stencil_stream_1_0_1_8b;
wire   w_demosaic_1_stencil_stream_1_1_0_8b;
wire   w_demosaic_1_stencil_stream_1_1_1_8b;
wire   w_demosaic_1_stencil_stream_2_0_0_8b;
wire   w_demosaic_1_stencil_stream_2_0_1_8b;
wire   w_demosaic_1_stencil_stream_2_1_0_8b;
wire   w_demosaic_1_stencil_stream_2_1_1_8b;

wire   w_demosaic_1_stencil_update_stream_0_0_0_8b;
wire   w_demosaic_1_stencil_update_stream_1_0_0_8b;
wire   w_demosaic_1_stencil_update_stream_2_0_0_8b;

wire   gnd;
assign gnd=1'b0;

kernel__lowpass_x_1_stencil_stream KERN__lowpass_x_1_stencil_stream (
    .w_demosaic_1_stencil_0_0_0_8b(w_demosaic_1_stencil_stream_0_0_0_8b),
    .w_demosaic_1_stencil_0_0_1_8b(w_demosaic_1_stencil_stream_0_0_1_8b),
    .w_demosaic_1_stencil_0_1_0_8b(w_demosaic_1_stencil_stream_0_1_0_8b),
    .w_demosaic_1_stencil_0_1_1_8b(w_demosaic_1_stencil_stream_0_1_1_8b),
    .w_demosaic_1_stencil_1_0_0_8b(w_demosaic_1_stencil_stream_1_0_0_8b),
    .w_demosaic_1_stencil_1_0_1_8b(w_demosaic_1_stencil_stream_1_0_1_8b),
    .w_demosaic_1_stencil_1_1_0_8b(w_demosaic_1_stencil_stream_1_1_0_8b),
    .w_demosaic_1_stencil_1_1_1_8b(w_demosaic_1_stencil_stream_1_1_1_8b),
    .w_demosaic_1_stencil_2_0_0_8b(w_demosaic_1_stencil_stream_2_0_0_8b),
    .w_demosaic_1_stencil_2_0_1_8b(w_demosaic_1_stencil_stream_2_0_1_8b),
    .w_demosaic_1_stencil_2_1_0_8b(w_demosaic_1_stencil_stream_2_1_0_8b),
    .w_demosaic_1_stencil_2_1_1_8b(w_demosaic_1_stencil_stream_2_1_1_8b),

    .out_w_lowpass_x_1_stencil_0_0_0_8b(w_lowpass_x_1_stencil_stream_0_0_0_8b),
    .out_w_lowpass_x_1_stencil_1_0_0_8b(w_lowpass_x_1_stencil_stream_1_0_0_8b),
    .out_w_lowpass_x_1_stencil_2_0_0_8b(w_lowpass_x_1_stencil_stream_2_0_0_8b),

    .clk(clk)
);

LB_3_3_1_8bit_False LB__padded_1_stencil_stream (
    .clk(clk),

    .in0(w_padded_1_stencil_update_stream_0_0_8b),

    .out0(w_padded_1_stencil_stream_0_0_8b),
    .out1(w_padded_1_stencil_stream_0_1_8b),
    .out2(w_padded_1_stencil_stream_0_2_8b),
    .out3(w_padded_1_stencil_stream_1_0_8b),
    .out4(w_padded_1_stencil_stream_1_1_8b),
    .out5(w_padded_1_stencil_stream_1_2_8b),
    .out6(w_padded_1_stencil_stream_2_0_8b),
    .out7(w_padded_1_stencil_stream_2_1_8b),
    .out8(w_padded_1_stencil_stream_2_2_8b)
);

LB_2_2_3_8bit_False LB__demosaic_1_stencil_stream (
    .clk(clk),

    .in0(w_demosaic_1_stencil_update_stream_0_0_0_8b),
    .in1(w_demosaic_1_stencil_update_stream_1_0_0_8b),
    .in2(w_demosaic_1_stencil_update_stream_2_0_0_8b),

    .out0(w_demosaic_1_stencil_stream_0_0_0_8b),
    .out1(w_demosaic_1_stencil_stream_0_0_1_8b),
    .out2(w_demosaic_1_stencil_stream_0_1_0_8b),
    .out3(w_demosaic_1_stencil_stream_0_1_1_8b),
    .out4(w_demosaic_1_stencil_stream_1_0_0_8b),
    .out5(w_demosaic_1_stencil_stream_1_0_1_8b),
    .out6(w_demosaic_1_stencil_stream_1_1_0_8b),
    .out7(w_demosaic_1_stencil_stream_1_1_1_8b),
    .out8(w_demosaic_1_stencil_stream_2_0_0_8b),
    .out9(w_demosaic_1_stencil_stream_2_0_1_8b),
    .out10(w_demosaic_1_stencil_stream_2_1_0_8b),
    .out11(w_demosaic_1_stencil_stream_2_1_1_8b)
);

kernel__demosaic_1_stencil_update_stream KERN__demosaic_1_stencil_update_stream (
    .w_padded_1_stencil_0_0_8b(w_padded_1_stencil_stream_0_0_8b),
    .w_padded_1_stencil_0_1_8b(w_padded_1_stencil_stream_0_1_8b),
    .w_padded_1_stencil_0_2_8b(w_padded_1_stencil_stream_0_2_8b),
    .w_padded_1_stencil_1_0_8b(w_padded_1_stencil_stream_1_0_8b),
    .w_padded_1_stencil_1_1_8b(w_padded_1_stencil_stream_1_1_8b),
    .w_padded_1_stencil_1_2_8b(w_padded_1_stencil_stream_1_2_8b),
    .w_padded_1_stencil_2_0_8b(w_padded_1_stencil_stream_2_0_8b),
    .w_padded_1_stencil_2_1_8b(w_padded_1_stencil_stream_2_1_8b),
    .w_padded_1_stencil_2_2_8b(w_padded_1_stencil_stream_2_2_8b),
    .w_demosaic_1_x___scan_dim_0_16b(gnd),
    .w_demosaic_1_y___scan_dim_1_16b(gnd),

    .out_w_demosaic_1_stencil_0_0_0_8b(w_demosaic_1_stencil_update_stream_0_0_0_8b),
    .out_w_demosaic_1_stencil_1_0_0_8b(w_demosaic_1_stencil_update_stream_1_0_0_8b),
    .out_w_demosaic_1_stencil_2_0_0_8b(w_demosaic_1_stencil_update_stream_2_0_0_8b),

    .clk(clk)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_lowpass_x_1_stencil_0_0_0_8b(w_lowpass_x_1_stencil_stream_0_0_0_8b),
    .w_lowpass_x_1_stencil_1_0_0_8b(w_lowpass_x_1_stencil_stream_1_0_0_8b),
    .w_lowpass_x_1_stencil_2_0_0_8b(w_lowpass_x_1_stencil_stream_2_0_0_8b),

    .out_w_hw_output_1_stencil_1_0_0_8b(w_hw_output_1_stencil_stream_0_0_0_8b),
    .out_w_hw_output_1_stencil_2_0_0_8b(w_hw_output_1_stencil_stream_1_0_0_8b),
    .out_w_hw_output_1_stencil_packed_16b(w_hw_output_1_stencil_stream_2_0_0_8b),

    .clk(clk)
);

endmodule



module kernel__lowpass_x_1_stencil_stream(
//Inputs
  w_demosaic_1_stencil_0_0_0_8b,
  w_demosaic_1_stencil_0_0_1_8b,
  w_demosaic_1_stencil_0_1_0_8b,
  w_demosaic_1_stencil_0_1_1_8b,
  w_demosaic_1_stencil_1_0_0_8b,
  w_demosaic_1_stencil_1_0_1_8b,
  w_demosaic_1_stencil_1_1_0_8b,
  w_demosaic_1_stencil_1_1_1_8b,
  w_demosaic_1_stencil_2_0_0_8b,
  w_demosaic_1_stencil_2_0_1_8b,
  w_demosaic_1_stencil_2_1_0_8b,
  w_demosaic_1_stencil_2_1_1_8b,
//Outputs
  out_w_lowpass_x_1_stencil_0_0_0_8b,
  out_w_lowpass_x_1_stencil_1_0_0_8b,
  out_w_lowpass_x_1_stencil_2_0_0_8b,

  clk
);

//Inputs
input  w_demosaic_1_stencil_0_1_0_8b;
input  w_demosaic_1_stencil_1_1_0_8b;
input  w_demosaic_1_stencil_2_1_0_8b;
input  w_demosaic_1_stencil_2_1_1_8b;
input  w_demosaic_1_stencil_1_0_0_8b;
input  w_demosaic_1_stencil_1_0_1_8b;
input  w_demosaic_1_stencil_1_1_1_8b;
input  w_demosaic_1_stencil_2_0_0_8b;
input  w_demosaic_1_stencil_0_0_1_8b;
input  w_demosaic_1_stencil_0_0_0_8b;
input  w_demosaic_1_stencil_2_0_1_8b;
input  w_demosaic_1_stencil_0_1_1_8b;
//Outputs
output  out_w_lowpass_x_1_stencil_1_0_0_8b;
output  out_w_lowpass_x_1_stencil_0_0_0_8b;
output  out_w_lowpass_x_1_stencil_2_0_0_8b;

input  clk;


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
wire  w_lowpass_x_1_stencil_0_0_0_8b;
wire  w_lowpass_x_1_stencil_1_0_0_8b;
wire  w_lowpass_x_1_stencil_2_0_0_8b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_lowpass_x_1_stencil_1_0_0_8b = w_lowpass_x_1_stencil_1_0_0_8b;
assign out_w_lowpass_x_1_stencil_0_0_0_8b = w_lowpass_x_1_stencil_0_0_0_8b;
assign out_w_lowpass_x_1_stencil_2_0_0_8b = w_lowpass_x_1_stencil_2_0_0_8b;
assign  w_225_16b  =  w_demosaic_1_stencil_0_0_0_8b ;
assign  w_226_16b  =  w_225_16b ;
assign  w_227_16b  =  w_demosaic_1_stencil_0_1_0_8b ;
assign  w_228_16b  =  w_227_16b ;
ADD_16b_pe add_0 (
  .a(w_226_16b),
  .b(w_228_16b),
  .c(w_229_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_1 (
  .a(1'b0),
  .b(w_229_16b),
  .c(w_230_16b),
  .clk(clk)
);
assign  w_231_16b  =  w_230_16b ;
assign  w_232_16b  =  w_231_16b ;
assign  w_233_16b  =  w_demosaic_1_stencil_0_0_1_8b ;
assign  w_234_16b  =  w_233_16b ;
assign  w_235_16b  =  w_demosaic_1_stencil_0_1_1_8b ;
assign  w_236_16b  =  w_235_16b ;
ADD_16b_pe add_2 (
  .a(w_234_16b),
  .b(w_236_16b),
  .c(w_237_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_3 (
  .a(1'b0),
  .b(w_237_16b),
  .c(w_238_16b),
  .clk(clk)
);
assign  w_239_16b  =  w_238_16b ;
assign  w_240_16b  =  w_239_16b ;
ADD_16b_pe add_4 (
  .a(w_232_16b),
  .b(w_240_16b),
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
assign  w_244_16b  =  w_demosaic_1_stencil_1_0_0_8b ;
assign  w_245_16b  =  w_244_16b ;
assign  w_246_16b  =  w_demosaic_1_stencil_1_1_0_8b ;
assign  w_247_16b  =  w_246_16b ;
ADD_16b_pe add_6 (
  .a(w_245_16b),
  .b(w_247_16b),
  .c(w_248_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_7 (
  .a(1'b0),
  .b(w_248_16b),
  .c(w_249_16b),
  .clk(clk)
);
assign  w_250_16b  =  w_249_16b ;
assign  w_251_16b  =  w_250_16b ;
assign  w_252_16b  =  w_demosaic_1_stencil_1_0_1_8b ;
assign  w_253_16b  =  w_252_16b ;
assign  w_254_16b  =  w_demosaic_1_stencil_1_1_1_8b ;
assign  w_255_16b  =  w_254_16b ;
ADD_16b_pe add_8 (
  .a(w_255_16b),
  .b(w_253_16b),
  .c(w_256_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_9 (
  .a(w_256_16b),
  .b(1'b0),
  .c(w_257_16b),
  .clk(clk)
);
assign  w_258_16b  =  w_257_16b ;
assign  w_259_16b  =  w_258_16b ;
ADD_16b_pe add_10 (
  .a(w_259_16b),
  .b(w_251_16b),
  .c(w_260_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(1'b0),
  .b(w_260_16b),
  .c(w_261_16b),
  .clk(clk)
);
assign  w_262_16b  =  w_261_16b ;
assign  w_263_16b  =  w_demosaic_1_stencil_2_0_0_8b ;
assign  w_264_16b  =  w_263_16b ;
assign  w_265_16b  =  w_demosaic_1_stencil_2_1_0_8b ;
assign  w_266_16b  =  w_265_16b ;
ADD_16b_pe add_12 (
  .a(w_266_16b),
  .b(w_264_16b),
  .c(w_267_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_13 (
  .a(1'b0),
  .b(w_267_16b),
  .c(w_268_16b),
  .clk(clk)
);
assign  w_269_16b  =  w_268_16b ;
assign  w_270_16b  =  w_269_16b ;
assign  w_271_16b  =  w_demosaic_1_stencil_2_0_1_8b ;
assign  w_272_16b  =  w_271_16b ;
assign  w_273_16b  =  w_demosaic_1_stencil_2_1_1_8b ;
assign  w_274_16b  =  w_273_16b ;
ADD_16b_pe add_14 (
  .a(w_274_16b),
  .b(w_272_16b),
  .c(w_275_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_15 (
  .a(1'b0),
  .b(w_275_16b),
  .c(w_276_16b),
  .clk(clk)
);
assign  w_277_16b  =  w_276_16b ;
assign  w_278_16b  =  w_277_16b ;
ADD_16b_pe add_16 (
  .a(w_278_16b),
  .b(w_270_16b),
  .c(w_279_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_17 (
  .a(1'b0),
  .b(w_279_16b),
  .c(w_280_16b),
  .clk(clk)
);
assign  w_281_16b  =  w_280_16b ;
assign  w_lowpass_x_1_stencil_0_0_0_8b  =  w_243_16b ;
assign  w_lowpass_x_1_stencil_1_0_0_8b  =  w_262_16b ;
assign  w_lowpass_x_1_stencil_2_0_0_8b  =  w_281_16b ;

endmodule







module kernel__demosaic_1_stencil_update_stream(
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
  w_demosaic_1_x___scan_dim_0_16b,
  w_demosaic_1_y___scan_dim_1_16b,
//Outputs
  out_w_demosaic_1_stencil_0_0_0_8b,
  out_w_demosaic_1_stencil_1_0_0_8b,
  out_w_demosaic_1_stencil_2_0_0_8b,

  clk
);

//Inputs
input  w_demosaic_1_x___scan_dim_0_16b;
input  w_demosaic_1_y___scan_dim_1_16b;
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
output  out_w_demosaic_1_stencil_1_0_0_8b;
output  out_w_demosaic_1_stencil_0_0_0_8b;
output  out_w_demosaic_1_stencil_2_0_0_8b;

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
wire  w_demosaic_1_stencil_0_0_0_8b;
wire  w_demosaic_1_stencil_1_0_0_8b;
wire  w_demosaic_1_stencil_2_0_0_8b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_demosaic_1_stencil_1_0_0_8b = w_demosaic_1_stencil_1_0_0_8b;
assign out_w_demosaic_1_stencil_0_0_0_8b = w_demosaic_1_stencil_0_0_0_8b;
assign out_w_demosaic_1_stencil_2_0_0_8b = w_demosaic_1_stencil_2_0_0_8b;
ADD_16b_pe add_0 (
  .a(w_demosaic_1_x___scan_dim_0_16b),
  .b(1'b0),
  .c(w_128_16b),
  .clk(clk)
);
AND_16b_pe and_1 (
  .a(w_128_16b),
  .b(1'b0),
  .c(w_129_16b),
  .clk(clk)
);
EQ_16b_pe eq_2 (
  .a(w_129_16b),
  .b(1'b0),
  .c(w_130_16b),
  .clk(clk)
);
assign  w_131_16b  =  w_padded_1_stencil_1_1_8b ;
assign  w_132_16b  =  w_padded_1_stencil_0_1_8b ;
assign  w_133_16b  =  w_132_16b ;
assign  w_134_16b  =  w_padded_1_stencil_2_1_8b ;
assign  w_135_16b  =  w_134_16b ;
ADD_16b_pe add_3 (
  .a(w_135_16b),
  .b(w_133_16b),
  .c(w_136_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_4 (
  .a(1'b0),
  .b(w_136_16b),
  .c(w_137_16b),
  .clk(clk)
);
assign  w_138_16b  =  w_137_16b ;
MUX_16b_pe mux_5 (
  .a(w_138_16b),
  .b(w_131_16b),
  .s(w_130_16b),
  .c(w_139_16b),
  .clk(clk)
);
assign  w_140_16b  =  w_padded_1_stencil_1_0_8b ;
assign  w_141_16b  =  w_140_16b ;
assign  w_142_16b  =  w_padded_1_stencil_1_2_8b ;
assign  w_143_16b  =  w_142_16b ;
ADD_16b_pe add_6 (
  .a(w_143_16b),
  .b(w_141_16b),
  .c(w_144_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_7 (
  .a(1'b0),
  .b(w_144_16b),
  .c(w_145_16b),
  .clk(clk)
);
assign  w_146_16b  =  w_145_16b ;
assign  w_147_16b  =  w_padded_1_stencil_0_0_8b ;
assign  w_148_16b  =  w_147_16b ;
assign  w_149_16b  =  w_padded_1_stencil_2_0_8b ;
assign  w_150_16b  =  w_149_16b ;
ADD_16b_pe add_8 (
  .a(w_150_16b),
  .b(w_148_16b),
  .c(w_151_16b),
  .clk(clk)
);
assign  w_152_16b  =  w_padded_1_stencil_0_2_8b ;
assign  w_153_16b  =  w_152_16b ;
ADD_16b_pe add_9 (
  .a(w_151_16b),
  .b(w_153_16b),
  .c(w_154_16b),
  .clk(clk)
);
assign  w_155_16b  =  w_padded_1_stencil_2_2_8b ;
assign  w_156_16b  =  w_155_16b ;
ADD_16b_pe add_10 (
  .a(w_154_16b),
  .b(w_156_16b),
  .c(w_157_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(w_157_16b),
  .b(1'b0),
  .c(w_158_16b),
  .clk(clk)
);
assign  w_159_16b  =  w_158_16b ;
MUX_16b_pe mux_12 (
  .a(w_146_16b),
  .b(w_159_16b),
  .s(w_130_16b),
  .c(w_160_16b),
  .clk(clk)
);
ADD_16b_pe add_13 (
  .a(1'b0),
  .b(w_demosaic_1_y___scan_dim_1_16b),
  .c(w_161_16b),
  .clk(clk)
);
AND_16b_pe and_14 (
  .a(1'b0),
  .b(w_161_16b),
  .c(w_162_16b),
  .clk(clk)
);
EQ_16b_pe eq_15 (
  .a(1'b0),
  .b(w_162_16b),
  .c(w_163_16b),
  .clk(clk)
);
MUX_16b_pe mux_16 (
  .a(w_160_16b),
  .b(w_139_16b),
  .s(w_163_16b),
  .c(w_164_16b),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_demosaic_1_x___scan_dim_0_16b),
  .b(1'b0),
  .c(w_165_16b),
  .clk(clk)
);
AND_16b_pe and_18 (
  .a(1'b0),
  .b(w_165_16b),
  .c(w_166_16b),
  .clk(clk)
);
EQ_16b_pe eq_19 (
  .a(1'b0),
  .b(w_166_16b),
  .c(w_167_16b),
  .clk(clk)
);
assign  w_168_16b  =  w_padded_1_stencil_1_1_8b ;
assign  w_169_16b  =  w_padded_1_stencil_0_1_8b ;
assign  w_170_16b  =  w_169_16b ;
assign  w_171_16b  =  w_padded_1_stencil_2_1_8b ;
assign  w_172_16b  =  w_171_16b ;
ADD_16b_pe add_20 (
  .a(w_172_16b),
  .b(w_170_16b),
  .c(w_173_16b),
  .clk(clk)
);
assign  w_174_16b  =  w_padded_1_stencil_1_0_8b ;
assign  w_175_16b  =  w_174_16b ;
ADD_16b_pe add_21 (
  .a(w_173_16b),
  .b(w_175_16b),
  .c(w_176_16b),
  .clk(clk)
);
assign  w_177_16b  =  w_padded_1_stencil_1_2_8b ;
assign  w_178_16b  =  w_177_16b ;
ADD_16b_pe add_22 (
  .a(w_178_16b),
  .b(w_176_16b),
  .c(w_179_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_23 (
  .a(w_179_16b),
  .b(1'b0),
  .c(w_180_16b),
  .clk(clk)
);
assign  w_181_16b  =  w_180_16b ;
MUX_16b_pe mux_24 (
  .a(w_167_16b),
  .b(w_168_16b),
  .s(w_181_16b),
  .c(w_182_16b),
  .clk(clk)
);
MUX_16b_pe mux_25 (
  .a(w_167_16b),
  .b(w_168_16b),
  .s(w_181_16b),
  .c(w_183_16b),
  .clk(clk)
);
ADD_16b_pe add_26 (
  .a(1'b0),
  .b(w_demosaic_1_y___scan_dim_1_16b),
  .c(w_184_16b),
  .clk(clk)
);
AND_16b_pe and_27 (
  .a(1'b0),
  .b(w_184_16b),
  .c(w_185_16b),
  .clk(clk)
);
EQ_16b_pe eq_28 (
  .a(1'b0),
  .b(w_185_16b),
  .c(w_186_16b),
  .clk(clk)
);
MUX_16b_pe mux_29 (
  .a(w_182_16b),
  .b(w_183_16b),
  .s(w_186_16b),
  .c(w_187_16b),
  .clk(clk)
);
ADD_16b_pe add_30 (
  .a(w_demosaic_1_x___scan_dim_0_16b),
  .b(1'b0),
  .c(w_188_16b),
  .clk(clk)
);
AND_16b_pe and_31 (
  .a(1'b0),
  .b(w_188_16b),
  .c(w_189_16b),
  .clk(clk)
);
EQ_16b_pe eq_32 (
  .a(1'b0),
  .b(w_189_16b),
  .c(w_190_16b),
  .clk(clk)
);
assign  w_191_16b  =  w_padded_1_stencil_0_0_8b ;
assign  w_192_16b  =  w_191_16b ;
assign  w_193_16b  =  w_padded_1_stencil_2_0_8b ;
assign  w_194_16b  =  w_193_16b ;
ADD_16b_pe add_33 (
  .a(w_192_16b),
  .b(w_194_16b),
  .c(w_195_16b),
  .clk(clk)
);
assign  w_196_16b  =  w_padded_1_stencil_0_2_8b ;
assign  w_197_16b  =  w_196_16b ;
ADD_16b_pe add_34 (
  .a(w_195_16b),
  .b(w_197_16b),
  .c(w_198_16b),
  .clk(clk)
);
assign  w_199_16b  =  w_padded_1_stencil_2_2_8b ;
assign  w_200_16b  =  w_199_16b ;
ADD_16b_pe add_35 (
  .a(w_198_16b),
  .b(w_200_16b),
  .c(w_201_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_36 (
  .a(w_201_16b),
  .b(1'b0),
  .c(w_202_16b),
  .clk(clk)
);
assign  w_203_16b  =  w_202_16b ;
assign  w_204_16b  =  w_padded_1_stencil_1_0_8b ;
assign  w_205_16b  =  w_204_16b ;
assign  w_206_16b  =  w_padded_1_stencil_1_2_8b ;
assign  w_207_16b  =  w_206_16b ;
ADD_16b_pe add_37 (
  .a(w_205_16b),
  .b(w_207_16b),
  .c(w_208_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_38 (
  .a(1'b0),
  .b(w_208_16b),
  .c(w_209_16b),
  .clk(clk)
);
assign  w_210_16b  =  w_209_16b ;
MUX_16b_pe mux_39 (
  .a(w_190_16b),
  .b(w_203_16b),
  .s(w_210_16b),
  .c(w_211_16b),
  .clk(clk)
);
assign  w_212_16b  =  w_padded_1_stencil_0_1_8b ;
assign  w_213_16b  =  w_212_16b ;
assign  w_214_16b  =  w_padded_1_stencil_2_1_8b ;
assign  w_215_16b  =  w_214_16b ;
ADD_16b_pe add_40 (
  .a(w_213_16b),
  .b(w_215_16b),
  .c(w_216_16b),
  .clk(clk)
);
LSHIFT_16b_pe lshift_41 (
  .a(1'b0),
  .b(w_216_16b),
  .c(w_217_16b),
  .clk(clk)
);
assign  w_218_16b  =  w_217_16b ;
assign  w_219_16b  =  w_padded_1_stencil_1_1_8b ;
MUX_16b_pe mux_42 (
  .a(w_190_16b),
  .b(w_218_16b),
  .s(w_219_16b),
  .c(w_220_16b),
  .clk(clk)
);
ADD_16b_pe add_43 (
  .a(1'b0),
  .b(w_demosaic_1_y___scan_dim_1_16b),
  .c(w_221_16b),
  .clk(clk)
);
AND_16b_pe and_44 (
  .a(1'b0),
  .b(w_221_16b),
  .c(w_222_16b),
  .clk(clk)
);
EQ_16b_pe eq_45 (
  .a(1'b0),
  .b(w_222_16b),
  .c(w_223_16b),
  .clk(clk)
);
MUX_16b_pe mux_46 (
  .a(w_211_16b),
  .b(w_223_16b),
  .s(w_220_16b),
  .c(w_224_16b),
  .clk(clk)
);
assign  w_demosaic_1_stencil_0_0_0_8b  =  w_164_16b ;
assign  w_demosaic_1_stencil_1_0_0_8b  =  w_187_16b ;
assign  w_demosaic_1_stencil_2_0_0_8b  =  w_224_16b ;

endmodule







module kernel__hw_output_1_stencil_stream(
//Inputs
  w_lowpass_x_1_stencil_0_0_0_8b,
  w_lowpass_x_1_stencil_1_0_0_8b,
  w_lowpass_x_1_stencil_2_0_0_8b,
//Outputs
  out_w_hw_output_1_stencil_1_0_0_8b,
  out_w_hw_output_1_stencil_2_0_0_8b,
  out_w_hw_output_1_stencil_packed_16b,

  clk
);

//Inputs
input  w_lowpass_x_1_stencil_1_0_0_8b;
input  w_lowpass_x_1_stencil_0_0_0_8b;
input  w_lowpass_x_1_stencil_2_0_0_8b;
//Outputs
output  out_w_hw_output_1_stencil_1_0_0_8b;
output  out_w_hw_output_1_stencil_2_0_0_8b;
output  out_w_hw_output_1_stencil_packed_16b;

input  clk;


wire  w_282_16b;
wire  w_283_16b;
wire  w_284_16b;
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
assign  w_282_16b  =  w_lowpass_x_1_stencil_0_0_0_8b ;
assign  w_283_16b  =  w_lowpass_x_1_stencil_1_0_0_8b ;
assign  w_284_16b  =  w_lowpass_x_1_stencil_2_0_0_8b ;
assign  w_hw_output_1_stencil_0_0_0_8b  =  w_282_16b ;
assign  w_hw_output_1_stencil_1_0_0_8b  =  w_283_16b ;
assign  w_hw_output_1_stencil_2_0_0_8b  =  w_284_16b ;
assign  w_hw_output_1_stencil_packed_16b  =  w_hw_output_1_stencil_0_0_0_8b ;

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

    

module EQ_16b_pe(a,b,c,clk);
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

    



module LB_3_3_1_8bit_False (
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

// (3, 3, 1, 8, False)
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

//##// (3, 3, 1, 8, False)
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

endmodule

module LB_2_2_3_8bit_False (
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
    out11
);

// (2, 2, 3, 8, False)
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

//##// (2, 2, 3, 8, False)
    LB_base_2_2_8bit  LB_base_inst0 (
        .clk(clk),
        .inp(in0),
        .out_0_0(out0),
        .out_0_1(out1),
        .out_1_0(out2),
        .out_1_1(out3)
    );

//##// (2, 2, 3, 8, False)
    LB_base_2_2_8bit  LB_base_inst1 (
        .clk(clk),
        .inp(in1),
        .out_0_0(out4),
        .out_0_1(out5),
        .out_1_0(out6),
        .out_1_1(out7)
    );

//##// (2, 2, 3, 8, False)
    LB_base_2_2_8bit  LB_base_inst2 (
        .clk(clk),
        .inp(in2),
        .out_0_0(out8),
        .out_0_1(out9),
        .out_1_0(out10),
        .out_1_1(out11)
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

module LB_base_2_2_8bit (
    clk,

    inp,

    out_0_0,
    out_0_1,
    out_1_0,
    out_1_1
);

    input clk;

    input inp;

    output out_0_0;
    output out_0_1;
    output out_1_0;
    output out_1_1;

    wire sram_out_0;
    wire sram_out_1;

    my_lb1 SRAM_BLOCK (
        .clk (clk),

        .inp_16b (inp),

        .out_0_16b (sram_out_0)

    );


    reg  inp_reg;

    always @(posedge clk) begin

        inp_reg <= inp;
    end

    assign sram_out_1 = inp_reg;


    ShiftReg_base_2_8bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1)
    );


    ShiftReg_base_2_8bit ShiftersRow_1(
        .clk (clk),

        .inp_16b (sram_out_1),

        .out_0_16b (out_1_0),
        .out_1_16b (out_1_1)
    );


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

module ShiftReg_base_2_8bit (
    clk,

    inp_16b,

    out_0_16b,
    out_1_16b
);

    input clk;

    input inp_16b;

    output out_0_16b;
    output out_1_16b;

    reg out_0_16b;
    reg out_1_16b;


    always @(posedge clk) begin
        out_0_16b <= inp_16b;
        out_1_16b <= out_0_16b;
    end

endmodule


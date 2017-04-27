module top(
//Inputs
  w_padded_1_stencil_update_stream_0_0,

//Outputs
  w_hw_output_1_stencil_stream_0_0_0,
  w_hw_output_1_stencil_stream_1_0_0,
  w_hw_output_1_stencil_stream_2_0_0,

  clk
);

//Inputs
input    w_padded_1_stencil_update_stream_0_0;

//Outputs
output   w_hw_output_1_stencil_stream_0_0_0;
output   w_hw_output_1_stencil_stream_1_0_0;
output   w_hw_output_1_stencil_stream_2_0_0;

input   clk;

wire   w_lowpass_x_1_stencil_stream_0_0_0;
wire   w_lowpass_x_1_stencil_stream_1_0_0;
wire   w_lowpass_x_1_stencil_stream_2_0_0;

wire   w_padded_1_stencil_stream_0_0;
wire   w_padded_1_stencil_stream_0_1;
wire   w_padded_1_stencil_stream_0_2;
wire   w_padded_1_stencil_stream_1_0;
wire   w_padded_1_stencil_stream_1_1;
wire   w_padded_1_stencil_stream_1_2;
wire   w_padded_1_stencil_stream_2_0;
wire   w_padded_1_stencil_stream_2_1;
wire   w_padded_1_stencil_stream_2_2;

wire   w_demosaic_1_stencil_stream_0_0_0;
wire   w_demosaic_1_stencil_stream_0_0_1;
wire   w_demosaic_1_stencil_stream_0_1_0;
wire   w_demosaic_1_stencil_stream_0_1_1;
wire   w_demosaic_1_stencil_stream_1_0_0;
wire   w_demosaic_1_stencil_stream_1_0_1;
wire   w_demosaic_1_stencil_stream_1_1_0;
wire   w_demosaic_1_stencil_stream_1_1_1;
wire   w_demosaic_1_stencil_stream_2_0_0;
wire   w_demosaic_1_stencil_stream_2_0_1;
wire   w_demosaic_1_stencil_stream_2_1_0;
wire   w_demosaic_1_stencil_stream_2_1_1;

wire   w_demosaic_1_stencil_update_stream_0_0_0;
wire   w_demosaic_1_stencil_update_stream_1_0_0;
wire   w_demosaic_1_stencil_update_stream_2_0_0;

wire   gnd;
assign gnd=1'b0;

kernel__lowpass_x_1_stencil_stream KERN__lowpass_x_1_stencil_stream (
    .w_demosaic_1_stencil_0_0_0(w_demosaic_1_stencil_stream_0_0_0),
    .w_demosaic_1_stencil_0_0_1(w_demosaic_1_stencil_stream_0_0_1),
    .w_demosaic_1_stencil_0_1_0(w_demosaic_1_stencil_stream_0_1_0),
    .w_demosaic_1_stencil_0_1_1(w_demosaic_1_stencil_stream_0_1_1),
    .w_demosaic_1_stencil_1_0_0(w_demosaic_1_stencil_stream_1_0_0),
    .w_demosaic_1_stencil_1_0_1(w_demosaic_1_stencil_stream_1_0_1),
    .w_demosaic_1_stencil_1_1_0(w_demosaic_1_stencil_stream_1_1_0),
    .w_demosaic_1_stencil_1_1_1(w_demosaic_1_stencil_stream_1_1_1),
    .w_demosaic_1_stencil_2_0_0(w_demosaic_1_stencil_stream_2_0_0),
    .w_demosaic_1_stencil_2_0_1(w_demosaic_1_stencil_stream_2_0_1),
    .w_demosaic_1_stencil_2_1_0(w_demosaic_1_stencil_stream_2_1_0),
    .w_demosaic_1_stencil_2_1_1(w_demosaic_1_stencil_stream_2_1_1),

    .out_w_lowpass_x_1_stencil_0_0_0(w_lowpass_x_1_stencil_stream_0_0_0),
    .out_w_lowpass_x_1_stencil_1_0_0(w_lowpass_x_1_stencil_stream_1_0_0),
    .out_w_lowpass_x_1_stencil_2_0_0(w_lowpass_x_1_stencil_stream_2_0_0),

    .clk(clk)
);

LB_3_3_1_8bit_False LB__padded_1_stencil_stream (
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
    .out8(w_padded_1_stencil_stream_2_2)
);

LB_2_2_3_8bit_False LB__demosaic_1_stencil_stream (
    .clk(clk),

    .in0(w_demosaic_1_stencil_update_stream_0_0_0),
    .in1(w_demosaic_1_stencil_update_stream_1_0_0),
    .in2(w_demosaic_1_stencil_update_stream_2_0_0),

    .out0(w_demosaic_1_stencil_stream_0_0_0),
    .out1(w_demosaic_1_stencil_stream_0_0_1),
    .out2(w_demosaic_1_stencil_stream_0_1_0),
    .out3(w_demosaic_1_stencil_stream_0_1_1),
    .out4(w_demosaic_1_stencil_stream_1_0_0),
    .out5(w_demosaic_1_stencil_stream_1_0_1),
    .out6(w_demosaic_1_stencil_stream_1_1_0),
    .out7(w_demosaic_1_stencil_stream_1_1_1),
    .out8(w_demosaic_1_stencil_stream_2_0_0),
    .out9(w_demosaic_1_stencil_stream_2_0_1),
    .out10(w_demosaic_1_stencil_stream_2_1_0),
    .out11(w_demosaic_1_stencil_stream_2_1_1)
);

kernel__demosaic_1_stencil_update_stream KERN__demosaic_1_stencil_update_stream (
    .w_padded_1_stencil_0_0(w_padded_1_stencil_stream_0_0),
    .w_padded_1_stencil_0_1(w_padded_1_stencil_stream_0_1),
    .w_padded_1_stencil_0_2(w_padded_1_stencil_stream_0_2),
    .w_padded_1_stencil_1_0(w_padded_1_stencil_stream_1_0),
    .w_padded_1_stencil_1_1(w_padded_1_stencil_stream_1_1),
    .w_padded_1_stencil_1_2(w_padded_1_stencil_stream_1_2),
    .w_padded_1_stencil_2_0(w_padded_1_stencil_stream_2_0),
    .w_padded_1_stencil_2_1(w_padded_1_stencil_stream_2_1),
    .w_padded_1_stencil_2_2(w_padded_1_stencil_stream_2_2),
    .w_demosaic_1_x___scan_dim_0(gnd),
    .w_demosaic_1_y___scan_dim_1(gnd),

    .out_w_demosaic_1_stencil_0_0_0(w_demosaic_1_stencil_update_stream_0_0_0),
    .out_w_demosaic_1_stencil_1_0_0(w_demosaic_1_stencil_update_stream_1_0_0),
    .out_w_demosaic_1_stencil_2_0_0(w_demosaic_1_stencil_update_stream_2_0_0),

    .clk(clk)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_lowpass_x_1_stencil_0_0_0(w_lowpass_x_1_stencil_stream_0_0_0),
    .w_lowpass_x_1_stencil_1_0_0(w_lowpass_x_1_stencil_stream_1_0_0),
    .w_lowpass_x_1_stencil_2_0_0(w_lowpass_x_1_stencil_stream_2_0_0),

    .out_w_hw_output_1_stencil_1_0_0(w_hw_output_1_stencil_stream_0_0_0),
    .out_w_hw_output_1_stencil_2_0_0(w_hw_output_1_stencil_stream_1_0_0),
    .out_w_hw_output_1_stencil_packed(w_hw_output_1_stencil_stream_2_0_0),

    .clk(clk)
);

endmodule
module kernel__lowpass_x_1_stencil_stream(
//Inputs
  w_demosaic_1_stencil_0_0_0,
  w_demosaic_1_stencil_0_0_1,
  w_demosaic_1_stencil_0_1_0,
  w_demosaic_1_stencil_0_1_1,
  w_demosaic_1_stencil_1_0_0,
  w_demosaic_1_stencil_1_0_1,
  w_demosaic_1_stencil_1_1_0,
  w_demosaic_1_stencil_1_1_1,
  w_demosaic_1_stencil_2_0_0,
  w_demosaic_1_stencil_2_0_1,
  w_demosaic_1_stencil_2_1_0,
  w_demosaic_1_stencil_2_1_1,
//Outputs
  out_w_lowpass_x_1_stencil_0_0_0,
  out_w_lowpass_x_1_stencil_1_0_0,
  out_w_lowpass_x_1_stencil_2_0_0,

  clk
);

//Inputs
input  w_demosaic_1_stencil_0_1_0;
input  w_demosaic_1_stencil_1_1_0;
input  w_demosaic_1_stencil_2_1_0;
input  w_demosaic_1_stencil_2_1_1;
input  w_demosaic_1_stencil_1_0_0;
input  w_demosaic_1_stencil_1_0_1;
input  w_demosaic_1_stencil_1_1_1;
input  w_demosaic_1_stencil_2_0_0;
input  w_demosaic_1_stencil_0_0_1;
input  w_demosaic_1_stencil_0_0_0;
input  w_demosaic_1_stencil_2_0_1;
input  w_demosaic_1_stencil_0_1_1;
//Outputs
output  out_w_lowpass_x_1_stencil_1_0_0;
output  out_w_lowpass_x_1_stencil_0_0_0;
output  out_w_lowpass_x_1_stencil_2_0_0;

input  clk;


wire  w_225;
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
wire  w_lowpass_x_1_stencil_0_0_0;
wire  w_lowpass_x_1_stencil_1_0_0;
wire  w_lowpass_x_1_stencil_2_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_lowpass_x_1_stencil_1_0_0=w_lowpass_x_1_stencil_1_0_0;
assign out_w_lowpass_x_1_stencil_0_0_0=w_lowpass_x_1_stencil_0_0_0;
assign out_w_lowpass_x_1_stencil_2_0_0=w_lowpass_x_1_stencil_2_0_0;
assign  w_225  =  w_demosaic_1_stencil_0_0_0 ;
assign  w_226  =  w_225 ;
assign  w_227  =  w_demosaic_1_stencil_0_1_0 ;
assign  w_228  =  w_227 ;
ADD_16b_pe add_0 (
  .a(w_226),
  .b(w_228),
  .c(w_229),
  .clk(clk)
);
LSHIFT_16b_pe lshift_1 (
  .a(1'b0),
  .b(w_229),
  .c(w_230),
  .clk(clk)
);
assign  w_231  =  w_230 ;
assign  w_232  =  w_231 ;
assign  w_233  =  w_demosaic_1_stencil_0_0_1 ;
assign  w_234  =  w_233 ;
assign  w_235  =  w_demosaic_1_stencil_0_1_1 ;
assign  w_236  =  w_235 ;
ADD_16b_pe add_2 (
  .a(w_234),
  .b(w_236),
  .c(w_237),
  .clk(clk)
);
LSHIFT_16b_pe lshift_3 (
  .a(1'b0),
  .b(w_237),
  .c(w_238),
  .clk(clk)
);
assign  w_239  =  w_238 ;
assign  w_240  =  w_239 ;
ADD_16b_pe add_4 (
  .a(w_232),
  .b(w_240),
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
assign  w_244  =  w_demosaic_1_stencil_1_0_0 ;
assign  w_245  =  w_244 ;
assign  w_246  =  w_demosaic_1_stencil_1_1_0 ;
assign  w_247  =  w_246 ;
ADD_16b_pe add_6 (
  .a(w_245),
  .b(w_247),
  .c(w_248),
  .clk(clk)
);
LSHIFT_16b_pe lshift_7 (
  .a(1'b0),
  .b(w_248),
  .c(w_249),
  .clk(clk)
);
assign  w_250  =  w_249 ;
assign  w_251  =  w_250 ;
assign  w_252  =  w_demosaic_1_stencil_1_0_1 ;
assign  w_253  =  w_252 ;
assign  w_254  =  w_demosaic_1_stencil_1_1_1 ;
assign  w_255  =  w_254 ;
ADD_16b_pe add_8 (
  .a(w_255),
  .b(w_253),
  .c(w_256),
  .clk(clk)
);
LSHIFT_16b_pe lshift_9 (
  .a(w_256),
  .b(1'b0),
  .c(w_257),
  .clk(clk)
);
assign  w_258  =  w_257 ;
assign  w_259  =  w_258 ;
ADD_16b_pe add_10 (
  .a(w_259),
  .b(w_251),
  .c(w_260),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(1'b0),
  .b(w_260),
  .c(w_261),
  .clk(clk)
);
assign  w_262  =  w_261 ;
assign  w_263  =  w_demosaic_1_stencil_2_0_0 ;
assign  w_264  =  w_263 ;
assign  w_265  =  w_demosaic_1_stencil_2_1_0 ;
assign  w_266  =  w_265 ;
ADD_16b_pe add_12 (
  .a(w_266),
  .b(w_264),
  .c(w_267),
  .clk(clk)
);
LSHIFT_16b_pe lshift_13 (
  .a(1'b0),
  .b(w_267),
  .c(w_268),
  .clk(clk)
);
assign  w_269  =  w_268 ;
assign  w_270  =  w_269 ;
assign  w_271  =  w_demosaic_1_stencil_2_0_1 ;
assign  w_272  =  w_271 ;
assign  w_273  =  w_demosaic_1_stencil_2_1_1 ;
assign  w_274  =  w_273 ;
ADD_16b_pe add_14 (
  .a(w_274),
  .b(w_272),
  .c(w_275),
  .clk(clk)
);
LSHIFT_16b_pe lshift_15 (
  .a(1'b0),
  .b(w_275),
  .c(w_276),
  .clk(clk)
);
assign  w_277  =  w_276 ;
assign  w_278  =  w_277 ;
ADD_16b_pe add_16 (
  .a(w_278),
  .b(w_270),
  .c(w_279),
  .clk(clk)
);
LSHIFT_16b_pe lshift_17 (
  .a(1'b0),
  .b(w_279),
  .c(w_280),
  .clk(clk)
);
assign  w_281  =  w_280 ;
assign  w_lowpass_x_1_stencil_0_0_0  =  w_243 ;
assign  w_lowpass_x_1_stencil_1_0_0  =  w_262 ;
assign  w_lowpass_x_1_stencil_2_0_0  =  w_281 ;

endmodule

module kernel__demosaic_1_stencil_update_stream(
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
  w_demosaic_1_x___scan_dim_0,
  w_demosaic_1_y___scan_dim_1,
//Outputs
  out_w_demosaic_1_stencil_0_0_0,
  out_w_demosaic_1_stencil_1_0_0,
  out_w_demosaic_1_stencil_2_0_0,

  clk
);

//Inputs
input  w_demosaic_1_x___scan_dim_0;
input  w_demosaic_1_y___scan_dim_1;
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
output  out_w_demosaic_1_stencil_1_0_0;
output  out_w_demosaic_1_stencil_0_0_0;
output  out_w_demosaic_1_stencil_2_0_0;

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
wire  w_demosaic_1_stencil_0_0_0;
wire  w_demosaic_1_stencil_1_0_0;
wire  w_demosaic_1_stencil_2_0_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_demosaic_1_stencil_1_0_0=w_demosaic_1_stencil_1_0_0;
assign out_w_demosaic_1_stencil_0_0_0=w_demosaic_1_stencil_0_0_0;
assign out_w_demosaic_1_stencil_2_0_0=w_demosaic_1_stencil_2_0_0;
ADD_16b_pe add_0 (
  .a(w_demosaic_1_x___scan_dim_0),
  .b(1'b0),
  .c(w_128),
  .clk(clk)
);
AND_16b_pe and_1 (
  .a(w_128),
  .b(1'b0),
  .c(w_129),
  .clk(clk)
);
EQ_16b_pe eq_2 (
  .a(w_129),
  .b(1'b0),
  .c(w_130),
  .clk(clk)
);
assign  w_131  =  w_padded_1_stencil_1_1 ;
assign  w_132  =  w_padded_1_stencil_0_1 ;
assign  w_133  =  w_132 ;
assign  w_134  =  w_padded_1_stencil_2_1 ;
assign  w_135  =  w_134 ;
ADD_16b_pe add_3 (
  .a(w_135),
  .b(w_133),
  .c(w_136),
  .clk(clk)
);
LSHIFT_16b_pe lshift_4 (
  .a(1'b0),
  .b(w_136),
  .c(w_137),
  .clk(clk)
);
assign  w_138  =  w_137 ;
MUX_16b_pe mux_5 (
  .a(w_138),
  .b(w_131),
  .s(w_130),
  .c(w_139),
  .clk(clk)
);
assign  w_140  =  w_padded_1_stencil_1_0 ;
assign  w_141  =  w_140 ;
assign  w_142  =  w_padded_1_stencil_1_2 ;
assign  w_143  =  w_142 ;
ADD_16b_pe add_6 (
  .a(w_143),
  .b(w_141),
  .c(w_144),
  .clk(clk)
);
LSHIFT_16b_pe lshift_7 (
  .a(1'b0),
  .b(w_144),
  .c(w_145),
  .clk(clk)
);
assign  w_146  =  w_145 ;
assign  w_147  =  w_padded_1_stencil_0_0 ;
assign  w_148  =  w_147 ;
assign  w_149  =  w_padded_1_stencil_2_0 ;
assign  w_150  =  w_149 ;
ADD_16b_pe add_8 (
  .a(w_150),
  .b(w_148),
  .c(w_151),
  .clk(clk)
);
assign  w_152  =  w_padded_1_stencil_0_2 ;
assign  w_153  =  w_152 ;
ADD_16b_pe add_9 (
  .a(w_151),
  .b(w_153),
  .c(w_154),
  .clk(clk)
);
assign  w_155  =  w_padded_1_stencil_2_2 ;
assign  w_156  =  w_155 ;
ADD_16b_pe add_10 (
  .a(w_154),
  .b(w_156),
  .c(w_157),
  .clk(clk)
);
LSHIFT_16b_pe lshift_11 (
  .a(w_157),
  .b(1'b0),
  .c(w_158),
  .clk(clk)
);
assign  w_159  =  w_158 ;
MUX_16b_pe mux_12 (
  .a(w_146),
  .b(w_159),
  .s(w_130),
  .c(w_160),
  .clk(clk)
);
ADD_16b_pe add_13 (
  .a(1'b0),
  .b(w_demosaic_1_y___scan_dim_1),
  .c(w_161),
  .clk(clk)
);
AND_16b_pe and_14 (
  .a(1'b0),
  .b(w_161),
  .c(w_162),
  .clk(clk)
);
EQ_16b_pe eq_15 (
  .a(1'b0),
  .b(w_162),
  .c(w_163),
  .clk(clk)
);
MUX_16b_pe mux_16 (
  .a(w_160),
  .b(w_139),
  .s(w_163),
  .c(w_164),
  .clk(clk)
);
ADD_16b_pe add_17 (
  .a(w_demosaic_1_x___scan_dim_0),
  .b(1'b0),
  .c(w_165),
  .clk(clk)
);
AND_16b_pe and_18 (
  .a(1'b0),
  .b(w_165),
  .c(w_166),
  .clk(clk)
);
EQ_16b_pe eq_19 (
  .a(1'b0),
  .b(w_166),
  .c(w_167),
  .clk(clk)
);
assign  w_168  =  w_padded_1_stencil_1_1 ;
assign  w_169  =  w_padded_1_stencil_0_1 ;
assign  w_170  =  w_169 ;
assign  w_171  =  w_padded_1_stencil_2_1 ;
assign  w_172  =  w_171 ;
ADD_16b_pe add_20 (
  .a(w_172),
  .b(w_170),
  .c(w_173),
  .clk(clk)
);
assign  w_174  =  w_padded_1_stencil_1_0 ;
assign  w_175  =  w_174 ;
ADD_16b_pe add_21 (
  .a(w_173),
  .b(w_175),
  .c(w_176),
  .clk(clk)
);
assign  w_177  =  w_padded_1_stencil_1_2 ;
assign  w_178  =  w_177 ;
ADD_16b_pe add_22 (
  .a(w_178),
  .b(w_176),
  .c(w_179),
  .clk(clk)
);
LSHIFT_16b_pe lshift_23 (
  .a(w_179),
  .b(1'b0),
  .c(w_180),
  .clk(clk)
);
assign  w_181  =  w_180 ;
MUX_16b_pe mux_24 (
  .a(w_167),
  .b(w_168),
  .s(w_181),
  .c(w_182),
  .clk(clk)
);
MUX_16b_pe mux_25 (
  .a(w_167),
  .b(w_168),
  .s(w_181),
  .c(w_183),
  .clk(clk)
);
ADD_16b_pe add_26 (
  .a(1'b0),
  .b(w_demosaic_1_y___scan_dim_1),
  .c(w_184),
  .clk(clk)
);
AND_16b_pe and_27 (
  .a(1'b0),
  .b(w_184),
  .c(w_185),
  .clk(clk)
);
EQ_16b_pe eq_28 (
  .a(1'b0),
  .b(w_185),
  .c(w_186),
  .clk(clk)
);
MUX_16b_pe mux_29 (
  .a(w_182),
  .b(w_183),
  .s(w_186),
  .c(w_187),
  .clk(clk)
);
ADD_16b_pe add_30 (
  .a(w_demosaic_1_x___scan_dim_0),
  .b(1'b0),
  .c(w_188),
  .clk(clk)
);
AND_16b_pe and_31 (
  .a(1'b0),
  .b(w_188),
  .c(w_189),
  .clk(clk)
);
EQ_16b_pe eq_32 (
  .a(1'b0),
  .b(w_189),
  .c(w_190),
  .clk(clk)
);
assign  w_191  =  w_padded_1_stencil_0_0 ;
assign  w_192  =  w_191 ;
assign  w_193  =  w_padded_1_stencil_2_0 ;
assign  w_194  =  w_193 ;
ADD_16b_pe add_33 (
  .a(w_192),
  .b(w_194),
  .c(w_195),
  .clk(clk)
);
assign  w_196  =  w_padded_1_stencil_0_2 ;
assign  w_197  =  w_196 ;
ADD_16b_pe add_34 (
  .a(w_195),
  .b(w_197),
  .c(w_198),
  .clk(clk)
);
assign  w_199  =  w_padded_1_stencil_2_2 ;
assign  w_200  =  w_199 ;
ADD_16b_pe add_35 (
  .a(w_198),
  .b(w_200),
  .c(w_201),
  .clk(clk)
);
LSHIFT_16b_pe lshift_36 (
  .a(w_201),
  .b(1'b0),
  .c(w_202),
  .clk(clk)
);
assign  w_203  =  w_202 ;
assign  w_204  =  w_padded_1_stencil_1_0 ;
assign  w_205  =  w_204 ;
assign  w_206  =  w_padded_1_stencil_1_2 ;
assign  w_207  =  w_206 ;
ADD_16b_pe add_37 (
  .a(w_205),
  .b(w_207),
  .c(w_208),
  .clk(clk)
);
LSHIFT_16b_pe lshift_38 (
  .a(1'b0),
  .b(w_208),
  .c(w_209),
  .clk(clk)
);
assign  w_210  =  w_209 ;
MUX_16b_pe mux_39 (
  .a(w_190),
  .b(w_203),
  .s(w_210),
  .c(w_211),
  .clk(clk)
);
assign  w_212  =  w_padded_1_stencil_0_1 ;
assign  w_213  =  w_212 ;
assign  w_214  =  w_padded_1_stencil_2_1 ;
assign  w_215  =  w_214 ;
ADD_16b_pe add_40 (
  .a(w_213),
  .b(w_215),
  .c(w_216),
  .clk(clk)
);
LSHIFT_16b_pe lshift_41 (
  .a(1'b0),
  .b(w_216),
  .c(w_217),
  .clk(clk)
);
assign  w_218  =  w_217 ;
assign  w_219  =  w_padded_1_stencil_1_1 ;
MUX_16b_pe mux_42 (
  .a(w_190),
  .b(w_218),
  .s(w_219),
  .c(w_220),
  .clk(clk)
);
ADD_16b_pe add_43 (
  .a(1'b0),
  .b(w_demosaic_1_y___scan_dim_1),
  .c(w_221),
  .clk(clk)
);
AND_16b_pe and_44 (
  .a(1'b0),
  .b(w_221),
  .c(w_222),
  .clk(clk)
);
EQ_16b_pe eq_45 (
  .a(1'b0),
  .b(w_222),
  .c(w_223),
  .clk(clk)
);
MUX_16b_pe mux_46 (
  .a(w_211),
  .b(w_223),
  .s(w_220),
  .c(w_224),
  .clk(clk)
);
assign  w_demosaic_1_stencil_0_0_0  =  w_164 ;
assign  w_demosaic_1_stencil_1_0_0  =  w_187 ;
assign  w_demosaic_1_stencil_2_0_0  =  w_224 ;

endmodule

module kernel__hw_output_1_stencil_stream(
//Inputs
  w_lowpass_x_1_stencil_0_0_0,
  w_lowpass_x_1_stencil_1_0_0,
  w_lowpass_x_1_stencil_2_0_0,
//Outputs
  out_w_hw_output_1_stencil_1_0_0,
  out_w_hw_output_1_stencil_2_0_0,
  out_w_hw_output_1_stencil_packed,

  clk
);

//Inputs
input  w_lowpass_x_1_stencil_1_0_0;
input  w_lowpass_x_1_stencil_0_0_0;
input  w_lowpass_x_1_stencil_2_0_0;
//Outputs
output  out_w_hw_output_1_stencil_1_0_0;
output  out_w_hw_output_1_stencil_2_0_0;
output  out_w_hw_output_1_stencil_packed;

input  clk;


wire  w_282;
wire  w_283;
wire  w_284;
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
assign  w_282  =  w_lowpass_x_1_stencil_0_0_0 ;
assign  w_283  =  w_lowpass_x_1_stencil_1_0_0 ;
assign  w_284  =  w_lowpass_x_1_stencil_2_0_0 ;
assign  w_hw_output_1_stencil_0_0_0  =  w_282 ;
assign  w_hw_output_1_stencil_1_0_0  =  w_283 ;
assign  w_hw_output_1_stencil_2_0_0  =  w_284 ;
assign  w_hw_output_1_stencil_packed  =  w_hw_output_1_stencil_0_0_0 ;

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

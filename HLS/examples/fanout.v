// Source:  /home/tema8/projects/Halide-HLS/apps/hls_examples/fanout_hls/hls_target.cpp 

module top(
//Inputs
  w_repeat_edge_1_stencil_update_stream_0_8b,

//Outputs
  w_hw_output_1_stencil_stream_0_8b,

  clk
);

//Inputs
input    w_repeat_edge_1_stencil_update_stream_0_8b;

//Outputs
output   w_hw_output_1_stencil_stream_0_8b;

input   clk;

wire   w_C_1_stencil_stream_0_8b;

wire   w_B_1_stencil_update_stream_0_8b;

wire   w_B_1_stencil_stream_0_8b;
wire   w_B_1_stencil_stream_1_8b;

wire   w_repeat_edge_1_stencil_stream_0_8b;
wire   w_repeat_edge_1_stencil_stream_1_8b;

wire   gnd;
assign gnd=1'b0;

kernel__C_1_stencil_stream KERN__C_1_stencil_stream (
    .w_repeat_edge_1_stencil_1_8b(w_repeat_edge_1_stencil_stream_0_8b),

    .out_w_C_1_stencil_0_8b(w_C_1_stencil_stream_0_8b),

    .clk(clk)
);

LB_1_2_1_8bit_False LB__repeat_edge_1_stencil_stream (
    .clk(clk),

    .in0(w_repeat_edge_1_stencil_update_stream_0_8b),

    .out0(w_repeat_edge_1_stencil_stream_0_8b),
    .out1(w_repeat_edge_1_stencil_stream_1_8b)
);

kernel__B_1_stencil_update_stream KERN__B_1_stencil_update_stream (
    .w_repeat_edge_1_stencil_0_8b(w_repeat_edge_1_stencil_stream_0_8b),
    .w_repeat_edge_1_stencil_1_8b(w_repeat_edge_1_stencil_stream_1_8b),

    .out_w_B_1_stencil_0_8b(w_B_1_stencil_update_stream_0_8b),

    .clk(clk)
);

LB_1_2_1_8bit_False LB__B_1_stencil_stream (
    .clk(clk),

    .in0(w_B_1_stencil_update_stream_0_8b),

    .out0(w_B_1_stencil_stream_0_8b),
    .out1(w_B_1_stencil_stream_1_8b)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_B_1_stencil_0_8b(w_C_1_stencil_stream_0_8b),
    .w_B_1_stencil_1_8b(w_B_1_stencil_stream_0_8b),
    .w_C_1_stencil_0_8b(w_B_1_stencil_stream_1_8b),
    .w_repeat_edge_1_stencil_0_8b(w_repeat_edge_1_stencil_stream_0_8b),
    .w_repeat_edge_1_stencil_1_8b(w_repeat_edge_1_stencil_stream_1_8b),

    .out_w_hw_output_1_stencil_stream_16b(w_hw_output_1_stencil_stream_0_8b),

    .clk(clk)
);

endmodule



module kernel__C_1_stencil_stream(
//Inputs
  w_repeat_edge_1_stencil_1_8b,
//Outputs
  out_w_C_1_stencil_0_8b,

  clk
);

//Inputs
input  w_repeat_edge_1_stencil_1_8b;
//Outputs
output  out_w_C_1_stencil_0_8b;

input  clk;


wire  w_112_16b;
wire  w_C_1_stencil_0_8b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_C_1_stencil_0_8b = w_C_1_stencil_0_8b;
assign  w_112_16b  =  w_repeat_edge_1_stencil_1_8b ;
assign  w_C_1_stencil_0_8b  =  w_112_16b ;

endmodule







module kernel__hw_output_1_stencil_stream(
//Inputs
  w_B_1_stencil_0_8b,
  w_B_1_stencil_1_8b,
  w_C_1_stencil_0_8b,
  w_repeat_edge_1_stencil_0_8b,
  w_repeat_edge_1_stencil_1_8b,
//Outputs
  out_w_hw_output_1_stencil_stream_16b,

  clk
);

//Inputs
input  w_repeat_edge_1_stencil_0_8b;
input  w_repeat_edge_1_stencil_1_8b;
input  w_B_1_stencil_1_8b;
input  w_B_1_stencil_0_8b;
input  w_C_1_stencil_0_8b;
//Outputs
output  out_w_hw_output_1_stencil_stream_16b;

input  clk;


wire  w_113_16b;
wire  w_114_16b;
wire  w_115_16b;
wire  w_116_16b;
wire  w_117_16b;
wire  w_118_16b;
wire  w_119_16b;
wire  w_120_16b;
wire  w_121_16b;
wire  w_hw_output_1_stencil_0_8b;
wire  w_hw_output_1_stencil_stream_16b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_hw_output_1_stencil_stream_16b = w_hw_output_1_stencil_stream_16b;
assign  w_113_16b  =  w_repeat_edge_1_stencil_0_8b ;
assign  w_114_16b  =  w_repeat_edge_1_stencil_1_8b ;
ADD_16b_pe add_0 (
  .a(w_113_16b),
  .b(w_114_16b),
  .c(w_115_16b),
  .clk(clk)
);
assign  w_116_16b  =  w_B_1_stencil_0_8b ;
ADD_16b_pe add_1 (
  .a(w_115_16b),
  .b(w_116_16b),
  .c(w_117_16b),
  .clk(clk)
);
assign  w_118_16b  =  w_B_1_stencil_1_8b ;
ADD_16b_pe add_2 (
  .a(w_118_16b),
  .b(w_117_16b),
  .c(w_119_16b),
  .clk(clk)
);
assign  w_120_16b  =  w_C_1_stencil_0_8b ;
ADD_16b_pe add_3 (
  .a(w_119_16b),
  .b(w_120_16b),
  .c(w_121_16b),
  .clk(clk)
);
assign  w_hw_output_1_stencil_0_8b  =  w_121_16b ;
assign  w_hw_output_1_stencil_stream_16b  =  w_hw_output_1_stencil_0_8b ;

endmodule







module kernel__B_1_stencil_update_stream(
//Inputs
  w_repeat_edge_1_stencil_0_8b,
  w_repeat_edge_1_stencil_1_8b,
//Outputs
  out_w_B_1_stencil_0_8b,

  clk
);

//Inputs
input  w_repeat_edge_1_stencil_0_8b;
input  w_repeat_edge_1_stencil_1_8b;
//Outputs
output  out_w_B_1_stencil_0_8b;

input  clk;


wire  w_109_16b;
wire  w_110_16b;
wire  w_111_16b;
wire  w_B_1_stencil_0_8b;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_B_1_stencil_0_8b = w_B_1_stencil_0_8b;
assign  w_109_16b  =  w_repeat_edge_1_stencil_0_8b ;
assign  w_110_16b  =  w_repeat_edge_1_stencil_1_8b ;
ADD_16b_pe add_0 (
  .a(w_110_16b),
  .b(w_109_16b),
  .c(w_111_16b),
  .clk(clk)
);
assign  w_B_1_stencil_0_8b  =  w_111_16b ;

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

    




module LB_1_2_1_8bit_False (
    clk,

    in0,

    out0,
    out1
);

// (1, 2, 1, 8, False)
    input clk;

    input in0;

    output out0;
    output out1;

//##// (1, 2, 1, 8, False)
    LB_base_1_2_8bit  LB_base_inst0 (
        .clk(clk),
        .inp(in0),
        .out_0_0(out0),
        .out_0_1(out1)
    );

endmodule

module LB_base_1_2_8bit (
    clk,

    inp,

    out_0_0,
    out_0_1
);

    input clk;

    input inp;

    output out_0_0;
    output out_0_1;

    wire sram_out_0;

    reg  inp_reg;

    always @(posedge clk) begin

        inp_reg <= inp;
    end

    assign sram_out_0 = inp_reg;


    ShiftReg_base_2_8bit ShiftersRow_0(
        .clk (clk),

        .inp_16b (sram_out_0),

        .out_0_16b (out_0_0),
        .out_1_16b (out_0_1)
    );


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


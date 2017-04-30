module top(
//Inputs
  w_repeat_edge_1_stencil_update_stream_0,

//Outputs
  w_hw_output_1_stencil_stream_0,

  clk
);

//Inputs
input    w_repeat_edge_1_stencil_update_stream_0;

//Outputs
output   w_hw_output_1_stencil_stream_0;

input   clk;

wire   w_C_1_stencil_stream_0;

wire   w_B_1_stencil_update_stream_0;

wire   w_B_1_stencil_stream_0;
wire   w_B_1_stencil_stream_1;

wire   w_repeat_edge_1_stencil_stream_0;
wire   w_repeat_edge_1_stencil_stream_1;

wire   gnd;
assign gnd=1'b0;

kernel__C_1_stencil_stream KERN__C_1_stencil_stream (
    .w_repeat_edge_1_stencil_1(w_repeat_edge_1_stencil_stream_0),

    .out_w_C_1_stencil_0(w_C_1_stencil_stream_0),

    .clk(clk)
);

LB_1_2_1_8bit_False LB__repeat_edge_1_stencil_stream (
    .clk(clk),

    .in0(w_repeat_edge_1_stencil_update_stream_0),

    .out0(w_repeat_edge_1_stencil_stream_0),
    .out1(w_repeat_edge_1_stencil_stream_1)
);

kernel__B_1_stencil_update_stream KERN__B_1_stencil_update_stream (
    .w_repeat_edge_1_stencil_0(w_repeat_edge_1_stencil_stream_0),
    .w_repeat_edge_1_stencil_1(w_repeat_edge_1_stencil_stream_1),

    .out_w_B_1_stencil_0(w_B_1_stencil_update_stream_0),

    .clk(clk)
);

LB_1_2_1_8bit_False LB__B_1_stencil_stream (
    .clk(clk),

    .in0(w_B_1_stencil_update_stream_0),

    .out0(w_B_1_stencil_stream_0),
    .out1(w_B_1_stencil_stream_1)
);

kernel__hw_output_1_stencil_stream KERN__hw_output_1_stencil_stream (
    .w_B_1_stencil_0(w_C_1_stencil_stream_0),
    .w_B_1_stencil_1(w_B_1_stencil_stream_0),
    .w_C_1_stencil_0(w_B_1_stencil_stream_1),
    .w_repeat_edge_1_stencil_0(w_repeat_edge_1_stencil_stream_0),
    .w_repeat_edge_1_stencil_1(w_repeat_edge_1_stencil_stream_1),

    .out_w_hw_output_1_stencil_stream(w_hw_output_1_stencil_stream_0),

    .clk(clk)
);

endmodule



module kernel__C_1_stencil_stream(
//Inputs
  w_repeat_edge_1_stencil_1,
//Outputs
  out_w_C_1_stencil_0,

  clk
);

//Inputs
input  w_repeat_edge_1_stencil_1;
//Outputs
output  out_w_C_1_stencil_0;

input  clk;


wire  w_112;
wire  w_C_1_stencil_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_C_1_stencil_0=w_C_1_stencil_0;
assign  w_112  =  w_repeat_edge_1_stencil_1 ;
assign  w_C_1_stencil_0  =  w_112 ;

endmodule







module kernel__hw_output_1_stencil_stream(
//Inputs
  w_B_1_stencil_0,
  w_B_1_stencil_1,
  w_C_1_stencil_0,
  w_repeat_edge_1_stencil_0,
  w_repeat_edge_1_stencil_1,
//Outputs
  out_w_hw_output_1_stencil_stream,

  clk
);

//Inputs
input  w_repeat_edge_1_stencil_0;
input  w_repeat_edge_1_stencil_1;
input  w_B_1_stencil_1;
input  w_B_1_stencil_0;
input  w_C_1_stencil_0;
//Outputs
output  out_w_hw_output_1_stencil_stream;

input  clk;


wire  w_113;
wire  w_114;
wire  w_115;
wire  w_116;
wire  w_117;
wire  w_118;
wire  w_119;
wire  w_120;
wire  w_121;
wire  w_hw_output_1_stencil_0;
wire  w_hw_output_1_stencil_stream;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_hw_output_1_stencil_stream=w_hw_output_1_stencil_stream;
assign  w_113  =  w_repeat_edge_1_stencil_0 ;
assign  w_114  =  w_repeat_edge_1_stencil_1 ;
ADD_16b_pe add_0 (
  .a(w_113),
  .b(w_114),
  .c(w_115),
  .clk(clk)
);
assign  w_116  =  w_B_1_stencil_0 ;
ADD_16b_pe add_1 (
  .a(w_115),
  .b(w_116),
  .c(w_117),
  .clk(clk)
);
assign  w_118  =  w_B_1_stencil_1 ;
ADD_16b_pe add_2 (
  .a(w_118),
  .b(w_117),
  .c(w_119),
  .clk(clk)
);
assign  w_120  =  w_C_1_stencil_0 ;
ADD_16b_pe add_3 (
  .a(w_119),
  .b(w_120),
  .c(w_121),
  .clk(clk)
);
assign  w_hw_output_1_stencil_0  =  w_121 ;
assign  w_hw_output_1_stencil_stream  =  w_hw_output_1_stencil_0 ;

endmodule







module kernel__B_1_stencil_update_stream(
//Inputs
  w_repeat_edge_1_stencil_0,
  w_repeat_edge_1_stencil_1,
//Outputs
  out_w_B_1_stencil_0,

  clk
);

//Inputs
input  w_repeat_edge_1_stencil_0;
input  w_repeat_edge_1_stencil_1;
//Outputs
output  out_w_B_1_stencil_0;

input  clk;


wire  w_109;
wire  w_110;
wire  w_111;
wire  w_B_1_stencil_0;
wire   tmp_clk;

assign tmp_clk = clk;

//Assign results
assign out_w_B_1_stencil_0=w_B_1_stencil_0;
assign  w_109  =  w_repeat_edge_1_stencil_0 ;
assign  w_110  =  w_repeat_edge_1_stencil_1 ;
ADD_16b_pe add_0 (
  .a(w_110),
  .b(w_109),
  .c(w_111),
  .clk(clk)
);
assign  w_B_1_stencil_0  =  w_111 ;

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


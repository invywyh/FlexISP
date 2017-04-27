import sys
import re

def parse_sig(sig):
    matchObj = re.search( r'(.+)\[(.+)\:(.+)\]', sig, re.M|re.I)

    if matchObj:
        width = 1 + int(matchObj.group(2)) - int(matchObj.group(3))
        (sig_name, obj) = parse_sig( matchObj.group(1) )
        if obj:
            obj += [width]
        else:
            obj = [ width ]

        return (sig_name, obj)
    else:
        return (sig, [])


def parse_lb_def(lb_def):
    sig_width = 16  
    
    comp = (lb_def).split()

    (sig_name, widths) = parse_sig(comp[1])
    
    if comp[0] == "bool":
        sig_width = 1
        
    (height, width, channels) = (1, 1, 1)
    if len(widths) == 3:
        channels = widths[2]
        width    = widths[1]
        height   = widths[0]
    elif len(widths) == 2:
        width    = widths[1]
        height   = widths[0]
    else:
        width =  widths[0]
    
    return (height, width, channels, sig_width)

"""
lb_def = kernel.ppout[0]
"""
def make_lb_verilog(prefix, lb_def, IGNORE_WIDTH = False, w = None):
    lb_get_pos = False
    (height, width, channels, sig_width) = parse_lb_def(lb_def)
    config = (height, width, channels, sig_width, lb_get_pos)
    return make_lb_verilog_from_config(prefix, config, IGNORE_WIDTH, w)

def gen_out_name(h,w,c, height, width, channels):
    #return "out_{h}_{w}_{c}".format(h=h,w=w,c=c,eol=eol)
    return "out%d"%(w+h*width+c*width*height)


from collections import defaultdict  
import math

            
def get_lb_stats(config):
    LINE_PER_LB = 2
    res = defaultdict(int)
    (height, width, channels, sig_width, lb_get_pos) = config
    for c in range(channels):
        res["lb_block"] += int(math.ceil((height - 1)/LINE_PER_LB))
        res["lb_rows"] += (height - 1)
        res["lb_write"] += 1#int(math.ceil((height - 1)/LINE_PER_LB))
        res["lb_read"]  += (height - 1)
        res["shift_reg"] += (height*width)
    return res
        
def make_lb_verilog_from_config(prefix, config, IGNORE_WIDTH = False, w = None):
    if w is not None:
        sys.stdout = w
    
    (height, width, channels, sig_width, lb_get_pos) = config

    sig_width_def = " [15:0]"
    if (sig_width == 1) or IGNORE_WIDTH:
        sig_width_def = "" 
    #Use wires as busses
    #sig_width_def = ""

    print "module {prefix}_{height}_{width}_{channels}_{sig_width}bit_{lb_get_pos} (".format(prefix=prefix,height=height,width=width,channels=channels, sig_width=sig_width, lb_get_pos=lb_get_pos)
    print "    clk,\n"
    
    for c in range(channels):
        print "    in{c},".format(c=c)            
    print ""
    
    eol = ","
    for c in range(channels):
        for h in range(height):
            for w in range(width):
                if h == (height-1) and w == (width-1) and c == (channels-1) and (not lb_get_pos):
                    eol = ""
                #print "    out_{h}_{w}_{c}{eol}".format(h=h,w=w,c=c,eol=eol)            
                print "    {out_name}{eol}".format(out_name=gen_out_name(h,w,c, height, width, channels),eol=eol)            

    out_cnt = channels*height*width
    if lb_get_pos:
        print "    out{ind},".format(ind=out_cnt)    
        print "    out{ind}".format(ind=(out_cnt+1))    
    
    print ");\n"
    
    
    print "//",str(config) 
    
    print "    input clk;\n"
    
    for c in range(channels):
        print "    input{sig_width_def} in{c};".format(sig_width_def=sig_width_def,c=c)            
    print ""
    
    for c in range(channels):
        for h in range(height):
            for w in range(width):
                #print "    output{sig_width_def} out_{h}_{w}_{c};".format(sig_width_def=sig_width_def,h=h,w=w,c=c)            
                print "    output{sig_width_def} {out_name};".format(sig_width_def=sig_width_def,out_name=gen_out_name(h,w,c, height, width, channels))            
    if lb_get_pos:
        pos_width = "[15:0]"
        #Use wires as busses
        pos_width = ""
        print "    output {pos_width} out{ind};".format(pos_width=pos_width, ind=out_cnt)    
        print "    output {pos_width} out{ind};".format(pos_width=pos_width, ind=(out_cnt+1))    
    
    print ""
    
    if lb_get_pos:
        centr_width = 16
        #Use wires as busses
        centr_width = 1
        print "    assign out{ind} = {centr_width}'d0; //centroids X position".format(centr_width=centr_width, ind=out_cnt)    
        print "    assign out{ind} = {centr_width}'d0; //centroids Y position".format(centr_width=centr_width, ind=(out_cnt+1))    

    
    for c in range(channels):
        print "//##//",str(config) 
        print "    LB_base_{height}_{width}_{sig_width}bit  {prefix}_base_inst{c} (".format(prefix=prefix,height=height,width=width, sig_width=sig_width, c=c)
        print "        .clk(clk),"            
        print "        .inp(in{c}),".format(c=c)              
        
        eol = ","    
        for h in range(height):
            for w in range(width):
                if h == (height-1) and w == (width-1):
                    eol = ""
                #print "        .out_{h}_{w}(out_{h}_{w}_{c}){eol}".format(h=h,w=w,c=c,eol=eol)             
                print "        .out_{h}_{w}({out_name}){eol}".format(h=h,w=w,c=c,out_name=gen_out_name(h,w,c, height, width, channels),eol=eol)             
        print "    );\n"            

    print "endmodule\n"            
    
    if w is not None:
        sys.stdout = sys.__stdout__
    
    return (height, width, sig_width)                              


def make_lb_base_verilog(lb_cfg, IGNORE_WIDTH = False, w = None):
    if w is not None:
        sys.stdout = w

    (height, width, sig_width) = lb_cfg

    sig_width_def = " [{msb}:0]".format(msb=str(sig_width-1))    
    suffix = "_16b"
    if sig_width == 1:
        sig_width_def = ""
        suffix = "_1b"
    #Use wires as busses
    if IGNORE_WIDTH:
        sig_width_def = ""
        
    print "module LB_base_{height}_{width}_{sig_width}bit (".format(height=height,width=width,sig_width=sig_width)
    print "    clk,\n"
    print "    inp,\n"

    
    eol = ","
    for h in range(height):
        for w in range(width):
            if h == (height-1) and w == (width-1):
                eol = ""
            print "    out_{h}_{w}{eol}".format(h=h,w=w,eol=eol)            
    
    print ");\n"
    
    print "    input clk;\n"
    print "    input{sig_width_def} inp;\n".format(sig_width_def=sig_width_def)

    
    for h in range(height):
        for w in range(width):
            print "    output{sig_width_def} out_{h}_{w};".format(sig_width_def=sig_width_def,h=h,w=w)            
    
    print ""


    for h in range(height):
        print "    wire{sig_width_def} sram_out_{h};".format(sig_width_def=sig_width_def,h=h)            
    
    print ""

    if height == 1:
        #print "    assign sram_out_0 = inp;\n\n"
        print "    reg {sig_width_def} inp_reg;\n".format(sig_width_def=sig_width_def)
        print "    always @(posedge clk) begin\n"
        print "        inp_reg <= inp;"
        print "    end\n"
        print "    assign sram_out_0 = inp_reg;\n\n"
        
    elif height == 2:
        print "    my_lb1 SRAM_BLOCK ("
        print "        .clk (clk),\n"
        print "        .inp_16b (inp),\n"
        print "        .out_0_16b (sram_out_0)\n"
        print "    );\n\n"
        #print "    assign sram_out_1 = inp;"
        print "    reg {sig_width_def} inp_reg;\n".format(sig_width_def=sig_width_def)
        print "    always @(posedge clk) begin\n"
        print "        inp_reg <= inp;"
        print "    end\n"
        print "    assign sram_out_1 = inp_reg;\n\n"

    else:
        #print "    my_lb{height} SRAM_BLOCK (".format(height=height)
        #print "        .clk (clk),\n"
        #print "        .inp_16b (inp),\n"
        #
        #eol = ","    
        #for h in range(height):
        #    if h == (height-1):
        #        eol = ""
        #    print "        .out_{h}_16b (sram_out_{h}){eol}".format(h=h,eol=eol)
        #    
        #print "    );\n\n"
        for i in range(height/2):
            print "    my_lb2 SRAM_BLOCK_{i} (".format(i=i)
            print "        .clk (clk),\n"
            print "        .inp_16b (inp),\n"
            print "        .out_0_16b (sram_out_{h}),\n".format(h=2*i)
            print "        .out_1_16b (sram_out_{h})\n".format(h=2*i+1)
            print "    );\n\n"
            
        if height%2 > 0:
            #print "    assign sram_out_{h} = inp;\n\n".format(h=height-1)
            print "    reg {sig_width_def} inp_reg;\n".format(sig_width_def=sig_width_def)
            print "    always @(posedge clk) begin\n"
            print "        inp_reg <= inp;"
            print "    end\n"
            print "    assign sram_out_{h} = inp_reg;\n\n".format(h=height-1)



    for h in range(height):
        print "    ShiftReg_base_{width}_{sig_width}bit ShiftersRow_{h}(".format(h=h,width=width,sig_width=sig_width)
        print "        .clk (clk),\n"
        print "        .inp{suffix} (sram_out_{h}),\n".format(h=h,suffix=suffix)

        eol = ","    
        for w in range(width):
            if w == (width-1):
                eol = ""
            print "        .out_{w}{suffix} (out_{h}_{w}){eol}".format(h=h,w=w,eol=eol,suffix=suffix)
            
        print "    );\n\n"



    print "endmodule\n"
    
    if w is not None:
        sys.stdout = sys.__stdout__
                
    return (width, sig_width)                              
   

def make_shift_reg_base_verilog(sr_cfg, IGNORE_WIDTH = False, w = None):
    if w is not None:
        sys.stdout = w

    (width, sig_width) = sr_cfg

    sig_width_def = " [{msb}:0]".format(msb=str(sig_width-1))
    suffix = "_16b"    
    if sig_width == 1:
        sig_width_def = ""
        suffix = "_1b"    
    #Use wires as busses
    if IGNORE_WIDTH:
        sig_width_def = ""
    #suffix = "_1b"    
       
    print "module ShiftReg_base_{width}_{sig_width}bit (".format(width=width,sig_width=sig_width)
    print "    clk,\n"
    print "    inp{suffix},\n".format(suffix=suffix)
           
    eol = ","    
    for w in range(width):
        if w == (width-1):
            eol = ""
        print "    out_{w}{suffix}{eol}".format(w=w,eol=eol,suffix=suffix)
        
    print ");\n"
    
    print "    input clk;\n"
    print "    input{sig_width_def} inp{suffix};\n".format(sig_width_def=sig_width_def,suffix=suffix)

    
    for w in range(width):
        print "    output{sig_width_def} out_{w}{suffix};".format(sig_width_def=sig_width_def,w=w,suffix=suffix)            
    
    print ""

    for w in range(width):
        print "    reg{sig_width_def} out_{w}{suffix};".format(sig_width_def=sig_width_def,w=w,suffix=suffix)            

    print "\n"


    print "    always @(posedge clk) begin"
    print "        out_0{suffix} <= inp{suffix};".format(suffix=suffix)
    for w in range(1,width):
        print "        out_{l}{suffix} <= out_{r}{suffix};".format(l=w,r=w-1,suffix=suffix)            
    print "    end\n"

    print "endmodule\n"
    
    if w is not None:
        sys.stdout = sys.__stdout__


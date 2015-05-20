#
# Parses report to extract area and energy numbers for certain operations
#

import yaml
import re
import sys
import os.path
import math
#from random import randint
from collections import Counter
import random
import copy
import operator

#import dpda_parse.base
#import dpda_parse.utils
from dpda_parse.base import *
from dpda_parse.utils import *
from dpda_parse.parse import *



def get_signal_value(edge):
    if edge.is_const:
        return str(edge.value)
    else:
        return edge.names[0]    

def verilog_port(port_name, edge, last=False):
    coma = ","
    if last:
        coma =""
        
    #print "        ."+port_name+"("+get_signal_value(edge)+")"+coma+" //"+edge.names[0]
    print "        ."+port_name+"("+get_signal_value(edge)+")"+coma
   
        


    
def verilog_cluster(n):
    if get_node_cat(n)!= "CLUSTER":
        return
    else :
        #print "# ", len(n.out), " ", n
        #return
        
        #print "//%s"%(n.op)
        #print "//",n
        print "    pe_cluster %s_%d("%(get_node_cat(n), n.pos)
        for i in range(len(n.inp)):
            verilog_port("in_%d"%i, n.inp[i])

        for i in range(len(n.inp), 9):
            print "    .in_%d(0),"%i

        for i in range(len(n.out)):
            if i == len(n.out) - 1:
                verilog_port("out_%d"%i, n.out[i], last=True)
            else:
                verilog_port("out_%d"%i, n.out[i])
    
        print "    );\n"


#'ALU': set(['gt', 'ne', 'lt', 'lte', 'eq', 'gte', 'sub','add', 'inv', 'sum', 'abs', 'min', 'max', 'and', 'or', 'not']),


#Prints verilog instantiation of ALU
def verilog_alu(n):
    if get_node_cat(n)!= "ALU":
        return
    else :
        #print "//%s"%(n.op)
        #print "//",n
        
        logic_op = {'gt':'>', 'ne':'!=','lt': '<', 'lte': '=<', 'eq':'==', 'gte':'>=', 'sub':'-', 'add':'+', 'inv':'~', 'sum':'==', 'abs':'+', 'min':'-', 'max':'+', 'and':'&', 'or':'|', 'not':'~'}
        
        #print "wire ["+str(n.out[0].width-1)+":0] ww_"+n.out[0].names[0]+";"
        #print "    alu %s_%d("%(get_node_cat(n), n.pos)
        ##print "        .clk(clk),"
        #verilog_port("a", n.inp[0])
        #if len(n.inp) > 1:
        #    verilog_port("b", n.inp[1])
        #else:
        #    print "        .b(0),"
        #    
        #print "        .out(ww_"+n.out[0].names[0]+")"
        #print "    );\n"

        print "//###",n
        print "reg ["+str(n.out[0].width-1)+":0] rr_"+n.out[0].names[0]+";"

        print "always @(posedge clk) begin"
        #print "    rr_"+n.out[0].names[0]+" <= ww_"+n.out[0].names[0]+";"
        if len(n.inp) > 1:
            #print "    rr_"+n.out[0].names[0]+" <= "+get_signal_value(n.inp[0])+" - "+get_signal_value(n.inp[1])+";"
            print "    rr_"+n.out[0].names[0]+" <= "+get_signal_value(n.inp[0])+" "+logic_op[n.op]+" "+get_signal_value(n.inp[1])+";"
        else:
            #print "    rr_"+n.out[0].names[0]+" <= ~"+get_signal_value(n.inp[0])+";"
            print "    rr_"+n.out[0].names[0]+" <= "+logic_op[n.op]+get_signal_value(n.inp[0])+";"
        print "end\n\n"
    
        print "assign "+n.out[0].names[0]+"=rr_"+n.out[0].names[0]+";"
    



#Prints verilog instantiation of MULT
def verilog_mult(n):
    if get_node_cat(n)!= "MULT":
        return
    else :
        print "//",n
        #print "wire [%d:0] %s_w;"%(n.inp[0].width+n.inp[1].width-1 , n.out[0].names[0])
        #print "assign "+ n.out[0].names[0] + "_w = (" +get_signal_value(n.inp[0]) + ")*("+get_signal_value(n.inp[1])+");"
        #print "assign %s = %s_w[23:8];"%(n.out[0].names[0] , n.out[0].names[0])
        
        print "reg [%d:0] rr_%s;"%(n.inp[0].width+n.inp[1].width-1 , n.out[0].names[0])
        print "always @(posedge clk) begin"
        print "    rr_"+n.out[0].names[0]+" <= (" +get_signal_value(n.inp[0]) + ")*("+get_signal_value(n.inp[1])+");"
        print "end\n\n"
        
        print "assign %s = rr_%s[23:8];"%(n.out[0].names[0] , n.out[0].names[0])
      
        
        
        #print "    multiply %s_%d("%(get_node_cat(n), n.pos)
        #print "        .clk(clk),"
        #verilog_port("a", n.inp[0]);
        #verilog_port("b", n.inp[1]);
        #verilog_port("out", n.out[0],last=True);
        #print "    );\n"

        
        

#Prints verilog instantiation of MUX
def verilog_mux(n):
    if get_node_cat(n)!= "MUX":
        return
    else :
        #print "//%s"%(n.op)
        #print "//",n
        #print "    %s_pe %s_%d("%(get_node_cat(n), get_node_cat(n), n.pos)
        
        #print "    mux_pe %s_%d("%(get_node_cat(n), n.pos)
        ##print "        .clk(clk),"
        #verilog_port("a", n.inp[1]);
        #verilog_port("b", n.inp[2]);
        #verilog_port("s", n.inp[0]);
        #verilog_port("c", n.out[0],last=True);
        #print "    );\n"

        #print "    assign "+n.out[0].names[0]+"="+get_signal_value(n.inp[0])+" ? "+get_signal_value(n.inp[1])+":"+get_signal_value(n.inp[2])+";"
        
        print "reg [%d:0] rr_%s;"%(n.out[0].width, n.out[0].names[0])
        print "always @(posedge clk) begin"
        print "    rr_"+n.out[0].names[0]+" <= " +get_signal_value(n.inp[0])+" ? "+get_signal_value(n.inp[1])+":"+get_signal_value(n.inp[2])+";"
        print "end\n\n"
        
        print "assign %s = rr_%s;"%(n.out[0].names[0] , n.out[0].names[0])




def verilog_logic(n):
    if get_node_cat(n)!= "LOGIC":
        return
    else :
        logic_op = {'and':'&', 'or':'|','not': '~', 'xor': '^', 'eq':'=='}
        #print "//%s"%(n.op)
        print "//",n
        #print "//    %s_pe %s_%d("%(get_node_cat(n), get_node_cat(n), n.pos)
        
        if len(n.inp)==1:
            print "    assign "+n.out[0].names[0]+"="+logic_op[n.op]+" "+get_signal_value(n.inp[0])+";"
        else:
            print "    assign "+n.out[0].names[0]+"="+get_signal_value(n.inp[0])+" "+logic_op[n.op]+" "+get_signal_value(n.inp[1])+";"




def verilog_shift(n):
    if get_node_cat(n)!= "SHIFT":
        return
    else :
        logic_op = {'rshift':'>>', 'lshift':'<<'}
        #print "//%s"%(n.op)
        print "//",n
        #print "//    %s_pe %s_%d("%(get_node_cat(n), get_node_cat(n), n.pos)
        
        if n.inp[1].is_const:
            print "reg [%d:0] rr_%s;"%(n.out[0].width, n.out[0].names[0])
            print "always @(posedge clk) begin"
            print "    rr_"+n.out[0].names[0]+" <= " +get_signal_value(n.inp[0])+" "+logic_op[n.op]+" "+get_signal_value(n.inp[1])+";"
            print "end\n\n"
            print "assign %s = rr_%s;"%(n.out[0].names[0] , n.out[0].names[0])
            
            #print "    assign "+n.out[0].names[0]+"="+get_signal_value(n.inp[0])+" "+logic_op[n.op]+" "+get_signal_value(n.inp[1])+";"
        else:
            print "reg [%d:0] rr_%s;"%(n.out[0].width, n.out[0].names[0])
            print "always @(posedge clk) begin"
            print "    rr_"+n.out[0].names[0]+" <= " +get_signal_value(n.inp[0])+" - "+get_signal_value(n.inp[1])+";"
            print "end\n\n"
            print "assign %s = rr_%s;"%(n.out[0].names[0] , n.out[0].names[0])

            ##print "//%s"%(n.op)
            ##print "//",n
            #print "    alu %s_%d("%(get_node_cat(n), n.pos)
            ##print "        .clk(clk),"
            #verilog_port("a", n.inp[0])
            #if len(n.inp) > 1:
            #    verilog_port("b", n.inp[1])
            #else:
            #    print "        .b(0),"
            #verilog_port("out", n.out[0],last=True)
            #print "    );\n"



def make_verilog(module_name, nodes_arr, edges_arr):
    w_names = set()
    for e in edges_arr:
        e.names[0] = prep(e.names[0])
        #w_names.add(e.bus_name)
        w_names.add(e.names[0])


    in_names = set()
    out_names = set()

    int_wires  = list()
    used_wires  = list()

    all_inp = set()
    all_out = set()

    ########################
    #for e in se_r["edges_arr"]:
    for e in edges_arr:
        if e.width > 16:
            e.width = 16
    ######################

    for n in nodes_arr:
        used_wires.append(n.out[0])
        used_wires.extend(n.inp)

        all_out.add(n.out[0])
        all_inp.update(n.inp)

#        if findChildren(n, nodes_arr, edges_arr) == []:
#            out_names.add(n.out[0])
#        else:
#            int_wires.append(n.out[0])
#            
    out_names = all_out - all_inp
    int_wires = all_out - out_names
    
    for w in used_wires:
        if w not in int_wires and w not in out_names and not w.is_const:
            in_names.add(w)


    #print "module %s ("%module_name

    #for n in in_names:
    #    print "    input ["+str(n.width-1)+":0] w_"+prep(n.names[0])+","

    #for n in out_names:
    #    print "    output reg ["+str(n.width-1)+":0] r_"+n.names[0]+","

    #print "    input clk"
    #print ");\n\n"

    print "--------------------------------------"

    print "module %s ("%module_name

    for n in in_names:
        print "w_"+prep(n.names[0])+","

    for n in out_names:
        print "r_"+n.names[0]+","

    print "clk"
    print ");\n\n"

    for n in in_names:
        print "    input ["+str(n.width-1)+":0] w_"+prep(n.names[0])+";"

    for n in out_names:
        print "    output ["+str(n.width-1)+":0] r_"+n.names[0]+";"

    print "    input clk;"


    for n in out_names:
        print "reg ["+str(n.width-1)+":0] r_"+n.names[0]+";"



    for n in in_names:
        print "    reg ["+str(n.width-1)+":0] r0_"+n.names[0]+", r1_"+n.names[0]+", "+n.names[0]+";"

    print "\n\n"

    print "always @(posedge clk) begin\n"
    for n in in_names:
        print "    r0_"+n.names[0]+" <= w_"+n.names[0]+";r1_"+n.names[0]+" <= r0_"+n.names[0]+";"+n.names[0]+" <= r1_"+n.names[0]+";"
    print "end\n\n"

    for n in out_names:
        print "    wire ["+str(n.width-1)+":0] "+n.names[0]+";"                        
        print "    reg ["+str(n.width-1)+":0] r0_"+n.names[0]+", r1_"+n.names[0]+";"
                    

    print "always @(posedge clk) begin\n"
    for n in out_names:
        print "    r0_"+n.names[0]+" <= "+n.names[0]+";r1_"+n.names[0]+" <= r0_"+n.names[0]+";r_"+n.names[0]+" <= r1_"+n.names[0]+";"
    print "end\n\n"
    
    print "\n\n"


    for w in int_wires:
        if w not in in_names and w not in out_names:
            print "    wire ["+str(w.width-1)+":0] "+w.names[0]+";"
    print "\n\n"

    for n in nodes_arr:       
        if get_node_cat(n)== "CLUSTER":
            verilog_cluster(n)
            continue
        if get_node_cat(n)== "MUX":
            verilog_mux(n)
            continue
        if get_node_cat(n)== "LOGIC":
            verilog_logic(n)
            continue
        if get_node_cat(n)== "SHIFT":
            verilog_shift(n)
            continue
        if get_node_cat(n)== "ALU":
            verilog_alu(n)
            continue
        if get_node_cat(n)== "MULT":
            verilog_mult(n)
            continue
        
        
        print "reg [%d:0] rr_%s;"%(n.inp[0].width+n.inp[1].width-1 , n.out[0].names[0])
        print "always @(posedge clk) begin"
        print "    rr_"+n.out[0].names[0]+" <= (" +get_signal_value(n.inp[0]) + ")*("+get_signal_value(n.inp[1])+");"
        print "end\n\n"
        
        print "assign %s = rr_%s;"%(n.out[0].names[0] , n.out[0].names[0])
      
        continue
            
            
        
        
        print "wire ["+str(n.out[0].width-1)+":0] ww_"+n.out[0].names[0]+";"
        
        print "//%s"%(n.op)
        print "//",n
        #print "    %s_pe %s_%d("%(get_node_cat(n), get_node_cat(n), n.pos)
        print "    alu %s_%d("%( get_node_cat(n), n.pos)
        #print "        .clk(clk),"
        verilog_port("a", n.inp[0])

        if len(n.inp)>1:
            verilog_port("b", n.inp[1])
        else:
            print "        .b(0),"


        if len(n.inp)>2:
            if n.inp[2].is_const:
                print "        //.s("+n.inp[2].value+"), //"+n.inp[2].names[0]
            else:
                print "        //.s("+n.inp[2].names[0]+"),"

        if len(n.inp)>3:
            print "        //%d more inputs"%(len(n.inp)-3)

        print "        .out(ww_"+n.out[0].names[0]+")"
        print "    );\n"
        
        print "reg ["+str(n.out[0].width-1)+":0] rr_"+n.out[0].names[0]+";"

        print "always @(posedge clk) begin"
        print "    rr_"+n.out[0].names[0]+" <= ww_"+n.out[0].names[0]+";"
        print "end\n\n"
    
        print "assign "+n.out[0].names[0]+"=rr_"+n.out[0].names[0]+";"
        
        

    print "\nendmodule\n\n"




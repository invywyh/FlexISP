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
        return str(eval(str(edge.value)))
    else:
        return edge.names[0]    

def verilog_port(port_name, edge, last=False):
    coma = ","
    if last:
        coma =""
        
    #print "        ."+port_name+"("+get_signal_value(edge)+")"+coma+" //"+edge.names[0]
    print "        ."+port_name+"("+get_signal_value(edge)+")"+coma
   
        


    
def verilog_cluster(n, PIPELINE = 0):
    if get_node_cat(n)!= "CLUSTER":
        return
    else :
        #print "# ", len(n.out), " ", n
        #return
        
        #print "//%s"%(n.op)
        print "//",n
        print "    pe_cluster%d %s_%d("%(len(n.out),get_node_cat(n), n.pos)
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


def generate_input(e, uid, PIPELINE = 0):
    if e.is_const:
        return str(e.value)
    elif PIPELINE==1:
        print "reg ["+str(e.width-1)+":0] rr_"+uid+"_"+e.names[0],";"
        print "always @(posedge clk) begin"
        print "    rr_"+uid+"_"+e.names[0]+" <= "+e.names[0]+";"
        print "end\n"
        return "rr_"+str(uid)+"_"+e.names[0]
    else:
        return e.names[0]
        
        


#Prints verilog instantiation of MULT
def verilog_other_mult(n, PIPELINE = 0):
    print "//",n
    print "//",n.inp[0].is_const , "  ", n.inp[1].is_const
    if True:
        print "//",n
        
        inp_names = []
        for i in range(len(n.inp)):
            inp_names.append( generate_input(n.inp[i], "%d_%d"%(n.pos,i) ,PIPELINE) )

        if len(inp_names)==1 or (n.inp[0].is_const or n.inp[1].is_const) :
            print "    mult1 %s_%d("%(get_node_cat(n), n.pos)
            if n.inp[0].is_const:
                print "        .a(",inp_names[1],"),"
            else:
                print "        .a(",inp_names[0],"),"
        else:
            print "    mult16 %s_%d("%(get_node_cat(n), n.pos)
            print "        .a(",inp_names[0],"),"
            print "        .b(",inp_names[1],"),"
        
        ##print "        .clk(clk),"            
        print "        .out("+n.out[0].names[0]+")"
        print "    );\n"
    
        return
    
    
    if PIPELINE == 0:
        print "wire [%d:0] %s_w;"%(n.inp[0].width+n.inp[1].width-1 , n.out[0].names[0])
        if n.inp[0].is_const or n.inp[1].is_const:
            print "    mult1 %s_%d("%(get_node_cat(n), n.pos)
            if n.inp[0].is_const:
                print "        .a(",inp_names[1],"),"
            else:
                print "        .a(",inp_names[0],"),"
        
            ##print "        .clk(clk),"            
            print "        .out("+n.out[0].names[0] + "_w)"
            print "    );\n"
            
        else:
            print "assign "+ n.out[0].names[0] + "_w = (" +get_signal_value(n.inp[0]) + ")*("+get_signal_value(n.inp[1])+");"
        print "assign %s = %s_w[23:8];"%(n.out[0].names[0] , n.out[0].names[0])
    elif PIPELINE == 1:
        print "reg [%d:0] rr_%s;"%(n.inp[0].width+n.inp[1].width-1 , n.out[0].names[0])
        print "always @(posedge clk) begin"
        print "    rr_"+n.out[0].names[0]+" <= (" +get_signal_value(n.inp[0]) + ")*("+get_signal_value(n.inp[1])+");"
        print "end\n\n"
        print "assign %s = rr_%s[23:8];"%(n.out[0].names[0] , n.out[0].names[0])
    else:
        print "ERROR: Unsupported value(",PIPELINE,") of PIPELINE!"
        quit()    
  
            

def verilog_other_alu(n, PIPELINE = 0):
    inp_names = []
    for i in range(len(n.inp)):
        inp_names.append( generate_input(n.inp[i], "%d_%d"%(n.pos,i) ,PIPELINE) )

        
    print "    alu %s_%d("%(get_node_cat(n), n.pos)

    print "        .a(",inp_names[0],"),"
    if len(inp_names) > 1:
        print "        .b(",inp_names[1],"),"
    else:
        print "        .b(0),"
        
    if len(inp_names)>2:
        print "        //.s("+inp_names[2]+"),"

    if len(inp_names)>3:
        print "        //%d more inputs"%(len(inp_names)-3)
            
    print "        .out("+n.out[0].names[0]+")"
    print "    );\n"



#Prints verilog instantiation of ALU
def verilog_alu(n, PIPELINE = 0):
    if get_node_cat(n)!= "ALU":
        return
    else :
        #print "//%s"%(n.op)
        print "//",n
        
        logic_op = {'gt':'>', 'ne':'!=','lt': '<', 'lte': '=<', 'eq':'==', 'gte':'>=', 'sub':'-', 'add':'+', 'inv':'~', 'sum':'==', 'abs':'+', 'min':'-', 'max':'+', 'and':'&', 'or':'|', 'not':'~'}
        
        inp_names = []
        for i in range(len(n.inp)):
            inp_names.append( generate_input(n.inp[i], "%d_%d"%(n.pos,i) ,PIPELINE) )

        if len(inp_names)==1 or (n.inp[0].is_const or n.inp[1].is_const) :
            print "    alu %s_%d("%(get_node_cat(n), n.pos)
            if n.inp[0].is_const:
                print "        .a(",inp_names[1],"),"
            else:
                print "        .a(",inp_names[0],"),"
            print "        .b(0),"
        else:
            print "    alu %s_%d("%(get_node_cat(n), n.pos)
            print "        .a(",inp_names[0],"),"
            print "        .b(",inp_names[1],"),"
        
        ##print "        .clk(clk),"            
        print "        .out("+n.out[0].names[0]+")"
        print "    );\n"

        
        
        #print "reg ["+str(n.out[0].width-1)+":0] rr_"+n.out[0].names[0]+";"

        #print "always @(posedge clk) begin"
        #print "    rr_"+n.out[0].names[0]+" <= ww_"+n.out[0].names[0]+";"
        ##if len(n.inp) > 1:
        ##    #print "    rr_"+n.out[0].names[0]+" <= "+get_signal_value(n.inp[0])+" - "+get_signal_value(n.inp[1])+";"
        ##    print "    rr_"+n.out[0].names[0]+" <= "+get_signal_value(n.inp[0])+" "+logic_op[n.op]+" "+get_signal_value(n.inp[1])+";"
        ##else:
        ##    #print "    rr_"+n.out[0].names[0]+" <= ~"+get_signal_value(n.inp[0])+";"
        ##    print "    rr_"+n.out[0].names[0]+" <= "+logic_op[n.op]+get_signal_value(n.inp[0])+";"
        #print "end\n"
        #
        #print "assign "+n.out[0].names[0]+"=rr_"+n.out[0].names[0]+";"
    



#Prints verilog instantiation of MULT
def verilog_mult_orig(n, PIPELINE = 0):
    if get_node_cat(n)!= "MULT":
        return
    else :
        print "//",n
        if PIPELINE == 0:
            print "wire [%d:0] %s_w;"%(n.inp[0].width+n.inp[1].width-1 , n.out[0].names[0])
            if n.inp[0].is_const or n.inp[1].is_const:
                print "    mult1 %s_%d("%(get_node_cat(n), n.pos)
                if n.inp[0].is_const:
                    print "        .a(",get_signal_value(n.inp[1]),"),"
                else:
                    print "        .a(",get_signal_value(n.inp[0]),"),"
        
                ##print "        .clk(clk),"            
                print "        .out("+n.out[0].names[0] + "_w)"
                print "    );\n"
            
            else:
                print "assign "+ n.out[0].names[0] + "_w = (" +get_signal_value(n.inp[0]) + ")*("+get_signal_value(n.inp[1])+");"
            print "assign %s = %s_w[23:8];"%(n.out[0].names[0] , n.out[0].names[0])
        #if PIPELINE == 0:
        #    print "wire [%d:0] %s_w;"%(n.inp[0].width+n.inp[1].width-1 , n.out[0].names[0])
        #    print "assign "+ n.out[0].names[0] + "_w = (" +get_signal_value(n.inp[0]) + ")*("+get_signal_value(n.inp[1])+");"
        #    print "assign %s = %s_w[23:8];"%(n.out[0].names[0] , n.out[0].names[0])
        elif PIPELINE == 1:
            print "reg [%d:0] rr_%s;"%(n.inp[0].width+n.inp[1].width-1 , n.out[0].names[0])
            print "always @(posedge clk) begin"
            print "    rr_"+n.out[0].names[0]+" <= (" +get_signal_value(n.inp[0]) + ")*("+get_signal_value(n.inp[1])+");"
            print "end\n\n"
            print "assign %s = rr_%s[23:8];"%(n.out[0].names[0] , n.out[0].names[0])
        else:
            print "ERROR: Unsupported value(",PIPELINE,") of PIPELINE!"
            quit()    
        
        
#Prints verilog instantiation of MULT16
def verilog_mult(n, PIPELINE = 0):
    if get_node_cat(n)!= "MULT":
        return
    else :
        #print "//%s"%(n.op)
        print "//",n
        
        inp_names = []
        for i in range(len(n.inp)):
            inp_names.append( generate_input(n.inp[i], "%d_%d"%(n.pos,i) ,PIPELINE) )

        if len(inp_names)==1 or (n.inp[0].is_const or n.inp[1].is_const) :
            print "    mult16 %s_%d("%(get_node_cat(n), n.pos)
            if n.inp[0].is_const:
                print "        .a(",inp_names[1],"),"
            else:
                print "        .a(",inp_names[0],"),"

            print "        .b(0),"
        else:
            print "    mult16 %s_%d("%(get_node_cat(n), n.pos)
            print "        .a(",inp_names[0],"),"
            print "        .b(",inp_names[1],"),"
        
        ##print "        .clk(clk),"            
        print "        .out("+n.out[0].names[0]+")"
        print "    );\n"



#Prints verilog instantiation of MUX
def verilog_mux(n, PIPELINE = 0):
    if get_node_cat(n)!= "MUX":
        return
    else :
        #print "//%s"%(n.op)
        print "//",n
        #print "    %s_pe %s_%d("%(get_node_cat(n), get_node_cat(n), n.pos)
        
        #print "    mux_pe %s_%d("%(get_node_cat(n), n.pos)
        ##print "        .clk(clk),"
        #verilog_port("a", n.inp[1]);
        #verilog_port("b", n.inp[2]);
        #verilog_port("s", n.inp[0]);
        #verilog_port("c", n.out[0],last=True);
        #print "    );\n"

        #print "    assign "+n.out[0].names[0]+"="+get_signal_value(n.inp[0])+" ? "+get_signal_value(n.inp[1])+":"+get_signal_value(n.inp[2])+";"
        
        #print "reg [%d:0] rr_%s;"%(n.out[0].width, n.out[0].names[0])
        #print "always @(posedge clk) begin"
        #print "    rr_"+n.out[0].names[0]+" <= " +get_signal_value(n.inp[0])+" ? "+get_signal_value(n.inp[1])+":"+get_signal_value(n.inp[2])+";"
        #print "end\n\n"
        
        #print "assign %s = rr_%s;"%(n.out[0].names[0] , n.out[0].names[0])


                
        a = generate_input(n.inp[1], "%d_%d"%(n.pos,1) , PIPELINE)
        b = generate_input(n.inp[2], "%d_%d"%(n.pos,2) , PIPELINE)

        if n.inp[1].is_const and n.inp[2].is_const:
            print "    mux2 %s_%d("%(get_node_cat(n), n.pos)
            print "        .a(0),"
            print "        .b(0),"
        elif n.inp[1].is_const or n.inp[2].is_const:
            print "    mux2 %s_%d("%(get_node_cat(n), n.pos)
            if n.inp[1].is_const:
                print "        .a(",b,"),"
            else:
                print "        .a(",a,"),"

            print "        .b(0),"

        else:
            print "    mux2 %s_%d("%(get_node_cat(n), n.pos)
            print "        .a(",a,"),"
            print "        .b(",b,"),"
        ##print "        .clk(clk),"
        verilog_port("s", n.inp[0])            
        print "        .out("+n.out[0].names[0]+")"
        print "    );\n"
    




def verilog_logic(n, PIPELINE = 0):
    if get_node_cat(n)!= "LOGIC":
        return
    else :
        logic_op = {'and':'&', 'or':'|','not': '~', 'xor': '^', 'eq':'==', 'gt':'& ~'}
        print "//",n
        if PIPELINE == 0:
            if len(n.inp)==1:
                print "    assign "+n.out[0].names[0]+"="+logic_op[n.op]+" "+get_signal_value(n.inp[0])+";"
            else:
                print "    assign "+n.out[0].names[0]+"="+get_signal_value(n.inp[0])+" "+logic_op[n.op]+" "+get_signal_value(n.inp[1])+";"
        elif PIPELINE == 1:
            print "reg [%d:0] rr_%s;"%(n.out[0].width, n.out[0].names[0])
            print "always @(posedge clk) begin"
            if len(n.inp)==1:
                print "    rr_"+n.out[0].names[0]+" <= "+logic_op[n.op]+" "+get_signal_value(n.inp[0])+";"
            else:
                print "    rr_"+n.out[0].names[0]+" <= "+get_signal_value(n.inp[0])+" "+logic_op[n.op]+" "+get_signal_value(n.inp[1])+";"
            print "end\n"
            print "assign %s = rr_%s;"%(n.out[0].names[0] , n.out[0].names[0])
        else:
            print "ERROR: Unsupported value(",PIPELINE,") of PIPELINE!"
            quit() 


def verilog_shift(n, PIPELINE = 0):
    if get_node_cat(n)!= "SHIFT":
        return
    else :
        if n.inp[1].is_const:
            inp_names = []
            for i in range(len(n.inp)):
                inp_names.append( generate_input(n.inp[i], "%d_%d"%(n.pos,i) ,PIPELINE) )

            print "    alu %s_%d("%(get_node_cat(n), n.pos)
            print "        .a(",inp_names[0],"),"           
            print "        .b(0),"           
            print "        .out("+n.out[0].names[0]+")"
            print "    );\n"
        else:
            verilog_other_alu(n, PIPELINE)
            
        return        
        
        
        logic_op = {'rshift':'>>', 'lshift':'<<'}
        print "//",n
        
        if n.inp[1].is_const:
            if PIPELINE == 0:
                print "    assign "+n.out[0].names[0]+"="+get_signal_value(n.inp[0])+" "+logic_op[n.op]+" "+get_signal_value(n.inp[1])+";"
            elif PIPELINE == 1:
                print "reg [%d:0] rr_%s;"%(n.out[0].width, n.out[0].names[0])
                print "always @(posedge clk) begin"
                print "    rr_"+n.out[0].names[0]+" <= " +get_signal_value(n.inp[0])+" "+logic_op[n.op]+" "+get_signal_value(n.inp[1])+";"
                print "end\n\n"
                print "assign %s = rr_%s;"%(n.out[0].names[0] , n.out[0].names[0])
            else:
                print "ERROR: Unsupported value(",PIPELINE,") of PIPELINE!"
                quit() 
            
        else:
            verilog_other_alu(n, PIPELINE)
            #if PIPELINE == 0:
            #    print "    assign "+n.out[0].names[0]+" = " +get_signal_value(n.inp[0])+" - "+get_signal_value(n.inp[1])+";"
            #elif PIPELINE == 1:
            #    print "reg [%d:0] rr_%s;"%(n.out[0].width, n.out[0].names[0])
            #    print "always @(posedge clk) begin"
            #    print "    rr_"+n.out[0].names[0]+" <= " +get_signal_value(n.inp[0])+" - "+get_signal_value(n.inp[1])+";"
            #    print "end\n\n"
            #    print "assign %s = rr_%s;"%(n.out[0].names[0] , n.out[0].names[0])
            #else:
            #    print "ERROR: Unsupported value(",PIPELINE,") of PIPELINE!"
            #    quit() 


def add_remap(remap, from_i, to_i):
    if to_i in  remap.keys():
        remap[to_i].AddAliases(from_i.names)
        remap[from_i] = remap[to_i]
    else:
        to_i.AddAliases(from_i.names)
        remap[from_i] = to_i

def const_prop(nodes_arr, edges_arr):
    two_oper  = {'and':'&', 'or':'|', 'xor': '^', 'eq':'==','gt' : '>', 'ne' : '!=', 'lt' : '<', 'lte' : '<=',  'gte' : '>=', 'sub' : '-','add' : '+',  'sum' : '+', 'lshift' : '<<', 'rshift' : '>>', 'mult' : '*', 'div' : '/'}
    one_oper  = {'inv' : '~', 'not' : '~'}
    func_two_oper = ['min', 'max']
    func_one_oper = ['abs']
    mux_oper  = ['gmux', 'mux']

    #print ">> const_prop: ", len(nodes_arr)

    res_nodes = []
    
    remap_edges = {}
    
    static_op = 0
    for n in nodes_arr:
        #print "//",n
        #print "//",n.inp[0], " is_const = ", n.inp[0].is_const, " / value = ", n.inp[0].value
        #if len(n.inp) > 1:
        #    print "//",n.inp[1], " is_const = ", n.inp[1].is_const, " / value = ", n.inp[1].value
        #if len(n.inp) > 2:
        #    print "//",n.inp[2], " is_const = ", n.inp[2].is_const, " / value = ", n.inp[2].value

        
        if (n.op in two_oper.keys()) and n.inp[0].is_const and n.inp[1].is_const:
            #print "STATIC: ", n
            static_op = static_op + 1
            n.out[0].Assign( eval("int( (%s)%s(%s) )"%(n.inp[0].value, two_oper[n.op], n.inp[1].value)) )
            #nodes_arr.remove(n)
        elif (n.op in one_oper.keys()) and n.inp[0].is_const:
            static_op = static_op + 1
            n.out[0].Assign( eval("int( %s(%s) )"%(one_oper[n.op],n.inp[0].value)) )
            #nodes_arr.remove(n)
        elif (n.op in func_two_oper) and n.inp[0].is_const and n.inp[1].is_const:
            static_op = static_op + 1
            n.out[0].Assign( eval("int( %s(%s,%s) )"%(n.op, n.inp[0].value, n.inp[1].value))  )
            #nodes_arr.remove(n)
        elif (n.op in func_one_oper) and n.inp[0].is_const:
            static_op = static_op + 1
            n.out[0].Assign( eval("int( %s(%s) )"%(n.op, n.inp[0].value)) )
            #nodes_arr.remove(n)
        elif (n.op in mux_oper) and n.inp[0].is_const:
            static_op = static_op + 1
            #print "STATIC Mux: ", n
            #n.out[0].is_const = True
            if n.inp[0].value == 0:
                #print "::: ",n.inp[1]
                #n.inp[1].AddAliases(n.out[0].names)
                #n.out[0] = n.inp[1]
                add_remap(remap_edges,n.out[0], n.inp[1])
                #print "### ",n.inp[1]
                #nodes_arr.remove(n)
                #n.out[0].value = n.inp[1].value
            else:
                #print "::: ",n.inp[2]
                #n.out[0].value = n.inp[2].value
                #n.inp[2].AddAliases(n.out[0].names)
                #n.out[0] = n.inp[0]
                add_remap(remap_edges,n.out[0], n.inp[2])
                #print "### ",n.inp[2]
                #nodes_arr.remove(n)
            #print "...... Mux: ", n
            #print "...... #11: ",findByPoss(11,nodes_arr)
        elif (n.op=="add" or n.op=="sum"):
            if len(n.inp) < 2:
            #    print "\n\nMISSING INPUTS?: ",n,"\n\n"
                static_op = static_op + 1
                add_remap(remap_edges,n.out[0], n.inp[0])
            elif (n.inp[0].is_const and n.inp[0].value == 0):
                static_op = static_op + 1
                #n.inp[1].AddAliases(n.out[0].names)
                #n.out[0] = n.inp[1]
                add_remap(remap_edges,n.out[0], n.inp[1])
                #nodes_arr.remove(n)
            elif n.inp[1].is_const and n.inp[1].value == 0:
                static_op = static_op + 1
                #n.inp[0].AddAliases(n.out[0].names)
                #n.out[0] = n.inp[0]
                add_remap(remap_edges,n.out[0],n.inp[0])
                #nodes_arr.remove(n)
            else:
                res_nodes.append(n)
        elif n.op=="sub" and n.inp[1].is_const and n.inp[1].value == 0:
            static_op = static_op + 1
            #n.inp[0].AddAliases(n.out[0].names)
            #n.out[0] = n.inp[0]
            add_remap(remap_edges,n.out[0], n.inp[0])
            #nodes_arr.remove(n)
        elif n.op=="mult":
            if (n.inp[0].is_const and n.inp[0].value == 0) or (n.inp[1].is_const and n.inp[1].value == 0):
                static_op = static_op + 1
                n.out[0].Assign( 0 )
                #nodes_arr.remove(n)
            elif n.inp[0].is_const and n.inp[0].value == 1:
                static_op = static_op + 1
                #n.inp[1].AddAliases(n.out[0].names)
                #n.out[0] = n.inp[1]
                add_remap(remap_edges,n.inp[1], n.out[0])
                #nodes_arr.remove(n)
            elif n.inp[1].is_const and n.inp[1].value == 1:
                static_op = static_op + 1
                #n.inp[0].AddAliases(n.out[0].names)
                #n.out[0] = n.inp[0]
                add_remap(remap_edges, n.out[0], n.inp[0])
                #nodes_arr.remove(n)
            else:
                res_nodes.append(n)
        else:
            res_nodes.append(n)
          
    #print "remap_edges:\n"
    #for k,v in remap_edges.items() :
    #    print k, "  ===== ", v
    
    
    #print "------------"
    
    for n in res_nodes:
       for e in remap_edges:
           if e in n.inp:
               #print "@@@@ ", n                    
               n.inp = [ remap_edges[e] if e==x else x for x in n.inp  ]
               #print "$$$$ ", n
                       
    res_edges = list(set(edges_arr) - set(remap_edges.keys()))                                                     
    #print "<< const_prop: ", len(res_nodes), " static_op = ", static_op, "  was=",len(nodes_arr)
    return (res_nodes, res_edges) #nodes_arr#       
           
                                 

def make_verilog(module_name, nodes_arr_in, edges_arr_in):
    
    nodes_arr, edges_arr = const_prop(nodes_arr_in, edges_arr_in)
    nodes_arr, edges_arr = const_prop(nodes_arr, edges_arr)
    (nodes_arr, edges_arr) = (nodes_arr_in, edges_arr_in)
    
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

        #all_out.add(n.out[0])
        all_out.update(n.out)
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

    #print "\n--------------------------------------\n"


    PIPELINE = 1


    print "\n\n\nmodule %s ("%module_name

    for n in in_names:
        print prep(n.names[0])+","

    for n in out_names:
        print "r_"+n.names[0]+","

    print "clk"
    print ");\n\n"

    for n in in_names:
        if n.width > 1:
            print "    input ["+str(n.width-1)+":0] "+prep(n.names[0])+";"
        else:
            print "    input "+prep(n.names[0])+";"

    for n in out_names:
        if n.width > 1:
            print "    output ["+str(n.width-1)+":0] r_"+n.names[0]+";"
        else:
            print "    output r_"+n.names[0]+";"

        #if PIPELINE==1:
        #    print "    output ["+str(n.width-1)+":0] r_"+n.names[0]+";"
        #else:
        #    print "    output ["+str(n.width-1)+":0] "+n.names[0]+";"

    print "    input clk;"


    if PIPELINE==1:
        for n in out_names:
            if n.width > 1:            
                print "reg ["+str(n.width-1)+":0] r_"+n.names[0]+";"
            else:
                print "reg r_"+n.names[0]+";"


    #for n in in_names:
    #    print "    reg ["+str(n.width-1)+":0] r0_"+n.names[0]+", r1_"+n.names[0]+", "+n.names[0]+";"

    print "\n\n"


    #print "always @(posedge clk) begin\n"
    #for n in in_names:
    #    print "    r0_"+n.names[0]+" <= w_"+n.names[0]+";r1_"+n.names[0]+" <= r0_"+n.names[0]+";"+n.names[0]+" <= r1_"+n.names[0]+";"
    #print "end\n\n"

    #Output registers are required for power estipation
    for n in out_names:
        if n.width > 1:
            print "    wire ["+str(n.width-1)+":0] "+n.names[0]+";"                        
        #    print "    reg ["+str(n.width-1)+":0] r0_"+n.names[0]+", r1_"+n.names[0]+";"
        else:
            print "    wire "+n.names[0]+";"     

    print "always @(posedge clk) begin\n"
    for n in out_names:
        print "    r_"+n.names[0]+" <= "+n.names[0]+";"
    #    print "    r0_"+n.names[0]+" <= "+n.names[0]+";r1_"+n.names[0]+" <= r0_"+n.names[0]+";r_"+n.names[0]+" <= r1_"+n.names[0]+";"
    print "end\n\n"
    
        #print "\n\n"


    for w in int_wires:
        if w not in in_names and w not in out_names:
            print "    wire ["+str(w.width-1)+":0] "+w.names[0]+";"
    print "\n\n"

    
    for n in nodes_arr:       
        if get_node_cat(n)== "CLUSTER":
            verilog_cluster(n, PIPELINE)
            continue
        if get_node_cat(n)== "MUX":
            verilog_mux(n, PIPELINE)
            continue
        if get_node_cat(n)== "LOGIC":
            verilog_logic(n, PIPELINE)
            continue
        if get_node_cat(n)== "SHIFT":
            verilog_shift(n, PIPELINE)
            continue
        if get_node_cat(n)== "ALU":
            verilog_alu(n, PIPELINE)
            continue
        if get_node_cat(n)== "MULT":
            verilog_mult(n, PIPELINE)
            continue
        
        
        verilog_other_mult(n, PIPELINE)
        
      
        continue
     
        verilog_other_alu(n, PIPELINE)   
       
        
        

    print "\nendmodule\n\n\n"


    return (module_name, in_names, out_names)





def make_verilog_top(module_name, dag_obj):
    print "//******************************"
    for k in dag_obj.kernels:
        print "::: ", dag_obj.kernels[k].in_names
            
    



    print "\n\n\nmodule %s ("%module_name

    for k in dag_obj.kernels:
        for n in dag_obj.kernels[k].in_names:
            print k+"_"+prep(n.names[0])+","

    for k in dag_obj.kernels:
        for n in dag_obj.kernels[k].out_names:
            print k+"_"+n.names[0]+","

    print "clk"
    print ");\n\n"

    for k in dag_obj.kernels:
        for n in dag_obj.kernels[k].in_names:
            if n.width > 1:
                print "    input ["+str(n.width-1)+":0] "+k+"_"+prep(n.names[0])+";"
            else:
                print "    input "+k+"_"+prep(n.names[0])+";"

    for k in dag_obj.kernels:
        for n in dag_obj.kernels[k].out_names:
            if n.width > 1:
                print "    output ["+str(n.width-1)+":0] "+k+"_"+n.names[0]+";"
            else:
                print "    output "+k+"_"+n.names[0]+";"

    print "    input clk;\n\n"


    for k in dag_obj.kernels:
        print k+" "+k+"_OBJ ("

        for n in dag_obj.kernels[k].in_names:
            print "    ."+prep(n.names[0])+"("+k+"_"+prep(n.names[0])+"),"
        for n in dag_obj.kernels[k].out_names:
            print "    .r_"+prep(n.names[0])+"("+k+"_"+prep(n.names[0])+"),"
            
        print "    .clk(clk)\n"
                        
        print ");\n\n"



    print "\nendmodule\n\n\n"

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


def expand_op(base_op, op,inp, out):  
    if len(inp) <3:
        n = Node(base_op,inp,[out])
        return ([n], [])
    
    new_ops = []
    new_edges = []
    node_cnt = int(math.floor(len(inp)/2))
    recid = 2*node_cnt

    out_edges = []
        
    for i in range(node_cnt):
        op_name = op+"_"+str(i)
        
        out_name = out.names[0] + op_name
        e = Edge(out.sig_type, out_name)
        n = Node(base_op,inp[2*i:2*i+2],[e])
        new_ops +=[n]
        new_edges += [e]
        out_edges += [e]

    if(recid < len(inp)):
        out_edges += inp[recid:]
    #Recurtion to one level down th binary tree
    if(len(out_edges)>1):
        (ops, edges) = expand_op(base_op, op+"&", out_edges , out)
        new_ops += ops
        new_edges += edges
    return (new_ops, new_edges)


#parse bus fomat: name[a:b][c:d]
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

#creates list of signal names for a bus
def make_names (prefix, dims) :
    res = []
    if len(dims) > 0:
        for i in range(dims[0]):
            a = make_names ("{0}[{1}]".format(prefix,i), dims[1:])
            if a:
                res += a
        return res
    else:
        return [prefix] 




                
def parse_stencil(stencil_obj) :
    #DO_NODE_EXPANSION=False
    DO_NODE_EXPANSION=True

    #stencil_obj is a list of strings, each string is dpda assembly cmd
    edges_arr = []
    
    alias_map = dict()

    nodes_arr = []
    total_assign = 0

    for node in stencil_obj:
        if node == None:
            continue
        #print node
        comp = node.split()
        #Look for edge
        if len(comp) == 2:
            #Signal declaration
            if (comp[0].find("fix") > -1) | (comp[0].find("bool") > -1):
                (sig_name, widths) = parse_sig(comp[1])
                #print comp[1]
                for sig in make_names(sig_name, widths):
                    #print comp[0]+"->> "+sig
                    n_e = Edge(comp[0], sig)
                    n_e.bus_name = comp[1]
                    #edges_arr += [Edge(comp[0], sig)]
                    edges_arr += [n_e]
                    alias_map[sig] = n_e

                #print comp[0]+">>>>> "+comp[1]
            else:
                print "Unknown signal type:"+comp[0]+">>>>> "+comp[1]
        #Look for node
        elif len(comp) == 3:
            #aliase/assignment or reduction (mv or sum)
            if comp[0] == 'mv':
                try:
                    #check if this is assignment
                    value = comp[2]
                    if value.startswith("0x"):
                        value = value[2:]
                    v = float(value)

                    op = comp[2]
                    inp = []
                    #out = findByName(edges_arr, comp[1])
                    #print comp
                    #total_assign = total_assign + 1
                    #newOp = Node(op, inp, out)
                    #nodes_arr +=[newOp]
                    #print newOp
                    #print "!!!!"
                    e_list = findByAliase(comp[1],edges_arr)
                    for e in e_list:
                        e.Assign(op)
                except ValueError:
                    #e_list = findByName(edges_arr, comp[1])
                    e_list = findByAliase(comp[1],edges_arr)
                    pos = len(comp[1])
                       
                    for e in e_list:
                        #aliase + bus selectors [??]...[??]
                        new_name = comp[2]+ e.names[0][pos:]
                        e.Aliase(new_name) 
                        #print "-------------"
                        #print e.names[0] + " = " + new_name
                        #print alias_map[e.names[0]]
                        #print alias_map[new_name]
                        #print "+++++++++++++"
                        alias_map[e.names[0]] = alias_map[new_name]
                      
                     #pass
            else:
                #reduction of some bus
                op = comp[0]
                inp = findByName(edges_arr, comp[2])
                out = findByName(edges_arr, comp[1])
                #Node expantion
                cnt_in = len(inp)
                if DO_NODE_EXPANSION & (cnt_in > 2):
                    #print "*"
                    #print "++++++++++++ %s"%op
                    (ops, edges) = expand_op(op, op, inp, out[0])
                    nodes_arr +=ops
                    edges_arr +=edges
                    for e in edges: 
                         alias_map[e.names[0]] = e
                else:
                    newOp = Node(op, inp, out)
                    nodes_arr +=[newOp]
                    #print newOp

                #print comp
                    
        elif len(comp) == 4:
            #Normal OP with 2 in and 1 out
            #print comp
            op = comp[0]
            inp = findByName(edges_arr, comp[2]) + findByName(edges_arr, comp[3])
            out = findByName(edges_arr, comp[1])

            #Node expantion
            cnt_in = len(inp)
            if DO_NODE_EXPANSION & ( ((op=="mux") | (op=="gmux")) & (cnt_in > 4) ):
                inp1 = findByName(edges_arr, comp[2])
                inp2 = findByName(edges_arr, comp[3])

                #for j in range(0,min([len(inp1),len(inp2),len(inp3)])):
                #    newOp = Node(op, [inp1[j], inp2[j], inp3[j]], [out[j]])
                #    nodes_arr +=[newOp]

                #print "(((((((((((((((((("
                print ">>>>>>>> %s  %d %d %d "%(op, len(inp), len(inp1), len(inp2))
                #print "))))))))))))))))))"
            elif DO_NODE_EXPANSION & (cnt_in > 2) & ( ((op!="mux") & (op!="gmux")) ):
#if DO_NODE_EXPANSION & (cnt_in > 2):
                #print "*"
                #print "------------ %s"%op
                #print inp
                #print ",,,,,,,,,,,,,,,,,,"
                (ops, edges) = expand_op(op, op, inp, out[0])
                nodes_arr +=ops
                edges_arr +=edges
                for e in edges: 
                    alias_map[e.names[0]] = e

            else:
                newOp = Node(op, inp, out)
                nodes_arr +=[newOp]
                #print newOp

        else:
            #print "Unknow OP type - too many arguments:"
            op = comp[0]
            out = findByName(edges_arr, comp[1])
            inp = []
            for i in comp[2:]:
                inp += findByName(edges_arr, i)
            #Node expantion
            cnt_in = len(inp)

            #if  ((op=="mux") | (op=="gmux")) :
            #    print "************"
            #    print inp
            #    print comp
            #    print "============"


            if DO_NODE_EXPANSION & ( ((op=="mux") | (op=="gmux")) & (cnt_in > 4) ):
                inp1 = findByName(edges_arr, comp[2])
                inp2 = findByName(edges_arr, comp[3])
                inp3 = findByName(edges_arr, comp[4])

                for j in range(0,min([len(inp1),len(inp2),len(inp3)])):
                    newOp = Node(op, [inp1[j], inp2[j], inp3[j]], [out[j]])
                    nodes_arr +=[newOp]

                #print "-------------------"
                print "######### %s   %d %d %d %d"% (op, len(inp),len(inp1),len(inp2),len(inp3))
                #print "+++++++++++++++++++"
            elif DO_NODE_EXPANSION & (cnt_in > 2) & ( ((op!="mux") & (op!="gmux")) ):
                #print "*"
                #print "         >>>%s"%op
                (ops, edges) = expand_op(op, op, inp, out[0])
                nodes_arr +=ops
                edges_arr +=edges
                for e in edges: 
                    alias_map[e.names[0]] = e

            else:
                newOp = Node(op, inp, out)
                nodes_arr +=[newOp]
                #print newOp

    #print "**********************************"
    #print alias_map
    #for k in alias_map.keys():
    #    print k + " :::: "+str(alias_map[k])

    for n in nodes_arr:
        new_in = list()
        for i in n.inp:
            new_in.append(alias_map[i.names[0]])
        n.inp = list(new_in)

        new_out = list()
        for o in n.out:
            new_out.append(alias_map[o.names[0]])
        n.out = list(new_out)

    for n in nodes_arr:
        n.children = findChildren(n, nodes_arr, edges_arr)

    return (nodes_arr, edges_arr, total_assign)




def listEdgeLength(nodes_arr, edges_arr):
    for n in nodes_arr:
        sys.stdout.write(str(n)+"-> ")
        children = findChildren(n, nodes_arr, edges_arr)
        for c in children:
            sys.stdout.write(" %d," %(c.pos - n.pos ))
        print
    print "\n\n"






def parse_meta_data(blob):
  #blob = yaml.load(open(filename, 'r'))
  
  # Grab the top-level module
  top = blob['top']
  
  keywords = ['input_image', 'output_image', 'IfcCtl', 'MaximumDomainSize', 'MaximumTileSize']

  graph = Dag()
  graph.head = top['input_image'][0]
  graph.tail = top['output_image'][0]
  
  print "Start\n\n"
  
  for name in top:
    # Everything in the top level that isn't a keyword must be a stencil
    if name in keywords:
      continue
      
      
    kMeta = blob['top'][name]
    kConfig = blob[kMeta['Config']]
    kMap = blob[kConfig['Map']][0] # TODO: always a double-deep list?
    kReduce = blob[kConfig['Reduce']][0]
    kTaps = kConfig['RTap']
    # Create a kernel object
    kernel = Kernel()
    kernel.name = name
    kernel.src = kMeta['PixelIn'][0]
    kernel.sink = kMeta['PixelOut'][0]
    kernel.rtaps = kTaps

    kernel.sizeIn = kConfig['StencilIn']
    kernel.sizeOut = kConfig['StencilOut']
    kernel.centroid = kConfig['Centroid']

    kernel.ppout = kConfig['RPixelPart'] 
    
    graph.add_kernel(kernel)
    
    print "::",str(kernel), "   ", kernel.sizeIn, "->", kernel.sizeOut
    print kTaps
    
  print "\n========================\n"
  print graph.kernels
  print "\n"
  print graph.edges
  print "\n------------\n"


#result = {}
def parse_file(FNAME):
    if not os.path.isfile(FNAME):
        print "No such file: "+FNAME
        return None 
    
    stream = open( FNAME ,"r")
    obj = yaml.load(stream)
    
    
    parse_meta_data(obj)
    #return
    
    result=[]

    #sig_width_pattern = re.compile(r'.+_(\d+)_\d+', re.M|re.I)
    
    
    for stencil_name in obj:

        #if stencil_name != "in1_17_reduce":
        #if stencil_name != "cnr_3_reduce":
        #if stencil_name != "calcWbg_3_reduce":
        #    continue

        edges_arr = []
        nodes_arr = []
        total_assign = 0

        dac_deapth = 0
        if type(obj[stencil_name]) is list:
            (nodes_arr, edges_arr, total_assign) = parse_stencil(obj[stencil_name][0])

            op_width_dist={}
            op_dist = {}
            for n in nodes_arr:
                add_to_dist(op_dist, n.op)
                add_to_dist(op_width_dist, n.width)


            for i in range(len(nodes_arr)):
                nodes_arr[i].pos = i 
                nodes_arr[i].out[0].start_pos = i
                if nodes_arr[i].lvl == -1:
                    parents = findParents(nodes_arr[i], nodes_arr, edges_arr)
                    if len(parents)==0:
                        nodes_arr[i].lvl = 0
                    else:
                        for p in parents:
                            nodes_arr[i].lvl = max(nodes_arr[i].lvl, p.lvl+1)

                    dac_deapth = max(dac_deapth, nodes_arr[i].lvl)

#            pos = 0 
#            for n in nodes_arr:
#                if n.pos > -1:
#                    continue
#                else:
#                    n.pos = pos
#                    pos   = pos +1
#                    children = findChildren(n, nodes_arr, edges_arr)
#                    n.out[0].fan_out = len(children)
#                    for c in children:
#                        if c.pos == -1:
#                            c.pos = pos
#                            pos = pos+1


            edge_cnt = len(edges_arr)
            if edge_cnt > 0:
                r={}

                #print stencil_name
                r['name'] = stencil_name


                r['total_assign'] = total_assign
                r['nodes_arr'] = nodes_arr
                r['edges_arr'] = edges_arr

                r['dac_deapth']=dac_deapth
                r['OP_width'] = op_width_dist
                #r['OP_dist'] = op_dist

                result += [r]


                print "%s=%d, %d"%(stencil_name, total_assign, dac_deapth)
                
    return result           

    #print "\n-----------------------------\n\n"
    #display_result(result)







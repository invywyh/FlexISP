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

#import dpda_parse.utils
from dpda_parse.base import *
from dpda_parse.utils import *
from dpda_parse.clustering import *
from dpda_parse.parse import *
from dpda_parse.verilog import *
from dpda_parse.graphviz import *
from dpda_parse.placement import *



def listEdgeLength(nodes_arr, edges_arr):
    for n in nodes_arr:
        sys.stdout.write(str(n)+"-> ")
        children = findChildren(n, nodes_arr, edges_arr)
        for c in children:
            sys.stdout.write(" %d," %(c.pos - n.pos ))
        print
    print "\n\n"










result = {}







#FNAME = "fast9_orion/orion_out/conv.yml"
apps = ( 
#"../2014_03_19_HierFlow/isp_orion/orion_out",
#"../2013_12_16_SIGGRAPH/fast9_orion/orion_out",
#"../2013_12_16_SIGGRAPH/harris_orion/orion_out",
#"../2013_12_16_SIGGRAPH/canny_orion/orion_out"

"../2013_12_16_SIGGRAPH/fast9_orion/orion_out",
"../2013_12_16_SIGGRAPH/canny_orion/orion_out",
"../2013_12_16_SIGGRAPH/harris_orion/orion_out",
"../2013_12_16_SIGGRAPH/lk_int_orion/orion_out_xsm",
#"../2013_12_16_SIGGRAPH/stereo_orion/orion_out_xxsm", 
#"../2013_12_16_SIGGRAPH/stereo_orion/orion_out_xsm", 
"../2013_12_16_SIGGRAPH/stereo_orion/orion_out_sm", 
"../2013_12_16_SIGGRAPH/deconvolucy_orion/orion_out_save", 
"../2014_03_19_HierFlow/fcam_orion/orion_out",
#"../2014_03_19_HierFlow/fcam_orion/orion_out_sm",
"../2014_03_19_HierFlow/isp_orion/orion_out"
)
#apps = ( 
#"../2014_03_19_HierFlow/isp_orion/orion_out",
#"../2013_12_16_SIGGRAPH/fast9_orion/orion_out",
#"../2013_12_16_SIGGRAPH/harris_orion/orion_out",
#"../2013_12_16_SIGGRAPH/canny_orion/orion_out" 
#)

#apps = ( "../2013_12_16_SIGGRAPH/fast9_orion/orion_out","../2013_12_16_SIGGRAPH/canny_orion/orion_out")

#apps = ( "../2013_12_16_SIGGRAPH/fcam_orion/orion_out","../2013_12_16_SIGGRAPH/canny_orion/orion_out")

#apps = ( "../2014_03_19_HierFlow/isp_orion/orion_out", "" )

#apps = ( "/nobackup/jbrunhav/convGenBuildDirs/HIER_results/fcam_sm_asic", "" )
#apps = ( "../2014_03_19_HierFlow/fcam_orion/orion_out","../2014_03_19_HierFlow/fcam_orion/orion_out_sm")
#apps = ( "../2014_03_19_HierFlow/fcam_orion/orion_out","../2013_12_16_SIGGRAPH/deconvolucy_orion/orion_out_save")

#apps = ( "../2014_03_19_HierFlow/isp_orion/orion_out","../2013_12_16_SIGGRAPH/deconvolucy_orion/orion_out_save")

#apps = ( "../2013_12_16_SIGGRAPH/canny_orion/orion_out","../2013_12_16_SIGGRAPH/fast9_orion/orion_out")
#apps = ( "../2014_03_19_HierFlow/fcam_orion/orion_out","../2013_12_16_SIGGRAPH/harris_orion/orion_out/")
#apps = ( "../2013_12_16_SIGGRAPH/deconvolucy_orion/orion_out_save","../2013_12_16_SIGGRAPH/harris_orion/orion_out")
apps = ( 
#"./2015_05_06_MICRO/fcam/orion_out",
#"./2015_05_06_MICRO/isp/orion_out",
#"./2015_05_06_MICRO/canny16/orion_out",
#"./2015_05_06_MICRO/harris16/orion_out",
#"./2015_05_06_MICRO/lk/orion_out",
#"./2015_05_06_MICRO/stereo/orion_out",
#"./2014_03_19_HierFlow/fcam_orion/orion_out",
#"./2014_03_19_HierFlow/isp_orion/orion_out",
"./2013_12_16_SIGGRAPH/deconvolucy_orion/orion_out_save",
#"./2013_12_16_SIGGRAPH/harris_orion/orion_out", 
#"../2014_03_19_HierFlow/isp_orion/orion_out", 
#"./2013_12_16_SIGGRAPH/canny_orion/orion_out", 
#"../2014_03_19_HierFlow/fcam_orion/orion_out", 
#"./2013_12_16_SIGGRAPH/stereo_orion/orion_out_sm"
)
#apps = ( "../2013_12_16_SIGGRAPH/lk_int_orion/orion_out_xsm","../2013_12_16_SIGGRAPH/harris_orion/orion_out")

#FNAME = sys.argv[1]

DO_PARSE=True
RESULT_FILE='parse_dpda_result_sm.yml'



def is_contained(s0,s1):
    l0=s0.split("_")[1:]
    l1=s1.split("_")[1:]

    if len(l0)!=len(l1):
        return False

    for i in range(len(l0)):
        if l0[i]<l1[i]:
            return False
    return True




def prep(name):
    return re.sub(r"[\[\]\&]","_",name)


def print_cluster_connections(cluster_arr, cluster_edges_arr):
    print
    sys.stdout.write("    ")
    for c in cluster_arr:
        sys.stdout.write("| %2d " %( c.pos ))
    print
    for c in cluster_arr:
        sys.stdout.write(" %2d " %( c.pos ))
        for k in cluster_arr:
            if len(set(c.inp)&set(k.out))>0:
                sys.stdout.write("|  1 ")
            else:
                sys.stdout.write("|    ")
        print
    print

def get_cluster_connections(cluster_arr, cluster_edges_arr):
    res = []
    for c in cluster_arr:
        row = []
        for k in cluster_arr:
            if len(set(c.inp)&set(k.out))>0:
                row.append(1)
            else:
                row.append(0)
        res.append(row)
    return res






if DO_PARSE:
    for a in apps:
        print "parsing ... ", a
        result[a+"/conv.yml"]=parse_file(a+"/conv.yml")
        print "\n"

        print "\n-----------------------------\n\n"

else:
    stream = open( RESULT_FILE ,"r")
    result = yaml.load(stream)



MAX_WIRE_BIN  = 15
MAX_WIRE_BASE = 2

if True:
    all_op_widths=set()
    all_ops=[]
    #all_wire_lens=[]

    for r in result:
        for se_r in result[r]:
            #all_ops = list(set(se_r['OP_dist'].keys() + all_ops))

            #new_op_widths = set(se_r['OP_width'].keys()) - set(all_op_widths)
            #all_op_widths += list(new_op_widths)

            all_op_widths = all_op_widths | set(se_r['OP_width'].keys())

            #new_wire_lens = set(se_r['wires'].keys()) - set(all_wire_lens)
            #all_wire_lens += list(new_wire_lens)

    all_op_widths = sorted(all_op_widths)



    sys.stdout.write("%55s|"%"")
    for o in OP_CATEGORY :
        sys.stdout.write("|%5s" %( o ))
    sys.stdout.write("| Total OPs")

    #for w in all_op_widths:
    #    sys.stdout.write("|%5s" %( w ))

    #for w in range(MAX_WIRE_BIN):
    #    sys.stdout.write("|%5s" %( math.pow(MAX_WIRE_BASE, w) ))

    sys.stdout.write(" |")
    sys.stdout.write("| Bus   ")
    sys.stdout.write("| Wire  ")
    sys.stdout.write("| Const ")

    #for MAX_OP in range (18, 19):
    #    for MAX_IN in range ( MAX_OP, MAX_OP+1):
    #        for MAX_OUT in range( 8,9):
    #            sys.stdout.write( "%2d/%1d/%2d, "%(MAX_IN, MAX_OUT, MAX_OP)) 
    #            sys.stdout.flush()

    #for MAX_MULT in range( 1, 6):
    #    sys.stdout.write( "   %6d    "%(MAX_MULT)) 


    print

    global_cluster_stats = dict()
    all_clusters = dict()
    cluster_cnt = 0

    util_stat = dict()
    total_nodes = 0

    lvls_stat = dict()
    shift_imed_stat = dict()

    for f in result:
        #if f == "../2013_12_16_SIGGRAPH/lk_int_orion/orion_out_xsm/conv.yml":
        #if f == "../2013_12_16_SIGGRAPH/deconvolucy_orion/orion_out_save/conv.yml":
        if True:
        #if f == "../2014_03_19_HierFlow/fcam_orion/orion_out/conv.yml":
        #if f == "../2014_03_19_HierFlow/isp_orion/orion_out/conv.yml":
        #if f == "../2013_12_16_SIGGRAPH/canny_orion/orion_out/conv.yml":
        #if f == "../2013_12_16_SIGGRAPH/stereo_orion/orion_out_sm/conv.yml":
            #print f
            print "----- %s -----"%f
            
            graph = Dag()
            
            for se_r in result[f]:
                if len(se_r["nodes_arr"]) == 0:
                    continue

                for tttt in range(3):
                    se_r["nodes_arr"], se_r["edges_arr"] = const_prop(se_r["nodes_arr"], se_r["edges_arr"])
                
                #if se_r["name"] != "lambda_y_debug_v2t_line1299_33_reduce":
                #if se_r["name"] != "cnr_3_reduce":
                #if se_r["name"] != "lambda_canny_v3lua_line67_19_reduce" and se_r["name"] != "in1_17_reduce":
                #if se_r["name"] != "lambda_canny_v3lua_line67_19_reduce" and se_r["name"] != "lambda_canny_v3lua_line114_17_reduce":
                #    continue
                    
                (module_name, in_names, out_names) = make_verilog(se_r["name"], se_r["nodes_arr"], se_r["edges_arr"])
                #quit()
                
                kernel = Kernel()
                kernel.name = module_name
                kernel.in_names = in_names
                kernel.out_names = out_names
                
                graph.add_kernel(kernel)
                
                continue
                                                                
                node_cnt = len(se_r["nodes_arr"])
                total_nodes = total_nodes + node_cnt

                op_stat = getOpStat(se_r["nodes_arr"])

                sys.stdout.write("%55s|"%se_r["name"])
                for o in OP_CATEGORY :
                    sys.stdout.write("|%5s" %( op_stat[o] ))
                sys.stdout.write("| %6d    "%len(se_r["nodes_arr"]))

                #print " | p=%d, c=%d"%(parents,children)

                cluster_arr = [] 
                cluster_edges_arr = []
                
                if node_cnt == 0:
                    print  "| "
                    continue


                


                wire_widths = {"wire":0,"bus":0, "const":0}
                for w in se_r["edges_arr"]:
                    if w.is_const:
                        wire_widths["const"]+=1
                    elif w.width > 1:
                        wire_widths["bus"]+=1
                    else:
                        wire_widths["wire"]+=1
                sys.stdout.write("|| %5d | %5d | %5d |"%(wire_widths["bus"],wire_widths["wire"],wire_widths["const"]))
                print
                continue
                #for w in all_op_widths:
                #    if w in se_r['OP_width'].keys():
                #        sys.stdout.write("|%5d" %(se_r['OP_width'][w] ))
                #    else:
                #        sys.stdout.write("|     ")

                #sys.stdout.write(" | ")

                for n in se_r["nodes_arr"]:
                    if get_node_cat(n) == 'CONST_SHIFT':
                        for e in n.inp:
                            if e.is_const:
                                add_to_dist(shift_imed_stat, e.value)

                for MAX_OP in range (9, 10):
                    for MAX_IN in range ( 8, 9):#, MAX_OP+1):
                        #print
                        for MAX_OUT in range( 4, 5):
                            #for MAX_MULT in range( 1, 6):
                            #(cluster_arr, cluster_edges_arr) = (se_r["nodes_arr"], se_r["edges_arr"])
                            (cluster_arr, cluster_edges_arr) = cluster_nodes( se_r["nodes_arr"], None, se_r["edges_arr"], MAX_IN, MAX_OUT, MAX_OP, 1)
                            


                print
                

                #if se_r["name"] == "Resp_5_reduce":
                #    print "Total: ", len(se_r["nodes_arr"])
                #    for n in se_r["nodes_arr"]:
                #        print n
 
                continue

                    
                    


            print "\n\n\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n", graph.kernels.keys(), "\n\n\n\n",
            make_verilog_top("top_harris", graph)





#-------------------------------------


    quit()

#if DO_PARSE:
#    with open(RESULT_FILE, 'w') as outfile:
#        outfile.write( yaml.dump(result, default_flow_style=True) )  
    

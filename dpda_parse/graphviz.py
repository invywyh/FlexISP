#
# Parses report to extract area and energy numbers for certain operations
#

import sys
import os.path
import math
#from random import randint
from collections import Counter
import copy
import operator

#import dpda_parse.base
#import dpda_parse.utils
from dpda_parse.base import *
from dpda_parse.utils import *
from dpda_parse.parse import *






def make_dot_graph(module_name, nodes_arr, edges_arr, clusters_arr, skip_inputs):
    print "\ndigraph %s {"%module_name
    print "{"
    print "node [shape=box style=filled]"
    
    const_names = set()
    in_names = set()
    out_names = set()

    int_wires  = set()
    used_wires  = set()

    groups_arr = []

    do_grouping = (clusters_arr is not None ) and (len(clusters_arr) > 0)
    if not do_grouping:
        groups_arr = [nodes_arr]
    else:
        #for cluster in clusters_arr:
        for i in range(len(clusters_arr)):
            groups_arr.append(clusters_arr[i].nodes)

    for i in range(len(groups_arr)):
        if do_grouping:
            print "subgraph cluster_%d {"%i
            print "label = \"%s_%d \";"%(clusters_arr[i].op, clusters_arr[i].pos)

        for n in groups_arr[i]:
            t = get_node_cat(n)
            #t = n.op
            cnt_in = len(n.inp)

            if t=="CLUSTER":
                print n.op+"_"+str(n.pos)+" [fillcolor=orange shape=octagon]"
            elif (t!="MUX") & (cnt_in > 2):
                print n.op+"_"+str(n.pos)+" [fillcolor=blue shape=invhouse]"
            elif t=="MUX":
                print n.op+"_"+str(n.pos)+" [fillcolor=orange]"
            elif t=="ALU":
                print n.op+"_"+str(n.pos)+" [fillcolor=yellow]"
            elif t=="MULT":
                print n.op+"_"+str(n.pos)+" [fillcolor=green]"
            elif t=="LOGIC":
                print n.op+"_"+str(n.pos)+" [fillcolor=gray]"
            elif t=="DIV":
                print n.op+"_"+str(n.pos)+" [fillcolor=red]"
            else:
                print n.op+"_"+str(n.pos)+" [fillcolor=magenta]"

            used_wires = used_wires | set(n.out)
            used_wires = used_wires | set(n.inp)

            if findChildren(n, nodes_arr, edges_arr) == []:
                out_names = out_names | set(n.out)
            else:
                int_wires = int_wires | set(n.out)


            for e in n.inp:
                if e.is_const:
                    const_names.add(e)

        if do_grouping:
            print "}"

    for w in used_wires:
        if w not in int_wires and w not in out_names and not w.is_const:
            in_names.add(w)


    if not skip_inputs:
        for e in const_names:
            print prep(e.names[0])+"_"+str(e.value)+" [fillcolor=white shape=oval]"


    if not skip_inputs:
        if do_grouping:
            print "subgraph cluster_inp {"
            print "label = \"Inputs\";"

        for e in in_names:
            print prep(e.names[0])+" "+" [fillcolor=red shape=invhouse]"

        if do_grouping:
            print "}"

    if not skip_inputs:
        if do_grouping:
            print "subgraph cluster_out {"
            print "label = \"Outputs\";"
        for e in out_names:
            print prep(e.names[0])+" "+" [fillcolor=red shape=house]"
        if do_grouping:
            print "}"



    print "}"



    for n in nodes_arr:
        cnt_in = len(n.inp)
        children =  findChildren(n, nodes_arr, edges_arr)
        for c in children:
            cnt = Counter(c.inp)
            for i in range(0,cnt[n.out[0]]):
                sys.stdout.write(n.op+"_"+str(n.pos)+"->"+c.op+"_"+str(c.pos))
                #print ";"
                #dist = abs(n.pos - c.pos)
                #if(dist > 256):
                #    print "[color=\"red\"];"
                #elif (dist<64):
                #    print "[color=\"#DDDDDD\"];"
                if n.out[0].width == 1:
                    print "[style=dotted];"
                else:
                    print ";"

        for e in n.inp:
            if not skip_inputs and e in const_names:
                sys.stdout.write(prep(e.names[0])+"_"+str(e.value)+"->"+n.op+"_"+str(n.pos))
                sys.stdout.write("[color=\"green\"")
                if e.width == 1:
                    print " style=dotted];"
                else:
                    print "];"


            elif not skip_inputs and e in in_names:
                sys.stdout.write(prep(e.names[0])+""+"->"+n.op+"_"+str(n.pos))
                sys.stdout.write("[color=\"blue\"")
                if e.width == 1:
                    print " style=dotted];"
                else:
                    print "];"


        for e in n.out:
            if not skip_inputs and e in out_names:
                sys.stdout.write(n.op+"_"+str(n.pos)+"->"+prep(e.names[0]))
                sys.stdout.write("[color=\"orange\"")
                if e.width == 1:
                    print " style=dotted];"
                else:
                    print "];"

    print "}"


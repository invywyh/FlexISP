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

import base
import utils

from dpda_parse.base import *
from dpda_parse.utils import *


def count_io(node_region, DEBUG=0):
    inp_set=set()
    out_set=set()
    const_set=set()
    for n in node_region:
        inp_set = inp_set | set(n.inp)
        out_set = out_set | set(n.out)
        #self.edges = self.edges | set(n.inp) | set(n.out)

    for e in inp_set:
        if e.is_const:
            const_set.add(e)

    inp = (inp_set - out_set)-const_set
    out_set = out_set - inp_set

    for n in node_region:
        for c in n.children:
            if c not in node_region:
                out_set.add(n.out[0])
                break
                    
    return (len(inp), len(out_set))



def count_io2(node_region, DEBUG=0):
    inp_edges = set()
    out_edges = set()
    for n in node_region:
        inp_edges = inp_edges | set(n.inp)
        out_edges = out_edges | set(n.out)
    
    #inp_edges22 = set()
    inp_edges2 = set()
    #for e in (inp_edges - out_edges):
    #    if not e.is_const and e.max_len > 1:
    #        inp_edges22.add(e)

    out_edges2 = out_edges - inp_edges

    for n in node_region:
        for e in (inp_edges - out_edges):
            if e in n.inp and (not e.is_const) and (abs(e.start_pos-n.pos) > 1):
                inp_edges2.add(e)

        for c in n.children:
            if c not in node_region and n.out[0].max_len > 1:
                #print n.out
                #print out_edges
                out_edges2.add(n.out[0])
                break

    if DEBUG > 0:
        print "\ninp_edges :",inp_edges,"\n"
        print "out_edges :",out_edges,"\n"
        print "inp_edges2 :",inp_edges2,"\n"
        print "out_edges2 :",out_edges2,"\n"
        
    return (len(inp_edges2), len(out_edges2))


def cluster_nodes(nodes_arr, order, edges_arr, MAX_IN, MAX_OUT, MAX_OP, MAX_MULT):
    #MAX_MULT = 12
    MAX_ALU = MAX_OP - MAX_MULT
    if order is None or order == []:
        order = range(len(nodes_arr))

    cluster_arr = []
    cluster_edges_arr = set()

    node_region = set()
    cluster_cnt = 0
    mult_cnt = 0
    alu_cnt = 0
    op_distr = dict()
        
 
    for i in order:
        n = nodes_arr[i]
        (in_cnt,out_cnt) = count_io(node_region | set([n]))

        if get_node_cat(n) == 'MULT':
            mult_cnt = mult_cnt + 1
            #if MAX_MULT>0:
            #    mult_cnt = mult_cnt + 1
            #else:
            #    alu_cnt = alu_cnt + 1
        else:
            alu_cnt = alu_cnt + 1

        cond = (alu_cnt > MAX_ALU or in_cnt > MAX_IN or out_cnt > MAX_OUT or mult_cnt > MAX_MULT)
        if MAX_MULT==0:
            cond = ((alu_cnt + mult_cnt) > MAX_OP or in_cnt > MAX_IN or out_cnt > MAX_OUT)
            
        #if (len(node_region)+1) > MAX_OP or in_cnt > MAX_IN or out_cnt > MAX_OUT or mult_cnt > MAX_MULT:
        #if (alu_cnt + mult_cnt) > MAX_OP or in_cnt > MAX_IN or out_cnt > MAX_OUT or (MAX_MULT>0 and  mult_cnt > MAX_MULT):
#        if alu_cnt > MAX_ALU or in_cnt > MAX_IN or out_cnt > MAX_OUT or mult_cnt > MAX_MULT:
        if cond:
            newCluster = NodeCluster(node_region)
            newCluster.pos = cluster_cnt

            cluster_arr.append(newCluster)
            cluster_edges_arr = cluster_edges_arr | set(newCluster.inp) | set(newCluster.out)

            if cluster_cnt > 19 and cluster_cnt < 21:
                (in_cnt,out_cnt) = count_io(node_region, 1)
                print  "\nio:",in_cnt,"/",MAX_IN, " , ", out_cnt, "/",MAX_OUT, "    ", newCluster
            

            cluster_cnt = cluster_cnt + 1
            node_region = set([n])
            mult_cnt = 0
            alu_cnt = 0
            op_distr = dict()
            add_to_dist(op_distr, get_node_cat(n))
            if get_node_cat(n) == 'MULT':
                mult_cnt = mult_cnt + 1
            else:
                alu_cnt = alu_cnt + 1
        else:
            node_region.add(n)
            add_to_dist(op_distr, get_node_cat(n))

    if len(node_region) > 0:
        newCluster = NodeCluster(node_region)
        newCluster.pos = cluster_cnt

        cluster_arr.append(newCluster)
        cluster_edges_arr = cluster_edges_arr | set(newCluster.inp) | set(newCluster.out)
        

    #for c in cluster_arr:
    #    print "#",len(c.out) , "   ", c
        



    return (cluster_arr, list(cluster_edges_arr))








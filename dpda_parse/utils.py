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
#from dpda_parse.base import *

#from dpda_parse.base import *
#from . import base


def findByName(array, name):
    res = []
    w = len(name)
    for e in array:
        n = e.names[0]
        if n.startswith(name) and (len(n) == w or n[w]=='[') and e not in res :
            res += [e]
    return res



def findByPoss(pos,  all_nodes):
    for n in all_nodes:
        if n.pos == pos:
            return n
    return None


def findByAliase(aliase, edge_list):
    res = []
    for e in edge_list:
        if aliase in e.names and e not in res:
            res.append(e)
    return res
 

def findChildren(node, all_nodes, all_edges):
    res = []
   
    for o in node.out:
        for n in all_nodes:
            if o in n.inp:
                res += [n]

    return res


def findParents(node, all_nodes, all_edges):
    res = []
    
    for i in node.inp:
        for n in all_nodes:
            if i in n.out and n not in res:
                res += [n]

    return res




                


def listEdgeLength(nodes_arr, edges_arr):
    for n in nodes_arr:
        sys.stdout.write(str(n)+"-> ")
        children = findChildren(n, nodes_arr, edges_arr)
        for c in children:
            sys.stdout.write(" %d," %(c.pos - n.pos ))
        print
    print "\n\n"




def add_to_dist(dist, key):
    if dist.has_key(key):
        dist[key]+=1
    else:
        dist[key]=1



#OP_CATEGORY = {
#'ALU': set(['gt', 'ne', 'lt', 'lte', 'eq', 'gte', 'sub','add', 'inv', 'sum', 'abs', 'min', 'max', 'lshift', 'rshift', 'and', 'or', 'not']),
#'MUX': set(['gmux', 'mux']),
#'LOGIC':set(),
#'SHIFT':set(['mv']), 
#'MULT':set(['mult']), 
#'DIV':set(['div'])
#}


OP_CATEGORY = {
'ALU': set(['gt', 'ne', 'lt', 'lte', 'eq', 'gte', 'sub','add', 'inv', 'sum', 'abs', 'min', 'max', 'and', 'or', 'not']),
'MUX': set(['gmux', 'mux']),
'LOGIC':set(),
'SHIFT':set(['lshift', 'rshift', 'mv']), 
#'SHIFT':set(['mv']), 
#'lSHIFT':set(['lshift']), 
#'rSHIFT':set(['rshift']), 
#'CONST_SHIFT':set(),
'MULT':set(['mult']), 
'DIV':set(['div'])
}


def get_node_cat(node):
    op = node.op
    wire_list = node.inp + node.out
    is_logic = True
    for w in wire_list:
        if w.width > 1:
            is_logic = False
            break
        
    if is_logic:
        return 'LOGIC'
    if op == "cluster":
        return 'CLUSTER'

    #if op in OP_CATEGORY['SHIFT']:
    #    for inp in node.inp:
    #        if inp.is_const:
    #            return 'CONST_SHIFT'

    #if op in OP_CATEGORY['SHIFT']:
    #    print "\n--------SHIFT---------\n", node ,"\n======================\n"

    for cat in OP_CATEGORY:
        if op in OP_CATEGORY[cat]:
            return cat
    return 'N/A'








def get_op_stats(nodes_arr):
    op_width_dist={}
    op_dist = {}
    for n in nodes_arr:
        op  = n.op
        if op_dist.has_key(op):
            op_dist[op]+=1
        else:
            op_dist[op]=1

        key  = str(n.width)
        if op_width_dist.has_key(key):
            op_width_dist[key]+=1
        else:
            op_width_dist[key]=1

    return (op_dist, op_width_dist)


def get_edge_stats(edges_arr):
    max_len_dist = {}
 
    for e in edges_arr:
        if e.fan_out > 0:
            add_to_dist(max_len_dist, e.max_len)
    
    return max_len_dist 








def getOpStat(nodes_arr):
     op_dist = {}
     for o in OP_CATEGORY:
        op_dist[o] = 0

     for n in nodes_arr:
         op_dist[get_node_cat(n)]+=1

     return op_dist




def getSortListOrder(data_list, large_to_small=True):
    data_dict = dict( map(lambda x: (x,data_list[x]) , range(len(data_list))) )
    data_sorted = sorted(data_dict.items(), key=operator.itemgetter(1), reverse=large_to_small) 
    orderSorted = [ x[0] for x in  data_sorted]
    valueSorted = [ x[1] for x in data_sorted]
    return (orderSorted, valueSorted)

def getListRegions(data_list):
    #Assume data is sorted
    data_map = dict()
    reg_start = 0
    reg_end   = -1
    #print data_list
    for i in range(len(data_list)):
        if data_list[i] != data_list[reg_start] :
            reg_end = i
            data_map[data_list[reg_start]] = range(reg_start,reg_end)
            reg_start = i

    data_map[data_list[reg_start]] = range(reg_start,len(data_list))

    #print data_map
    return data_map





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

def bin_dict(dist, BASE):
    dist_log = {}
    #print "dist: ", dist
    max_dist = max(dist.keys())
    #print "max_dist :", max_dist
    bin_cnt = int(math.ceil(math.log(max_dist,BASE)))+1
    for i in range(bin_cnt):
        dist_log[i] = 0

    #print dist.keys()
    for i in dist.keys():
        bin_id = int(math.ceil(math.log(i,BASE)))
        dist_log[bin_id] += dist[i]

    return dist_log



def bin_dict(dist, BASE):
    dist_log = {}
    #print "dist: ", dist
    max_dist = max(dist.keys())
    #print "max_dist :", max_dist
    bin_cnt = int(math.ceil(math.log(max_dist,BASE)))+1
    for i in range(bin_cnt):
        dist_log[i] = 0

    #print dist.keys()
    for i in dist.keys():
        bin_id = int(math.ceil(math.log(i,BASE)))
        dist_log[bin_id] += dist[i]

    return dist_log

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
from dpda_parse.parse import *
from dpda_parse.verilog import *
from dpda_parse.graphviz import *



def listEdgeLength(nodes_arr, edges_arr):
    for n in nodes_arr:
        sys.stdout.write(str(n)+"-> ")
        children = findChildren(n, nodes_arr, edges_arr)
        for c in children:
            sys.stdout.write(" %d," %(c.pos - n.pos ))
        print
    print "\n\n"










def find_best_placement(nodes_arr_orig, edges_arr, MAX_IN, MAX_OUT, MAX_OP, MAX_MULT):
    #MAX_ITER = 100000
    MAX_ITER = 100000
    nodes_arr = copy.copy(nodes_arr_orig)
    node_cnt  = len(nodes_arr_orig)

    limit = int(math.ceil(float(len(nodes_arr_orig))/MAX_OP))

    (cluster_arr, cluster_edges_arr) = cluster_nodes(nodes_arr, None, edges_arr, MAX_IN, MAX_OUT, MAX_OP, MAX_MULT)
    base = len(cluster_arr)

    for i in range(MAX_ITER):
        old_arr = copy.copy(nodes_arr)
        old_score = base

        #random.shuffle(nodes_arr)
        for j in range( random.choice(range(node_cnt/2)) ):
            pos0 = random.choice(range(node_cnt))
            pos1 = random.choice(range(node_cnt))

            tmp = nodes_arr[pos0]
            nodes_arr[pos0] = nodes_arr[pos1]
            nodes_arr[pos1] = tmp

        (cluster_arr, cluster_edges_arr) = cluster_nodes(nodes_arr, None, edges_arr, MAX_IN, MAX_OUT, MAX_OP, MAX_MULT)
        score = len(cluster_arr)

        T_inv = float(i+1)#float((i+1)*10000)/MAX_ITER   #
        #coef = float(old_score-score-1)*T_inv
        coef = float(old_score-score)*T_inv

        P = 2
        if coef < 1:
            P = math.exp( coef  )
        rnd = random.random()

        do_move = rnd < P

        if score == limit:
            util  = float(node_cnt)/(MAX_OP*len(cluster_arr))
            (cluster_arr, cluster_edges_arr) = cluster_nodes(nodes_arr, None, edges_arr, MAX_IN, MAX_OUT, MAX_OP, MAX_MULT)
            return (cluster_arr, cluster_edges_arr)
            #return score
        elif  do_move:  #score < base: #
            base = score
            old_score = score
        else: 
           nodes_arr = copy.copy(old_arr)


    util  = float(node_cnt)/(MAX_OP*base)
    (cluster_arr, cluster_edges_arr) = cluster_nodes(nodes_arr, None, edges_arr, MAX_IN, MAX_OUT, MAX_OP, MAX_MULT)

    return (cluster_arr, cluster_edges_arr)
    #return base



def get_placement_score(cluster_arr, cluster_edges_arr):
    score = 0
    for cl in cluster_arr:
        children = findChildren(cl, cluster_arr, cluster_edges_arr)
        for c in children:
            score = score + abs(c.pos - cl.pos)
    return score





def find_best_order(nodes_arr_orig, edges_arr):
    #MAX_ITER = 100000
    MAX_ITER = 1000000
    nodes_arr = copy.copy(nodes_arr_orig)
    node_cnt  = len(nodes_arr_orig)

    base = get_placement_score(nodes_arr, edges_arr)

    for i in range(MAX_ITER):
        old_arr = copy.copy(nodes_arr)
        old_score = base

        #random.shuffle(nodes_arr)
        for j in range( random.choice(range(node_cnt/2)) ):
            pos0 = random.choice(range(node_cnt))
            pos1 = random.choice(range(node_cnt))

            tmp = nodes_arr[pos0].pos
            nodes_arr[pos0].pos = nodes_arr[pos1].pos
            nodes_arr[pos1].pos = tmp

            tmp = nodes_arr[pos0]
            nodes_arr[pos0] = nodes_arr[pos1]
            nodes_arr[pos1] = tmp
            

        score = get_placement_score(nodes_arr, edges_arr)

        T_inv = float(i+1)#float((i+1)*10000)/MAX_ITER   #
        #coef = float(old_score-score-1)*T_inv
        coef = float(old_score-score)*T_inv

        P = 2
        if coef < 1:
            P = math.exp( coef  )
        rnd = random.random()

        do_move = rnd < P

        if do_move:  #score < base: #
            print "::: ", old_score, "->", score
            for c in nodes_arr:
                print "::: ", c
            print
            base = score
            old_score = score
        else: 
           nodes_arr = copy.copy(old_arr)

    score = get_placement_score(nodes_arr, edges_arr)
    print "\n", base, "->", score

    return (nodes_arr,edges_arr)
    #return base



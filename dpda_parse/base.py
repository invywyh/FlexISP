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

from dpda_parse.utils import *



class Edge:
    names = ""
    bus_name = ""
    sig_type = ""
    width = -1
    fan_out = 0
    max_len = 0
    start_pos = -1
    sig_width_pattern = re.compile(r'.+_(\d+)_\d+', re.M|re.I)
    value = 0
    is_const = False

    def __init__(self, sig_type, name):
        self.sig_type = sig_type
        self.names = [name]
        self.bus_name = name

        if sig_type == "bool":
            self.width = 1
        else:
             matchObj = re.search(r'.+_(\d+)_\d+',sig_type, re.M|re.I)              
             if matchObj:
                 self.width = int(matchObj.group(1))

    def Assign(self, val):
        self.is_const = True
        self.value = val

    def Aliase(self, name):
        self.names += [name]
        
    def AddAliases(self, names):
        self.names.extend( names )

    def NameLookUp(self, name):
        w = len(name)
        for n in self.names:
            if n.startswith(name):
                if len(n) == w:
                    return self
                elif n[w]=='[':
                    return self
        return None 

    def __repr__(self):
        return self.__str__()

    def __str__(self):
        res = self.sig_type + " ---> "
        for n in self.names:
            res+= n+" "
        return res + "  #"+str(self.max_len)
    
    #def __eq__(self, other):
    #    #print self.names[0], "/", other.names[0]
    #    return self.names[0] == other.names[0]


class Node:
    op = ""
    inp = list()
    out = list()
    children = set()
    pos = -1
    width = -1
    lvl=-1
    def __init__(self, op, inp, out):
        #print op
        self.op = op
        self.inp = inp
        self.out = out
        self.pos = -1
        for i in inp:
            if i.width > self.width:
                 self.width = i.width

    def __repr__(self):
        return self.__str__()

    def __str__(self):
        res = "[ "
        for n in self.out:
            res+= n.names[0]+", "
        res = res + " ] = " + self.op + "("
        for n in self.inp:
            res+= n.names[0]+", "
        res = res + ")     @"+str(self.pos) + " / "+str(self.lvl)
        return res




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




class NodeCluster(Node):
    nodes = set()
    edges = set()

    def get_lvls(self):
        node_arr = list(self.nodes)

        lvls = dict()

        old_lvl_list = []
        for i in range(len(node_arr)):
            old_lvl_list.append(node_arr[i].lvl)
            node_arr[i].lvl = -1
            parents = findParents(node_arr[i], node_arr, list(self.edges))
            if len(parents)==0:
                node_arr[i].lvl = 0

        max_lvl = 0
        for j in range(len(node_arr)):
            for i in range(len(node_arr)):
                parents = findParents(node_arr[i], node_arr, list(self.edges))
                if len(parents)==0:
                    node_arr[i].lvl = 0
                else:
                    for p in parents:
                        node_arr[i].lvl = max(node_arr[i].lvl, p.lvl+1)

        for i in range(len(node_arr)):
            k = node_arr[i].lvl
            if k not in lvls.keys():
                lvls[k]=[node_arr[i]]
            else:
                lvls[k].append(node_arr[i])
       
        return lvls
        #print "Lvl diff : ",(max(lvls.keys()) - min(lvls.keys()))

    def group_by_level(self):
        node_arr = list(self.nodes)

        lvls = dict()

        old_lvl_list = []
        for i in range(len(node_arr)):
            old_lvl_list.append(node_arr[i].lvl)
            node_arr[i].lvl = -1
            parents = findParents(node_arr[i], node_arr, list(self.edges))
            if len(parents)==0:
                node_arr[i].lvl = 0

        max_lvl = 0
        for j in range(len(node_arr)):
            for i in range(len(node_arr)):
                parents = findParents(node_arr[i], node_arr, list(self.edges))
                if len(parents)==0:
                    node_arr[i].lvl = 0
                else:
                    for p in parents:
                        node_arr[i].lvl = max(node_arr[i].lvl, p.lvl+1)

        for i in range(len(node_arr)):
            k = node_arr[i].lvl
            if k not in lvls.keys():
                lvls[k]=[node_arr[i]]
            else:
                lvls[k].append(node_arr[i])
       

        print "Lvl diff : ",(max(lvls.keys()) - min(lvls.keys()))
        res = []
        for k in lvls:
            new_cluster = NodeCluster(lvls[k])
            new_cluster.pos = int(k)
            res.append(new_cluster)

        #Restore original levels
        for i in range(len(node_arr)):
            node_arr[i].lvl = old_lvl_list[i]

        return res


    def __init__(self, nodes):
        inp_set=set()
        out_set=set()
        const_set=set()

        for n in nodes:
            inp_set = inp_set | set(n.inp)
            out_set = out_set | set(n.out)
            self.edges = self.edges | set(n.inp) | set(n.out)

        for e in inp_set:
            if e.is_const:
                const_set.add(e)

        self.inp = list((inp_set - out_set)-const_set)
        out_set = out_set - inp_set

        op_distr = dict()
        for n in nodes:
            add_to_dist(op_distr, get_node_cat(n))
            for c in n.children:
                if c not in nodes:
                    out_set.add(n.out[0])
                    break


        self.op = "cluster"
        self.nodes = nodes
        self.out = list(out_set)
        self.pos = -1
        self.width = len(nodes)


    def get_input_cnt_stat(self):
        cnt1 = 0
        cnt2 = 0
        cnt3 = 0

        out_cnt = 0

        for n in self.nodes:
            intersect = len( set(self.inp) & set(n.inp) )
            if intersect == 1:
                cnt1 = cnt1+1
            elif intersect == 2:
                cnt2 = cnt2+1
            elif intersect == 3:
                cnt3 = cnt3+1
            
            if len( set(self.out) & set(n.out) ) > 0:
                out_cnt = out_cnt+1


        #return "%02d_%02d_%02d_%02d_%02d"%(cnt4, cnt3, cnt2, cnt1, len(self.nodes) - cnt4 - cnt3 - cnt2 - cnt1)
        return "%02d_%02d_%02d_%02d_%02d"%(18 - cnt3 - cnt2 - cnt1, out_cnt, cnt3, cnt2, cnt1)


    def get_nodes_stat(self):
        res = ""
        input_dist = []
        for i in self.inp:
            if i.is_const:
                continue

            cnt = 0
            for n in self.nodes:
                #dic = Counter[n.inp]
                #dic[i]
                if i in n.inp:
                    cnt = cnt+1
            input_dist.append(cnt)
        
        for i in range(len(self.inp),18):
            input_dist.append(0)

        for r in sorted(input_dist):
            res = res + "_"+str(r)
        
        return res

        op_distr = dict()
        for n in self.nodes:
            add_to_dist(op_distr, get_node_cat(n))
        for cat in OP_CATEGORY:
            if cat in op_distr:
                #res = res +"_"+cat+"="+str(op_distr[cat])
                res = res +"_"+str(op_distr[cat])
            else:
                res = res +"_0"
        return res


    def get_inp_matrix(self, min_height, min_width):
        res = []
        for n in self.nodes:
            row = []
            for i in self.inp:
                if i in n.inp:
                    row.append(1)
                else:
                    row.append(0)
            #padd with 0
            for j in range(min_width - len(self.inp)):
                row.append(0)
            res.append(row)

        for k in range(min_height - len(self.nodes)):
            res.append([0 for x in range(min_width)])

        return res

    def get_inp_matrix2(self):
        input_dist = dict()
        for i in self.inp:
            if i.is_const:
                continue

            cnt = 0
            for n in self.nodes:
                if i in n.inp:
                    cnt = cnt+1
            input_dist[i] = cnt
        

        node_con = dict()
        for n in self.nodes:
            node_con[n] = len(set(n.inp) & set(self.inp))
        
        input_dist_sorted = sorted(input_dist.items(), key=operator.itemgetter(1), reverse=True)
        sys.stdout.write("    |")
        cntr = 0
        for k,v in input_dist_sorted:
            #sys.stdout.write(" %2d |"%cntr)
            sys.stdout.write(" %2d |"%v)
            cntr = cntr+1
        print

        res = []
        #for n in self.nodes:
        #nodes_sorted = 
        for n,cnt in sorted(node_con.items(), key=operator.itemgetter(1), reverse=True):
            row = []
            sys.stdout.write(" %2d |"% cnt  )
            #row = [ 0 for x in range(len(input_dist_sorted))]
            for k,v in input_dist_sorted:
                if k in n.inp:
                    sys.stdout.write("  X |")
                    row.append(1)
                else:
                    sys.stdout.write("    |")
                    row.append(0)
            res.append(row)
            print

        print "\n\n",res,"\n"

        return res




    def __repr__(self):
        return self.__str__()

    def __str__(self):
        res = "[ "
        for n in self.out:
            res+= n.names[0]+", "
        res = res + " ] = cluster_%d {"%self.pos

        for n in self.nodes:
            res = res + n.op + "_"+str(n.pos) + ","
 
        res = res + "} ("
        for n in self.inp:
            res+= n.names[0]+", "
        res = res + ")     @"+str(self.pos)

        return res










class Matrix:
    data = []
    width  = 0
    height = 0

    def resize(self, height, width):
        self.width  = width
        self.height = height
        self.data = []
        for i in range(height):
            self.data.append([0 for x in range(width)])

    def __init__(self, data):
        if data!=[]:
            self.data = data
            self.width  = len(data[0])
            self.height = len(data)

    def sumRows(self):
        return map(sum,self.data)

    def sumCols(self):
        res = self.data[0]
        for i in range(1,len(self.data)):
            res = map(lambda x,y: x+y,res,self.data[i])
        return res

    #rowRange - list of rows, colRange - list of cols to sum
    def sumColsRegion(self, rowRange, colRange):
        res =[ self.data[rowRange[0]][x] for x in colRange ]
        for i in range(1,len(rowRange)):
            cur_row_data =[ self.data[rowRange[i]][x] for x in colRange ]
            res = map(lambda x,y: x+y,res, cur_row_data)
        return res

    def getFirstNoneZeroInCol_Region(self, rowRange, colRange):
        if rowRange == [] :
             rowRange = range(len(self.data))
        if colRange == []:
            colRange = range(len(self.data[0]))

        res = [0 for x in range(len(colRange))]
        for c in range(len(colRange)):
            res[c] = -1
            for r in rowRange:
                if self.data[r][ colRange[c]] > 0:
                    res[c] = r
                    break
        return res


    def getIthNoneZeroInRow_Region(self, rowRange, colRange, i):
        if rowRange == [] :
             rowRange = range(len(self.data))
        if colRange == []:
            colRange = range(len(self.data[0]))

        res = [0 for x in range(len(rowRange))]
        for r in range(len(rowRange)):
            res[r] = -1
            runningSum = 0
            for c in colRange:
                runningSum = runningSum + self.data[rowRange[r]][c]
                if runningSum == i:
                    res[r] = c
                    break
        return res


    def moveElems(self,el_list, old_pos, new_pos):
        res = []
        if old_pos > new_pos:
            res = el_list[:new_pos]
            res.append(el_list[old_pos])
            res.extend(el_list[new_pos: old_pos])
            res.extend(el_list[old_pos+1:])
        else:
            res = el_list[:old_pos]
            res.extend(el_list[old_pos+1:new_pos+1])
            res.append(el_list[old_pos])
            res.extend(el_list[new_pos+1:])
        return res
            
    def firstNoneZeroInCol(self, col_index, start_pos):
        for i in range(start_pos, len(self.data)):
            if self.data[i][col_index] > 0:
                return i
        return -1

    def firstNoneZeroInColRegion(self, col_index, start_pos, end_pos):
        if end_pos == -1:
            end_pos = len(self.data)
        for i in range(start_pos, end_pos):
            if self.data[i][col_index] > 0:
                return i
        return -1


    def firstNoneZeroInRow(self, row_index, start_pos):
#        if end_pos == -1:
        end_pos = len(self.data[row_index])
        for i in range(start_pos, end_pos):
            if self.data[row_index][i] > 0:
                return i
        return -1

    def firstNoneZeroInRowRegion(self, row_index, start_pos, end_pos):
        if end_pos == -1:
            end_pos = len(self.data[row_index])
        for i in range(start_pos, end_pos):
            if self.data[row_index][i] > 0:
                return i
        return -1


    def moveCol(self,old_pos, new_pos):
        d = map(lambda x:  self.moveElems(x, old_pos, new_pos), self.data)
        self.data = d


    def moveRow(self, old_pos, new_pos):
        self.data=self.moveElems(self.data, old_pos, new_pos)

    def reArrangeByCols(self, new_order):
        res = []
        for i in range(len(self.data)):
            #print i," : ", map(lambda x: self.data[i][x], new_order)
            res.append( map(lambda x: self.data[i][x], new_order))
        self.data = res

    def reArrangeByRows(self, new_order):
        res = []
        for i in new_order:
            res.append(self.data[i])
        self.data = res



    def __repr__(self):
        return self.__str__()

    def __str__(self):
        res = ""

        for r in self.data:
            for e in r:
                #res = res + " "+str(e)+" |"
                res = res + (" %3d"%e)+" |"
            res = res+"\n"

        return res


    def __add__(self, m2):
        #check that dimentions
        if (self.width != m2.width) or (self.height != m2.height):
            print "\nError: Dimentions mismatch!\n"
            return
        for i in range(self.height):
            self.data[i] = [self.data[i][x]+m2.data[i][x] for x in range(self.width) ]


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




def cmp_sums_lists(x,y):
    if (x[3]!=y[3]):
        return y[3]-x[3]
    elif (x[2]!=y[2]):
        return y[2]-x[2]
    elif (x[1]!=y[1]):
        return y[1]-x[1]
    else : 
        return y[0]-x[0]




def orderMatrix(mat):
#1)Sort by column sums
    (newColOrder, colSums_sorted) = getSortListOrder( mat.sumCols() )
    mat.reArrangeByCols(newColOrder)
    #print mat
    #print "--------------"
#2)Sort by row sums
    (newRowOrder,rowSums_sorted) = getSortListOrder( mat.sumRows() )
    mat.reArrangeByRows(newRowOrder)

    #return

    col_regions = getListRegions(mat.sumCols())
    row_regions = getListRegions(mat.sumRows())


    row_regions_2_sort = sorted(filter(lambda x: x > 0 , row_regions.keys()) ,reverse=True)

    newColOrder = []
    for cr in sorted(col_regions, reverse=True):
#For each column in current region, make a structure in form of list:
# position 4 is thee column index
# positions 0-3 are sums of this colum in respective row region '0'-'3'
        l = [ [0,0,0,0,x] for x in col_regions[cr] ]
        for r in row_regions_2_sort:
            s = mat.sumColsRegion(row_regions[r] , col_regions[cr]  )
            for p in range(len(col_regions[cr])):
                l[p][r] = s[p]
        newColOrder.extend([x[4] for x in sorted( l ,cmp=cmp_sums_lists)]) 
    mat.reArrangeByCols(newColOrder)

    newRowOrder = []
    for r in sorted(row_regions, reverse=True):
        rl = [ [0,0,0,0,x] for x in row_regions[r] ]

        for i in range(1,4):
            none_zero_posiotions = mat.getIthNoneZeroInRow_Region(row_regions[r], [], i)
            for p in range(len(row_regions[r])):
                rl[p][3-i] = none_zero_posiotions[p]
        newRowOrder.extend([x[4] for x in sorted( rl , cmp=cmp_sums_lists, reverse=True)]) 

    mat.reArrangeByRows(newRowOrder)

    finalColOrder = []
    for cr in sorted(col_regions, reverse=True):
        if cr < 2 :
            break
        finalColOrder.extend(col_regions[cr])

##Sort rerion 1
    if 1 in col_regions.keys():
        first_none_zero_pos = mat.getFirstNoneZeroInCol_Region( [], col_regions[1])
        (first_none_zero_pos_order,first_none_zero_pos_sorted) = getSortListOrder( first_none_zero_pos , False)
        finalColOrder.extend( [ col_regions[1][ first_none_zero_pos_order[x]  ] for x in range(len(col_regions[1]))]  )
    if 0 in col_regions.keys():
        finalColOrder.extend(col_regions[0])

    mat.reArrangeByCols(finalColOrder)
    #print mat
    #print "+++++++++++++"

#Curretnly rows with 0 conections are at the end
#move them up after last '1' in last row of col_region '2'
    #if 0 in row_regions.keys():
    if False:
        full_row_range = range(len(mat.data))
        old_pos = max(full_row_range)
    
        new_pos = 0
        for cr in col_regions:
            #print "cr ",cr," : ",mat.getFirstNoneZeroInCol_Region(full_row_range[::-1], col_regions[cr])
            if cr > 1:
                new_pos = max(new_pos ,1+max(mat.getFirstNoneZeroInCol_Region(full_row_range[::-1], col_regions[cr])))
        #print row_regions[0]
        for i in range(len(row_regions[0]) ):
            #print i," : ",old_pos," -> ", new_pos
            mat.moveRow(old_pos, new_pos)
            #mat.moveCol(old_pos, new_pos)
            #print mat
            #print "::::::: ",i," :::::::;"










class Dag:
  """
  Class representing a kernel DAG.  The DAG itself consists of a dictionary
  of kernels (indexed by name), and a dictionary of named edges.  This layout
  closely matches the actual DPDA, preserves names, and allows easy forward
  and reverse traversals.
  In the stencil DAG, all of the edges are implicit.  They are just named on
  both ends (although they have to be real signals underneath).

  The DAG class has a single head and tail (for now), which reference
  edges to kernels.
  """
  def __init__(self):
    self.head = None
    self.tail = None
    self.kernels = {}
    self.edges = {}

  def add_kernel(self, k):
    # Add the kernel, indexed by name
    self.kernels[k.name] = k

    # Add or complete its edges
    # Each edge is a list of two names, referring to the kernels it connects
    # The first is the edge source (kernel's sink), the second is the target
    if self.edges.has_key(k.src):
      self.edges[k.src][1] = k.name
    else:
      self.edges[k.src] = [None, k.name]

    if self.edges.has_key(k.sink):
      self.edges[k.sink][0] = k.name
    else:
      self.edges[k.sink] = [k.name, None]

class Kernel:
  """
  Class representing a single stencil kernel.

  Each kernel contains a DAG of DPDA ops which perform the map/reduce.
  These are explicit; the signals have to be named and typed beforehand.
  """
  def __init__(self):
    self.name = None
    self.src = None
    self.sink = None
    self.rtaps = None
    self.pixelin = None
    self.constants = [] # Tuple of (register name, value)

    #self.mapOps = {}
    #self.mapEdges = {}
    self.ops = {}
    self.edges = {}
    self.in_names = {}
    self.out_names = {}

  def __repr__(self):
    return self.name + " : " + self.src + " => " + self.sink















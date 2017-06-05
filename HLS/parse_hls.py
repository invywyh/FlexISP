import re
import networkx as nx
import matplotlib.pyplot as plt
from networkx.drawing.nx_agraph import graphviz_layout

VPR_SAFE = True

def check_key(d, key, val):
    return key in d.keys() and d[key]==val


def draw_app_dag(G):
  #print G.nodes(data=True)

  labels       = {}
  n_color      = {}
  nodes_gr0    = []
  nodes_gr1    = []
  nodes_gr2    = []

  for node in G.nodes():
    node_attr = G.node[node]
    #labels[node]  = node 
    #If 'name' is set - it's a kernel,
    if check_key(node_attr, 'is_const', True):
        #labels[node] = node_attr['name']
        labels[node] = node_attr['value']
        nodes_gr1.append(node)
    #elif 'func' in node_attr.keys():
    #    labels[node] = node_attr['func']
    #    nodes_gr2.append(node)
    elif check_key(node_attr, 'op', "mv"):
        labels[node] = "mv"
        nodes_gr2.append(node)
    else:
        #labels[node]  = node
        nodes_gr0.append(node)

  # Plot trees
  pos=graphviz_layout(G, prog='dot')
  #nx.draw(G, pos, node_color='b', with_labels=False, arrows=True)
  nx.draw_networkx_nodes(G,pos, nodes_gr0, node_color='b')
  nx.draw_networkx_nodes(G,pos, nodes_gr1, node_color='r')
  nx.draw_networkx_nodes(G,pos, nodes_gr2, node_color='g')

  nx.draw_networkx_edges(G,pos, arrows=True)

  nx.draw_networkx_labels(G,pos,labels,font_size=10)
  #plt.savefig('draw_trees_with_pygraphviz.png', bbox_inches='tight')   
  plt.show()
  

def filter_line (G, line):
    INPUTS = G.graph['INPUTS']
    OUPUTS = G.graph['OUPUTS']

    l = line.strip()

    matchInObj = re.match( r'(.+) = (.+)\.read\(\);', line, re.M|re.I)
    matchOutObj = re.match( r'.+\.write\((.*?)\);', line, re.M|re.I)
    matchCntrlObj = re.match( r'.+\.last = (.*?);', line, re.M|re.I)


    if l.startswith("#"): # PRAGMA-s
        return ""
    elif l.startswith("//"): # Comment
        return ""
    elif l.startswith("for (") or l.startswith("if ("):
        return ""
    elif l=="": 
        return ""
    elif l.startswith("{") or l.startswith("}"): 
        return ""
    elif (l=="(void)0;"): #no op
        return ""
    elif matchCntrlObj: #stream controll
        return ""
    elif matchInObj: #input stream function calls
        target = matchInObj.group(1).strip()
        source = matchInObj.group(2).strip()
        INPUTS.append( target )
        target_nodes = filter(lambda x: x.startswith("w"+target), G.nodes())
        source_nodes = filter(lambda x: x.startswith("w"+source), G.nodes())
        #print target_nodes
        #print source_nodes
        #print G.node[source_nodes[0]]["arg"]
        for t in target_nodes:
            G.node[t]["arg"] = G.node[source_nodes[0]]["arg"]
        return ""
    elif matchOutObj: #output stream function calls
        OUPUTS.append( matchOutObj.group(1).strip() )
        return ""
    else:
        return l

def check_rename(G, src):
    RENAME = G.graph['RENAME']

    if src in RENAME.keys():
        #print "WARNING: ", src, " was renamed to", RENAME[src]
        #return RENAME[src]
        return "r"+str(RENAME[src])+"_"+src
    else:
        return src

def rename(G, target):
    SINKS  = G.graph['SINKS']
    RENAME = G.graph['RENAME']
    #return target
    if target in SINKS:
        if target in RENAME.keys():
            RENAME[target] = RENAME[target] + 1 #"r_"+RENAME[target]
        else:
            RENAME[target] = 0#"r_"+target

        #print "Error: ", target, " has already been assigned! renaming to ", RENAME[target]
        #return RENAME[target]
        return "r"+str(RENAME[target])+"_"+target
    return target

def find_triple_op_math(G, line):
    SINKS   = G.graph['SINKS']
    SOURCES = G.graph['SOURCES']

    matchObj = re.match( r'(.+) = (\([a-z0-9_]+?\))\(?(.+?) \? (.+?) : (.+?)\)?;$', line, re.M|re.I)
    if matchObj:
        target = matchObj.group(1)
        op1    = matchObj.group(3)
        op2    = matchObj.group(4)
        op3    = matchObj.group(5)
        #print "::: ", target, " / ", op1, " / ", op2, " / ", op3

        (decl, target, dims) = parse_declration(target)

        target = convert_to_array(target)
        target = rename(G, target)

        val = check_immediate(op1)
        if val:
            SOURCES.add(val)
            G.add_edge(val, target)
            G.node[val]['is_const'] = True
            G.node[val]['is_immediate'] = True
            G.node[val]['value'] = val
        else:
            #op1 = check_rename(G, convert_to_array(op1))
            op1 = source_look_up(op1,G)
            SOURCES.add(op1)
            G.add_edge(op1, target)

        val = check_immediate(op2)
        if val:
            SOURCES.add(val)
            G.add_edge(val, target)
            G.node[val]['is_const'] = True
            G.node[val]['is_immediate'] = True
            G.node[val]['value'] = val
        else:
            #op2 = check_rename(G, convert_to_array(op2))
            op2 = source_look_up(op2,G)
            SOURCES.add(op2)
            G.add_edge(op2, target)

        val = check_immediate(op3)
        if val:
            SOURCES.add(val)
            G.add_edge(val, target)
            G.node[val]['is_const'] = True
            G.node[val]['is_immediate'] = True
            G.node[val]['value'] = val
        else:
            #op3 = check_rename(G, convert_to_array(op3))
            op3 = source_look_up(op3,G)
            SOURCES.add(op3)
            G.add_edge(op3, target)


        SINKS.add(target)
        

        #Propagate constant
        if op1 not in G.nodes():
            print "ERROR: ", op1, " is used before being defined!"
            quit()
        elif op2 not in G.nodes():
            print "ERROR: ", op2, " is used before being defined!"
            quit()
        elif op3 not in G.nodes():
            print "ERROR: ", op3, " is used before being defined!"
            quit()
        elif check_key(G.node[op1], "is_const", True) and check_key(G.node[op2], "is_const", True) and check_key(G.node[op3], "is_const", True) :
            G.node[target]['is_const'] = True
            G.node[target]['value'] = "(" + str(G.node[op1]['value']) + " ? " + str(G.node[op2]['value'])  + " : " + str(G.node[op3]['value']) + ")"


        G.node[target]['op'] = "mux"
        G.node[target]['op_raw'] = "?"
        G.node[target]['type'] = decl

        ##return "Found: "+str(instr)
        #return decl+"%s = %s ? %s : %s"%(target, op1, op2, op3)
        return ""

    else:
        return line



def find_dual_op_math(G, line):
    SINKS   = G.graph['SINKS']
    SOURCES = G.graph['SOURCES']

    matchObj = re.match( r'(.+)=(.+) (.{1,2}) (.+);$', line, re.M|re.I)

    op_dic = {'-': "sub", '+': "add", '*': "mult", '/': "div", '^': "xor", '|': "or", '&': "and", '&&': "and", "~" : "inv" ,">>" : "lshift", "<<" : "rshift", ">" : "gt", "<" : "lt", ">=" : "gte", "<=" : "lte", "==" : "eq", "!=" : "ne"}

    if matchObj and matchObj.group(3) in op_dic.keys():
        target = matchObj.group(1)
        op1    = matchObj.group(2).strip()
        op2    = matchObj.group(4).strip()
        instr  = matchObj.group(3)

        (decl, target, dims) = parse_declration(target)

        target = convert_to_array(target)
        target = rename(G, target)

        val = check_immediate(op1)
        if val:
            SOURCES.add(val)
            G.add_edge(val, target)
            G.node[val]['is_const'] = True
            G.node[val]['is_immediate'] = True
            G.node[val]['value'] = val
        else:
            #op1 = check_rename(G, convert_to_array(op1))
            op1 = source_look_up(op1,G)
            SOURCES.add(op1)
            G.add_edge(op1, target)

        val = check_immediate(op2)
        if val:
            SOURCES.add(val)
            G.add_edge(val, target)
            G.node[val]['is_const'] = True
            G.node[val]['is_immediate'] = True
            G.node[val]['value'] = val
        else:
            #op2 = check_rename(G, convert_to_array(op2))
            op2 = source_look_up(op2,G)
            SOURCES.add(op2)
            G.add_edge(op2, target)


        SINKS.add(target)
        

        #Propagate constant
        if op1 not in G.nodes():
            print "ERROR: ", op1, " is used before being defined!"
            quit()
        elif op2 not in G.nodes():
            print "ERROR: ", op2, " is used before being defined!"
            quit()
        elif check_key(G.node[op1], "is_const", True) and check_key(G.node[op2], "is_const", True) :
            G.node[target]['is_const'] = True
            G.node[target]['value'] = "(" + str(G.node[op1]['value']) + instr + str(G.node[op2]['value']) + ")"


        G.node[target]['op'] = op_dic[instr]
        G.node[target]['op_raw'] = instr
        G.node[target]['type'] = decl

        ##return "Found: "+str(instr)
        #return decl+"%s %s %s %s"%(op_dic[instr], target, op1, op2)
        return ""
    else:
        return line


def convert_to_array(line):
    """
Convetrs access to C-struct field to array-like access.
Example: _conv1_1_stencil(0, 0, 0) => _conv1_1_stencil[0][0][0]
    """
    line = line.strip()
    #VPR doesn't handle names that start with "_"
    if VPR_SAFE and line.startswith("_"):
        line = "w"+line

    matchBrackObj = re.match( r'(.+)\((.+)+\)', line, re.M|re.I)
    if matchBrackObj:
        s_name  = matchBrackObj.group(1)
        indexes = matchBrackObj.group(2).split(', ')

        #return "%s[%s]"%(s_name, "][".join(indexes)  )
        if VPR_SAFE:
            return "%s_%s"%(s_name, "_".join(indexes)  )
        else:
            return "%s[%s]"%(s_name, "][".join(indexes)  )
    else:
        if VPR_SAFE:
            line = line.replace("[","_")
            line = line.replace("]","")

        return line


def parse_declration(line):
    """
Detects a singal declaration. Example: uint8_t _543
    """
    s_type = ""
    signal = line
    dims   = []

    #matchObj = re.match( r'(uint[0-9]+_t )(.+)', line, re.M|re.I)
    matchObj = re.match( r'([a-z0-9_]+?) &?(.+)', line, re.M|re.I)
    matchTmplObj = re.match( r'.+<(.+?)>[ >]* &?([a-zA-Z0-9_]+);?$', line, re.M|re.I)

    if matchObj:
        signal = matchObj.group(2)
        #s_type   = matchObj.group(1) + " " + signal + "\n"
        s_type   = matchObj.group(1)
        #print signal, " - ", s_type
    elif matchTmplObj:
        signal = matchTmplObj.group(2)
        s_type = matchTmplObj.group(1).split(", ")[0]
        dims   = matchTmplObj.group(1).split(", ")[1:]
        #print ":-)", dims

    return (s_type, signal, dims)

def check_immediate(line):
    matchImmObj = re.match( r'\(?(-?[0-9]+)\)?', line, re.M|re.I)

    if matchImmObj:
        return matchImmObj.group(1)
    else:
        return None

def check_func(line):
    VALID_FUNC = ["min", "max", "abs"]

    matchFuncObj = re.match( r'(.+)\((.*)\)', line.strip(), re.M|re.I)

    if matchFuncObj:
        fname = matchFuncObj.group(1);
        args  = matchFuncObj.group(2).split(", ");

        if fname in VALID_FUNC:
            return (fname, args)

    return (None, None)

#creates list of signal names for a bus
def make_names (prefix, dims) :
    res = []
    #VPR doesn't handle names that start with "_"
    if VPR_SAFE and prefix.startswith("_"):
        prefix = "w"+prefix

    if len(dims) > 0:
        for i in range(int(dims[0])):
            #a = make_names ("{0}[{1}]".format(prefix,i), dims[1:])
            if VPR_SAFE:
                a = make_names ("{0}_{1}".format(prefix,i), dims[1:])
            else:
                a = make_names ("{0}[{1}]".format(prefix,i), dims[1:])
            if a:
                res += a
        return res
    else:
        return [prefix] 



def find_declare(G,line, arg_ind = None):
    matchObj       = re.match( r'.+<(.+?)>[ >]* &?([a-zA-Z0-9_]+);?$', line, re.M|re.I)
    matchScalarObj = re.match( r'([a-zA-Z0-9_]+?) &?([a-zA-Z0-9_]+);?$', line, re.M|re.I)
    matchArrayObj  = re.match( r'([a-zA-Z0-9_]+?) &?([a-zA-Z0-9_]+)\[(.+?)\];?$', line, re.M|re.I)
    s_name = None
    s_type = None
    dims   = None

    if matchObj:
        s_name = matchObj.group(2)
        s_type = matchObj.group(1).split(", ")[0]
        dims   = matchObj.group(1).split(", ")[1:]
    elif matchScalarObj:
        s_name = matchScalarObj.group(2)
        s_type = matchScalarObj.group(1)
        dims   = []
    elif matchArrayObj:
        s_name = matchArrayObj.group(2)
        s_type = matchArrayObj.group(1)
        dims   = matchArrayObj.group(3).split(", ")
    else:
        return line

    #print ":::::::" , s_name,"/",s_type,"/",dims
    for s in make_names(s_name, dims):
        G.add_node(s)
        G.node[s]['type'] = s_type
        if arg_ind is not None:
            G.node[s]['arg'] = int(arg_ind)
    return ""

def source_look_up(a, G):
    source = check_rename(G, convert_to_array(a))
    #This is a VPR HACK to deal with multidimetional bus
    source_1 = check_rename(G, convert_to_array(a+"[0]"))
    source_2 = check_rename(G, convert_to_array(a+"[0][0]"))
    source_3 = check_rename(G, convert_to_array(a+"[0][0][0]"))
    if source in G.nodes():
        return source
    elif source_1 in G.nodes():
        return source_1
    elif source_2 in G.nodes():
        return source_2
    elif source_3 in G.nodes():
        return source_3

    return source


def find_func(G, line):
    SINKS   = G.graph['SINKS']
    SOURCES = G.graph['SOURCES']

    #matchObj = re.match( r'(.+?) = (\(.+?\))?(.+);$', line, re.M|re.I)
    matchObj = re.match( r'(.+?) = (\([a-zA-Z0-9_]+?\))?\(?((min|max|abs)\(.+?\))\)?;$', line, re.M|re.I)

    if matchObj:
        target = matchObj.group(1)
        cast   = matchObj.group(2)
        source = matchObj.group(3)

        (decl, target, dims) = parse_declration(target)
        target = convert_to_array(target)
        target = rename(G, target)

        #print "###", target, " -- ", source, "  | ", line

        SINKS.add(target)

        (fname, args) = check_func(source)

        #Parse arguments if it's a function call
        if fname:
            G.add_node(target)
            #print "$->", target, " (", source,")"
            G.node[target]['func'] = fname
            G.node[target]['op']   = fname
            G.node[target]['type'] = decl
            is_const = True
            node_val = ""
            for a in args:
                val = check_immediate(a)
                if val:
                    SOURCES.add(val)
                    G.add_edge(val, target)
                    G.node[val]['is_const'] = True
                    G.node[val]['is_immediate'] = True
                    G.node[val]['value'] = val
                else:
                    source = source_look_up(a,G)
                    #source = check_rename(G, convert_to_array(a))

                    if source not in G.nodes():
                        print "ERROR: ", source, " is used before being defined!"
                        quit()

                    SOURCES.add(source)
                    G.add_edge(source, target)

                    #Propagate constant
                    if check_key(G.node[source], "is_const", True):
                        node_val = node_val + " " + str(G.node[source]['value']) + ","
                    else:
                        is_const = False

            if is_const:
                G.node[target]['is_const'] = True
                G.node[target]['value']    = fname + "(" + node_val + ")"

            #return "Found: func "+ fname+ " on "+str(args)
            return ""



        return ""
    else:
        return line


def find_assign(G, line):
    SINKS   = G.graph['SINKS']
    SOURCES = G.graph['SOURCES']

    #matchObj = re.match( r'(.+?) = (\(.+?\))?(.+);$', line, re.M|re.I)
    matchObj = re.match( r'(.+?)[ ]+=[ ]+(\([a-zA-Z0-9_]+?\))?([~])?\(?([a-zA-Z0-9_<>\[\]]+(\([0-9, ]+\))?)\)?;$', line, re.M|re.I)

    if matchObj:
        target = matchObj.group(1)
        cast   = matchObj.group(2)
        oper   = matchObj.group(3)
        source = matchObj.group(4)

        if (source.startswith("arg_")):
            arg_ind = source[len("arg_"):]
            #print target , " / ", source, " / ",arg_ind
            return find_declare(G,target, arg_ind)

        (decl, target, dims) = parse_declration(target)
        target = convert_to_array(target)
        target = rename(G, target)

        #print ">>>", target, " (", line,")"

        SINKS.add(target)

        #print "-->", target, " (", source,")", cast

        #Drop brackets
        matchBrackObj = re.match( r'\((.+)\)', source, re.M|re.I)
        if matchBrackObj:
            source = matchBrackObj.group(1)

#        (fname, args) = check_func(source)
#        #Parse arguments if it's a function call
#        if fname:
#            G.add_node(target)
#            #print "$->", target, " (", source,")"
#            G.node[target]['func'] = fname
#            G.node[target]['op']   = fname
#            is_const = True
#            node_val = ""
#            for a in args:
#                val = check_immediate(a)
#                if val:
#                    SOURCES.add(val)
#                    G.add_edge(val, target)
#                    G.node[val]['is_const'] = True
#                    G.node[val]['is_immediate'] = True
#                    G.node[val]['value'] = val
#                else:
#                    source = source_look_up(a,G)
#                    #source = check_rename(G, convert_to_array(a))
#
#                    if source not in G.nodes():
#                        print "ERROR: ", source, " is used before being defined!"
#
#                    SOURCES.add(source)
#                    G.add_edge(source, target)
#
#                    #Propagate constant
#                    if check_key(G.node[source], "is_const", True):
#                        node_val = node_val + " " + str(G.node[source]['value']) + ","
#                    else:
#                        is_const = False
#
#            if is_const:
#                G.node[target]['is_const'] = True
#                G.node[target]['value']    = fname + "(" + node_val + ")"
#
#            #return "Found: func "+ fname+ " on "+str(args)
#            return ""

        G.add_node(target)
        G.node[target]['type'] = decl
        #print "#->", target, " (", source,")"
        if oper == "~":
            G.node[target]['op']   = "inv"
            G.node[target]['op_raw'] = oper
        else:
            G.node[target]['op']   = "mv"

        #Check if assigning to an immediate
        val = check_immediate(source)
        if val:
            SOURCES.add(val)
            G.add_edge(val, target)
            G.node[val]['is_const'] = True
            G.node[val]['value'] = val
            #G.add_node(target)
            G.node[target]['is_const'] = True
            G.node[target]['value'] = val

            ##return "Found: assign TO "+str(val)
            #return decl+"mv %s %s"%(target ,val)
            return ""

        #source = check_rename(G, convert_to_array(source))
        source = source_look_up(source,G)

        #Propagate constant
        if source not in G.nodes():
            print "ERROR: ", source, " is used before being defined!"
            quit()
        elif check_key(G.node[source], "is_const", True):
            G.node[target]['is_const'] = True
            G.node[target]['value'] = G.node[source]['value']

        SOURCES.add(source)
        G.add_edge(source, target)


        ##return "Found: assign from "+str(source)
        #return decl+"mv %s %s"%(target ,source)
        return ""
    else:
        return line


def trim_dag(G):
    """
Removes MV nodes and constants
    """
    SINKS   = G.graph['SINKS']
    SOURCES = G.graph['SOURCES']

    for node in G.nodes():
        node_attr = G.node[node]
        children  = G.successors(node)

        if check_key(node_attr, 'is_const', True):
            if len(children) == 0:
                print "!!!!! ", node

            SOURCES.remove(node)
            if node in SINKS:
                SINKS.remove(node)
            for c in children:
                if 'immediates' in G.node[c].keys():
                    G.node[c]['immediates'].append(node_attr['value'])

        if check_key(node_attr, 'op', "mv") or check_key(node_attr, 'is_const', True) :
            parents  = G.predecessors(node)
            
            for p in parents:
                for c in children:
                    G.add_edge(p, c)
            #print G.predecessors(node), " -> ", node, " -> ", G.successors(node)
            G.remove_node(node)

    return


def parse_ssa(G, line):
    line = find_declare(G,line)
    #print ">  ", line
    line = find_dual_op_math(G, line)
    #print ">> ", line
    line = find_assign(G, line)
    #print ">>>", line
    line = find_triple_op_math(G, line)
    #print ">>>>", line
    line = find_func(G, line)
    #print ">>>>>", line

    if line != "":
        print "::: ", line

    return line



def format_signal(name,atribs):
    """
Marks signal name with the bitwidth, base on 'type' attribute
    """
    #return name

    if 'type' in atribs and atribs['type'] == 'bool':
        return "%s_1b"%name
    elif 'type' in atribs and (atribs['type'] == 'uint8_t' or atribs['type'] == 'int8_t'):
       return "%s_8b"%name
    else:
       return "%s_16b"%name


def get_node_name(G, node):
    if check_key(G.node[node], 'is_immediate', True):
        return "const_"+str(node)
    else:
        return format_signal(node, G.node[node])

def find_busses(singals):
    """
Extract busses with dimenetions from a collection of individual signals
    """
    buses = {}
    for n in singals:
        key = (n.split("["))[0]
        vals = map(lambda x: x.split("]")[0] , n.split("[")[1:] ) 
        if key not in buses.keys():
            buses[key] = vals
        else:
            buses[key] = map(lambda x: max(buses[key][x], vals[x]), range(len(vals)) )

    return buses


def dims_to_verilog_range(dims):
    if len(dims) == 0 or (VPR_SAFE and len(dims) == 1 and dims[0] == "0"):
        return ""
    elif len(dims) ==1:
        return "[%s:0]"%(dims[0])
    else:
        return "[%s:0]"%":0][".join(dims)


def get_grouped_inputs(G):
    SINKS   = G.graph['SINKS']
    SOURCES = G.graph['SOURCES']

    input_names  = (SOURCES - SINKS)
    input_names  = filter(lambda x: not check_key(G.node[x], 'is_const', True), input_names)
    input_names  = filter(lambda x: not check_key(G.node[x], 'is_immediate', True), input_names)

    input_agrs   = filter(lambda x: 'arg' in G.node[x].keys(), input_names)
    input_extra  = filter(lambda x: 'arg' not in G.node[x].keys(), input_names)

    inp_buses_grouped  = []

    arg_set = set(map(lambda x: G.node[x]['arg'], input_agrs))
    for a in arg_set:
        inp_buses_grouped += sorted(find_busses(filter(lambda x: G.node[x]['arg'] == a, input_agrs)))

    inp_buses_grouped += sorted(find_busses(input_extra))

    #inp_buses_grouped_formated = map(lambda x: format_signal(x, G.node[x]), inp_buses_grouped)
    #return inp_buses_grouped_formated
    return inp_buses_grouped


def get_grouped_outputs(G):
    SINKS   = G.graph['SINKS']
    SOURCES = G.graph['SOURCES']

    output_names = (SINKS - SOURCES)
    output_names = filter(lambda x: not check_key(G.node[x], 'is_const', True), output_names)

    out_buses = find_busses(output_names)

    regex=re.compile('r[0-9]+_(.+)')

    out_names = []
    for n in sorted(out_buses):
        matchObj = re.match(regex, n)
        out_name = "out_"+n
        if matchObj:
            out_name = "out_"+matchObj.group(1)
        out_names.append(format_signal(out_name,G.node[n]))

        #print out_name ,"  ", dims_to_verilog_range(out_buses[n])
    return out_names



def print_verilog(G, module_name="kernel"):
    SINKS   = G.graph['SINKS']
    SOURCES = G.graph['SOURCES']

    input_names  = (SOURCES - SINKS)
    input_names  = filter(lambda x: not check_key(G.node[x], 'is_const', True), input_names)
    input_names  = filter(lambda x: not check_key(G.node[x], 'is_immediate', True), input_names)

    output_names = (SINKS - SOURCES)
    output_names = filter(lambda x: not check_key(G.node[x], 'is_const', True), output_names)
    #print "\n\n\n", G.nodes()

    #output_names = filter(lambda x: not check_key(G.node[x], 'is_const', True), output_names)

    inp_buses         = find_busses(input_names)
    inp_buses_grouped = get_grouped_inputs(G)

    out_buses = find_busses(output_names)
    out_names = {}

    #print output_names
    #quit()

    print "module %s("%module_name
    print "//Inputs"
    for n in inp_buses_grouped:
        #print n ,"  ", dims_to_verilog_range(inp_buses[n])
        print "  %s,"%(format_signal(n, G.node[n]))


    print "//Outputs"
    regex=re.compile('r[0-9]+_(.+)')
    for n in sorted(out_buses):
        matchObj = re.match(regex, n)
        out_name = "out_"+format_signal(n, G.node[n])
        if matchObj:
            out_name = "out_"+format_signal(matchObj.group(1), G.node[n])
        out_names[n] = out_name

        #print out_name ,"  ", dims_to_verilog_range(out_buses[n])
        #print "  %s,"%(out_name)

    for out_name in get_grouped_outputs(G):
        print "  %s,"%(out_name)


    print ""
    print "  clk"
    print ");\n"

    print "//Inputs"
    for n in inp_buses:
        #print n ,"  ", dims_to_verilog_range(inp_buses[n])
        print "input %s %s;"%(dims_to_verilog_range(inp_buses[n]), format_signal(n, G.node[n]))


    print "//Outputs"
    for n in out_buses:
        print "output %s %s;"%(dims_to_verilog_range(out_buses[n]), out_names[n])
    print ""
    print "input  clk;\n\n"


    #all_sources = find_busses(SOURCES & SINKS)
    all_sources = find_busses(SINKS) #(G.nodes() )

    for n in sorted(all_sources.keys()):
        print "wire %s %s;"%(dims_to_verilog_range(all_sources[n]), format_signal(n, G.node[n]))

    print "wire   tmp_clk;\n"
    print "assign tmp_clk = clk;"

    print "\n//Assign results"
    for n in out_buses:
        print "assign %s = %s;"%(out_names[n], format_signal(n, G.node[n]))

    #for n in G.nodes():
    #    print "logic [15:0] ", get_node_name(G,n),";"

    cnt = 0;

    all_nodes = G.nodes()
    if VPR_SAFE:
        all_nodes = SINKS

    for n in sorted(all_nodes):
    #for n in G.nodes():
    #for n in SINKS:
        node_attr = G.node[n]
        if check_key(node_attr, 'is_immediate', True):
            continue

        parents   = G.predecessors(n)
        target    = get_node_name(G,n)
        if check_key(node_attr, 'is_const', True):
            print "assign ", target ," = 1'b0;"
        elif check_key(node_attr, 'op', "mv"):
            print "assign ", target ," = ",get_node_name(G,parents[0]),";"
        elif 'op' in node_attr.keys():
            instr = node_attr['op']
            print "%s_16b_pe %s_%d ("%(instr.upper(),instr,cnt)
            oper = ["a","b", "s"]
            for p in range(max(2,len(parents))):
                operand = "1'b0"
                if(p < len(parents) and check_key(G.node[parents[p]], 'is_immediate', True)==False):
                    operand = get_node_name(G,parents[p])
                print "  .%s(%s),"%(oper[p],operand)
            print "  .c(%s),"%target
            print "  .clk(clk)"
            print ");"
            cnt += 1 


    print "\nendmodule\n"
    #quit()

def print_macros_verilog(op_list):
    macros = {}
    macros['mv'] = "" 
    macros['add'] = """
module ADD_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    """

    macros['sub'] = """
module SUB_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    """

    macros['abs'] = """
module ABS_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    """

    macros['min'] = """
module MIN_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    """

    macros['max'] = """
module MAX_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    """

    macros['lshift'] = """
module LSHIFT_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    """

    macros['mult'] = """
module MULT_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mult MULT_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .out16b(c)
    );

endmodule

    """

    macros['div'] = """
module DIV_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mult MULT_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .out16b(c)
    );

endmodule

    """

    macros['and'] = """
module AND_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    """

    macros['mux'] = """
module MUX_16b_pe(a,b,s,c,clk);
  input  a;
  input  b;
  input s;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( s ),
        .out16b(c)
    );

endmodule

    """
    macros['eq'] = """
module EQ_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    """
    macros['lt'] = """
module LT_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    """

    macros['lte'] = """
module LTE_16b_pe(a,b,c,clk);
  input  a;
  input  b;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( b ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    """

    macros['inv'] = """
module INV_16b_pe(a,c,clk);
  input  a;
  output  c;
  input clk;
    mux2o ALU_0(
        .clk(clk),
        .a16b( a ),
        .b16b( 1'b0 ),
        .s1b( 1'b0 ),
        .out16b(c)
    );

endmodule

    """

    for o in op_list:
        print macros[o]



def build_kernel_graph(all_lines, trim = False):
    G = nx.DiGraph()
    G.graph['SINKS']   = set()
    G.graph['SOURCES'] = set()

    G.graph['INPUTS'] = list()
    G.graph['OUPUTS'] = list()

    G.graph['RENAME'] = {}

    SINKS   = G.graph['SINKS']
    SOURCES = G.graph['SOURCES']

    INPUTS  = G.graph['INPUTS']
    OUPUTS  = G.graph['OUPUTS']


    for line in all_lines:
        #print ">>>> ", line
        l = parse_ssa(G, filter_line(G, line) )
        if l != "":
            print l

    #print "\n---------------------------------------------\n"
    #print "Kernel inputs : ", (SOURCES - SINKS)
    #print "\n---------------------------------------------\n"
    #print "Kernel outputs: ", (SINKS - SOURCES)
    ##print "\n---------------------------------------------\n"
    ##print "Kernel ops    : ", (SOURCES & SINKS)
    #print "\n---------------------------------------------\n"
    #print "INPUTS : ", INPUTS
    #print "\n---------------------------------------------\n"
    #print "OUPUTS : ", OUPUTS

    if trim:
        trim_dag(G)

    ##Need try/except
    #nx.find_cycle(G)

    #print "Cycles: ", len(list(nx.simple_cycles(G)))
#    draw_app_dag(G)

    #quit()
    #print "\n\n----------------------\n\n"
    #print G.nodes()
    #print "\n\n----------------------\n\n"
    #quit()

    return G


def print_kernel_verilog(all_lines, module_name="kernel"):

    G = build_kernel_graph(all_lines)
    print_verilog(G, module_name)

    #quit()

    unique_ops = set( map(lambda x: G.node[x]['op'] ,filter(lambda x: ('op' in G.node[x].keys()) and (not check_key(G.node[x], 'is_const', True)) , G.nodes()))) 
    return unique_ops 






if __name__ == "__main__":
    #F_NAME = "conv1.cpp"
    #F_NAME = "unsharp_ratio_1.cpp"
    #F_NAME = "gauss.cpp"
    F_NAME = "demosaic_1.cpp"
    F_DIR  = "examples/"
    f = open(F_DIR+F_NAME, 'r')
    #f = ["bool _566 = 10 <= _549;"]

    unique_ops = print_kernel_verilog(f)
    print "\n\n"
    print_macros_verilog(unique_ops)


    f.close()

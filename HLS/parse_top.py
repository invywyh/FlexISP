import re
import networkx as nx
import matplotlib.pyplot as plt
from networkx.drawing.nx_agraph import graphviz_layout
import os.path
import sys

#from parse_hls import parse_declration
from parse_hls import get_grouped_inputs, get_grouped_outputs, build_kernel_graph, print_kernel_verilog, print_macros_verilog
#sys.path.append('/home/tema8/projects/FlexISP/pylib')
#from pylib.lb_verilog import *
from lb_verilog import make_lb_verilog_from_config, make_lb_base_verilog, make_shift_reg_base_verilog




VPR_SAFE = True

def filter_line(line):
	l = line.strip()
	matchCntrlObj = re.match( r'.+\.last = (.*?);', line, re.M|re.I)

	if l.startswith("//"):
		return ""
	elif l.startswith("#pragma "):
		return ""
	elif l == "(void)0;":
		return ""
	elif matchCntrlObj: #stream controll
		return ""
	else:
		return l


##########################################################################


def check_key(d, key, val):
	return key in d.keys() and d[key]==val


def parse_declration(line):
	"""
Detects a singal declaration. Example: uint8_t _543
	"""
	s_type = ""
	signal = line
	dims   = []

	#matchObj = re.match( r'(uint[0-9]+_t )(.+)', line, re.M|re.I)
	matchObj = re.match( r'([a-z0-9_]+? )&?(.+)', line, re.M|re.I)
	matchTmplObj = re.match( r'.+<(.+?)>[ >]* &?([a-zA-Z0-9_]+);?$', line, re.M|re.I)

	if matchObj:
		signal = matchObj.group(2)
		s_type = matchObj.group(1)
		#print signal, " - ", s_type
	elif matchTmplObj:
		signal = matchTmplObj.group(2)
		s_type = matchTmplObj.group(1).split(", ")[0]
		dims   = matchTmplObj.group(1).split(", ")[1:]
		#print ":-)", dims

	return (s_type, signal, dims)


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

##########################################################################


#This doesn't work because of explicit control sinals to LBs ('if...else')
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/fanout_hls/"

#These don't work because kernels use indexing with a variable:
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/stereo_hls/"
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/simpleCNN_hls/"

#These don't work due to unrolled 0 rows LB in hls_target and  kernels use indexing with a variable
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/bilateral_grid_hls/"


#These have unrolled 0 rows LB in hls_target, but worked after hand changes
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/unsharp_hls/"
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/demosaic_harris_hls/"
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/harris_hls/"


#These examples work:
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/gaussian_hls/"
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/demosaic_hls/"
DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/conv_hls/"
TOP_NAME = "hls_target.cpp"


def find_assign(G, line, quite=False, file_name=""):
    matchObj = re.match( r'(.+?) = (.+?);$', line, re.M|re.I)

    if matchObj:
    	target = matchObj.group(1)
    	source = matchObj.group(2)
    	(s_type, signal, dims) = parse_declration(target)

    	G.add_node(signal)
    	G.node[signal]['type'] = s_type
    	G.node[signal]['dims'] = dims

    	#if source.startswith("arg_"):
    	#	print ">>>%s,%s"%(file_name, signal)

    	#if force_arg_0 and source == "arg_1": # Assume "arg_0" is always output
    	if source.startswith("arg_") and is_signal_output(file_name, signal):
    		source_copy = source
    		#print "\n-------------------------"
    		#is_signal_output(file_name, signal)
    		#print "\n-------------------------"
    		source = signal
    		signal = source_copy

    	G.add_edge(source, signal)
    	G.node[signal]['obj']  = "mv"
    	#G.node[signal]['type'] = s_type
    	#G.node[signal]['dims'] = dims

    	if not quite:
	    	print "MV target: %s (<-%s)"%(signal, source)
    	#print signal," <- ", source
    	#print "%45s | %50s -> %15s"%("", source, signal)
    	return ""
    else:
    	return line


def find_declaration(G, line):
	(s_type, signal, dims) = parse_declration(line)
	if signal != line:
		#print signal," ! "

		G.add_node(signal)
		G.node[signal]['type'] = s_type
		G.node[signal]['dims'] = dims
		return ""
	else:
		return line 




def is_signal_output(file_name, sig_name):
	"""
Look for a function call in hls_target() that has 'sig_name' as an arument
and returns True if 'sig_name' is an output of that function
	""" 
	if file_name is None or not os.path.isfile(file_name):
		return False
	

	f = open(file_name, 'r')

	block_cnt = 0;
	func_start = False

	for line in f:
		#matchObj = re.match(regex, n, re.M|re.I)
		l = filter_line(line)
		if (l == ('void hls_target(')): #Found function declaration
			func_start = True
		elif func_start & l.startswith("{"):
			block_cnt = block_cnt + 1
		elif func_start & l.startswith("}"):
			block_cnt = block_cnt - 1
			func_start = (block_cnt > 0)
		elif func_start & (block_cnt > 0) : #Found body of the function
			if sig_name in l:
				matchObj = re.match( r'(\(.+\) )?(.+?)\((.+?)\);$', l, re.M|re.I)

				if matchObj and sig_name in matchObj.group(3):
					func_name = matchObj.group(2)
					args      = matchObj.group(3).split(",")
					sig_ind   = filter(lambda x: sig_name in args[x] , range(len(args)))

					#print ">>> Found %s in %s() at %s"%(sig_name, func_name, sig_ind)
					(in_arg, out_arg) = parse_func(file_name, func_name)
					#print "           out=", out_arg
					out_ind = int(out_arg[-1])
					f.close()
					return out_ind in sig_ind
	f.close()
	return False




def get_func_code(file_name, func_name): 
	all_lines=[]

	f = open(file_name, 'r')
	func_G = nx.MultiDiGraph()

	block_cnt = 0;
	func_start = False

	INPUTS = list()
	OUPUTS = list()

	for line in f:
		#matchObj = re.match(regex, n, re.M|re.I)
		l = filter_line(line)
		if (l == ('void '+func_name+'(')): #Found function declaration
			func_start = True
		elif func_start & l.startswith("{"):
			block_cnt = block_cnt + 1
		elif func_start & l.startswith("}"):
			block_cnt = block_cnt - 1
			func_start = (block_cnt > 0)
		elif func_start & (block_cnt > 0) : #Found body of the function
			all_lines.append(l)
			
	f.close()

	return all_lines







def parse_func(file_name, func_name): 
	if func_name.startswith("linebuffer"):
		in_arg  = "arg_0"
		out_arg = "arg_1"
		return (in_arg, out_arg)

	f = open(file_name, 'r')
	func_G = nx.MultiDiGraph()

	block_cnt = 0;
	func_start = False

	INPUTS = list()
	OUPUTS = list()

	for line in f:
		#matchObj = re.match(regex, n, re.M|re.I)
		l = filter_line(line)
		if (l == ('void '+func_name+'(')): #Found function declaration
			func_start = True
		elif func_start & l.startswith("{"):
			block_cnt = block_cnt + 1
		elif func_start & l.startswith("}"):
			block_cnt = block_cnt - 1
			func_start = (block_cnt > 0)
		elif func_start & (block_cnt > 0) : #Found body of the function
			#matchInObj  = re.match( r'(.+) = (.+)\.read\(\);', l, re.M|re.I)
			matchOutObj = re.match( r'(.+)\.write\((.*?)\);', l, re.M|re.I)

			if matchOutObj: #output stream function calls
				OUPUTS.append( matchOutObj.group(1).strip() )
				l = ""
			#elif matchInObj: #input stream function calls
			#	INPUTS.append( matchInObj.group(2).strip() )
			#	l = ""

			l = find_assign(func_G, l, True, None)
			l = find_declaration(func_G, l)
			#l = find_func(func_G, l)



			#if l != "":
			#	print ">>>> ", l
	f.close()
	args = filter(lambda x: x.startswith("arg_"), func_G.nodes())
	#in_arg  = func_G.predecessors(INPUTS[0])[0]
	out_arg = func_G.predecessors(OUPUTS[0])[0]

	if len(OUPUTS)!=1:
		print "ERROR: Expected 1 output, but found %d!!!"%(len(OUPUTS))

	in_arg = filter(lambda x: x!=out_arg, args)
	#print "-> ", INPUTS, " / ", func_G.predecessors(INPUTS[0])
	#print "<= ", OUPUTS, " / ", func_G.predecessors(OUPUTS[0]) #func_G.successors(OUPUTS[0])
	#print "(%s->%s)"%(str(in_arg), out_arg)
	#print args
	return (in_arg, out_arg)













def find_func(G, line, file_name):
    matchObj = re.match( r'(.+?)\((.+?), (.+?)(, (.+?))?(, (.+?))?\);$', line, re.M|re.I)

    if matchObj:
    	func = matchObj.group(1)
    	arg0 = matchObj.group(2)
    	arg1 = matchObj.group(3)
    	arg2 = matchObj.group(5)
    	arg3 = matchObj.group(7)

    	args = [arg0,arg1,arg2,arg3]
    	#print "[0]=", args[0]

    	#target  = arg1
    	#source0 = arg0
    	#source1 = arg2
    	#source2 = arg3

    	target_ind  = 1

    	if func.startswith("linebuffer"):
    		#For LB, asume that agr[0] is input and arg[1] is output
    		target = args[1]
    		source = args[0]
    		G.add_edge(source, target)
    		G.node[target]['obj'] = "lb"
    		G.node[target]['lb']  = func
    		#print "LB(%s) target: %s : %s"%(func, target, G.node[target]['dims'])
    	else:
    		#print "*************************", func
    		(in_arg, out_arg) = parse_func(file_name, func)

    		target_ind = int(out_arg[-1])
    		target     = args[target_ind]

    		all_sources = map(lambda x: args[x] , filter(lambda x: x!=target_ind and args[x]!=None,range(len(args))))

    		#print "		%s<-%s"%(target, all_sources)
    		#print "*************************"

    		#print "FN ",target, " : ", G.node[target]
    		for source in all_sources:
	    		G.add_edge(source, target)
    		G.node[target]['obj']    = "kernel"
    		G.node[target]['kernel'] = func

    		G.node[target]['code'] = get_func_code(file_name, func)


    	#print "FN target: %s (%s)"%(target, source)
    	#for p in G.predecessors(target):
    	#	print "		<-",p

    	#print func," | ", arg0, "->", arg1
    	#print "%45s | %15s, %15s, %15s, %15s"%(func, arg0, arg1, arg2, arg3)
    	return ""
    else:
    	return line











def delete_mv(G):
	"""
Removes MV nodes and constants
	"""
	for node in G.nodes():
		node_attr = G.node[node]
		children  = G.successors(node)

		if node.startswith("arg_") and G.predecessors(node)==[]:
			for c in children:
				if check_key(G.node[c], 'obj', "mv"):
					G.node[c]['obj']  = "inp"
			G.remove_node(node)

		

	for node in G.nodes():
		node_attr = G.node[node]
		children  = G.successors(node)

		if check_key(node_attr, 'obj', "mv"):
			parents  = G.predecessors(node)
			
			for p in parents:
				for c in children:
					G.add_edge(p, c)
			#print G.predecessors(node), " -> ", node, " -> ", G.successors(node)
			G.remove_node(node)

	return 





def draw_app_dag(G):
  #print G.nodes(data=True)

  labels       = {}
  n_color      = {}
  nodes_gr0    = []
  nodes_gr1    = []
  nodes_gr2    = []
  nodes_gr3    = []

  for node in G.nodes():
    node_attr = G.node[node]
    #labels[node]  = node 
    if check_key(node_attr, 'obj', "lb"):
        #labels[node] = node_attr['name']
        labels[node] = "lb"
        nodes_gr1.append(node)
    elif check_key(node_attr, 'obj', "mv"):
    	labels[node] = "mv"
        nodes_gr2.append(node)
    elif check_key(node_attr, 'obj', "kernel"):
        #labels[node]  = node_attr['kernel']
        labels[node]  = node
        nodes_gr0.append(node)
    else:
        labels[node]  = node
        nodes_gr3.append(node)

  # Plot trees
  pos=graphviz_layout(G, prog='dot')
  #nx.draw(G, pos, node_color='b', with_labels=False, arrows=True)
  nx.draw_networkx_nodes(G,pos, nodes_gr0, node_color='b')
  nx.draw_networkx_nodes(G,pos, nodes_gr1, node_color='r')
  nx.draw_networkx_nodes(G,pos, nodes_gr2, node_color='g')
  nx.draw_networkx_nodes(G,pos, nodes_gr3, node_color='m')

  nx.draw_networkx_edges(G,pos, arrows=True)

  nx.draw_networkx_labels(G,pos,labels,font_size=10)
  #plt.savefig('draw_trees_with_pygraphviz.png', bbox_inches='tight')   
  plt.show()
  #plt.draw()
  



file_name = DIR+TOP_NAME

G = nx.MultiDiGraph()
G.graph['LBs'] = set()

main_lines = get_func_code(file_name, "hls_target")

for line in main_lines:
	l = filter_line(line)

	l = find_assign(G, l, True, file_name) # Assume "arg_0" is  OUTPUT
	l = find_declaration(G, l)
	l = find_func(G, l, file_name)

	if l != "":
		print ">>>> ", l



#f = open(file_name, 'r')
#
##regex=re.compile(r'void hls_target(')
#
#block_cnt = 0;
#func_start = False
#
#for line in f:
#	#matchObj = re.match(regex, n, re.M|re.I)
#	l = filter_line(line)
#	if (l == 'void hls_target('): #Found main function declara
#		func_start = True
#	elif func_start & l.startswith("{"):
#		block_cnt = block_cnt + 1
#	elif func_start & l.startswith("}"):
#		block_cnt = block_cnt - 1
#		func_start = (block_cnt > 0)
#	elif func_start & (block_cnt > 0) : #Found body of the function
#		l = find_assign(G, l, True, file_name) # Assume "arg_0" is  OUTPUT
#		l = find_declaration(G, l)
#		l = find_func(G, l, file_name)
#
#		if l != "":
#			print ">>>> ", l
#	#else:
#	#	print "----", func_start, "/", block_cnt


def get_bit_range(s_type):
	bit_range = ""

	#if s_type == "uint8_t":
	#	bit_range = "[7:0]"
	#elif s_type == "uint16_t":
	#	bit_range = "[15:0]"
	#elif s_type == "bool":
	#	bit_range = ""

	return bit_range



def get_lb_config_from_key(lb_key):
	lb_def = lb_key.split(";")

	lb_get_pos = False
	sig_width = 16

	if lb_def[1] == "bool":
		sig_width = 1
	elif lb_def[1] == "uint8_t" or lb_def[1] == "int8_t":
		sig_width = 8
	elif lb_def[1] == "uint32_t" or lb_def[1] == "int32_t":
		sig_width = 32

	lb_dims = lb_def[0].split("_")
	if len(lb_dims) == 3:
#TODO: LB definition is NOT consistent
		#(height, width, channels) = (int(lb_dims[1]), int(lb_dims[2]), int(lb_dims[0]))
		(height, width, channels) = (int(lb_dims[1]), int(lb_dims[0]), int(lb_dims[2]))
	elif len(lb_dims) == 2:
		(height, width, channels) = (int(lb_dims[1]), int(lb_dims[0]), 1)
	else:
		print "ERROR: Unsupported LB definition - ", lb_key

	config = (height, width, channels, sig_width, lb_get_pos)
	return config



def make_lb_module_type(G, dims, s_type):
	LBs = G.graph['LBs']
	lb_key = "%s;%s"%( "_".join(dims), s_type)
	LBs.add(lb_key)

	prefix = "LB"
	(height, width, channels, sig_width, lb_get_pos) = get_lb_config_from_key(lb_key)

	return "{prefix}_{height}_{width}_{channels}_{sig_width}bit_{lb_get_pos}".format(prefix=prefix,height=height,width=width,channels=channels, sig_width=sig_width, lb_get_pos=lb_get_pos)


	#return "lb_%s_%s"%( "_".join(dims), s_type)


def print_verilog_top(G):
	INPUTS = filter(lambda x: G.predecessors(x)==[], G.nodes())
	OUPUTS = filter(lambda x: G.successors(x)==[], G.nodes())
	#print "INPUTS: ", INPUTS
	#for i in INPUTS:
	#	print "		", i, " ", G.node[i]['dims']
	#print ""


	print "module top("
	print "//Inputs"
	for i in INPUTS:
		for s in make_names (i, G.node[i]['dims']):
			print "  %s,"%s
		print ""


	print "//Outputs"
	for o in OUPUTS:
		for s in make_names (o, G.node[o]['dims']):
			print "  %s,"%s
		print ""

	print "  clk"
	print ");\n"

	print "//Inputs"
	for i in INPUTS:
		s_type    = G.node[i]['type']
		bit_range = get_bit_range(s_type)

		for s in make_names (i, G.node[i]['dims']):
			print "input   %s %s;"%(bit_range, s)
		print ""

	print "//Outputs"
	for o in OUPUTS:
		s_type    = G.node[o]['type']
		bit_range = get_bit_range(s_type)

		for s in make_names (o, G.node[o]['dims']):
			print "output  %s %s;"%(bit_range, s)
		print ""
	print "input   clk;\n"


	intern_nodes = set(G.nodes()) - set(INPUTS) - set(filter(lambda x:  G.node[x]['obj'] != "kernel",OUPUTS))


	for w in intern_nodes - set(OUPUTS):
		s_type    = G.node[w]['type']
		bit_range = get_bit_range(s_type)

		for s in make_names (w, G.node[w]['dims']):
			print "wire  %s %s;"%(bit_range, s)
		print ""

	print "wire   gnd;"
	#print "wire   tmp_gnd;\n"

	print "assign gnd=1'b0;\n"
	#print "assign   tmp_gnd=gnd;"



	for n in intern_nodes:
		if (G.node[n]['obj'] != "kernel") and (G.node[n]['obj'] != "lb"):
			print "ERROR:: ", G.node[n]['obj'], "   ",G.node[n].keys()
			continue

		
		if G.node[n]['obj'] == "kernel":
			print "kernel_%s KERN_%s ("%(n, n )
			k_G = build_kernel_graph(G.node[n]['code'])
			kern_inputs = get_grouped_inputs(k_G)
			#print kern_inputs

			inp_connections = []
			for p in G.predecessors(n):
				bit_range = ""
				inp_connections += make_names(p, G.node[p]['dims'])
				#for s in make_names (p, G.node[p]['dims']):
				#	#print "wire  %s %s;"%(bit_range, s)
				#	print "		.%s(%s),"%(s, s)
				#print ""


			for i in range(len(kern_inputs)):
				port = kern_inputs[i]
				sign = "gnd"
				if i < len(inp_connections):
					sign = inp_connections[i]
				print "    .%s(%s),"%(port, sign)
			print ""

			#Outputs
			out_ports = get_grouped_outputs(k_G)
			out_sign  = make_names (n, G.node[n]['dims'])
			for i in range(len(out_ports)):
				port = out_ports[i]
				sign = ""
				if i < len(out_sign):
					sign = out_sign[i]
				print "    .%s(%s),"%(port, sign)

			print ""
			print "    .clk(clk)"

		elif (G.node[n]['obj'] == "lb"):
			#print G.node[n]['obj'], " KERN_", n," ("
			print "%s LB_%s ("%(make_lb_module_type(G, G.node[n]['dims'], G.node[n]['type']), n)
			#print G.node[n], "\n"
			print "    .clk(clk),"
			print ""

			inp_cnt = 0
			for p in G.predecessors(n):
				bit_range = ""
				for s in make_names (p, G.node[p]['dims']):
					#print "wire  %s %s;"%(bit_range, s)
					print "    .in%d(%s),"%(inp_cnt, s)
					inp_cnt = inp_cnt + 1
				print ""

			#Outputs
			bit_range = ""
			out_ports = make_names (n, G.node[n]['dims'])
			for s in range(len(out_ports)):
				#print "wire  %s %s;"%(bit_range, s)
				coma = ","
				if (s == len(out_ports)-1):
					coma = "" 
				print "    .out%d(%s)%s"%(s, out_ports[s], coma)

		print ");\n"

	#print intern_nodes

	print "endmodule"

	#print G.graph['LBs']


def print_lb_marcos(G):
	IGNORE_WIDTH = True
	lb_base = {}
	LBs = list(G.graph['LBs'])
	#LBs = map(lambda x: "%s;uint16_t"%x  ,set(map(lambda x: x.split(";")[0],G.graph['LBs'])))



	for lb in LBs:
		#print "LB: ", lb
		config = get_lb_config_from_key(lb)
		#print "		", config
		lb_cfg = make_lb_verilog_from_config("LB", config, IGNORE_WIDTH)
		lb_base[str(lb_cfg)]=lb_cfg;

	shift_reg_base = {}
	for lb in lb_base:
		sr_cfg = make_lb_base_verilog(lb_base[lb], IGNORE_WIDTH)
		shift_reg_base[str(sr_cfg)] = sr_cfg

	for sr in shift_reg_base:
		sr_cfg = make_shift_reg_base_verilog(shift_reg_base[sr], IGNORE_WIDTH)


#quit()


#draw_app_dag(G)

delete_mv(G)
print_verilog_top(G)
draw_app_dag(G)

#print_kernel_verilog(G.node["_demosaic_1_stencil_update_stream"]['code'])

#quit()

unique_ops = set()
for n in G.nodes():
	node_attr = G.node[n]
	if check_key(node_attr, 'obj', "kernel"):
		#print n
		#print "Parsing: ", n, "\n"
#		kern_f     = open("kernel_"+n+".v", 'w')
#		sys.stdout = kern_f
		print "\n\n"
		kern_unique_ops = print_kernel_verilog(node_attr['code'], "kernel_"+n)
		print "\n\n"
		unique_ops = unique_ops | kern_unique_ops
#		print_macros_verilog(kern_unique_ops)
#		kern_f.close()
#		sys.stdout = sys.__stdout__
		none_triv_ops = filter(lambda x: x!="mv", kern_unique_ops)
#		print "Parsed: ", n, " and foud ", len(none_triv_ops), " non trivial unique ops"
		#print "	",kern_unique_ops

print "\n\n"
print_macros_verilog(unique_ops)
print "\n\n"
print_lb_marcos(G)

#print unique_ops

quit()



INPUTS = filter(lambda x: G.predecessors(x)==[], G.nodes())
OUPUTS = filter(lambda x: G.successors(x)==[], G.nodes())
print "INPUTS: ", INPUTS
for i in INPUTS:
	print "		", i, " ", G.node[i]['dims']
print "OUPUTS: ", OUPUTS
for o in OUPUTS:
	print "		", o, " ", G.node[o]['dims']

print "\n"
for n in G.nodes():
	print n,"[", G.node[n]['obj'],"] : ", G.node[n]['type'], " " ,G.node[n]['dims']




draw_app_dag(G)
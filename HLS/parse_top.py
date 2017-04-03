import re
import networkx as nx
import matplotlib.pyplot as plt
from networkx.drawing.nx_agraph import graphviz_layout
import os.path

#from parse_hls import parse_declration


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
		s_type   = matchObj.group(1) + " " + signal + "\n"
		#print signal, " - ", s_type
	elif matchTmplObj:
		signal = matchTmplObj.group(2)
		s_type = matchTmplObj.group(1).split(", ")[0]
		dims   = matchTmplObj.group(1).split(", ")[1:]
		#print ":-)", dims

	return (s_type, signal, dims)

##########################################################################

#These don't work due to unrolled 0 rows LB in hls_target
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/unsharp_hls/"
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/demosaic_harris_hls/"
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/harris_hls/"
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/bilateral_grid_hls/"

#This doesn't work because of explicit control sinals to LBs ('if...else')
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/fanout_hls/"

#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/stereo_hls/"
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/simpleCNN_hls/"
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/gaussian_hls/"
DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/demosaic_hls/"
#DIR = "/home/tema8/projects/Halide-HLS/apps/hls_examples/conv_hls/"
TOP_NAME = "hls_target.cpp"


def find_assign(G, line, quite=False, file_name=""):
    matchObj = re.match( r'(.+?) = (.+?);$', line, re.M|re.I)

    if matchObj:
    	target = matchObj.group(1)
    	source = matchObj.group(2)
    	(s_type, signal, dims) = parse_declration(target)

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
    	G.node[signal]['type'] = s_type
    	G.node[signal]['dims'] = dims

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

					print ">>> Found %s in %s() at %s"%(sig_name, func_name, sig_ind)
					(in_arg, out_arg) = parse_func(file_name, func_name)
					#print "           out=", out_arg
					out_ind = int(out_arg[-1])
					f.close()
					return out_ind in sig_ind
	f.close()
	return False









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
    	else:
    		#if func == "stage_demosaic_1_stencil_update_stream":
    		print "*************************", func
    		(in_arg, out_arg) = parse_func(file_name, func)

    		target_ind = int(out_arg[-1])
    		target     = args[target_ind]

    		all_sources = map(lambda x: args[x] , filter(lambda x: x!=target_ind and args[x]!=None,range(len(args))))

#    		if out_arg == "arg_0":
#    			target  = arg0
#    			source0 = arg1
    		print "		%s<-%s"%(target, all_sources)
    		print "*************************"

    		for source in all_sources:
	    		G.add_edge(source, target)
    		G.node[target]['obj']    = "kernel"
    		G.node[target]['kernel'] = func

    	#print "FN target: %s (%s)"%(target, source)
    	#for p in G.predecessors(target):
    	#	print "		<-",p

    	#print func," | ", arg0, "->", arg1
    	#print "%45s | %50s -> %15s"%(func, arg0, arg1)
    	print "%45s | %15s, %15s, %15s, %15s"%(func, arg0, arg1, arg2, arg3)
    	return ""
    else:
    	return line















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
  



file_name = DIR+TOP_NAME
f = open(file_name, 'r')


G = nx.MultiDiGraph()

#regex=re.compile(r'void hls_target(')

block_cnt = 0;
func_start = False

for line in f:
	#matchObj = re.match(regex, n, re.M|re.I)
	l = filter_line(line)
	if (l == 'void hls_target('): #Found main function declara
		func_start = True
	elif func_start & l.startswith("{"):
		block_cnt = block_cnt + 1
	elif func_start & l.startswith("}"):
		block_cnt = block_cnt - 1
		func_start = (block_cnt > 0)
	elif func_start & (block_cnt > 0) : #Found body of the function
		l = find_assign(G, l, True, file_name) # Assume "arg_0" is  OUTPUT
		l = find_declaration(G, l)
		l = find_func(G, l, file_name)

		if l != "":
			print ">>>> ", l
	#else:
	#	print "----", func_start, "/", block_cnt





draw_app_dag(G)
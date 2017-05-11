"""
Visualization of VPR placement from *.place
"""
import re
import math
import numpy as np
import matplotlib.pyplot as plt

CB_DELAY         = 120  #pS
SB_DELAY         = 100#100   #pS
ROUTE_UNIT_DELAY = 0.02 #pS
TARGET_FREQ      = 800  #MHz
PERIOD_ADJUST    = 250 #ps, Adjustment to clock period: setup&hold, clk-to-q, clk unsertainty  
TARGET_DELAY     = (1000000./TARGET_FREQ - PERIOD_ADJUST)#1000#
MAX_WIRE_HOP     =int(float(1e6/TARGET_FREQ)/(SB_DELAY+ROUTE_UNIT_DELAY))



def get_module_name(line):
    matchObj = re.search( r'.+?\+(.+?)\..+?', line, re.M)
    if matchObj is None:
        return None
    return matchObj.group(1)

def get_module_type(line):
    matchObj = re.search( r'top\.(.+?)\+.+', line, re.M)
    if matchObj is None:
        return None
    return matchObj.group(1)


def get_op_name(line):
    matchObj = re.search( r'.+\+(.+?)\..+?', line, re.M)
    if matchObj is None:
        return None
    return matchObj.group(1)

def get_block(line):
    known_types = {'FF_NODE': 'Register', 'SRAM_BLOCK': 'SRAM', 'ADD_0' : 'ALU', 'ALU_0' : 'ALU', 'ALUp_0' : 'CMP', 'MULT_0': 'MULT', 'MUX_0': 'MUX', 'AN2D4BWP' : 'LUT', 'INVD4BWP' : 'LUT', 'LUT_0' : 'LUT'}
    for t in known_types.keys():
        if line.find(t) >= 0:
            return known_types[t]
    return "N/A"


def get_width(line):
    matchObj = re.search( r'.*(16b).*', line, re.M)
    if matchObj is None:
        return 1
    return 16



class Route:
    def __init__(self, name):
        self.lvl     = -1
        self.pos      = None
        self.name     = name
        self.module   = get_module_name(name)
        self.mod_type = get_module_type(name)
        self.op_name  = get_op_name(name)
        self.width    = get_width(name)
        self.op_type  = get_block(name)
        self.stems    = list()
        self.segments = list()
        self.inp_reg  = [0, 0, 0, 0, 0, 0]
        self.inp_reg_1bit  = [0, 0, 0, 0, 0, 0]
        self.all_seg  = dict()
        self.new_stem = 0
        self.rank = 0
        self.head = None
        self.tails = {}
        self.t_arr = -1
        self.cycle_arr = 0
        self.tig = False

    
    def add(self, seg):
        rank = 0
        if self.segments:
            dist_inc = (self.segments[-1] - seg)
            seg.dist = self.segments[-1].dist + dist_inc
            rank     = self.segments[-1].rank
            if dist_inc > 0:
                rank = rank + 1

        elif self.new_stem and seg.seg_id in self.all_seg.keys():
            rank     = self.all_seg[seg.seg_id].rank
            seg.dist = self.all_seg[seg.seg_id].dist
        if rank > self.rank:
            self.rank = rank
        
        seg.rank = rank
        self.segments.append(seg)
        self.all_seg[seg.seg_id] = seg
        self.new_stem = 0
        
        if seg.seg_type == "SINK":
            self.stems.append(self.segments)
            self.tails[seg.start] = seg
            self.segments = list()
            self.new_stem  = 1
            self.pos = self.stems[0][0].start
        elif seg.seg_type == "SOURCE":
            self.head = seg.start

    def __str__(self):
        r = self.name +":\n"
        for stem in self.stems:
            r =r + "".rjust(11*stem[0].rank)
            for s in stem:
                r="%s%6s->"%(r,str(s.seg_type))
                if s.seg_type == "SINK":
                    r="%s #%d rank=[%d]"%(r, s.dist, s.rank)
            r=r+"\n"
        return r
    
    def get_wire_prefix(self):
        if self.module is None and self.op_name is None:
            prefix = self.name
            prefix = prefix.replace("~","_")
            prefix = prefix.replace("^","_")
            prefix = prefix.replace(".","_")
            prefix = prefix.replace("+","_")
        else:
            prefix = self.module + "__" + self.op_name +"_"+self.stems[0][0].number #self.name[-8:]

            
        return prefix
    
    def get_sig_width(self, ignore_bus_width = False):
        sig_width = ""
        if self.width == 16 and not ignore_bus_width:
            sig_width = "[15:0] "
        return sig_width

    
    def make_verilog_signals(self, ignore_bus_width = False):
        prefix    = self.get_wire_prefix()
        sig_width = self.get_sig_width(ignore_bus_width)
        
        previous_wire = prefix;
        print " wire %s%s; //%db"%(sig_width, prefix, self.width)
        for i in range(len(self.stems)):
            for j in range(len(self.stems[i])):
                segm = self.stems[i][j]
                if j==0 and i > 0 :
                    #don't use suffix if starting from output pin
                    if segm.seg_type == "OPIN":
                        previous_wire = prefix;
                    else:
                        previous_wire = "%s__%s"%(prefix, segm.seg_id);
                    print ""
                    continue;
                elif segm.seg_type == "CHANY" or segm.seg_type == "CHANX" or segm.seg_type == "SINK":
                    wire_name = "%s__%s"%(prefix, segm.seg_id)
                    print "    wire %s%s; //%db"%(sig_width, wire_name, self.width)
                    pos       = segm.start
                    pos_str   = "%s_%s"%(pos[0], pos[1])
                    print "    sb_delay d_%s_loc%s (.in(%s),.out(%s)); //@ %s"%(segm.seg_id, pos_str,previous_wire,wire_name, str(segm.start))
                    previous_wire = wire_name;


class Segment:
  def __init__(self, seg_id, seg_type, start, end, res, number):
     self.seg_id   = seg_id.strip()
     self.seg_type = seg_type
     self.start    = start
     self.end      = end
     self.res      = res
     self.number   = number
     self.rank     = 0
     self.dist     = 0
     
  def length(self):
    if self.end is None:
        if self.seg_type == 'CHANX' or self.seg_type == 'CHANY':
            return 1
        else :
            return 0
    elif self.seg_type == 'CHANX':
        return int(self.end[0]) - int(self.start[0]) + 1 
    elif self.seg_type == 'CHANY':
        return int(self.end[1]) - int(self.start[1]) + 1 
    else:
        return 0
                

  def __sub__(self,y):
    if self.end is None:
      dist_to_start = abs(int(y.start[0]) - int(self.start[0])) + abs(int(y.start[1]) - int(self.start[1]))
      dist_to_end   = dist_to_start
      if y.end is not None:
        dist_to_end   = abs(int(y.end[0]) - int(self.start[0])) + abs(int(y.end[1]) - int(self.start[1]))
      return min(dist_to_start, dist_to_end)
    elif self.seg_type == y.seg_type:
      return self.length()
    elif self.seg_type == 'CHANY' and y.seg_type == 'CHANX':
        return abs(int(y.start[1]) - int(self.start[1]))
    elif self.seg_type == 'CHANY' and y.seg_type == 'CHANX':
        return abs(int(y.start[0]) - int(self.start[0]))
    else:
        return abs(int(y.start[0]) - int(self.start[0])) + abs(int(y.start[1]) - int(self.start[1]))
        

  def __repr__(self):
    return __str__(self)
        
  def __str__(self):
    if self.end is None:
        return self.seg_type+":"+str(self.start)
    else:
        return self.seg_type+":"+str(self.start)+"-"+str(self.end)



class Kernel:
  def __init__(self, name):
     self.sinks   = {}
     self.sources = {}
     self.name    = name



def error(msg):
    print msg
    quit(0)


def find_net(line):
    matchObj = re.search( r'Net [0-9]+ \((.+)\)$\n', line, re.M)
    if matchObj is None:
        return None
    return matchObj.group(1)


sinks   = dict()
sources = dict()
routes  = dict()

unassign_routes = dict()


def parse_step(line):
    matchObj = re.search( r'Node:	([0-9]+)	[ ]*([A-Z]+) \(([0-9]+),([0-9]+)\) to \(([0-9]+),([0-9]+)\)  ([A-Za-z]+): ([0-9]+)', line)
    if matchObj is None:
        matchObj = re.search( r'Node:	([0-9]+)	[ ]*([A-Z]+) \(([0-9]+),([0-9]+)\)  ([A-Za-z]+): ([0-9]+)', line)
        if matchObj is None:
            return None
            
        seg_id   = matchObj.group(1)
        seg_type = matchObj.group(2)
        res_from = (matchObj.group(3),matchObj.group(4))
        res_to   = None
        sub_res  = matchObj.group(5)
        number   = matchObj.group(6)
    else:
        seg_id   = matchObj.group(1)
        seg_type = matchObj.group(2)
        res_from = (matchObj.group(3),matchObj.group(4))
        res_to   = (matchObj.group(5),matchObj.group(6))
        sub_res  = matchObj.group(7)
        number   = matchObj.group(8)

    res = Segment(seg_id, seg_type, res_from, res_to, sub_res, number)    
    return res


def make_plot(data, title):
    plt.subplots(1,1)
    plt.pcolor(data)
    
    plt.axis([0, data.shape[0], 0, data.shape[1]])
    plt.title(title)
    plt.colorbar()
    plt.show()

def make_plot_row(data, title):
    plt.figure()
    for i in range(len(data)):
        plt.subplot(1,len(data), i+1)
        plt.pcolor(data[i])
        plt.axis([0, data[i].shape[0], 0, data[i].shape[1]])
        plt.title(title[i])
        plt.colorbar()
    plt.show()


def get_hop_distr_by_source(all_routes, route_list):
    sources = dict()
    
    for route in route_list:
        r = all_routes[route]
        if r.head not in sources.keys():
            sources[r.head] = [r.rank]
        else:
            sources[r.head].append(r.rank)
            
    return sources


def add_to_dict(cont, obj, key):
    if key in cont.keys():
        cont[key].append(obj)
    else:
        cont[key] = [obj]

def add_to_hist(cont, key):
    if key in cont.keys():
        cont[key] = cont[key] + 1
    else:
        cont[key] = 1


def get_kernel(cont, key):
    if key not in cont.keys():
        cont[key] = Kernel(key)
    return cont[key]


def is_io_pos(r, nX, nY):
    if int(r[0]) == 0 or int(r[0]) == nY-1 or int(r[1]) == 0 or int(r[1]) == nX-1 :
        return True
    else:
        return False

'''
Assigns level to OPs
'''
def assign_lvl(kernels, routes, sources, sinks, nX, nY):
    unussigned_cnt = len(routes)       
    print "Unassigned start: ", unussigned_cnt, " / ", len( set(sources.keys()) &  set(sinks.keys()) )
    #Assign All LB and input pouts to lvl 0    
    for s in sources:
        for r in sources[s]:
            if is_io_pos(routes[r].pos, nX, nY) or  (routes[r].op_type == "Register") or (routes[r].op_type == "SRAM"):
                routes[r].lvl = 0
                routes[r].t_arr = 0
                unussigned_cnt = unussigned_cnt - 1

    print "Unassigned phase 0: ", unussigned_cnt
    
    iii = 0
    for iii in range(1000):
        unussigned_cnt_start = unussigned_cnt
        jjj = 0
        for k_name in kernels:
            if k_name is None:
                continue

            unassign_sources = filter(lambda x: routes[kernels[k_name].sources[x][0]].lvl == -1 , kernels[k_name].sources)       
            
            for s in unassign_sources:
                #No incomming routes means all inputs are immediate values
                if s not in sinks.keys():
                    routes[kernels[k_name].sources[s][0]].lvl = 0
                    routes[kernels[k_name].sources[s][0]].t_arr = 0
                    routes[kernels[k_name].sources[s][0]].tig = True
                    unussigned_cnt = unussigned_cnt - 1
                else:
                    valid_inputs = filter(lambda x: routes[x].module is not None, sinks[s])
                    inp_lvls     = map(lambda x: routes[x].lvl, valid_inputs)
                    arr_times    = map(lambda x: routes[x].t_arr + get_delay (routes[x].op_type, routes[x].tails[s].rank, routes[x].tails[s].dist) , valid_inputs)
                    
                    if min(inp_lvls) > -1:
                        routes[kernels[k_name].sources[s][0]].lvl = max(inp_lvls) + 1
                        routes[kernels[k_name].sources[s][0]].t_arr = max(arr_times)
                        unussigned_cnt = unussigned_cnt - 1
                        
                    if filter(lambda x: not routes[x].tig, valid_inputs) == []:
                        routes[kernels[k_name].sources[s][0]].tig = True
        
            jjj = jjj + 1
            
        #Finish this phase when stoped making progress
        if unussigned_cnt_start == unussigned_cnt:
            break
            
        print "    Unassigned phase 0.",iii,": ", unussigned_cnt
    print "Unassigned phase 1: ", unussigned_cnt
   
    #None Kernel contains pins and unnamed routes that are typically caused by LUT feed back. Both catecories should be 0
    if None in kernels.keys():
        for o in kernels[None].sources:
            for r in kernels[None].sources[o]:
                if routes[r].lvl == -1:
                    routes[r].lvl = 0
                    arr_times    = map(lambda x: get_delay (routes[r].op_type, routes[r].tails[x].rank, routes[r].tails[x].dist) , routes[r].tails)
                    routes[r].t_arr = max(arr_times)
                    unussigned_cnt = unussigned_cnt - 1
                    
    print "Unassigned phase 2: ", unussigned_cnt
            
    for k_name in kernels:
        for o in kernels[k_name].sources:
            for r in filter(lambda x: routes[x].lvl == -1 , kernels[k_name].sources[o]):
                if r not in sinks.keys():
                    routes[r].lvl = 0
                    routes[r].t_arr = 0
                else:
                    valid_inputs = sinks[r]
                    inp_lvls     = map(lambda x: routes[x].lvl, valid_inputs)
                    arr_times    = map(lambda x: routes[x].t_arr + get_delay (routes[x].op_type, routes[x].tails[o].rank, routes[x].tails[o].dist) , valid_inputs)
                    routes[r].lvl = max(inp_lvls) + 1
                    routes[r].t_arr = max(arr_times)
                unussigned_cnt = unussigned_cnt - 1 
                
    print "Unassigned phase 3: ", unussigned_cnt
   
    for r in routes:
        if routes[r].lvl == -1:
            print r, " / ",routes[r].lvl, " ", routes[r].op_type, " @",routes[r].op_type
    
        
#Delay in pS
def get_delay (op_type, rank, dist):
    OP_DELAY = {'Register': 0, 'SRAM' : 0, 'ALU' : 0.2, 'CMP' : 0.2, 'MULT': 0.8, 'MUX': 0.2, 'LUT': 0.1, 'N/A': 0}
    
    return int(OP_DELAY[op_type] + CB_DELAY + SB_DELAY * rank + ROUTE_UNIT_DELAY * dist)


def get_input_pins(sources, all_sinks, routes, k_name):
    return filter(lambda r: r in all_sinks.keys and  filter(lambda x: routes[x].module != k_name, all_sinks[r]) == [] , sources)


def bin_dict(dist, BASE):
    dist_log = {}
    max_dist = max(dist.keys())
    bin_cnt = int(math.ceil(math.log(max_dist,BASE)))+1
    for i in range(bin_cnt):
        dist_log[i] = 0

    for i in dist.keys():
        bin_id = 0
        if i > 0:
            bin_id = int(math.ceil(math.log(i,BASE)))
        dist_log[bin_id] += dist[i]

    return dist_log
    

def parse_file(f, color_base = 0):
    line = f.readline()
    matchObj = re.search( r'Array size: ([0-9]+) x ([0-9]+) ', line, re.M|re.I)
    assert matchObj is not None, "Can't determine array size"
    (nY, nX) = (int(matchObj.group(1))+2, int(matchObj.group(2))+2)
    #'+2' in the size accounts for pins
    print "Array: ",nX,"x",nY
    
    max_rank = 0
    max_dist = 0
    crit_path = []
    
    max_delay = 0
    worst_path =  None
    
    track_cnt    = np.zeros([nY,nX])
    track_dist   = np.zeros([nY,nX])
    track_cnt_x  = np.zeros([nY,nX])
    track_cnt_y  = np.zeros([nY,nX])
    track_bus_cnt_x  = np.zeros([nY,nX])
    track_bus_cnt_y  = np.zeros([nY,nX])
    
    reg_cnt       = np.zeros_like(track_cnt)
    sb_dr_bus_cnt = np.zeros_like(track_cnt)
    sb_dr_cnt     = np.zeros_like(track_cnt)
    
    all_wires = list()
    route = None
    bus_inc = 0
    bit_inc = 0
    
    kernels = {}
    
    for line in f:
        if route is None:
            net = find_net(line)
            if net is not None:
                route = Route(net)
                if route.width == 16:
                    bus_inc = 1
                    bit_inc = 0
                else:
                    bus_inc = 0
                    bit_inc = 1
                f.next() #Next line is epmty
                continue
        else:
            r = parse_step(line)
            
            if r is None:
                if route is not None:
                    all_wires.append(route)
                    routes[route.name]  = route
                  
                route = None
            else:
                
################ Add to statistics  ######################################################
                if r.seg_type in ["CHANY", "CHANX"] and r.seg_id not in route.all_seg.keys():
                    from_x = int(r.start[1])
                    from_y = int(r.start[0])
                    
                    reg_cnt[from_y][from_x] = reg_cnt[from_y][from_x]+1
                    sb_dr_bus_cnt[from_y][from_x] = sb_dr_bus_cnt[from_y][from_x]+bus_inc
                    sb_dr_cnt[from_y][from_x]     = sb_dr_cnt[from_y][from_x]+bit_inc

                    
                    if r.end is None:
                        track_cnt[from_y][from_x] = track_cnt[from_y][from_x]+(bit_inc+16*bus_inc)
                        
                        if r.seg_type == "CHANY":
                            track_cnt_y    [from_y][from_x] = track_cnt_y    [from_y][from_x]+bit_inc
                            track_bus_cnt_y[from_y][from_x] = track_bus_cnt_y[from_y][from_x]+bus_inc
                        else:
                            track_cnt_x    [from_y][from_x] = track_cnt_x    [from_y][from_x]+bit_inc
                            track_bus_cnt_x[from_y][from_x] = track_bus_cnt_x[from_y][from_x]+bus_inc
                    else:
                        to_x = int(r.end[1])+1
                        to_y = int(r.end[0])+1
                        for y in range(from_y, to_y):
                            for x in range(from_x,to_x):
                                track_cnt[y][x] = track_cnt[y][x]+(bit_inc+16*bus_inc)
                                if r.seg_type == "CHANY":
                                    track_cnt_y    [y][x] = track_cnt_y    [y][x]+bit_inc
                                    track_bus_cnt_y[y][x] = track_bus_cnt_y[y][x]+bus_inc
                                else:
                                    track_cnt_x    [y][x] = track_cnt_x    [y][x]+bit_inc
                                    track_bus_cnt_x[y][x] = track_bus_cnt_x[y][x]+bus_inc
##########################################################################################                                        
                
                route.add(r)
                    
                if r.seg_type == "SOURCE":
                    K = get_kernel(kernels, route.module)
                    add_to_dict(K.sources, route.name, r.start)
                    add_to_dict(sources, route.name, r.start)
                elif r.seg_type == "SINK":
                    K = get_kernel(kernels, route.module)
                    add_to_dict(K.sinks, route.name, r.start)
                    add_to_dict(sinks, route.name, r.start)
                    
                    if (r.rank > max_rank) or (r.rank == max_rank and r.dist > max_dist):
                        max_rank = r.rank
                        max_dist = r.dist
                        crit_path = [r.start]
                    elif r.rank == max_rank and r.dist == max_dist :
                        crit_path.append(r.start)
                    
                    delay = CB_DELAY + SB_DELAY * r.rank + ROUTE_UNIT_DELAY * r.dist
                    if delay > max_delay:
                        max_delay = delay
                    
                    from_x = int(r.start[1])
                    from_y = int(r.start[0])
                    track_dist[from_y][from_x] = max(track_dist[from_y][from_x] , r.dist)
                    
    if route is not None:
        all_wires.append(route)
        routes[route.name]  = route


    end_points = map(lambda x: len(routes[x].tails) , routes)
    print " Fanout :", float(sum(end_points))/float(len(routes))
    print min(end_points), "->",max(end_points)
    quit(0)
        
    assign_lvl(kernels, routes, sources, sinks, nX, nY)
    max_lvl = max( map(lambda x: routes[x].lvl , routes) )
    print " Max lvl:", max_lvl
            
    all_delays = map(lambda x: routes[sources[x][0]].t_arr , sources)
    print "Critical path:", max(all_delays), " => ", max(all_delays)*(TARGET_FREQ/1000000.)

######  Add pipeline registers ###########        
    total_reg = 0
    #First add registers to archive target clock and keep track of arvival cycle per each node
    for k in kernels:
        r = routes[kernels[k].sources[kernels[k].sources.keys()[0]][0]]

        if k is None or r.op_type == "Register" or r.op_type == "SRAM":
            continue
        
        for l in range(1, max_lvl+1):
            routes_per_lvl = filter(lambda x: routes[kernels[k].sources[x][0]].lvl == l  and not routes[kernels[k].sources[x][0]].tig, kernels[k].sources)
            if routes_per_lvl == []:
                break               
            
            for r in routes_per_lvl:
                cur_route = routes[kernels[k].sources[r][0]]
                pos = cur_route.pos 
                valid_inputs = filter(lambda x: routes[x].module is not None and not routes[x].tig, sinks[pos])
                arr_times    = map(lambda x: routes[x].t_arr + get_delay (routes[x].op_type, routes[x].tails[pos].rank, routes[x].tails[pos].dist) , valid_inputs)
                for j in range(len(arr_times)):
                    pipe_reg       = arr_times[j] / TARGET_DELAY #*(TARGET_FREQ/1000000.)
                    pipe_reg_cnt   = int(pipe_reg+0.01)
                    if pipe_reg_cnt >= 1:
                        cur_route.inp_reg[j] = pipe_reg_cnt
                        arr_times[j] = arr_times[j] - pipe_reg_cnt*TARGET_DELAY#0
                        
                cur_route.t_arr = max(arr_times)

    # Add more registers to balance delay and fix schedule: arrival cycle has to match for all inputs
    for k in kernels:
        r = routes[kernels[k].sources[kernels[k].sources.keys()[0]][0]]

        if k is None or r.op_type == "Register" or r.op_type == "SRAM":
            continue

        routes_per_lvl = filter(lambda x: routes[kernels[k].sources[x][0]].lvl == 0 , kernels[k].sources)
        for l in range(1, max_lvl+1):
            routes_per_lvl = filter(lambda x: routes[kernels[k].sources[x][0]].lvl == l and not routes[kernels[k].sources[x][0]].tig, kernels[k].sources)
            if routes_per_lvl == []:
                break               
            
            for r in routes_per_lvl:
                cur_route = routes[kernels[k].sources[r][0]]
                pos = cur_route.pos
                valid_inputs = filter(lambda x: routes[x].module is not None and not routes[x].tig, sinks[pos])
                arr_cycles   = map(lambda x: routes[x].cycle_arr , valid_inputs)
                inp_width    = map(lambda x: routes[x].width , valid_inputs)

                ttl_arr_cycle = list(range(len(arr_cycles)))
                for j in range(len(arr_cycles)):
                    ttl_arr_cycle[j] = arr_cycles[j] + cur_route.inp_reg[j]
                
                max_arr_cycle = max(ttl_arr_cycle)
                
                cur_route.cycle_arr = max(ttl_arr_cycle)
                for j in range(len(arr_cycles)):
                    cur_route.inp_reg[j] = cur_route.inp_reg[j] + max_arr_cycle - ttl_arr_cycle[j]
                    cur_route.inp_reg_1bit[j] = cur_route.inp_reg[j] * inp_width[j]
    #Display results
    print "\nPipeline registers per kernel:"
    total_reg = 0
    total_1bit_reg = 0
    for k in kernels:
        r = routes[kernels[k].sources[kernels[k].sources.keys()[0]][0]]

        if k is None or r.op_type == "Register" or r.op_type == "SRAM":
            continue
        
        print "--= ", k ," =--"
        kernel_reg = 0                              
        kernel_1bit_reg = 0                              
        for l in range(1, max_lvl+1):
            routes_per_lvl = filter(lambda x: routes[kernels[k].sources[x][0]].lvl ==l and not routes[kernels[k].sources[x][0]].tig, kernels[k].sources)
            if routes_per_lvl == []:
                break               
            
            extra_reg  = sum(map(lambda x: sum(routes[kernels[k].sources[x][0]].inp_reg) ,  routes_per_lvl ))
            total_reg  = total_reg + extra_reg
            kernel_reg = kernel_reg + extra_reg
            
            extra_1bit_reg  = sum(map(lambda x: sum(routes[kernels[k].sources[x][0]].inp_reg_1bit) ,  routes_per_lvl ))
            total_1bit_reg  = total_1bit_reg + extra_1bit_reg
            kernel_1bit_reg = kernel_1bit_reg + extra_1bit_reg
            
        print "    ",kernel_reg,"/",kernel_1bit_reg

    print "\nTotal: ",total_reg,"/",total_1bit_reg,"=>",(total_1bit_reg/16),"\n\n"

    print "Max X:", np.max(track_cnt_x) , "/", np.max(16*track_bus_cnt_x)
    print "Max Y:", np.max(track_cnt_y), "/", np.max(16*track_bus_cnt_y)
    print "Total wire len: ", np.sum(track_cnt_x+track_cnt_y)

    
    (i_max,j_max) = track_cnt_x.shape
    hist_sb_dr_bus = {}
    hist_sb_dr_bit = {}
    hist_track_x = {}
    hist_track_y = {}
    hist_bus_x   = {}
    hist_bus_y   = {}
    for i in range(i_max):
        for j in range(j_max):
            add_to_hist(hist_sb_dr_bus, sb_dr_bus_cnt[i][j])
            add_to_hist(hist_sb_dr_bit, sb_dr_cnt[i][j])
            add_to_hist(hist_track_x, track_cnt_x[i][j])
            add_to_hist(hist_track_y, track_cnt_y[i][j])
            add_to_hist(hist_bus_x, int(track_bus_cnt_x[i][j]))
            add_to_hist(hist_bus_y, int(track_bus_cnt_y[i][j]))
            
    #plot track utilization
    if True:
        plt.figure(1)
        plt.subplot(2,2, 1)
        plt.bar(hist_bus_x.keys()[1:], hist_bus_x.values()[1:])
        plt.title("16bit bus in X")
        plt.subplot(2,2, 2)
        plt.bar(hist_bus_y.keys()[1:], hist_bus_y.values()[1:])
        plt.title("16bit bus in Y")
        plt.subplot(2,2, 3)
        plt.bar(hist_track_x.keys()[1:], hist_track_x.values()[1:])
        plt.title("1bit wires in X")
        plt.subplot(2,2, 4)
        plt.bar(hist_track_y.keys()[1:], hist_track_y.values()[1:])
        plt.title("1bit wires in Y")
        plt.show()
        
        make_plot_row([track_cnt_x,track_cnt_y], ["Track X count","Track Y count"])
        make_plot_row([track_bus_cnt_x,track_bus_cnt_y], ["Bus Track X count","Bus Track Y count"])
        
        
        make_plot_row([sb_dr_bus_cnt,sb_dr_cnt], ["SB Bus Drivers","SB bit Drivers"])
        delta = reg_cnt - sb_dr_bus_cnt - sb_dr_cnt
        make_plot_row([reg_cnt,delta], ["SB Drivers","delta"])
        
        print "\ndelta:", np.max(delta), " / ", np.min(delta)
       
    print "\n\n  SB bus drivers:", hist_sb_dr_bus, " ttl = ", np.sum(sb_dr_bus_cnt)
    print " SB bit drivers:", hist_sb_dr_bit, " ttl = ", np.sum(sb_dr_cnt)
    
    
    print "\n\n  1 bit X:", hist_track_x
    print "  1 bit Y:", hist_track_y
    print " 16 bit X:", hist_bus_x
    print " 16 bit Y:", hist_bus_y
    
    segm_cnt_1b = 0
    segm_cnt_16b = 0
    for arr in [hist_track_x, hist_track_y]:
        for k in arr:
            segm_cnt_1b = segm_cnt_1b +  k * arr[k]
            
    for arr in [hist_bus_x, hist_bus_y]:
        for k in arr:
            segm_cnt_16b = segm_cnt_16b +  k * arr[k]
    
    print " SB total  1bit :", segm_cnt_1b
    print " SB total 16bit :", segm_cnt_16b
    
    cb_inp_1b = 0
    cb_inp_16b = 0
   
    for s in sinks:
        for n in sinks[s]:
            if routes[n].width == 16:
                cb_inp_16b = cb_inp_16b + 1
            else:
                cb_inp_1b = cb_inp_1b + 1
                
    print " CB total  1bit :", cb_inp_1b
    print " CB total 16bit :", cb_inp_16b
    
    cb_out_1b = 0
    cb_out_16b = 0
   
    for s in sources:
        for n in sources[s]:
            if routes[n].width == 16:
                cb_out_16b = cb_out_16b + 1
            else:
                cb_out_1b = cb_out_1b + 1
                
    print " SB drivers total  1bit :", cb_out_1b
    print " SB drivers total 16bit :", cb_out_16b

    r_1b = 0
    r_16b = 0
   
    for r in routes:
        if routes[r].width == 16:
            r_16b = r_16b + 1
        else:
            r_1b = r_1b + 1

    print " R  1bit :", r_1b
    print " R 16bit :", r_16b



if __name__ == "__main__":
    import sys
    sourceFile = 'harris_0406_1bit_lut.route'
    #sourceFile = 'stereo_med_0406_1bit_lut.route'
    #sourceFile = 'isp_0406_1bit_lut.route'
    #sourceFile = 'fast_0406_1bit_lut.route'
    #sourceFile = 'fcam_0406_1bit_lut.route'
    #sourceFile = 'isp_0302_1bit_lut.route'
    #sourceFile = 'fast_0302_1bit_lut.route'
    sourceFile = 'stereo_xxl_1124_1bit_lut.route'

    
    if len(sys.argv) < 2:
        print "Usage: compile.py vpr_placement.route"
        #exit()
    else:
        sourceFile = sys.argv[-1]
        
    print "Results from ", sourceFile
    
    f = open(sourceFile, 'r')
    parse_file(f)
    f.close()




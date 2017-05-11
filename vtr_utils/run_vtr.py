#../../scripts/run_vtr_flow.pl ../lb_flow4k/designs/bus/harris_0406_1bit_lut.v ./test_16bit_no_reg_16_lb_4k_1bit_LUT.xml -keep_intermediate_files -temp_dir temp_harris_0406_1bit_LUT/  -vpr_route_chan_width 12 -cmos_tech /nobackup/tema8/vtr/vtr_release/vtr_flow/tech/PTM_45nm/45nm.xml


import os, sys, getopt, glob

def get_dir(fname):
    return os.path.dirname(os.path.realpath(fname))

def get_file_name(fname):
    return os.path.basename(fname)

def help():
    print __file__,'<design> <arch> [-c <channels>] [-d <temp_dir>] [-p] [-f]'

def main(argv):
    design = ""
    arch   = ""
    chan   = -1
    power  = False
    temp_dir = ""
    fast     = False

    try:
        opts, args = getopt.gnu_getopt(argv,"hc:d:pf",["chan=", "dir=","power=","fast="])
    except getopt.GetoptError:
        help()
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            help()
            sys.exit()
        elif opt in ("-c", "--chan"):
            chan = arg
        elif opt in ("-d", "--dir"):
            temp_dir = arg
        elif opt in ("-p", "--power"):
            power  = True
        elif opt in ("-f", "--fast"):
            fast  = True

    if len(args) < 2:
        help()
        print "**", args
        sys.exit(2)
    
    design = args[0]
    arch = args[1]
    #print 'dir    ', temp_dir #, " -> ", os.path.abspath(temp_dir)
    #print 'chan   ', chan
    #print 'design ', design, " -> ", get_dir(design), " + ", os.path.basename(design)
    #print 'arch   ', arch


    VTR_PARAM =  " {arch} -keep_intermediate_files".format(arch=arch);
    if power:
        VTR_PARAM = VTR_PARAM + " -power -cmos_tech ~/vtr_7_0/vtr_flow/tech/PTM_45nm/45nm.xml"
    if chan > 0:
        VTR_PARAM = VTR_PARAM + " -vpr_route_chan_width {chan}".format(chan=chan)
    if temp_dir!="":
        VTR_PARAM = VTR_PARAM + "  -temp_dir {temp_dir}".format(temp_dir=temp_dir)

    VTR_RUN = "../../scripts/run_vtr_flow.pl {design} {param} -ending_stage abc".format(design=design, param=VTR_PARAM)

    #dir_bad = "%s_bad"%get_dir(design)
    dir_bad = "/tmp/vtr_bad_design/"
    os.system("mkdir -p "+dir_bad)
    os.system("echo 'Q' >> /tmp/vtr_bad_design/"+get_file_name(design))

    VTR_RUN_FIXED = "../../scripts/run_vtr_flow.pl {dir}/{file} {param}".format(dir=dir_bad, file=os.path.basename(design), param=VTR_PARAM)

    if not fast or not len(glob.glob(temp_dir+"/*.odin.blif"))>0:
        print "Generate *.blif netlist :", VTR_RUN
        os.system(VTR_RUN)
        print "Fix blif netlist :"
        os.system("python fix_blif.py " + temp_dir + "/*.odin.blif"  )
    else:
        print "SKIP *.blif netlist generation!"
    print "Generate result :"
    os.system(VTR_RUN_FIXED)
    print "Done!"

if __name__ == "__main__":
   main(sys.argv[1:])
   #print sys.argv

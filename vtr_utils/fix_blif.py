import sys
import re
from tempfile import mkstemp
from shutil import move
from os import remove, close

def fixLine(l):
    new_l = re.sub("((MULT)|(MUX)|(ALU))_0(( )|(\\\\))", r"\1_0^out16b\5",l)
    new_l = re.sub("((LUT))_0(( )|(\\\\))", r"\1_0^out1b\3",new_l)
    new_l = re.sub("((ALUp))_0(( )|(\\\\))", r"\1_0^p1b\3",new_l)
    new_l = re.sub("((ADD))_0(( )|(\\\\))", r"\1_0^out16b\3",new_l)
    new_l = re.sub(".names gnd", r"",new_l)
    new_l = re.sub(".names vcc", r"",new_l)
    new_l = re.sub("gnd", r"unconn",new_l)
    new_l = re.sub("vcc", r"unconn",new_l)
    return new_l

if __name__ == "__main__":
#    sourceFile = 'harris_0302_1bit.odin.blif'
    
    if len(sys.argv) < 2:
        print "Usage: compile.py vpr_placement.route"
        exit()
    else:
        sourceFile = sys.argv[-1]
        
    fh, abs_path = mkstemp()
    with open(abs_path,'w') as new_file:
        with open(sourceFile) as old_file:
            for line in old_file:
                new_file.write(fixLine(line))
    close(fh)
    #Remove original file
    #remove(sourceFile)
    move(sourceFile, sourceFile+".save")

    #Move new file
    move(abs_path, sourceFile)


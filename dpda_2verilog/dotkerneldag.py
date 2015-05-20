# Generate a kernel DAG diagram with dot

from IPython import embed
from dpdadag.dpdadag import *
#as dpdadag
import sys

dotfile = open("output.dot", 'w')

#sourceFile = "../2014_03_19_HierFlow/fcam_orion/orion_out/conv.yml"

if len(sys.argv) > 1:
  sourceFile = sys.argv[-1]
else:
  print "Usage: dotkerneldag.py DPDA_FILE"
  exit(0)

dag = parse_dpda(sourceFile)

dotfile.write("""
digraph g {
  rankdir=LR;
  node[shape="circle"];
""")

prevK = 'Input' # Previous kernel
head = dag.head # Get the leading edge

while head != dag.tail:
  # Look up the kernel corresponding to the edge sink
  k = dag.kernels[dag.edges[head][1]]
  dotfile.write("  " + prevK + " -> " + k.name + "[label=" + head + "];\n")
  head = k.sink
  prevK = k.name

# Write the output line
dotfile.write("  " + prevK + " -> " + "Output [label=" + head + "];\n")

dotfile.write("}")
dotfile.close()


# Draw a DAG for the operations of a single kernel using dot

from IPython import embed
import dpdadag
import sys

def write_dot_opdag(dotfile, k):
  """
  Prints a kernel DAG to a dot file.
  """

  dotfile.write("""
  digraph g {
    rankdir=LR;
    node[shape="circle"];
  """)
 
  # Grab the register declaration for the partial-pixel output
  (startName, startSlice) = dpdadag.parse_signal(k.ppout.split()[1])
  
  colors = {'ufix':'blue', 'fix':'green', 'float':'red', 'bool':'purple', '':'black'}
  
  for e in k.edges:
    edge = k.edges[e]

    for indices in dpdadag.expand_range(edge.dim):
      # Draw a link from source to sink
      src = edge[indices].src
      if e == startName:
        src = "PP"
      elif src is None:
        src = "Unknown"
  
      dst = edge[indices].sinks
      if len(dst) == 0:
        dst = ['Output']
      for out in dst:
        dwidth = edge.intWidth + edge.fracWidth
        dotfile.write("  {src} -> {out} [label=\"{edge}\", color=\"{color}\", penwidth={width}];\n"\
          .format(src=src, out=out, edge=e, color=colors[edge.dtype], width=max(1, dwidth/4)))
  
  dotfile.write("}")

if __name__ == "__main__":
  if len(sys.argv) > 1:
    sourceFile = sys.argv[-1]
  else:
    print "Usage: dotopdag.py DPDA_FILE"
    exit(0)
  
  dag = dpdadag.parse_dpda(sourceFile)
  for k in dag.kernels:
    dotfile = open("output/kernel_" + k + ".dot", 'w')
 
    write_dot_opdag(dotfile, dag.kernels[k])
    dotfile.close()


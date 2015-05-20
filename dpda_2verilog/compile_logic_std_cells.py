# Compile a chunk of bit-width-specified DPDA into C code which simulates
# its operation.

from IPython import embed
import sys
import math
sys.path.append('/horowitz/users/nikhil3/Stanford-SEEC-Convolution-Engine/dpda_tools/pylib')
import dpdadag

class CodeWriter:
  """
  Little class that makes it easy to pretty-print code to a file or to stdout.
  """
  def __init__(self, filename=None):
    self.indentAmount = 0
    if filename is not None:
      self.outputFile = open(filename, 'w')
    else:
      self.outputFile = None

  def close(self):
    if self.outputFile is not None:
      self.outputFile.close()

  def writeln(self, line=''):
    if self.outputFile is not None:
      self.outputFile.write(' ' * self.indentAmount + line + '\n')
    else:
      print ' ' * self.indentAmount + line

  def indent(self):
    self.indentAmount += 2

  def unindent(self):
    self.indentAmount = max(0, self.indentAmount - 2)

def opOk(op, validRegs):
  """
  Checks whether an operation can be evaluated, i.e., if all of its operands
  have valid values.
  """
  for operand in op.operands:
    if not operand in validRegs:
      return False
  # If we make it here, they're all valid
  return True

def mangle(signal):
  """
  Takes a signal name as a (name, index) tuple and returns a C-safe identifier.
  """
  if type(signal) is list:
    return [mangle(s) for s in signal]
  else:
    (name, index) = signal
    return name + '_' + str.join('_', [str(x) for x in index])

dtypeMap = {'float':'float', 'ufix':'unsigned int', 'fix':'signed int', 'bool':'bool'}

def reduce(op, w, op_count, pe_name):
   """
   Takes a operand list and reduces it down to a single output using the given pe_name as a 2:1 compressor
   """
   level=0
   instance_count=0
   indices=xrange(0,len(op.operands),1)
   for i in indices:
     w.writeln("wire [15:0] {dst}_PP__{level}__{i} = {src};".format(dst=mangle(op.result), level=level, i=i, src=mangle(op.operands[i])))
   if (len(op.operands)%2==1):
     w.writeln("wire [15:0] {dst}_PP__{level}__{i} = {src};".format(dst=mangle(op.result), level=level, i=i+1, src='32\'h0'))  
   level=1
   while(len(indices)>1):
     count=0
     for i in xrange(0,len(indices),2):
       w.writeln("wire [15:0] {dst}_PP__{levelt}__{count};".format(dst=mangle(op.result), levelt=level, count=count)); 
       w.writeln("{pe_name} {kernel_name}_{op_count}_{instance_count}(.clk(),.c({dst}_PP__{levelt}__{count}), .a({dst}_PP__{levels}__{x}), .b({dst}_PP__{levels}__{y}));".format(dst=mangle(op.result), levelt=level, count=count, levels=level-1, x=i, y=i+1,kernel_name=k.name,op_count=op_count,instance_count=instance_count,pe_name=pe_name))
       count+=1
       instance_count+=1;
     if ((count%2==1) and (count>1)):
       w.writeln("wire [15:0] {dst}_PP__{levelt}__{count} = {src};".format(dst=mangle(op.result), levelt=level, count=count, src='32\'h0'))
       indices = xrange(0,count+1,1)
     else:
       indices = xrange(0,count,1)
     level+=1
   w.writeln("wire [15:0] {dst} = {dst}_PP__{levels}__{x};".format(dst=mangle(op.result), levels=level-1, x=0))

def write_kernel(w, k):
  """
  Parameters are the CodeWriter object, and the kernel object (not just the name)
  """

  # Use the partial-pixel out to get a list of input register. Each input register is
  #considered as a 16 bit input
  inputEdges = k.ppout
  inp_header = "";
  inp_count = 0;
  for inputEdge in inputEdges:
    (startName, startSlice) = dpdadag.parse_signal(inputEdge.split()[1]) 
    for indices in dpdadag.expand_range(k.edges[startName].dim):
        inp_header += 'in'+str(inp_count)+', '
        inp_count += 1
  inp_header = inp_header[:-2]
  w.writeln("module {k}({inputs}, out);".format(k=k.name,inputs=inp_header))
  w.indent()
    
  inp_count = 0;
  for inputEdge in inputEdges:
    (startName, startSlice) = dpdadag.parse_signal(inputEdge.split()[1]) 
    for indices in dpdadag.expand_range(k.edges[startName].dim):
        w.writeln("input [15:0] in{input_count};".format(input_count=inp_count))
        inp_count += 1
  w.writeln("output [15:0] out;")
  w.writeln("") 
  
  inp_count = 0;
  for inputEdge in inputEdges:
    (startName, startSlice) = dpdadag.parse_signal(inputEdge.split()[1])
    for indices in dpdadag.expand_range(k.edges[startName].dim):
      w.writeln("wire [15:0] {reg} = in{input_count};".format(reg=mangle((startName, indices)),input_count=inp_count))
      inp_count += 1;

  # Set up the constants
  uniq_const = set()
  for const in [x for x in k.constants if not (x in uniq_const or uniq_const.add(x))]:
    # TODO: be careful here, because we need to be consistent with naming/indexing
    # TODO: handle int/float; infer datatype in parser
    w.writeln("wire [15:0] {reg} = 16'd{val};".format(reg=mangle((const[0], [0])), val=16383 if (const[1]>16383) else const[1]))
  
  w.writeln("")
 
  for const in [(x, dpdadag.expand_range(k.edges[x].dim)[0]) for x in [i.split()[1] for i in k.rtaps]]:
    w.writeln("wire [15:0] {reg} = 16'd{val};".format(reg=mangle((const[0], [0])), val=16383))
  
  w.writeln("")
  validRegs = [(c[0], [0]) for c in k.constants]
  validRegs += [(x, dpdadag.expand_range(k.edges[x].dim)[0]) for x in [i.split()[1] for i in k.rtaps]]
  
  # Create a list of (name, index) tuples representing the valid (i.e., evaluated) signals
  for inputEdge in inputEdges:
    (startName, startSlice) = dpdadag.parse_signal(inputEdge.split()[1])
    validRegs += [(startName, i) for i in dpdadag.expand_range(k.edges[startName].dim)]

  # Make a copy of the list of operations which we can remove stuff from
  unprocessed = dict(k.ops)
  operator_count = 0
  # Process all the operations
  while len(unprocessed) > 0:
    progress = False
    for opKey in unprocessed:
      op = k.ops[opKey]
      # Find an operation that can be evaluated
      if opOk(op, validRegs):
        dtype = k.edges[op.result[0]].dtype
        dtype = dtypeMap[dtype] # Look up the C-equivalent for this type
        # TODO: include integer/fraction width
        #print dtype + '#' + op.name + ":" + dtypeMap[k.edges[op.operands[0][0]].dtype]
        # TODO: error checking that we have the right number of operands - this should be done in the parser, actually
        # Evaluate it
        if op.name == "sum":
          reduce(op, w, operator_count, 'ALU_pe')
        elif op.name == "mv":
          w.writeln("wire [{dst_width}:0] {dst} = {src};".format(dst_width=((1 if dtype==bool else 16)-1), dst=mangle(op.result), src=mangle(op.operands[0])))
        elif op.name == "add":
          reduce(op, w, operator_count, 'ALU_pe')
        elif op.name == "sub":
          reduce(op, w, operator_count, 'ALU_pe')
        elif op.name == "mult":
          reduce(op, w, operator_count, 'MULT_pe')
        elif op.name == "div":
          reduce(op, w, operator_count, 'MULT_pe')
        elif op.name == "ne":
          w.writeln("wire [15:0] {dst}_dummy;".format(dst=mangle(op.result)))
          w.writeln("ALU_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}_dummy), .a({op1}) ,.b({op2}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]),kernel_name=k.name, op_count=operator_count))
          w.writeln("wire [0:0] {dst}={dst}_dummy;".format(dst=mangle(op.result)))
        elif op.name == "eq":
          w.writeln("wire [15:0] {dst}_dummy;".format(dst=mangle(op.result)))
          w.writeln("ALU_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}_dummy), .a({op1}) ,.b({op2}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]),kernel_name=k.name, op_count=operator_count))
          w.writeln("wire [0:0] {dst}={dst}_dummy[0];".format(dst=mangle(op.result)))
        elif op.name == "lt":
          w.writeln("wire [15:0] {dst}_dummy;".format(dst=mangle(op.result)))
          w.writeln("ALU_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}_dummy), .a({op1}) ,.b({op2}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]),kernel_name=k.name, op_count=operator_count))
          w.writeln("wire [0:0] {dst}={dst}_dummy[0];".format(dst=mangle(op.result)))          
        elif op.name == "gt":
          w.writeln("wire [15:0] {dst}_dummy;".format(dst=mangle(op.result)))
          w.writeln("ALU_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}_dummy), .a({op1}) ,.b({op2}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]),kernel_name=k.name, op_count=operator_count))
          w.writeln("wire [0:0] {dst} = {dst}_dummy;".format(dst=mangle(op.result)))
        elif op.name == "inv":
          w.writeln("wire [15:0] {dst};".format(dst=mangle(op.result)))
          w.writeln("ALU_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}), .a({op1}) ,.b(16'h0));".format(dst=mangle(op.result), op1=mangle(op.operands[0]),kernel_name=k.name, op_count=operator_count))
        elif op.name == "not":
          w.writeln("wire [0:0] {dst};".format(dst=mangle(op.result)))
          w.writeln("INVD4BWP {kernel_name}_{op_count}_0(.Z({dst}), .I({op1}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]),kernel_name=k.name, op_count=operator_count))
        elif op.name == "max":
          reduce(op, w, operator_count, 'COMPARE_pe')
        elif op.name == "min":
          reduce(op, w, operator_count, 'COMPARE_pe')        
        elif op.name == "lshift":
          w.writeln("wire [15:0] {dst};".format(dst=mangle(op.result)))
          w.writeln("SHIFT_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}), .a({op1}) ,.b({op2}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]),kernel_name=k.name, op_count=operator_count))        
        elif op.name == "rshift":
          w.writeln("wire [15:0] {dst};".format(dst=mangle(op.result)))
          w.writeln("SHIFT_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}), .a({op1}) ,.b({op2}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]),kernel_name=k.name, op_count=operator_count))   
        elif op.name == "gte":
          w.writeln("wire [15:0] {dst};".format(dst=mangle(op.result)))
          w.writeln("LOGIC_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}), .a({op1}) ,.b({op2}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]),kernel_name=k.name, op_count=operator_count))
        elif op.name == "lte":
          w.writeln("wire [15:0] {dst}_dummy;".format(dst=mangle(op.result)))
          w.writeln("ALU_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}_dummy), .a({op1}) ,.b({op2}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]),kernel_name=k.name, op_count=operator_count))
          w.writeln("wire [0:0] {dst}={dst}_dummy[0];".format(dst=mangle(op.result)))
        elif op.name == "and":
          w.writeln("wire [{dst_width}:0] {dst};".format(dst_width=((1 if dtype=='bool' else 16)-1), dst=mangle(op.result)))
          if dtype != 'bool':
            w.writeln("ALU_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}), .a({op1}) ,.b({op2}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]),kernel_name=k.name, op_count=operator_count))
          else:
            w.writeln("AN2D4BWP {kernel_name}_{op_count}_0(.Z({dst}), .A1({op1}[0]), .A2({op2}[0]));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]),kernel_name=k.name, op_count=operator_count))
        elif op.name == "or":
          w.writeln("wire [15:0] {dst};".format(dst=mangle(op.result)))
          w.writeln("ALU_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}), .a({op1}) ,.b({op2}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]),kernel_name=k.name, op_count=operator_count))
        elif op.name == "abs":
          w.writeln("wire [15:0] {dst};".format(dst=mangle(op.result)))
          w.writeln("ALU_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}), .a({op1}) ,.b(16'h0));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), kernel_name=k.name, op_count=operator_count))
        elif op.name == "mux":
          w.writeln("wire [15:0] {dst};".format(dst=mangle(op.result)))
          w.writeln("MUX_pe {kernel_name}_{op_count}_0(.clk(), .c({dst}), .s({op1}), .a({op2}) ,.b({op3}));".format(dst=mangle(op.result), op1=mangle(op.operands[0]), op2=mangle(op.operands[1]), op3=mangle(op.operands[2]),kernel_name=k.name, op_count=operator_count))
        else:
          print "Unhandled operator " + opKey
        validRegs.append(op.result)
        # Remove it from the list
        unprocessed.pop(opKey)
        progress = True
        operator_count+=1
        break # We changed the list, so we gotta start over
  
    # If we went through the whole list without finding any ops to evaluate,
    # something is wrong and we need to give up.
    if progress is False:
      embed()
      print "Failed to evaluate some ops!"
      break
  
  for indices in dpdadag.expand_range(k.edges[k.sink].dim):
    #writeln('printf("result: %f\\n", {reg});'.format(reg=mangle((k.sink, indices))))
    # TODO: make this handle depths other than 3
    w.writeln('assign out = {reg};'.format(z=indices[0], reg=mangle((k.sink, indices))))

  w.unindent()
  w.writeln("endmodule // END %s" % k.name)
  w.writeln("\n")

def write_main(w, dag):
  """
  Writes the main function which makes invocations to all the kernels.
  Arguments are the CodeWriter object to use, and the parsed top-level DAG.
  """
  w.writeln('module LineBuf(clk,in,out);')
  w.writeln('input clk;')
  w.writeln('input [15:0] in;')
  w.writeln('output [15:0] out;')

  w.writeln('assign out = in;')
  w.writeln('endmodule')
  w.writeln('')

  w.writeln("module top(clk, TOP_in0, TOP_out0);")
  w.indent()
  w.writeln("input clk;");
  w.writeln("input [15:0] TOP_in0;")
  w.writeln("output [15:0] TOP_out0;")
  w.writeln("")
  head = dag.head # Get the edge which points to the first kernel
  prev_sink = 'TOP_in0'
  w.writeln("wire [15:0] LB_TOP_in0_out = TOP_in0;")
  inst_count = 0
  while head != dag.tail:
    # Look up the kernel corresponding to the edge sink
    k = dag.kernels[dag.edges[head][1]]

    inputEdges = k.ppout
    inp_header = "";
    inp_count = 0;
    for inputEdge in inputEdges:
      (startName, startSlice) = dpdadag.parse_signal(inputEdge.split()[1]) 
      for indices in dpdadag.expand_range(k.edges[startName].dim):
        inp_header += '.in'+str(inp_count)+'(LB_'+prev_sink+'_out), '
        inp_count += 1
    inp_header = inp_header[:-2]

    w.writeln('wire [15:0] {sink_name};'.format(sink_name=k.sink))
    w.writeln('wire[15:0] LB_{sink_name}_out;'.format(sink_name=k.sink))
    w.writeln('LineBuf LB{sink_name}(.clk(clk), .in({sink_name}), .out(LB_{sink_name}_out));'.format(sink_name=k.sink))

    # Invoke the kernel
    w.writeln('{k} {k}_{inst_count}({inp_str}, .out({sink_name}));'.format(k=k.name, inst_count=inst_count, inp_str=inp_header, sink_name=k.sink))
    prev_sink = k.sink
    inst_count+=1

    head = k.sink

  w.writeln('assign TOP_out0 = LB_{sink}_out;'.format(sink=k.sink))
  w.unindent()
  w.writeln("endmodule");

if __name__ == "__main__":
  import sys
  if len(sys.argv) < 2:
    print "Usage: compile.py DPDA_FILE"
    exit()
  else:
    sourceFile = sys.argv[-1]

  w = CodeWriter("pipeline.v")
  #w = CodeWriter()

  dag = dpdadag.parse_dpda(sourceFile)

  for k in dag.kernels.values():
    write_kernel(w, k)

  write_main(w, dag)

  w.close()


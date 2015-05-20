# Simple tests for functions in dpdadag.py

from dpdadag import *
import inspect


testCount = 0

def check(test, truth):
  """Returns the line number at which this statment is called."""
  global testCount

  if test == truth:
    print "Test %d passed" % testCount
  else:
    print "Test %d failed at line %d" % (testCount, inspect.currentframe().f_back.f_lineno)
    print "Expected:"
    print truth
    print "\nGot:"
    print test

  testCount += 1

def parse_signal_test():
  sigs = parse_signal("grape")
  expect = ("grape", [])
  check(sigs, expect)

  sigs = parse_signal("banana[2:0]")
  expect = ("banana", [(2,0)])
  check(sigs, expect)

  sigs = parse_signal("plum[0:3]")
  expect = ("plum", [(0,3)])
  check(sigs, expect)

  sigs = parse_signal("orange[3:0][1:0]")
  expect = ("orange", [(3,0), (1,0)])
  check(sigs, expect)
  
  sigs = parse_signal("pineapple[0][0][2:1]")
  expect = ("pineapple", [(0,0), (0,0), (2,1)])
  check(sigs, expect)

  sigs = parse_signal("pear[0:1][0:0]")
  expect = ("pear", [(0,1), (0,0)])
  check(sigs, expect)

  sigs = parse_signal("peach[1:0][0]")
  expect = ("peach", [(1,0), (0,0)])
  check(sigs, expect)

def get_dims(array):
  if type(array) is list and len(array) > 0:
    return [len(array)] + get_dims(array[0])
  else:
    return []

def create_array_test():
  k = Kernel()
  kale = k.create_subarray([(2,0)])
  check(get_dims(kale), [3])

  lettuce = k.create_subarray([(2,0), (4,0)])
  check(get_dims(lettuce), [3, 5])

  spinach = k.create_subarray([(0,0), (3,0), (1, 0)])
  check(get_dims(spinach), [1, 4, 2])

  chard = k.create_subarray([])
  check(get_dims(chard), [1])

  arugala = k.create_subarray([(2,0), (2,0), (0,4), (0, 1)])
  check(get_dims(arugala), [3, 3, 5, 2])

def match_slices_test():
  check(match_slices([(1,0)], [(1,0)]), True)
  check(match_slices([(0,0), (1,0)], [(1,0)]), True)
  check(match_slices([(0,0)], [(0,0)]), True)

if __name__ == "__main__":
  # print "Parsing signals:"
  # parse_signal_test()

  # print "Creating arrays:"
  # create_array_test()

  print "Matching slices:"
  match_slices_test()


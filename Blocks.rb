#default blocks

def One
  print "Method one"
  puts
  yield 6
  puts
  print "Method one line 2"
  puts
  yield 8
end

One do |a|
  print "block one"
  print "repetetive block "
  print "value entere is #{a}"
end


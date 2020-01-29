def sum(a,b)
  puts "inputs are #{a} and #{b}"
  yield
  puts "the Sum is #{a+b}"
end




#passing multiple parameters
#
def sum(a, *b)
  $Sum = 0
  for k in b
    $Sum = $Sum +k
  end
  $Sum + a

end

print sum(5, 10,-90)


# defaults parameters
def prod(a=10, b=20)
  a*b
end
print prod(25,10)
$a=10


class ClassOne
  $b=20
  def print_data()
    $c=30
    puts "Globa var value is #$a"
  end
end

class ClassTwo
  def print_data()
    puts "Globa var value is #$b"
    puts "Globa var value is #$c"
  end
end

c1=ClassOne.new
c2= ClassTwo.new
c1.print_data
c2.print_data



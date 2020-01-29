#Mixins
module A
  class One
    def o1
    end
  end

  def m1
    puts "in m1"
  end
  def m2
  end
end
module B
  def m3
  end
  def m4
  end
end

class Testmixins
  include A
  include B
  def m5
    k= A::One.new
    k.o1
    puts"in m5"
  end
end

t=Testmixins.new
t.m1
print "#{t.m5}"

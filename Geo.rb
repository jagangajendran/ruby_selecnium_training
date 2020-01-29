module Geo
  PI=3.141
  class Circle
    def Circle.area(radius)
      PI*radius*radius

    end
    def perimeter (radius)
      2*PI*radius
    end
  end
  class Square
    def Square.area(s)
      s*s
    end
    def peri(s)
      4*s
    end
  end
end

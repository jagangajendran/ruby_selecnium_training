require './Geo'
#Geo::PI=2

#class inside a module
print Geo::Circle.area(12)

g= Geo::Circle.new


print "Geo perimeter #{g.perimeter(10)}"

class Employee
  def initialize(name, id,age)
    @name=name; @id =id; @age=age;
  end
  def print_details()
    @id =@id+1
    puts "#@name,#@id,#@age"
  end
end
e1= Employee.new 'jagan',1000, '29'

e1.print_details

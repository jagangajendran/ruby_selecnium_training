class Employee
  @@count=0

  def initialize(name, id,age)
    @name=name; @id =id; @age=age; @@count=@@count+1
  end
  def print_details()
    @id =@id+1
    puts "#@name,#@id,#@age"
  end
  def print_name()
    puts "#@name"
  end
  def print_count()
    puts "#@@count"
  end
end
e1= Employee.new 'jagan',1000, '29'
e2= Employee.new 'Java',1002, '28'
e3= Employee.new 'new',1003, '28'
e4= Employee.new 'new 4',1004, '28'

e1.print_details
e2.print_name
e3.print_count
e3.print_name
e4.print_count



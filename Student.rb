class Student

  attr_reader :studentname

  def studentname=(studentname)
    if studentname == "" || studentname == studentname.to_i
      raise "Name can't be blank or number!"
    end
    @studentname = studentname
  end

  def initialize(studentname)
    self.studentname = studentname
  end

  def knowledge
    rand(1..5)
  end

  def print_student
    puts "I am #{studentname}, and my knowledge is #{knowledge}"
  end
end

obj1 = Student.new( "viktor")
puts obj1.print_student

obj2 = Student.new("oksana")
puts obj2.print_student

# What is a collaborator object and why is it useful.

class Course
  def initialize(teacher, students)
    @teacher = teacher
    @students = []
  end
end


class Teacher
  def initialize(name)
    @name = name
  end
end


mr_bill = Teacher.new('Bill')
physics = Course.new(mr_bill, [])

# Collaborator objects represent the connections between various actors 
# in your program. 


# Collaborator objects allow you to chop up and modularize the problem 
# domain into cohesive pieces
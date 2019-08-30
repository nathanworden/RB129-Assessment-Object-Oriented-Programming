# What is a collaborator object and why is it useful?

class Course
  attr_accessor :teacher

  def initialize(teacher, students)
    @teacher = teacher
    @students = []
  end
end


class Teacher
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

mr_bill = Teacher.new('Bill')
physics = Course.new(mr_bill, [])

p physics.teacher.name


# Objects that are stored as state within another 
# object are also called 
# "collaborator objects".


# Collaborator objects represent the connections 
# between various actors in your program. 

# Collaborator objects allow you to chop up and 
# modularize the problem domain into cohesive pieces
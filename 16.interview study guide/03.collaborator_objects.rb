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
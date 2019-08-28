class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age=(num)
    @age = num
  end

  def age
    @age
  end

  def greeting
    "Hello, my name is #{name} and I am #{age} years old"
  end
end

nathan = Person.new("Nathan", 29)
p nathan.greeting
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # def name
  #   @name
  # end

  # def name=(n)
  #   @name = n
  # end

end

nathan = Person.new("Nathan")

p nathan.name   # => Nathan

nathan.name = "Daniel"
p nathan.name   # => Daniel


# Writing getter and setter methods takes up a lot of room in our program 
# for such a simple feature. And if we had other states we wanted to track,
# like height or weight, the class would be even longer. Because these 
# methods are so commonplace, Ruby has a built-in way to automatically 
# create these getter and setter methods for us, using the attr_accessor 
# method.

# The attr_accessor method takes a symbol as an argument, which it uses 
# to create the method name for the getter and setter methods. That one 
# line replaced two method definitions.

# If you want the getter method without the setter method? Then you 
# would use attr_reader.

# If you only want the setter method, you can use the attr_writer method.

# With getter and setter methods, we have a way to expose and change an 
# object's state. We can also use these methods from within the class as 
# well.

# For example:

class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{name} says hello!"
  end

  # def speak
  #   "{@name} says hello!"
  # end
end

# Instead of referencing the instance variable directly (in the commented 
# out code), we want to use the name getter method, 
# and that is given to us now by attr_accessor.

# Can you spot the change? By removing the @ symbol, we're now calling 
# the instance method, rather than the instance variable.

# Why do this?
# Any modifications you need to make to the instance variable can just
# be done once.
# Allows you to make changes in one place.


class Person
  attr_writer :name

  def initialize(name)
    @name = name
  end

  def name
    "Mr. #{@name}"
  end

  def speak
    "#{name} says hello!"
  end

  def aSeriesOfUnfortunateEvents
    "#{name} fell down the stairs, and then #{name} got hit by a car," \
    " and then #{name} fell into a pool of sharks."
  end

  def fortunateEvents
    "Mr. #{@name} got his grocerys paid for at the supermarket." \
    " Then Mr. #{@name} enjoyed a long and fulfilling phone conversation" \
    " with his mother."
  end
end

nathan = Person.new("Nathan")

p nathan.name
p nathan.aSeriesOfUnfortunateEvents
p nathan.fortunateEvents









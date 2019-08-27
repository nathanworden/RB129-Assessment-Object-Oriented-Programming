class Human
  def initialize(name)
    @name = name
  end

  def name                  # This was renamed from "get_name"
    @name
  end

  def name=(n)              # This was renamed from "set_name="
    @name = n
  end

  def speak
    "#{@name} says Hello!"
  end
end

nathan = Human.new("Nathan")
puts nathan.speak           # => "Nathan says Hello!"
puts nathan.name            # => "Nathan"
nathan.name = "Daniel"
puts nathan.name            # => "Daniel


# You'll notice that writing those getter and setter methods 
# took up a lot of room in our program for such a simple feature.
# And if we had other states we wanted to track, like height or weight,
# the class would be even longer. Because these methods are so 
# commonplace, Ruby has a built-in way to automatically create these 
# getter and setter methods for us, using the attr_accessor method. 
# Check out this refactoring of the code from above.

class Human
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says Hello!"
  end
end

nathan = Human.new("Nathan")
puts nathan.speak
puts nathan.name            # => "Nathan"
nathan.name = "Daniel"
puts nathan.name            # => "Daniel"





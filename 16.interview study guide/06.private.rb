# Private methods are methods that are doing work in 
# the class but don't need to be available to the rest 
# of the program. 

# They cannot be called outside of the class. 
# Inside the class they cannot be called with an 
# explict 'self'

# The one exception to this is if we need to 
# disambiguate for Ruby whether we are setting a local 
# variable or calling a method

class Human
  attr_reader :age
  attr_accessor :name

  def initialize(name, age)
    self.age = age
    self.name = name
  end

  def change_age(new_age)
    self.age = new_age
  end

  private

  attr_writer :age
end

nathan = Human.new('Nathan', 29)
p nathan.age
nathan.change_age(45)
p nathan.age
# Given this code, edit only the Animal class so that the expected output
# is printed to the screen.

class Animal
  def self.info
    "I am a #{self}"
  end

  def rex
    self
  end
end

# You cannot edit anything below this line

class Pet < Animal
  attr_accessor :nickname

  def initialize(n)
    self.nickname = n
  end

  def info
    "They call me #{nickname}"
  end

  def Pet.cuddle
    "Love to cuddle"
  end
end

class Dog < Pet

  def introduce
    "#{self.class.info} and they call me #{rex.nickname}. Woof woof!"
  end
end

# fluffy = Pet.new("Fluffy")

# new_fluffy = Pet.new("Fluffy")
# puts fluffy == new_fluffy   # false
# puts fluffy == fluffy       # true

rex = Dog.new("Rex")
# binding.pry
puts rex.introduce # Expected output: I am a Dog and they call me Rex. Woof woof!









#Answer :








# Add the following to the Animal Class:
  # def rex
  #   self
  # end

  # def self.info
  #   "I am a #{self.name}"
  # end
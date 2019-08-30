# Modules help solve the inflexibilty of single inheritance.

# Single inheritance is a problem because in some
# situations only being able to sub-class from one
# super class makes it difficult to accuratley model
# a problem domain.

# The world is not strictly hierarchial, and 
# sometimes we need to be able to show more complexity.

class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

module Swimmable
  def swim
    "swimming!"
  end
end

class Mammal < Animal
  def run; end
  def jump; end
end

class Giraffe < Mammal
end

class Dog < Mammal
  include Swimmable
end

class Fish < Animal
  include Swimmable
end

# Ruby solves this problem by allowing you to mixin 
# Modules. We can create a module for the ability to swim
# and mix it into the Dog and Fish classes but not the 
# Giraffe

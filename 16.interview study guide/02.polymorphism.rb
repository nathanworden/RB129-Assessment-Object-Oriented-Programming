# Three examples of polymorphism

# Inheritence

# Modules

# Ruby standard methods

# ==

# p 'Jemima' == 'Nathan'
# p 'Jemima' == 'Jemima'
# p 'Jemima'.object_id == 'Jemima'.object_id
# # String#==

# p 'symbols'
# p :jemima == :nathan
# p :jemima == :jemima
# p :jemima.object_id == :jemima.object_id
# # Symbol#==

module Meowable
  def speak
    'meow!'
  end
end

class Mammal
  def speak
    'grunt'
  end
end

class Human < Mammal
  def speak
    'hi!'
  end
end

class Dog < Mammal
  def speak
    'bark'    
  end
end

class Cat < Mammal
  include Meowable
end

animals = [Human.new, Dog.new, Cat.new]

animals.each do |animal|
  puts animal.speak
end
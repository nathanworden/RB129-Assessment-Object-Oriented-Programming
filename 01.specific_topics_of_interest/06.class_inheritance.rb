# class Animal
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
#   attr_accessor :name

#   def initialize(n)
#     self.name = n
#   end

#   def speak
#     "#{self.name} says arf!"
#   end
# end

# class Cat < Animal
# end

# sparky = GoodDog.new("Sparky")
# paws = Cat.new

# puts sparky.speak           # => Sparky says arf!
# puts paws.speak             # => Hello!


# In the GoodDog class, we're overriding the speak method in the Animal 
# class because Ruby checks the object's class first for the method before 
#   it looks in the superclass. So, that means when we wrote the code sparky.speak, it first looked at sparky's class, which is GoodDog. It found the speak method there and used it. When we wrote the code paws.speak, Ruby first looked at paws's class, which is Cat. It did not find a speak method there, so it continued to look in Cat's superclass, Animal. It found a speak method in Animal, and used it. We'll talk about this method lookup path more in depth in a bit.

# Inheritance can be a great way to remove duplication in your code base. 
# There is an acronym that you'll see often in the Ruby community, "DRY". 
# This stands for "Don't Repeat Yourself". It means that if you find yourself
#  writing the same logic over and over again in your programs, there are 
#  ways to extract that logic to one place for reuse.


class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new

puts sparky.speak           # => Hello!
puts paws.speak             # => Hello!
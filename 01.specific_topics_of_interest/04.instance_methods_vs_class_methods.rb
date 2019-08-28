# good_dog.rb

# Instance Methods

class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak  

# Our second fido object can also perform GoodDog behaviors. 
# So again, all objects of the same class have the same behaviors, 
# though they contain different states; here, the differing state is the 
# name.


# Class Methods

 # Class methods are methods we can call directly on the class itself,
 #  without having to instantiate any objects.

 # When defining a class method, we prepend the method name with the 
 # reserved word self., like this:

class GoodDog
  def self.what_am_i         # Class method definition
    "I'm a GoodDog class!"
  end
end

GoodDog.what_am_i             # => I'm a GoodDog class!

# class methods are where we put functionality that does not pertain
 # to individual objects. Objects contain state, and if we have a method 
 # that does not need to deal with states, then we can just use a class
 #  method, like our simple example.
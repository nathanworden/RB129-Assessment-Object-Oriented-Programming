# Polymorphism
# 1) Inheritannce (Method Overriding)

class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new("Sparky")
paws = Cat.new

puts sparky.speak   # => Sparky says arf!
puts paws.speak     # => Hello!

# In the GoodDog class, we're overriding the speak method in the Animal 
# class because Ruby checks the object's class first for the method before 
#   it looks in the superclass. So, that means when we wrote the code 
#   sparky.speak, it first looked at sparky's class, which is GoodDog. 
#   It found the speak method there and used it. When we wrote the code 
#   paws.speak, Ruby first looked at paws's class, which is Cat. 
#   It did not find a speak method there, so it continued to look in 
#   Cat's superclass, Animal. It found a speak method in Animal, and used it.


#2) Duck Typing
# Duck typing (if it walks like a duck and quacks like a duck, it's a duck.
#  `+` is implemented differently in different classes. The Array class, 
#  the integer class and the string class all use the `+` operator as a 
#  common interface. But they are doing different things. It is not 
#  overriding but it is still polymorphism.

p 1 + 1
p ["joke", "joke", "joooooookeee"] + [4, 5, 6]

p "cat" + "dog"



#3) Modules

class Person
​
  include Comparable
​
  attr_reader :age
​
  def initialize(age)
    @age = age
  end
​
  def <=>(other_person)
    age <=> other_person.age
  end
​
end
​
bill = Person.new(38)
annabel = Person.new(39)
​
p bill < annabel
# => true
​
p "bill" < "annabel"
# => false

# The Person class mixes in the Comparable module and defines 
# the <=> operator (which Comparable uses to implement <, <=, ==, >=, and >).

# `bill` Person object responds differently than the bill 
# String object to the same < method call. This is an example
#  of different objects responding in different ways to the same message
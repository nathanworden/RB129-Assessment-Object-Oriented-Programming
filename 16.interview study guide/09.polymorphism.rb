# Why is polymorphism useful?

# It allows to work with different types of objects
# in the same way even though they are of different
# classes and even though the method call we give
# them can be implemented dramatically different.

# Polymorphism is the ability of different objects
# to respond differently to the same method call.

# What are three examples of polymorphism?

# 1) Inheritance

# 2) Duck Typing
# Each class must define the method and implement it
# in its own way. Example: the '+' operator.

# 3) Modules

class Person
  include Comparable
  attr_reader :age

  def initialize(age)
    @age = age
  end

  def <=>(other_person)
    age <=> other_person.age
  end
end

bill = Person.new(38)
annabel = Person.new(39)
p bill < annabel
#  => true
p "bill" < "annabel"
# => false

# The person class mixes in the Comparable module
# and defines the <=> operator (which Comparable 
# uses to implement <, <=, ==, >=, and >).

# On line 22 the bill Person object responds differently 
# than the bill String object (on line 22) to the 
# same < method call. This is an example of different
# objects responding in different ways to the same
# message.
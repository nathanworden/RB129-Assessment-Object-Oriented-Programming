# Encapsulation lets us hide the internal representation of an object 
# from the outside and only expose the methods and properties that users 
# of the object need. We expose these properties and methods through the
#  public interface of a class: its public methods.

# Let's look at an example of this:

class Person
  attr_reader :nickname

  def initialize(n)
    @nickname = n
  end

  def greeting
    "#{nickname.capitalize} says hello!"
  end

  private
    attr_writer :nickname
end

nathan = Person.new("nathan")
puts nathan.greeting # Displays: Nathan says hello!

# In this example, we can change the nickname of a dog by calling the 
# change_nickname method without needing to know how the Dog class and this 
# method are implemented.

# The same thing happens when we call the method greeting on a Dog object.
#  The output is Barny says Woof Woof!, with the dog's nickname capitalized. 
#  again, we don't need to know how the method is implemented. The main point 
#  is that we expect a greeting message from the dog and that's what we get.

# # Note that the setter method for nickname is private: it is not available
#  outside of the class and dog.nickname = "barny" would raise an error.

# # You might have noticed that even though the setter method for nickname 
# is private we are still calling it with self prepended on line 9, 
# self.nickname = n. This is an exception in Ruby. You need to use self 
# when calling private setter methods as if you didn't use self Ruby would 
#   think you are creating a local variable.

# On a final note, always keep in mind that the class should have as few 
# public methods as possible. It lets us simplify using that class and 
# protect data from undesired changes from the outer world.



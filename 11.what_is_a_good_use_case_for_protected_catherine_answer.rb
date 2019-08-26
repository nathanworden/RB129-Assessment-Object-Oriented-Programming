class Cat
  def initialize(name)
    @name = name
  end

  def ==(other)
    name == other.name
  end

  protected

  attr_reader :name
end

first_kitty = Cat.new('kitty')
second_kitty = Cat.new('kitty')

p first_kitty == second_kitty

class Dog
  def initialize(name)
    @name = name
  end

  def ==(other)
    name == other.name
  end

  protected

  attr_reader :name
end

doggy = Dog.new('kitty')

p first_kitty == doggy

# This example has a public == method that relies on a protected getter method for the @name instance variable. 

# The second point of confusion is between the caller of the method (i.e. the object on which the method is invoked) and any object passed in as an argument. Private and protected methods can take an argument, as any other method. That argument doesn't need to be an object of the same class. The point of interest is the calling object.
# In the example I gave above, you are not allowed to call the protected getter method from outside de class. p first_kitty.name will return an error. But you are allowed to call it from inside the class, with another object of the same class as the caller. This is what happens in the == method: we compare our Cat objects using name == other.name. Note that the protected method is name, not ==.
# This specific line is the reason the code wouldn't work if the getter method was private: we are not allowed to call a private method with an explicit receiver, such as other in other.name. Try replacing protected with private in the code above and see what happens. There is one exception to this, private setter methods, but otherwise this is the general rule with private methods.
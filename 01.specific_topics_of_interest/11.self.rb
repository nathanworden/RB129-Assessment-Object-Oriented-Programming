# The reason our setter methods didn't work is because Ruby thought we 
# were initializing local variables. Recall that to initialize or create 
# new local variables, all we have to do is x = 1 or str = "hello world". 
#   It turns out that instead of calling the name=, height= and 
#   weight= setter methods, what we did was create three new local variables 
#   alled name, height and weight. That's definitely not what we wanted to do.

# To disambiguate from creating a local variable, we need to use 
# self.name= to let Ruby know that we're calling a method. So our 
# change_info code should be updated to this:

def change_info(n, h, w)
  self.name = n
  self.height = h
  self.weight = w
end
# This tells Ruby that we're calling a setter method, not creating a 
# local variable. To be consistent, we could also adopt this syntax for 
# the getter methods as well, though it is not required.

def info
  "#{self.name} weighs #{self.weight} and is #{self.height} tall."
end
# Finally, if we run our code with the updated change_info method that
#  uses the self. syntax, our code works beautifully:

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.

# Note that prefixing self. is not restricted to just the accessor methods; 
# you can use it with any instance method. For example, the info method is
#  not a method given to us by attr_accessor, but we can still call it 
#  using self.info:

# good_dog.rb

class GoodDog
  # ... rest of code omitted for brevity
  def some_method
    self.info
  end
end










# We talked about self earlier, but let's try to dive a little deeper so 
# you can understand exactly what self is and how to understand what 
# it's referencing. We use self to specify a certain scope for our program.
# self can refer to different things depending on where it is used.

# For example, so far we've seen two clear use cases for self:

# Use self when calling setter methods from within the class. 
# In our earlier example we showed that self was necessary in order for
#  our change_info method to work properly. We had to use self to allow 
#  Ruby to disambiguate between initializing a local variable and calling
#   a setter method.

# Use self for class method definitions.

# Let's play around with self to see why the above two rules work. 
# Let's assume the following code:

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

# This is our standard GoodDog class, and we're using self whenever we 
# call an instance method from within the class. We know the rule to use
#  self, but what does self really represent here? Let's add one more 
#  instance method to help us find out.


class GoodDog
  # ... rest of code omitted for brevity

  def what_is_self
    self
  end
end
Now we can instantiate a new GoodDog object.

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self
 # => #<GoodDog:0x007f83ac062b38 @name="Sparky", @height="12 inches", @weight="10 lbs">
# That's interesting. So from within the class, when an instance method 
# calls self, it is returning the calling object, so in this case, it's 
#   the sparky object. Therefore, from within the change_info method, 
#   calling self.name= is the same as calling sparky.name=. Now we 
#   understand why using self to call instance methods from within the 
#   class works the way it does!

# The other place we use self is when we're defining class methods, like 
# this:

class MyAwesomeClass
  def self.this_is_a_class_method
  end
end

# When self is prepended to a method definition, it is defining a class 
# method. We talked about these earlier. In our GoodDog class method
#  example, we defined a class method called self.total_number_of_dogs. 
#  This method returned the value of the class variable @@number_of_dogs.
#   How is this possible? Let's use code to take a look:

class GoodDog
  # ... rest of code omitted for brevity
  puts self
end

# Then you can test it in "irb" just by pasting the above code into irb 
# and typing "GoodDog":

irb :001 > GoodDog
=> GoodDog

# So you can see that self, inside a class but outside an instance method,
#  is actually referring to the class itself. Therefore, a method d
#  efinition prefixed with self is the same as defining the method on 
# the class. That is, def self.a_method is equivalent to 
# def GoodDog.a_method. That's why it's a class method; 
#   it's actually being defined on the class.

# So just to be clear, from within a class...

# 1. self, inside of an instance method, references the instance (object) 
# that called the method - the calling object. Therefore, self.weight= is
#  the same as sparky.weight=, in our example.

# 2. self, outside of an instance method, references the class and can be used
# to define class methods. Therefore, def self.name=(n) is the same as 
# def GoodDog.name=(n), in our example.

# So we can see that self is a way of being explicit about what our 
# program is referencing and what our intentions are as far as behavior. 
# self changes depending on the scope it's defined in, so pay attention
#  to see if you're inside an instance method or not. self is a tricky 
#  concept to grasp in the beginning, but the more often you see its use, 
#  the more you will understand object oriented programming. If the 
#  explanations don't quite make sense, just memorize those two rules 
#  above for now.






















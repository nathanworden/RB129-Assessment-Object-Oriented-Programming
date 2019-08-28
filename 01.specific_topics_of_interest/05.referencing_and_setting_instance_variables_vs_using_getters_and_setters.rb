# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(name)
#     @name = name
#   end

#   def speak
#     "#{name} says arf!"
#   end
# end

# sparky = GoodDog.new("Sparky")
# puts sparky.speak
# puts sparky.name            # => "Sparky"
# sparky.name = "Spartacus"
# puts sparky.name            # => "Spartacus"

# Why call the instance method on line 9 instead of the instance variable?

# Suppose we're keeping track of social security numbers in an instance
#  variable called @ssn. And suppose that we don't want to expose the 
#  raw data, i.e. the entire social security number, in our application.
#   Whenever we retrieve it, we want to only display the last 4 digits 
#   and mask the rest, like this: "xxx-xx-1234". If we were referencing 
#   the @ssn instance variable directly, we'd need to sprinkle our entire 
#   class with code like this:

# converts '123-45-6789' to 'xxx-xx-6789'
# 'xxx-xx-' + @ssn.split('-').last

# And what if we find a bug in this code, or if someone says we need
 # to change the format to something else? It's much easier to just
 #  reference a getter method, and make the change in one place.

  # def ssn
  #   # converts '123-45-6789' to 'xxx-xx-6789'
  # ' xxx-xx-' + @ssn.split('-').last
  # end

  # Now we can use the ssn instance method (note without the @) throughout 
  # our class to retrieve the social security number. Following this 
  # practice will save you some headache down the line. Just like the 
  # getter method, we also want to do the same with the setter method. 
  #   Wherever we're changing the instance variable directly in our class,
  #    we should instead use the setter method. But there's a gotcha, which 
  #    we'll cover next.

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    name = n
    height = h
    weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall

# Why didn't our setter methods work in the change_info method?


# The reason our setter methods didn't work is because Ruby thought we were initializing local variables. Recall that to initialize or create new local variables, all we have to do is x = 1 or str = "hello world". It turns out that instead of calling the name=, height= and weight= setter methods, what we did was create three new local variables called name, height and weight. That's definitely not what we wanted to do.

# To disambiguate from creating a local variable, we need to use self.name= to let Ruby know that we're calling a method. So our change_info code should be updated to this:

def change_info(n, h, w)
  self.name = n
  self.height = h
  self.weight = w
end
# This tells Ruby that we're calling a setter method, not creating a local variable. To be consistent, we could also adopt this syntax for the getter methods as well, though it is not required.

def info
  "#{self.name} weighs #{self.weight} and is #{self.height} tall."
end
# Finally, if we run our code with the updated change_info method that uses the self. syntax, our code works beautifully:

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.




# When you call a method, how does Ruby know where to look for that method?
# uby has a distinct lookup path that it follows each time a method is 
# called. Let's use our program from above to see what the method lookup 
# path is for our GoodDog class. We can use the ancestors method on any 
# class to find out the method lookup chain.

module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors
# The output looks like this:

# ---GoodDog ancestors---
# GoodDog
# Speak
# Object
# Kernel
# BasicObject

# ---HumanBeing ancestors---
# HumanBeing
# Speak
# Object
# Kernel
# BasicObject

# The Speak module is placed right in between our custom classes
#  (i.e., GoodDog and HumanBeing) and the Object class that comes with Ruby.
#  In Inheritance you'll see how the method lookup chain works when working
#   with both mixins and class inheritance.

# This means that since the speak method is not defined in the GoodDog class,
# the next place it looks is the Speak module. This continues in an ordered,
# linear fashion, until the method is either found, or there are no more 
# places to look.


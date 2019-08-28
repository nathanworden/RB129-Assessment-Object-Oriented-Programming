# As we mentioned earlier, modules are another way to achieve polymorphism
# in Ruby. A module is a collection of behaviors that is usable in other
#  classes via mixins. A module is "mixed in" to a class using the include 
#  method invocation. Let's say we wanted our GoodDog class to have a 
#  speak method but we have other classes that we want to use a speak 
#  method with too. Here's how we'd do it.


# module Speak
#   def speak(sound)
#     puts sound
#   end
# end

# class GoodDog
#   include Speak
# end

# class HumanBeing
#   include Speak
# end

# sparky = GoodDog.new
# sparky.speak("Arf!")        # => Arf!
# bob = HumanBeing.new
# bob.speak("Hello!")         # => Hello!

# Note that in the above example, both the GoodDog object, which we're calling sparky, as well as the HumanBeing object, which we're calling bob, have access to the speak instance method. This is possible through "mixing in" the module Speak. It's as if we copy-pasted the speak method into the GoodDog and HumanBeing classes.




# One of the downsides of inheritance is that a class can only sub-class 
# from one super class. In some situations, this limitation makes it very 
# difficult to accurately model the problem domain. For example, suppose 
# we have a new pet animal called Fish. These are pets that can swim, and
#  have other characteristics like living in a small bowl, etc. They also 
#  can't run or jump, which are methods in our Pet class. Obviously, given
#   this new information, some reorganizing of methods is required. 
#   How about something like this:



# # This seems fine, except we have swim in both the Dog class as well 
# as the Fish class (the swim in Bulldog, remember, is to override the 
# one in Dog, and therefore performs a different functionality). We'd 
# like to not have the same swim method in two different classes, but 
# where do we move it to? In Ruby, as in many other languages, you can 
#   only sub-class from one parent class.

# This is the classical question of how a language should support 
# multiple inheritance, and Ruby's answer is by way of mixing in behaviors.
#  A class can only sub-class from one parent, but it can mix in as many 
#  modules as it likes.

# # The solution is to create a module, called Swim, and mix in that module
#  in the appropriate classes.

class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

module Swimmable
  def swim
    "swimming!"
  end
end

class Mammal < Animal
  def run

  end

  def jump

  end
end

class Giraffe < Mammal

end

class Dog < Mammal
  include Swimmable
end

class Fish < Animal
  include Swimmable
end







# module Swim
#   def swim
#     "swimming!"
#   end
# end

# class Dog
#   include Swim
#   # ... rest of class omitted
# end

# class Fish
#   include Swim
#   # ... rest of class omitted
# end

# The result is that all the instance methods defined in the Swim module
 # are now ready for use in the Dog and Fish classes. It's as if we copied 
 # and pasted the methods right in. We can also mix in as many modules as we 
 # eed to. Mixing in modules, though, does affect the method lookup path. 
 # Use the .ancestors method to see how mixing in various modules affects 
 # how Ruby looks up methods.





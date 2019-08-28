# Explain these concepts with clarity:

# Classes and objects

# A class is like a blueprint, template, or mold.

# Objects are created from classes. 

# Classes are like molds and objects are the things you produce 
# out of those molds. Individual objects will contain different information 
# from other objects, yet they are instances of the same class. 

# Here's an example of two objects of the String class:

# "Launch".class
# => String
# "School".class
# => String

# If the class is a blueprint, the object is a house. The house is 
# literally more concrete. The class is more abstract.

# Behavior is defined in the class and all objects of that class have
# access to that behavior.

# An object is an encapsulation of state and behavior.

# class Animal
# end

# buddy = Animal.new

# In the above example, we created an instance of our Animal class and 
# stored it in the variable buddy. We now have an object. We say that 
# buddy is an object or instance of class Animal. This entire workflow 
# of creating a new object or instance from a class is called instantiation, 
# so we can also say that we've instantiated an object called buddy from 
# the class Animal. 

# When defining a class, we typically focus on two things: states and 
# behaviors. States track attributes for individual objects. Behaviors are 
# what objects are capable of doing.

# State is unique to each object.

# For example, using our Animal class from earlier, we may want to create 
# two Animal objects: one named "Buddy" and one named "Spot". They are both
# Animal objects, but may contain different information, such as name, 
# weight, and height. We would use instance variables to track this 
# information. This should tell you that instance variables are scoped at 
# the object (or instance) level, and are how objects keep track of their 
# states.

# Even though they're two different objects, both are still objects 
# (or instances) of class Animal and contain identical behaviors. 
# For example, both Animal objects should be able to walk, run,
#  and perform other common behaviors of animals. We define these behaviors
#  as instance methods in a class. Instance methods defined in a class are
#  available to objects (or instances) of that class.

# So in summary, instance variables keep track of state, and instance 
# methods expose behavior for objects. Let's take a closer look at how 
# to define them in a class.







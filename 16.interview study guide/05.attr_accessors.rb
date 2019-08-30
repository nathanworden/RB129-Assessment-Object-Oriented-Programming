class Human
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  # def name
  #   @name
  # end

  # def name=(n)
  #   @name = n
  # end
end

bob = Human.new('bob', 5)

# p spot 

p bob.name
bob.name = 'Nathan'
p bob.name


# If we want to access an instance variable, we have
# to create a method that will return that instance 
# variable.

# Getter and Setter methods take up a lot of room.

# Ruby provides the attr_accessor method to 
# automatically create getter and setter methods for us.
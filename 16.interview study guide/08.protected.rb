# A good use case for protected is if you are
# overriding a comparision method such as
# '=='. You want to compare two objects of the
# same class.

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
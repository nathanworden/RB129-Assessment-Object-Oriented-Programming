class Human
  def initialize(age)
    @age = age
  end

  def older?(other_human)
    @age > other_human.age
  end

  protected

  def age
    @age
  end
end

class Animal
  def initialize(age)
    @age = age
  end

  def older?(other_human)
    @age > other_human.age
  end

  protected

  def age
    @age
  end
end

bob = Human.new(62)
nathan = Human.new(30)
rover = Animal.new(11)

p bob.older?(nathan)
p bob.older?(rover)
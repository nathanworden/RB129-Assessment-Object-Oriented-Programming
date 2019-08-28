class Person
  @@total_people = 0

  attr_accessor :name, :weight, :height

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@total_people += 1
  end

  def change_info(name, weight, height)
    self.name = name
    self.weight = weight
    self.height = height
  end

  def self.total_people
    @@total_people
  end
end

bob = Person.new('bob', 185, 70)
p Person.total_people       # => 1


p bob.name    # => bob
p bob.weight  # => 185
p bob.height  # => 70

bob.change_info('nathan', 170, 29)

p bob.name    # => nathan
p bob.weight  # => 170
p bob.height  # => 29

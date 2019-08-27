class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # def name
  #   @name
  # end

  # def name=(n)
  #   @name = n
  # end

end

nathan = Person.new("Nathan")

p nathan.name   # => Nathan

nathan.name = "Daniel"
p nathan.name
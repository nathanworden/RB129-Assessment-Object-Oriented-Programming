class GoodDog
  attr_accessor :name

  def initialize(n)
    @name = n
  end

  def speak
    "#{name} says arf!"
  end

  def change_name(n)
    self.name = n
  end
end

sparky = GoodDog.new('Sparky')
puts sparky.name      # => Sparky

sparky.change_name('Spartacus')
puts sparky.name      # => Spartacus
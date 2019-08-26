class Cat
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def assign_secret_name
    name = 'secret kitty name'
  end

  private

  attr_writer :name
end

kitty = Cat.new('kitty')
kitty.assign_secret_name
p kitty.name
# => kitty
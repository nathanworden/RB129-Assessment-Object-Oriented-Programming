# class Human

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def older_than?(num)
#     age > num
#   end

#   private
#   attr_accessor :age
# end

# nathan = Human.new('Nathan', 29)

# # p nathan.age
# p nathan.older_than?(28)


class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  private

  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new
p fido.a_public_method        # => Will this work? Yes, I'm protected!
class Person

  include Comparable

  attr_reader :age

  def initialize(age)
    @age = age
  end

  def <=>(other_person)
    age <=> other_person.age
  end

end

bill = Person.new(38)
annabel = Person.new(39)

p bill < annabel
# => true

p "bill" < "annabel"
# => false




# class Book
#   include Comparable

#   attr_reader :author, :title

#   def initialize(author, title, pages)
#     @author = author
#     @title = title
#     @pages = pages
#   end

#   def compare(other_book)
#     self == other_book
#   end

#   protected

#   def ==(other_book)
#     author == other_book.author
#   end
# end

# book1 = Book.new("Dostoevsky", "The Brothers Karamazov", 1313)
# book2 = Book.new("Dostoevsky", "Crime and Punishment", 545)

# p book1.compare(book2)

class Human
  attr_reader :age

  def initialize(age)
    @age = age
  end
  
  def same_age?(other_human)
    self == other_human
  end

  protected

  def ==(other_person)
    age == other_person.age
  end
end

class Animal
  attr_reader :age

  def initialize(age)
    @age = age
  end

  def same_age?(other_human)
    self == other_human
  end

  protected

  def ==(other_person)
    age == other_person.age
  end
end

daniel = Human.new(60)
nathan = Human.new(29)
rover = Animal.new(29)

p daniel.same_age?(nathan)
p nathan.same_age?(rover)


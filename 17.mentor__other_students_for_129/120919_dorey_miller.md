# 0)

What are two different ways to get `"The Miso soup is lumpy"`to print out to the screen in the following code?

```ruby
class Soup

  attr_accessor :temp

  def initialize(soup, temp)
    @name = soup
    @temp = temp
  end

  def tell_diners
    "The #{self.name} soup is #{self.adjective}"
  end

  def change_name(n)
    self.name = n
  end

  protected

  attr_accessor :name

  def to_s
    temp
  end

  private

  def adjective
    "lumpy"
  end
end

miso_soup = Soup.new("Miso", "hot")


puts miso_soup.tell_diners
```

####Answer: Get rid of self in self.adjective on line 11. Or make the `adjective` method on line 28 protected instead of private.

#1)

```ruby
class Human
  def initialize(name)
    @name = name
  end
  
  def greeting
    "Human #{name}"
  end
  
  def self.greeting
    "I am a human"
  end

  attr_reader :name
end

class Person < Human
  def greeting
    "Person #{name}"
  end
  
  def self.greeting
    "I am a person"
  end
end

nathan = Person.new("Nathan")



# What will this print out?
p nathan.greeting

```

####Answer  => "Person Nathan"



#2)

```ruby
class Human
  def initialize(name)
    @name = name
  end
  
  def greeting
    "Human #{name}"
  end
  
  def self.greeting
    "I am a human"
  end

  attr_reader :name
end

class Person < Human
  def self.greeting
    "I am a person"
  end
end

nathan = Person.new("Nathan")

# What will this print out?
p nathan.greeting

```

####Answer => "Human Nathan"



# 3)

```ruby
class Human
  def initialize(name)
    @name = name
  end
  
  def greeting
    "Human #{name}"
  end
  
  def self.greeting
    "I am a human"
  end

  attr_reader :name
end

class Person < Human
  def greeting
    "Person #{self}"
  end

  def self.greeting
    "I am a person"
  end
end

nathan = Person.new("Nathan")

# What will this print out?
p nathan.greeting
```

#### Answer: "Person #<Person:0x00007fbbff10afa0>"



# 4

```ruby
class Human
  def initialize(name)
    @name = name
  end
  
  def greeting
    "Human #{name}"
  end
  
  def self.greeting
    "I am a human"
  end

  attr_reader :name
end

class Person < Human
  def greeting
    "Person #{self}"
  end

  def self.greeting
    "I am a person"
  end

  def to_s
    "number 12 is beligerant"
  end
end

nathan = Person.new("Nathan")


# What will this print out?
p nathan.greeting
```

#### Answer: "Person number 12 is beligerant"



# 5

```ruby
class Human
  def initialize(name)
    @name = name
  end
  
  def greeting
    "Human #{name}"
  end
  
  def self.greeting
    "I am a human"
  end

  attr_reader :name
end

class Person < Human
  def greeting
    "Person #{self.class}"
  end

  def self.greeting
    "I am a person"
  end

  def to_s
    "number 12 is beligerant"
  end
end

nathan = Person.new("Nathan")


p nathan.greeting

```

#### Answer: "Person Person"



# 6)

```ruby
class Human
  def initialize(name)
    @name = name
  end
  
  def greeting
    "Human #{name}"
  end
  
  def self.greeting
    "I am a human"
  end

  attr_reader :name
end

class Person < Human
  def greeting
    "Person #{self.class.greeting}"
  end

  def self.greeting
    "I am a person"
  end

  def to_s
    "number 12 is beligerant"
  end
end

nathan = Person.new("Nathan")

 #What will this print out?
p nathan.greeting
```

#### Answer: "Person I am a person"



# 7)

```ruby
class Human
  def initialize(name)
    @name = name
  end
  
  def greeting
    "Human #{name}"
  end
  
  def self.greeting
    "I am a human"
  end

  attr_reader :name
end

class Person < Human
  def greeting
    "Person #{self.class.greeting}"
  end

  def to_s
    "number 12 is beligerant"
  end
end

nathan = Person.new("Nathan")

 #What will this print out?
p nathan.greeting
```

#### Answer: "Person I am a human"



# 8

```ruby
class Human
  def initialize(name)
    @name = name
  end
  
  def greeting
    "Human #{name}"
  end
  
  def self.greeting
    "I am a human"
  end

  attr_reader :name
end

class Person < Human
  def greeting
    "Person #{self.class.greeting}"
  end

  def my_name
    "#{nathan}"
  end

  def to_s
    "number 12 is beligerant"
  end
end

nathan = Person.new("Nathan")

 #What will this print out?
p nathan.my_name
```

#### Answer: An Error

# 9

How do you edit the question from above so that it outputs `"My name is Nathan"`

#### Answer: add this to the `Person` class:

```ruby
 def nathan
   "My name is #{name}"
 end
```



# 10

We are going to add a call to `name` inside of the interpolation of the `my_name` method. Edit the `Person#nathan` method so that `p nathan.my_name` prints out just `"Nathan`



```ruby
class Human
  def initialize(name)
    @name = name
  end
  
  def greeting
    "Human #{name}"
  end
  
  def self.greeting
    "I am a human"
  end

  attr_reader :name
end

class Person < Human
  def greeting
    "Person #{self.class.greeting}"
  end

  def my_name
    "#{nathan.name}"  # This is updated to add the call to `.name`
  end

  def nathan
    # Your code goes here
  end

  def to_s
    "number 12 is beligerant"
  end
end

nathan = Person.new("Nathan")

 #What will this print out?
p nathan.my_name
```

#### Answer: Just add `self` on line 27



# 11

Now you can't have a `nathan` method in the `Person` class. But you can edit the `Human` class. What do you do to still print out `Nathan` when we call `p nathan.my_name` ?

#### Answer: Move the `nathan` method to the `Human` class since `Person` inherits from `Human`


#complete class so we can't read anyone's secrect but we can compare them.



class Person
  
  def compare_secret(other_person)
    secret == other_person.secret
  end

end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'

person2 = Person.new
person2.secret = 'Shh.. this is a different secret!'
puts person1.secret

# puts person1.compare_secret(person2)


# Answer: 

class Person
  attr_writer :secret

  def compare_secret(other_person)
    secret == other_person.secret
  end

  protected
  
  attr_reader :secret
  
  # def secret=(s)
  #   @secret = s
  # end
  
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'

person2 = Person.new
person2.secret = 'Shh.. this is a different secret!'

puts person1.compare_secret(person2)


# p person1.secret
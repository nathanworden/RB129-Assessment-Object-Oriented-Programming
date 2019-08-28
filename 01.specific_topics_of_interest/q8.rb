module Aquatic
end

module Predatory
end

module Toothed
end

class Animal
end

class Mammal < Animal
end

class Whale < Mammal
  include Aquatic
  include Predatory
end

class Orca < Whale
  include Toothed
end

willy = Orca.new

p Orca.ancestors
# willy.free


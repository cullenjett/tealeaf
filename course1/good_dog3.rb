#good_dog3

class GoodDog
  @@number_of_dogs = 0
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def to_s
    "This dog's name is #{self.name} and it is #{self.age} in dog years."
  end
end

puts GoodDog.what_am_i

puts ''

puts GoodDog.total_number_of_dogs
dog1 = GoodDog.new("bob", 1)
dog2 = GoodDog.new("andy", 99)
puts GoodDog.total_number_of_dogs

puts ''

sparky = GoodDog.new("Sparky", 4)
puts sparky.age

puts ''

puts sparky.to_s

